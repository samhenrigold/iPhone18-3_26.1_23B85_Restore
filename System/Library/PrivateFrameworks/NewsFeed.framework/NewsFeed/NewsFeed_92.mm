uint64_t sub_1D635D3A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635D3FC(unint64_t a1, unint64_t a2)
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

    v4 = sub_1D5B5A498(0, &qword_1EDF1AC18, 0x1E69B53F0);
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
          v15 = MEMORY[0x1DA6FB460](v12 - 4, v3);
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

        v16 = MEMORY[0x1DA6FB460](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1D726370C();

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
      v18 = sub_1D726370C();

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
    v5 = sub_1D7263BFC();
  }

  result = sub_1D7263BFC();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D635D64C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 48;
    v4 = a2 + 48;
    do
    {
      v6 = *(v4 - 8);
      if (*(v3 - 8))
      {
        if (!*(v4 - 8))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 16) != *(v4 - 16))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (*(v3 + 8))
      {
        if (!*(v4 + 8))
        {
          return 0;
        }
      }

      else
      {
        if (*v3 == *v4)
        {
          v7 = *(v4 + 8);
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      if (*(v3 + 24))
      {
        if (!*(v4 + 24))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 + 16) == *(v4 + 16))
        {
          v8 = *(v4 + 24);
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      if (*(v3 + 40))
      {
        if (!*(v4 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 + 32) == *(v4 + 32))
        {
          v5 = *(v4 + 40);
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 64;
      v4 += 64;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D635D7C8(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v9 == result)
    {
      goto LABEL_5;
    }

LABEL_35:
    v21 = 0;
    return v21 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 != result)
  {
    goto LABEL_35;
  }

LABEL_5:
  if (!v9)
  {
    goto LABEL_33;
  }

  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  v12 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v11 = a1;
  }

  if (v8)
  {
    v12 = v11;
  }

  v13 = a2 & 0xFFFFFFFFFFFFFF8;
  v14 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v13 = a2;
  }

  if (a2 >> 62)
  {
    v14 = v13;
  }

  if (v12 == v14)
  {
LABEL_33:
    v21 = 1;
    return v21 & 1;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v22 = a2 & 0xC000000000000001;
    v15 = 4;
    while (1)
    {
      v16 = v15 - 4;
      v17 = v15 - 3;
      if (__OFADD__(v15 - 4, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v9 = sub_1D7263BFC();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1DA6FB460](v15 - 4, a1);
        if (v22)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v18 = *(a1 + 8 * v15);

        if (v22)
        {
LABEL_20:
          v19 = MEMORY[0x1DA6FB460](v15 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v19 = *(a2 + 8 * v15);

LABEL_25:
      v20 = v18[2] == *(v19 + 16) && v18[3] == *(v19 + 24);
      if (!v20 && (sub_1D72646CC() & 1) == 0)
      {

        goto LABEL_35;
      }

      a3(0);
      v8 = *(*v18 + 120);
      sub_1D5B58B84(a4, a5, a6);
      v21 = sub_1D7261FBC();

      if (v21)
      {
        ++v15;
        if (v17 != v9)
        {
          continue;
        }
      }

      return v21 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635DA1C(unint64_t a1, unint64_t a2)
{
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1D7263BFC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_35:
    v17 = 0;
    return v17 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_35;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_33;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
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
LABEL_33:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
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
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v5 = sub_1D7263BFC();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA6FB460](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x1DA6FB460](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = v4[2] == v15[2] && v4[3] == v15[3];
      if (!v16 && (sub_1D72646CC() & 1) == 0)
      {

        goto LABEL_35;
      }

      v17 = sub_1D635DC08(v4[4], v15[4]);

      if (v17)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D635DC08(uint64_t a1, uint64_t a2)
{
  v54 = sub_1D72593CC();
  v4 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v5);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E34A8];
  sub_1D5B5BF78(0, &qword_1EDF188B0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v50 = &v43 - v10;
  sub_1D66F4EB8(0, &qword_1EC889AD8, &qword_1EDF188B0, v7);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v43 - v13;
  v51 = type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota(0);
  MEMORY[0x1EEE9AC00](v51, v15);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = (&v43 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = (v4 + 48);
  v43 = (v4 + 32);
  v44 = (v4 + 48);
  v28 = *(v20 + 72);
  v45 = (v4 + 8);
  v46 = v28;
  v49 = (&v43 - v21);
  v47 = v17;
  while (1)
  {
    sub_1D6706BB4(v25, v22, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    sub_1D6706BB4(v26, v17, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    if (*v22 != *v17 || v22[1] != v17[1])
    {
      sub_1D5D2CFE8(v17, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
      sub_1D5D2CFE8(v22, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
      return 0;
    }

    v53 = v25;
    v29 = v22;
    v30 = v27;
    v31 = *(v51 + 24);
    v32 = *(v52 + 48);
    v33 = MEMORY[0x1E69E34A8];
    sub_1D5CDE2EC(v29 + v31, v14, &qword_1EDF188B0, MEMORY[0x1E69E34A8]);
    sub_1D5CDE2EC(v17 + v31, &v14[v32], &qword_1EDF188B0, v33);
    v34 = *v30;
    if ((*v30)(v14, 1, v54) != 1)
    {
      break;
    }

    sub_1D5D2CFE8(v17, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    sub_1D5D2CFE8(v29, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    if (v34(&v14[v32], 1, v54) != 1)
    {
      goto LABEL_17;
    }

    v27 = v30;
    sub_1D5D35558(v14, &qword_1EDF188B0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v17 = v47;
LABEL_5:
    v26 += v46;
    v25 = v53 + v46;
    --v23;
    v22 = v49;
    if (!v23)
    {
      return 1;
    }
  }

  v36 = v50;
  sub_1D5CDE2EC(v14, v50, &qword_1EDF188B0, MEMORY[0x1E69E34A8]);
  if (v34(&v14[v32], 1, v54) != 1)
  {
    v37 = &v14[v32];
    v38 = v48;
    v39 = v54;
    (*v43)(v48, v37, v54);
    sub_1D5B58B84(&unk_1EDF188C0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E34B8]);
    v40 = sub_1D7261FBC();
    v41 = *v45;
    (*v45)(v38, v39);
    v17 = v47;
    sub_1D5D2CFE8(v47, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    sub_1D5D2CFE8(v49, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
    v41(v50, v39);
    v27 = v44;
    sub_1D5D35558(v14, &qword_1EDF188B0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    if ((v40 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_1D5D2CFE8(v47, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
  sub_1D5D2CFE8(v49, type metadata accessor for FeedGroupExplicitSlotBundleArticleQuota);
  v35.n128_f64[0] = (*v45)(v36, v54);
LABEL_17:
  sub_1D66F4424(v14, &qword_1EC889AD8, &qword_1EDF188B0, MEMORY[0x1E69E34A8], v35);
  return 0;
}

void sub_1D635E254(unint64_t a1, unint64_t a2)
{
  v4 = sub_1D72593CC();
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v58 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v42 - v10;
  v12 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    if (a2 >> 62)
    {
      if (i != sub_1D7263BFC())
      {
        return;
      }
    }

    else if (i != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if (!i)
    {
      break;
    }

    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v48 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v14 = a1;
    }

    if (v12)
    {
      v15 = v14;
    }

    v16 = a2 & 0xFFFFFFFFFFFFFF8;
    v17 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v47 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v16 = a2;
    }

    if (a2 >> 62)
    {
      v17 = v16;
    }

    if (v15 == v17)
    {
      break;
    }

    if (i < 0)
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v18 = 0;
    v49 = a2 & 0xC000000000000001;
    v50 = a1 & 0xC000000000000001;
    v42 = a2 + 32;
    v43 = a1 + 32;
    v56 = (v59 + 8);
    v57 = v59 + 16;
    v45 = a1;
    v46 = a2;
    v44 = i;
    while (1)
    {
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_62;
      }

      if (v50)
      {
        v19 = MEMORY[0x1DA6FB460](v18, a1, v9);
      }

      else
      {
        if (v18 >= *(v48 + 16))
        {
          goto LABEL_63;
        }

        v19 = *(v43 + 8 * v18);
      }

      v51 = v18 + 1;
      if (v49)
      {
        v20 = MEMORY[0x1DA6FB460](v18, a2);
      }

      else
      {
        if (v18 >= *(v47 + 16))
        {
          goto LABEL_64;
        }

        v20 = *(v42 + 8 * v18);
      }

      v21 = *(v19 + 16);
      v22 = *(v19 + 24);
      v52 = v20;
      v53 = v19;
      v23 = v21 == *(v20 + 16) && v22 == *(v20 + 24);
      if (!v23 && (sub_1D72646CC() & 1) == 0 || (v24 = v53 + *(*v53 + 120), v12 = v52 + *(*v52 + 120), *v24 != *v12) || (v25 = *(v24 + 8), v26 = *(v12 + 8), v27 = *(v25 + 16), v27 != *(v26 + 16)))
      {
LABEL_53:

        return;
      }

      if (v27 && v25 != v26)
      {
        break;
      }

LABEL_43:
      v31 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
      if ((MEMORY[0x1DA6F0A40](v24 + *(v31 + 24), v12 + *(v31 + 24)) & 1) == 0)
      {
        goto LABEL_53;
      }

      v32 = *(v31 + 28);
      v33 = *(v24 + v32);
      v34 = *(v12 + v32);
      v35 = *(v33 + 16);
      if (v35 != *(v34 + 16))
      {
        goto LABEL_53;
      }

      if (v35 && v33 != v34)
      {
        v36 = 0;
        v37 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v54 = v34 + v37;
        v55 = v33 + v37;
        while (v36 < *(v33 + 16))
        {
          a1 = *(v59 + 72) * v36;
          v38 = *(v59 + 16);
          v12 = v57;
          v38(v11, v55 + a1, v4);
          if (v36 >= *(v34 + 16))
          {
            goto LABEL_57;
          }

          a2 = v11;
          v39 = v58;
          v38(v58, v54 + a1, v4);
          sub_1D5B58B84(&unk_1EDF188C0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E34B8]);
          v40 = sub_1D7261FBC();
          v12 = v56;
          a1 = *v56;
          v41 = v39;
          v11 = a2;
          (*v56)(v41, v4);
          (a1)(a2, v4);
          if ((v40 & 1) == 0)
          {
            goto LABEL_53;
          }

          if (v35 == ++v36)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_56;
      }

LABEL_18:

      v18 = v51;
      a1 = v45;
      a2 = v46;
      if (v51 == v44)
      {
        return;
      }
    }

    v29 = (v25 + 32);
    v30 = (v26 + 32);
    while (v27)
    {
      if (*v29 != *v30)
      {
        goto LABEL_53;
      }

      ++v29;
      ++v30;
      if (!--v27)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }
}

void sub_1D635E760(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_49:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    if (v5 != sub_1D7263BFC())
    {
      return;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v5)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = a1;
    }

    if (v4)
    {
      v7 = v6;
    }

    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = a2;
    }

    if (a2 >> 62)
    {
      v9 = v8;
    }

    if (v7 != v9)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (((a2 | a1) & 0xC000000000000001) != 0)
        {
          v10 = a2 & 0xC000000000000001;
          v11 = 4;
          while (1)
          {
            v12 = v11 - 4;
            v13 = v11 - 3;
            if (__OFADD__(v11 - 4, 1))
            {
              __break(1u);
              goto LABEL_49;
            }

            if ((a1 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x1DA6FB460](v11 - 4, a1);
              if (v10)
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
                goto LABEL_55;
              }

              v14 = *(a1 + 8 * v11);

              if (v10)
              {
LABEL_21:
                v15 = MEMORY[0x1DA6FB460](v11 - 4, a2);
                goto LABEL_26;
              }
            }

            if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v15 = *(a2 + 8 * v11);

LABEL_26:
            v16 = v14[2] == v15[2] && v14[3] == v15[3];
            if (!v16 && (sub_1D72646CC() & 1) == 0)
            {

              return;
            }

            v17 = v14[4];

            v4 = v15[4];

            if (v17 == v4)
            {
              ++v11;
              if (v13 != v5)
              {
                continue;
              }
            }

            return;
          }
        }

        v18 = a1 + 32;
        v19 = a2 + 32;
        v20 = *(v26 + 16);
        v21 = *(v25 + 16);
        while (1)
        {
          if (!v20)
          {
            goto LABEL_54;
          }

          if (!v21)
          {
            break;
          }

          v22 = *v18;
          v23 = *v19;
          v24 = *(*v18 + 16) == *(*v19 + 16) && *(*v18 + 24) == *(*v19 + 24);
          if (v24 || (sub_1D72646CC()) && *(v22 + 32) == *(v23 + 32))
          {
            --v21;
            --v20;
            v18 += 8;
            v19 += 8;
            if (--v5)
            {
              continue;
            }
          }

          return;
        }

LABEL_55:
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1D635E9D0(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_51:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    if (v5 != sub_1D7263BFC())
    {
      return;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v5)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = a1;
    }

    if (v4)
    {
      v7 = v6;
    }

    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (a2 >> 62)
    {
      v9 = v10;
    }

    if (v7 != v9)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (((a2 | a1) & 0xC000000000000001) != 0)
        {
          v11 = a2 & 0xC000000000000001;
          for (i = 4; ; ++i)
          {
            v16 = i - 4;
            v17 = i - 3;
            if (__OFADD__(i - 4, 1))
            {
              __break(1u);
              goto LABEL_51;
            }

            if ((a1 & 0xC000000000000001) != 0)
            {
              v4 = MEMORY[0x1DA6FB460](i - 4, a1);
              if (v11)
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

              v4 = *(a1 + 8 * i);

              if (v11)
              {
LABEL_26:
                v18 = MEMORY[0x1DA6FB460](i - 4, a2);
                goto LABEL_31;
              }
            }

            if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v18 = *(a2 + 8 * i);

LABEL_31:
            v19 = *(v4 + 16) == *(v18 + 16) && *(v4 + 24) == *(v18 + 24);
            if (!v19 && (sub_1D72646CC() & 1) == 0)
            {

              return;
            }

            v13 = *(v18 + 32);

            v14 = *(v4 + 32);

            if (v14 != v13 || v17 == v5)
            {
              return;
            }
          }
        }

        v20 = a1 + 32;
        v21 = a2 + 32;
        v22 = *(v27 + 16);
        v23 = *(v8 + 16);
        while (1)
        {
          if (!v22)
          {
            goto LABEL_56;
          }

          if (!v23)
          {
            break;
          }

          v24 = *v20;
          v25 = *v21;
          v26 = *(*v20 + 16) == *(*v21 + 16) && *(*v20 + 24) == *(*v21 + 24);
          if (v26 || (sub_1D72646CC()) && *(v24 + 32) == *(v25 + 32))
          {
            --v23;
            --v22;
            v20 += 8;
            v21 += 8;
            if (--v5)
            {
              continue;
            }
          }

          return;
        }

LABEL_57:
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1D635EC3C(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    if (v5 != sub_1D7263BFC())
    {
      return;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v5)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = a1;
    }

    if (v4)
    {
      v7 = v6;
    }

    v8 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (a2 >> 62)
    {
      v8 = v9;
    }

    if (v7 != v8)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (((a2 | a1) & 0xC000000000000001) != 0)
        {
          v33 = a2 & 0xC000000000000001;
          for (i = 4; ; ++i)
          {
            v11 = i - 4;
            v12 = i - 3;
            if (__OFADD__(i - 4, 1))
            {
              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

            if ((a1 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x1DA6FB460](i - 4, a1);
              if (v33)
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_88;
              }

              v13 = *(a1 + 8 * i);

              if (v33)
              {
LABEL_26:
                v14 = MEMORY[0x1DA6FB460](i - 4, a2);
                goto LABEL_31;
              }
            }

            if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v14 = *(a2 + 8 * i);

LABEL_31:
            v15 = *(v13 + 16) == *(v14 + 16) && *(v13 + 24) == *(v14 + 24);
            if (!v15 && (sub_1D72646CC() & 1) == 0)
            {
              goto LABEL_53;
            }

            v16 = *(v13 + 64);
            v17 = *(v14 + 40);
            v18 = *(v14 + 64);
            if (*(v13 + 40))
            {
              if (!*(v14 + 40))
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (*(v13 + 32) != *(v14 + 32))
              {
                v17 = 1;
              }

              if (v17)
              {
LABEL_53:

                return;
              }
            }

            if (*(v13 + 56))
            {
              if (!*(v14 + 56))
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (*(v13 + 48) == *(v14 + 48))
              {
                v19 = *(v14 + 56);
              }

              else
              {
                v19 = 1;
              }

              if (v19)
              {
                goto LABEL_53;
              }
            }

            if (v16)
            {
              if (!v18)
              {
                goto LABEL_53;
              }

              v20 = sub_1D5BFC390(v16, v18);

              if ((v20 & 1) == 0)
              {
                return;
              }
            }

            else
            {
              if (v18)
              {
                goto LABEL_53;
              }
            }

            if (v12 == v5)
            {
              return;
            }
          }
        }

        v21 = a1 + 32;
        v22 = a2 + 32;
        v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        while (1)
        {
          if (!v23)
          {
            goto LABEL_86;
          }

          if (!v24)
          {
            break;
          }

          v25 = *v21;
          v26 = *v22;
          v27 = *(*v21 + 16) == *(*v22 + 16) && *(*v21 + 24) == *(*v22 + 24);
          if (!v27 && (sub_1D72646CC() & 1) == 0)
          {
            return;
          }

          v28 = *(v25 + 64);
          v29 = *(v26 + 40);
          v30 = *(v26 + 64);
          if (*(v25 + 40))
          {
            if (!*(v26 + 40))
            {
              return;
            }
          }

          else
          {
            if (*(v25 + 32) != *(v26 + 32))
            {
              v29 = 1;
            }

            if (v29)
            {
              return;
            }
          }

          if (*(v25 + 56))
          {
            if (!*(v26 + 56))
            {
              return;
            }
          }

          else
          {
            if (*(v25 + 48) == *(v26 + 48))
            {
              v31 = *(v26 + 56);
            }

            else
            {
              v31 = 1;
            }

            if (v31)
            {
              return;
            }
          }

          if (v28)
          {
            if (!v30)
            {
              return;
            }

            v32 = sub_1D5BFC390(v28, v30);

            if ((v32 & 1) == 0)
            {
              return;
            }
          }

          else if (v30)
          {
            return;
          }

          --v24;
          --v23;
          v21 += 8;
          v22 += 8;
          if (!--v5)
          {
            return;
          }
        }

LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1D635EFDC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_75;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    if (v5 != sub_1D7263BFC())
    {
      return;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v5)
  {
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    v7 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      v7 = v8;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (a2 >> 62)
    {
      v10 = v11;
    }

    if (v7 != v10)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (((a2 | v3) & 0xC000000000000001) != 0)
        {
          v12 = 0;
          v13 = v3 & 0xC000000000000001;
          v36 = a2 & 0xC000000000000001;
          while (1)
          {
            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
LABEL_79:
              __break(1u);
              goto LABEL_80;
            }

            if (v13)
            {
              v15 = MEMORY[0x1DA6FB460](v12, v3);
              if (v36)
              {
                goto LABEL_23;
              }
            }

            else
            {
              if (v12 >= *(v6 + 16))
              {
                goto LABEL_81;
              }

              v15 = *(v3 + 32 + 8 * v12);

              if (v36)
              {
LABEL_23:
                v16 = MEMORY[0x1DA6FB460](v12, a2);
                goto LABEL_28;
              }
            }

            if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_82;
            }

            v16 = *(a2 + 32 + 8 * v12);

LABEL_28:
            v17 = v15[2] == v16[2] && v15[3] == v16[3];
            if (!v17 && (sub_1D72646CC() & 1) == 0)
            {
              goto LABEL_49;
            }

            v18 = v15[4];
            v19 = v16[4];
            v20 = *(v18 + 16);
            if (v20 != *(v19 + 16))
            {
              goto LABEL_49;
            }

            if (v20 && v18 != v19)
            {
              v21 = (v18 + 40);
              v22 = (v19 + 40);
              while (1)
              {
                v23 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
                if (!v23 && (sub_1D72646CC() & 1) == 0)
                {
                  break;
                }

                v21 += 2;
                v22 += 2;
                if (!--v20)
                {

                  v13 = v3 & 0xC000000000000001;
                  v6 = v3 & 0xFFFFFFFFFFFFFF8;
                  goto LABEL_46;
                }
              }

LABEL_49:

              return;
            }

LABEL_46:
            v12 = v14;
            if (v14 == v5)
            {
              return;
            }
          }
        }

        v4 = 0;
        v3 += 32;
        a2 += 32;
        v24 = *(v6 + 16);
        v25 = *(v9 + 16);
        while (1)
        {
          if (v4 == v24)
          {
            goto LABEL_79;
          }

          if (v4 == v25)
          {
            break;
          }

          v26 = *(v3 + 8 * v4);
          v27 = *(a2 + 8 * v4);
          v28 = v26[2] == v27[2] && v26[3] == v27[3];
          if (!v28 && (sub_1D72646CC() & 1) == 0)
          {
            return;
          }

          v29 = v26[4];
          v30 = v27[4];
          v31 = *(v29 + 16);
          if (v31 != *(v30 + 16))
          {
            return;
          }

          if (v31)
          {
            v32 = v29 == v30;
          }

          else
          {
            v32 = 1;
          }

          if (!v32)
          {
            v33 = (v29 + 40);
            v34 = (v30 + 40);
            while (v31)
            {
              v35 = *(v33 - 1) == *(v34 - 1) && *v33 == *v34;
              if (!v35 && (sub_1D72646CC() & 1) == 0)
              {
                return;
              }

              v33 += 2;
              v34 += 2;
              if (!--v31)
              {
                goto LABEL_51;
              }
            }

            __break(1u);
LABEL_75:
            v5 = sub_1D7263BFC();
            goto LABEL_3;
          }

LABEL_51:
          if (++v4 == v5)
          {
            return;
          }
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1D635F338(unint64_t a1, unint64_t a2)
{
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_49:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    if (v5 != sub_1D7263BFC())
    {
      return;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v5)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = a1;
    }

    if (v4)
    {
      v7 = v6;
    }

    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = a2;
    }

    if (a2 >> 62)
    {
      v9 = v8;
    }

    if (v7 != v9)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (((a2 | a1) & 0xC000000000000001) != 0)
        {
          v10 = a2 & 0xC000000000000001;
          v11 = 4;
          while (1)
          {
            v12 = v11 - 4;
            v13 = v11 - 3;
            if (__OFADD__(v11 - 4, 1))
            {
              __break(1u);
              goto LABEL_49;
            }

            if ((a1 & 0xC000000000000001) != 0)
            {
              v4 = MEMORY[0x1DA6FB460](v11 - 4, a1);
              if (v10)
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
                goto LABEL_55;
              }

              v4 = *(a1 + 8 * v11);

              if (v10)
              {
LABEL_21:
                v14 = MEMORY[0x1DA6FB460](v11 - 4, a2);
                goto LABEL_26;
              }
            }

            if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v14 = *(a2 + 8 * v11);

LABEL_26:
            v15 = v4[2] == v14[2] && v4[3] == v14[3];
            if (!v15 && (sub_1D72646CC() & 1) == 0)
            {

              return;
            }

            v16 = sub_1D5E2D074(v4[4], v14[4]);

            if (v16)
            {
              ++v11;
              if (v13 != v5)
              {
                continue;
              }
            }

            return;
          }
        }

        v17 = a1 + 32;
        v18 = a2 + 32;
        v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        while (1)
        {
          if (!v19)
          {
            goto LABEL_54;
          }

          if (!v20)
          {
            break;
          }

          v21 = *v17;
          v22 = *v18;
          v23 = *(*v17 + 16) == *(*v18 + 16) && *(*v17 + 24) == *(*v18 + 24);
          if (v23 || (sub_1D72646CC() & 1) != 0)
          {
            v24 = *(v21 + 32);
            v25 = *(v22 + 32);

            LOBYTE(v24) = sub_1D5E2D074(v24, v25);

            if (v24)
            {
              --v20;
              --v19;
              v17 += 8;
              v18 += 8;
              if (--v5)
              {
                continue;
              }
            }
          }

          return;
        }

LABEL_55:
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1D635F5D8(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_49:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    if (v5 != sub_1D7263BFC())
    {
      return;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v5)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = a1;
    }

    if (v4)
    {
      v7 = v6;
    }

    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = a2;
    }

    if (a2 >> 62)
    {
      v9 = v8;
    }

    if (v7 != v9)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (((a2 | a1) & 0xC000000000000001) != 0)
        {
          v10 = a2 & 0xC000000000000001;
          v11 = 4;
          while (1)
          {
            v12 = v11 - 4;
            v13 = v11 - 3;
            if (__OFADD__(v11 - 4, 1))
            {
              __break(1u);
              goto LABEL_49;
            }

            if ((a1 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x1DA6FB460](v11 - 4, a1);
              if (v10)
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
                goto LABEL_55;
              }

              v14 = *(a1 + 8 * v11);

              if (v10)
              {
LABEL_21:
                v15 = MEMORY[0x1DA6FB460](v11 - 4, a2);
                goto LABEL_26;
              }
            }

            if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v15 = *(a2 + 8 * v11);

LABEL_26:
            v16 = *(v14 + 16) == *(v15 + 16) && *(v14 + 24) == *(v15 + 24);
            if (!v16 && (sub_1D72646CC() & 1) == 0)
            {

              return;
            }

            v17 = *(v14 + 32);

            v4 = *(v15 + 32);

            if (((v17 ^ v4) & 1) == 0)
            {
              ++v11;
              if (v13 != v5)
              {
                continue;
              }
            }

            return;
          }
        }

        v18 = a1 + 32;
        v19 = a2 + 32;
        v20 = *(v26 + 16);
        v21 = *(v25 + 16);
        while (1)
        {
          if (!v20)
          {
            goto LABEL_54;
          }

          if (!v21)
          {
            break;
          }

          v22 = *v18;
          v23 = *v19;
          v24 = *(*v18 + 16) == *(*v19 + 16) && *(*v18 + 24) == *(*v19 + 24);
          if (v24 || (sub_1D72646CC()) && *(v22 + 32) == *(v23 + 32))
          {
            --v21;
            --v20;
            v18 += 8;
            v19 += 8;
            if (--v5)
            {
              continue;
            }
          }

          return;
        }

LABEL_55:
        __break(1u);
      }

      __break(1u);
    }
  }
}

BOOL sub_1D635F84C(uint64_t a1, uint64_t a2)
{
  v80 = type metadata accessor for PuzzleLeaderboardEntry(0);
  MEMORY[0x1EEE9AC00](v80, v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v70 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v71 = 0;
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v74 = *(v9 + 72);
  while (1)
  {
    sub_1D6706BB4(v14, v11, type metadata accessor for PuzzleLeaderboardEntry);
    v75 = v14;
    sub_1D6706BB4(v15, v6, type metadata accessor for PuzzleLeaderboardEntry);
    if ((sub_1D72588AC() & 1) == 0)
    {
      goto LABEL_63;
    }

    v16 = v80[5];
    v17 = *&v11[v16];
    v18 = *&v11[v16 + 8];
    v19 = &v6[v16];
    v20 = v17 == *v19 && v18 == *(v19 + 1);
    if (!v20 && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_63;
    }

    v21 = v80[6];
    v22 = *&v11[v21];
    v23 = *&v11[v21 + 8];
    v25 = *&v11[v21 + 16];
    v24 = *&v11[v21 + 24];
    v26 = *&v11[v21 + 32];
    v27 = *&v11[v21 + 40];
    v28 = &v6[v21];
    v29 = *v28;
    v30 = *(v28 + 1);
    v32 = *(v28 + 2);
    v31 = *(v28 + 3);
    v34 = *(v28 + 4);
    v33 = *(v28 + 5);
    v76 = v34;
    v77 = v30;
    v78 = v23;
    v79 = v33;
    if (v22 != v29 || v23 != v30)
    {
      v36 = v31;
      v37 = v12;
      v38 = v11;
      v39 = v6;
      v40 = v15;
      v41 = v24;
      v42 = sub_1D72646CC();
      v24 = v41;
      v15 = v40;
      v6 = v39;
      v11 = v38;
      v12 = v37;
      v31 = v36;
      if ((v42 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    if (v25 != v32 || v24 != v31)
    {
      v44 = v24;
      v45 = sub_1D72646CC();
      v24 = v44;
      if ((v45 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v46 = v27;
    if (v27 >> 60 == 15)
    {
      v47 = v79;
      v48 = v26;
      if (v79 >> 60 != 15)
      {
        goto LABEL_60;
      }

      sub_1D5F13DE4(v26, v46);
      sub_1D5F13DE4(v76, v47);
      goto LABEL_54;
    }

    v47 = v79;
    v48 = v26;
    if (v79 >> 60 == 15)
    {
LABEL_60:
      sub_1D5F13DE4(v48, v46);
      v66 = v76;
      sub_1D5F13DE4(v76, v47);
      sub_1D5B952E4(v48, v46);
      v67 = v66;
      v68 = v47;
LABEL_62:
      sub_1D5B952E4(v67, v68);
LABEL_63:
      sub_1D5D2CFE8(v6, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D5D2CFE8(v11, type metadata accessor for PuzzleLeaderboardEntry);
      return 0;
    }

    v49 = v46 >> 62;
    v50 = v79 >> 62;
    v51 = v76;
    v72 = v24;
    if (v46 >> 62 == 3)
    {
      v52 = 0;
      result = v78;
      if (!v48 && v46 == 0xC000000000000000 && v79 >> 62 == 3)
      {
        v52 = 0;
        if (!v76 && v79 == 0xC000000000000000)
        {

          sub_1D5F13DE4(0, 0xC000000000000000);

          sub_1D5F13DE4(0, 0xC000000000000000);
          sub_1D5F13DE4(0, 0xC000000000000000);
          sub_1D5F13DE4(0, 0xC000000000000000);
          sub_1D5B952E4(0, 0xC000000000000000);
          v54 = v79;
          goto LABEL_53;
        }
      }
    }

    else
    {
      result = v78;
      if (v49)
      {
        if (v49 == 1)
        {
          LODWORD(v52) = HIDWORD(v48) - v48;
          if (__OFSUB__(HIDWORD(v48), v48))
          {
            goto LABEL_69;
          }

          v52 = v52;
        }

        else
        {
          v56 = *(v48 + 16);
          v55 = *(v48 + 24);
          v57 = __OFSUB__(v55, v56);
          v52 = v55 - v56;
          if (v57)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        v52 = BYTE6(v46);
      }
    }

    v73 = v31;
    if (v50 <= 1)
    {
      break;
    }

    if (v50 != 2)
    {
      if (v52)
      {
LABEL_61:

        sub_1D5F13DE4(v48, v46);

        v69 = v79;
        sub_1D5F13DE4(v51, v79);
        sub_1D5F13DE4(v48, v46);
        sub_1D5F13DE4(v51, v69);
        sub_1D5B952E4(v51, v69);
        sub_1D5B952E4(v48, v46);

        sub_1D5B952E4(v51, v69);

        v67 = v48;
        v68 = v46;
        goto LABEL_62;
      }

LABEL_52:

      sub_1D5F13DE4(v48, v46);

      v54 = v79;
      sub_1D5F13DE4(v51, v79);
      sub_1D5F13DE4(v48, v46);
      sub_1D5F13DE4(v51, v54);
      sub_1D5B952E4(v51, v54);
LABEL_53:
      sub_1D5B952E4(v48, v46);

      sub_1D5B952E4(v51, v54);

LABEL_54:
      sub_1D5B952E4(v48, v46);
      goto LABEL_55;
    }

    v60 = *(v76 + 16);
    v59 = *(v76 + 24);
    v57 = __OFSUB__(v59, v60);
    v58 = v59 - v60;
    if (v57)
    {
      goto LABEL_67;
    }

LABEL_47:
    if (v52 != v58)
    {
      goto LABEL_61;
    }

    if (v52 < 1)
    {
      goto LABEL_52;
    }

    sub_1D5F13DE4(v48, v46);

    v61 = v79;
    sub_1D5F13DE4(v51, v79);
    sub_1D5F13DE4(v48, v46);
    sub_1D5F13DE4(v51, v61);
    sub_1D5F13DE4(v51, v61);
    v62 = v71;
    LODWORD(v77) = sub_1D6DF11B4(v48, v46, v51, v61);
    v71 = v62;
    sub_1D5B952E4(v51, v61);
    sub_1D5B952E4(v48, v46);

    sub_1D5B952E4(v51, v61);

    sub_1D5B952E4(v48, v46);
    if ((v77 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_55:
    if (*&v11[v80[7]] != *&v6[v80[7]])
    {
      goto LABEL_63;
    }

    v63 = v80[8];
    v64 = *&v11[v63];
    v65 = *&v6[v63];
    sub_1D5D2CFE8(v6, type metadata accessor for PuzzleLeaderboardEntry);
    sub_1D5D2CFE8(v11, type metadata accessor for PuzzleLeaderboardEntry);
    result = v64 == v65;
    if (v64 == v65)
    {
      v15 += v74;
      v14 = v75 + v74;
      if (--v12)
      {
        continue;
      }
    }

    return result;
  }

  if (!v50)
  {
    v58 = BYTE6(v79);
    goto LABEL_47;
  }

  LODWORD(v58) = HIDWORD(v76) - v76;
  if (!__OFSUB__(HIDWORD(v76), v76))
  {
    v58 = v58;
    goto LABEL_47;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

void sub_1D635FF88(unint64_t a1, unint64_t a2)
{
  v44 = type metadata accessor for FormatContentOverlaySubgroup(0);
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v5);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v33 - v11);
  if (a1 >> 62)
  {
    v13 = sub_1D7263BFC();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    if (v13 != sub_1D7263BFC())
    {
      return;
    }
  }

  else if (v13 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v13)
  {
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v39 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v14 = a1;
    }

    if (a1 >> 62)
    {
      v15 = v14;
    }

    v16 = a2 & 0xFFFFFFFFFFFFFF8;
    v17 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v38 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v16 = a2;
    }

    if (a2 >> 62)
    {
      v17 = v16;
    }

    if (v15 != v17)
    {
      if (v13 < 0)
      {
        goto LABEL_55;
      }

      v18 = 0;
      v41 = a2 & 0xC000000000000001;
      v42 = a1 & 0xC000000000000001;
      v36 = a2 + 32;
      v37 = a1 + 32;
      v40 = v13;
      v34 = a1;
      v35 = a2;
      v33 = v4;
      do
      {
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          return;
        }

        if (v42)
        {
          v19 = MEMORY[0x1DA6FB460](v18, a1, v10);
          if (v41)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v18 >= *(v39 + 16))
          {
            goto LABEL_53;
          }

          v19 = *(v37 + 8 * v18);

          if (v41)
          {
LABEL_20:
            v20 = MEMORY[0x1DA6FB460](v18, a2);
            goto LABEL_25;
          }
        }

        if (v18 >= *(v38 + 16))
        {
          goto LABEL_54;
        }

        v20 = *(v36 + 8 * v18);

LABEL_25:
        v21 = v19[2] == v20[2] && v19[3] == v20[3];
        if (!v21 && (sub_1D72646CC() & 1) == 0)
        {
          goto LABEL_47;
        }

        v43 = v18 + 1;
        v22 = v19[4];
        v23 = v20[4];
        v24 = *(v22 + 16);
        if (v24 != *(v23 + 16))
        {
          goto LABEL_47;
        }

        if (v24 && v22 != v23)
        {
          v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v26 = v4;
          v27 = v22 + v25;
          v28 = v23 + v25;
          v29 = *(v26 + 72);
          while (1)
          {
            sub_1D6706BB4(v27, v12, type metadata accessor for FormatContentOverlaySubgroup);
            sub_1D6706BB4(v28, v7, type metadata accessor for FormatContentOverlaySubgroup);
            v30 = *v12 == *v7 && v12[1] == v7[1];
            if (!v30 && (sub_1D72646CC() & 1) == 0)
            {
              break;
            }

            sub_1D633C3EC(*(v12 + *(v44 + 20)), *(v7 + *(v44 + 20)));
            v32 = v31;
            sub_1D5D2CFE8(v7, type metadata accessor for FormatContentOverlaySubgroup);
            sub_1D5D2CFE8(v12, type metadata accessor for FormatContentOverlaySubgroup);
            if ((v32 & 1) == 0)
            {
              goto LABEL_47;
            }

            v28 += v29;
            v27 += v29;
            if (!--v24)
            {

              a1 = v34;
              a2 = v35;
              v4 = v33;
              goto LABEL_43;
            }
          }

          sub_1D5D2CFE8(v7, type metadata accessor for FormatContentOverlaySubgroup);
          sub_1D5D2CFE8(v12, type metadata accessor for FormatContentOverlaySubgroup);
LABEL_47:

          return;
        }

LABEL_43:
        v18 = v43;
      }

      while (v43 != v40);
    }
  }
}

uint64_t sub_1D63603D8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 48);
  v4 = (a2 + 48);
  while (v2)
  {
    v5 = *(v3 - 1) == *(v4 - 1);
    if (*v3 != *v4)
    {
      v5 = 0;
    }

    result = *(v3 - 2) == *(v4 - 2) && v5;
    v6 = result != 1 || v2-- == 1;
    v3 += 3;
    v4 += 3;
    if (v6)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1D6360458(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    if (v5 != sub_1D7263BFC())
    {
      return;
    }
  }

  else if (v5 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v5)
  {
    v6 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      v6 = v7;
    }

    v8 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (a2 >> 62)
    {
      v8 = v9;
    }

    if (v6 != v8)
    {
      if (v5 < 0)
      {
        goto LABEL_51;
      }

      v10 = 0;
      v11 = a2 & 0xC000000000000001;
      do
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          return;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1DA6FB460](v10, a1);
          if (v11)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v13 = *(a1 + 32 + 8 * v10);

          if (v11)
          {
LABEL_23:
            v14 = MEMORY[0x1DA6FB460](v10, a2);
            goto LABEL_28;
          }
        }

        if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v14 = *(a2 + 32 + 8 * v10);

LABEL_28:
        v15 = v13[2] == v14[2] && v13[3] == v14[3];
        if (!v15 && (sub_1D72646CC() & 1) == 0)
        {
          goto LABEL_43;
        }

        v16 = v13[4];
        v17 = v14[4];
        v18 = *(v16 + 16);
        if (v18 != *(v17 + 16))
        {
          goto LABEL_43;
        }

        if (v18 && v16 != v17)
        {
          v19 = (v16 + 48);
          v20 = (v17 + 48);
          while (*(v19 - 2) == *(v20 - 2) && *(v19 - 1) == *(v20 - 1) && *v19 == *v20)
          {
            v19 += 3;
            v20 += 3;
            if (!--v18)
            {
              goto LABEL_19;
            }
          }

LABEL_43:

          return;
        }

LABEL_19:

        v10 = v12;
      }

      while (v12 != v5);
    }
  }
}

void sub_1D63606C0(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __n128))
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_49:
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    if (v6 != sub_1D7263BFC())
    {
      return;
    }
  }

  else if (v6 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (v6)
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v5)
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

    if (v8 != v10)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        if (((a2 | a1) & 0xC000000000000001) != 0)
        {
          v11 = a2 & 0xC000000000000001;
          v12 = 4;
          while (1)
          {
            v13 = v12 - 4;
            v5 = v12 - 3;
            if (__OFADD__(v12 - 4, 1))
            {
              __break(1u);
              goto LABEL_49;
            }

            if ((a1 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x1DA6FB460](v12 - 4, a1);
              if (v11)
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
                goto LABEL_55;
              }

              v14 = *(a1 + 8 * v12);

              if (v11)
              {
LABEL_21:
                v15 = MEMORY[0x1DA6FB460](v12 - 4, a2);
                goto LABEL_26;
              }
            }

            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v15 = *(a2 + 8 * v12);

LABEL_26:
            v16 = v14[2] == v15[2] && v14[3] == v15[3];
            if (!v16 && (sub_1D72646CC() & 1) == 0)
            {

              return;
            }

            v17 = (a3)(v14[4], v15[4]);

            if (v17)
            {
              ++v12;
              if (v5 != v6)
              {
                continue;
              }
            }

            return;
          }
        }

        v18 = a1 + 32;
        v19 = a2 + 32;
        v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        while (1)
        {
          if (!v20)
          {
            goto LABEL_54;
          }

          if (!v21)
          {
            break;
          }

          v22 = *v18;
          v23 = *v19;
          v24 = *(*v18 + 16) == *(*v19 + 16) && *(*v18 + 24) == *(*v19 + 24);
          if (v24 || (sub_1D72646CC() & 1) != 0)
          {
            v25 = *(v22 + 32);
            v26 = *(v23 + 32);

            LOBYTE(v25) = (a3)(v25, v26);

            if (v25)
            {
              --v21;
              --v20;
              v18 += 8;
              v19 += 8;
              if (--v6)
              {
                continue;
              }
            }
          }

          return;
        }

LABEL_55:
        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_1D6360974(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1D63609D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x6B636F6C62;
      }

      else
      {
        v5 = 0x776F6C6C6F66;
      }

      if (*v3)
      {
        v6 = 0xE500000000000000;
      }

      else
      {
        v6 = 0xE600000000000000;
      }

      if (*v4)
      {
        v7 = 0x6B636F6C62;
      }

      else
      {
        v7 = 0x776F6C6C6F66;
      }

      if (*v4)
      {
        v8 = 0xE500000000000000;
      }

      else
      {
        v8 = 0xE600000000000000;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1D72646CC();

        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

void sub_1D6360ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    v4 = (a2 + 64);
    while (1)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v9 = *(v4 - 2);
      v8 = *(v4 - 1);
      v14 = *v4;
      v10 = *(v3 - 4) == *(v4 - 4) && *(v3 - 3) == *(v4 - 3);
      if (!v10 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v15 = v9;
      v16 = v5;

      swift_retain_n();
      swift_retain_n();

      v11 = static FormatTextContent.== infix(_:_:)(&v16, &v15);

      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v6)
      {
        if (!v8 || (, v12 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v6, v8), , (v12 & 1) == 0))
        {
LABEL_19:

          return;
        }
      }

      else if (v8)
      {
        goto LABEL_19;
      }

      v13 = sub_1D5BFC390(v7, v14);

      if (v13)
      {
        v3 += 5;
        v4 += 5;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_1D6360D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *))
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16) && v3 && a1 != a2)
  {
    v5 = (a1 + 32);
    v6 = (a2 + 32);
    while (1)
    {
      v7 = *v5;
      v12 = *v6;
      v13 = v7;
      v10 = v12;
      v11 = v7;

      swift_retain_n();
      swift_retain_n();

      v8 = static FormatExpression.== infix(_:_:)(&v11, &v10);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v9 = a3(&v13 + 8, &v12 + 8);

      if (v9)
      {
        ++v5;
        ++v6;
        if (--v3)
        {
          continue;
        }
      }

      return;
    }
  }
}

uint64_t sub_1D6360EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (!v3 || a1 == a2)
    {
      v14 = 1;
      return v14 & 1;
    }

    v7 = 0;
    while (1)
    {
      v8 = *(a1 + v7 + 40);
      v9 = *(a1 + v7 + 48);
      v10 = *(a2 + v7 + 32);
      v11 = *(a2 + v7 + 40);
      v12 = *(a2 + v7 + 48);
      v17 = *(a1 + v7 + 32);
      v18 = v8;
      v19 = v9;
      v16 = v12;
      v13 = v17 == v10 && v8 == v11;
      if (!v13 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v14 = a3(&v19, &v16);
      if (v14)
      {
        v7 += 24;
        if (--v3)
        {
          continue;
        }
      }

      return v14 & 1;
    }
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1D6360FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 33);
    v4 = *(a2 + 33);
    v5 = *(a2 + 32);
    v6 = sub_1D6E23ADC(*(a1 + 32));
    v8 = v7;
    v10 = v6 == sub_1D6E23ADC(v5) && v8 == v9;
    v30 = v2;
    if (v10)
    {
      v12 = 1;
LABEL_12:

LABEL_13:
      v14 = a2;
      v15 = a1;
      v16 = ~v12;
      v17 = 2 * v12;
      for (i = v2 - v12; ; --i)
      {
        v20 = (v3 & 1) != 0 ? 0x70616373646E616CLL : 0x7469617274726F70;
        v21 = (v3 & 1) != 0 ? 0xE900000000000065 : 0xE800000000000000;
        v22 = (v4 & 1) != 0 ? 0x70616373646E616CLL : 0x7469617274726F70;
        v23 = (v4 & 1) != 0 ? 0xE900000000000065 : 0xE800000000000000;
        if (v20 == v22 && v21 == v23)
        {
        }

        else
        {
          v24 = sub_1D72646CC();

          if ((v24 & 1) == 0)
          {
            return 0;
          }
        }

        if (!i)
        {
          break;
        }

        v3 = *(v15 + v17 + 33);
        v4 = *(v14 + v17 + 33);
        v25 = *(v14 + v17 + 32);
        v26 = sub_1D6E23ADC(*(v15 + v17 + 32));
        v28 = v27;
        if (v26 == sub_1D6E23ADC(v25) && v28 == v29)
        {
          v12 = -v16;
          v2 = v30;
          goto LABEL_12;
        }

        v19 = sub_1D72646CC();

        --v16;
        v15 += 2;
        v14 += 2;
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    v11 = sub_1D72646CC();

    if (v11)
    {
      v12 = 1;
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t FormatWorkspace.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  sub_1D5C8CD38();
  v76 = v3;
  v73 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v77 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E528(0);
  *&v81 = v6;
  v75 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v78 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EC885F90, sub_1D60CEE3C, sub_1D60CEE90, &type metadata for FormatWorkspacePackage);
  v10 = v9;
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v56 - v12;
  sub_1D66587CC(0);
  v15 = v14;
  v80 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C94C(0);
  sub_1D5B58B84(&qword_1EC87FA18, sub_1D5E1C94C, &unk_1D7321584);
  v19 = v82;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v72 = v13;
  v21 = v81;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1D7264AFC();
  v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

  v24 = v15;
  v25 = v80;
  if (v23)
  {
    v26 = sub_1D726433C();
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = (v26 + 48);
      while (*v28 != 1)
      {
        v28 += 24;
        if (!--v27)
        {
          goto LABEL_7;
        }
      }

      v32 = *(v28 - 2);
      v31 = *(v28 - 1);

      v33 = sub_1D66127C8();
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v34 = v32;
      *(v34 + 8) = v31;
      *(v34 + 16) = v33;
      *(v34 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v25 + 8))(v18, v24);
      goto LABEL_10;
    }

LABEL_7:
  }

  v85 = 0uLL;
  LOBYTE(v86) = 0;
  v29 = sub_1D72642BC();
  v82 = v30;
  v85 = xmmword_1D728CF30;
  LOBYTE(v86) = 0;
  v70 = sub_1D72642BC();
  v71 = v35;
  v85 = xmmword_1D7297410;
  LOBYTE(v86) = 0;
  v66 = sub_1D726422C();
  v67 = v29;
  v69 = v37;
  v68 = xmmword_1D72BAA60;
  v85 = xmmword_1D72BAA60;
  LOBYTE(v86) = 0;
  v38 = sub_1D726434C();
  if (v38)
  {
    v83 = v68;
    v84 = 0;
    sub_1D726431C();
    v87 = v88;
  }

  else
  {
    v87 = 0;
  }

  v68 = xmmword_1D72BAA70;
  v85 = xmmword_1D72BAA70;
  LOBYTE(v86) = 0;
  if (sub_1D726434C())
  {
    v83 = v68;
    v84 = 0;
    sub_1D6658B30();
    sub_1D726431C();
    v39 = v72;
    *&v68 = sub_1D725A74C();
    (v79[1])(v39, v10);
  }

  else
  {
    *&v68 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5B5BF78(0, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup, MEMORY[0x1E69E62F8]);
  v85 = xmmword_1D72BAA80;
  LOBYTE(v86) = 0;
  sub_1D6658860();
  sub_1D726431C();
  v40 = v83;
  v83 = xmmword_1D72BAA90;
  v84 = 0;
  sub_1D6658938();
  sub_1D726431C();
  v72 = v40;
  v79 = a1;
  v41 = v18;
  v42 = v85;
  v43 = v86;
  v85 = xmmword_1D72BAAA0;
  LOBYTE(v86) = 0;
  sub_1D665898C();
  sub_1D726427C();
  v64 = *(&v42 + 1);
  v65 = v43;
  v44 = v83;
  v85 = xmmword_1D72BAAB0;
  LOBYTE(v86) = 0;
  sub_1D66589E0();
  sub_1D726427C();
  v45 = *(&v83 + 1);
  v62 = v83;
  v85 = xmmword_1D72BAAC0;
  LOBYTE(v86) = 0;
  sub_1D6658A34();
  sub_1D726427C();
  v61 = __PAIR128__(*(&v83 + 1), v44);
  v60 = v83;
  v85 = xmmword_1D72BAAD0;
  LOBYTE(v86) = 0;
  sub_1D6658A88();
  v63 = v24;
  v46 = v41;
  sub_1D726427C();
  v59 = *(&v83 + 1);
  v57 = v83;
  v58 = xmmword_1D72BAAE0;
  v85 = xmmword_1D72BAAE0;
  LOBYTE(v86) = 0;
  if (sub_1D726434C())
  {
    v83 = v58;
    v84 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528, MEMORY[0x1E69D64C8]);
    sub_1D726431C();
    v47 = v21;
    v48 = v78;
    v49 = sub_1D725A74C();
    (*(v75 + 8))(v48, v47);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v81 = xmmword_1D72BAAF0;
  v85 = xmmword_1D72BAAF0;
  LOBYTE(v86) = 0;
  if (sub_1D726434C())
  {
    v83 = v81;
    v84 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
    sub_1D726431C();
    v51 = v76;
    v50 = v77;
    *&v81 = sub_1D725A74C();
    (*(v73 + 8))(v50, v51);
  }

  else
  {
    *&v81 = MEMORY[0x1E69E7CD0];
  }

  v85 = xmmword_1D7282A80;
  LOBYTE(v86) = 0;
  sub_1D6658ADC();
  sub_1D726431C();
  (*(v25 + 8))(v46, v63);
  v52 = v88;
  v53 = v89;
  v54 = v90;
  v55 = v74;
  *v74 = v67;
  v55[1] = v82;
  v55[2] = v70;
  v55[3] = v71;
  v55[4] = v66;
  v55[5] = v69;
  *(v55 + 48) = v87;
  *(v55 + 49) = v83;
  *(v55 + 13) = *(&v83 + 3);
  v55[7] = v68;
  v55[8] = v72;
  v55[9] = v42;
  v55[10] = v64;
  v55[11] = v65;
  v55[12] = v61;
  v55[13] = *(&v44 + 1);
  v55[14] = v62;
  v55[15] = v45;
  v55[16] = v60;
  v55[17] = *(&v61 + 1);
  v55[18] = v57;
  v55[19] = v59;
  v55[20] = v49;
  v55[21] = v81;
  *(v55 + 176) = v52;
  *(v55 + 177) = v53;
  *(v55 + 178) = v54;
  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t FormatWorkspace.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v304 = (&v300 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v307 = (&v300 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v310 = (&v300 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v313 = (&v300 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v316 = (&v300 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v318 = (&v300 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v319 = (&v300 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v324 = (&v300 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v326 = &v300 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v327 = &v300 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v330 = &v300 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v332 = (&v300 - v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v341 = (&v300 - v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v300 - v44;
  sub_1D6658BC0(0);
  v47 = v46;
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = &v300 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *v1;
  v52 = v1[1];
  v53 = v1[3];
  v334 = v1[2];
  v333 = v53;
  v54 = v1[5];
  v329 = v1[4];
  v331 = v54;
  v353 = *(v1 + 48);
  v55 = v1[8];
  v328 = v1[7];
  v325 = v55;
  v56 = v1[10];
  v323 = v1[9];
  v322 = v56;
  v57 = v1[12];
  v321 = v1[11];
  v314 = v57;
  v58 = v1[14];
  v320 = v1[13];
  v311 = v58;
  v59 = v1[16];
  v317 = v1[15];
  v308 = v59;
  v60 = v1[18];
  v315 = v1[17];
  v305 = v60;
  v61 = v1[20];
  v312 = v1[19];
  v309 = v61;
  v306 = v1[21];
  v303 = *(v1 + 176);
  v302 = *(v1 + 177);
  v301 = *(v1 + 178);
  v62 = a1[3];
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v62);
  sub_1D5E1C94C(0);
  v65 = v64;
  v66 = sub_1D5B58B84(&qword_1EC87FA18, sub_1D5E1C94C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatWorkspace, v65, v67, v62, &type metadata for FormatWorkspace, v65, &type metadata for FormatVersions.CrystalGlowE, v63, v50, v66, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v68 = sub_1D725BD1C();
  v69 = __swift_project_value_buffer(v68, qword_1EDFFCE38);
  v70 = *(v68 - 8);
  v71 = *(v70 + 16);
  v336 = v69;
  v335 = v68;
  v337 = v71;
  v339 = v70 + 16;
  (v71)(v45);
  v340 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v348 = v51;
  *(&v348 + 1) = v52;
  v350 = 0uLL;
  LOBYTE(v351) = 0;
  v72 = &v50[*(v47 + 44)];
  v73 = *v72;
  v74 = *(v72 + 1);
  v352 = 0;
  v75 = swift_allocObject();
  *&v345 = &v300;
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  *(v75 + 32) = v352;
  *(v75 + 40) = v73;
  *(v75 + 48) = v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v344 = (&v300 - 6);
  *(&v300 - 4) = sub_1D5B4AA6C;
  *(&v300 - 3) = 0;
  v298 = sub_1D6708860;
  v299 = v77;
  v352 = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  *(v78 + 24) = 0;
  *(v78 + 32) = v352;
  v338 = v73;
  *(v78 + 40) = v73;
  *(v78 + 48) = v74;
  sub_1D5E1C910(0);
  v80 = v79;
  v81 = sub_1D5B58B84(&qword_1EC87FA20, sub_1D5E1C910, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v342 = v80;
  v343 = v81;
  v82 = sub_1D72647CC();
  v352 = 0;
  v83 = swift_allocObject();
  *(v83 + 24) = 0;
  *(v83 + 32) = 0;
  *(v83 + 16) = v82;
  *(v83 + 40) = v352;
  v84 = *(v47 + 36);
  v85 = v45;
  v347 = v50;
  v86 = &v50[v84];
  v87 = *&v50[v84 + 24];
  v88 = *&v50[v84 + 32];
  v89 = __swift_project_boxed_opaque_existential_1(&v50[v84], v87);
  MEMORY[0x1EEE9AC00](v89, v90);
  MEMORY[0x1EEE9AC00](v91, v92);
  v93 = v344;
  *(&v300 - 4) = sub_1D615B4A4;
  *(&v300 - 3) = v93;
  v298 = sub_1D6708860;
  v299 = v78;
  v94 = v346;
  sub_1D5D2BC70(v85, sub_1D615B49C, v95, sub_1D615B4A4, (&v300 - 6), v87, v88);
  if (v94)
  {
    sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

    v112 = v347;
    return sub_1D5D2CFE8(v112, sub_1D6658BC0);
  }

  v344 = v86;
  v300 = v74;

  sub_1D72647EC();
  sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

  v337(v341, v336, v335);
  swift_storeEnumTagMultiPayload();
  *&v348 = v334;
  *(&v348 + 1) = v333;
  v346 = xmmword_1D728CF30;
  v350 = xmmword_1D728CF30;
  LOBYTE(v351) = 0;
  v352 = 0;
  v96 = swift_allocObject();
  *&v345 = &v300;
  *(v96 + 16) = v346;
  *(v96 + 32) = v352;
  v97 = v338;
  v98 = v300;
  *(v96 + 40) = v338;
  *(v96 + 48) = v98;
  MEMORY[0x1EEE9AC00](v96, v99);
  *(&v300 - 4) = sub_1D5B4AA6C;
  *(&v300 - 3) = 0;
  v298 = sub_1D6708860;
  v299 = v100;
  v352 = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = v346;
  *(v101 + 32) = v352;
  *(v101 + 40) = v97;
  *(v101 + 48) = v98;
  swift_retain_n();
  v102 = sub_1D72647CC();
  v352 = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = v346;
  *(v103 + 40) = v352;
  v104 = *(v344 + 3);
  v105 = *(v344 + 4);
  v106 = __swift_project_boxed_opaque_existential_1(v344, v104);
  MEMORY[0x1EEE9AC00](v106, v107);
  MEMORY[0x1EEE9AC00](v108, v109);
  *(&v300 - 4) = sub_1D615B4A4;
  *(&v300 - 3) = (&v300 - 6);
  v110 = v341;
  v298 = sub_1D6708860;
  v299 = v101;
  sub_1D5D2BC70(v341, sub_1D615B49C, v111, sub_1D615B4A4, (&v300 - 6), v104, v105);

  sub_1D72647EC();
  sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);

  v114 = v332;
  v115 = v336;
  v116 = v335;
  v117 = v337;
  v337(v332, v336, v335);
  swift_storeEnumTagMultiPayload();
  v346 = xmmword_1D7297410;
  v350 = xmmword_1D7297410;
  LOBYTE(v351) = 0;
  LOBYTE(v348) = 0;
  v119 = swift_allocObject();
  *(v119 + 16) = v346;
  *(v119 + 32) = v348;
  v120 = v338;
  *(v119 + 40) = v338;
  v121 = v300;
  *(v119 + 48) = v300;
  if (v331)
  {
    *&v345 = &v300;
    *&v348 = v329;
    *(&v348 + 1) = v331;
    MEMORY[0x1EEE9AC00](v121, v118);
    *(&v300 - 4) = sub_1D5B4AA6C;
    *(&v300 - 3) = 0;
    v298 = sub_1D6708860;
    v299 = v119;
    v352 = 0;
    v123 = v122;
    v124 = swift_allocObject();
    *(v124 + 16) = v346;
    *(v124 + 32) = v352;
    *(v124 + 40) = v120;
    *(v124 + 48) = v123;
    swift_retain_n();

    v125 = sub_1D72647CC();
    v352 = 0;
    v126 = swift_allocObject();
    *(v126 + 16) = v125;
    *(v126 + 24) = v346;
    *(v126 + 40) = v352;
    v127 = *(v344 + 3);
    v128 = *(v344 + 4);
    v129 = __swift_project_boxed_opaque_existential_1(v344, v127);
    MEMORY[0x1EEE9AC00](v129, v130);
    MEMORY[0x1EEE9AC00](v131, v132);
    *(&v300 - 4) = sub_1D615B4A4;
    *(&v300 - 3) = (&v300 - 6);
    v298 = sub_1D6708860;
    v299 = v124;
    v134 = sub_1D5D2F7A4(v114, sub_1D615B49C, v133, sub_1D615B4A4, (&v300 - 6), v127, v128);
    v135 = v134;

    if (v135)
    {
      sub_1D72647EC();
      v117 = v337;
      v120 = v338;
      v116 = v335;
      v115 = v336;

      sub_1D5D2CFE8(v332, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v332, type metadata accessor for FormatVersionRequirement);
      v117 = v337;
      v120 = v338;
      v116 = v335;
      v115 = v336;
    }
  }

  else
  {

    sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);
  }

  v136 = v330;
  v117(v330, v115, v116);
  swift_storeEnumTagMultiPayload();
  if (v353)
  {
    LOBYTE(v350) = 0;
    v137 = swift_allocObject();
    v346 = xmmword_1D72BAA60;
    *(v137 + 16) = xmmword_1D72BAA60;
    *(v137 + 32) = v350;
    *(v137 + 40) = v120;
    *(v137 + 48) = v300;

    v138 = sub_1D72647CC();
    LOBYTE(v350) = 0;
    v139 = swift_allocObject();
    *(v139 + 16) = v138;
    *(v139 + 24) = v346;
    *(v139 + 40) = v350;
    v140 = *(v344 + 3);
    v141 = *(v344 + 4);
    v142 = __swift_project_boxed_opaque_existential_1(v344, v140);
    *&v345 = &v300;
    MEMORY[0x1EEE9AC00](v142, v143);
    MEMORY[0x1EEE9AC00](v144, v145);
    *(&v300 - 4) = sub_1D5B4AA6C;
    *(&v300 - 3) = 0;
    v298 = sub_1D6708860;
    v299 = v137;
    v147 = sub_1D5D2F7A4(v136, sub_1D615B49C, v146, sub_1D615B4A4, (&v300 - 6), v140, v141);
    v162 = v147;

    v148 = v327;
    if (v162)
    {
      v350 = v346;
      LOBYTE(v351) = 0;
      LOBYTE(v348) = 1;
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v330, type metadata accessor for FormatVersionRequirement);
    v115 = v336;
    v117 = v337;
  }

  else
  {
    sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
    v148 = v327;
  }

  *&v346 = 0;
  v117(v148, v115, v116);
  swift_storeEnumTagMultiPayload();
  if (!*(v328 + 16))
  {
    sub_1D5D2CFE8(v148, type metadata accessor for FormatVersionRequirement);
    goto LABEL_29;
  }

  LOBYTE(v350) = 0;
  v149 = swift_allocObject();
  v345 = xmmword_1D72BAA70;
  *(v149 + 16) = xmmword_1D72BAA70;
  *(v149 + 32) = v350;
  *(v149 + 40) = v338;
  *(v149 + 48) = v300;

  v150 = v347;
  v151 = sub_1D72647CC();
  LOBYTE(v350) = 0;
  v152 = swift_allocObject();
  *(v152 + 16) = v151;
  *(v152 + 24) = v345;
  *(v152 + 40) = v350;
  v153 = *(v344 + 3);
  v154 = *(v344 + 4);
  v155 = __swift_project_boxed_opaque_existential_1(v344, v153);
  MEMORY[0x1EEE9AC00](v155, v156);
  MEMORY[0x1EEE9AC00](v157, v158);
  *(&v300 - 4) = sub_1D5B4AA6C;
  *(&v300 - 3) = 0;
  v298 = sub_1D6658C54;
  v299 = v149;
  v159 = v346;
  v161 = sub_1D5D2F7A4(v148, sub_1D615B49C, v160, sub_1D615B4A4, (&v300 - 6), v153, v154);
  *&v346 = v159;
  if (!v159)
  {
    v163 = v161;

    if (v163)
    {
      v350 = v345;
      LOBYTE(v351) = 0;
      *&v348 = v328;
      sub_1D5C34D84(0, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
      sub_1D6658FB4();
      v164 = v347;
      v165 = v346;
      sub_1D72647EC();
      v166 = v337;
      if (v165)
      {

        sub_1D5D2CFE8(v148, type metadata accessor for FormatVersionRequirement);
        v112 = v164;
        return sub_1D5D2CFE8(v112, sub_1D6658BC0);
      }

      *&v346 = 0;

      sub_1D5D2CFE8(v148, type metadata accessor for FormatVersionRequirement);
      v115 = v336;
      v117 = v166;
    }

    else
    {
      sub_1D5D2CFE8(v148, type metadata accessor for FormatVersionRequirement);

      v115 = v336;
      v117 = v337;
    }

LABEL_29:
    v167 = v326;
    v117(v326, v115, v116);
    swift_storeEnumTagMultiPayload();
    *&v348 = v325;
    v345 = xmmword_1D72BAA80;
    v350 = xmmword_1D72BAA80;
    LOBYTE(v351) = 0;
    v352 = 0;
    v168 = swift_allocObject();
    v341 = &v300;
    *(v168 + 16) = v345;
    *(v168 + 32) = v352;
    v169 = v338;
    v170 = v300;
    *(v168 + 40) = v338;
    *(v168 + 48) = v170;
    MEMORY[0x1EEE9AC00](v168, v171);
    *(&v300 - 4) = sub_1D5B4AA6C;
    *(&v300 - 3) = 0;
    v298 = sub_1D6708860;
    v299 = v172;
    v352 = 0;
    v173 = swift_allocObject();
    *(v173 + 16) = v345;
    *(v173 + 32) = v352;
    *(v173 + 40) = v169;
    *(v173 + 48) = v170;
    swift_retain_n();
    v174 = v347;
    v175 = sub_1D72647CC();
    v352 = 0;
    v176 = swift_allocObject();
    *(v176 + 16) = v175;
    *(v176 + 24) = v345;
    *(v176 + 40) = v352;
    v177 = *(v344 + 3);
    v178 = *(v344 + 4);
    v179 = __swift_project_boxed_opaque_existential_1(v344, v177);
    MEMORY[0x1EEE9AC00](v179, v180);
    MEMORY[0x1EEE9AC00](v181, v182);
    *(&v300 - 4) = sub_1D615B4A4;
    *(&v300 - 3) = (&v300 - 6);
    v298 = sub_1D6708860;
    v299 = v173;
    v183 = v346;
    sub_1D5D2BC70(v167, sub_1D615B49C, v184, sub_1D615B4A4, (&v300 - 6), v177, v178);
    if (v183)
    {
      sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);

      v112 = v174;
      return sub_1D5D2CFE8(v112, sub_1D6658BC0);
    }

    sub_1D5B5BF78(0, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup, MEMORY[0x1E69E62F8]);
    sub_1D6658CE4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);

    v337(v324, v336, v335);
    swift_storeEnumTagMultiPayload();
    *&v350 = v323;
    *(&v350 + 1) = v322;
    v351 = v321;
    v346 = xmmword_1D72BAA90;
    v348 = xmmword_1D72BAA90;
    v349 = 0;
    v352 = 0;
    v185 = swift_allocObject();
    *&v345 = &v300;
    *(v185 + 16) = v346;
    *(v185 + 32) = v352;
    v186 = v338;
    v187 = v300;
    *(v185 + 40) = v338;
    *(v185 + 48) = v187;
    MEMORY[0x1EEE9AC00](v185, v188);
    *(&v300 - 4) = sub_1D5B4AA6C;
    *(&v300 - 3) = 0;
    v298 = sub_1D6708860;
    v299 = v189;
    v352 = 0;
    v190 = swift_allocObject();
    *(v190 + 16) = v346;
    *(v190 + 32) = v352;
    *(v190 + 40) = v186;
    *(v190 + 48) = v187;
    swift_retain_n();
    v191 = sub_1D72647CC();
    v352 = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = v191;
    *(v192 + 24) = v346;
    *(v192 + 40) = v352;
    v193 = *(v344 + 3);
    v194 = *(v344 + 4);
    v195 = __swift_project_boxed_opaque_existential_1(v344, v193);
    MEMORY[0x1EEE9AC00](v195, v196);
    MEMORY[0x1EEE9AC00](v197, v198);
    *(&v300 - 4) = sub_1D615B4A4;
    *(&v300 - 3) = (&v300 - 6);
    v199 = v324;
    v298 = sub_1D6708860;
    v299 = v190;
    sub_1D5D2BC70(v324, sub_1D615B49C, v200, sub_1D615B4A4, (&v300 - 6), v193, v194);

    sub_1D6658DBC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);

    v201 = v319;
    v337(v319, v336, v335);
    swift_storeEnumTagMultiPayload();
    v346 = xmmword_1D72BAAA0;
    v350 = xmmword_1D72BAAA0;
    LOBYTE(v351) = 0;
    LOBYTE(v348) = 0;
    v202 = swift_allocObject();
    v204 = v202;
    *(v202 + 16) = v346;
    *(v202 + 32) = v348;
    v205 = v300;
    *(v202 + 40) = v338;
    *(v202 + 48) = v205;
    if (v320)
    {
      *&v348 = v314;
      *(&v348 + 1) = v320;
      MEMORY[0x1EEE9AC00](v202, v203);
      *(&v300 - 4) = sub_1D5B4AA6C;
      *(&v300 - 3) = 0;
      v298 = sub_1D6708860;
      v299 = v204;
      v352 = 0;
      v206 = swift_allocObject();
      *(v206 + 16) = v346;
      *(v206 + 32) = v352;
      *(v206 + 40) = v338;
      *(v206 + 48) = v205;
      swift_retain_n();

      v207 = sub_1D72647CC();
      v352 = 0;
      v208 = swift_allocObject();
      *(v208 + 16) = v207;
      *(v208 + 24) = v346;
      *(v208 + 40) = v352;
      v209 = *(v344 + 3);
      v210 = *(v344 + 4);
      v211 = __swift_project_boxed_opaque_existential_1(v344, v209);
      MEMORY[0x1EEE9AC00](v211, v212);
      MEMORY[0x1EEE9AC00](v213, v214);
      *(&v300 - 4) = sub_1D615B4A4;
      *(&v300 - 3) = (&v300 - 6);
      v298 = sub_1D6708860;
      v299 = v206;
      v216 = sub_1D5D2F7A4(v201, sub_1D615B49C, v215, sub_1D615B4A4, (&v300 - 6), v209, v210);

      if (v216)
      {
        sub_1D6658F60();
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v319, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
    }

    v337(v318, v336, v335);
    swift_storeEnumTagMultiPayload();
    v346 = xmmword_1D72BAAB0;
    v350 = xmmword_1D72BAAB0;
    LOBYTE(v351) = 0;
    LOBYTE(v348) = 0;
    v217 = swift_allocObject();
    v219 = v217;
    *(v217 + 16) = v346;
    *(v217 + 32) = v348;
    v220 = v300;
    *(v217 + 40) = v338;
    *(v217 + 48) = v220;
    if (v317)
    {
      *&v348 = v311;
      *(&v348 + 1) = v317;
      MEMORY[0x1EEE9AC00](v217, v218);
      *(&v300 - 4) = sub_1D5B4AA6C;
      *(&v300 - 3) = 0;
      v298 = sub_1D6708860;
      v299 = v219;
      v352 = 0;
      v221 = swift_allocObject();
      *(v221 + 16) = v346;
      *(v221 + 32) = v352;
      *(v221 + 40) = v338;
      *(v221 + 48) = v300;
      swift_retain_n();

      v222 = sub_1D72647CC();
      v352 = 0;
      v223 = swift_allocObject();
      *(v223 + 16) = v222;
      *(v223 + 24) = v346;
      *(v223 + 40) = v352;
      v224 = *(v344 + 3);
      v225 = *(v344 + 4);
      v226 = __swift_project_boxed_opaque_existential_1(v344, v224);
      MEMORY[0x1EEE9AC00](v226, v227);
      MEMORY[0x1EEE9AC00](v228, v229);
      *(&v300 - 4) = sub_1D615B4A4;
      *(&v300 - 3) = (&v300 - 6);
      v298 = sub_1D6708860;
      v299 = v221;
      v231 = sub_1D5D2F7A4(v318, sub_1D615B49C, v230, sub_1D615B4A4, (&v300 - 6), v224, v225);

      if (v231)
      {
        sub_1D6658F0C();
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v318, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v318, type metadata accessor for FormatVersionRequirement);
    }

    v337(v316, v336, v335);
    swift_storeEnumTagMultiPayload();
    v346 = xmmword_1D72BAAC0;
    v350 = xmmword_1D72BAAC0;
    LOBYTE(v351) = 0;
    LOBYTE(v348) = 0;
    v232 = swift_allocObject();
    v234 = v232;
    *(v232 + 16) = v346;
    *(v232 + 32) = v348;
    v235 = v300;
    *(v232 + 40) = v338;
    *(v232 + 48) = v235;
    if (v315)
    {
      *&v348 = v308;
      *(&v348 + 1) = v315;
      MEMORY[0x1EEE9AC00](v232, v233);
      *(&v300 - 4) = sub_1D5B4AA6C;
      *(&v300 - 3) = 0;
      v298 = sub_1D6708860;
      v299 = v234;
      v352 = 0;
      v236 = swift_allocObject();
      *(v236 + 16) = v346;
      *(v236 + 32) = v352;
      *(v236 + 40) = v338;
      *(v236 + 48) = v300;
      swift_retain_n();

      v237 = sub_1D72647CC();
      v352 = 0;
      v238 = swift_allocObject();
      *(v238 + 16) = v237;
      *(v238 + 24) = v346;
      *(v238 + 40) = v352;
      v239 = *(v344 + 3);
      v240 = *(v344 + 4);
      v241 = __swift_project_boxed_opaque_existential_1(v344, v239);
      MEMORY[0x1EEE9AC00](v241, v242);
      MEMORY[0x1EEE9AC00](v243, v244);
      *(&v300 - 4) = sub_1D615B4A4;
      *(&v300 - 3) = (&v300 - 6);
      v298 = sub_1D6708860;
      v299 = v236;
      v246 = sub_1D5D2F7A4(v316, sub_1D615B49C, v245, sub_1D615B4A4, (&v300 - 6), v239, v240);

      if (v246)
      {
        sub_1D6658EB8();
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v316, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v316, type metadata accessor for FormatVersionRequirement);
    }

    v337(v313, v336, v335);
    swift_storeEnumTagMultiPayload();
    v346 = xmmword_1D72BAAD0;
    v350 = xmmword_1D72BAAD0;
    LOBYTE(v351) = 0;
    LOBYTE(v348) = 0;
    v247 = swift_allocObject();
    v249 = v247;
    *(v247 + 16) = v346;
    *(v247 + 32) = v348;
    v250 = v300;
    *(v247 + 40) = v338;
    *(v247 + 48) = v250;
    if (v312)
    {
      *&v348 = v305;
      *(&v348 + 1) = v312;
      MEMORY[0x1EEE9AC00](v247, v248);
      *(&v300 - 4) = sub_1D5B4AA6C;
      *(&v300 - 3) = 0;
      v298 = sub_1D6708860;
      v299 = v249;
      v352 = 0;
      v251 = swift_allocObject();
      *(v251 + 16) = v346;
      *(v251 + 32) = v352;
      *(v251 + 40) = v338;
      *(v251 + 48) = v300;
      swift_retain_n();

      v252 = sub_1D72647CC();
      v352 = 0;
      v253 = swift_allocObject();
      *(v253 + 16) = v252;
      *(v253 + 24) = v346;
      *(v253 + 40) = v352;
      v254 = *(v344 + 3);
      v255 = *(v344 + 4);
      v256 = __swift_project_boxed_opaque_existential_1(v344, v254);
      MEMORY[0x1EEE9AC00](v256, v257);
      MEMORY[0x1EEE9AC00](v258, v259);
      *(&v300 - 4) = sub_1D615B4A4;
      *(&v300 - 3) = (&v300 - 6);
      v298 = sub_1D6708860;
      v299 = v251;
      v261 = sub_1D5D2F7A4(v313, sub_1D615B49C, v260, sub_1D615B4A4, (&v300 - 6), v254, v255);

      if (v261)
      {
        sub_1D6658E64();
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v313, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v313, type metadata accessor for FormatVersionRequirement);
    }

    v337(v310, v336, v335);
    swift_storeEnumTagMultiPayload();
    if (*(v309 + 16))
    {
      LOBYTE(v350) = 0;
      v262 = swift_allocObject();
      v346 = xmmword_1D72BAAE0;
      *(v262 + 16) = xmmword_1D72BAAE0;
      *(v262 + 32) = v350;
      *(v262 + 40) = v338;
      *(v262 + 48) = v300;

      v263 = sub_1D72647CC();
      LOBYTE(v350) = 0;
      v264 = swift_allocObject();
      *(v264 + 16) = v263;
      *(v264 + 24) = v346;
      *(v264 + 40) = v350;
      v265 = *(v344 + 3);
      v266 = *(v344 + 4);
      v267 = __swift_project_boxed_opaque_existential_1(v344, v265);
      MEMORY[0x1EEE9AC00](v267, v268);
      MEMORY[0x1EEE9AC00](v269, v270);
      *(&v300 - 4) = sub_1D5B4AA6C;
      *(&v300 - 3) = 0;
      v298 = sub_1D6708860;
      v299 = v262;
      LOBYTE(v265) = sub_1D5D2F7A4(v310, sub_1D615B49C, v271, sub_1D615B4A4, (&v300 - 6), v265, v266);

      if ((v265 & 1) == 0)
      {
        sub_1D5D2CFE8(v310, type metadata accessor for FormatVersionRequirement);

LABEL_60:
        v337(v307, v336, v335);
        swift_storeEnumTagMultiPayload();
        if (*(v306 + 16))
        {
          LOBYTE(v350) = 0;
          v272 = swift_allocObject();
          v346 = xmmword_1D72BAAF0;
          *(v272 + 16) = xmmword_1D72BAAF0;
          *(v272 + 32) = v350;
          *(v272 + 40) = v338;
          *(v272 + 48) = v300;

          v273 = sub_1D72647CC();
          LOBYTE(v350) = 0;
          v274 = swift_allocObject();
          *(v274 + 16) = v273;
          *(v274 + 24) = v346;
          *(v274 + 40) = v350;
          v275 = *(v344 + 3);
          v276 = *(v344 + 4);
          v277 = __swift_project_boxed_opaque_existential_1(v344, v275);
          MEMORY[0x1EEE9AC00](v277, v278);
          MEMORY[0x1EEE9AC00](v279, v280);
          *(&v300 - 4) = sub_1D5B4AA6C;
          *(&v300 - 3) = 0;
          v298 = sub_1D6708860;
          v299 = v272;
          LOBYTE(v275) = sub_1D5D2F7A4(v307, sub_1D615B49C, v281, sub_1D615B4A4, (&v300 - 6), v275, v276);

          if (v275)
          {
            sub_1D5E087E4(v306, v347, 0xC, 0, 0);
          }
        }

        sub_1D5D2CFE8(v307, type metadata accessor for FormatVersionRequirement);
        v282 = v304;
        v337(v304, v336, v335);
        swift_storeEnumTagMultiPayload();
        LOBYTE(v348) = v303;
        BYTE1(v348) = v302;
        BYTE2(v348) = v301;
        v346 = xmmword_1D7282A80;
        v350 = xmmword_1D7282A80;
        LOBYTE(v351) = 0;
        v352 = 0;
        v283 = swift_allocObject();
        *(v283 + 16) = v346;
        *(v283 + 32) = v352;
        v284 = v338;
        v285 = v300;
        *(v283 + 40) = v338;
        *(v283 + 48) = v285;
        MEMORY[0x1EEE9AC00](v283, v286);
        *(&v300 - 4) = sub_1D5B4AA6C;
        *(&v300 - 3) = 0;
        v298 = sub_1D6708860;
        v299 = v287;
        v352 = 0;
        v288 = swift_allocObject();
        *(v288 + 16) = v346;
        *(v288 + 32) = v352;
        *(v288 + 40) = v284;
        *(v288 + 48) = v285;
        swift_retain_n();
        v289 = sub_1D72647CC();
        v352 = 0;
        v290 = swift_allocObject();
        *(v290 + 16) = v289;
        *(v290 + 24) = v346;
        *(v290 + 40) = v352;
        v291 = *(v344 + 3);
        v292 = *(v344 + 4);
        v293 = __swift_project_boxed_opaque_existential_1(v344, v291);
        MEMORY[0x1EEE9AC00](v293, v294);
        MEMORY[0x1EEE9AC00](v295, v296);
        *(&v300 - 4) = sub_1D615B4A4;
        *(&v300 - 3) = (&v300 - 6);
        v298 = sub_1D6708860;
        v299 = v288;
        sub_1D5D2BC70(v282, sub_1D615B49C, v297, sub_1D615B4A4, (&v300 - 6), v291, v292);

        sub_1D6658E10();
        sub_1D72647EC();
        sub_1D5D2CFE8(v304, type metadata accessor for FormatVersionRequirement);

        v112 = v347;
        return sub_1D5D2CFE8(v112, sub_1D6658BC0);
      }

      v350 = v346;
      LOBYTE(v351) = 0;
      *&v348 = v309;
      sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      sub_1D60AD304();
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v310, type metadata accessor for FormatVersionRequirement);
    goto LABEL_60;
  }

  sub_1D5D2CFE8(v148, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v150, sub_1D6658BC0);
}

uint64_t FormatOptionsNodeStatementModifier.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F50F3638;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6659050();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      v22 = v25;
      v26 = xmmword_1D7279980;
      if (v27 == 1)
      {
        sub_1D66590A4();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = v27 | 0x40;
      }

      else
      {
        sub_1D6328CC0();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = 0x80;
      }
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D66590F8();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatOptionsNodeStatementModifier.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementModifier, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatOptionsNodeStatementModifier, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v21, v18, v22, &off_1F51F6CF8);
  if (v19 >> 6)
  {
    if (v19 >> 6 == 1)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCCA8);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6386A48(1, v19 & 1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCCA8);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6386BE0(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCCA8);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63868B4(0, v19, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6365C30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return sub_1D633D734(a2, a4);
  }

  v6 = (result + 32);
  v7 = (a3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return sub_1D633D734(a2, a4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6365CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    if (a3 < 0)
    {
      v9 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v10 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

      LOBYTE(v8) = sub_1D6365CBC(v9, v8, v10, v11);

      if (v8)
      {
        goto LABEL_3;
      }
    }
  }

  else if ((a3 & 0x8000000000000000) == 0)
  {
LABEL_3:

    v6 = sub_1D6341D90(a2, a4);

    return v6 & 1;
  }

  return 0;
}

uint64_t sub_1D6365DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    if (a3 < 0)
    {
      v9 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v10 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v12 = a2;

      LOBYTE(v8) = a5(v9, v8, v10, v11);

      a2 = v12;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if (a3 < 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    if (*(a3 + 16))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (*(a3 + 16))
  {
    return 0;
  }

LABEL_10:
  v15 = a2;

  v16 = a6(v15, a4);

  return v16 & 1;
}

uint64_t sub_1D6365F00(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    if (a3)
    {
      sub_1D5D0A57C(a3);
      v7 = 0;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (a1 == 1)
  {
    if (a3 != 1)
    {
      sub_1D5D0A57C(a3);
      v7 = 1;
LABEL_9:
      sub_1D5D0A58C(v7);
      sub_1D5D0A58C(a3);
      return 0;
    }

LABEL_10:
    sub_1D5D0A58C(a1);
    sub_1D5D0A58C(a1);
LABEL_12:

    v16 = sub_1D634B928(a2, a4);

    return v16 & 1;
  }

  if (a3 < 2)
  {
    sub_1D5D0A57C(a3);
    sub_1D5D0A57C(a1);
    v7 = a1;
    goto LABEL_9;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  sub_1D5D0A57C(a3);
  sub_1D5D0A57C(a1);
  LOBYTE(v11) = sub_1D6365F00(v12, v11, v13, v14);
  sub_1D5D0A58C(a1);
  sub_1D5D0A58C(a3);
  if (v11)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_1D6366044(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if ((a3 & 1) == 0)
  {
    if ((a7 & 1) == 0)
    {
      sub_1D5D2F2C8(a1, a2, 0);
      sub_1D5D2F2C8(a5, a6, 0);
      if (((a5 ^ a1) & 1) == 0)
      {
        goto LABEL_14;
      }

      return 0;
    }

    sub_1D5D2F2C8(a1, a2, 0);
    v14 = a5;
    v15 = a6;
    v16 = 1;
LABEL_9:
    sub_1D5D2F2C8(v14, v15, v16);
    return 0;
  }

  if ((a7 & 1) == 0)
  {

    sub_1D5D2F2C8(a1, a2, 1);
    v14 = a5;
    v15 = a6;
    v16 = 0;
    goto LABEL_9;
  }

  if (a1 != a5 || a2 != a6)
  {
    v20 = sub_1D72646CC();
    sub_1D5C75A4C(a5, a6, 1);
    sub_1D5C75A4C(a1, a2, 1);
    sub_1D5D2F2C8(a1, a2, 1);
    sub_1D5D2F2C8(a5, a6, 1);
    if (v20)
    {
      goto LABEL_14;
    }

    return 0;
  }

  sub_1D5C75A4C(a5, a6, 1);
  sub_1D5C75A4C(a5, a6, 1);
  sub_1D5D2F2C8(a5, a6, 1);
  sub_1D5D2F2C8(a5, a6, 1);
LABEL_14:

  v21 = sub_1D634D390(a4, a8);

  return v21 & 1;
}

void sub_1D6366208(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v6 = a1;
  if (!a1)
  {
    v8 = 0xE600000000000000;
    v7 = 0x706172576F6ELL;
    v9 = a3;
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_18:
    v11 = 0xE600000000000000;
    if (v7 != 0x706172576F6ELL)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (a1 == 1)
  {
    v7 = 1885434487;
  }

  else
  {
    v7 = 0x6576655270617277;
  }

  if (v6 == 1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xEB00000000657372;
  }

  v9 = a3;
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (v9 == 1)
  {
    v10 = 1885434487;
  }

  else
  {
    v10 = 0x6576655270617277;
  }

  if (v9 == 1)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xEB00000000657372;
  }

  if (v7 != v10)
  {
LABEL_21:
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (v8 != v11)
  {
    goto LABEL_21;
  }

LABEL_22:

  sub_1D634DFE4(a2, a4);
}

void sub_1D6366360(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = (a1 & 1) == 0;
  if (a1)
  {
    v7 = 0x656E696C6E69;
  }

  else
  {
    v7 = 0x6B636F6C62;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = (a3 & 1) == 0;
  if (a3)
  {
    v10 = 0x656E696C6E69;
  }

  else
  {
    v10 = 0x6B636F6C62;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v7 == v10 && v8 == v11)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  sub_1D634E344(a2, a4);
}

uint64_t sub_1D6366448(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    if (a3)
    {
      sub_1D5DEA234(a3);
      v7 = 0;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (a1 == 1)
  {
    if (a3 != 1)
    {
      sub_1D5DEA234(a3);
      v7 = 1;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (a1 != 2)
  {
    if (a3 < 3)
    {
      sub_1D5DEA234(a3);
      sub_1D5DEA234(a1);
      v7 = a1;
      goto LABEL_14;
    }

    sub_1D5DEA234(a3);
    sub_1D5DEA234(a1);
    sub_1D633A310(a1, a3);
    v14 = v13;
    sub_1D5CBF568(a1);
    sub_1D5CBF568(a3);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

LABEL_11:

    sub_1D6354AF4(a2, a4);
    v10 = v9;

    return v10 & 1;
  }

  if (a3 == 2)
  {
LABEL_10:
    sub_1D5CBF568(a1);
    sub_1D5CBF568(a1);
    goto LABEL_11;
  }

  sub_1D5DEA234(a3);
  v7 = 2;
LABEL_14:
  sub_1D5CBF568(v7);
  sub_1D5CBF568(a3);
  return 0;
}

void sub_1D6366584(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = (a1 & 1) == 0;
  if (a1)
  {
    v7 = 0x746C7561666564;
  }

  else
  {
    v7 = 1685217635;
  }

  if (v6)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v9 = (a3 & 1) == 0;
  if (a3)
  {
    v10 = 0x746C7561666564;
  }

  else
  {
    v10 = 1685217635;
  }

  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v7 == v10 && v8 == v11)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  sub_1D635A3EC(a2, a4);
}

uint64_t FormatSyncImageContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39[-v9 - 8];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39[-v13 - 8];
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v39[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSyncImageContent, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatSyncImageContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v22, &off_1F51F6C78);
  if (v19 >> 62)
  {
    if (v19 >> 62 == 1)
    {
      v24 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v42[0] = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v42[1] = v24;
      v42[2] = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v43 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1D66591DC(v42, v39);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6398B5C(1, v42, v10);
      sub_1D6659238(v42);
      v27 = v10;
    }

    else
    {
      v32 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v34 = qword_1EDF31ED0;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD50);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6398D04(2, v32, v33, v6);

      v27 = v6;
    }
  }

  else
  {
    v28 = *(v19 + 80);
    v40[3] = *(v19 + 64);
    v40[4] = v28;
    v40[5] = *(v19 + 96);
    v41 = *(v19 + 112);
    v29 = *(v19 + 32);
    v40[0] = *(v19 + 16);
    v40[1] = v29;
    v40[2] = *(v19 + 48);
    sub_1D5D0322C(v40, v39);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
    (*(*(v30 - 8) + 16))(v14, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63989AC(0, v40, v14);
    sub_1D5D07BBC(v40);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatRecipeBinding.Color.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.Color, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatRecipeBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v25, v22, v26, &off_1F51F6C98);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE38);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420C60(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE38);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420C60(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE38);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420C60(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE38);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420C60(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

void FormatSnippet.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v135 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v136 = &v134 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v137 = &v134 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v140 = &v134 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v138 = &v134 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v134 - v22;
  sub_1D66592E0(0);
  v25 = v24;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5C5F370(0);
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF24C68, sub_1D5C5F370, &unk_1D7321584);
  sub_1D5D2EE70(v4, v32, v34, v29, v4, v32, &type metadata for FormatVersions.JazzkonC, v30, v28, v33, &off_1F51F6C78);
  swift_beginAccess();
  v35 = v2[2];
  v36 = v2[3];
  v139 = v2;
  v37 = qword_1EDF31EB0;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCD30);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v145 = v39;
  v146 = v38;
  v144 = v41;
  v143 = v40 + 16;
  (v41)(v23);
  v142 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v158 = v35;
  *(&v158 + 1) = v36;
  *&v151 = v36;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v42 = &v28[*(v25 + 44)];
  v149 = v23;
  v43 = *v42;
  v44 = *(v42 + 1);
  LOBYTE(v156) = 0;
  v45 = swift_allocObject();
  *&v150 = &v134;
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = v156;
  *(v45 + 40) = v43;
  *(v45 + 48) = v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v134 - 4) = sub_1D5B4AA6C;
  *(&v134 - 3) = 0;
  v132 = sub_1D6708864;
  v133 = v47;
  LOBYTE(v156) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v156;
  v141 = v43;
  *(v48 + 40) = v43;
  *(v48 + 48) = v44;
  sub_1D5E1C8A0(0);
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EDF02B38, sub_1D5E1C8A0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v148 = v50;
  v147 = v51;
  v52 = sub_1D72647CC();
  LOBYTE(v156) = 0;
  v53 = swift_allocObject();
  *(v53 + 24) = 0;
  *(v53 + 32) = 0;
  *(v53 + 16) = v52;
  *(v53 + 40) = v156;
  v54 = &v28[*(v25 + 36)];
  v55 = *(v54 + 3);
  v56 = *(v54 + 4);
  v57 = __swift_project_boxed_opaque_existential_1(v54, v55);
  MEMORY[0x1EEE9AC00](v57, v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  *(&v134 - 4) = sub_1D615B4A4;
  *(&v134 - 3) = (&v134 - 6);
  v61 = v149;
  v132 = sub_1D6708864;
  v133 = v48;
  v62 = v152;
  sub_1D5D2BC70(v149, sub_1D615B49C, v63, sub_1D615B4A4, (&v134 - 6), v55, v56);
  if (v62)
  {
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v28, sub_1D66592E0);
  }

  else
  {
    v134 = v54;
    *&v152 = v44;

    sub_1D72647EC();
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

    v64 = v138;
    v65 = v145;
    *&v150 = 0;
    v66 = v146;
    v67 = v144;
    v144(v138, v145, v146);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
    v67(v64, v65, v66);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
    v68 = v139;
    swift_beginAccess();
    v69 = v68[8];
    v70 = v140;
    v67(v140, v65, v66);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v158) = 0;
    v71 = swift_allocObject();
    v151 = xmmword_1D72BAA60;
    *(v71 + 16) = xmmword_1D72BAA60;
    *(v71 + 32) = v158;
    *(v71 + 40) = v141;
    *(v71 + 48) = v152;

    v72 = sub_1D72647CC();
    LOBYTE(v158) = 0;
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v151;
    *(v73 + 40) = v158;
    v74 = *(v134 + 3);
    v75 = *(v134 + 4);
    v76 = __swift_project_boxed_opaque_existential_1(v134, v74);
    MEMORY[0x1EEE9AC00](v76, v77);
    MEMORY[0x1EEE9AC00](v78, v79);
    *(&v134 - 4) = sub_1D5B4AA6C;
    *(&v134 - 3) = 0;
    v132 = sub_1D6659374;
    v133 = v71;
    v80 = v150;
    v82 = sub_1D5D2F7A4(v70, sub_1D615B49C, v81, sub_1D615B4A4, (&v134 - 6), v74, v75);
    if (v80)
    {
      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v28, sub_1D66592E0);
    }

    else
    {
      v83 = v82;

      if (v83)
      {
        v158 = v151;
        v159 = 0;
        *&v156 = v69;
        sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
        sub_1D66594A0();
        sub_1D72647EC();

        sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
        v84 = v146;
        v85 = v152;
        *&v151 = v28;
      }

      else
      {
        sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);

        *&v151 = v28;
        v84 = v146;
        v85 = v152;
      }

      v86 = v139;
      swift_beginAccess();
      v87 = v86[9];
      v88 = v137;
      v144(v137, v145, v84);
      swift_storeEnumTagMultiPayload();
      v89 = v141;
      if (*(v87 + 16))
      {
        LOBYTE(v156) = 0;
        v90 = swift_allocObject();
        v150 = xmmword_1D72BAA70;
        *(v90 + 16) = xmmword_1D72BAA70;
        *(v90 + 32) = v156;
        *(v90 + 40) = v89;
        *(v90 + 48) = v85;

        v91 = sub_1D72647CC();
        LOBYTE(v156) = 0;
        v92 = swift_allocObject();
        *(v92 + 16) = v91;
        *(v92 + 24) = v150;
        *(v92 + 40) = v156;
        v93 = *(v134 + 3);
        v94 = *(v134 + 4);
        v95 = __swift_project_boxed_opaque_existential_1(v134, v93);
        MEMORY[0x1EEE9AC00](v95, v96);
        MEMORY[0x1EEE9AC00](v97, v98);
        *(&v134 - 4) = sub_1D5B4AA6C;
        *(&v134 - 3) = 0;
        v132 = sub_1D6708864;
        v133 = v90;
        v100 = sub_1D5D2F7A4(v88, sub_1D615B49C, v99, sub_1D615B4A4, (&v134 - 6), v93, v94);
        v102 = v100;

        if (v102)
        {
          v156 = v150;
          v157 = 0;
          v155 = v87;
          sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
          sub_1D60AD304();
          v101 = v151;
          sub_1D72647EC();
          v85 = v152;
          v84 = v146;

          sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
          v86 = v139;
        }

        else
        {
          sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);

          v86 = v139;
          v85 = v152;
          v101 = v151;
          v84 = v146;
        }
      }

      else
      {
        sub_1D5D2CFE8(v88, type metadata accessor for FormatVersionRequirement);
        v101 = v151;
      }

      swift_beginAccess();
      v103 = v86[10];
      v104 = v136;
      v144(v136, v145, v84);
      swift_storeEnumTagMultiPayload();
      if (*(v103 + 16))
      {
        LOBYTE(v155) = 0;
        v105 = swift_allocObject();
        v151 = xmmword_1D72BAA80;
        *(v105 + 16) = xmmword_1D72BAA80;
        *(v105 + 32) = v155;
        *(v105 + 40) = v141;
        *(v105 + 48) = v85;

        v106 = v104;
        v107 = sub_1D72647CC();
        LOBYTE(v155) = 0;
        v108 = swift_allocObject();
        *(v108 + 16) = v107;
        *(v108 + 24) = v151;
        *(v108 + 40) = v155;
        v109 = *(v134 + 3);
        v110 = *(v134 + 4);
        v111 = __swift_project_boxed_opaque_existential_1(v134, v109);
        MEMORY[0x1EEE9AC00](v111, v112);
        MEMORY[0x1EEE9AC00](v113, v114);
        *(&v134 - 4) = sub_1D5B4AA6C;
        *(&v134 - 3) = 0;
        v132 = sub_1D6708864;
        v133 = v105;
        v116 = sub_1D5D2F7A4(v106, sub_1D615B49C, v115, sub_1D615B4A4, (&v134 - 6), v109, v110);
        v117 = v116;

        if (v117)
        {
          sub_1D5E08E6C(v103, v101, 5, 0, 0);
          v86 = v139;
          v85 = v152;
          v104 = v136;
        }

        else
        {
          v86 = v139;
          v104 = v136;
          v85 = v152;
        }
      }

      v118 = v135;
      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
      swift_beginAccess();
      v119 = v86[11];
      v144(v118, v145, v146);
      swift_storeEnumTagMultiPayload();
      if (*(v119 + 16))
      {
        LOBYTE(v153) = 0;
        v120 = swift_allocObject();
        v152 = xmmword_1D72BAA90;
        *(v120 + 16) = xmmword_1D72BAA90;
        *(v120 + 32) = v153;
        *(v120 + 40) = v141;
        *(v120 + 48) = v85;

        v121 = sub_1D72647CC();
        LOBYTE(v153) = 0;
        v122 = swift_allocObject();
        *(v122 + 16) = v121;
        *(v122 + 24) = v152;
        *(v122 + 40) = v153;
        v123 = *(v134 + 3);
        v124 = *(v134 + 4);
        v125 = __swift_project_boxed_opaque_existential_1(v134, v123);
        MEMORY[0x1EEE9AC00](v125, v126);
        MEMORY[0x1EEE9AC00](v127, v128);
        *(&v134 - 4) = sub_1D5B4AA6C;
        *(&v134 - 3) = 0;
        v132 = sub_1D6708864;
        v133 = v120;
        v130 = sub_1D5D2F7A4(v118, sub_1D615B49C, v129, sub_1D615B4A4, (&v134 - 6), v123, v124);
        v131 = v130;

        if (v131)
        {
          v153 = v152;
          v154 = 0;
          v163 = v119;
          sub_1D5C34D84(0, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
          sub_1D6659404();
          sub_1D72647EC();

          sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
        }
      }

      else
      {
        sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
      }

      sub_1D5D2CFE8(v101, sub_1D66592E0);
    }
  }
}

uint64_t FormatBlendMode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v85 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v84 = &v69 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v83 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v82 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v81 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v80 = &v69 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v79 = &v69 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v78 = &v69 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v77 = &v69 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v76 = &v69 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v75 = &v69 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v74 = &v69 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v73 = &v69 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v72 = &v69 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v71 = &v69 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v70 = &v69 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v69 - v53;
  v55 = *v1;
  v86 = a1;
  v87 = v55;
  v56 = a1[3];
  v57 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v58 = sub_1D725BD1C();
  v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
  v60 = *(*(v58 - 8) + 16);
  v60(v54, v59, v58);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v61 = v88;
  sub_1D5D2BEC4(v54, sub_1D5B4AA6C, 0, v56, v57);
  if (v61)
  {
    return sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
  v63 = v86;
  v64 = v86[3];
  v69 = v86[4];
  v88 = __swift_project_boxed_opaque_existential_1(v86, v64);
  switch(v87)
  {
    case 1:
      v65 = v71;
      v60(v71, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    case 2:
      v65 = v72;
      v60(v72, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    case 3:
      v65 = v73;
      v60(v73, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    case 4:
      v65 = v74;
      v60(v74, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    case 5:
      v66 = v75;
      v60(v75, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 6:
      v66 = v76;
      v60(v76, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 7:
      v66 = v77;
      v60(v77, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 8:
      v66 = v78;
      v60(v78, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 9:
      v66 = v79;
      v60(v79, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 10:
      v66 = v80;
      v60(v80, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 11:
      v66 = v81;
      v60(v81, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 12:
      v66 = v82;
      v60(v82, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 13:
      v66 = v83;
      v60(v83, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 14:
      v66 = v84;
      v60(v84, v59, v58);
      swift_storeEnumTagMultiPayload();
LABEL_23:
      sub_1D5D2BEC4(v66, sub_1D5B4AA6C, 0, v64, v69);
      v68 = v66;
      goto LABEL_24;
    case 15:
      v67 = v85;
      v60(v85, v59, v58);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v67, sub_1D5B4AA6C, 0, v64, v69);
      v68 = v67;
LABEL_24:
      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v65 = v70;
      v60(v70, v59, v58);
      swift_storeEnumTagMultiPayload();
LABEL_17:
      sub_1D5D2BEC4(v65, sub_1D5B4AA6C, 0, v64, v69);
      sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
      break;
  }

  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  sub_1D7264B3C();
  v90 = v87;
  FormatBlendMode.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v89, v89[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v89);
}

uint64_t FormatAndExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D665953C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v76 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5C57044(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25518, sub_1D5C57044, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatAndExpression, v19, v21, v16, &type metadata for FormatAndExpression, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v78 = v23;
  v79 = v22;
  v73 = v24 + 16;
  v74 = v25;
  (v25)(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v85 = 0;
  v29 = swift_allocObject();
  v82 = &v70;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v85;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v84 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708868;
  v69 = v31;
  v85 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v85;
  v75 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66595D0(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF03558, sub_1D66595D0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v35;
  v81 = v34;
  v36 = sub_1D72647CC();
  v85 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v85;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v45 = v83;
  v46 = v84;
  v68 = sub_1D6708868;
  v69 = v32;
  sub_1D5D2BC70(v84, sub_1D615B49C, v47, sub_1D615B4A4, (&v70 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v71 = v38;
    v49 = v78;
    v48 = v79;
    v83 = v28;

    v50 = sub_1D66596F4();
    sub_1D72647EC();
    v70 = v50;
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

    v52 = v77;
    v74(v77, v49, v48);
    swift_storeEnumTagMultiPayload();
    v88 = v76;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v53 = swift_allocObject();
    v82 = &v70;
    *(v53 + 16) = v84;
    *(v53 + 32) = v85;
    v54 = v75;
    v55 = v83;
    *(v53 + 40) = v75;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708868;
    v69 = v57;
    v85 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v84;
    *(v58 + 32) = v85;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v85 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v84;
    *(v60 + 40) = v85;
    v61 = *(v71 + 3);
    v62 = *(v71 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v71, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708868;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D665953C);
}

uint64_t FormatGroupBinding.Float.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F50F4078;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6659748();
    v26 = 0uLL;
    sub_1D726431C();
    v26 = xmmword_1D7279980;
    if (v27)
    {
      sub_1D665979C();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27 | 0x80;
    }

    else
    {
      sub_1D66597F0();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.Float.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Float, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatGroupBinding.Float, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v17, v14, v18, &off_1F51F6CB8);
  if (v15 < 0)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A9B64(1, v15 & 0x7F, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCCE8);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A99D0(0, v15, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatButtonNode.encode(to:)(void *a1)
{
  v2 = v1;
  *&v571 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v543 - v6;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v547 = v543 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v548 = v543 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v549 = v543 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v550 = v543 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v551 = v543 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v552 = v543 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v553 = v543 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v554 = v543 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v555 = v543 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v556 = v543 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v558 = v543 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v557 = v543 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v559 = (v543 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v560 = v543 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v561 = (v543 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v562 = v543 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v563 = (v543 - v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  *&v569 = v543 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  *&v567 = v543 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = v543 - v67;
  sub_1D66598EC(0);
  v572 = v69;
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = v543 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1[3];
  v74 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v73);
  sub_1D5C65B28(0);
  v76 = v75;
  v77 = sub_1D5B58B84(&qword_1EDF256F8, sub_1D5C65B28, &unk_1D7321584);
  v573 = v72;
  sub_1D5D2EE70(v571, v76, v78, v73, v571, v76, &type metadata for FormatVersions.JazzkonC, v74, v72, v77, &off_1F51F6C78);
  swift_beginAccess();
  v79 = v2[2];
  v80 = v2[3];
  v570 = v2;
  v81 = qword_1EDF31EB0;

  if (v81 != -1)
  {
    swift_once();
  }

  v82 = sub_1D725BD1C();
  v83 = __swift_project_value_buffer(v82, qword_1EDFFCD30);
  v84 = *(v82 - 8);
  v85 = *(v84 + 16);
  v86 = v84 + 16;
  *&v571 = v83;
  v85(v68);
  v87 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v88 = sub_1D725895C();
  v89 = (*(*(v88 - 8) + 48))(v7, 1, v88);
  v565 = v86;
  v566 = v82;
  v564 = v85;
  v568 = v87;
  if (v89 != 1)
  {
    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v7, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_8;
  }

  v545 = v79;
  sub_1D5D35558(v7, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v91 = v572;
  v90 = v573;
  v92 = &v573[*(v572 + 11)];
  v94 = *v92;
  v93 = *(v92 + 1);
  LOBYTE(v575) = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  *(v95 + 24) = 0;
  *(v95 + 32) = v575;
  *(v95 + 40) = v94;
  *(v95 + 48) = v93;
  sub_1D5E1C7DC(0);
  v97 = v96;
  v98 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC, MEMORY[0x1E69E6F60]);

  *&v546 = v97;
  v544 = v98;
  v99 = sub_1D72647CC();
  LOBYTE(v575) = 0;
  v100 = swift_allocObject();
  *(v100 + 24) = 0;
  *(v100 + 32) = 0;
  *(v100 + 16) = v99;
  *(v100 + 40) = v575;
  v101 = (v90 + *(v91 + 9));
  v102 = v101[3];
  v103 = v101[4];
  v104 = __swift_project_boxed_opaque_existential_1(v101, v102);
  MEMORY[0x1EEE9AC00](v104, v105);
  MEMORY[0x1EEE9AC00](v106, v107);
  v543[-4] = sub_1D5B4AA6C;
  v543[-3] = 0;
  v541 = sub_1D6659980;
  v542 = v95;
  v108 = v574;
  v110 = sub_1D5D2F7A4(v68, sub_1D615B49C, v109, sub_1D615B4A4, &v543[-6], v102, v103);
  *&v574 = v108;
  if (!v108)
  {
    v169 = v110;

    if (v169)
    {
      v575 = 0uLL;
      LOBYTE(v576) = 0;
      v594 = v545;
      v595 = v80;
      v170 = v90;
      v171 = v574;
      sub_1D72647EC();
      v172 = v566;
      v113 = v571;
      if (v171)
      {

        sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
        v111 = v170;
        return sub_1D5D2CFE8(v111, sub_1D66598EC);
      }

      *&v574 = 0;

      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
      v85 = v564;
      v82 = v172;
LABEL_9:
      v114 = v570;
      swift_beginAccess();
      v115 = v114[4];
      v116 = v567;
      (v85)(v567, v113, v82);
      swift_storeEnumTagMultiPayload();
      if (((v115 >> 59) & 0x1E | (v115 >> 2) & 1) == 0x16 && v115 == 0xB000000000000008)
      {
        sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);
        v117 = v574;
      }

      else
      {
        v148 = v572;
        v147 = v573;
        v149 = &v573[*(v572 + 11)];
        v150 = *v149;
        v151 = *(v149 + 1);
        LOBYTE(v575) = 0;
        v152 = swift_allocObject();
        v546 = xmmword_1D728CF30;
        *(v152 + 16) = xmmword_1D728CF30;
        *(v152 + 32) = v575;
        *(v152 + 40) = v150;
        *(v152 + 48) = v151;
        sub_1D5C82CD8(v115);
        sub_1D5E1C7DC(0);
        v154 = v153;
        sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC, MEMORY[0x1E69E6F60]);

        v544 = v154;
        v155 = sub_1D72647CC();
        LOBYTE(v575) = 0;
        v156 = swift_allocObject();
        *(v156 + 16) = v155;
        *(v156 + 24) = v546;
        *(v156 + 40) = v575;
        v157 = (v147 + *(v148 + 9));
        v158 = v116;
        v159 = v157[3];
        v160 = v157[4];
        v161 = __swift_project_boxed_opaque_existential_1(v157, v159);
        v545 = v543;
        MEMORY[0x1EEE9AC00](v161, v162);
        MEMORY[0x1EEE9AC00](v163, v164);
        v543[-4] = sub_1D5B4AA6C;
        v543[-3] = 0;
        v541 = sub_1D670886C;
        v542 = v152;
        v165 = v574;
        v167 = sub_1D5D2F7A4(v158, sub_1D615B49C, v166, sub_1D615B4A4, &v543[-6], v159, v160);
        v117 = v165;
        if (v165)
        {

          sub_1D5C92A8C(v115);
          v168 = v158;
          goto LABEL_20;
        }

        v174 = v167;

        if (v174)
        {
          v575 = v546;
          LOBYTE(v576) = 0;
          v593 = v115;
          sub_1D5CA1E90();
          sub_1D72647EC();
          v175 = v566;
          v176 = v567;
          sub_1D5C92A8C(v593);
          sub_1D5D2CFE8(v176, type metadata accessor for FormatVersionRequirement);
          v114 = v570;
          v85 = v564;
          v82 = v175;
        }

        else
        {
          sub_1D5C92A8C(v115);
          sub_1D5D2CFE8(v567, type metadata accessor for FormatVersionRequirement);
          v114 = v570;
          v82 = v566;
          v85 = v564;
        }
      }

      v545 = v114[5];
      v118 = v572;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      *&v574 = v117;
      v119 = __swift_project_value_buffer(v82, qword_1EDFFCD68);
      (v85)(v569, v119, v82);
      swift_storeEnumTagMultiPayload();
      v567 = xmmword_1D7297410;
      v575 = xmmword_1D7297410;
      LOBYTE(v576) = 0;
      v120 = v82;
      v121 = v573;
      v122 = &v573[*(v118 + 11)];
      v124 = *v122;
      v123 = *(v122 + 1);
      LOBYTE(v593) = 0;
      v125 = swift_allocObject();
      v127 = v125;
      *(v125 + 16) = v567;
      *(v125 + 32) = v593;
      *&v546 = v124;
      *(v125 + 40) = v124;
      *(v125 + 48) = v123;
      v544 = v123;
      if (v545)
      {
        v543[1] = v543;
        v593 = v545;
        MEMORY[0x1EEE9AC00](v125, v126);
        v543[-4] = sub_1D5B4AA6C;
        v543[-3] = 0;
        v541 = sub_1D670886C;
        v542 = v127;
        LOBYTE(v592) = 0;
        v128 = v123;
        v129 = swift_allocObject();
        *(v129 + 16) = v567;
        *(v129 + 32) = v592;
        *(v129 + 40) = v546;
        *(v129 + 48) = v128;
        sub_1D5E1C7DC(0);
        v131 = v130;
        v132 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC, MEMORY[0x1E69E6F60]);
        swift_retain_n();

        v545 = v131;
        v133 = sub_1D72647CC();
        LOBYTE(v592) = 0;
        v134 = swift_allocObject();
        *(v134 + 16) = v133;
        *(v134 + 24) = v567;
        *(v134 + 40) = v592;
        v135 = v121;
        v136 = (v121 + *(v572 + 9));
        v137 = v136[3];
        v138 = v136[4];
        v139 = __swift_project_boxed_opaque_existential_1(v136, v137);
        MEMORY[0x1EEE9AC00](v139, v140);
        MEMORY[0x1EEE9AC00](v141, v142);
        v543[-4] = sub_1D615B4A4;
        v543[-3] = &v543[-6];
        v541 = sub_1D670886C;
        v542 = v129;
        v143 = v569;
        v144 = v574;
        v146 = sub_1D5D2F7A4(v569, sub_1D615B49C, v145, sub_1D615B4A4, &v543[-6], v137, v138);
        if (v144)
        {

          sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);
LABEL_17:
          v111 = v135;
          return sub_1D5D2CFE8(v111, sub_1D66598EC);
        }

        v177 = v146;
        *&v574 = v132;

        if (v177)
        {
          sub_1D6659D24();
          sub_1D72647EC();
          v173 = v566;
          v178 = v571;
          *&v574 = 0;

          v85 = v564;
LABEL_33:
          sub_1D5D2CFE8(v569, type metadata accessor for FormatVersionRequirement);
          v179 = v570;
          swift_beginAccess();
          v180 = v179[6];
          v181 = v563;
          (v85)(v563, v178, v173);
          swift_storeEnumTagMultiPayload();
          if (*(v180 + 16))
          {
            LOBYTE(v575) = 0;
            v182 = swift_allocObject();
            v569 = xmmword_1D72BAA60;
            *(v182 + 16) = xmmword_1D72BAA60;
            *(v182 + 32) = v575;
            v183 = v544;
            *(v182 + 40) = v546;
            *(v182 + 48) = v183;
            sub_1D5E1C7DC(0);
            v184 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC, MEMORY[0x1E69E6F60]);

            v185 = v573;
            *&v567 = v180;
            v545 = v184;
            v186 = sub_1D72647CC();
            LOBYTE(v575) = 0;
            v187 = swift_allocObject();
            *(v187 + 16) = v186;
            *(v187 + 24) = v569;
            *(v187 + 40) = v575;
            v188 = (v185 + *(v572 + 9));
            v189 = v188[3];
            v190 = v188[4];
            v191 = __swift_project_boxed_opaque_existential_1(v188, v189);
            MEMORY[0x1EEE9AC00](v191, v192);
            MEMORY[0x1EEE9AC00](v193, v194);
            v543[-4] = sub_1D5B4AA6C;
            v543[-3] = 0;
            v541 = sub_1D670886C;
            v542 = v182;
            v195 = v574;
            v197 = sub_1D5D2F7A4(v181, sub_1D615B49C, v196, sub_1D615B4A4, &v543[-6], v189, v190);
            if (v195)
            {
              sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);

              v111 = v185;
              return sub_1D5D2CFE8(v111, sub_1D66598EC);
            }

            v199 = v197;
            v200 = v567;

            if (v199)
            {
              v575 = v569;
              LOBYTE(v576) = 0;
              v592 = v200;
              sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
              sub_1D6659C88();
              sub_1D72647EC();
              v178 = v571;
              *&v574 = 0;

              sub_1D5D2CFE8(v563, type metadata accessor for FormatVersionRequirement);
              v198 = v570;
            }

            else
            {
              *&v574 = 0;
              sub_1D5D2CFE8(v563, type metadata accessor for FormatVersionRequirement);

              v198 = v570;
              v178 = v571;
            }

            v173 = v566;
            v85 = v564;
          }

          else
          {
            sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);
            v198 = v179;
          }

          swift_beginAccess();
          v201 = v198[7];
          v202 = v562;
          (v85)(v562, v178, v173);
          swift_storeEnumTagMultiPayload();
          if (v201)
          {
            v563 = v201;
            LOBYTE(v575) = 0;
            v203 = swift_allocObject();
            v569 = xmmword_1D72BAA70;
            *(v203 + 16) = xmmword_1D72BAA70;
            *(v203 + 32) = v575;
            v204 = v544;
            *(v203 + 40) = v546;
            *(v203 + 48) = v204;
            sub_1D5E1C7DC(0);
            v206 = v205;
            v207 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC, MEMORY[0x1E69E6F60]);

            v208 = v573;
            *&v567 = v206;
            v209 = sub_1D72647CC();
            LOBYTE(v575) = 0;
            v210 = swift_allocObject();
            *(v210 + 16) = v209;
            *(v210 + 24) = v569;
            *(v210 + 40) = v575;
            v211 = (v208 + *(v572 + 9));
            v212 = v211[3];
            v213 = v211[4];
            v214 = __swift_project_boxed_opaque_existential_1(v211, v212);
            MEMORY[0x1EEE9AC00](v214, v215);
            MEMORY[0x1EEE9AC00](v216, v217);
            v543[-4] = sub_1D5B4AA6C;
            v543[-3] = 0;
            v541 = sub_1D670886C;
            v542 = v203;
            v218 = v574;
            v220 = sub_1D5D2F7A4(v202, sub_1D615B49C, v219, sub_1D615B4A4, &v543[-6], v212, v213);
            if (v218)
            {
              sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);

              v111 = v208;
              return sub_1D5D2CFE8(v111, sub_1D66598EC);
            }

            v222 = v220;
            *&v574 = v207;

            if (v222)
            {
              v575 = v569;
              LOBYTE(v576) = 0;
              v591 = v563;
              sub_1D72647EC();
              v221 = 0;
              v198 = v570;
              sub_1D5D2CFE8(v562, type metadata accessor for FormatVersionRequirement);
            }

            else
            {
              sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);
              v221 = 0;
              v198 = v570;
            }

            v85 = v564;
            v178 = v571;
          }

          else
          {
            sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);
            v221 = v574;
          }

          swift_beginAccess();
          v223 = v198[8];
          sub_1D5EB1500(v223);
          v224 = v561;
          if (qword_1EDF31ED0 != -1)
          {
            swift_once();
          }

          v225 = v566;
          v226 = __swift_project_value_buffer(v566, qword_1EDFFCD50);
          (v85)(v224, v226, v225);
          swift_storeEnumTagMultiPayload();
          *&v569 = v226;
          if (v223 == 0x8000000000000000)
          {
            sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);
            goto LABEL_54;
          }

          LOBYTE(v575) = 0;
          v249 = swift_allocObject();
          v574 = xmmword_1D72BAA80;
          *(v249 + 16) = xmmword_1D72BAA80;
          *(v249 + 32) = v575;
          v250 = v224;
          v251 = v544;
          *(v249 + 40) = v546;
          *(v249 + 48) = v251;
          sub_1D5E1C7DC(0);
          v253 = v252;
          v254 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC, MEMORY[0x1E69E6F60]);

          v255 = v573;
          v562 = v254;
          v563 = v253;
          v256 = sub_1D72647CC();
          LOBYTE(v575) = 0;
          v257 = swift_allocObject();
          *(v257 + 16) = v256;
          *(v257 + 24) = v574;
          *(v257 + 40) = v575;
          v258 = (v255 + *(v572 + 9));
          v259 = v221;
          v261 = v258[3];
          v260 = v258[4];
          v262 = __swift_project_boxed_opaque_existential_1(v258, v261);
          *&v567 = v543;
          MEMORY[0x1EEE9AC00](v262, v263);
          MEMORY[0x1EEE9AC00](v264, v265);
          v543[-4] = sub_1D5B4AA6C;
          v543[-3] = 0;
          v541 = sub_1D670886C;
          v542 = v249;
          v267 = sub_1D5D2F7A4(v250, sub_1D615B49C, v266, sub_1D615B4A4, &v543[-6], v261, v260);
          v221 = v259;
          if (!v259)
          {
            v284 = v267;

            if (v284)
            {
              v575 = v574;
              LOBYTE(v576) = 0;
              v590 = v223;
              sub_1D5DF6A60();
              sub_1D72647EC();
              v178 = v571;
              sub_1D5EB15C4(v590);
              sub_1D5D2CFE8(v561, type metadata accessor for FormatVersionRequirement);
              v198 = v570;
            }

            else
            {
              sub_1D5EB15C4(v223);
              sub_1D5D2CFE8(v561, type metadata accessor for FormatVersionRequirement);
              v198 = v570;
              v178 = v571;
            }

LABEL_54:
            swift_beginAccess();
            v227 = *(v198 + 72);
            if (qword_1EDF31E98 != -1)
            {
              swift_once();
            }

            v228 = v566;
            v229 = __swift_project_value_buffer(v566, qword_1EDFFCD00);
            v230 = v560;
            (v564)(v560, v229, v228);
            v231 = v230;
            swift_storeEnumTagMultiPayload();
            if (v227)
            {
              sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);
            }

            else
            {
              LOBYTE(v575) = 0;
              v268 = swift_allocObject();
              v574 = xmmword_1D72BAA90;
              *(v268 + 16) = xmmword_1D72BAA90;
              *(v268 + 32) = v575;
              v269 = v544;
              *(v268 + 40) = v546;
              *(v268 + 48) = v269;
              sub_1D5E1C7DC(0);
              v271 = v270;
              sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC, MEMORY[0x1E69E6F60]);

              v272 = v573;
              *&v567 = v271;
              v273 = sub_1D72647CC();
              LOBYTE(v575) = 0;
              v274 = swift_allocObject();
              *(v274 + 16) = v273;
              *(v274 + 24) = v574;
              *(v274 + 40) = v575;
              v275 = (v272 + *(v572 + 9));
              v276 = v275[3];
              v277 = v275[4];
              v278 = __swift_project_boxed_opaque_existential_1(v275, v276);
              MEMORY[0x1EEE9AC00](v278, v279);
              MEMORY[0x1EEE9AC00](v280, v281);
              v543[-4] = sub_1D5B4AA6C;
              v543[-3] = 0;
              v541 = sub_1D670886C;
              v542 = v268;
              v283 = sub_1D5D2F7A4(v231, sub_1D615B49C, v282, sub_1D615B4A4, &v543[-6], v276, v277);
              if (v221)
              {
                sub_1D5D2CFE8(v231, type metadata accessor for FormatVersionRequirement);

                v111 = v272;
                return sub_1D5D2CFE8(v111, sub_1D66598EC);
              }

              v292 = v283;

              if (v292)
              {
                v575 = v574;
                LOBYTE(v576) = 0;
                v589 = 0;
                sub_1D72647EC();
                v221 = 0;
                v198 = v570;
                v232 = v559;
                sub_1D5D2CFE8(v231, type metadata accessor for FormatVersionRequirement);
                v178 = v571;
LABEL_59:
                swift_beginAccess();
                v233 = v198[10];
                (v564)(v232, v178, v566);
                swift_storeEnumTagMultiPayload();
                LOBYTE(v575) = 0;
                v234 = swift_allocObject();
                v574 = xmmword_1D72BAAA0;
                *(v234 + 16) = xmmword_1D72BAAA0;
                *(v234 + 32) = v575;
                v235 = v544;
                *(v234 + 40) = v546;
                *(v234 + 48) = v235;
                sub_1D5E1C7DC(0);
                v237 = v236;
                v238 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC, MEMORY[0x1E69E6F60]);

                *&v567 = v233;

                v135 = v573;
                v562 = v238;
                v239 = sub_1D72647CC();
                LOBYTE(v575) = 0;
                v240 = swift_allocObject();
                *(v240 + 16) = v239;
                *(v240 + 24) = v574;
                *(v240 + 40) = v575;
                v241 = (v135 + *(v572 + 9));
                v242 = v241[3];
                v563 = v241[4];
                v243 = __swift_project_boxed_opaque_existential_1(v241, v242);
                v572 = v543;
                MEMORY[0x1EEE9AC00](v243, v244);
                MEMORY[0x1EEE9AC00](v245, v246);
                v543[-4] = sub_1D5B4AA6C;
                v543[-3] = 0;
                v541 = sub_1D670886C;
                v542 = v234;
                v248 = sub_1D5D2F7A4(v232, sub_1D615B49C, v247, sub_1D615B4A4, &v543[-6], v242, v563);
                if (v221)
                {
                  sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);

                  goto LABEL_17;
                }

                v285 = v248;
                v286 = v567;
                v563 = v241;

                if (v285)
                {
                  v575 = v574;
                  LOBYTE(v576) = 0;
                  v588 = v286;
                  sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
                  sub_1D66594A0();
                  v287 = v237;
                  sub_1D72647EC();
                  v289 = v570;
                  v288 = v571;
                  v290 = v546;
                  v291 = v558;
                  v572 = v287;

                  sub_1D5D2CFE8(v559, type metadata accessor for FormatVersionRequirement);
                }

                else
                {
                  v572 = v237;
                  sub_1D5D2CFE8(v559, type metadata accessor for FormatVersionRequirement);

                  v289 = v570;
                  v288 = v571;
                  v290 = v546;
                  v291 = v558;
                }

                swift_beginAccess();
                v293 = v289[11];
                v294 = v557;
                (v564)(v557, v288, v566);
                swift_storeEnumTagMultiPayload();
                if (*(v293 + 16))
                {
                  LOBYTE(v575) = 0;
                  v295 = swift_allocObject();
                  v574 = xmmword_1D72BAAB0;
                  *(v295 + 16) = xmmword_1D72BAAB0;
                  *(v295 + 32) = v575;
                  *(v295 + 40) = v290;
                  *(v295 + 48) = v544;

                  v296 = sub_1D72647CC();
                  LOBYTE(v575) = 0;
                  v297 = v293;
                  v298 = swift_allocObject();
                  *(v298 + 16) = v296;
                  *(v298 + 24) = v574;
                  *(v298 + 40) = v575;
                  v299 = v563[3];
                  v300 = v563[4];
                  v301 = __swift_project_boxed_opaque_existential_1(v563, v299);
                  *&v567 = v543;
                  MEMORY[0x1EEE9AC00](v301, v302);
                  MEMORY[0x1EEE9AC00](v303, v304);
                  v543[-4] = sub_1D5B4AA6C;
                  v543[-3] = 0;
                  v541 = sub_1D670886C;
                  v542 = v295;
                  v306 = sub_1D5D2F7A4(v294, sub_1D615B49C, v305, sub_1D615B4A4, &v543[-6], v299, v300);
                  v309 = v306;

                  if ((v309 & 1) == 0)
                  {
                    v307 = v573;
                    *&v574 = 0;
                    sub_1D5D2CFE8(v557, type metadata accessor for FormatVersionRequirement);

                    v289 = v570;
                    v288 = v571;
                    v290 = v546;
                    v291 = v558;
LABEL_81:
                    v311 = v289[12];
                    (v564)(v291, v288, v566);
                    swift_storeEnumTagMultiPayload();
                    v586 = v311;
                    v567 = xmmword_1D72BAAC0;
                    v575 = xmmword_1D72BAAC0;
                    LOBYTE(v576) = 0;
                    v585[0] = 0;
                    v312 = swift_allocObject();
                    v561 = v543;
                    *(v312 + 16) = v567;
                    *(v312 + 32) = v585[0];
                    v313 = v544;
                    *(v312 + 40) = v290;
                    *(v312 + 48) = v313;
                    MEMORY[0x1EEE9AC00](v312, v314);
                    v543[-4] = sub_1D5B4AA6C;
                    v543[-3] = 0;
                    v541 = sub_1D670886C;
                    v542 = v315;
                    v585[0] = 0;
                    v316 = swift_allocObject();
                    *(v316 + 16) = v567;
                    *(v316 + 32) = v585[0];
                    *(v316 + 40) = v290;
                    *(v316 + 48) = v313;
                    swift_retain_n();
                    v317 = v307;
                    v318 = sub_1D72647CC();
                    v585[0] = 0;
                    v319 = swift_allocObject();
                    *(v319 + 16) = v318;
                    *(v319 + 24) = v567;
                    *(v319 + 40) = v585[0];
                    v320 = v563[3];
                    v321 = v563[4];
                    v322 = __swift_project_boxed_opaque_existential_1(v563, v320);
                    MEMORY[0x1EEE9AC00](v322, v323);
                    MEMORY[0x1EEE9AC00](v324, v325);
                    v543[-4] = sub_1D615B4A4;
                    v543[-3] = &v543[-6];
                    v541 = sub_1D670886C;
                    v542 = v316;
                    v326 = v574;
                    sub_1D5D2BC70(v291, sub_1D615B49C, v327, sub_1D615B4A4, &v543[-6], v320, v321);
                    if (v326)
                    {
                      sub_1D5D2CFE8(v291, type metadata accessor for FormatVersionRequirement);

                      v111 = v317;
                      return sub_1D5D2CFE8(v111, sub_1D66598EC);
                    }

                    v328 = sub_1D5C6868C();
                    sub_1D72647EC();
                    *&v567 = v328;
                    sub_1D5D2CFE8(v558, type metadata accessor for FormatVersionRequirement);

                    v329 = v570[13];
                    v330 = v556;
                    v331 = v566;
                    (v564)(v556, v571, v566);
                    swift_storeEnumTagMultiPayload();
                    v574 = xmmword_1D72BAAD0;
                    v575 = xmmword_1D72BAAD0;
                    LOBYTE(v576) = 0;
                    LOBYTE(v586) = 0;
                    v332 = swift_allocObject();
                    v334 = v332;
                    *(v332 + 16) = v574;
                    *(v332 + 32) = v586;
                    v335 = v546;
                    v336 = v544;
                    *(v332 + 40) = v546;
                    *(v332 + 48) = v336;
                    if ((~v329 & 0xF000000000000007) != 0)
                    {
                      v561 = v543;
                      v586 = v329;
                      MEMORY[0x1EEE9AC00](v332, v333);
                      v543[-4] = sub_1D5B4AA6C;
                      v543[-3] = 0;
                      v541 = sub_1D670886C;
                      v542 = v334;
                      v585[0] = 0;
                      v345 = swift_allocObject();
                      v346 = v335;
                      v347 = v345;
                      *(v345 + 16) = v574;
                      *(v345 + 32) = v585[0];
                      *(v345 + 40) = v346;
                      *(v345 + 48) = v336;
                      swift_retain_n();
                      sub_1D5CFCFAC(v329);
                      v348 = sub_1D72647CC();
                      v585[0] = 0;
                      v349 = swift_allocObject();
                      *(v349 + 16) = v348;
                      *(v349 + 24) = v574;
                      *(v349 + 40) = v585[0];
                      v350 = v563[3];
                      v351 = v563[4];
                      v352 = __swift_project_boxed_opaque_existential_1(v563, v350);
                      MEMORY[0x1EEE9AC00](v352, v353);
                      MEMORY[0x1EEE9AC00](v354, v355);
                      v543[-4] = sub_1D615B4A4;
                      v543[-3] = &v543[-6];
                      v330 = v556;
                      v541 = sub_1D670886C;
                      v542 = v347;
                      v357 = sub_1D5D2F7A4(v556, sub_1D615B49C, v356, sub_1D615B4A4, &v543[-6], v350, v351);
                      v370 = v357;

                      if (v370)
                      {
                        sub_1D5C76E3C();
                        sub_1D72647EC();

                        v331 = v566;
                        v330 = v556;
                      }

                      else
                      {

                        v331 = v566;
                      }
                    }

                    else
                    {
                    }

                    sub_1D5D2CFE8(v330, type metadata accessor for FormatVersionRequirement);
                    v337 = v570[14];
                    v338 = v564;
                    v339 = v555;
                    if (qword_1EDF31E90 != -1)
                    {
                      swift_once();
                    }

                    v561 = __swift_project_value_buffer(v331, qword_1EDFFCCE8);
                    v338(v339);
                    swift_storeEnumTagMultiPayload();
                    v574 = xmmword_1D72BAAE0;
                    v575 = xmmword_1D72BAAE0;
                    LOBYTE(v576) = 0;
                    LOBYTE(v586) = 0;
                    v340 = swift_allocObject();
                    v342 = v340;
                    *(v340 + 16) = v574;
                    *(v340 + 32) = v586;
                    v343 = v546;
                    v344 = v544;
                    *(v340 + 40) = v546;
                    *(v340 + 48) = v344;
                    if ((~v337 & 0xF000000000000007) != 0)
                    {
                      v560 = v543;
                      v586 = v337;
                      MEMORY[0x1EEE9AC00](v340, v341);
                      v559 = &v543[-6];
                      v543[-4] = sub_1D5B4AA6C;
                      v543[-3] = 0;
                      v541 = sub_1D670886C;
                      v542 = v342;
                      v585[0] = 0;
                      v358 = swift_allocObject();
                      *(v358 + 16) = v574;
                      *(v358 + 32) = v585[0];
                      *(v358 + 40) = v343;
                      *(v358 + 48) = v344;
                      swift_retain_n();
                      sub_1D5CFCFAC(v337);
                      v359 = sub_1D72647CC();
                      v585[0] = 0;
                      v360 = swift_allocObject();
                      *(v360 + 16) = v359;
                      *(v360 + 24) = v574;
                      *(v360 + 40) = v585[0];
                      v361 = v563[3];
                      v362 = v563[4];
                      v363 = __swift_project_boxed_opaque_existential_1(v563, v361);
                      MEMORY[0x1EEE9AC00](v363, v364);
                      MEMORY[0x1EEE9AC00](v365, v366);
                      v367 = v559;
                      v543[-4] = sub_1D615B4A4;
                      v543[-3] = v367;
                      v541 = sub_1D670886C;
                      v542 = v358;
                      v369 = sub_1D5D2F7A4(v555, sub_1D615B49C, v368, sub_1D615B4A4, &v543[-6], v361, v362);
                      v371 = v369;

                      if (v371)
                      {
                        sub_1D72647EC();
                      }

                      v331 = v566;
                      v344 = v544;
                    }

                    else
                    {
                    }

                    *&v574 = 0;
                    sub_1D5D2CFE8(v555, type metadata accessor for FormatVersionRequirement);
                    v372 = v570[15];
                    (v564)(v554, v561, v331);
                    swift_storeEnumTagMultiPayload();
                    v567 = xmmword_1D72BAAF0;
                    v575 = xmmword_1D72BAAF0;
                    LOBYTE(v576) = 0;
                    LOBYTE(v586) = 0;
                    v373 = swift_allocObject();
                    v375 = v373;
                    *(v373 + 16) = v567;
                    *(v373 + 32) = v586;
                    *(v373 + 40) = v546;
                    *(v373 + 48) = v344;
                    if ((~v372 & 0xF000000000000007) == 0)
                    {

                      goto LABEL_106;
                    }

                    v586 = v372;
                    MEMORY[0x1EEE9AC00](v373, v374);
                    v543[-4] = sub_1D5B4AA6C;
                    v543[-3] = 0;
                    v541 = sub_1D670886C;
                    v542 = v375;
                    v585[0] = 0;
                    v376 = swift_allocObject();
                    *(v376 + 16) = v567;
                    *(v376 + 32) = v585[0];
                    *(v376 + 40) = v546;
                    *(v376 + 48) = v344;
                    swift_retain_n();
                    sub_1D5CFCFAC(v372);
                    v377 = sub_1D72647CC();
                    v585[0] = 0;
                    v378 = swift_allocObject();
                    *(v378 + 16) = v377;
                    *(v378 + 24) = v567;
                    *(v378 + 40) = v585[0];
                    v379 = v563[3];
                    v380 = v563[4];
                    v381 = __swift_project_boxed_opaque_existential_1(v563, v379);
                    MEMORY[0x1EEE9AC00](v381, v382);
                    MEMORY[0x1EEE9AC00](v383, v384);
                    v543[-4] = sub_1D615B4A4;
                    v543[-3] = &v543[-6];
                    v541 = sub_1D670886C;
                    v542 = v376;
                    v385 = v574;
                    v387 = sub_1D5D2F7A4(v554, sub_1D615B49C, v386, sub_1D615B4A4, &v543[-6], v379, v380);
                    *&v574 = v385;
                    if (v385)
                    {
                    }

                    else
                    {
                      v389 = v387;

                      if ((v389 & 1) == 0 || (sub_1D5C76E3C(), v390 = v574, sub_1D72647EC(), (*&v574 = v390) == 0))
                      {

                        v331 = v566;
                        v344 = v544;
LABEL_106:
                        sub_1D5D2CFE8(v554, type metadata accessor for FormatVersionRequirement);
                        v391 = v570[16];
                        v392 = *(v570 + 136);
                        (v564)(v553, v571, v331);
                        swift_storeEnumTagMultiPayload();
                        v567 = xmmword_1D7282A80;
                        v575 = xmmword_1D7282A80;
                        LOBYTE(v576) = 0;
                        LOBYTE(v586) = 0;
                        v393 = swift_allocObject();
                        v395 = v393;
                        *(v393 + 16) = v567;
                        *(v393 + 32) = v586;
                        v396 = v546;
                        *(v393 + 40) = v546;
                        *(v393 + 48) = v344;
                        if (v392 <= 0xFD)
                        {
                          v586 = v391;
                          v587 = v392;
                          MEMORY[0x1EEE9AC00](v393, v394);
                          v543[-4] = sub_1D5B4AA6C;
                          v543[-3] = 0;
                          v541 = sub_1D670886C;
                          v542 = v395;
                          v585[0] = 0;
                          v398 = swift_allocObject();
                          *(v398 + 16) = v567;
                          *(v398 + 32) = v585[0];
                          *(v398 + 40) = v396;
                          *(v398 + 48) = v344;
                          swift_retain_n();
                          v399 = sub_1D72647CC();
                          v585[0] = 0;
                          v400 = swift_allocObject();
                          *(v400 + 16) = v399;
                          *(v400 + 24) = v567;
                          *(v400 + 40) = v585[0];
                          v401 = v563[3];
                          v402 = v563[4];
                          v403 = __swift_project_boxed_opaque_existential_1(v563, v401);
                          MEMORY[0x1EEE9AC00](v403, v404);
                          MEMORY[0x1EEE9AC00](v405, v406);
                          v543[-4] = sub_1D615B4A4;
                          v543[-3] = &v543[-6];
                          v541 = sub_1D670886C;
                          v542 = v398;
                          v407 = v574;
                          v409 = sub_1D5D2F7A4(v553, sub_1D615B49C, v408, sub_1D615B4A4, &v543[-6], v401, v402);
                          *&v574 = v407;
                          if (v407)
                          {
                            sub_1D5D2CFE8(v553, type metadata accessor for FormatVersionRequirement);

LABEL_110:

LABEL_139:
                            v111 = v573;
                            return sub_1D5D2CFE8(v111, sub_1D66598EC);
                          }

                          v410 = v409;

                          if (v410)
                          {
                            sub_1D5F8F434();
                            v411 = v574;
                            sub_1D72647EC();
                            *&v574 = v411;
                            if (v411)
                            {
                              v412 = v553;
                              goto LABEL_114;
                            }
                          }

                          v397 = v544;
                          v396 = v546;
                        }

                        else
                        {

                          v397 = v344;
                        }

                        sub_1D5D2CFE8(v553, type metadata accessor for FormatVersionRequirement);

                        v413 = v570[18];
                        (v564)(v552, v569, v566);
                        swift_storeEnumTagMultiPayload();
                        v567 = xmmword_1D72BAB00;
                        v575 = xmmword_1D72BAB00;
                        LOBYTE(v576) = 0;
                        LOBYTE(v586) = 0;
                        v414 = swift_allocObject();
                        v416 = v414;
                        *(v414 + 16) = v567;
                        *(v414 + 32) = v586;
                        *(v414 + 40) = v396;
                        *(v414 + 48) = v397;
                        if (v413)
                        {
                          v586 = v413;
                          MEMORY[0x1EEE9AC00](v414, v415);
                          v543[-4] = sub_1D5B4AA6C;
                          v543[-3] = 0;
                          v541 = sub_1D670886C;
                          v542 = v416;
                          v585[0] = 0;
                          v417 = swift_allocObject();
                          *(v417 + 16) = v567;
                          *(v417 + 32) = v585[0];
                          *(v417 + 40) = v546;
                          *(v417 + 48) = v397;
                          swift_retain_n();

                          v418 = sub_1D72647CC();
                          v585[0] = 0;
                          v419 = swift_allocObject();
                          *(v419 + 16) = v418;
                          *(v419 + 24) = v567;
                          *(v419 + 40) = v585[0];
                          v420 = v563[3];
                          v421 = v563[4];
                          v422 = __swift_project_boxed_opaque_existential_1(v563, v420);
                          MEMORY[0x1EEE9AC00](v422, v423);
                          MEMORY[0x1EEE9AC00](v424, v425);
                          v543[-4] = sub_1D615B4A4;
                          v543[-3] = &v543[-6];
                          v541 = sub_1D670886C;
                          v542 = v417;
                          v426 = v574;
                          v428 = sub_1D5D2F7A4(v552, sub_1D615B49C, v427, sub_1D615B4A4, &v543[-6], v420, v421);
                          *&v574 = v426;
                          if (v426)
                          {

LABEL_119:
                            v388 = v552;
                            goto LABEL_138;
                          }

                          v429 = v428;

                          if (v429)
                          {
                            type metadata accessor for FormatAnimationNodeStyle();
                            sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
                            v430 = v574;
                            sub_1D72647EC();
                            *&v574 = v430;
                            if (v430)
                            {

                              goto LABEL_119;
                            }
                          }
                        }

                        else
                        {
                        }

                        sub_1D5D2CFE8(v552, type metadata accessor for FormatVersionRequirement);
                        v431 = v570;
                        swift_beginAccess();
                        v432 = v431[19];
                        v433 = qword_1EDF31EA8;

                        if (v433 != -1)
                        {
                          swift_once();
                        }

                        v434 = v566;
                        v435 = __swift_project_value_buffer(v566, qword_1EDFFCD18);
                        (v564)(v551, v435, v434);
                        swift_storeEnumTagMultiPayload();
                        if (*(v432 + 16))
                        {
                          LOBYTE(v575) = 0;
                          v436 = swift_allocObject();
                          v567 = xmmword_1D72BAB10;
                          *(v436 + 16) = xmmword_1D72BAB10;
                          *(v436 + 32) = v575;
                          *(v436 + 40) = v546;
                          *(v436 + 48) = v544;

                          v437 = sub_1D72647CC();
                          LOBYTE(v575) = 0;
                          v438 = swift_allocObject();
                          *(v438 + 16) = v437;
                          *(v438 + 24) = v567;
                          *(v438 + 40) = v575;
                          v439 = v563[3];
                          v440 = v563[4];
                          v441 = __swift_project_boxed_opaque_existential_1(v563, v439);
                          MEMORY[0x1EEE9AC00](v441, v442);
                          MEMORY[0x1EEE9AC00](v443, v444);
                          v543[-4] = sub_1D5B4AA6C;
                          v543[-3] = 0;
                          v541 = sub_1D670886C;
                          v542 = v436;
                          v445 = v574;
                          v447 = sub_1D5D2F7A4(v551, sub_1D615B49C, v446, sub_1D615B4A4, &v543[-6], v439, v440);
                          *&v574 = v445;
                          if (v445)
                          {

LABEL_130:
                            v388 = v551;
                            goto LABEL_138;
                          }

                          v448 = v447;

                          if (v448)
                          {
                            v449 = v574;
                            sub_1D5E087A4(v432, v573, 0xF, 0, 0);
                            *&v574 = v449;
                            if (v449)
                            {

                              goto LABEL_130;
                            }
                          }
                        }

                        sub_1D5D2CFE8(v551, type metadata accessor for FormatVersionRequirement);
                        v450 = v570;
                        swift_beginAccess();
                        v451 = v450[20];
                        v452 = v450[21];
                        (v564)(v550, v569, v566);
                        swift_storeEnumTagMultiPayload();
                        v569 = xmmword_1D72BAB20;
                        v575 = xmmword_1D72BAB20;
                        LOBYTE(v576) = 0;
                        LOBYTE(v583) = 0;
                        v453 = swift_allocObject();
                        v455 = v453;
                        *(v453 + 16) = v569;
                        *(v453 + 32) = v583;
                        v456 = v544;
                        *(v453 + 40) = v546;
                        *(v453 + 48) = v456;
                        if (v452)
                        {
                          v583 = v451;
                          v584 = v452;
                          MEMORY[0x1EEE9AC00](v453, v454);
                          v543[-4] = sub_1D5B4AA6C;
                          v543[-3] = 0;
                          v541 = sub_1D670886C;
                          v542 = v455;
                          LOBYTE(v582) = 0;
                          v457 = swift_allocObject();
                          *(v457 + 16) = v569;
                          *(v457 + 32) = v582;
                          *(v457 + 40) = v546;
                          *(v457 + 48) = v544;
                          swift_retain_n();
                          swift_bridgeObjectRetain_n();
                          v458 = sub_1D72647CC();
                          LOBYTE(v582) = 0;
                          v459 = swift_allocObject();
                          *(v459 + 16) = v458;
                          *(v459 + 24) = v569;
                          *(v459 + 40) = v582;
                          v460 = v563[3];
                          v461 = v563[4];
                          v462 = __swift_project_boxed_opaque_existential_1(v563, v460);
                          MEMORY[0x1EEE9AC00](v462, v463);
                          MEMORY[0x1EEE9AC00](v464, v465);
                          v543[-4] = sub_1D615B4A4;
                          v543[-3] = &v543[-6];
                          v541 = sub_1D670886C;
                          v542 = v457;
                          v466 = v574;
                          v468 = sub_1D5D2F7A4(v550, sub_1D615B49C, v467, sub_1D615B4A4, &v543[-6], v460, v461);
                          *&v574 = v466;
                          if (v466)
                          {
                            swift_bridgeObjectRelease_n();

LABEL_137:
                            v388 = v550;
                            goto LABEL_138;
                          }

                          v469 = v468;

                          if (v469)
                          {
                            v470 = v574;
                            sub_1D72647EC();
                            *&v574 = v470;
                            if (v470)
                            {
                              swift_bridgeObjectRelease_n();

                              goto LABEL_137;
                            }
                          }

                          swift_bridgeObjectRelease_n();
                        }

                        else
                        {
                        }

                        sub_1D5D2CFE8(v550, type metadata accessor for FormatVersionRequirement);
                        v471 = v570;
                        swift_beginAccess();
                        v472 = v471[22];
                        sub_1D5B58478(0);
                        v474 = *(v473 + 48);
                        v475 = (v549 + *(v473 + 64));
                        (v564)();
                        v476 = qword_1EDF31EE8;

                        if (v476 != -1)
                        {
                          swift_once();
                        }

                        v477 = v566;
                        v478 = __swift_project_value_buffer(v566, qword_1EDFFCD98);
                        (v564)(v549 + v474, v478, v477);
                        *v475 = 0;
                        v475[1] = 0;
                        swift_storeEnumTagMultiPayload();
                        if (!*(v472 + 16))
                        {
                          goto LABEL_153;
                        }

                        LOBYTE(v575) = 0;
                        v479 = swift_allocObject();
                        v571 = xmmword_1D72BAB30;
                        *(v479 + 16) = xmmword_1D72BAB30;
                        *(v479 + 32) = v575;
                        *(v479 + 40) = v546;
                        *(v479 + 48) = v544;

                        v480 = sub_1D72647CC();
                        LOBYTE(v575) = 0;
                        v481 = swift_allocObject();
                        *(v481 + 16) = v480;
                        *(v481 + 24) = v571;
                        *(v481 + 40) = v575;
                        v482 = v563[3];
                        v483 = v563[4];
                        v484 = __swift_project_boxed_opaque_existential_1(v563, v482);
                        MEMORY[0x1EEE9AC00](v484, v485);
                        MEMORY[0x1EEE9AC00](v486, v487);
                        v543[-4] = sub_1D5B4AA6C;
                        v543[-3] = 0;
                        v541 = sub_1D670886C;
                        v542 = v479;
                        v488 = v574;
                        v490 = sub_1D5D2F7A4(v549, sub_1D615B49C, v489, sub_1D615B4A4, &v543[-6], v482, v483);
                        *&v574 = v488;
                        if (v488)
                        {
                          v491 = v549;
LABEL_159:
                          sub_1D5D2CFE8(v491, type metadata accessor for FormatVersionRequirement);

                          goto LABEL_110;
                        }

                        v492 = v490;

                        if (v492)
                        {
                          v575 = v571;
                          LOBYTE(v576) = 0;
                          v582 = v472;
                          sub_1D5B5BF78(0, &qword_1EC886068, MEMORY[0x1E69D6A58], MEMORY[0x1E69E62F8]);
                          sub_1D6659B14();
                          v493 = v574;
                          sub_1D72647EC();
                          *&v574 = v493;
                          if (v493)
                          {

                            v388 = v549;
                            goto LABEL_138;
                          }

                          sub_1D5D2CFE8(v549, type metadata accessor for FormatVersionRequirement);
                        }

                        else
                        {
LABEL_153:
                          sub_1D5D2CFE8(v549, type metadata accessor for FormatVersionRequirement);
                        }

                        v494 = v570;
                        swift_beginAccess();
                        v495 = v494[23];
                        v496 = qword_1EDF31F48;

                        if (v496 != -1)
                        {
                          swift_once();
                        }

                        v497 = v566;
                        v498 = __swift_project_value_buffer(v566, qword_1EDFFCE68);
                        (v564)(v548, v498, v497);
                        swift_storeEnumTagMultiPayload();
                        if (!*(v495 + 16))
                        {
                          goto LABEL_163;
                        }

                        LOBYTE(v575) = 0;
                        v499 = swift_allocObject();
                        v571 = xmmword_1D72BAB40;
                        *(v499 + 16) = xmmword_1D72BAB40;
                        *(v499 + 32) = v575;
                        *(v499 + 40) = v546;
                        *(v499 + 48) = v544;

                        v500 = sub_1D72647CC();
                        LOBYTE(v575) = 0;
                        v501 = swift_allocObject();
                        *(v501 + 16) = v500;
                        *(v501 + 24) = v571;
                        *(v501 + 40) = v575;
                        v502 = v563[3];
                        v503 = v563[4];
                        v504 = __swift_project_boxed_opaque_existential_1(v563, v502);
                        MEMORY[0x1EEE9AC00](v504, v505);
                        MEMORY[0x1EEE9AC00](v506, v507);
                        v543[-4] = sub_1D5B4AA6C;
                        v543[-3] = 0;
                        v541 = sub_1D670886C;
                        v542 = v499;
                        v508 = v574;
                        v510 = sub_1D5D2F7A4(v548, sub_1D615B49C, v509, sub_1D615B4A4, &v543[-6], v502, v503);
                        *&v574 = v508;
                        if (v508)
                        {
                          v491 = v548;
                          goto LABEL_159;
                        }

                        v511 = v510;

                        if (v511)
                        {
                          v575 = v571;
                          LOBYTE(v576) = 0;
                          *&v580 = v495;
                          sub_1D5C34D84(0, &qword_1EDF04FC8, &type metadata for FormatSourceItem, MEMORY[0x1E69E62F8]);
                          sub_1D6659A78();
                          v512 = v574;
                          sub_1D72647EC();
                          *&v574 = v512;
                          if (v512)
                          {

                            v388 = v548;
                            goto LABEL_138;
                          }

                          sub_1D5D2CFE8(v548, type metadata accessor for FormatVersionRequirement);
                        }

                        else
                        {
LABEL_163:
                          sub_1D5D2CFE8(v548, type metadata accessor for FormatVersionRequirement);
                        }

                        v513 = v570[24];
                        v514 = v570[25];
                        v515 = v570[26];
                        v516 = v570[27];
                        v517 = v570[28];
                        v518 = v570[29];
                        if (qword_1EDF31F38 != -1)
                        {
                          swift_once();
                        }

                        v519 = v566;
                        v520 = __swift_project_value_buffer(v566, qword_1EDFFCE38);
                        (v564)(v547, v520, v519);
                        swift_storeEnumTagMultiPayload();
                        v571 = xmmword_1D72BAB50;
                        v580 = xmmword_1D72BAB50;
                        v581 = 0;
                        LOBYTE(v575) = 0;
                        v521 = swift_allocObject();
                        v523 = v521;
                        *(v521 + 16) = v571;
                        *(v521 + 32) = v575;
                        v524 = v544;
                        *(v521 + 40) = v546;
                        *(v521 + 48) = v524;
                        if (v513)
                        {
                          v570 = v543;
                          *&v575 = v513;
                          *(&v575 + 1) = v514;
                          v576 = v515;
                          v577 = v516;
                          v578 = v517;
                          v579 = v518;
                          MEMORY[0x1EEE9AC00](v521, v522);
                          *&v569 = &v543[-6];
                          v543[-4] = sub_1D5B4AA6C;
                          v543[-3] = 0;
                          v541 = sub_1D670886C;
                          v542 = v523;
                          v596 = 0;
                          v525 = swift_allocObject();
                          *(v525 + 16) = v571;
                          *(v525 + 32) = v596;
                          *(v525 + 40) = v546;
                          *(v525 + 48) = v544;
                          swift_retain_n();
                          sub_1D5EB1D80(v513, v514, v515, v516, v517, v518);
                          v526 = sub_1D72647CC();
                          v596 = 0;
                          v527 = swift_allocObject();
                          *(v527 + 16) = v526;
                          *(v527 + 24) = v571;
                          *(v527 + 40) = v596;
                          v528 = v563[3];
                          v529 = v563[4];
                          v530 = __swift_project_boxed_opaque_existential_1(v563, v528);
                          MEMORY[0x1EEE9AC00](v530, v531);
                          MEMORY[0x1EEE9AC00](v532, v533);
                          v534 = v569;
                          v543[-4] = sub_1D615B4A4;
                          v543[-3] = v534;
                          v541 = sub_1D670886C;
                          v542 = v525;
                          v535 = v574;
                          v537 = sub_1D5D2F7A4(v547, sub_1D615B49C, v536, sub_1D615B4A4, &v543[-6], v528, v529);
                          *&v574 = v535;
                          if (v535)
                          {
                          }

                          else
                          {
                            v538 = v537;

                            if (v538)
                            {
                              sub_1D6659A24();
                              v539 = v574;
                              sub_1D72647EC();
                              *&v574 = v539;
                            }
                          }

                          v540 = v578;

                          sub_1D5CBF568(v540);

                          v388 = v547;
                          goto LABEL_138;
                        }

                        v412 = v547;
LABEL_114:
                        sub_1D5D2CFE8(v412, type metadata accessor for FormatVersionRequirement);

                        goto LABEL_139;
                      }
                    }

                    v388 = v554;
LABEL_138:
                    sub_1D5D2CFE8(v388, type metadata accessor for FormatVersionRequirement);
                    goto LABEL_139;
                  }

                  v575 = v574;
                  LOBYTE(v576) = 0;
                  v586 = v297;
                  sub_1D5C34D84(0, &qword_1EDF04CB8, &type metadata for FormatButtonNodeStateMask, MEMORY[0x1E69E62F8]);
                  sub_1D6659BEC();
                  v310 = v573;
                  sub_1D72647EC();
                  v289 = v570;
                  v288 = v571;
                  v290 = v546;
                  v291 = v558;
                  v307 = v310;
                  *&v574 = 0;

                  v308 = v557;
                }

                else
                {
                  v307 = v573;
                  *&v574 = 0;
                  v308 = v294;
                }

                sub_1D5D2CFE8(v308, type metadata accessor for FormatVersionRequirement);
                goto LABEL_81;
              }

              sub_1D5D2CFE8(v231, type metadata accessor for FormatVersionRequirement);
              v221 = 0;
              v198 = v570;
              v178 = v571;
            }

            v232 = v559;
            goto LABEL_59;
          }

          sub_1D5EB15C4(v223);
          v168 = v250;
LABEL_20:
          sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);
          v111 = v573;
          return sub_1D5D2CFE8(v111, sub_1D66598EC);
        }

        *&v574 = 0;

        v173 = v566;
        v85 = v564;
      }

      else
      {
        v173 = v120;
      }

      v178 = v571;
      goto LABEL_33;
    }

    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

    v82 = v566;
    v85 = v564;
LABEL_8:
    v113 = v571;
    goto LABEL_9;
  }

  sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

  v111 = v90;
  return sub_1D5D2CFE8(v111, sub_1D66598EC);
}

uint64_t FormatVariableNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v129 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v136 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v142 = &v129 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v129 - v17;
  sub_1D665A280(0);
  *&v143 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D665A3A8(0);
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF0C590, sub_1D665A3A8, &unk_1D7321584);
  v144 = v22;
  sub_1D5D2EE70(v4, v26, v28, v23, v4, v26, &type metadata for FormatVersions.SydroF, v24, v22, v27, &off_1F51F6C58);
  swift_beginAccess();
  v30 = v2[2];
  v29 = v2[3];
  v141 = v2;
  v31 = qword_1EDF31ED8;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725BD1C();
  v33 = __swift_project_value_buffer(v32, qword_1EDFFCD68);
  v34 = *(v32 - 8);
  v35 = *(v34 + 16);
  v36 = v34 + 16;
  v35(v18, v33, v32);
  v140 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v37 = sub_1D725895C();
  v38 = (*(*(v37 - 8) + 48))(v8, 1, v37);
  v137 = v32;
  v139 = v35;
  v138 = v36;
  if (v38 != 1)
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v60 = v144;
    v62 = v142;
    v61 = v143;
    goto LABEL_7;
  }

  v133 = v30;
  v135 = v33;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v39 = v143;
  v40 = v144;
  v41 = &v144[*(v143 + 44)];
  v43 = *v41;
  v42 = *(v41 + 1);
  LOBYTE(v146) = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v146;
  *(v44 + 40) = v43;
  *(v44 + 48) = v42;
  sub_1D665A314(0);
  v46 = v45;
  sub_1D5B58B84(&qword_1EDF03588, sub_1D665A314, MEMORY[0x1E69E6F60]);

  v134 = v46;
  v47 = sub_1D72647CC();
  LOBYTE(v146) = 0;
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = v146;
  v49 = (v40 + *(v39 + 36));
  v50 = v49[3];
  v51 = v49[4];
  v52 = __swift_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  *(&v129 - 4) = sub_1D5B4AA6C;
  *(&v129 - 3) = 0;
  v127 = sub_1D665A528;
  v128 = v44;
  v56 = v145;
  v58 = sub_1D5D2F7A4(v18, sub_1D615B49C, v57, sub_1D615B4A4, (&v129 - 6), v50, v51);
  v145 = v56;
  if (!v56)
  {
    v89 = v58;

    if (v89)
    {
      v146 = 0uLL;
      LOBYTE(v147) = 0;
      v153 = v133;
      v154 = v29;
      v60 = v144;
      v90 = v145;
      sub_1D72647EC();

      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
      v145 = v90;
      v61 = v143;
      v33 = v135;
      if (v90)
      {
        v59 = v60;
        return sub_1D5D2CFE8(v59, sub_1D665A280);
      }

      v62 = v142;
      v32 = v137;
    }

    else
    {
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

      v60 = v144;
      v62 = v142;
      v61 = v143;
      v32 = v137;
      v33 = v135;
    }

LABEL_7:
    v63 = v141;
    swift_beginAccess();
    v64 = v63[4];
    v139(v62, v33, v32);
    swift_storeEnumTagMultiPayload();
    v65 = (v60 + *(v61 + 44));
    v67 = *v65;
    v66 = v65[1];
    LOBYTE(v146) = 0;
    v68 = v60;
    v69 = swift_allocObject();
    v143 = xmmword_1D728CF30;
    *(v69 + 16) = xmmword_1D728CF30;
    *(v69 + 32) = v146;
    v132 = v67;
    *(v69 + 40) = v67;
    *(v69 + 48) = v66;
    sub_1D665A314(0);
    v71 = v70;
    v72 = sub_1D5B58B84(&qword_1EDF03588, sub_1D665A314, MEMORY[0x1E69E6F60]);
    v135 = v64;

    v133 = v66;

    v134 = v71;
    v73 = v72;
    v74 = sub_1D72647CC();
    LOBYTE(v146) = 0;
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    *(v75 + 24) = v143;
    *(v75 + 40) = v146;
    v76 = (v60 + *(v61 + 36));
    v77 = v76[3];
    v78 = v76[4];
    v79 = __swift_project_boxed_opaque_existential_1(v76, v77);
    MEMORY[0x1EEE9AC00](v79, v80);
    MEMORY[0x1EEE9AC00](v81, v82);
    *(&v129 - 4) = sub_1D5B4AA6C;
    *(&v129 - 3) = 0;
    v127 = sub_1D6708870;
    v128 = v69;
    v83 = v145;
    v85 = sub_1D5D2F7A4(v62, sub_1D615B49C, v84, sub_1D615B4A4, (&v129 - 6), v77, v78);
    if (v83)
    {
      sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

      v59 = v68;
      return sub_1D5D2CFE8(v59, sub_1D665A280);
    }

    v86 = v85;
    v87 = v135;
    v130 = v76;
    v88 = v141;
    v131 = v73;

    if (v86)
    {
      v146 = v143;
      LOBYTE(v147) = 0;
      *&v151 = v87;
      sub_1D5C34D84(0, &qword_1EDF04C88, &type metadata for FormatOptionsNodeStatement, MEMORY[0x1E69E62F8]);
      sub_1D665A5A4();
      sub_1D72647EC();
      v145 = 0;

      sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v145 = 0;
      sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
    }

    v91 = v88[5];
    v92 = v88[6];
    v94 = v88[7];
    v93 = v88[8];
    v95 = v88[9];
    v142 = v88[10];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v96 = v137;
    v97 = __swift_project_value_buffer(v137, qword_1EDFFCE38);
    v98 = v136;
    v139(v136, v97, v96);
    swift_storeEnumTagMultiPayload();
    v143 = xmmword_1D7297410;
    v151 = xmmword_1D7297410;
    v152 = 0;
    LOBYTE(v146) = 0;
    v100 = swift_allocObject();
    *(v100 + 16) = v143;
    *(v100 + 32) = v146;
    *(v100 + 40) = v132;
    v101 = v133;
    *(v100 + 48) = v133;
    if (v91)
    {
      v141 = &v129;
      v135 = v91;
      *&v146 = v91;
      *(&v146 + 1) = v92;
      v147 = v94;
      v148 = v93;
      v102 = v95;
      v103 = v142;
      v149 = v95;
      v150 = v142;
      MEMORY[0x1EEE9AC00](v101, v99);
      v105 = v104;
      v140 = &v129 - 6;
      *(&v129 - 4) = sub_1D5B4AA6C;
      *(&v129 - 3) = 0;
      v127 = sub_1D6708870;
      v128 = v100;
      v155 = 0;
      v107 = v106;
      v108 = swift_allocObject();
      *(v108 + 16) = v143;
      *(v108 + 32) = v155;
      *(v108 + 40) = v105;
      *(v108 + 48) = v107;
      swift_retain_n();
      sub_1D5EB1D80(v135, v92, v94, v93, v102, v103);
      v109 = sub_1D72647CC();
      v155 = 0;
      v110 = swift_allocObject();
      *(v110 + 16) = v109;
      *(v110 + 24) = v143;
      *(v110 + 40) = v155;
      v111 = v130[3];
      v112 = v130[4];
      v113 = __swift_project_boxed_opaque_existential_1(v130, v111);
      MEMORY[0x1EEE9AC00](v113, v114);
      MEMORY[0x1EEE9AC00](v115, v116);
      v117 = v140;
      *(&v129 - 4) = sub_1D615B4A4;
      *(&v129 - 3) = v117;
      v127 = sub_1D6708870;
      v128 = v108;
      v118 = v136;
      v119 = v145;
      v121 = sub_1D5D2F7A4(v136, sub_1D615B49C, v120, sub_1D615B4A4, (&v129 - 6), v111, v112);
      if (v119)
      {

        v122 = v144;
LABEL_24:
        v124 = v149;

        sub_1D5CBF568(v124);

        sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
LABEL_28:
        v59 = v122;
        return sub_1D5D2CFE8(v59, sub_1D665A280);
      }

      v123 = v121;

      if (v123)
      {
        sub_1D6659A24();
        v122 = v144;
        sub_1D72647EC();

        goto LABEL_24;
      }

      v125 = v149;

      sub_1D5CBF568(v125);

      sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
    }

    v122 = v144;
    goto LABEL_28;
  }

  sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

  v59 = v40;
  return sub_1D5D2CFE8(v59, sub_1D665A280);
}

uint64_t FormatWeatherBinding.Image.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v27;
    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F50F4820;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D665A640();
    v25 = 0uLL;
    sub_1D726431C();
    v24 = xmmword_1D7279980;
    sub_1D5C94800();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v26;
    *v14 = v25;
    *(v14 + 16) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatWeatherBinding.Image.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = *(v1 + 17);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatWeatherBinding.Image, &type metadata for FormatCodingKeys, v18, v15, &type metadata for FormatWeatherBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v16, v10, v17, &off_1F51F6C38);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCDE0);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A185C(v11, v12, v13 | (v14 << 8), v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatSelectorExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D665A694(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5C5F6FC(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF250C8, sub_1D5C5F6FC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSelectorExpression, v17, v19, v14, &type metadata for FormatSelectorExpression, v17, &type metadata for FormatVersions.JazzkonC, v15, v11, v18, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD30);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v12;
  v48 = v13;
  v45[3] = 0;
  v45[4] = 0;
  v46 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v49 = 0;
  v25 = swift_allocObject();
  v45[1] = v45;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v49;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v45[-4] = sub_1D5B4AA6C;
  v45[-3] = 0;
  v43 = sub_1D6708874;
  v44 = v27;
  v49 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v49;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D665A728(0);
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF03058, sub_1D665A728, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v45[0] = v30;
  v31 = sub_1D72647CC();
  v49 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v49;
  v33 = &v11[*(v8 + 36)];
  v34 = *(v33 + 3);
  v35 = *(v33 + 4);
  v36 = __swift_project_boxed_opaque_existential_1(v33, v34);
  MEMORY[0x1EEE9AC00](v36, v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v45[-4] = sub_1D615B4A4;
  v45[-3] = &v45[-6];
  v43 = sub_1D665A7BC;
  v44 = v28;
  v40 = v45[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v41, sub_1D615B4A4, &v45[-6], v34, v35);
  if (v40)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D3E60C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D665A694);
}

uint64_t FormatSelectorsExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D665A838(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665A8CC(0);
  sub_1D5B58B84(&qword_1EDF25068, sub_1D665A8CC, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6628490(0x726F7463656C6573, 0xE900000000000073);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v23[1] = 0;
  v23[2] = 0;
  v24 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v17 = v26;
  *v13 = v25;
  v13[1] = v17;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSelectorsExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D665AA4C(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D665A8CC(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF25068, sub_1D665A8CC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSelectorsExpression, v17, v19, v14, &type metadata for FormatSelectorsExpression, v17, &type metadata for FormatVersions.AzdenE, v15, v11, v18, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD98);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v12;
  v48 = v13;
  v45[3] = 0;
  v45[4] = 0;
  v46 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v49 = 0;
  v25 = swift_allocObject();
  v45[1] = v45;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v49;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v45[-4] = sub_1D5B4AA6C;
  v45[-3] = 0;
  v43 = sub_1D6708878;
  v44 = v27;
  v49 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v49;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D665AAE0(0);
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF02FE8, sub_1D665AAE0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v45[0] = v30;
  v31 = sub_1D72647CC();
  v49 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v49;
  v33 = &v11[*(v8 + 36)];
  v34 = *(v33 + 3);
  v35 = *(v33 + 4);
  v36 = __swift_project_boxed_opaque_existential_1(v33, v34);
  MEMORY[0x1EEE9AC00](v36, v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v45[-4] = sub_1D615B4A4;
  v45[-3] = &v45[-6];
  v43 = sub_1D665AB74;
  v44 = v28;
  v40 = v45[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v41, sub_1D615B4A4, &v45[-6], v34, v35);
  if (v40)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D3E60C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D665AA4C);
}

uint64_t FormatSportsEventBinding.Bool.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v30;
    v13 = a1[3];
    v26 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F50F4900;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v26;
          goto LABEL_9;
        }
      }
    }

    sub_1D665ABF0();
    v29 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      if (v27 == 1)
      {
        v29 = xmmword_1D7279980;
        sub_1D5C78A70();
        sub_1D726431C();
        a1 = v26;
        (*(v11 + 8))(v10, v6);
        v23 = v27;
        v24 = 64;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC886080, sub_1D665AC44, &type metadata for FormatTagBinding.Bool, type metadata accessor for FormatArraySubscript);
        v29 = xmmword_1D7279980;
        sub_1D665AC98();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        a1 = v26;
        v23 = v27;
        v24 = v28 | 0x80;
      }
    }

    else
    {
      v29 = xmmword_1D7279980;
      sub_1D5C78A70();
      sub_1D726431C();
      a1 = v26;
      (*(v11 + 8))(v10, v6);
      v24 = 0;
      v23 = v27;
    }

    *v12 = v23;
    *(v12 + 8) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t FormatSpaceNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v148 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v149 = v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v150 = v148 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  *&v160 = v148 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v148 - v20;
  sub_1D665AD28(0);
  v164 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5C9EA4C(0);
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF24B68, sub_1D5C9EA4C, &unk_1D7321584);
  v161 = v25;
  sub_1D5D2EE70(v4, v29, v31, v26, v4, v29, &type metadata for FormatVersions.JazzkonC, v27, v25, v30, &off_1F51F6C78);
  swift_beginAccess();
  v33 = v2[2];
  v32 = v2[3];
  v159 = v2;
  v34 = qword_1EDF31EB0;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  v39 = v37 + 16;
  v158 = v36;
  v38(v21);
  v40 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v41 = sub_1D725895C();
  v42 = (*(*(v41 - 8) + 48))(v8, 1, v41);
  v154 = v35;
  v157 = v38;
  v156 = v39;
  v155 = v40;
  if (v42 != 1)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v65 = v161;
LABEL_8:
    v66 = v158;
    goto LABEL_9;
  }

  v153 = v33;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v43 = v164;
  v44 = v161;
  v45 = &v161[*(v164 + 44)];
  v47 = *v45;
  v46 = *(v45 + 1);
  LOBYTE(v165) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v165;
  *(v48 + 40) = v47;
  *(v48 + 48) = v46;
  sub_1D665ADBC(0);
  v50 = v49;
  sub_1D5B58B84(&qword_1EDF02A18, sub_1D665ADBC, MEMORY[0x1E69E6F60]);

  *&v163 = v50;
  v51 = sub_1D72647CC();
  LOBYTE(v165) = 0;
  v52 = swift_allocObject();
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 16) = v51;
  *(v52 + 40) = v165;
  v53 = (v44 + *(v43 + 36));
  v54 = v53[3];
  v55 = v53[4];
  v56 = __swift_project_boxed_opaque_existential_1(v53, v54);
  MEMORY[0x1EEE9AC00](v56, v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  v148[-4] = sub_1D5B4AA6C;
  v148[-3] = 0;
  v146 = sub_1D670887C;
  v147 = v48;
  v60 = v162;
  v62 = sub_1D5D2F7A4(v21, sub_1D615B49C, v61, sub_1D615B4A4, &v148[-6], v54, v55);
  if (v60)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v63 = v44;
    return sub_1D5D2CFE8(v63, sub_1D665AD28);
  }

  v95 = v62;

  if ((v95 & 1) == 0)
  {
    *&v162 = 0;
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v65 = v161;
    v35 = v154;
    v38 = v157;
    goto LABEL_8;
  }

  v165 = 0uLL;
  LOBYTE(v166) = 0;
  v173 = v153;
  v174 = v32;
  v65 = v161;
  sub_1D72647EC();

  sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  v38 = v157;
  v66 = v158;
  *&v162 = 0;
  v35 = v154;
LABEL_9:
  v67 = v159;
  swift_beginAccess();
  v68 = v67[4];
  (v38)(v160, v66, v35);
  swift_storeEnumTagMultiPayload();
  v172 = v68;
  v163 = xmmword_1D728CF30;
  v165 = xmmword_1D728CF30;
  LOBYTE(v166) = 0;
  v69 = (v65 + *(v164 + 44));
  v70 = *v69;
  v71 = v69[1];
  LOBYTE(v170) = 0;
  v72 = swift_allocObject();
  v152 = v148;
  *(v72 + 16) = v163;
  *(v72 + 32) = v170;
  *(v72 + 40) = v70;
  *(v72 + 48) = v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v151 = &v148[-6];
  v148[-4] = sub_1D5B4AA6C;
  v148[-3] = 0;
  v146 = sub_1D670887C;
  v147 = v74;
  LOBYTE(v170) = 0;
  v75 = v65;
  v76 = swift_allocObject();
  *(v76 + 16) = v163;
  *(v76 + 32) = v170;
  v148[0] = v70;
  *(v76 + 40) = v70;
  *(v76 + 48) = v71;
  v77 = v71;
  swift_retain_n();
  v153 = v68;
  sub_1D5C82CD8(v68);
  sub_1D665ADBC(0);
  v79 = v78;
  v80 = sub_1D5B58B84(&qword_1EDF02A18, sub_1D665ADBC, MEMORY[0x1E69E6F60]);
  v148[2] = v79;
  v148[1] = v80;
  v81 = sub_1D72647CC();
  LOBYTE(v170) = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  *(v82 + 24) = v163;
  *(v82 + 40) = v170;
  v83 = (v75 + *(v164 + 36));
  v84 = v83[3];
  v85 = v83[4];
  v86 = __swift_project_boxed_opaque_existential_1(v83, v84);
  MEMORY[0x1EEE9AC00](v86, v87);
  MEMORY[0x1EEE9AC00](v88, v89);
  v90 = v151;
  v148[-4] = sub_1D615B4A4;
  v148[-3] = v90;
  v91 = v160;
  v146 = sub_1D670887C;
  v147 = v76;
  v92 = v162;
  sub_1D5D2BC70(v160, sub_1D615B49C, v93, sub_1D615B4A4, &v148[-6], v84, v85);
  if (!v92)
  {
    v164 = v77;
    v94 = v159;

    sub_1D5CA1E90();
    sub_1D72647EC();
    *&v163 = v83;
    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);
    sub_1D5C92A8C(v153);

    v96 = v94;
    swift_beginAccess();
    v97 = v94[5];
    v98 = v150;
    (v157)(v150, v158, v154);
    swift_storeEnumTagMultiPayload();
    if (*(v97 + 16))
    {
      LOBYTE(v165) = 0;
      v99 = swift_allocObject();
      v162 = xmmword_1D7297410;
      *(v99 + 16) = xmmword_1D7297410;
      *(v99 + 32) = v165;
      *(v99 + 40) = v148[0];
      *(v99 + 48) = v164;

      v100 = sub_1D72647CC();
      LOBYTE(v165) = 0;
      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      *(v101 + 24) = v162;
      *(v101 + 40) = v165;
      v102 = *(v163 + 24);
      v103 = *(v163 + 32);
      v104 = __swift_project_boxed_opaque_existential_1(v163, v102);
      MEMORY[0x1EEE9AC00](v104, v105);
      MEMORY[0x1EEE9AC00](v106, v107);
      v148[-4] = sub_1D5B4AA6C;
      v148[-3] = 0;
      v146 = sub_1D670887C;
      v147 = v99;
      v109 = sub_1D5D2F7A4(v98, sub_1D615B49C, v108, sub_1D615B4A4, &v148[-6], v102, v103);
      v111 = v109;

      v110 = v149;
      if (v111)
      {
        v165 = v162;
        LOBYTE(v166) = 0;
        *&v170 = v97;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        *&v162 = 0;

        sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v162 = 0;
        sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
      }
    }

    else
    {
      *&v162 = 0;
      sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
      v110 = v149;
    }

    v113 = v96[6];
    v112 = v96[7];
    v114 = v96[8];
    v115 = v96[9];
    v116 = v96[10];
    v117 = v96[11];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v118 = v154;
    v119 = __swift_project_value_buffer(v154, qword_1EDFFCE38);
    (v157)(v110, v119, v118);
    swift_storeEnumTagMultiPayload();
    v160 = xmmword_1D72BAA60;
    v170 = xmmword_1D72BAA60;
    v171 = 0;
    LOBYTE(v165) = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v160;
    *(v121 + 32) = v165;
    *(v121 + 40) = v148[0];
    v122 = v164;
    *(v121 + 48) = v164;
    if (v113)
    {
      v159 = v148;
      v153 = v113;
      *&v165 = v113;
      *(&v165 + 1) = v112;
      v123 = v112;
      v166 = v114;
      v167 = v115;
      v124 = v116;
      v168 = v116;
      v169 = v117;
      MEMORY[0x1EEE9AC00](v122, v120);
      v126 = v125;
      v158 = &v148[-6];
      v148[-4] = sub_1D5B4AA6C;
      v148[-3] = 0;
      v146 = sub_1D670887C;
      v147 = v121;
      v175 = 0;
      v128 = v127;
      v129 = swift_allocObject();
      *(v129 + 16) = v160;
      *(v129 + 32) = v175;
      *(v129 + 40) = v126;
      *(v129 + 48) = v128;
      v130 = v149;
      swift_retain_n();
      sub_1D5EB1D80(v153, v123, v114, v115, v124, v117);
      v131 = sub_1D72647CC();
      v175 = 0;
      v132 = swift_allocObject();
      *(v132 + 16) = v131;
      *(v132 + 24) = v160;
      *(v132 + 40) = v175;
      v133 = *(v163 + 24);
      v134 = *(v163 + 32);
      v135 = __swift_project_boxed_opaque_existential_1(v163, v133);
      MEMORY[0x1EEE9AC00](v135, v136);
      MEMORY[0x1EEE9AC00](v137, v138);
      v139 = v158;
      v148[-4] = sub_1D615B4A4;
      v148[-3] = v139;
      v146 = sub_1D670887C;
      v147 = v129;
      v140 = v162;
      v142 = sub_1D5D2F7A4(v130, sub_1D615B49C, v141, sub_1D615B4A4, &v148[-6], v133, v134);
      if (v140)
      {

        v143 = v168;

        sub_1D5CBF568(v143);

        sub_1D5D2CFE8(v130, type metadata accessor for FormatVersionRequirement);
        v63 = v161;
        return sub_1D5D2CFE8(v63, sub_1D665AD28);
      }

      v144 = v142;

      if (v144)
      {
        sub_1D6659A24();
        sub_1D72647EC();
      }

      v145 = v168;

      sub_1D5CBF568(v145);

      sub_1D5D2CFE8(v130, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
    }

    v63 = v161;
    return sub_1D5D2CFE8(v63, sub_1D665AD28);
  }

  sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v75, sub_1D665AD28);
  return sub_1D5C92A8C(v153);
}

uint64_t FormatWebEmbedBinding.URL.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatWebEmbedBinding.URL, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatWebEmbedBinding.URL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v17, v14, v18, &off_1F51F6C78);
  if (v15)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD68);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641E230(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641E230(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatVideoNodeContent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  *&v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v43 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v20 = a1;
  }

  else
  {
    v10 = a1[3];
    v44 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v11 = sub_1D7264AFC();
    LOBYTE(v10) = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v12 = v45;
    if (v10)
    {
      v13 = sub_1D726433C();
      v14 = (v13 + 40);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v16 = v14 + 2;
        v17 = *v14;
        v14 += 2;
        if (v17 >= 4)
        {
          v18 = *(v16 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v19 = v18;
          *(v19 + 8) = v17;
          *(v19 + 16) = &unk_1F50F5CA8;
          *(v19 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v12 + 8))(v9, v6);
          a1 = v44;
          goto LABEL_9;
        }
      }
    }

    sub_1D665AEB4();
    v46[0] = 0uLL;
    sub_1D726431C();
    if (v47[0] <= 1u)
    {
      v24 = v48;
      if (v47[0])
      {
        sub_1D5C30060(0, &qword_1EC8860B0, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatSwitchValue);
        *v47 = xmmword_1D7279980;
        sub_1D665B07C();
        sub_1D726431C();
        (*(v12 + 8))(v9, v6);
        v40 = *(&v46[0] + 1);
        v39 = *&v46[0];
        v41 = swift_allocObject();
        *(v41 + 16) = __PAIR128__(v40, v39);
        v24 = v48;
        v25 = (v41 | 0x2000000000000000);
      }

      else
      {
        *v47 = xmmword_1D7279980;
        sub_1D665B10C();
        sub_1D726431C();
        (*(v12 + 8))(v9, v6);
        v25 = swift_allocObject();
        v32 = v46[13];
        v25[13] = v46[12];
        v25[14] = v32;
        v25[15] = v46[14];
        v33 = v46[9];
        v25[9] = v46[8];
        v25[10] = v33;
        v34 = v46[11];
        v25[11] = v46[10];
        v25[12] = v34;
        v35 = v46[5];
        v25[5] = v46[4];
        v25[6] = v35;
        v36 = v46[7];
        v25[7] = v46[6];
        v25[8] = v36;
        v37 = v46[1];
        v25[1] = v46[0];
        v25[2] = v37;
        v38 = v46[3];
        v25[3] = v46[2];
        v25[4] = v38;
      }
    }

    else if (v47[0] == 2)
    {
      sub_1D5C30060(0, &qword_1EDF0CE58, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatUserInterfaceValue);
      *v47 = xmmword_1D7279980;
      sub_1D665AFEC();
      sub_1D726431C();
      (*(v12 + 8))(v9, v6);
      v27 = *(&v46[0] + 1);
      v26 = *&v46[0];
      v28 = swift_allocObject();
      *(v28 + 16) = __PAIR128__(v27, v26);
      v24 = v48;
      v25 = (v28 | 0x4000000000000000);
    }

    else if (v47[0] == 3)
    {
      *v47 = xmmword_1D7279980;
      sub_1D665AF98();
      sub_1D726431C();
      (*(v12 + 8))(v9, v6);
      v22 = *&v46[0];
      v45 = *(v46 + 8);
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v24 = v48;
      *(v23 + 24) = v45;
      v25 = (v23 | 0x6000000000000000);
    }

    else
    {
      sub_1D5C30060(0, &qword_1EC886098, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatSelectorValue);
      *v47 = xmmword_1D7279980;
      sub_1D665AF08();
      sub_1D726431C();
      (*(v12 + 8))(v9, v6);
      v30 = *(&v46[0] + 1);
      v29 = *&v46[0];
      v31 = swift_allocObject();
      *(v31 + 16) = __PAIR128__(v30, v29);
      v24 = v48;
      v25 = (v31 | 0x8000000000000000);
    }

    v42 = v44;
    *v24 = v25;
    v20 = v42;
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t FormatVideoNodeContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v72 = &v70 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v70 - v20;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v2;
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = sub_1D5C30408();
  v75 = v25;
  sub_1D5D2EE70(&type metadata for FormatVideoNodeContent, &type metadata for FormatCodingKeys, v30, v28, &type metadata for FormatVideoNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v27, v25, v29, &off_1F51F6C18);
  v31 = v26 >> 61;
  if ((v26 >> 61) <= 1)
  {
    if (v31)
    {
      v64 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v66 = qword_1EDF31EE8;

      v48 = v75;
      if (v66 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCD98);
      (*(*(v67 - 8) + 16))(v17, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6398114(1, v64, v65, v17);

      v51 = v17;
    }

    else
    {
      v41 = *(v26 + 208);
      v74[11] = *(v26 + 192);
      v74[12] = v41;
      v42 = *(v26 + 240);
      v74[13] = *(v26 + 224);
      v74[14] = v42;
      v43 = *(v26 + 144);
      v74[7] = *(v26 + 128);
      v74[8] = v43;
      v44 = *(v26 + 176);
      v74[9] = *(v26 + 160);
      v74[10] = v44;
      v45 = *(v26 + 80);
      v74[3] = *(v26 + 64);
      v74[4] = v45;
      v46 = *(v26 + 112);
      v74[5] = *(v26 + 96);
      v74[6] = v46;
      v47 = *(v26 + 32);
      v74[0] = *(v26 + 16);
      v74[1] = v47;
      v74[2] = *(v26 + 48);
      sub_1D5EEBE38(v74, &v73);
      v48 = v75;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCD98);
      (*(*(v49 - 8) + 16))(v21, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6397F3C(0, v74, v21);
      sub_1D5EEBE94(v74);
      v51 = v21;
    }

    goto LABEL_21;
  }

  if (v31 == 2)
  {
    v52 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v53 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v54 = qword_1EDF31EE8;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = sub_1D725BD1C();
    v56 = __swift_project_value_buffer(v55, qword_1EDFFCD98);
    (*(*(v55 - 8) + 16))(v13, v56, v55);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v48 = v75;
    sub_1D63982E8(2, v52, v53, v13);

    v51 = v13;
LABEL_21:
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
    v63 = v48;
    return sub_1D5D2CFE8(v63, sub_1D5D30DC4);
  }

  if (v31 == 3)
  {
    v32 = v26 & 0x1FFFFFFFFFFFFFFFLL;
    v33 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v34 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v35 = *(v32 + 32);
    v36 = qword_1EDF31EE8;

    v37 = v75;
    if (v36 != -1)
    {
      swift_once();
    }

    v38 = sub_1D725BD1C();
    v39 = __swift_project_value_buffer(v38, qword_1EDFFCD98);
    v40 = v72;
    (*(*(v38 - 8) + 16))(v72, v39, v38);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63984BC(3, v33, v34, v35, v40);
  }

  else
  {
    v57 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v58 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v59 = qword_1EDF31ED0;

    v37 = v75;
    if (v59 != -1)
    {
      swift_once();
    }

    v60 = sub_1D725BD1C();
    v61 = __swift_project_value_buffer(v60, qword_1EDFFCD50);
    v62 = v71;
    (*(*(v60 - 8) + 16))(v71, v61, v60);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6398654(4, v57, v58, v62);

    v40 = v62;
  }

  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  v63 = v37;
  return sub_1D5D2CFE8(v63, sub_1D5D30DC4);
}

uint64_t FormatBindingImageExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBindingImageExpressionLogic, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatBindingImageExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v17, v14, v18, &off_1F51F6C78);
  if (v15)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD30);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6419598(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6419598(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}