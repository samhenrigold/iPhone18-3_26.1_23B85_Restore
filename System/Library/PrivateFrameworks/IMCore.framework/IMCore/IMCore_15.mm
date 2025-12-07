uint64_t sub_1A84B8A74(uint64_t a1, unint64_t a2)
{
  v2 = sub_1A84E5F5C();
  v6 = sub_1A84B8AF4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1A84B8AF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1A84E634C();
    if (!v9 || (v10 = v9, v11 = sub_1A8243F5C(v9, 0), v12 = sub_1A84B8C4C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1A84E5E4C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1A84E5E4C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1A84E64CC();
LABEL_4:

  return sub_1A84E5E4C();
}

unint64_t sub_1A84B8C4C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1A84B8E6C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1A84E5EEC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1A84E64CC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1A84B8E6C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1A84E5ECC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1A84B8E6C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A84E5EFC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC56A9D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1A84B8EE8(void *a1)
{
  v82 = sub_1A84E538C();
  v2 = *(v82 - 8);
  v3 = MEMORY[0x1EEE9AC00](v82);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v77 = &v74 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v74 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E8C38, &qword_1A850A9A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v74 - v10;
  v12 = sub_1A84E53BC();
  v81 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A84E558C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 dataSource];
  if (!result)
  {
    goto LABEL_100;
  }

  v18 = result;
  v19 = [result bundleID];

  if (!v19)
  {
    return 0;
  }

  v75 = v15;
  v76 = v12;
  v20 = sub_1A84E5DBC();
  v22 = v21;

  v23 = IMBalloonExtensionIDWithSuffix();
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v74 = v14;
  v25 = sub_1A84E5DBC();
  v27 = v26;

  if (v20 == v25 && v22 == v27)
  {

    goto LABEL_8;
  }

  v28 = sub_1A84E67AC();

  if ((v28 & 1) == 0)
  {
LABEL_12:

    return 0;
  }

LABEL_8:
  result = [a1 dataSource];
  if (!result)
  {
LABEL_101:
    __break(1u);
    return result;
  }

  v29 = result;

  v30 = [v29 url];

  v31 = v74;
  if (!v30)
  {
    return 0;
  }

  v32 = v80;
  sub_1A84E554C();

  sub_1A84E53AC();
  v33 = v81;
  v34 = v76;
  if ((*(v81 + 48))(v11, 1, v76) == 1)
  {
    (*(v75 + 8))(v32, v31);
    sub_1A824B2D4(v11, &qword_1EB2E8C38, &qword_1A850A9A8);
    return 0;
  }

  v35 = v79;
  (*(v33 + 32))(v79, v11, v34);
  v36 = sub_1A84E539C();
  if (!v36)
  {
    (*(v33 + 8))(v35, v34);
    (*(v75 + 8))(v32, v31);
    return 0;
  }

  v37 = v36;
  v38 = *(v36 + 16);
  v39 = v82;
  if (!v38)
  {
LABEL_22:

    (*(v81 + 8))(v79, v76);
    (*(v75 + 8))(v80, v74);
    return 0;
  }

  v40 = 0;
  v41 = (v2 + 16);
  v42 = (v2 + 8);
  while (1)
  {
    if (v40 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_93;
    }

    (*(v2 + 16))(v5, v37 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v40, v39);
    if (sub_1A84E536C() == 99 && v43 == 0xE100000000000000)
    {

      goto LABEL_26;
    }

    v44 = sub_1A84E67AC();

    if (v44)
    {
      break;
    }

    ++v40;
    v39 = v82;
    (*v42)(v5, v82);
    if (v38 == v40)
    {
      goto LABEL_22;
    }
  }

  v39 = v82;
LABEL_26:

  v45 = *(v2 + 32);
  v46 = v77;
  v45(v77, v5, v39);
  v41 = v78;
  v45(v78, v46, v39);
  result = sub_1A84E537C();
  v2 = v74;
  v38 = v75;
  v40 = v76;
  if (!v47)
  {
    (*v42)(v41, v39);
    (*(v81 + 8))(v79, v40);
    (*(v38 + 8))(v80, v2);
    return 0;
  }

  v48 = v47;
  v49 = HIBYTE(v47) & 0xF;
  v50 = result & 0xFFFFFFFFFFFFLL;
  if ((v48 & 0x2000000000000000) != 0)
  {
    v51 = v49;
  }

  else
  {
    v51 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
LABEL_93:
    (*v42)(v41, v39);
    (*(v81 + 8))(v79, v40);
    (*(v38 + 8))(v80, v2);
    goto LABEL_12;
  }

  if ((v48 & 0x1000000000000000) != 0)
  {
    v84 = 0;
    v54 = sub_1A84B84E8(result, v48, 10);
    v72 = v73;
    v52 = v79;
    goto LABEL_90;
  }

  v52 = v79;
  if ((v48 & 0x2000000000000000) != 0)
  {
    v83[0] = result;
    v83[1] = v48 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (!v49)
      {
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (--v49)
      {
        v54 = 0;
        v64 = v83 + 1;
        while (1)
        {
          v65 = *v64 - 48;
          if (v65 > 9)
          {
            break;
          }

          v66 = 10 * v54;
          if ((v54 * 10) >> 64 != (10 * v54) >> 63)
          {
            break;
          }

          v54 = v66 + v65;
          if (__OFADD__(v66, v65))
          {
            break;
          }

          ++v64;
          if (!--v49)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else if (result == 45)
    {
      if (!v49)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (--v49)
      {
        v54 = 0;
        v58 = v83 + 1;
        while (1)
        {
          v59 = *v58 - 48;
          if (v59 > 9)
          {
            break;
          }

          v60 = 10 * v54;
          if ((v54 * 10) >> 64 != (10 * v54) >> 63)
          {
            break;
          }

          v54 = v60 - v59;
          if (__OFSUB__(v60, v59))
          {
            break;
          }

          ++v58;
          if (!--v49)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else if (v49)
    {
      v54 = 0;
      v69 = v83;
      while (1)
      {
        v70 = *v69 - 48;
        if (v70 > 9)
        {
          break;
        }

        v71 = 10 * v54;
        if ((v54 * 10) >> 64 != (10 * v54) >> 63)
        {
          break;
        }

        v54 = v71 + v70;
        if (__OFADD__(v71, v70))
        {
          break;
        }

        ++v69;
        if (!--v49)
        {
          goto LABEL_89;
        }
      }
    }

LABEL_88:
    v54 = 0;
    LOBYTE(v49) = 1;
    goto LABEL_89;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v48 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1A84E64CC();
  }

  v53 = *result;
  if (v53 == 43)
  {
    if (v50 < 1)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v49 = v50 - 1;
    if (v50 == 1)
    {
      goto LABEL_88;
    }

    v54 = 0;
    if (!result)
    {
      goto LABEL_80;
    }

    v61 = (result + 1);
    while (1)
    {
      v62 = *v61 - 48;
      if (v62 > 9)
      {
        goto LABEL_88;
      }

      v63 = 10 * v54;
      if ((v54 * 10) >> 64 != (10 * v54) >> 63)
      {
        goto LABEL_88;
      }

      v54 = v63 + v62;
      if (__OFADD__(v63, v62))
      {
        goto LABEL_88;
      }

      ++v61;
      if (!--v49)
      {
        goto LABEL_89;
      }
    }
  }

  if (v53 != 45)
  {
    if (!v50)
    {
      goto LABEL_88;
    }

    v54 = 0;
    if (!result)
    {
      goto LABEL_80;
    }

    while (1)
    {
      v67 = *result - 48;
      if (v67 > 9)
      {
        goto LABEL_88;
      }

      v68 = 10 * v54;
      if ((v54 * 10) >> 64 != (10 * v54) >> 63)
      {
        goto LABEL_88;
      }

      v54 = v68 + v67;
      if (__OFADD__(v68, v67))
      {
        goto LABEL_88;
      }

      ++result;
      if (!--v50)
      {
        goto LABEL_80;
      }
    }
  }

  if (v50 < 1)
  {
    __break(1u);
    goto LABEL_97;
  }

  v49 = v50 - 1;
  if (v50 == 1)
  {
    goto LABEL_88;
  }

  v54 = 0;
  if (result)
  {
    v55 = (result + 1);
    while (1)
    {
      v56 = *v55 - 48;
      if (v56 > 9)
      {
        goto LABEL_88;
      }

      v57 = 10 * v54;
      if ((v54 * 10) >> 64 != (10 * v54) >> 63)
      {
        goto LABEL_88;
      }

      v54 = v57 - v56;
      if (__OFSUB__(v57, v56))
      {
        goto LABEL_88;
      }

      ++v55;
      if (!--v49)
      {
        goto LABEL_89;
      }
    }
  }

LABEL_80:
  LOBYTE(v49) = 0;
LABEL_89:
  v84 = v49;
  v72 = v49;
LABEL_90:
  (*v42)(v41, v82);
  (*(v81 + 8))(v52, v76);
  (*(v75 + 8))(v80, v2);

  result = v54;
  if (v72)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A84B9878(uint64_t a1)
{
  v1[2] = a1;
  sub_1A83EA2FC(&qword_1EB2E8C00, &qword_1A850A938);
  v1[3] = swift_task_alloc();
  v2 = sub_1A84E546C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_1A84E593C();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E8C08, &qword_1A850A940);
  v1[12] = swift_task_alloc();
  v4 = sub_1A84E5A3C();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_1A83EA2FC(&qword_1EB2E8C10, &qword_1A850A948);
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v6 = sub_1A84E558C();
  v1[19] = v6;
  v1[20] = *(v6 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84B9B48, 0, 0);
}

uint64_t sub_1A84B9B48()
{
  *(v0 + 184) = sub_1A84E609C();
  *(v0 + 192) = sub_1A84E608C();
  v2 = sub_1A84E605C();

  return MEMORY[0x1EEE6DFA0](sub_1A84B9BE0, v2, v1);
}

uint64_t sub_1A84B9BE0()
{
  v1 = *(v0 + 16);

  *(v0 + 200) = [v1 dataSource];

  return MEMORY[0x1EEE6DFA0](sub_1A84B9C68, 0, 0);
}

uint64_t sub_1A84B9C68(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 200);
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v5 = [*(v3 + 200) bundleID];

  if (v5)
  {
    v6 = sub_1A84E5DBC();
    v8 = v7;

    *(v3 + 208) = v8;
    v9 = IMBalloonExtensionIDWithSuffix();
    if (!v9)
    {
LABEL_9:

      goto LABEL_10;
    }

    v10 = v9;
    v11 = sub_1A84E5DBC();
    v13 = v12;

    if (v6 == v11 && v8 == v13)
    {
    }

    else
    {
      v15 = sub_1A84E67AC();

      if ((v15 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    *(v3 + 216) = sub_1A84E608C();
    v19 = sub_1A84E605C();
    v21 = v20;
    a1 = sub_1A84B9E84;
    a2 = v19;
    a3 = v21;

    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

LABEL_10:

  v16 = *(v3 + 8);
  v17 = MEMORY[0x1E69E7CC0];

  return v16(v17);
}

uint64_t sub_1A84B9E84()
{
  v1 = *(v0 + 16);

  *(v0 + 224) = [v1 dataSource];

  return MEMORY[0x1EEE6DFA0](sub_1A84B9F0C, 0, 0);
}

void sub_1A84B9F0C()
{
  v1 = v0[28];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = [v1 url];

  if (v2)
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[19];
    v6 = v0[20];
    sub_1A84E554C();

    (*(v6 + 32))(v3, v4, v5);
    v7 = MEMORY[0x1E69A6708];
    sub_1A84BC0B8(&qword_1EB2E8C18, MEMORY[0x1E69A6708], MEMORY[0x1E69A6718]);
    sub_1A84BC0B8(&qword_1EB2E8C20, v7, MEMORY[0x1E69A6710]);
    sub_1A84E5ACC();
    sub_1A84E5ABC();
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12];
    if ((*(v9 + 48))(v10, 1, v8) != 1)
    {
      (*(v9 + 32))(v0[15], v10, v8);
      v18 = sub_1A84E5A2C();
      v59 = MEMORY[0x1E69E7CC0];
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v0[10];
        v22 = *(v20 + 16);
        v20 += 16;
        v21 = v22;
        v23 = v18 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
        v24 = v0[5];
        v53 = (v24 + 48);
        v49 = (v24 + 16);
        v50 = (v24 + 32);
        v48 = (v24 + 8);
        v55 = (v20 - 8);
        v25 = MEMORY[0x1E69E7CC0];
        v56 = *(v20 + 56);
        v54 = v22;
        v22(v0[11], v23, v0[9]);
        while (1)
        {
          sub_1A84E591C();
          if (v26)
          {
            sub_1A84E592C();
            if (v27)
            {
              v29 = v0[3];
              v28 = v0[4];
              sub_1A84E590C();
              if ((*v53)(v29, 1, v28) == 1)
              {
                v30 = v0[3];
                (*v55)(v0[11], v0[9]);

                sub_1A824B2D4(v30, &qword_1EB2E8C00, &qword_1A850A938);
                v21 = v54;
              }

              else
              {
                v58 = v25;
                v32 = v0[7];
                v31 = v0[8];
                v33 = v0[4];
                (*v50)(v31, v0[3], v33);
                sub_1A8244B68(0, &qword_1EB2E8C28, 0x1E696AAB0);
                (*v49)(v32, v31, v33);
                swift_getKeyPath();
                sub_1A84E543C();
                sub_1A84BC0B8(&qword_1EB2E8C30, MEMORY[0x1E69A6638], MEMORY[0x1E69A6630]);
                v34 = sub_1A84E626C();
                v35 = v0[8];
                v51 = v0[9];
                v52 = v0[11];
                v36 = v0[4];
                v37 = objc_allocWithZone(IMPollOption);
                v38 = sub_1A84E5D8C();

                v39 = sub_1A84E5D8C();

                v40 = [v37 initWithOptionIdentifier:v38 pollText:v39 attributedPollText:v34];

                (*v48)(v35, v36);
                v41 = (*v55)(v52, v51);
                v25 = v58;
                v21 = v54;
                if (v40)
                {
                  MEMORY[0x1AC56AAD0](v41);
                  if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1A84E601C();
                    v21 = v54;
                  }

                  sub_1A84E603C();
                  v25 = v59;
                }
              }
            }

            else
            {
              (*v55)(v0[11], v0[9]);
            }
          }

          else
          {
            (*v55)(v0[11], v0[9]);
          }

          v23 += v56;
          if (!--v19)
          {
            break;
          }

          v21(v0[11], v23, v0[9]);
        }
      }

      else
      {

        v25 = MEMORY[0x1E69E7CC0];
      }

      v57 = v25;
      v42 = v0[22];
      v43 = v0[19];
      v44 = v0[20];
      v46 = v0[17];
      v45 = v0[18];
      v47 = v0[16];
      (*(v0[14] + 8))(v0[15], v0[13]);
      (*(v46 + 8))(v45, v47);
      (*(v44 + 8))(v42, v43);
      goto LABEL_6;
    }

    v11 = v0[22];
    v12 = v0[19];
    v13 = v0[20];
    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[16];
    sub_1A824B2D4(v10, &qword_1EB2E8C08, &qword_1A850A940);
    (*(v15 + 8))(v14, v16);
    (*(v13 + 8))(v11, v12);
  }

  v57 = MEMORY[0x1E69E7CC0];
LABEL_6:

  v17 = v0[1];

  v17(v57);
}

uint64_t sub_1A84BA620(uint64_t a1)
{
  v1[13] = a1;
  sub_1A83EA2FC(&qword_1EB2E8C00, &qword_1A850A938);
  v1[14] = swift_task_alloc();
  v2 = sub_1A84E546C();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v3 = sub_1A84E593C();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E8C08, &qword_1A850A940);
  v1[23] = swift_task_alloc();
  v4 = sub_1A84E5A3C();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v5 = sub_1A83EA2FC(&qword_1EB2E8C10, &qword_1A850A948);
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v1[30] = swift_task_alloc();
  v6 = sub_1A84E558C();
  v1[31] = v6;
  v1[32] = *(v6 - 8);
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84BA91C, 0, 0);
}

uint64_t sub_1A84BA91C()
{
  v1 = [*(v0 + 104) pluginBundleID];
  if (!v1)
  {
    goto LABEL_18;
  }

  v2 = v1;
  v3 = sub_1A84E5DBC();
  v5 = v4;

  v6 = IMBalloonExtensionIDWithSuffix();
  if (!v6)
  {

LABEL_18:
    v78 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v7 = v6;
  v8 = sub_1A84E5DBC();
  v10 = v9;

  if (v3 == v8 && v5 == v10)
  {
  }

  else
  {
    v12 = sub_1A84E67AC();

    if ((v12 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v13 = [*(v0 + 104) payloadDictionary];
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    v78 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v15 = v13;
  v16 = sub_1A84E5D3C();

  *(v0 + 88) = sub_1A84E5DBC();
  *(v0 + 96) = v17;
  sub_1A84E641C();
  if (!*(v16 + 16) || (v18 = sub_1A8250C0C(v0 + 16), (v19 & 1) == 0))
  {
    v28 = *(v0 + 248);
    v29 = *(v0 + 256);
    v30 = *(v0 + 240);

    sub_1A8250D18(v0 + 16);
    (*(v29 + 56))(v30, 1, 1, v28);
    goto LABEL_17;
  }

  v20 = *(v0 + 248);
  v21 = *(v0 + 256);
  v22 = *(v0 + 240);
  sub_1A8244F40(*(v16 + 56) + 32 * v18, v0 + 56);
  sub_1A8250D18(v0 + 16);

  v23 = swift_dynamicCast();
  (*(v21 + 56))(v22, v23 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
LABEL_17:
    sub_1A824B2D4(*(v0 + 240), &qword_1EB2E7068, &unk_1A8501EB0);
    goto LABEL_18;
  }

  (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));
  v24 = MEMORY[0x1E69A6708];
  sub_1A84BC0B8(&qword_1EB2E8C18, MEMORY[0x1E69A6708], MEMORY[0x1E69A6718]);
  sub_1A84BC0B8(&qword_1EB2E8C20, v24, MEMORY[0x1E69A6710]);
  sub_1A84E5ACC();
  sub_1A84E5ABC();
  v26 = *(v0 + 192);
  v25 = *(v0 + 200);
  v27 = *(v0 + 184);
  v33 = (*(v25 + 48))(v27, 1, v26);
  if (v33 == 1)
  {
    v35 = *(v0 + 256);
    v34 = *(v0 + 264);
    v36 = *(v0 + 248);
    v38 = *(v0 + 224);
    v37 = *(v0 + 232);
    v39 = *(v0 + 216);
    sub_1A824B2D4(v27, &qword_1EB2E8C08, &qword_1A850A940);
    (*(v38 + 8))(v37, v39);
    (*(v35 + 8))(v34, v36);
    goto LABEL_18;
  }

  (*(v25 + 32))(*(v0 + 208), v27, v26);
  v40 = sub_1A84E5A2C();
  v80 = v14;
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = *(v0 + 168);
    v44 = *(v42 + 16);
    v42 += 16;
    v43 = v44;
    v45 = v40 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v46 = *(v0 + 128);
    v74 = (v46 + 48);
    v70 = (v46 + 16);
    v71 = (v46 + 32);
    v69 = (v46 + 8);
    v76 = *(v42 + 56);
    v77 = (v42 - 8);
    v75 = v44;
    v44(*(v0 + 176), v45, *(v0 + 160));
    while (1)
    {
      sub_1A84E591C();
      if (v47)
      {
        sub_1A84E592C();
        if (v48)
        {
          v50 = *(v0 + 112);
          v49 = *(v0 + 120);
          sub_1A84E590C();
          if ((*v74)(v50, 1, v49) == 1)
          {
            v51 = *(v0 + 112);
            (*v77)(*(v0 + 176), *(v0 + 160));

            sub_1A824B2D4(v51, &qword_1EB2E8C00, &qword_1A850A938);
            v43 = v75;
          }

          else
          {
            v79 = v14;
            v53 = *(v0 + 144);
            v52 = *(v0 + 152);
            v54 = *(v0 + 120);
            (*v71)(v52, *(v0 + 112), v54);
            sub_1A8244B68(0, &qword_1EB2E8C28, 0x1E696AAB0);
            (*v70)(v53, v52, v54);
            swift_getKeyPath();
            sub_1A84E543C();
            sub_1A84BC0B8(&qword_1EB2E8C30, MEMORY[0x1E69A6638], MEMORY[0x1E69A6630]);
            v55 = sub_1A84E626C();
            v56 = *(v0 + 152);
            v72 = *(v0 + 160);
            v73 = *(v0 + 176);
            v57 = *(v0 + 120);
            v58 = objc_allocWithZone(IMPollOption);
            v59 = sub_1A84E5D8C();

            v60 = sub_1A84E5D8C();

            v61 = [v58 initWithOptionIdentifier:v59 pollText:v60 attributedPollText:v55];

            (*v69)(v56, v57);
            v62 = (*v77)(v73, v72);
            v14 = v79;
            v43 = v75;
            if (v61)
            {
              MEMORY[0x1AC56AAD0](v62);
              if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1A84E601C();
                v43 = v75;
              }

              sub_1A84E603C();
              v14 = v80;
            }
          }
        }

        else
        {
          (*v77)(*(v0 + 176), *(v0 + 160));
        }
      }

      else
      {
        (*v77)(*(v0 + 176), *(v0 + 160));
      }

      v45 += v76;
      if (!--v41)
      {
        break;
      }

      v43(*(v0 + 176), v45, *(v0 + 160));
    }
  }

  v78 = v14;
  v63 = *(v0 + 256);
  v64 = *(v0 + 264);
  v65 = *(v0 + 248);
  v67 = *(v0 + 224);
  v66 = *(v0 + 232);
  v68 = *(v0 + 216);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v67 + 8))(v66, v68);
  (*(v63 + 8))(v64, v65);
LABEL_19:

  v31 = *(v0 + 8);

  return v31(v78);
}

uint64_t sub_1A84BB1EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A84E5BBC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E8BD8, &qword_1A850A900);
  v1[6] = swift_task_alloc();
  v3 = sub_1A84E59DC();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = sub_1A84E558C();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_1A83EA2FC(&qword_1EB2E8BE0, &qword_1A850A908);
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84BB448, 0, 0);
}

uint64_t sub_1A84BB448()
{
  *(v0 + 144) = sub_1A84E609C();
  *(v0 + 152) = sub_1A84E608C();
  v2 = sub_1A84E605C();

  return MEMORY[0x1EEE6DFA0](sub_1A84BB4E0, v2, v1);
}

uint64_t sub_1A84BB4E0()
{
  v1 = *(v0 + 16);

  *(v0 + 160) = [v1 dataSource];

  return MEMORY[0x1EEE6DFA0](sub_1A84BB568, 0, 0);
}

uint64_t sub_1A84BB568(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 160);
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v5 = [*(v3 + 160) bundleID];

  if (v5)
  {
    v6 = sub_1A84E5DBC();
    v8 = v7;

    v9 = IMBalloonExtensionIDWithSuffix();
    if (v9)
    {
      v10 = v9;
      v11 = sub_1A84E5DBC();
      v13 = v12;

      if (v6 == v11 && v8 == v13)
      {

        goto LABEL_15;
      }

      v15 = sub_1A84E67AC();

      if (v15)
      {
LABEL_15:
        *(v3 + 168) = sub_1A84E608C();
        v19 = sub_1A84E605C();
        v21 = v20;
        a1 = sub_1A84BB774;
        a2 = v19;
        a3 = v21;

        return MEMORY[0x1EEE6DFA0](a1, a2, a3);
      }
    }

    else
    {
    }
  }

  v16 = sub_1A83EC6AC(MEMORY[0x1E69E7CC0]);

  v17 = *(v3 + 8);

  return v17(v16);
}

uint64_t sub_1A84BB774()
{
  v1 = *(v0 + 16);

  *(v0 + 176) = [v1 visibleAssociatedMessageChatItems];

  return MEMORY[0x1EEE6DFA0](sub_1A84BB7FC, 0, 0);
}

unint64_t sub_1A84BB7FC()
{
  v1 = v0[22];
  if (!v1)
  {
    v52 = sub_1A83EC6AC(MEMORY[0x1E69E7CC0]);
    goto LABEL_52;
  }

  sub_1A8244B68(0, &qword_1EB2E8BE8, off_1E780D7D0);
  v2 = sub_1A84E5FFC();

  v3 = sub_1A83EC6AC(MEMORY[0x1E69E7CC0]);
  v4 = MEMORY[0x1E69A66E8];
  sub_1A84BC0B8(&qword_1EB2E8BF0, MEMORY[0x1E69A66E8], MEMORY[0x1E69A66F8]);
  sub_1A84BC0B8(&qword_1EB2E8BF8, v4, MEMORY[0x1E69A66F0]);
  v5 = v2;
  sub_1A84E5ACC();
  if (v2 >> 62)
  {
LABEL_60:
    v6 = sub_1A84E654C();
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v3;
  v70 = v5;
  if (!v6)
  {
LABEL_50:
    v50 = v0[16];
    v49 = v0[17];
    v51 = v0[15];

    (*(v50 + 8))(v49, v51);
    v52 = v61;
LABEL_52:

    v53 = v0[1];

    return v53(v52);
  }

  v3 = 0;
  v7 = v5 & 0xC000000000000001;
  v8 = v0[13];
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v10 = v0[8];
  v11 = (v8 + 56);
  v66 = v5 + 32;
  v67 = (v8 + 48);
  v62 = (v8 + 8);
  v63 = (v8 + 32);
  v60 = (v10 + 48);
  v58 = (v10 + 32);
  v56 = v0[4];
  v57 = (v10 + 8);
  v64 = v5 & 0xFFFFFFFFFFFFFF8;
  v65 = (v8 + 56);
  while (1)
  {
    if (v7)
    {
      v13 = MEMORY[0x1AC56AF80](v3, v70);
    }

    else
    {
      if (v3 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_60;
      }

      v13 = *(v66 + 8 * v3);
    }

    v14 = v13;
    v15 = __OFADD__(v3++, 1);
    if (v15)
    {
      break;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (!v16 || (v17 = [v16 dataSource]) == 0)
    {
      v12 = v0[11];
      v5 = v0[12];

      (*v11)(v12, 1, 1, v5);
LABEL_7:
      sub_1A824B2D4(v0[11], &qword_1EB2E7068, &unk_1A8501EB0);
      goto LABEL_8;
    }

    v18 = v17;
    v19 = [v17 url];

    if (v19)
    {
      sub_1A84E554C();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = v0[11];
    v5 = v0[12];
    v22 = v0[10];
    (*v11)(v22, v20, 1, v5);
    sub_1A83FB148(v22, v21);
    if ((*v67)(v21, 1, v5) == 1)
    {

      goto LABEL_7;
    }

    (*v63)(v0[14], v0[11], v0[12]);
    sub_1A84E5ABC();
    v23 = v0[6];
    v5 = v0[7];
    if ((*v60)(v23, 1, v5) != 1)
    {
      (*v58)(v0[9], v23, v5);
      v11 = v65;
      v59 = [v14 sender];
      if (v59)
      {
        v24 = sub_1A84E59CC();
        v25 = *(v24 + 16);
        if (v25)
        {
          v54 = v7;
          v55 = v6;
          v26 = v24 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
          v69 = *(v56 + 72);
          v68 = *(v56 + 16);
          v27 = MEMORY[0x1E69E7CC0];
          do
          {
            v29 = v0[5];
            v30 = v0[3];
            v68(v29, v26, v30);
            v31 = sub_1A84E5BAC();
            v33 = v32;
            (*(v56 + 8))(v29, v30);
            if (v33)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_1A824A1FC(0, *(v27 + 2) + 1, 1, v27);
              }

              v35 = *(v27 + 2);
              v34 = *(v27 + 3);
              if (v35 >= v34 >> 1)
              {
                v27 = sub_1A824A1FC((v34 > 1), v35 + 1, 1, v27);
              }

              *(v27 + 2) = v35 + 1;
              v28 = &v27[16 * v35];
              *(v28 + 4) = v31;
              *(v28 + 5) = v33;
            }

            v26 += v69;
            --v25;
          }

          while (v25);

          v7 = v54;
          v6 = v55;
          v11 = v65;
        }

        else
        {

          v27 = MEMORY[0x1E69E7CC0];
        }

        v9 = v64;
        if (*(v27 + 2))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          result = sub_1A8489FA0(v59);
          v39 = v61[2];
          v40 = (v38 & 1) == 0;
          v15 = __OFADD__(v39, v40);
          v41 = v39 + v40;
          if (v15)
          {
            __break(1u);
LABEL_62:
            __break(1u);
            return result;
          }

          v42 = v38;
          if (v61[3] >= v41)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_43;
            }

            v44 = v6;
            v45 = result;
            sub_1A848F5C8();
            result = v45;
            v6 = v44;
            v11 = v65;
            if ((v42 & 1) == 0)
            {
              goto LABEL_46;
            }

LABEL_44:
            *(v61[7] + 8 * result) = v27;
          }

          else
          {
            sub_1A848C508(v41, isUniquelyReferenced_nonNull_native);
            result = sub_1A8489FA0(v59);
            if ((v42 & 1) != (v43 & 1))
            {
              goto LABEL_56;
            }

LABEL_43:
            v11 = v65;
            if (v42)
            {
              goto LABEL_44;
            }

LABEL_46:
            v61[(result >> 6) + 8] |= 1 << result;
            *(v61[6] + 8 * result) = v59;
            *(v61[7] + 8 * result) = v27;
            v46 = v61[2];
            v15 = __OFADD__(v46, 1);
            v47 = v46 + 1;
            if (v15)
            {
              goto LABEL_62;
            }

            v61[2] = v47;
          }
        }

        else
        {
        }
      }

      else
      {

        v9 = v64;
      }

      v5 = v0[14];
      v48 = v0[12];
      (*v57)(v0[9], v0[7]);
      (*v62)(v5, v48);
      goto LABEL_8;
    }

    (*v62)(v0[14], v0[12]);

    v11 = v65;
    sub_1A824B2D4(v0[6], &qword_1EB2E8BD8, &qword_1A850A900);
    v9 = v64;
LABEL_8:
    if (v3 == v6)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_56:
  sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);

  return sub_1A84E67EC();
}

unint64_t sub_1A84BC050()
{
  result = qword_1EB2E8BD0;
  if (!qword_1EB2E8BD0)
  {
    sub_1A8244B68(255, &qword_1EB2E4760, off_1E780DA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8BD0);
  }

  return result;
}

uint64_t sub_1A84BC0B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A84BC100()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A824FBE0;

  return sub_1A84B7A24(v2, v3, v4);
}

uint64_t sub_1A84BC1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A82505F4;

  return sub_1A8247EC0(a1, v4, v5, v6);
}

uint64_t sub_1A84BC280()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A84BC2C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A824FBE0;

  return sub_1A84B77C8(v2, v3, v4);
}

uint64_t ImportExport.ArchiveWritingIterator.__allocating_init(withArchivingOptions:withArchiver:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator) = 0;
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
  v6 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver) = a2;
  sub_1A84BF2C0(a1, v4 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  *(v4 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations) = MEMORY[0x1E69E7CC0];
  return v4;
}

uint64_t ImportExport.ArchiveWritingIterator.init(withArchivingOptions:withArchiver:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator) = 0;
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
  v6 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver) = a2;
  sub_1A84BF2C0(a1, v2 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations) = MEMORY[0x1E69E7CC0];
  return v2;
}

uint64_t sub_1A84BC530(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1A84E5C9C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v2[8] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for ImportExport.MessageBatch(0);
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84BC75C, 0, 0);
}

uint64_t sub_1A84BC75C()
{
  sub_1A84BD65C();
  v1 = *(v0[4] + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator);
  v0[18] = v1;
  if (!v1)
  {
    return sub_1A84E653C();
  }

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1A84BC928;
  v3 = v0[14];

  return sub_1A844F4DC(v3);
}

uint64_t sub_1A84BC928()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1A84BD498;
  }

  else
  {
    v2 = sub_1A84BCA3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A84BCA3C()
{
  v1 = v0[14];
  v2 = (*(v0[16] + 48))(v1, 1, v0[15]);
  v3 = v0[4];
  if (v2 == 1)
  {
    v4 = v0[20];
    sub_1A824B2D4(v1, &qword_1EB2E7CF8, &qword_1A8509020);
    sub_1A84BD930();
    if (!v4)
    {
      v19 = v0[3];
      v20 = type metadata accessor for ImportExport.ArchivedConversationBatch(0);
      (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    }

    goto LABEL_13;
  }

  sub_1A84BF2C0(v1, v0[17], type metadata accessor for ImportExport.MessageBatch);
  if ((*(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions) & 1) == 0 || (v5 = *(v0[17] + *(v0[15] + 24)), (v0[21] = v5) == 0) || !*(*(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs) + 16))
  {
LABEL_12:
    v14 = v0[17];
    v16 = v0[3];
    v15 = v0[4];
    v17 = objc_autoreleasePoolPush();
    sub_1A84BDF08(v15, v14, v0 + 2, v16);
    v18 = v0[17];
    objc_autoreleasePoolPop(v17);

    sub_1A84BF148(v18, type metadata accessor for ImportExport.MessageBatch);
LABEL_13:

    v21 = v0[1];

    return v21();
  }

  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  swift_allocObject();
  v6 = swift_retain_n();
  v0[22] = ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(v6);
  v7 = ImportExport.AttachmentDownloadIterator.next()();
  if (!v7)
  {

    goto LABEL_12;
  }

  v0[23] = v7;
  v8 = v0[8];
  v9 = sub_1A84E558C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_1A84BCE0C;
  v12 = v0[8];
  v11 = v0[9];

  return sub_1A8495FCC(v11, v12, 0, 1);
}

uint64_t sub_1A84BCE0C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  sub_1A824B2D4(*(v2 + 64), &qword_1EB2E7068, &unk_1A8501EB0);
  if (v0)
  {
    v3 = sub_1A84BD55C;
  }

  else
  {
    v3 = sub_1A84BCF50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A84BCF50()
{
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {

    sub_1A824B2D4(v1, &qword_1EB2E7348, &qword_1A8504400);
  }

  else
  {
    v3 = v0[12];
    v2 = v0[13];
    sub_1A84BF2C0(v1, v2, type metadata accessor for ImportExport.AttachmentDownloadError);
    sub_1A84E5C8C();
    sub_1A84BF258(v2, v3, type metadata accessor for ImportExport.AttachmentDownloadError);
    v4 = sub_1A84E5C7C();
    v5 = sub_1A84E619C();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[6];
    if (v6)
    {
      v31 = v0[5];
      v32 = v0[7];
      v30 = v0[13];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      sub_1A84BF1A8(&qword_1EB2E78E0, type metadata accessor for ImportExport.AttachmentDownloadError, &protocol conformance descriptor for ImportExport.AttachmentDownloadError);
      swift_allocError();
      sub_1A84BF258(v8, v12, type metadata accessor for ImportExport.AttachmentDownloadError);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      sub_1A84BF148(v8, type metadata accessor for ImportExport.AttachmentDownloadError);
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1A823F000, v4, v5, "Attachment downloder failed: %@", v10, 0xCu);
      sub_1A824B2D4(v11, &unk_1EB2E9070, &unk_1A8501A90);
      MEMORY[0x1AC56D3F0](v11, -1, -1);
      MEMORY[0x1AC56D3F0](v10, -1, -1);

      (*(v9 + 8))(v32, v31);
      v14 = v30;
    }

    else
    {
      v15 = v0[7];
      v16 = v0[5];

      sub_1A84BF148(v8, type metadata accessor for ImportExport.AttachmentDownloadError);
      (*(v9 + 8))(v15, v16);
      v14 = v7;
    }

    sub_1A84BF148(v14, type metadata accessor for ImportExport.AttachmentDownloadError);
  }

  v17 = ImportExport.AttachmentDownloadIterator.next()();
  if (v17)
  {
    v0[23] = v17;
    v18 = v0[8];
    v19 = sub_1A84E558C();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = swift_task_alloc();
    v0[24] = v20;
    *v20 = v0;
    v20[1] = sub_1A84BCE0C;
    v22 = v0[8];
    v21 = v0[9];

    return sub_1A8495FCC(v21, v22, 0, 1);
  }

  else
  {

    v24 = v0[17];
    v26 = v0[3];
    v25 = v0[4];
    v27 = objc_autoreleasePoolPush();
    sub_1A84BDF08(v25, v24, v0 + 2, v26);
    v28 = v0[17];
    objc_autoreleasePoolPop(v27);

    sub_1A84BF148(v28, type metadata accessor for ImportExport.MessageBatch);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1A84BD498()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A84BD55C()
{
  v1 = *(v0 + 136);

  sub_1A84BF148(v1, type metadata accessor for ImportExport.MessageBatch);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A84BD65C()
{
  v1 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A83EA2FC(&qword_1EB2E89A8, &unk_1A8509CD8);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator;
  if (!*(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator))
  {
    v9 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
    swift_beginAccess();
    sub_1A84BF1F0(v7, v0 + v10, &qword_1EB2E89A8, &unk_1A8509CD8);
    swift_endAccess();
    v11 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations;
    swift_beginAccess();
    *(v0 + v11) = MEMORY[0x1E69E7CC0];

    v12 = *(*(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver) + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter);
    sub_1A84BF258(v12 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions, v3, type metadata accessor for ImportExport.ExportOptions);
    v13 = *(v12 + 16);
    type metadata accessor for ImportExport.ExportIterator(0);
    v14 = swift_allocObject();
    *(v14 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
    *(v14 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter) = v12;
    sub_1A84BF2C0(v3, v14 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);
    *(v14 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID) = -1;
    *(v14 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations) = v13;
    *(v14 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;
    *(v0 + v8) = v14;

    if (!*(v0 + v8))
    {
      result = sub_1A84E653C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A84BD930()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v40 = &v37 - v2;
  v3 = sub_1A84E52BC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A84E558C();
  v43 = *(v45 - 8);
  v5 = v43;
  v6 = MEMORY[0x1EEE9AC00](v45);
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v10 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations;
  swift_beginAccess();
  v39 = v13;
  v14 = *(v0 + v13);
  v37 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver);
  v15 = *(v37 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter);
  swift_beginAccess();
  v16 = *(v15 + 24);
  v17 = *(v5 + 56);
  v18 = v45;
  v17(v12, 1, 1, v45);
  *&v12[*(v10 + 20)] = v14;
  v41 = v0;
  v42 = v10;
  *&v12[*(v10 + 24)] = v16;
  v44 = type metadata accessor for ImportExport.ArchivingOptions(0);

  v19 = v43;

  v20 = v18;
  sub_1A84E552C();
  sub_1A824B2D4(v12, &qword_1EB2E7068, &unk_1A8501EB0);
  (*(v19 + 16))(v12, v9, v18);
  v49 = v12;
  v17(v12, 0, 1, v18);
  if (qword_1EB2E59F8 != -1)
  {
    swift_once();
  }

  sub_1A84E529C();
  sub_1A84E52CC();
  v21 = v46;
  sub_1A84E553C();
  v22 = v48;
  sub_1A8462834();
  v23 = v21;
  if (v22)
  {
    v24 = *(v19 + 8);
    v24(v21, v20);
    v24(v9, v20);
    v30 = v49;
  }

  else
  {
    v25 = *(v19 + 8);
    v25(v23, v20);
    sub_1A8462A9C();
    sub_1A84BF1A8(&qword_1EB2E7DC0, type metadata accessor for ImportExport.ArchiveManifest, &protocol conformance descriptor for ImportExport.ArchiveManifest);
    v26 = v42;
    v27 = sub_1A84E52DC();
    v29 = v28;
    sub_1A84E560C();
    sub_1A83F5994(v27, v29);
    v25(0, v20);
    v32 = v49;
    v33 = v40;
    sub_1A84BF258(v49, v40, type metadata accessor for ImportExport.ArchiveManifest);
    (*(v38 + 56))(v33, 0, 1, v26);
    v34 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
    v35 = v37;
    swift_beginAccess();
    sub_1A84BF1F0(v33, v35 + v34, &qword_1EB2E7FE8, &unk_1A850AA80);
    swift_endAccess();
    v36 = v41;
    *(v41 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator) = 0;

    *(v36 + v39) = MEMORY[0x1E69E7CC0];

    v30 = v32;
  }

  return sub_1A84BF148(v30, type metadata accessor for ImportExport.ArchiveManifest);
}

uint64_t sub_1A84BDF08@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v102 = a3;
  v5 = v4;
  v99 = a4;
  v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = &v83 - v9;
  v96 = sub_1A84E558C();
  v100 = *(v96 - 8);
  v10 = MEMORY[0x1EEE9AC00](v96);
  v95 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v90 = &v83 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v83 - v14;
  v15 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v88 = (&v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1A83EA2FC(&qword_1EB2E89A8, &unk_1A8509CD8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v98 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v94 = &v83 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v83 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v92 = &v83 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v83 - v27;
  v29 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  v30 = *(v29 - 1);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v97 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v93 = &v83 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v83 - v35;
  v37 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
  swift_beginAccess();
  v104 = v37;
  sub_1A84BF0D8(a1 + v37, v28);
  v103 = v30;
  v39 = *(v30 + 48);
  v38 = v30 + 48;
  v105 = v39;
  v40 = v39(v28, 1, v29);
  v101 = a2;
  if (v40 == 1)
  {
    sub_1A824B2D4(v28, &qword_1EB2E89A8, &unk_1A8509CD8);
    v41 = v104;
  }

  else
  {
    sub_1A84BF2C0(v28, v36, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    v42 = _s6IMCore12ImportExportO12ConversationV2eeoiySbAE_AEtFZ_0(&v36[v29[9]], a2);
    sub_1A84BF148(v36, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    v41 = v104;
    if ((v42 & 1) == 0)
    {
      v43 = v92;
      (*(v103 + 56))(v92, 1, 1, v29);
      swift_beginAccess();
      sub_1A84BF1F0(v43, a1 + v41, &qword_1EB2E89A8, &unk_1A8509CD8);
      swift_endAccess();
    }
  }

  sub_1A84BF0D8(a1 + v41, v24);
  v44 = v105(v24, 1, v29);
  sub_1A824B2D4(v24, &qword_1EB2E89A8, &unk_1A8509CD8);
  v45 = v102;
  if (v44 == 1)
  {
    v85 = v38;
    v87 = v4;
    v84 = type metadata accessor for ImportExport.Conversation;
    v46 = v88;
    sub_1A84BF258(v101, v88, type metadata accessor for ImportExport.Conversation);
    v47 = a1 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions;
    v48 = type metadata accessor for ImportExport.ArchivingOptions(0);
    v49 = *(v100 + 16);
    v50 = v47 + *(v48 + 20);
    v51 = v89;
    v86 = a1;
    v52 = v96;
    v49(v89, v50, v96);
    strcpy(v106, "Conversation-");
    HIWORD(v106[1]) = -4864;
    v107 = *v46;
    v53 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v53);

    v54 = v90;
    sub_1A84E552C();

    v55 = v93;
    sub_1A84BF258(v46, v93 + v29[9], v84);
    v49(v55, v51, v52);
    v49((v55 + v29[5]), v54, v52);
    v56 = v52;
    a1 = v86;
    v84 = v29[8];
    sub_1A84E552C();
    sub_1A84E552C();
    sub_1A84E552C();
    v57 = (v100 + 8);
    v58 = *(v100 + 8);
    v58(v54, v56);
    v90 = v58;
    v89 = v57;
    v58(v51, v56);
    sub_1A84BF148(v46, type metadata accessor for ImportExport.Conversation);
    v59 = v92;
    sub_1A84BF258(v55, v92, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    (*(v103 + 56))(v59, 0, 1, v29);
    v60 = v104;
    swift_beginAccess();
    sub_1A84BF1F0(v59, a1 + v60, &qword_1EB2E89A8, &unk_1A8509CD8);
    swift_endAccess();
    v61 = v91;
    URL.relativePath(toParent:)(v91);
    v62 = v100;
    if ((*(v100 + 48))(v61, 1, v56) == 1)
    {
      sub_1A824B2D4(v61, &qword_1EB2E7068, &unk_1A8501EB0);
      goto LABEL_20;
    }

    (*(v62 + 32))(v95, v61, v56);
    v63 = sub_1A84E555C();
    v65 = v64;
    v66 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations;
    swift_beginAccess();
    v67 = *(a1 + v66);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v66) = v67;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v67 = sub_1A824A1FC(0, *(v67 + 2) + 1, 1, v67);
      *(a1 + v66) = v67;
    }

    v69 = v90;
    v71 = *(v67 + 2);
    v70 = *(v67 + 3);
    if (v71 >= v70 >> 1)
    {
      v67 = sub_1A824A1FC((v70 > 1), v71 + 1, 1, v67);
    }

    *(v67 + 2) = v71 + 1;
    v72 = &v67[16 * v71];
    *(v72 + 4) = v63;
    *(v72 + 5) = v65;
    *(a1 + v66) = v67;
    swift_endAccess();
    v69(v95, v96);
    sub_1A84BF148(v93, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    v5 = v87;
    v45 = v102;
    v41 = v104;
  }

  v73 = v94;
  sub_1A84BF0D8(a1 + v41, v94);
  if (v105(v73, 1, v29) == 1)
  {
    sub_1A824B2D4(v73, &qword_1EB2E89A8, &unk_1A8509CD8);
LABEL_20:
    result = sub_1A84E653C();
    __break(1u);
    return result;
  }

  v74 = v97;
  sub_1A84BF2C0(v73, v97, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  v75 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions;
  v76 = v98;
  sub_1A84BF258(v74, v98, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  (*(v103 + 56))(v76, 0, 1, v29);
  v77 = type metadata accessor for ImportExport.MessageBatch(0);
  v78 = v101;
  if (*(*&v101[*(v77 + 20)] + 16))
  {
    v79 = objc_autoreleasePoolPush();
    sub_1A84C3E18(v76, v78, a1 + v75, v106, v99);
    if (v5)
    {
      v80 = v106[0];
      objc_autoreleasePoolPop(v79);
      sub_1A824B2D4(v76, &qword_1EB2E89A8, &unk_1A8509CD8);
      result = sub_1A84BF148(v74, type metadata accessor for ImportExport.ArchivedConversationDirectories);
      *v45 = v80;
    }

    else
    {
      objc_autoreleasePoolPop(v79);
      sub_1A824B2D4(v76, &qword_1EB2E89A8, &unk_1A8509CD8);
      return sub_1A84BF148(v74, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    }
  }

  else
  {
    sub_1A824B2D4(v76, &qword_1EB2E89A8, &unk_1A8509CD8);
    sub_1A84BF148(v74, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    v82 = type metadata accessor for ImportExport.ArchivedConversationBatch(0);
    return (*(*(v82 - 8) + 56))(v99, 1, 1, v82);
  }

  return result;
}

uint64_t ImportExport.ArchiveWritingIterator.deinit()
{
  sub_1A84BF148(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);

  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories, &qword_1EB2E89A8, &unk_1A8509CD8);
  return v0;
}

uint64_t ImportExport.ArchiveWritingIterator.__deallocating_deinit()
{
  sub_1A84BF148(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);

  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories, &qword_1EB2E89A8, &unk_1A8509CD8);

  return swift_deallocClassInstance();
}

uint64_t sub_1A84BEC1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A82505F4;

  return sub_1A84BC530(a1);
}

uint64_t sub_1A84BECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A84E605C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A84BED50, v6, v8);
}

uint64_t sub_1A84BED50()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1A84065F4;
  v2 = *(v0 + 24);

  return sub_1A84BC530(v2);
}

uint64_t type metadata accessor for ImportExport.ArchiveWritingIterator(uint64_t a1)
{
  result = qword_1EB2E8C68;
  if (!qword_1EB2E8C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A84BEE40(uint64_t a1)
{
  type metadata accessor for ImportExport.ArchivingOptions(319);
  if (v1 <= 0x3F)
  {
    sub_1A84BF080(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ImportExport.ArchiveWritingIterator.next()(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A82505F4;

  return v6(a1);
}

void sub_1A84BF080(uint64_t a1)
{
  if (!qword_1EB2E8C78)
  {
    type metadata accessor for ImportExport.ArchivedConversationDirectories(255);
    v1 = sub_1A84E633C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2E8C78);
    }
  }
}

uint64_t sub_1A84BF0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E89A8, &unk_1A8509CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84BF148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84BF1A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A84BF1F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A83EA2FC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A84BF258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84BF2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ImportExport.ArchivedConversationDirectories.init(withConversation:inRootDirectoryURL:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A84E558C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v16, "Conversation-");
  v16[7] = -4864;
  v15[1] = *a1;
  v10 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v10);

  sub_1A84E552C();

  v11 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  sub_1A84C0908(a1, a3 + *(v11 + 36), type metadata accessor for ImportExport.Conversation);
  v12 = *(v7 + 16);
  v12(a3, a2, v6);
  v12(a3 + *(v11 + 20), v9, v6);
  sub_1A84E552C();
  sub_1A84E552C();
  sub_1A84E552C();
  v13 = *(v7 + 8);
  v13(a2, v6);
  sub_1A84C0970(a1, type metadata accessor for ImportExport.Conversation);
  return (v13)(v9, v6);
}

uint64_t static ImportExport.ArchivedConversationDirectories.conversationDirectoryName(forConversation:)()
{
  strcpy(v2, "Conversation-");
  v0 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v0);

  return v2[0];
}

uint64_t type metadata accessor for ImportExport.ArchivedConversationDirectories(uint64_t a1)
{
  result = qword_1EB2E8C98;
  if (!qword_1EB2E8C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.ArchivedConversationDirectories.rootDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A84E558C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ImportExport.ArchivedConversationDirectories.conversationDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivedConversationDirectories(0) + 20);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImportExport.ArchivedConversationDirectories.messageDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivedConversationDirectories(0) + 24);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImportExport.ArchivedConversationDirectories.attachmentDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivedConversationDirectories(0) + 28);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImportExport.ArchivedConversationDirectories.archivedConversationFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivedConversationDirectories(0) + 32);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImportExport.ArchivedConversationDirectories.directories.getter()
{
  sub_1A83EA2FC(&qword_1EB2E6EC8, &unk_1A8500CB0);
  v1 = sub_1A84E558C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A850AA90;
  v6 = v5 + v4;
  v7 = *(v2 + 16);
  v7(v6, v0, v1);
  v8 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  v7(v6 + v3, v0 + v8[5], v1);
  v7(v6 + 2 * v3, v0 + v8[6], v1);
  v7(v6 + 3 * v3, v0 + v8[7], v1);
  return v5;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImportExport.ArchivedConversationDirectories.ensureDirectoriesExist()()
{
  sub_1A83EA2FC(&qword_1EB2E6EC8, &unk_1A8500CB0);
  v1 = sub_1A84E558C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject() + v4;
  v6 = *(v2 + 16);
  v6(v5, v0, v1);
  v7 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  v6(v5 + v3, v0 + v7[5], v1);
  v6(v5 + 2 * v3, v0 + v7[6], v1);
  v6(v5 + 3 * v3, v0 + v7[7], v1);
  sub_1A8462834();
  if (!v8)
  {
    sub_1A8462834();
    sub_1A8462834();
    sub_1A8462834();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
}

unint64_t sub_1A84BFCA4()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  if (v1 == 4)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD000000000000010;
  v4 = 0xD000000000000018;
  if (v1 != 1)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A84BFD78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84C0BD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84BFDA0(uint64_t a1)
{
  v2 = sub_1A84C00F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84BFDDC(uint64_t a1)
{
  v2 = sub_1A84C00F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchivedConversationDirectories.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E8C80, &qword_1A850AAA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C00F4();
  sub_1A84E68AC();
  v14 = 0;
  sub_1A84E558C();
  sub_1A84C08C0(&qword_1EB2E7200, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1A84E672C();
  if (!v1)
  {
    type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
    v13 = 1;
    sub_1A84E672C();
    v12 = 2;
    sub_1A84E672C();
    v11 = 3;
    sub_1A84E672C();
    v10 = 4;
    sub_1A84E672C();
    v9 = 5;
    type metadata accessor for ImportExport.Conversation(0);
    sub_1A84C08C0(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
    sub_1A84E672C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A84C00F4()
{
  result = qword_1EB2E8C88;
  if (!qword_1EB2E8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8C88);
  }

  return result;
}

uint64_t ImportExport.ArchivedConversationDirectories.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A84E558C();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v38 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = v32 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v32 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v32 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v44 = v32 - v15;
  v16 = sub_1A83EA2FC(&qword_1EB2E8C90, &qword_1A850AAB0);
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - v17;
  v19 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C00F4();
  v45 = v18;
  v22 = v46;
  sub_1A84E689C();
  if (v22)
  {
    return sub_1A8244788(a1);
  }

  v23 = v14;
  v34 = v11;
  v46 = v21;
  v52 = 0;
  sub_1A84C08C0(&qword_1EB2E7218, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v24 = v41;
  sub_1A84E666C();
  v25 = v44;
  v44 = *(v40 + 32);
  (v44)(v46, v25, v24);
  v51 = 1;
  sub_1A84E666C();
  v33 = v19;
  (v44)(&v46[*(v19 + 20)], v23, v24);
  v50 = 2;
  v26 = v34;
  v32[1] = 0;
  sub_1A84E666C();
  (v44)(&v46[v33[6]], v26, v24);
  v49 = 3;
  v27 = v39;
  sub_1A84E666C();
  (v44)(&v46[v33[7]], v27, v24);
  v48 = 4;
  v28 = v38;
  sub_1A84E666C();
  (v44)(&v46[v33[8]], v28, v24);
  v47 = 5;
  sub_1A84C08C0(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
  v29 = v37;
  sub_1A84E666C();
  (*(v42 + 8))(v45, v43);
  v30 = v46;
  sub_1A845BB64(v29, &v46[v33[9]]);
  sub_1A84C0908(v30, v35, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  sub_1A8244788(a1);
  return sub_1A84C0970(v30, type metadata accessor for ImportExport.ArchivedConversationDirectories);
}

uint64_t sub_1A84C08C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A84C0908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84C0970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84C0A28(uint64_t a1)
{
  result = sub_1A84E558C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ImportExport.Conversation(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A84C0ACC()
{
  result = qword_1EB2E8CA8;
  if (!qword_1EB2E8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CA8);
  }

  return result;
}

unint64_t sub_1A84C0B24()
{
  result = qword_1EB2E8CB0;
  if (!qword_1EB2E8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CB0);
  }

  return result;
}

unint64_t sub_1A84C0B7C()
{
  result = qword_1EB2E8CB8;
  if (!qword_1EB2E8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CB8);
  }

  return result;
}

uint64_t sub_1A84C0BD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A85340D0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A85340F0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8534110 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8534130 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A8530070 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974)
  {

    return 5;
  }

  else
  {
    v5 = sub_1A84E67AC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A84C0DD4(unsigned __int8 a1)
{
  v2 = sub_1A84E5D8C();

  v3 = sub_1A84E5D8C();

  v4 = sub_1A84E5D8C();
  v5 = IMCoreLocalizedString(v2, v3);

  if (v5)
  {
    v6 = sub_1A84E5DBC();
  }

  else
  {
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1A84E5C9C();
    sub_1A824431C(v7, qword_1EB2FEFF8);
    v8 = sub_1A84E5C7C();
    v9 = sub_1A84E619C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = "SYNC_PROGRESS_CONNECT_TO_WIFI";
      v13 = 0xD000000000000021;
      v14 = "ice and connect to wlan";
      if (a1 != 3)
      {
        v14 = "ages from iCloud…";
      }

      if (a1 == 2)
      {
        v15 = 0xD000000000000021;
      }

      else
      {
        v15 = 0xD00000000000001DLL;
      }

      if (a1 != 2)
      {
        v12 = v14;
      }

      v16 = "LOUD_STORAGE_FULL";
      if (!a1)
      {
        v13 = 0xD000000000000015;
        v16 = "VICE_STORAGE_FULL";
      }

      if (a1 <= 1u)
      {
        v17 = v13;
      }

      else
      {
        v17 = v15;
      }

      if (a1 <= 1u)
      {
        v18 = v16;
      }

      else
      {
        v18 = v12;
      }

      v19 = sub_1A82446BC(v17, v18 | 0x8000000000000000, &v21);

      *(v10 + 4) = v19;
      _os_log_impl(&dword_1A823F000, v8, v9, "Failed to generate localized string for %s", v10, 0xCu);
      sub_1A8244788(v11);
      MEMORY[0x1AC56D3F0](v11, -1, -1);
      MEMORY[0x1AC56D3F0](v10, -1, -1);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1A84C10F8(unsigned __int8 a1)
{
  v2 = sub_1A84E5D8C();

  v3 = sub_1A84E5D8C();

  v4 = sub_1A84E5D8C();
  v5 = IMCoreLocalizedString(v2, v3);

  if (v5)
  {
    v6 = sub_1A84E5DBC();
  }

  else
  {
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1A84E5C9C();
    sub_1A824431C(v7, qword_1EB2FEFF8);
    v8 = sub_1A84E5C7C();
    v9 = sub_1A84E619C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      v12 = 0xD00000000000001FLL;
      v13 = 0xD000000000000026;
      if (a1 == 2)
      {
        v13 = 0xD000000000000014;
        v14 = "ud is currently disabled";
      }

      else
      {
        v14 = "Manage Storage…";
      }

      if (a1)
      {
        v12 = 0xD00000000000001DLL;
        v15 = "SYNC_PROGRESS_PAUSED";
      }

      else
      {
        v15 = "SYNC_PROGRESS_UPLOADING_ITEMS";
      }

      if (a1 <= 1u)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      if (a1 <= 1u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v14;
      }

      v18 = sub_1A82446BC(v16, v17 | 0x8000000000000000, &v20);

      *(v10 + 4) = v18;
      _os_log_impl(&dword_1A823F000, v8, v9, "Failed to generate localized string for %s", v10, 0xCu);
      sub_1A8244788(v11);
      MEMORY[0x1AC56D3F0](v11, -1, -1);
      MEMORY[0x1AC56D3F0](v10, -1, -1);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1A84C13D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = [v4 isMessagesIniCloudVersion2];

  if (v5)
  {
    if (a1 && [a1 syncJobState] - 1 <= 4)
    {
      result = sub_1A84C0DD4(0);
      v8 = 0;
    }

    else
    {
      v8 = 0;
      result = 0;
      v7 = 0;
    }

    v10 = 0;
    v12 = 0;
  }

  else if (a1 && (v9 = [a1 syncControllerSyncState], v9 >= 4))
  {
    if (v9 == 4)
    {
      v10 = sub_1A84C10F8(1u);
      v12 = v13;
      v8 = 0;
      result = 0;
      v7 = 0;
    }

    else
    {
      result = 0;
      v7 = 0;
      v10 = 0;
      v12 = 0;
      v8 = 1;
    }
  }

  else
  {
    v10 = sub_1A84C10F8(0);
    v12 = v11;
    result = 0;
    v7 = 0;
    v8 = 1;
  }

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = result;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v5 ^ 1;
  *(a2 + 49) = v8;
  *(a2 + 56) = 0;
  return result;
}

void sub_1A84C1514(uint64_t a1@<X8>)
{
  v2 = sub_1A84C10F8(3u);
  v4 = v3;
  v5 = sub_1A84E5D8C();
  v6 = sub_1A84E5D8C();
  v7 = sub_1A84E5D8C();
  v8 = IMCoreLocalizedString(v5, v6);

  if (v8)
  {
    v9 = sub_1A84E5DBC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

void sub_1A84C1614(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1A84C10F8(2u);
  v6 = v5;
  v7 = sub_1A84C0DD4(a1);
  v9 = v8;
  v10 = sub_1A84E5D8C();
  v11 = sub_1A84E5D8C();
  v12 = sub_1A84E5D8C();
  v13 = IMCoreLocalizedString(v10, v11);

  if (v13)
  {
    v14 = sub_1A84E5DBC();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
}

uint64_t sub_1A84C1728@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  result = 0;
  v7 = 0uLL;
  v8 = 0.0;
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v14 = 2;
    }

    else
    {
      if (a1 != 5)
      {
        if (a1 == 6)
        {
          if ((IMDeviceIsGreenTea() & 1) != 0 || [objc_opt_self() IMDeviceIsChinaRegion])
          {
            v13 = 4;
          }

          else
          {
            v13 = 3;
          }

          v10 = sub_1A84C0DD4(v13);
          v17 = v16;
          result = sub_1A84C10F8(2u);
          v11 = 0;
          v5 = 0;
          v12 = 0;
          v7 = v17;
        }

        else
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
        }

        goto LABEL_20;
      }

      v14 = 1;
    }

    sub_1A84C1614(v14, v20);
    goto LABEL_19;
  }

  if (!a1)
  {
    sub_1A84C13D4(a2, v20);
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    if ((IMDeviceIsGreenTea() & 1) != 0 || [objc_opt_self() IMDeviceIsChinaRegion])
    {
      v15 = 4;
    }

    else
    {
      v15 = 3;
    }

    v10 = sub_1A84C0DD4(v15);
    v19 = v18;
    result = sub_1A84C10F8(2u);
    v11 = 0;
    v5 = 0;
    v12 = 0;
    v7 = v19;
    v8 = 10.0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (a1 == 3)
    {
      sub_1A84C1514(v20);
LABEL_19:
      v8 = v25;
      v12 = v24;
      v5 = v23;
      v11 = v22;
      v9 = v20[1];
      v10 = v20[2];
      v7 = v21;
      result = v20[0];
    }
  }

LABEL_20:
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v7;
  *(a3 + 40) = v11;
  *(a3 + 48) = v5;
  *(a3 + 49) = v12;
  *(a3 + 56) = v8;
  return result;
}

uint64_t ImportExport.Exporter.fetchStartingCountsForExport()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1A84E5C9C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_1A84E588C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1A84E57FC();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84C1A84, 0, 0);
}

uint64_t sub_1A84C1A84()
{
  v1 = *(v0[4] + 16);
  if (v1 && *(v1 + 16))
  {
    v2 = v0[3];
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[16] = [objc_allocWithZone(sub_1A84E580C()) init];
    sub_1A84E57EC();
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_1A84C1BE4;
    v6 = v0[15];

    return MEMORY[0x1EEE101A0](v6);
  }
}

uint64_t sub_1A84C1BE4(uint64_t a1)
{
  v4 = *v2;
  v4[18] = v1;

  v5 = v4[16];
  v6 = v4[15];
  v7 = v4[14];
  v8 = v4[13];
  if (v1)
  {
    (*(v7 + 8))(v6, v8);

    v9 = sub_1A84C2310;
  }

  else
  {
    v4[19] = a1;
    (*(v7 + 8))(v6, v8);

    v9 = sub_1A84C1D88;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1A84C1D88()
{
  v51 = v0;
  v1 = v0[19];
  v2 = sub_1A84E581C();

  if (v2)
  {

    result = sub_1A84E583C();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = result;
      result = sub_1A84E584C();
      if ((result & 0x8000000000000000) == 0)
      {
        v5 = result;
        v7 = v0[11];
        v6 = v0[12];
        v8 = v0[10];
        sub_1A84E589C();
        v9 = sub_1A84E587C();
        v10 = *(v7 + 8);
        result = v10(v6, v8);
        if ((v9 & 0x8000000000000000) == 0)
        {
          v46 = v9;
          v11 = v0[12];
          v12 = v0[10];
          sub_1A84E585C();
          v13 = sub_1A84E587C();
          result = v10(v11, v12);
          if ((v13 & 0x8000000000000000) == 0)
          {
            v45 = v13;
            v14 = v0[12];
            v15 = v0[10];
            sub_1A84E586C();

            v16 = sub_1A84E587C();
            result = v10(v14, v15);
            if ((v16 & 0x8000000000000000) == 0)
            {
              v42 = v16;
              v43 = v5;
              v44 = v4;
              sub_1A84E5C8C();
              v17 = sub_1A84E5C7C();
              v18 = sub_1A84E617C();
              if (os_log_type_enabled(v17, v18))
              {
                v19 = swift_slowAlloc();
                *v19 = 0;
                _os_log_impl(&dword_1A823F000, v17, v18, "Fetched counts from storage inspector:", v19, 2u);
                MEMORY[0x1AC56D3F0](v19, -1, -1);
              }

              v20 = v0[9];
              v22 = v0[5];
              v21 = v0[6];

              v48 = *(v21 + 8);
              v48(v20, v22);
              v0[2] = v2;
              sub_1A84E58AC();
              v47 = sub_1A84E582C();
              v23 = *(v47 + 16);
              if (v23)
              {
                v24 = (v47 + 40);
                do
                {
                  v26 = *(v24 - 1);
                  v25 = *v24;

                  sub_1A84E5C8C();

                  v27 = sub_1A84E5C7C();
                  v28 = sub_1A84E617C();

                  v29 = os_log_type_enabled(v27, v28);
                  v49 = v0[8];
                  v30 = v0[5];
                  if (v29)
                  {
                    v31 = swift_slowAlloc();
                    v32 = swift_slowAlloc();
                    v50 = v32;
                    *v31 = 136315138;
                    v33 = sub_1A82446BC(v26, v25, &v50);

                    *(v31 + 4) = v33;
                    _os_log_impl(&dword_1A823F000, v27, v28, "    %s", v31, 0xCu);
                    sub_1A8244788(v32);
                    MEMORY[0x1AC56D3F0](v32, -1, -1);
                    MEMORY[0x1AC56D3F0](v31, -1, -1);
                  }

                  else
                  {
                  }

                  v48(v49, v30);
                  v24 += 2;
                  --v23;
                }

                while (v23);
              }

              v34 = v0[3];

              *v34 = v44;
              v34[1] = v43;
              v34[2] = v46;
              v34[3] = v45;
              v34[4] = v42;

              v35 = v0[1];

              return v35();
            }

LABEL_25:
            __break(1u);
            return result;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_1A84E5C8C();
  v36 = sub_1A84E5C7C();
  v37 = sub_1A84E619C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1A823F000, v36, v37, "Getting storage record counts failed", v38, 2u);
    MEMORY[0x1AC56D3F0](v38, -1, -1);
  }

  v40 = v0[6];
  v39 = v0[7];
  v41 = v0[5];

  (*(v40 + 8))(v39, v41);
  return sub_1A84E653C();
}

uint64_t sub_1A84C2310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImportExport.Exporter.progress.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  a1[3] = type metadata accessor for ImportExport.ExportStatistics();
  a1[4] = &protocol witness table for ImportExport.ExportStatistics;
  *a1 = v3;
}

uint64_t ImportExport.Exporter.__allocating_init(withOptions:)(uint64_t a1)
{
  v2 = swift_allocObject();
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }

  *(v2 + 24) = qword_1EB2E8880;
  sub_1A84B70B0(a1, v2 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  *(v2 + 16) = 0;

  return v2;
}

uint64_t ImportExport.Exporter.__allocating_init(withOptions:conversations:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }

  *(v4 + 24) = qword_1EB2E8880;
  sub_1A84B70B0(a1, v4 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  *(v4 + 16) = a2;

  return v4;
}

uint64_t ImportExport.Exporter.makeAsyncIterator()()
{
  v1 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84C3300(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions, v3);
  v4 = *(v0 + 16);
  type metadata accessor for ImportExport.ExportIterator(0);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
  *(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter) = v0;
  sub_1A84B70B0(v3, v5 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions);
  *(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID) = -1;
  *(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations) = v4;
  *(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;

  return v5;
}

uint64_t ImportExport.Exporter.init(withOptions:conversations:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EB2E59D0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  *(v2 + 24) = qword_1EB2E8880;
  sub_1A84B70B0(a1, v2 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  *(v2 + 16) = a2;

  return v2;
}

uint64_t ImportExport.Exporter.init(withOptions:)(uint64_t a1)
{
  if (qword_1EB2E59D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *(v1 + 24) = qword_1EB2E8880;
  sub_1A84B70B0(a1, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  *(v1 + 16) = 0;

  return v1;
}

id static ImportExport.Exporter.hasCompletedCloudSync.getter()
{
  v0 = sub_1A84E56DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = [result lastSyncDate];

    if (v9)
    {
      sub_1A84E569C();

      (*(v1 + 32))(v6, v3, v0);
      (*(v1 + 56))(v6, 0, 1, v0);
    }

    else
    {
      (*(v1 + 56))(v6, 1, 1, v0);
    }

    sub_1A8471100(v6);
    return (v9 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A84C2968()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x704F74726F707865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_1A84C29D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84C37BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84C29F8(uint64_t a1)
{
  v2 = sub_1A84C33C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84C2A34(uint64_t a1)
{
  v2 = sub_1A84C33C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Exporter.deinit()
{

  sub_1A84C3364(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  return v0;
}

uint64_t ImportExport.Exporter.__deallocating_deinit()
{

  sub_1A84C3364(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.Exporter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8CC0, &qword_1A850AC80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C33C0();
  sub_1A84E68AC();
  v12 = *(v3 + 16);
  LOBYTE(v11) = 0;
  sub_1A83EA2FC(&qword_1EB2E7D18, &qword_1A8505EB8);
  sub_1A84C3414(&qword_1EB2E7D20, &qword_1EB2E71B0, &protocol conformance descriptor for ImportExport.Conversation, MEMORY[0x1E69E6300]);
  sub_1A84E66BC();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 24);
    v10[15] = 1;
    type metadata accessor for ImportExport.ExportStatistics();
    sub_1A84C34F8(&qword_1EB2E7DE0, type metadata accessor for ImportExport.ExportStatistics, &protocol conformance descriptor for ImportExport.ExportStatistics);
    sub_1A84E672C();
    LOBYTE(v11) = 2;
    type metadata accessor for ImportExport.ExportOptions(0);
    sub_1A84C34F8(&qword_1EB2E7D10, type metadata accessor for ImportExport.ExportOptions, &protocol conformance descriptor for ImportExport.ExportOptions);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.Exporter.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.Exporter.init(from:)(a1);
  return v2;
}

void *ImportExport.Exporter.init(from:)(void *a1)
{
  v3 = v1;
  v5 = v1 + 3;
  v18 = *v1;
  v14 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E8CD0, &qword_1A850AC88);
  v16 = *(v7 - 8);
  v17 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }

  *v5 = qword_1EB2E8880;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C33C0();

  sub_1A84E689C();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1A83EA2FC(&qword_1EB2E7D18, &qword_1A8505EB8);
    LOBYTE(v20) = 0;
    sub_1A84C3414(&qword_1EB2E7D48, &qword_1EB2E71C8, &protocol conformance descriptor for ImportExport.Conversation, MEMORY[0x1E69E6330]);
    v10 = v17;
    sub_1A84E65FC();
    v1[2] = v19;
    type metadata accessor for ImportExport.ExportStatistics();
    LOBYTE(v19) = 1;
    sub_1A84C34F8(&qword_1EB2E7DF0, type metadata accessor for ImportExport.ExportStatistics, &protocol conformance descriptor for ImportExport.ExportStatistics);
    sub_1A84E666C();
    v11 = v20;
    swift_beginAccess();
    *v5 = v11;

    LOBYTE(v20) = 2;
    sub_1A84C34F8(&qword_1EB2E7D40, type metadata accessor for ImportExport.ExportOptions, &protocol conformance descriptor for ImportExport.ExportOptions);
    v12 = v15;
    sub_1A84E666C();
    (*(v16 + 8))(v9, v10);
    sub_1A84B70B0(v12, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  }

  sub_1A8244788(a1);
  return v3;
}

uint64_t sub_1A84C3244@<X0>(uint64_t *a1@<X8>)
{
  v2 = ImportExport.Exporter.makeAsyncIterator()();

  *a1 = v2;
  return result;
}

void *sub_1A84C3284@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.Exporter.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1A84C3300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.ExportOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84C3364(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.ExportOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A84C33C0()
{
  result = qword_1EB2E8CC8;
  if (!qword_1EB2E8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CC8);
  }

  return result;
}

uint64_t sub_1A84C3414(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7D18, &qword_1A8505EB8);
    sub_1A84C34F8(a2, type metadata accessor for ImportExport.Conversation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84C34F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ImportExport.Exporter(uint64_t a1)
{
  result = qword_1EB2E8CE0;
  if (!qword_1EB2E8CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A84C3594(uint64_t a1)
{
  result = type metadata accessor for ImportExport.ExportOptions(319);
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

unint64_t sub_1A84C36B8()
{
  result = qword_1EB2E8CF0;
  if (!qword_1EB2E8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CF0);
  }

  return result;
}

unint64_t sub_1A84C3710()
{
  result = qword_1EB2E8CF8;
  if (!qword_1EB2E8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CF8);
  }

  return result;
}

unint64_t sub_1A84C3768()
{
  result = qword_1EB2E8D00;
  if (!qword_1EB2E8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D00);
  }

  return result;
}

uint64_t sub_1A84C37BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531D60 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x704F74726F707865 && a2 == 0xED0000736E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

void ImportExport.MessageBatch.writeArchivedConversationBatch(withArchivingOptions:withConversationDirectories:)(uint64_t a1@<X0>, char *a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  if (*(*&v3[*(type metadata accessor for ImportExport.MessageBatch(0) + 20)] + 16))
  {
    v7 = objc_autoreleasePoolPush();
    sub_1A84C3E18(a2, v3, a1, &v9, a3);
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v8 = type metadata accessor for ImportExport.ArchivedConversationBatch(0);
    (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }
}

uint64_t ImportExport.ArchivedConversationBatch.conversation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  return sub_1A84C5ED8(v3 + v4, a1, type metadata accessor for ImportExport.Conversation);
}

uint64_t ImportExport.ArchivedConversationBatch.archivedConversationFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivedConversationBatch(0) + 20);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double ImportExport.ArchivedConversationBatch.messages.getter()
{
  type metadata accessor for ImportExport.ArchivedConversationBatch(0);

  return result;
}

uint64_t ImportExport.ArchivedConversationBatch.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for ImportExport.ArchivedConversationBatch(0) + 24));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(type metadata accessor for ImportExport.Message(0) - 8);
    v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v8 + 16);
    v10 = *(v8 + *(v7 + 72) * (v6 - 1) + 16);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1A84E646C();
  v24 = v22;
  v25 = v23;
  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8534500);
  v11 = *v1;
  v12 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  sub_1A84C5ED8(v11 + v12, v4, type metadata accessor for ImportExport.Conversation);
  v13 = ImportExport.Conversation.shortDescription.getter();
  v15 = v14;
  sub_1A84C5F40(v4, type metadata accessor for ImportExport.Conversation);
  MEMORY[0x1AC56A990](v13, v15);

  MEMORY[0x1AC56A990](0xD00000000000001ELL, 0x80000001A8534520);
  v21 = v9;
  v16 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v16);

  MEMORY[0x1AC56A990](45, 0xE100000000000000);
  v21 = v10;
  v17 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v17);

  MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A8534540);
  sub_1A84E558C();
  sub_1A84C6008(&qword_1EB2E8D08, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v18 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v18);

  MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A8534560);
  v19 = ImportExport.ArchivedConversation.description.getter();
  MEMORY[0x1AC56A990](v19);

  return v24;
}

void sub_1A84C3E18(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t (**a5)(uint64_t a1)@<X8>)
{
  v84 = a4;
  v82 = a3;
  v83 = a2;
  v77 = a5;
  v6 = sub_1A84E52BC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v78 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v73 - v9;
  v10 = sub_1A84E558C();
  v11 = *(v10 - 8);
  v86 = v10;
  v87 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v80 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v81 = &v73 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v73 - v19;
  v21 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1A83EA2FC(&qword_1EB2E89A8, &unk_1A8509CD8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v73 - v25;
  v27 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  v28 = *(v27 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v28 + 48);
  if (v31(a1, 1, v27) == 1)
  {
    v76 = type metadata accessor for ImportExport.Conversation;
    sub_1A84C5ED8(v83, v23, type metadata accessor for ImportExport.Conversation);
    v32 = *(type metadata accessor for ImportExport.ArchivingOptions(0) + 20);
    v74 = *(v87 + 16);
    v33 = v20;
    v34 = v20;
    v35 = v86;
    v74(v34, v82 + v32, v86);
    strcpy(v88, "Conversation-");
    v88[7] = -4864;
    v36 = *v23;
    v75 = v23;
    v89 = v36;
    v37 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v37);

    sub_1A84E552C();

    sub_1A84C5ED8(v23, &v30[v27[9]], v76);
    v38 = v74;
    v74(v30, v33, v35);
    v38(&v30[v27[5]], v18, v35);
    sub_1A84E552C();
    sub_1A84E552C();
    sub_1A84E552C();
    v39 = *(v87 + 8);
    v39(v18, v35);
    v40 = v35;
    v39(v33, v35);
    sub_1A84C5F40(v75, type metadata accessor for ImportExport.Conversation);
    v20 = v33;
  }

  else
  {
    v40 = v86;
    sub_1A8243D74(a1, v26, &qword_1EB2E89A8, &unk_1A8509CD8);
    if (v31(v26, 1, v27) == 1)
    {
      __break(1u);
      goto LABEL_19;
    }

    sub_1A84C5FA0(v26, v30, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  }

  ImportExport.ArchivedConversationDirectories.ensureDirectoriesExist()();
  if (v41)
  {
    sub_1A84C5F40(v30, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    *v84 = v41;
    return;
  }

  v42 = v27[8];
  v43 = v83;
  v44 = sub_1A84C499C(&v30[v42]);
  v85 = v42;
  v45 = v44;
  v46 = *&v43[*(type metadata accessor for ImportExport.MessageBatch(0) + 20)];
  v47 = sub_1A84C50A8(v46, &v30[v27[7]]);
  v75 = v20;
  v76 = v45;
  sub_1A84C5A10(v47, &v30[v27[6]], v82, v81);
  v83 = v30;
  v48 = v75;
  sub_1A84E553C();
  v26 = v79;
  URL.relativePath(toParent:)(v79);
  v49 = v87;
  v74 = *(v87 + 8);
  v75 = (v87 + 8);
  (v74)(v48, v40);
  if ((*(v49 + 48))(v26, 1, v40) != 1)
  {

    (*(v49 + 32))(v80, v26, v40);
    v50 = sub_1A84E555C();
    v52 = v51;
    v53 = *(v46 + 16);
    v54 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
    v55 = v76;
    swift_beginAccess();
    v56 = *(v55 + v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v55 + v54) = v56;
    v73 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = sub_1A824A1FC(0, *(v56 + 2) + 1, 1, v56);
      *(v76 + v54) = v56;
    }

    v58 = v85;
    v60 = *(v56 + 2);
    v59 = *(v56 + 3);
    if (v60 >= v59 >> 1)
    {
      v56 = sub_1A824A1FC((v59 > 1), v60 + 1, 1, v56);
    }

    *(v56 + 2) = v60 + 1;
    v61 = &v56[16 * v60];
    *(v61 + 4) = v50;
    *(v61 + 5) = v52;
    v62 = v76;
    *(v76 + v54) = v56;
    swift_endAccess();
    v63 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount;
    swift_beginAccess();
    v64 = *(v62 + v63);
    v65 = __OFADD__(v64, v53);
    v66 = v64 + v53;
    if (v65)
    {
      __break(1u);
    }

    else
    {
      *(v62 + v63) = v66;
      v56 = v83;
      v52 = v86;
      if (qword_1EB2E59F8 == -1)
      {
LABEL_15:
        v67 = qword_1EB2FF3B8;
        type metadata accessor for ImportExport.ArchivingOptions(0);
        sub_1A84E529C();
        sub_1A84E52CC();
        sub_1A8406898(&v56[v58], v67);
        v68 = v87;
        v69 = v74;
        (v74)(v80, v52);
        v69(v81, v52);
        v70 = type metadata accessor for ImportExport.ArchivedConversationBatch(0);
        v71 = v52;
        v72 = v77;
        (*(v68 + 16))(v77 + *(v70 + 20), &v56[v58], v71);
        sub_1A84C5F40(v56, type metadata accessor for ImportExport.ArchivedConversationDirectories);
        *v72 = v62;
        *(v72 + *(v70 + 24)) = v73;
        (*(*(v70 - 8) + 56))(v72, 0, 1, v70);

        return;
      }
    }

    swift_once();
    goto LABEL_15;
  }

LABEL_19:
  sub_1A824B2D4(v26, &qword_1EB2E7068, &unk_1A8501EB0);
  sub_1A84E653C();
  __break(1u);
}

uint64_t type metadata accessor for ImportExport.ArchivedConversationBatch(uint64_t a1)
{
  result = qword_1EB2E8D10;
  if (!qword_1EB2E8D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A84C48A8(uint64_t a1)
{
  type metadata accessor for ImportExport.ArchivedConversation(319);
  if (v1 <= 0x3F)
  {
    sub_1A84E558C();
    if (v2 <= 0x3F)
    {
      sub_1A84C4944(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A84C4944(uint64_t a1)
{
  if (!qword_1EB2E7ED8)
  {
    type metadata accessor for ImportExport.Message(255);
    v1 = sub_1A84E604C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2E7ED8);
    }
  }
}

uint64_t sub_1A84C499C(uint64_t a1)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v3 = sub_1A84E558C();
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A84E5C9C();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v48[0]) = 0;
  v12 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v13 = sub_1A84E5D8C();

  v14 = [v12 fileExistsAtPath:v13 isDirectory:v48];

  if (v14 && (v48[0] & 1) == 0)
  {
    sub_1A84E526C();
    swift_allocObject();
    sub_1A84E525C();
    v17 = sub_1A84E55AC();
    if (v1)
    {

      sub_1A84E5C8C();
      v20 = v42;
      (*(v42 + 16))(v5, a1, v3);
      v21 = v1;
      v22 = sub_1A84E5C7C();
      v23 = sub_1A84E619C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v48[0] = v45;
        *v24 = 136315394;
        v25 = sub_1A84E555C();
        v26 = v20;
        v28 = v27;
        (*(v26 + 8))(v5, v3);
        v29 = sub_1A82446BC(v25, v28, v48);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2112;
        v30 = v1;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v31;
        v32 = v41;
        *v41 = v31;
        _os_log_impl(&dword_1A823F000, v22, v23, "Failed to read archived conversation from %s: %@", v24, 0x16u);
        sub_1A824B2D4(v32, &unk_1EB2E9070, &unk_1A8501A90);
        MEMORY[0x1AC56D3F0](v32, -1, -1);
        v33 = v45;
        sub_1A8244788(v45);
        MEMORY[0x1AC56D3F0](v33, -1, -1);
        MEMORY[0x1AC56D3F0](v24, -1, -1);
      }

      else
      {

        (*(v20 + 8))(v5, v3);
      }

      (*(v43 + 8))(v8, v44);
      return swift_willThrow();
    }

    else
    {
      v41 = v17;
      v19 = v18;
      type metadata accessor for ImportExport.ArchivedConversation(0);
      sub_1A84C6008(&qword_1EB2E7210, type metadata accessor for ImportExport.ArchivedConversation, &protocol conformance descriptor for ImportExport.ArchivedConversation);
      v40 = v19;
      sub_1A84E524C();

      sub_1A83F5994(v41, v40);
      v34 = v48[0];
      v35 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
      swift_beginAccess();
      sub_1A84C5ED8(v34 + v35, v11, type metadata accessor for ImportExport.Conversation);
      v36 = v45;
      v37 = _s6IMCore12ImportExportO12ConversationV2eeoiySbAE_AEtFZ_0(v11, v45);
      sub_1A84C5F40(v11, type metadata accessor for ImportExport.Conversation);
      result = v34;
      if ((v37 & 1) == 0)
      {
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A85345F0);
        sub_1A84C5ED8(v34 + v35, v11, type metadata accessor for ImportExport.Conversation);
        v38 = *(v11 + 1);
        v39 = *(v11 + 2);

        sub_1A84C5F40(v11, type metadata accessor for ImportExport.Conversation);
        MEMORY[0x1AC56A990](v38, v39);

        MEMORY[0x1AC56A990](0xD000000000000029, 0x80000001A8534610);
        MEMORY[0x1AC56A990](v36[1], v36[2]);
        sub_1A84E653C();
        __break(1u);
      }
    }
  }

  else
  {
    sub_1A84C5ED8(v45, v11, type metadata accessor for ImportExport.Conversation);
    type metadata accessor for ImportExport.ArchivedConversation(0);
    v15 = swift_allocObject();
    sub_1A84C5FA0(v11, v15 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation, type metadata accessor for ImportExport.Conversation);
    result = v15;
    *(v15 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths) = MEMORY[0x1E69E7CC0];
    *(v15 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount) = 0;
  }

  return result;
}

uint64_t sub_1A84C50A8(uint64_t a1, void *a2)
{
  v87 = a1;
  v3 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v64 - v6;
  v88 = type metadata accessor for ImportExport.Attachment(0);
  v83 = *(v88 - 8);
  v8 = MEMORY[0x1EEE9AC00](v88);
  v77 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v64 - v10;
  v84 = type metadata accessor for ImportExport.MessagePart(0);
  v86 = *(v84 - 8);
  v11 = MEMORY[0x1EEE9AC00](v84);
  v78 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v64 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v64 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v64 - v22;
  v24 = type metadata accessor for ImportExport.Message(0);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v64 - v29;
  v31 = v89;
  sub_1A8462834();
  if (v31)
  {
    return v18;
  }

  v89 = 0;
  v70 = v30;
  v71 = v28;
  v73 = v21;
  v74 = v15;
  v75 = v18;
  v67 = *(v87 + 16);
  if (!v67)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v32 = 0;
  v66 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v68 = v87 + v66;
  v33 = *(v25 + 72);
  v18 = MEMORY[0x1E69E7CC0];
  v87 = v83 + 48;
  v34 = v86;
  v35 = v70;
  v76 = a2;
  v65 = v33;
  v80 = v7;
  while (1)
  {
    v72 = v18;
    v69 = v32;
    result = sub_1A84C5ED8(v68 + v33 * v32, v35, type metadata accessor for ImportExport.Message);
    v37 = *(v35 + 216);
    v83 = *(v37 + 16);
    if (v83)
    {
      break;
    }

    v38 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v35 = v70;
    v58 = v89;
    ImportExport.Message.update(messageParts:)(v38, v71);
    v89 = v58;
    if (v58)
    {
LABEL_38:
      sub_1A84C5F40(v35, type metadata accessor for ImportExport.Message);

      return v18;
    }

    v18 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1A83EF168(0, *(v18 + 16) + 1, 1, v18);
    }

    v59 = v69;
    v61 = *(v18 + 16);
    v60 = *(v18 + 24);
    if (v61 >= v60 >> 1)
    {
      v18 = sub_1A83EF168((v60 > 1), v61 + 1, 1, v18);
    }

    v32 = v59 + 1;
    sub_1A84C5F40(v35, type metadata accessor for ImportExport.Message);
    *(v18 + 16) = v61 + 1;
    v62 = v65;
    sub_1A84C5FA0(v71, v18 + v66 + v61 * v65, type metadata accessor for ImportExport.Message);
    v33 = v62;
    if (v32 == v67)
    {
      return v18;
    }
  }

  v18 = 0;
  v81 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v82 = v37 + v81;
  v38 = MEMORY[0x1E69E7CC0];
  while (v18 < *(v37 + 16))
  {
    v39 = *(v34 + 72);
    sub_1A84C5ED8(v82 + v39 * v18, v23, type metadata accessor for ImportExport.MessagePart);
    v40 = &v23[*(v84 + 44)];
    v41 = v23;
    v42 = v80;
    sub_1A8243D74(v40, v80, &qword_1EB2E6F50, &unk_1A8502920);
    v43 = *v87;
    if ((*v87)(v42, 1, v88) == 1)
    {
      sub_1A824B2D4(v42, &qword_1EB2E6F50, &unk_1A8502920);
      v44 = v78;
      sub_1A84C5ED8(v41, v78, type metadata accessor for ImportExport.MessagePart);
      v23 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1A83EF140(0, v38[2] + 1, 1, v38);
      }

      v46 = v38[2];
      v45 = v38[3];
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        v38 = sub_1A83EF140((v45 > 1), v46 + 1, 1, v38);
      }
    }

    else
    {
      sub_1A84C5FA0(v42, v85, type metadata accessor for ImportExport.Attachment);
      v48 = v79;
      v49 = v89;
      sub_1A8494884(v76, 0, 0, v79);
      v89 = v49;
      if (v49)
      {
        sub_1A84C5F40(v85, type metadata accessor for ImportExport.Attachment);
        v63 = v41;
LABEL_37:
        sub_1A84C5F40(v63, type metadata accessor for ImportExport.MessagePart);
        v35 = v70;
        goto LABEL_38;
      }

      v23 = v41;
      if (v43(v48, 1, v88) == 1)
      {
        sub_1A824B2D4(v48, &qword_1EB2E6F50, &unk_1A8502920);
        v44 = v74;
        sub_1A84C5ED8(v41, v74, type metadata accessor for ImportExport.MessagePart);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1A83EF140(0, v38[2] + 1, 1, v38);
        }

        v50 = v85;
        v46 = v38[2];
        v51 = v38[3];
        v47 = v46 + 1;
        if (v46 >= v51 >> 1)
        {
          v52 = v85;
          v38 = sub_1A83EF140((v51 > 1), v46 + 1, 1, v38);
          v50 = v52;
          v44 = v74;
        }

        sub_1A84C5F40(v50, type metadata accessor for ImportExport.Attachment);
      }

      else
      {
        v53 = v48;
        v54 = v77;
        sub_1A84C5FA0(v53, v77, type metadata accessor for ImportExport.Attachment);
        v55 = v73;
        v56 = v89;
        ImportExport.MessagePart.update(attachment:)(v54, v73);
        v89 = v56;
        if (v56)
        {
          sub_1A84C5F40(v54, type metadata accessor for ImportExport.Attachment);
          sub_1A84C5F40(v85, type metadata accessor for ImportExport.Attachment);
          v63 = v41;
          goto LABEL_37;
        }

        sub_1A84C5ED8(v55, v75, type metadata accessor for ImportExport.MessagePart);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1A83EF140(0, v38[2] + 1, 1, v38);
        }

        v46 = v38[2];
        v57 = v38[3];
        v47 = v46 + 1;
        if (v46 >= v57 >> 1)
        {
          v38 = sub_1A83EF140((v57 > 1), v46 + 1, 1, v38);
        }

        sub_1A84C5F40(v55, type metadata accessor for ImportExport.MessagePart);
        sub_1A84C5F40(v77, type metadata accessor for ImportExport.Attachment);
        sub_1A84C5F40(v85, type metadata accessor for ImportExport.Attachment);
        v44 = v75;
      }
    }

    ++v18;
    sub_1A84C5F40(v23, type metadata accessor for ImportExport.MessagePart);
    v38[2] = v47;
    result = sub_1A84C5FA0(v44, v38 + v81 + v46 * v39, type metadata accessor for ImportExport.MessagePart);
    v34 = v86;
    if (v83 == v18)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A84C5A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v25 = a3;
  v23[1] = a2;
  v5 = sub_1A84E558C();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A84E52BC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(a1 + 16);
  if (v8)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1A84E646C();

    v30 = 0x736567617373654DLL;
    v31 = 0xE90000000000002DLL;
    v9 = *(type metadata accessor for ImportExport.Message(0) - 8);
    v10 = *(v9 + 80);
    v23[0] = a1;
    v11 = a1 + ((v10 + 32) & ~v10);
    v32 = *(v11 + 16);
    v12 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v12);

    MEMORY[0x1AC56A990](45, 0xE100000000000000);
    v32 = *(v11 + *(v9 + 72) * (v8 - 1) + 16);
    v13 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v13);

    MEMORY[0x1AC56A990](0x6E6F736A2ELL, 0xE500000000000000);
    v14 = v24;
    sub_1A84E552C();

    if (qword_1EB2E59F8 != -1)
    {
      swift_once();
    }

    type metadata accessor for ImportExport.ArchivingOptions(0);
    sub_1A84E529C();
    sub_1A84E52CC();
    v15 = v26;
    sub_1A84E553C();
    v16 = v27;
    sub_1A8462834();
    v17 = v29;
    if (v16)
    {
      v18 = *(v28 + 8);
      v18(v15, v29);
      return (v18)(v14, v17);
    }

    else
    {
      (*(v28 + 8))(v15, v29);
      v30 = v23[0];
      sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
      sub_1A84C5E24();
      v20 = sub_1A84E52DC();
      v22 = v21;
      sub_1A84E560C();
      return sub_1A83F5994(v20, v22);
    }
  }

  else
  {
    result = sub_1A84E653C();
    __break(1u);
  }

  return result;
}

unint64_t sub_1A84C5E24()
{
  result = qword_1EB2E7EA0;
  if (!qword_1EB2E7EA0)
  {
    sub_1A83EC9D4(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A84C6008(&qword_1EB2E7800, type metadata accessor for ImportExport.Message, &protocol conformance descriptor for ImportExport.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7EA0);
  }

  return result;
}

uint64_t sub_1A84C5ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84C5F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84C5FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84C6008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t ImportExport.Message.LayoutDescriptor.init(withAssoociatedMessageGeometryDescriptor:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = *a1;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  result = ImportExport.Message.LayoutDescriptor.LayoutIntent.init(rawValue:)(result, &v10);
  v5 = v10;
  if (v10 == 13)
  {
LABEL_5:
    *a2 = 13;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    return result;
  }

  result = *(a1 + 8);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

  result = ImportExport.Message.LayoutDescriptor.LayoutIntent.init(rawValue:)(result, &v9);
  if (v9 == 13)
  {
    goto LABEL_5;
  }

  *&v6 = *(a1 + 16);
  *&v7 = *(a1 + 40);
  *&v8 = *(a1 + 48);
  *a2 = v5 | (v9 << 8) | (v6 << 32);
  *(a2 + 1) = *(a1 + 24);
  a2[3] = v7 | (v8 << 32);
  return result;
}

unint64_t ImportExport.Message.LayoutDescriptor.LayoutIntent.init(withAssocatedMessagelayoutIntent:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = ImportExport.Message.LayoutDescriptor.LayoutIntent.init(rawValue:)(result, &v3);
    *a2 = v3;
  }

  return result;
}

float64x2_t ImportExport.Message.LayoutDescriptor.associatedMessageGeometryDescriptor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(v1 + 1);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 8);
  result = vcvtq_f64_f32(*(v1 + 24));
  *(a1 + 40) = result;
  *(a1 + 56) = 0;
  return result;
}

uint64_t ImportExport.ArchiveImporterStatistics.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v1 = ImportExport.ImportStatistics.init()();
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t ImportExport.ArchiveImporterStatistics.__allocating_init(importStatistics:missingAttachments:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ImportExport.ArchiveImporterStatistics.init(importStatistics:missingAttachments:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ImportExport.ArchiveImporterStatistics.init()()
{
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v1 = ImportExport.ImportStatistics.init()();
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

unint64_t sub_1A84C637C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A84C63B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A8533060 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8533590 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A84E67AC();

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
  return result;
}

uint64_t sub_1A84C649C(uint64_t a1)
{
  v2 = sub_1A84C6794();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84C64D8(uint64_t a1)
{
  v2 = sub_1A84C6794();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveImporterStatistics.deinit()
{

  return v0;
}

uint64_t ImportExport.ArchiveImporterStatistics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ImportExport.ArchiveImporterStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8D20, &unk_1A850AF40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C6794();
  sub_1A84E68AC();
  v11 = *(v3 + 16);
  HIBYTE(v10) = 0;
  type metadata accessor for ImportExport.ImportStatistics();
  sub_1A84C6B84(&qword_1EB2E82B8, type metadata accessor for ImportExport.ImportStatistics, &protocol conformance descriptor for ImportExport.ImportStatistics);
  sub_1A84E672C();
  if (!v2)
  {
    v11 = *(v3 + 24);
    HIBYTE(v10) = 1;
    sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84C6AE8(&qword_1EB2E86B8, &qword_1EB2E73A0, &protocol conformance descriptor for ImportExport.Attachment, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A84C6794()
{
  result = qword_1EB2E8D28;
  if (!qword_1EB2E8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D28);
  }

  return result;
}

uint64_t ImportExport.ArchiveImporterStatistics.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.ArchiveImporterStatistics.init(from:)(a1);
  return v2;
}

void *ImportExport.ArchiveImporterStatistics.init(from:)(void *a1)
{
  v10 = sub_1A83EA2FC(&qword_1EB2E8D30, &qword_1A850AF50);
  v4 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v6 = &v10 - v5;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C6794();
  sub_1A84E689C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    type metadata accessor for ImportExport.ImportStatistics();
    v11 = 0;
    sub_1A84C6B84(&qword_1EB2E82B0, type metadata accessor for ImportExport.ImportStatistics, &protocol conformance descriptor for ImportExport.ImportStatistics);
    v8 = v10;
    sub_1A84E666C();
    *(v1 + 16) = v12;
    sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
    v11 = 1;
    sub_1A84C6AE8(&qword_1EB2E86E0, &qword_1EB2E7398, &protocol conformance descriptor for ImportExport.Attachment, MEMORY[0x1E69E6330]);
    sub_1A84E666C();
    (*(v7 + 8))(v6, v8);
    *(v1 + 24) = v12;
  }

  sub_1A8244788(a1);
  return v1;
}

uint64_t sub_1A84C6AE8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84C6B84(a2, type metadata accessor for ImportExport.Attachment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84C6B84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1A84C6BCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.ArchiveImporterStatistics.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t ImportExport.ArchiveImporterStatistics.format(report:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImportExport.Attachment(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0xD000000000000011;
  *&v37 = 0x80000001A852F2B0;
  *(&v37 + 1) = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v39 = 0;
  ImportExport.ImportStatistics.format(report:)(&v36);
  v8 = v36;
  v35 = v37;
  v9 = v38;
  v10 = v39;
  v11 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v13 = v11;
  }

  else
  {
    result = sub_1A83EECF8(0, *(v11 + 16) + 1, 1, v11);
    v13 = result;
  }

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  if (v15 >= v14 >> 1)
  {
    result = sub_1A83EECF8((v14 > 1), v15 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 16) = v15 + 1;
  v16 = v13 + 40 * v15;
  *(v16 + 32) = v8;
  *(v16 + 40) = v35;
  *(v16 + 56) = v9;
  *(v16 + 64) = v10;
  *(a1 + 24) = v13;
  v17 = 1;
  LOBYTE(v36) = 1;
  v18 = *(v2 + 24);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v34 = v13;
    *&v35 = a1;
    v21 = v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v22 = *(v5 + 72);
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A84300A8(v21, v7);
      v24 = ImportExport.Attachment.description.getter();
      v26 = v25;
      sub_1A83F5AF4(v7);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A83EEBEC(0, *(v23 + 16) + 1, 1, v23);
        v23 = result;
      }

      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_1A83EEBEC((v27 > 1), v28 + 1, 1, v23);
        v23 = result;
      }

      *(v23 + 16) = v28 + 1;
      v29 = (v23 + 32 * v28);
      v29[4] = 0;
      v29[5] = 0xE000000000000000;
      v29[6] = v24;
      v29[7] = v26;
      v21 += v22;
      --v19;
    }

    while (v19);
    v17 = v36;
    v13 = v34;
    a1 = v35;
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v31 = *(v13 + 16);
  v30 = *(v13 + 24);
  if (v31 >= v30 >> 1)
  {
    result = sub_1A83EECF8((v30 > 1), v31 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 16) = v31 + 1;
  v32 = v13 + 40 * v31;
  *(v32 + 32) = 0xD000000000000014;
  *(v32 + 40) = 0x80000001A8534660;
  *(v32 + 48) = v23;
  *(v32 + 56) = v20;
  *(v32 + 64) = v17;
  *(a1 + 24) = v13;
  return result;
}

unint64_t sub_1A84C702C()
{
  result = qword_1EB2E8D38;
  if (!qword_1EB2E8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D38);
  }

  return result;
}

unint64_t sub_1A84C7084()
{
  result = qword_1EB2E8D40;
  if (!qword_1EB2E8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D40);
  }

  return result;
}

unint64_t sub_1A84C70DC()
{
  result = qword_1EB2E8D48;
  if (!qword_1EB2E8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D48);
  }

  return result;
}

uint64_t sub_1A84C7130()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FF010);
  sub_1A824431C(v0, qword_1EB2FF010);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t sub_1A84C719C()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FF3C8);
  sub_1A824431C(v0, qword_1EB2FF3C8);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t sub_1A84C7208()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FF3E0);
  sub_1A824431C(v0, qword_1EB2FF3E0);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

void sub_1A84C7274(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A84E5C9C();
  v200 = *(v7 - 8);
  v201 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v202 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for ImportExport.MessagePart(0);
  v243 = *(v219 - 8);
  v9 = MEMORY[0x1EEE9AC00](v219);
  v245 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v173 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v173 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v173 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v173 - v20;
  v22 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v220 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for ImportExport.Message(0);
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 32) == __PAIR128__(a2, a1) || (sub_1A84E67AC() & 1) != 0)
  {
    sub_1A84CA1FC(v3, a3, type metadata accessor for ImportExport.Message);
  }

  else
  {
    v213 = v13;
    v207 = v21;
    v184 = a1;
    v185 = a2;
    v186 = a3;
    v25 = *(v3 + 8);
    v215 = *v3;
    v217 = v19;
    v218 = v25;
    v26 = v203;
    v27 = (v3 + v203[23]);
    v28 = v27[7];
    v259 = v27[6];
    v260 = v28;
    v261 = v27[8];
    v29 = v27[3];
    v255 = v27[2];
    v256 = v29;
    v30 = v27[5];
    v257 = v27[4];
    v258 = v30;
    v31 = v27[1];
    v253 = *v27;
    v254 = v31;
    v32 = (v3 + v203[24]);
    v33 = v32[8];
    v269 = v32[7];
    v270 = v33;
    v34 = v32[6];
    v35 = v32[3];
    v264 = v32[2];
    v265 = v35;
    v36 = v32[4];
    v267 = v32[5];
    v268 = v34;
    v266 = v36;
    v37 = v32[1];
    v262 = *v32;
    v263 = v37;
    v38 = *(v3 + 24);
    v39 = *(v3 + 96);
    v40 = *(v3 + 104);
    v41 = *(v3 + 128);
    v42 = *(v3 + 136);
    v43 = *(v3 + 152);
    v195 = *(v3 + 144);
    v196 = v41;
    v197 = v43;
    v44 = *(v3 + 168);
    v194 = *(v3 + 160);
    v199 = v44;
    v45 = *(v3 + 184);
    v179 = *(v3 + 176);
    v180 = v39;
    v183 = *(v3 + 208);
    v210 = *(v3 + 216);
    v46 = *(v3 + 88);
    v178 = *(v3 + 80);
    v47 = v203[21];
    v246 = v203[20];
    v48 = (v3 + v47);
    v49 = *v48;
    v50 = v48[1];
    v51 = (v3 + v203[22]);
    v52 = v51[1];
    v181 = *v51;
    v182 = v49;
    v192 = v52;

    v189 = v45;

    v190 = v40;

    v198 = v42;

    v53 = v197;

    v188 = v46;

    v191 = v50;

    v216 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A84E595C();
    v187 = *&v247[0];
    v177 = *(v3 + 16);
    v54 = v26[20];
    *&v247[0] = 0;
    sub_1A84E5B8C();
    v55 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v193 = v54;
    v214 = v55;
    sub_1A84E594C();
    if (v53)
    {
      v56 = HIBYTE(v53) & 0xF;
      if ((v53 & 0x2000000000000000) == 0)
      {
        v56 = v195 & 0xFFFFFFFFFFFFLL;
      }

      if (v56)
      {
        v38 |= 4uLL;
      }
    }

    v57 = v217;
    if (v198)
    {
      v58 = HIBYTE(v198) & 0xF;
      if ((v198 & 0x2000000000000000) == 0)
      {
        v58 = v196 & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        v38 |= 8uLL;
      }
    }

    if (v199)
    {
      v59 = HIBYTE(v199) & 0xF;
      if ((v199 & 0x2000000000000000) == 0)
      {
        v59 = v194 & 0xFFFFFFFFFFFFLL;
      }

      if (v59)
      {
        v38 |= 0x10uLL;
      }
    }

    if ((~v38 & 0x8002) != 0)
    {
      v60 = v38 | 0x8002;
    }

    else
    {
      v60 = v38;
    }

    v61 = v210;
    sub_1A8423270(v210, v247);
    v62 = *&v247[0];
    if ((*&v247[0] & ~v60) == 0)
    {
      v62 = 0;
    }

    v175 = v62;
    v176 = v60;
    v63 = *(v61 + 16);
    v64 = MEMORY[0x1E69E7CC0];
    if (v63)
    {
      *&v247[0] = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v63, 0);
      v64 = *&v247[0];
      v65 = v61 + ((*(v243 + 80) + 32) & ~*(v243 + 80));
      v244 = *(v243 + 72);
      v66 = v219;
      do
      {
        v67 = v245;
        sub_1A84CA1FC(v65, v245, type metadata accessor for ImportExport.MessagePart);
        v68 = (v67 + *(v66 + 76));
        v69 = v68[1];
        v246 = *v68;

        sub_1A84CA264(v67, type metadata accessor for ImportExport.MessagePart);
        *&v247[0] = v64;
        v71 = *(v64 + 16);
        v70 = *(v64 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_1A83EF534((v70 > 1), v71 + 1, 1);
          v66 = v219;
          v64 = *&v247[0];
        }

        *(v64 + 16) = v71 + 1;
        v72 = v64 + 16 * v71;
        *(v72 + 32) = v246;
        *(v72 + 40) = v69;
        v65 += v244;
        --v63;
      }

      while (v63);
      v57 = v217;
    }

    *&v247[0] = v64;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D84();
    v208 = sub_1A84E5D6C();
    v209 = v73;

    v74 = *(v210 + 16);
    if (v74)
    {
      v75 = 0;
      v76 = 0;
      v212 = (*(v243 + 80) + 32) & ~*(v243 + 80);
      v245 = *(v243 + 72);
      v77 = MEMORY[0x1E69E7CC0];
      v211 = v216 - 8;
      v174 = v210 + v212;
      v78 = v210 + v212;
      v206 = v74;
      v79 = v74;
      do
      {
        v221 = v78;
        v222 = v79;
        v244 = v77;
        sub_1A84CA1FC(v78, v57, type metadata accessor for ImportExport.MessagePart);
        v80 = *(v57 + 48);
        if (v80)
        {
          v246 = *(v57 + 40);
          v81 = v219;
          v223 = v80;
        }

        else
        {
          v81 = v219;
          v223 = sub_1A84E5E7C();
          v246 = v76;
        }

        v82 = *(v57 + 56);
        if (v82 < 0)
        {
          v82 = v75;
        }

        v243 = v82;
        v83 = *(v57 + 8);
        v84 = (v57 + v81[19]);
        v85 = *v84;
        v86 = v84[1];
        v232 = *v57;
        v233 = v85;
        v224 = v86;
        v229 = *(v57 + 16);
        v237 = *(v57 + 96);
        v87 = *(v57 + 168);
        v88 = *(v57 + 120);
        v89 = *(v57 + 136);
        v251 = *(v57 + 152);
        v252 = v87;
        v249 = v88;
        v250 = v89;
        v248 = *(v57 + 104);
        v90 = v81[13];
        v91 = (v57 + v81[12]);
        v92 = v91[1];
        v240 = *v91;
        v93 = *(v57 + v90 + 8);
        v242 = *(v57 + v90);
        v241 = v93;
        v94 = v81[15];
        v95 = (v57 + v81[14]);
        v96 = v95[1];
        v238 = *v95;
        v227 = v92;
        v228 = v96;
        v97 = *(v57 + v94 + 8);
        v239 = *(v57 + v94);
        v231 = v97;
        v98 = *(v57 + 80);
        v225 = *(v57 + 64);
        v226 = v98;

        sub_1A8243D74(&v248, v247, &qword_1EB2E6F58, &qword_1A8501388);

        v99 = v216;
        sub_1A84E595C();
        v230 = *&v247[0];
        v100 = v81[17];
        v234 = *(v57 + v81[16]);
        v236 = *(v57 + v100);
        v235 = *(v57 + v81[18]);
        v101 = *(v57 + v81[20]);
        sub_1A8243D74(v57 + v81[11], &v16[v81[11]], &qword_1EB2E6F50, &unk_1A8502920);
        *(v16 + 6) = 0u;
        *(v16 + 7) = 0u;
        *(v16 + 8) = 0u;
        *(v16 + 9) = 0u;
        *(v16 + 10) = 0u;
        *(v16 + 22) = 0;
        *(v16 + 4) = 0u;
        *(v16 + 5) = 0u;
        v102 = v81[21];
        *&v247[0] = 0;

        sub_1A84E5B8C();
        sub_1A84E594C();
        v16[16] = v229;
        v103 = v233;
        *v16 = v232;
        *(v16 + 1) = v83;
        v104 = v223;
        *(v16 + 5) = v246;
        *(v16 + 6) = v104;
        v105 = &v16[v81[19]];
        v106 = v224;
        *v105 = v103;
        *(v105 + 1) = v106;

        v107 = v226;
        *(v16 + 4) = v225;
        *(v16 + 5) = v107;
        *(v16 + 12) = v237;
        v108 = *(v16 + 120);
        v109 = *(v16 + 152);
        v247[2] = *(v16 + 136);
        v247[3] = v109;
        v247[4] = *(v16 + 168);
        v247[0] = *(v16 + 104);
        v247[1] = v108;
        sub_1A824B2D4(v247, &qword_1EB2E6F58, &qword_1A8501388);
        v110 = v248;
        *(v16 + 120) = v249;
        v111 = v251;
        *(v16 + 136) = v250;
        *(v16 + 152) = v111;
        *(v16 + 168) = v252;
        *(v16 + 104) = v110;
        v112 = &v16[v81[12]];
        v113 = v227;
        *v112 = v240;
        *(v112 + 1) = v113;
        v114 = &v16[v81[13]];
        v115 = v242;
        v116 = v241;
        *v114 = v242;
        *(v114 + 1) = v116;
        v117 = &v16[v81[14]];
        v118 = v228;
        *v117 = v238;
        *(v117 + 1) = v118;
        v119 = &v16[v81[15]];
        v120 = v231;
        *v119 = v239;
        *(v119 + 1) = v120;
        sub_1A83F5918(v115, v116);
        v121 = *(v99 - 8);
        v242 = *(v121 + 8);
        v241 = v121 + 8;
        v242(&v16[v102], v99);
        v271 = v230;
        sub_1A84E5B8C();
        sub_1A84E594C();
        v16[v81[16]] = v234;
        v16[v81[17]] = v236;
        v16[v81[18]] = v235;
        *&v16[v81[20]] = v101;
        v122 = v218;
        *(v16 + 3) = v215;
        *(v16 + 4) = v122;
        v123 = v243;
        *(v16 + 7) = v243;
        v124 = v213;
        sub_1A84CA1FC(v16, v213, type metadata accessor for ImportExport.MessagePart);

        v77 = v244;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1A83EF140(0, v77[2] + 1, 1, v77);
        }

        v126 = v77[2];
        v125 = v77[3];
        v57 = v217;
        if (v126 >= v125 >> 1)
        {
          v77 = sub_1A83EF140((v125 > 1), v126 + 1, 1, v77);
        }

        v77[2] = v126 + 1;
        sub_1A842AD50(v124, v77 + v212 + v126 * v245, type metadata accessor for ImportExport.MessagePart);
        sub_1A84CA264(v16, type metadata accessor for ImportExport.MessagePart);
        v75 = v123 + 1;
        if (__OFADD__(v123, 1))
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v127 = v246 + v104;
        if (__OFADD__(v246, v104))
        {
          goto LABEL_72;
        }

        v76 = v127 + 1;
        v128 = v222;
        if (__OFADD__(v127, 1))
        {
          goto LABEL_73;
        }

        sub_1A84CA264(v57, type metadata accessor for ImportExport.MessagePart);
        v78 = v221 + v245;
        v79 = v128 - 1;
      }

      while (v79);
      v129 = 0;
      *&v248 = -1;
      v130 = v205;
      v131 = v202;
      v132 = v174;
      while (v129 < *(v210 + 16))
      {
        v133 = v207;
        sub_1A84CA1FC(v132, v207, type metadata accessor for ImportExport.MessagePart);
        sub_1A842343C(v133, &v248, v208, v209);
        if (v130)
        {

          sub_1A84CA264(v133, type metadata accessor for ImportExport.MessagePart);

          sub_1A84E5C8C();
          v164 = v130;
          v165 = sub_1A84E5C7C();
          v166 = sub_1A84E619C();

          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            *v167 = 138412290;
            v169 = v130;
            v170 = _swift_stdlib_bridgeErrorToNSError();
            *(v167 + 4) = v170;
            *v168 = v170;
            _os_log_impl(&dword_1A823F000, v165, v166, "Failed to create a message with Error: %@", v167, 0xCu);
            sub_1A824B2D4(v168, &unk_1EB2E9070, &unk_1A8501A90);
            MEMORY[0x1AC56D3F0](v168, -1, -1);
            MEMORY[0x1AC56D3F0](v167, -1, -1);
          }

          (*(v200 + 8))(v131, v201);
          swift_willThrow();
          v242(&v204[v193], v216);
          return;
        }

        ++v129;
        sub_1A84CA264(v133, type metadata accessor for ImportExport.MessagePart);
        v132 += v245;
        if (v206 == v129)
        {
          goto LABEL_51;
        }
      }

LABEL_74:
      __break(1u);
    }

    else
    {
      v77 = MEMORY[0x1E69E7CC0];
LABEL_51:
      v134 = v195;
      v135 = v175 | v176;
      v136 = v203;
      v137 = v204;
      v138 = v218;
      *v204 = v215;
      *(v137 + 8) = v138;
      v139 = v209;
      *(v137 + 112) = v208;
      *(v137 + 120) = v139;
      *(v137 + 16) = v177;
      v140 = v185;
      *(v137 + 32) = v184;
      *(v137 + 40) = v140;
      v141 = (v137 + v136[23]);
      v142 = v256;
      v141[2] = v255;
      v141[3] = v142;
      v143 = v261;
      v141[7] = v260;
      v141[8] = v143;
      v144 = v259;
      v141[5] = v258;
      v141[6] = v144;
      v141[4] = v257;
      v145 = v254;
      *v141 = v253;
      v141[1] = v145;
      v146 = (v137 + v136[24]);
      v147 = v269;
      v146[6] = v268;
      v146[7] = v147;
      v146[8] = v270;
      v148 = v265;
      v146[2] = v264;
      v146[3] = v148;
      v149 = v267;
      v146[4] = v266;
      v146[5] = v149;
      v150 = v263;
      *v146 = v262;
      v146[1] = v150;
      v151 = v188;
      *(v137 + 80) = v178;
      *(v137 + 88) = v151;
      v152 = v190;
      *(v137 + 96) = v180;
      *(v137 + 104) = v152;
      v153 = v197;
      v154 = v198;
      *(v137 + 128) = v196;
      *(v137 + 136) = v154;
      *(v137 + 144) = v134;
      *(v137 + 152) = v153;
      v155 = v199;
      *(v137 + 160) = v194;
      *(v137 + 168) = v155;
      v156 = v189;
      *(v137 + 176) = v179;
      *(v137 + 184) = v156;
      v157 = v183;
      *(v137 + 208) = v183;
      *(v137 + 216) = v77;

      sub_1A8400E7C(&v253, v247);
      sub_1A8400E7C(&v262, v247);
      (*(*(v216 - 8) + 8))(v137 + v193);
      *&v247[0] = v187;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v158 = (v137 + v136[21]);
      v159 = v191;
      *v158 = v182;
      v158[1] = v159;
      v160 = (v137 + v136[22]);
      v161 = v192;
      *v160 = v181;
      v160[1] = v161;
      *(v137 + 24) = v135;
      if (v157 > 3)
      {
        if (v157 > 5)
        {
          if (v157 == 6)
          {
            v162 = 0xE300000000000000;
            v163 = 5456722;
          }

          else
          {
            v162 = 0xEC000000534D5365;
            v163 = 0x74696C6C65746153;
          }
        }

        else if (v157 == 4)
        {
          v163 = 5459283;
          v162 = 0xE300000000000000;
        }

        else
        {
          v162 = 0xE800000000000000;
          v163 = 0x656D695465636146;
        }
      }

      else if (v157 > 1)
      {
        if (v157 == 2)
        {
          v162 = 0xE800000000000000;
        }

        else
        {
          v162 = 0xEC0000006574694CLL;
        }

        v163 = 0x6567617373654D69;
      }

      else if (v157)
      {
        v162 = 0xE300000000000000;
        v163 = 7958113;
      }

      else
      {
        v162 = 0xE700000000000000;
        v163 = 0x6E776F6E6B6E75;
      }

      *(v137 + 192) = v163;
      *(v137 + 200) = v162;
      v171 = v256;
      *(v137 + 48) = *(&v255 + 1);
      *(v137 + 56) = v171;
      v172 = v265;
      *(v137 + 64) = *(&v264 + 1);
      *(v137 + 72) = v172;
      sub_1A842AD50(v137, v186, type metadata accessor for ImportExport.Message);
    }
  }
}

uint64_t sub_1A84C8340(void *a1)
{
  v2 = v1;
  v153 = type metadata accessor for ImportExport.Message(0);
  v4 = MEMORY[0x1EEE9AC00](v153);
  v6 = (&v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v144 = &v122 - v7;
  v8 = sub_1A84E5C9C();
  v150 = *(v8 - 8);
  v151 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v122 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v145 = &v122 - v15;
  v16 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v149 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v122 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v122 - v22;
  v24 = v2[4];
  v25 = v2[5];
  v152 = a1;
  v27 = a1[1];
  v26 = a1[2];
  if ((v24 != v27 || v25 != v26) && (sub_1A84E67AC() & 1) == 0)
  {
    goto LABEL_93;
  }

  v146 = v26;
  v147 = v27;
  v29 = *v2;
  v28 = v2[1];
  v30 = sub_1A84E5D8C();
  v11 = IMDMessageRecordCopyMessageForGUID();

  if (v11)
  {

    sub_1A84E5C8C();
    sub_1A84CA1FC(v2, v6, type metadata accessor for ImportExport.Message);
    v31 = sub_1A84E5C7C();
    v32 = sub_1A84E617C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v161 = v34;
      *v33 = 136315138;
      v35 = *v6;
      v36 = v6[1];

      sub_1A84CA264(v6, type metadata accessor for ImportExport.Message);
      v37 = sub_1A82446BC(v35, v36, &v161);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1A823F000, v31, v32, "not importing duplicated message: %s", v33, 0xCu);
      sub_1A8244788(v34);
      MEMORY[0x1AC56D3F0](v34, -1, -1);
      MEMORY[0x1AC56D3F0](v33, -1, -1);

      (*(v150 + 8))(v14, v151);
      v38 = 0;
      return v38 & 1;
    }

    sub_1A84CA264(v6, type metadata accessor for ImportExport.Message);
    (*(v150 + 8))(v14, v151);
LABEL_13:
    v38 = 0;
    return v38 & 1;
  }

  v141 = v29;
  v140 = v28;
  v148 = sub_1A84C97E0();
  v39 = JWEncodeCodableObject();
  if (v39)
  {
    v40 = v39;
    v41 = sub_1A84E55FC();
    v43 = v42;

    v44 = sub_1A84E55EC();
    sub_1A83F5994(v41, v43);
    sub_1A84C9B30(&v155);
    sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A84E595C();
    if (v161)
    {
      if (v161[2])
      {
        sub_1A84A5630(v161);
        v11 = sub_1A84E5D2C();

        v45 = JWEncodeDictionary();

        if (v45)
        {

          v46 = sub_1A84E55FC();
          v48 = v47;

          v143 = sub_1A84E55EC();
          sub_1A83F5994(v46, v48);
          goto LABEL_16;
        }

        goto LABEL_92;
      }
    }

    v143 = 0;
LABEL_16:
    v139 = v44;
    v49 = [v148 string];
    if (!v49)
    {
      sub_1A84E5DBC();
      v50 = sub_1A84E5D8C();

      v49 = v50;
    }

    v142 = v49;
    ImportExport.Message.receivedDate.getter(v23);
    v51 = sub_1A84E56DC();
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    if (v53(v23, 1, v51) == 1)
    {
      sub_1A824B2D4(v23, &qword_1EB2E6F48, &unk_1A8501F00);
      v138 = 0;
    }

    else
    {
      v54 = sub_1A84E565C();
      v138 = [v54 __im_nanosecondTimeInterval];

      (*(v52 + 8))(v23, v51);
    }

    v55 = v149;
    ImportExport.Message.readDate.getter(v21);
    v56 = v53(v21, 1, v51);
    v57 = v143;
    if (v56 == 1)
    {
      sub_1A824B2D4(v21, &qword_1EB2E6F48, &unk_1A8501F00);
      v137 = 0;
    }

    else
    {
      v58 = sub_1A84E565C();
      v137 = [v58 __im_nanosecondTimeInterval];

      (*(v52 + 8))(v21, v51);
    }

    ImportExport.Message.deliveredDate.getter(v55);
    if (v53(v55, 1, v51) == 1)
    {
      sub_1A824B2D4(v55, &qword_1EB2E6F48, &unk_1A8501F00);
      v59 = 0;
    }

    else
    {
      v60 = sub_1A84E565C();
      v59 = [v60 __im_nanosecondTimeInterval];

      (*(v52 + 8))(v55, v51);
    }

    v61 = v154;
    v62 = v152[9];
    if (v62)
    {
      if ((v62 & 0x2000000000000000) != 0)
      {
        v63 = HIBYTE(v62) & 0xF;
      }

      else
      {
        v63 = v152[8] & 0xFFFFFFFFFFFFLL;
      }

      v136 = v63 != 0;
    }

    else
    {
      v136 = 0;
    }

    v161 = v2[3];
    sub_1A8492750(&v161);
    v64 = sub_1A84E688C();
    v65 = sub_1A84E5D8C();
    v66 = v139;
    v149 = sub_1A84E5D8C();

    v67 = sub_1A84E5D8C();
    if (v2[13])
    {
      v139 = sub_1A84E5D8C();
    }

    else
    {
      v139 = 0;
    }

    sub_1A84CA0E4(v152);
    if (v61)
    {

      v160 = v155;
      sub_1A824B2D4(&v160, &qword_1EB2E74C0, &unk_1A8502938);
      v159 = v156;
      sub_1A824B2D4(&v159, &qword_1EB2E74C0, &unk_1A8502938);

      return v38 & 1;
    }

    v127 = v67;
    v128 = v59;
    v154 = 0;

    v126 = sub_1A84E5D8C();

    v125 = sub_1A84E5D8C();
    v69 = 0;
    v70 = v2[27];
    v71 = *(v70 + 16);
    while (v71 != v69)
    {
      v72 = *(type metadata accessor for ImportExport.MessagePart(0) - 8);
      v73 = v70 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v69++;
      if (*(v73 + 120))
      {

        v135 = sub_1A84E5D8C();

        v71 = *(v70 + 16);
        goto LABEL_44;
      }
    }

    v135 = 0;
LABEL_44:
    v74 = 0;
    do
    {
      if (v71 == v74)
      {
        v130 = 0;
        goto LABEL_52;
      }

      v75 = *(type metadata accessor for ImportExport.MessagePart(0) - 8);
      v76 = v70 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v74++;
    }

    while (!*(v76 + 120));
    LOBYTE(v161) = *(v76 + 104);
    v77 = ImportExport.Message.Reaction.ReactionType.associatedMessageType.getter();
    if (v78)
    {
      v79 = 0;
    }

    else
    {
      v79 = v77;
    }

    v130 = v79;
LABEL_52:
    v80 = 0;
    while (v71 != v80)
    {
      v81 = *(type metadata accessor for ImportExport.MessagePart(0) - 8);
      v82 = v70 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v80++;
      if (*(v82 + 120))
      {
        v129 = *(v82 + 128);
        goto LABEL_57;
      }
    }

    v129 = 0;
LABEL_57:
    v158 = v155;
    if (*(&v155 + 1))
    {
      v132 = sub_1A84E5D8C();
    }

    else
    {
      v132 = 0;
    }

    v157 = v156;
    if (*(&v156 + 1))
    {
      v134 = sub_1A84E5D8C();
      if (v2[11])
      {
LABEL_62:
        v131 = sub_1A84E5D8C();
        goto LABEL_65;
      }
    }

    else
    {
      v134 = 0;
      if (v2[11])
      {
        goto LABEL_62;
      }
    }

    v131 = 0;
LABEL_65:
    v83 = 0;
    v84 = *(v70 + 16);
    v152 = v66;
    v133 = v65;
    while (v84 != v83)
    {
      v85 = *(type metadata accessor for ImportExport.MessagePart(0) - 8);
      v86 = v70 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v83++;
      if (*(v86 + 72))
      {

        v87 = sub_1A84E5D8C();

        v84 = *(v70 + 16);
        goto LABEL_70;
      }
    }

    v87 = 0;
LABEL_70:
    v88 = 0;
    while (v84 != v88)
    {
      v89 = *(type metadata accessor for ImportExport.MessagePart(0) - 8);
      v90 = v70 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v88++;
      if (*(v90 + 72))
      {

        ThreadIdentifierOriginatorPart = IMMessageCreateThreadIdentifierOriginatorPart();

        goto LABEL_75;
      }
    }

    ThreadIdentifierOriginatorPart = 0;
LABEL_75:
    v92 = v64;
    if (*(v2 + v153[21] + 8))
    {
      v93 = sub_1A84E5D8C();
    }

    else
    {
      v93 = 0;
    }

    v94 = *(v70 + 16);
    v95 = 0;
    while (v94 != v95)
    {
      v96 = *(type metadata accessor for ImportExport.MessagePart(0) - 8);
      v97 = v70 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v95++;
      if (*(v97 + 120))
      {
        if (*(v97 + 144))
        {

          v98 = sub_1A84E5D8C();

          goto LABEL_84;
        }

        break;
      }
    }

    v98 = 0;
LABEL_84:
    v124 = v98;
    v153 = ThreadIdentifierOriginatorPart;
    v99 = v125;
    v130 = v93;
    v100 = v126;
    v101 = v139;
    v129 = v87;
    v102 = v127;
    v103 = v149;
    v123 = v92;
    v104 = IMDMessageRecordCreate();
    sub_1A824B2D4(&v158, &qword_1EB2E74C0, &unk_1A8502938);
    sub_1A824B2D4(&v157, &qword_1EB2E74C0, &unk_1A8502938);

    v105 = v152;
    if (v104)
    {
      v106 = sub_1A84E5D8C();
      v107 = sub_1A84E5D8C();
      IMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded();

      v108 = v154;
      sub_1A84C9D24();

      if (!v108)
      {
        v38 = 1;
      }

      return v38 & 1;
    }

    v109 = v145;
    sub_1A84E5C8C();
    v110 = v144;
    sub_1A84CA1FC(v2, v144, type metadata accessor for ImportExport.Message);
    v111 = sub_1A84E5C7C();
    v112 = sub_1A84E619C();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v161 = v114;
      *v113 = 136315138;
      v115 = ImportExport.Message.description.getter();
      v117 = v116;
      sub_1A84CA264(v110, type metadata accessor for ImportExport.Message);
      v118 = sub_1A82446BC(v115, v117, &v161);

      *(v113 + 4) = v118;
      _os_log_impl(&dword_1A823F000, v111, v112, "Failed to create IMDMessageRecord for message %s", v113, 0xCu);
      sub_1A8244788(v114);
      MEMORY[0x1AC56D3F0](v114, -1, -1);
      MEMORY[0x1AC56D3F0](v113, -1, -1);
    }

    else
    {

      sub_1A84CA264(v110, type metadata accessor for ImportExport.Message);
    }

    (*(v150 + 8))(v109, v151);
    goto LABEL_13;
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  sub_1A84E5C8C();
  v119 = sub_1A84E5C7C();
  v120 = sub_1A84E619C();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    *v121 = 0;
    _os_log_impl(&dword_1A823F000, v119, v120, "trying to import into the wrong conversation", v121, 2u);
    MEMORY[0x1AC56D3F0](v121, -1, -1);
  }

  (*(v150 + 8))(v11, v151);
  result = sub_1A84E653C();
  __break(1u);
  return result;
}

id sub_1A84C97E0()
{
  v1 = type metadata accessor for ImportExport.MessagePart(0);
  v26 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A83EA2FC(&qword_1EB2E8D50, &qword_1A850B138);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = (&v25 - v6);
  v7 = sub_1A83EA2FC(&qword_1EB2E8D58, &unk_1A850B140);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v25 - v11);
  result = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  i = 0;
  v15 = *(v0 + 216);
  v16 = *(v15 + 16);
  v17 = (v5 + 56);
  v18 = (v5 + 48);
  v27 = v15;
  v28 = result;
  if (v16)
  {
    goto LABEL_3;
  }

LABEL_2:
  v19 = 1;
  for (i = v16; ; ++i)
  {
    (*v17)(v10, v19, 1, v4);
    sub_1A8412580(v10, v12, &qword_1EB2E8D58, &unk_1A850B140);
    if ((*v18)(v12, 1, v4) == 1)
    {
      return v28;
    }

    v23 = *v12;
    result = sub_1A842AD50(v12 + *(v4 + 48), v3, type metadata accessor for ImportExport.MessagePart);
    if (v23 < 0)
    {
      break;
    }

    v24 = sub_1A83F55D8(v23);
    [v28 appendAttributedString_];

    result = sub_1A84CA264(v3, type metadata accessor for ImportExport.MessagePart);
    v15 = v27;
    if (i == v16)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

    if (i >= *(v15 + 16))
    {
      goto LABEL_13;
    }

    v20 = v25;
    v21 = v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * i;
    v22 = *(v4 + 48);
    *v25 = i;
    sub_1A84CA1FC(v21, v20 + v22, type metadata accessor for ImportExport.MessagePart);
    sub_1A8412580(v20, v10, &qword_1EB2E8D50, &qword_1A850B138);
    v19 = 0;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1A84C9B30@<X0>(void *a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for ImportExport.MessagePart(0);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 216);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v23 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_1A84CA1FC(v13, v6, type metadata accessor for ImportExport.MessagePart);
      v15 = &v6[v2[12]];
      v16 = *(v15 + 1);
      if (v16)
      {
        v11 = *v15;

        v12 = v16;
      }

      v17 = &v6[v2[14]];
      v18 = *(v17 + 1);
      if (v18)
      {
        v23 = *v17;

        v10 = v18;
      }

      v19 = v6[v2[17]];
      result = sub_1A84CA264(v6, type metadata accessor for ImportExport.MessagePart);
      if (v19 <= 1)
      {
        if (v19)
        {
          v9 = 1;
        }

        else
        {
          v9 = v19;
        }
      }

      else if (v19 == 2)
      {
        v9 = 2;
      }

      else if (v19 == 3)
      {
        v9 = 3;
      }

      v13 += v14;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v23 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v20 = v22;
  v21 = v23;
  *v22 = v11;
  v20[1] = v12;
  v20[2] = v21;
  v20[3] = v10;
  v20[4] = v9;
  return result;
}

uint64_t sub_1A84C9D24()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for ImportExport.Attachment(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImportExport.MessagePart(0);
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v0;
  v13 = *(v0 + 216);
  v34 = *(v13 + 16);
  if (v34)
  {
    v31 = 0;
    v32 = v4;
    v29 = v7;
    v14 = 0;
    v15 = *(result + 44);
    v33 = v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = (v5 + 48);
    v26 = v9;
    v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v15;
    v28 = v16;
    while (v14 < *(v13 + 16))
    {
      sub_1A84CA1FC(v33 + *(v9 + 72) * v14, v12, type metadata accessor for ImportExport.MessagePart);
      sub_1A8243D74(&v12[v15], v3, &qword_1EB2E6F50, &unk_1A8502920);
      sub_1A84CA264(v12, type metadata accessor for ImportExport.MessagePart);
      if ((*v16)(v3, 1, v32) == 1)
      {
        result = sub_1A824B2D4(v3, &qword_1EB2E6F50, &unk_1A8502920);
      }

      else
      {
        v17 = v13;
        v18 = v29;
        sub_1A842AD50(v3, v29, type metadata accessor for ImportExport.Attachment);
        v19 = v35;
        v20 = sub_1A8463774(0, 0);
        if (v19)
        {
          return sub_1A84CA264(v18, type metadata accessor for ImportExport.Attachment);
        }

        v21 = v20;
        v22 = sub_1A84E5D8C();
        v23 = sub_1A84E5D8C();
        IMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID();

        result = sub_1A84CA264(v18, type metadata accessor for ImportExport.Attachment);
        v35 = 0;
        if (v21)
        {
          v24 = __OFADD__(v31++, 1);
          v16 = v28;
          if (v24)
          {
            goto LABEL_17;
          }

          v13 = v17;
          v9 = v26;
          v12 = v27;
          v15 = v25;
        }

        else
        {
          v9 = v26;
          v12 = v27;
          v13 = v17;
          v15 = v25;
          v16 = v28;
        }
      }

      if (v34 == ++v14)
      {
        return v31;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A84CA0E4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
  }

  else
  {
    v3 = sub_1A84E67AC();

    if ((v3 & 1) == 0)
    {
      v5 = v1 + *(type metadata accessor for ImportExport.Message(0) + 92) + 40;
      return *v5;
    }
  }

  v4 = *(a1 + 240);
  if (*(v4 + 16) != 1)
  {
    sub_1A841D4A8();
    swift_allocError();
    *v6 = 0xD000000000000019;
    *(v6 + 8) = 0x80000001A85347C0;
    *(v6 + 16) = 6;
    return swift_willThrow();
  }

  v5 = v4 + 72;
  return *v5;
}

uint64_t sub_1A84CA1FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84CA264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ImportExport.ParticipantAddress.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:phoneNumber:emailAddress:fullName:contactID:sequenceID:)(char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v31 = *a5;
  v20 = sub_1A84E5D8C();
  v21 = [v20 _stripFZIDPrefix];

  if (v21)
  {
    v22 = sub_1A84E5DBC();
    v29 = v23;
    v30 = v22;

    v24 = sub_1A84E5D8C();
    v25 = [v24 _stripFZIDPrefix];

    if (v25)
    {

      v26 = sub_1A84E5DBC();
      v28 = v27;

      *a9 = a17;
      *(a9 + 8) = v30;
      *(a9 + 16) = v29;
      *(a9 + 24) = v26;
      *(a9 + 32) = v28;
      *(a9 + 40) = v31;
      *(a9 + 48) = a6;
      *(a9 + 56) = a7;
      *(a9 + 64) = a8;
      *(a9 + 72) = a10;
      *(a9 + 80) = a11;
      *(a9 + 88) = a12;
      *(a9 + 96) = a13;
      *(a9 + 104) = a14;
      *(a9 + 112) = a15;
      *(a9 + 120) = a16;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Bool __swiftcall ImportExport.ParticipantAddress.contains(_:)(Swift::String_optional a1)
{
  if (!a1.value._object)
  {
    return 0;
  }

  v2 = HIBYTE(a1.value._object) & 0xF;
  if ((a1.value._object & 0x2000000000000000) == 0)
  {
    v2 = a1.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    if (v4 == a1.value._countAndFlagsBits && v3 == a1.value._object)
    {
      return 1;
    }

    countAndFlagsBits = a1.value._countAndFlagsBits;
    object = a1.value._object;
    v10 = sub_1A84E67AC();
    a1.value._object = object;
    v11 = v10;
    a1.value._countAndFlagsBits = countAndFlagsBits;
    if (v11)
    {
      return 1;
    }
  }

  v12 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v12 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    return 0;
  }

  if (v5 == a1.value._countAndFlagsBits && v6 == a1.value._object)
  {
    return 1;
  }

  return sub_1A84E67AC();
}

uint64_t ImportExport.ParticipantAddress.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v18 = *(v0 + 32);
  v19 = *(v0 + 24);
  v22 = *(v0 + 40);
  v20 = *(v0 + 56);
  v21 = *(v0 + 48);
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A850B130);
  MEMORY[0x1AC56A990](0x203A6469203ALL, 0xE600000000000000);

  MEMORY[0x1AC56A990](v1, v2);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A85347E0);
  v3 = sub_1A84E5D8C();
  v4 = [v3 _appearsToBePhoneNumber];

  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v5, v6);

  MEMORY[0x1AC56A990](0x69616D457369202CLL, 0xEB00000000203A6CLL);
  v7 = sub_1A84E5D8C();
  v8 = [v7 _appearsToBeEmail];

  if (v8)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v9, v10);

  MEMORY[0x1AC56A990](0x6E6575716573203ALL, 0xEE00203A44496563);
  v11 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v11);

  MEMORY[0x1AC56A990](0x614E6C6C7566203ALL, 0xEC000000203A656DLL);

  sub_1A83EA2FC(&qword_1EB2E74C0, &unk_1A8502938);
  v12 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v12);

  MEMORY[0x1AC56A990](0x4E656E6F6870203ALL, 0xEF203A7265626D75);

  v13 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v13);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8534800);

  v14 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v14);

  MEMORY[0x1AC56A990](0xD000000000000014, 0x80000001A8534820);
  MEMORY[0x1AC56A990](v1, v2);
  MEMORY[0x1AC56A990](0xD000000000000018, 0x80000001A8534840);
  MEMORY[0x1AC56A990](v19, v18);
  MEMORY[0x1AC56A990](0x72746E756F63202CLL, 0xEF203A65646F4379);
  MEMORY[0x1AC56A990](v21, v20);
  MEMORY[0x1AC56A990](0x636976726573202CLL, 0xEF203A6570795465);
  if (v22 > 3)
  {
    if (v22 > 5)
    {
      if (v22 == 6)
      {
        v15 = 0xE300000000000000;
        v16 = 5456722;
      }

      else
      {
        v15 = 0xEC000000534D5365;
        v16 = 0x74696C6C65746153;
      }
    }

    else if (v22 == 4)
    {
      v16 = 5459283;
      v15 = 0xE300000000000000;
    }

    else
    {
      v15 = 0xE800000000000000;
      v16 = 0x656D695465636146;
    }
  }

  else if (v22 > 1)
  {
    if (v22 == 2)
    {
      v15 = 0xE800000000000000;
    }

    else
    {
      v15 = 0xEC0000006574694CLL;
    }

    v16 = 0x6567617373654D69;
  }

  else if (v22)
  {
    v15 = 0xE300000000000000;
    v16 = 7958113;
  }

  else
  {
    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1AC56A990](v16, v15);

  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return 0;
}

uint64_t ImportExport.ParticipantAddress.canonicalizedURI.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.canonicalizedURI.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ImportExport.ParticipantAddress.uncanonicalizedURI.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.countryCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.phoneNumber.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.emailAddress.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.fullName.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.contactID.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t ImportExport.ParticipantAddress.contactID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

BOOL ImportExport.ParticipantAddress.contains(_:)(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v10 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v11 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = v6 == v2 && v7 == v3;
    if (v12 || (sub_1A84E67AC() & 1) != 0)
    {
      return 1;
    }
  }

  v13 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v13 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 && (v8 == v2 && v9 == v3 || (sub_1A84E67AC() & 1) != 0))
  {
    return 1;
  }

  else
  {
LABEL_19:
    v15.value._countAndFlagsBits = v4;
    v15.value._object = v5;
    return ImportExport.ParticipantAddress.contains(_:)(v15);
  }
}

unint64_t sub_1A84CAD94(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65636E6575716573;
    v6 = 0xD000000000000012;
    if (a1 != 2)
    {
      v6 = 0x5465636976726573;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6464416C69616D65;
    v2 = 0x656D614E6C6C7566;
    if (a1 != 7)
    {
      v2 = 0x49746361746E6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x437972746E756F63;
    if (a1 != 4)
    {
      v3 = 0x6D754E656E6F6870;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A84CAEF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84CC2EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84CAF24(uint64_t a1)
{
  v2 = sub_1A84CBE5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84CAF60(uint64_t a1)
{
  v2 = sub_1A84CBE5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ParticipantAddress.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E8D60, &qword_1A850B170);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v23 = *(v1 + 16);
  v24 = v7;
  v21 = *(v1 + 32);
  v22 = v8;
  v20 = *(v1 + 40);
  v9 = *(v1 + 56);
  v19[7] = *(v1 + 48);
  v19[8] = v9;
  v10 = *(v1 + 72);
  v19[5] = *(v1 + 64);
  v19[6] = v10;
  v11 = *(v1 + 88);
  v19[3] = *(v1 + 80);
  v19[4] = v11;
  v12 = *(v1 + 104);
  v19[1] = *(v1 + 96);
  v19[2] = v12;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  sub_1A82471E0(v14, v13);
  sub_1A84CBE5C();
  sub_1A84E68AC();
  v35 = 0;
  v17 = v25;
  sub_1A84E673C();
  if (v17)
  {
    return (*(v4 + 8))(v6, v16);
  }

  v34 = 1;
  sub_1A84E66CC();
  v33 = 2;
  sub_1A84E66CC();
  v32 = v20;
  v31 = 3;
  sub_1A841E278();
  sub_1A84E672C();
  v30 = 4;
  sub_1A84E66CC();
  v29 = 5;
  sub_1A84E66AC();
  v28 = 6;
  sub_1A84E66AC();
  v27 = 7;
  sub_1A84E66AC();
  v26 = 8;
  sub_1A84E66AC();
  return (*(v4 + 8))(0, v16);
}

uint64_t ImportExport.ParticipantAddress.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E8D70, &qword_1A850B178);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v36 - v7;
  v9 = a1[3];
  v47 = a1;
  sub_1A82471E0(a1, v9);
  sub_1A84CBE5C();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(v47);
  }

  v10 = v6;
  LOBYTE(v56[0]) = 0;
  v11 = v5;
  v12 = sub_1A84E667C();
  LOBYTE(v56[0]) = 1;
  v13 = sub_1A84E660C();
  v46 = v14;
  LOBYTE(v56[0]) = 2;
  v15 = sub_1A84E660C();
  v45 = v16;
  v42 = v15;
  LOBYTE(v48) = 3;
  sub_1A841E440();
  sub_1A84E666C();
  v68 = LOBYTE(v56[0]);
  LOBYTE(v56[0]) = 4;
  v41 = sub_1A84E660C();
  v44 = v17;
  LOBYTE(v56[0]) = 5;
  v40 = sub_1A84E65DC();
  v43 = v18;
  LOBYTE(v56[0]) = 6;
  v38 = sub_1A84E65DC();
  v39 = v13;
  v20 = v19;
  LOBYTE(v56[0]) = 7;
  v36[0] = sub_1A84E65DC();
  v37 = v21;
  v69 = 8;
  v22 = sub_1A84E65DC();
  v36[1] = 0;
  v23 = v22;
  v25 = v24;
  (*(v10 + 8))(v8, v11);
  *&v48 = v12;
  *(&v48 + 1) = v39;
  v27 = v45;
  v26 = v46;
  *&v49 = v46;
  *(&v49 + 1) = v42;
  *&v50 = v45;
  BYTE8(v50) = v68;
  v28 = v44;
  *&v51 = v41;
  *(&v51 + 1) = v44;
  *&v52 = v40;
  *(&v52 + 1) = v43;
  *&v53 = v38;
  *(&v53 + 1) = v20;
  *&v54 = v36[0];
  *(&v54 + 1) = v37;
  *&v55 = v23;
  *(&v55 + 1) = v25;
  v29 = v48;
  v30 = v49;
  v31 = v51;
  a2[2] = v50;
  a2[3] = v31;
  *a2 = v29;
  a2[1] = v30;
  v32 = v52;
  v33 = v53;
  v34 = v55;
  a2[6] = v54;
  a2[7] = v34;
  a2[4] = v32;
  a2[5] = v33;
  sub_1A840243C(&v48, v56);
  sub_1A8244788(v47);
  v56[0] = v12;
  v56[1] = v39;
  v56[2] = v26;
  v56[3] = v42;
  v56[4] = v27;
  v57 = v68;
  v58 = v41;
  v59 = v28;
  v60 = v40;
  v61 = v43;
  v62 = v38;
  v63 = v20;
  v64 = v36[0];
  v65 = v37;
  v66 = v23;
  v67 = v25;
  return sub_1A841E128(v56);
}

uint64_t sub_1A84CB7C8()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1A84CB804()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1A84CB834()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1A84CB864()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1A84CB894()
{
  v1 = *(v0 + 112);

  return v1;
}

id sub_1A84CB90C(SEL *a1)
{
  v2 = sub_1A84E5D8C();
  v3 = [v2 *a1];

  return v3;
}

uint64_t ImportExport.ParticipantAddress.hash(into:)(uint64_t a1)
{

  sub_1A84E5E5C();
}

uint64_t ImportExport.ParticipantAddress.hashValue.getter()
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A84CB9F4()
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A84CBA40(uint64_t a1)
{

  sub_1A84E5E5C();
}

uint64_t sub_1A84CBA98(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t static ImportExport.ParticipantAddress.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t sub_1A84CBB14(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t sub_1A84CBB44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1A84E67AC() ^ 1) & 1;
  }
}

uint64_t sub_1A84CBB8C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return (sub_1A84E67AC() ^ 1) & 1;
  }
}

uint64_t sub_1A84CBBE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t _s6IMCore12ImportExportO18ParticipantAddressV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v23 = *(a1 + 56);
  v24 = *(a1 + 48);
  v18 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 80);
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  v22 = *(a2 + 48);
  v20 = *(a1 + 72);
  v21 = *(a2 + 56);
  v15 = *(a2 + 64);
  v16 = *(a1 + 64);
  v19 = *(a2 + 72);
  v13 = *(a2 + 80);
  v14 = *(a1 + 104);
  v17 = *(a2 + 88);
  v9 = *(a2 + 96);
  v12 = *(a2 + 104);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && ((sub_1A84E67AC() & 1) == 0 || (sub_1A84E67AC() & 1) == 0) || (v2 != v6 || v3 != v5) && (sub_1A84E67AC() & 1) == 0 || (sub_1A8436808(v4, v7) & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_1A84E67AC() & 1) == 0)
  {
    return 0;
  }

  if (v20)
  {
    if (!v19 || (v16 != v15 || v20 != v19) && (sub_1A84E67AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (!v18)
  {
    if (!v17)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v17 || (v11 != v13 || v18 != v17) && (sub_1A84E67AC() & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  result = (v14 | v12) == 0;
  if (v14 && v12)
  {
    if (v10 == v9 && v14 == v12)
    {
      return 1;
    }

    else
    {

      return sub_1A84E67AC();
    }
  }

  return result;
}

unint64_t sub_1A84CBE5C()
{
  result = qword_1EB2E8D68;
  if (!qword_1EB2E8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D68);
  }

  return result;
}

unint64_t sub_1A84CBEB0(void *a1)
{
  a1[1] = sub_1A843B484();
  a1[2] = sub_1A843B364();
  result = sub_1A84CBEE8();
  a1[3] = result;
  return result;
}

unint64_t sub_1A84CBEE8()
{
  result = qword_1EB2E8D78;
  if (!qword_1EB2E8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D78);
  }

  return result;
}

unint64_t sub_1A84CBF3C(uint64_t a1)
{
  result = sub_1A84CBEE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A84CBF64()
{
  result = qword_1EB2E8D80;
  if (!qword_1EB2E8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D80);
  }

  return result;
}

__n128 sub_1A84CBFB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1A84CBFDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A84CC024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s18ParticipantAddressV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18ParticipantAddressV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A84CC1E8()
{
  result = qword_1EB2E8D88;
  if (!qword_1EB2E8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D88);
  }

  return result;
}

unint64_t sub_1A84CC240()
{
  result = qword_1EB2E8D90;
  if (!qword_1EB2E8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D90);
  }

  return result;
}

unint64_t sub_1A84CC298()
{
  result = qword_1EB2E8D98;
  if (!qword_1EB2E8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D98);
  }

  return result;
}

uint64_t sub_1A84CC2EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A85310F0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8531110 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5465636976726573 && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id NicknameProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NicknameProvider.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E5C9C();
  sub_1A824431C(v2, qword_1ED7679E0);
  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E61BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, v3, v4, "Closing Daemon connection", v5, 2u);
    MEMORY[0x1AC56D3F0](v5, -1, -1);
  }

  [*&v1[OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection] invalidate];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NicknameProvider();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1A84CC818()
{
  v1 = *(v0[19] + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v0[14] = nullsub_4;
  v0[15] = 0;
  v2 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A824B720;
  v0[13] = &unk_1F1B764C8;
  v3 = _Block_copy(v0 + 10);
  [v1 connectWithCompletion_];
  _Block_release(v3);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v4 = sub_1A84E5C9C();
  v0[20] = sub_1A824431C(v4, qword_1ED7679E0);
  v5 = sub_1A84E5C7C();
  v6 = sub_1A84E61BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A823F000, v5, v6, "Asked to get the nickname for the current user", v7, 2u);
    MEMORY[0x1AC56D3F0](v7, -1, -1);
  }

  v8 = v0[19];

  v9 = *(v8 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v10 = [v9 personalNickname];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1A84E5C7C();
    v13 = sub_1A84E61BC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1A823F000, v12, v13, "Personal nickname found", v14, 2u);
      MEMORY[0x1AC56D3F0](v14, -1, -1);
    }

    v15 = v0[1];

    return v15(v11);
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1A84CCB40;
    v17 = swift_continuation_init();
    v0[17] = sub_1A83EA2FC(&qword_1EB2E8DB8, &unk_1A850B4D8);
    v0[10] = v2;
    v0[11] = 1107296256;
    v0[12] = sub_1A84CCCF8;
    v0[13] = &unk_1F1B764F0;
    v0[14] = v17;
    [v9 fetchPersonalNicknameWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1A84CCB40()
{

  return MEMORY[0x1EEE6DFA0](sub_1A84CCC20, 0, 0);
}

uint64_t sub_1A84CCC20(uint64_t a1)
{
  v2 = *(v1 + 144);
  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E61BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A823F000, v3, v4, "Personal nickname found after fetch", v5, 2u);
    MEMORY[0x1AC56D3F0](v5, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6(v2);
}

uint64_t sub_1A84CCCF8(uint64_t a1, void *a2)
{
  v3 = sub_1A82471E0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1A84CCED0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1A84CCF78;

  return sub_1A84CC7F8();
}

uint64_t sub_1A84CCF78(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

id sub_1A84CD0C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  aBlock[4] = nullsub_4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A824B720;
  aBlock[3] = &unk_1F1B76518;
  v6 = _Block_copy(aBlock);
  [v5 connectWithCompletion_];
  _Block_release(v6);
  v7 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A85013E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1A848FD30(inited);
  swift_setDeallocating();
  sub_1A848FE98(inited + 32);
  v9 = sub_1A84E610C();

  v10 = [v7 nicknameForHandleIDs_];

  return v10;
}

id sub_1A84CD39C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v8[4] = nullsub_4;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A824B720;
  v8[3] = &unk_1F1B765B8;
  v3 = _Block_copy(v8);
  [v2 connectWithCompletion_];
  _Block_release(v3);
  v4 = *(v1 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v5 = sub_1A84E5D8C();
  v6 = [v4 hasObservedTransitionForHandleID_];

  return v6;
}

void sub_1A84CD59C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v17[4] = nullsub_4;
  v17[5] = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1A824B720;
  v17[3] = &unk_1F1B765E0;
  v9 = _Block_copy(v17);
  [v8 connectWithCompletion_];
  _Block_release(v9);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v10 = sub_1A84E5C9C();
  sub_1A824431C(v10, qword_1ED7679E0);

  v11 = sub_1A84E5C7C();
  v12 = sub_1A84E61BC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1A82446BC(a1, a2, v17);
    *(v13 + 12) = 1024;
    *(v13 + 14) = a3 & 1;
    _os_log_impl(&dword_1A823F000, v11, v12, "Marking handle ID %s as transitioned with auto-update: %{BOOL}d", v13, 0x12u);
    sub_1A8244788(v14);
    MEMORY[0x1AC56D3F0](v14, -1, -1);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
  }

  v15 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v16 = sub_1A84E5D8C();
  [v15 markTransitionAsObservedForHandleID:v16 isAutoUpdate:a3 & 1];
}

void sub_1A84CD834(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v20[4] = nullsub_4;
  v20[5] = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1A824B720;
  v20[3] = &unk_1F1B76630;
  v5 = _Block_copy(v20);
  [v4 connectWithCompletion_];
  _Block_release(v5);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v6 = sub_1A84E5C9C();
  sub_1A824431C(v6, qword_1ED7679E0);
  v7 = a1;
  v8 = sub_1A84E5C7C();
  v9 = sub_1A84E61BC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1A823F000, v8, v9, "Update pending nickname with contact %@", v10, 0xCu);
    sub_1A824B2D4(v11, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
  }

  sub_1A8248300(v7);
  v14 = v13;
  v15 = [objc_opt_self() emailsForCNContact_];
  v16 = sub_1A84E5FFC();

  v17 = sub_1A8249338(v16);

  sub_1A84CDAC0(v17, v14);
  v18 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v19 = sub_1A84E610C();

  [v18 updatePendingNicknameForHandleIDs_];
}

uint64_t sub_1A84CDAC0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1A82493D0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1A84CDC2C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v14[4] = nullsub_4;
  v14[5] = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1A824B720;
  v14[3] = &unk_1F1B76658;
  v5 = _Block_copy(v14);
  [v4 connectWithCompletion_];
  _Block_release(v5);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v6 = sub_1A84E5C9C();
  sub_1A824431C(v6, qword_1ED7679E0);
  v7 = a1;
  v8 = sub_1A84E5C7C();
  v9 = sub_1A84E61BC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1A823F000, v8, v9, "Setting personal nickname with contact %@", v10, 0xCu);
    sub_1A824B2D4(v11, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69A8190]) initWithMeContact_];
  [*(v2 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController) setPersonalNickname_];
}

uint64_t sub_1A84CDEAC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v5[4] = nullsub_4;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A824B720;
  v5[3] = &unk_1F1B76680;
  v3 = _Block_copy(v5);
  [v2 connectWithCompletion_];
  _Block_release(v3);
  return swift_unknownObjectWeakAssign();
}

void sub_1A84CDF7C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v15[4] = nullsub_4;
  v15[5] = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1A824B720;
  v15[3] = &unk_1F1B766A8;
  v7 = _Block_copy(v15);
  [v6 connectWithCompletion_];
  _Block_release(v7);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v8 = sub_1A84E5C9C();
  sub_1A824431C(v8, qword_1ED7679E0);

  v9 = sub_1A84E5C7C();
  v10 = sub_1A84E61BC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1A82446BC(a1, a2, v15);
    _os_log_impl(&dword_1A823F000, v9, v10, "Sending personal nickname to handle %s", v11, 0xCu);
    sub_1A8244788(v12);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
  }

  v13 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v14 = sub_1A84E5D8C();
  [v13 sendPersonalNicknameToHandle_];
}

void sub_1A84CE1F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v20[4] = nullsub_4;
  v20[5] = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1A824B720;
  v20[3] = &unk_1F1B766D0;
  v11 = _Block_copy(v20);
  [v10 connectWithCompletion_];
  _Block_release(v11);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v12 = sub_1A84E5C9C();
  sub_1A824431C(v12, qword_1ED7679E0);

  v13 = sub_1A84E5C7C();
  v14 = sub_1A84E61BC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A82446BC(a3, a4, v20);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A82446BC(a1, a2, v20);
    _os_log_impl(&dword_1A823F000, v13, v14, "Sending personal nickname update from handle %s to handle %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v16, -1, -1);
    MEMORY[0x1AC56D3F0](v15, -1, -1);
  }

  v17 = *(v5 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v18 = sub_1A84E5D8C();
  v19 = sub_1A84E5D8C();
  [v17 sendPersonalNicknameToHandle:v18 fromHandle:v19];
}

void sub_1A84CE500(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v17[4] = nullsub_4;
  v17[5] = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1A824B720;
  v17[3] = &unk_1F1B766F8;
  v8 = _Block_copy(v17);
  [v7 connectWithCompletion_];
  _Block_release(v8);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v9 = sub_1A84E5C9C();
  sub_1A824431C(v9, qword_1ED7679E0);

  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E61BC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1A82446BC(a2, a3, v17);
    _os_log_impl(&dword_1A823F000, v10, v11, "Sending name only update from handle %s", v12, 0xCu);
    sub_1A8244788(v13);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }

  v14 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v15 = sub_1A84E5FEC();
  v16 = sub_1A84E5D8C();
  [v14 sendNameOnlyToHandleIDs:v15 fromHandleID:v16];
}

uint64_t sub_1A84CE7BC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v18[4] = nullsub_4;
  v18[5] = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1A824B720;
  v18[3] = &unk_1F1B76720;
  v7 = _Block_copy(v18);
  [v6 connectWithCompletion_];
  _Block_release(v7);
  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v8 = sub_1A84E5C9C();
  sub_1A824431C(v8, qword_1ED7679E0);

  v9 = sub_1A84E5C7C();
  v10 = sub_1A84E61BC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1A82446BC(a1, a2, v18);
    _os_log_impl(&dword_1A823F000, v9, v10, "Requesting unknown sender records for %s.", v11, 0xCu);
    sub_1A8244788(v12);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
  }

  v13 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  v14 = sub_1A84E5D8C();
  v15 = [v13 unknownSenderRecordInfoFor_];

  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v16 = sub_1A84E5FFC();

  return v16;
}

void sub_1A84CEAB4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  aBlock[4] = nullsub_4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A824B720;
  aBlock[3] = &unk_1F1B76748;
  v9 = _Block_copy(aBlock);
  [v8 connectWithCompletion_];
  _Block_release(v9);
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    if (a3 <= 2)
    {
LABEL_5:
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          return;
        }

        if (qword_1ED767520 != -1)
        {
          swift_once();
        }

        v11 = sub_1A84E5C9C();
        sub_1A824431C(v11, qword_1ED7679E0);

        v12 = sub_1A84E5C7C();
        v13 = sub_1A84E61BC();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          aBlock[0] = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_1A82446BC(a1, a2, aBlock);
          _os_log_impl(&dword_1A823F000, v12, v13, "Revert nickname action received for handle ID: %s", v14, 0xCu);
          sub_1A8244788(v15);
          MEMORY[0x1AC56D3F0](v15, -1, -1);
          MEMORY[0x1AC56D3F0](v14, -1, -1);
        }

        v16 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
        sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
        inited = swift_initStackObject();
        v57 = xmmword_1A85013E0;
        *(inited + 16) = xmmword_1A85013E0;
        *(inited + 32) = a1;
        *(inited + 40) = a2;

        sub_1A8249338(inited);
        swift_setDeallocating();
        sub_1A848FE98(inited + 32);
        v18 = sub_1A84E610C();

        v19 = [v16 archivedNicknameForHandleIDs_];

        if (v19)
        {
          [v16 markNickname:v19 asActive:1];
        }

        else
        {

          v19 = sub_1A84E5C7C();
          v53 = sub_1A84E61BC();

          if (os_log_type_enabled(v19, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            aBlock[0] = v55;
            *v54 = 136315138;
            *(v54 + 4) = sub_1A82446BC(a1, a2, aBlock);
            _os_log_impl(&dword_1A823F000, v19, v53, "No archived nickname found for handle ID: %s", v54, 0xCu);
            sub_1A8244788(v55);
            MEMORY[0x1AC56D3F0](v55, -1, -1);
            MEMORY[0x1AC56D3F0](v54, -1, -1);
          }
        }

        v56 = swift_initStackObject();
        *(v56 + 16) = xmmword_1A85013E0;
        *(v56 + 32) = a1;
        *(v56 + 40) = a2;

        sub_1A8249338(v56);
        swift_setDeallocating();
        sub_1A848FE98(v56 + 32);
        v46 = sub_1A84E610C();

        v47 = [v16 pendingNicknameForHandleIDs_];
LABEL_42:
        v31 = v47;

        if (v31)
        {
          goto LABEL_43;
        }

        v48 = sub_1A84E5C7C();
        v49 = sub_1A84E61BC();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          aBlock[0] = v51;
          *v50 = 136315138;
          *(v50 + 4) = sub_1A82446BC(a1, a2, aBlock);
          v52 = "No pending nickname found for handle ID: %s";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      if (qword_1ED767520 != -1)
      {
        swift_once();
      }

      v32 = sub_1A84E5C9C();
      sub_1A824431C(v32, qword_1ED7679E0);

      v33 = sub_1A84E5C7C();
      v34 = sub_1A84E61BC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_1A82446BC(a1, a2, aBlock);
        _os_log_impl(&dword_1A823F000, v33, v34, "Accept nickname action received for handle ID: %s", v35, 0xCu);
        sub_1A8244788(v36);
        MEMORY[0x1AC56D3F0](v36, -1, -1);
        MEMORY[0x1AC56D3F0](v35, -1, -1);
      }

      v16 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
      v37 = sub_1A84E5D8C();
      [v16 acceptPendingNicknameForHandleID:v37 updateType:12];

      sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_1A85013E0;
      *(v38 + 32) = a1;
      *(v38 + 40) = a2;

      sub_1A8249338(v38);
      swift_setDeallocating();
      sub_1A848FE98(v38 + 32);
      v39 = sub_1A84E610C();

      v31 = [v16 archivedNicknameForHandleIDs_];

      if (v31)
      {
        [v16 markNickname:v31 asActive:0];
LABEL_43:
        [v16 markNicknameAsIgnored_];

        return;
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (qword_1ED767520 != -1)
    {
      swift_once();
    }

    v20 = sub_1A84E5C9C();
    sub_1A824431C(v20, qword_1ED7679E0);
    v21 = sub_1A84E5C7C();
    v22 = sub_1A84E61BC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A823F000, v21, v22, "No handle is found when update banner is tapped", v23, 2u);
      MEMORY[0x1AC56D3F0](v23, -1, -1);
    }

    if (a3 <= 2)
    {
      goto LABEL_5;
    }
  }

  if (a3 == 3)
  {
    if (qword_1ED767520 != -1)
    {
      swift_once();
    }

    v40 = sub_1A84E5C9C();
    sub_1A824431C(v40, qword_1ED7679E0);

    v41 = sub_1A84E5C7C();
    v42 = sub_1A84E61BC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_1A82446BC(a1, a2, aBlock);
      _os_log_impl(&dword_1A823F000, v41, v42, "Ignore dismiss update received for handle ID: %s", v43, 0xCu);
      sub_1A8244788(v44);
      MEMORY[0x1AC56D3F0](v44, -1, -1);
      MEMORY[0x1AC56D3F0](v43, -1, -1);
    }

    v16 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
    sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_1A85013E0;
    *(v45 + 32) = a1;
    *(v45 + 40) = a2;

    sub_1A8249338(v45);
    swift_setDeallocating();
    sub_1A848FE98(v45 + 32);
    v46 = sub_1A84E610C();

    v47 = [v16 pendingNicknameForHandleIDs_];
    goto LABEL_42;
  }

  if (a3 != 4)
  {
    return;
  }

  if (qword_1ED767520 != -1)
  {
    swift_once();
  }

  v24 = sub_1A84E5C9C();
  sub_1A824431C(v24, qword_1ED7679E0);

  v25 = sub_1A84E5C7C();
  v26 = sub_1A84E61BC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1A82446BC(a1, a2, aBlock);
    _os_log_impl(&dword_1A823F000, v25, v26, "Ignore dismiss revert received for handle ID: %s", v27, 0xCu);
    sub_1A8244788(v28);
    MEMORY[0x1AC56D3F0](v28, -1, -1);
    MEMORY[0x1AC56D3F0](v27, -1, -1);
  }

  v16 = *(v4 + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController);
  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1A85013E0;
  *(v29 + 32) = a1;
  *(v29 + 40) = a2;

  sub_1A8249338(v29);
  swift_setDeallocating();
  sub_1A848FE98(v29 + 32);
  v30 = sub_1A84E610C();

  v31 = [v16 archivedNicknameForHandleIDs_];

  if (v31)
  {
    goto LABEL_43;
  }

LABEL_37:

  v48 = sub_1A84E5C7C();
  v49 = sub_1A84E61BC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_1A82446BC(a1, a2, aBlock);
    v52 = "No archived nickname found for handle ID: %s";
LABEL_46:
    _os_log_impl(&dword_1A823F000, v48, v49, v52, v50, 0xCu);
    sub_1A8244788(v51);
    MEMORY[0x1AC56D3F0](v51, -1, -1);
    MEMORY[0x1AC56D3F0](v50, -1, -1);
  }

LABEL_47:
}

id sub_1A84CF754(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 sharedInstance];
  v5 = [v3 handle];
  if (!v5)
  {
    sub_1A84E5DBC();
    v5 = sub_1A84E5D8C();
  }

  v6 = [v4 hasObservedTransitionForHandleID_];

  return v6;
}

id IMNickname.hasObservedTransition.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v0 handle];
  if (!v2)
  {
    sub_1A84E5DBC();
    v2 = sub_1A84E5D8C();
  }

  v3 = [v1 hasObservedTransitionForHandleID_];

  return v3;
}

id sub_1A84CF8D8(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstance];
  v8 = [v7 *a3];

  return v8;
}

id sub_1A84CF960(SEL *a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 *a1];

  return v4;
}

uint64_t sub_1A84CF9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1A84D0904(a3, v23 - v10);
  v12 = sub_1A84E60BC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1A824B2D4(v11, &qword_1EB2E6600, &qword_1A8507BA0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1A84E60AC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1A84E605C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1A84E5E1C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);

    return v21;
  }

LABEL_8:
  sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1A84CFCC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A83EA2FC(&unk_1EB2E8EB0, &qword_1A850B5B0);
  result = sub_1A84E643C();
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
      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
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

void sub_1A84CFF28()
{
  v1 = v0;
  sub_1A83EA2FC(&unk_1EB2E8EB0, &qword_1A850B5B0);
  v2 = *v0;
  v3 = sub_1A84E642C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

uint64_t sub_1A84D0084(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A83EA2FC(&unk_1EB2E8EB0, &qword_1A850B5B0);
  result = sub_1A84E643C();
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
      sub_1A84E684C();

      sub_1A84E5E5C();
      result = sub_1A84E687C();
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

uint64_t dispatch thunk of NicknameProvider.nicknameForCurrentUser()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A84D0428;

  return v5();
}

uint64_t sub_1A84D0428(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of NicknameProvider.nickname(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
}

uint64_t sub_1A84D0858()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A82505F4;

  return sub_1A84CCED0(v2, v3);
}

uint64_t sub_1A84D0904(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84D0974(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A82505F4;

  return sub_1A8248560(a1, v4);
}

uint64_t static ImportExport.ExportOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ImportExport.ExportOptions(0);
  v3 = sub_1A824431C(v2, qword_1EB2E8EC0);

  return sub_1A84C3300(v3, a1);
}

uint64_t sub_1A84D0B24()
{
  v0 = sub_1A84E54AC();
  v44 = *(v0 - 8);
  v45 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v43 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1A84E56DC();
  v2 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A84E558C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - v9;
  v11 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  sub_1A82442B8(v11, qword_1EB2E8EC0);
  v46 = v11;
  v20 = sub_1A824431C(v11, qword_1EB2E8EC0);
  (*(v6 + 56))(v19, 1, 1, v5);
  *v13 = 1;
  *(v13 + 1) = 50;
  *(v13 + 2) = 0x404E000000000000;
  sub_1A84580FC(v19, v17);
  v21 = *(v6 + 48);
  v48 = v5;
  if (v21(v17, 1, v5) == 1)
  {
    sub_1A8496E7C(v17);
    v22 = [objc_opt_self() defaultManager];
    v23 = [v22 temporaryDirectory];

    sub_1A84E554C();
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1A84E646C();

    v55 = 0xD00000000000002BLL;
    v56 = 0x80000001A85349C0;
    v24 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    sub_1A84E56CC();
    v25 = sub_1A84E565C();
    (*(v2 + 8))(v4, v42);
    v26 = [v24 stringFromDate_];

    v27 = sub_1A84E5DBC();
    v42 = v20;
    v29 = v28;

    v53 = v27;
    v54 = v29;
    v51 = 58;
    v52 = 0xE100000000000000;
    v49 = 45;
    v50 = 0xE100000000000000;
    sub_1A840D3B0();
    v30 = sub_1A84E637C();
    v32 = v31;

    MEMORY[0x1AC56A990](v30, v32);

    v33 = v43;
    v34 = v44;
    v35 = v45;
    (*(v44 + 104))(v43, *MEMORY[0x1E6968F70], v45);
    v36 = v47;
    sub_1A84E557C();
    (*(v34 + 8))(v33, v35);
    v20 = v42;

    (*(v6 + 8))(v36, v48);
    sub_1A8496E7C(v19);
  }

  else
  {
    sub_1A8496E7C(v19);
    v37 = *(v6 + 32);
    v38 = v17;
    v39 = v48;
    v37(v10, v38, v48);
    v37(&v13[*(v46 + 28)], v10, v39);
  }

  return sub_1A84B70B0(v13, v20);
}

uint64_t type metadata accessor for ImportExport.ExportOptions(uint64_t a1)
{
  result = qword_1EB2E46A0;
  if (!qword_1EB2E46A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.ExportOptions.init(downloadMissingAttachments:batchSize:attachmentDownloadTimeout:attachmentDownloadDirectoryURL:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_1A84E54AC();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A84E56DC();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = sub_1A84E558C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  v50 = a3;
  sub_1A84580FC(a3, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1A8496E7C(v17);
    v25 = [objc_opt_self() defaultManager];
    v26 = [v25 temporaryDirectory];

    v44 = v22;
    sub_1A84E554C();

    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1A84E646C();

    v57 = 0xD00000000000002BLL;
    v58 = 0x80000001A85349C0;
    v27 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    sub_1A84E56CC();
    v28 = sub_1A84E565C();
    (*(v45 + 8))(v14, v46);
    v29 = [v27 stringFromDate_];

    v30 = sub_1A84E5DBC();
    v32 = v31;

    v55 = v30;
    v56 = v32;
    v53 = 58;
    v54 = 0xE100000000000000;
    v51 = 45;
    v52 = 0xE100000000000000;
    sub_1A840D3B0();
    v33 = sub_1A84E637C();
    v35 = v34;

    MEMORY[0x1AC56A990](v33, v35);

    v36 = v47;
    v37 = v48;
    v38 = v49;
    (*(v48 + 104))(v47, *MEMORY[0x1E6968F70], v49);
    type metadata accessor for ImportExport.ExportOptions(0);
    v39 = v44;
    sub_1A84E557C();
    sub_1A8496E7C(v50);
    (*(v37 + 8))(v36, v38);

    return (*(v19 + 8))(v39, v18);
  }

  else
  {
    sub_1A8496E7C(v50);
    v41 = *(v19 + 32);
    v41(v24, v17, v18);
    v42 = type metadata accessor for ImportExport.ExportOptions(0);
    return (v41)(a4 + *(v42 + 28), v24, v18);
  }
}