uint64_t sub_1C6A5CFE0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_1C6A5D21C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1C6A5D310;

  return v5(v2 + 16);
}

uint64_t sub_1C6A5D310()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1C6A5D440(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2[1];
    v6 = *v2 + 32;
    v7 = v2[3];
    while (1)
    {
      v10 = *(v6 + 8 * v4);

      v5(&v11, &v10);

      v10 = v11;
      v8 = v7(&v10);

      if (v8)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return v3;
      }
    }

    return v4;
  }

  return v3;
}

uint64_t sub_1C6A5D50C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4860, &qword_1C6A85978);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - v3;
  v5 = v0[1];
  v25 = *v0;
  v26 = v5;
  v6 = *(v0 + 5);
  v27 = *(v0 + 4);
  v7 = *(v0 + 7);
  v20 = *(v0 + 6);
  v21 = v6;
  v18 = *(v0 + 9);
  v19 = v7;
  result = sub_1C6A5D440(v2, v8);
  v10 = result;
  v24 = result;
  v11 = *(v25 + 16);
  if (result == v11)
  {
    return v10;
  }

  v12 = *(&v25 + 1);
  v13 = v25 + 32;
  while (v10 < v11)
  {
    v22 = *(v13 + 8 * v10);

    v12(&v23, &v22);

    v22 = v23;
    v21(&v23, &v22);

    v14 = v23;
    v22 = v23;
    v19(&v22);

    v15 = v18(v4);
    sub_1C6A5F554(v4, &qword_1EC1D4860, &qword_1C6A85978);
    if (v15)
    {
      return v10;
    }

    result = sub_1C6A5DC50(&v24, v16);
    v10 = v24;
    if (v24 == v11)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6A5D6BC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4860, &qword_1C6A85978);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v36 - v9;
  v10 = *v3;
  v11 = v3[1];
  v13 = v3[2];
  v12 = v3[3];
  v15 = v3[4];
  v14 = v3[5];
  v16 = v3[7];
  v43 = v3[6];
  v44 = v14;
  v42 = v16;
  v17 = a2 >> 63;
  v18 = (a2 >> 63) | (a2 > 0);
  v41 = v3[8];
  if (a2 >> 63 < 0)
  {
    v46 = v3;
    v47 = v12;
    v49[1] = v10;
    v49[2] = v11;
    v39 = v11;
    v40 = v15;
    v37 = v13;
    v49[3] = v13;
    v49[4] = v12;
    v49[5] = v15;
    v19 = *(v10 + 16);
    v20 = sub_1C6A5D440(result, v8);
    result = sub_1C6A5DAD8(v19, (a2 >> 63) | (a2 > 0), v20);
    v21 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v21)
    {
LABEL_54:
      __break(1u);
      return result;
    }

    v3 = v46;
    v12 = v47;
    v11 = v39;
    if (a2 < 0)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else if (!a2)
  {
    return a1;
  }

  if (a1 == v38)
  {
    return 0;
  }

  if (v17 >= 0)
  {
    v22 = v18;
  }

  else
  {
    v22 = -v18;
  }

  v46 = v22;
  if (v22 < 0)
  {
    goto LABEL_53;
  }

  v47 = v12;
  v36 = a2;
  v23 = v3[9];
  v39 = v3[10];
  v40 = v23;
  v24 = v17 | (v18 > 0);
  v25 = v10 + 32;
  v26 = 1;
  v27 = *(v10 + 16);
  while (2)
  {
    v37 = v26;
    while (1)
    {
      v28 = a1;
      if (v46)
      {
        while (1)
        {
          a1 = v28 + v24;
          if (__OFADD__(v28, v24))
          {
            break;
          }

          if (a1 == v27)
          {
            a1 = v27;
LABEL_22:
            if (v46 == 1)
            {
              goto LABEL_37;
            }

            while (1)
            {
              v30 = a1 + v24;
              if (__OFADD__(a1, v24))
              {
                goto LABEL_47;
              }

              if (v30 == v27)
              {
                v30 = v27;
LABEL_29:
                if (v46 == 2)
                {
                  a1 = v30;
                  goto LABEL_37;
                }

                while (1)
                {
                  a1 = v30 + v24;
                  if (__OFADD__(v30, v24))
                  {
                    goto LABEL_47;
                  }

                  if (a1 == v27)
                  {
                    a1 = v27;
                    goto LABEL_37;
                  }

                  if (a1 >= v27)
                  {
                    goto LABEL_48;
                  }

                  v48 = *(v25 + 8 * a1);

                  v11(v49, &v48);

                  v48 = v49[0];
                  v32 = v47(&v48);

                  v30 += v24;
                  if (v32)
                  {
                    goto LABEL_37;
                  }
                }
              }

              if (v30 >= v27)
              {
                goto LABEL_48;
              }

              v48 = *(v25 + 8 * v30);

              v11(v49, &v48);

              v48 = v49[0];
              v31 = v47(&v48);

              a1 += v24;
              if (v31)
              {
                goto LABEL_29;
              }
            }
          }

          if (a1 >= v27)
          {
            goto LABEL_48;
          }

          v48 = *(v25 + 8 * a1);

          v11(v49, &v48);

          v48 = v49[0];
          v29 = v47(&v48);

          v28 += v24;
          if (v29)
          {
            goto LABEL_22;
          }
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_37:
      if (a1 == v27)
      {
        break;
      }

      if (a1 >= v27)
      {
        goto LABEL_49;
      }

      v48 = *(v25 + 8 * a1);

      v11(v49, &v48);

      v48 = v49[0];
      v44(v49, &v48);

      v33 = v49[0];
      v48 = v49[0];
      v34 = v45;
      v42(&v48);

      v35 = v40(v34);
      result = sub_1C6A5F554(v34, &qword_1EC1D4860, &qword_1C6A85978);
      if (v35)
      {
        goto LABEL_42;
      }
    }

    a1 = v27;
LABEL_42:
    if (v37 == v36)
    {
      return a1;
    }

    if (v37 >= v36)
    {
      goto LABEL_50;
    }

    v26 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (a1 != v38)
    {
      continue;
    }

    return 0;
  }
}

uint64_t sub_1C6A5DAD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = a2;
    if (!a2)
    {
      return v4;
    }

    goto LABEL_6;
  }

  v5 = -a2;
  if (__OFSUB__(0, a2))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_6:
  if (result == a3)
  {
    return 0;
  }

  v16 = v3[1];
  v6 = v3[3];
  v7 = (a2 > 0) | (a2 >> 63);
  v8 = *(*v3 + 16);
  v9 = *v3 + 32;
  v10 = 1;
  v13 = v5;
  while (2)
  {
    v15 = v10;
    v11 = v4;
    while (1)
    {
      v4 = v11 + v7;
      if (__OFADD__(v11, v7))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v4 == v8)
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_23;
      }

      v17 = *(v9 + 8 * v4);

      v16(&v18, &v17);

      v17 = v18;
      v12 = v6(&v17);

      v11 += v7;
      if (v12)
      {
        goto LABEL_16;
      }
    }

    v4 = v8;
LABEL_16:
    if (v15 == v13)
    {
      return v4;
    }

    if (v15 >= v13)
    {
      goto LABEL_24;
    }

    v10 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v4 != a3)
    {
      continue;
    }

    return 0;
  }
}

unint64_t *sub_1C6A5DC50(unint64_t *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*v2 + 16);
  if (*result != v4)
  {
    v10 = result;
    v5 = v2[1];
    v6 = *v2 + 32;
    v7 = v2[3];
    while (1)
    {
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v8 == v4)
      {
        v8 = v4;
LABEL_9:
        *v10 = v8;
        return result;
      }

      if (v8 >= v4)
      {
        goto LABEL_11;
      }

      v11 = *(v6 + 8 * v8);

      v5(&v12, &v11);

      v11 = v12;
      v9 = v7(&v11);

      ++v3;
      if (v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6A5DD50@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  result = *a1;
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6A5DD64(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4760, &qword_1C6A85AB0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v94 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v92 = &v69 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4860, &qword_1C6A85978);
  v6 = *(v91 - 8);
  v7 = MEMORY[0x1EEE9AC00](v91);
  v75 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v74 = &v69 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v69 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v69 - v13;
  v99 = sub_1C6A743A0();
  v14 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v14 + 80);
  v100 = MEMORY[0x1E69E7CC0];
  v71 = (v72 + 32) & ~v72;
  v95 = MEMORY[0x1E69E7CC0] + v71;
  v16 = a1[6];
  v17 = a1[1];
  v107 = *a1;
  v108 = v17;
  v18 = a1[3];
  v109 = a1[2];
  v110 = v18;
  v19 = a1[5];
  v111 = a1[4];
  v112 = v19;
  v113 = v16;
  v20 = *(a1 + 14);
  v21 = *(a1 + 15);
  v83 = v20;
  v80 = *(&v16 + 1);
  v81 = v16;
  v22 = *(&v107 + 1);
  v70 = v107;
  v23 = *(&v108 + 1);
  v24 = v108;
  v102 = *(&v109 + 1);
  v103 = v109;
  v25 = *(&v110 + 1);
  v101 = v110;
  v78 = *(&v111 + 1);
  v79 = v111;
  v76 = *(&v19 + 1);
  v77 = v19;
  sub_1C6A5F5B4(&v107, v104, &qword_1EC1D4768, &qword_1C6A85AB8);
  v69 = v23;
  v26 = v23 >> 1;
  v88 = (v6 + 48);
  v89 = (v6 + 56);
  v86 = (v14 + 48);
  v87 = (v14 + 56);
  v93 = v14;
  v96 = (v14 + 32);
  v82 = v21;

  v98 = 0;
  v73 = (v23 >> 1) - 1;
  v28 = v24;
  v84 = v22;
  if (v24 != v23 >> 1)
  {
    goto LABEL_10;
  }

LABEL_2:
  while (1)
  {
    v29 = 1;
    v24 = v26;
LABEL_3:
    v30 = 1;
    v32 = v91;
    v31 = v92;
    (*v89)(v92, v29, 1, v91);
    v33 = v31;
    v34 = v94;
    sub_1C6A55520(v33, v94, &qword_1EC1D4760, &qword_1C6A85AB0);
    v35 = (*v88)(v34, 1, v32);
    v36 = v90;
    if (v35 != 1)
    {
      v37 = v75;
      sub_1C6A55520(v94, v75, &qword_1EC1D4860, &qword_1C6A85978);
      v83(v37);
      v38 = v37;
      v22 = v84;
      sub_1C6A5F554(v38, &qword_1EC1D4860, &qword_1C6A85978);
      v30 = 0;
    }

    v39 = v30;
    v40 = v99;
    (*v87)(v36, v39, 1, v99);
    if ((*v86)(v36, 1, v40) == 1)
    {
      break;
    }

    v41 = *v96;
    result = (*v96)(v97, v36, v40);
    if (v98)
    {
      v42 = v100;
      v43 = v95;
      v44 = v98 - 1;
      if (__OFSUB__(v98, 1))
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    v51 = *(v100 + 24);
    if (((v51 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_46;
    }

    v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
    if (v52 <= 1)
    {
      v53 = 1;
    }

    else
    {
      v53 = v52;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4778, &qword_1C6A85AC8);
    v54 = *(v93 + 72);
    v55 = v71;
    v42 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v42);
    if (!v54)
    {
      goto LABEL_47;
    }

    v56 = result - v55;
    if (result - v55 == 0x8000000000000000 && v54 == -1)
    {
      goto LABEL_48;
    }

    v58 = v55;
    v59 = v56 / v54;
    v42[2] = v53;
    v42[3] = 2 * (v56 / v54);
    v60 = v42 + v55;
    v61 = *(v100 + 24) >> 1;
    v62 = v61 * v54;
    v22 = v84;
    if (*(v100 + 16))
    {
      if (v42 < v100 || v60 >= v100 + v58 + v62)
      {
        v63 = *(v100 + 24) >> 1;
        v95 = v59;
        v98 = v60;
        swift_arrayInitWithTakeFrontToBack();
LABEL_34:
        v61 = v63;
        v60 = v98;
        v59 = v95;
      }

      else if (v42 != v100)
      {
        v63 = *(v100 + 24) >> 1;
        v95 = v59;
        v98 = v60;
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_34;
      }

      *(v100 + 16) = 0;
    }

    v43 = &v60[v62];
    v64 = (v59 & 0x7FFFFFFFFFFFFFFFLL) - v61;

    v65 = __OFSUB__(v64, 1);
    v44 = (v64 - 1);
    if (v65)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_37:
    v98 = v44;
    result = v41(v43, v97, v99);
    v95 = &v43[*(v93 + 72)];
    v100 = v42;
    if (v24 != v26)
    {
LABEL_10:
      while (2)
      {
        v45 = v24;
        while (1)
        {
          if (v24 < v28 || v45 >= v26)
          {
            __break(1u);
            goto LABEL_45;
          }

          v46 = v45 + 1;
          v106 = *(v22 + 8 * v45);

          v103(&v105, &v106);

          v47 = v105;
          v104[0] = v105;
          if (v101(v104))
          {
            break;
          }

          ++v45;
          if (v26 == v46)
          {
            goto LABEL_2;
          }
        }

        v104[0] = v47;
        v79(&v106, v104);

        v48 = v106;
        v104[0] = v106;
        v49 = v74;
        v77(v104);

        v50 = v85;
        sub_1C6A55520(v49, v85, &qword_1EC1D4860, &qword_1C6A85978);
        if (v81(v50))
        {
          sub_1C6A55520(v85, v92, &qword_1EC1D4860, &qword_1C6A85978);
          v29 = 0;
          v24 = v45 + 1;
          goto LABEL_3;
        }

        result = sub_1C6A5F554(v85, &qword_1EC1D4860, &qword_1C6A85978);
        v24 = v45 + 1;
        if (v73 != v45)
        {
          continue;
        }

        break;
      }
    }
  }

  v104[0] = v70;
  v104[1] = v22;
  v104[2] = v28;
  v104[3] = v69;
  v104[4] = v24;
  v104[5] = v103;
  v104[6] = v102;
  v104[7] = v101;
  v104[8] = v25;
  v104[9] = v79;
  v104[10] = v78;
  v104[11] = v77;
  v104[12] = v76;
  v104[13] = v81;
  v104[14] = v80;
  v104[15] = v83;
  v104[16] = v82;
  sub_1C6A5F554(v104, &qword_1EC1D4770, &qword_1C6A85AC0);
  sub_1C6A5F554(v36, &qword_1EC1D4860, &qword_1C6A85978);
  result = v100;
  v66 = *(v100 + 24);
  if (v66 < 2)
  {
    return result;
  }

  v67 = v66 >> 1;
  v65 = __OFSUB__(v67, v98);
  v68 = v67 - v98;
  if (!v65)
  {
    *(v100 + 16) = v68;
    return result;
  }

LABEL_49:
  __break(1u);
  return result;
}

BOOL sub_1C6A5E534()
{
  v0 = sub_1C6A743A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC1D4430 != -1)
  {
LABEL_8:
    swift_once();
  }

  v4 = 0;
  v5 = off_1EC1D46B8;
  v6 = *(off_1EC1D46B8 + 2);
  v12 = v1 + 8;
  v13 = v1 + 16;
  do
  {
    v7 = v4;
    if (v6 == v4)
    {
      break;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_8;
    }

    (*(v1 + 16))(v3, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v4++, v0);
    v8 = [objc_opt_self() defaultManager];
    sub_1C6A74370();
    v9 = sub_1C6A74780();

    v10 = [v8 fileExistsAtPath_];

    (*(v1 + 8))(v3, v0);
  }

  while ((v10 & 1) != 0);
  return v6 == v7;
}

uint64_t sub_1C6A5E714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6A54D18;

  return sub_1C6A5986C(a1, v4, v5, v6);
}

unint64_t sub_1C6A5E7C8()
{
  result = qword_1EC1D44B8;
  if (!qword_1EC1D44B8)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D44B8);
  }

  return result;
}

uint64_t sub_1C6A5E820(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1C6A5E874(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1C6A5E8C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46C0, &qword_1C6A85960);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() safari_browserDefaults];
  sub_1C6A5F5B4(a1, v4, &qword_1EC1D46C0, &qword_1C6A85960);
  v6 = sub_1C6A74440();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    v8 = sub_1C6A74400();
    (*(v7 + 8))(v4, v6);
  }

  v9 = sub_1C6A74780();
  [v5 setObject:v8 forKey:v9];

  swift_unknownObjectRelease();
  return sub_1C6A5F554(a1, &qword_1EC1D46C0, &qword_1C6A85960);
}

uint64_t dispatch thunk of WBSExtensionsOnboardingIconProvider.extensionArtwork.getter()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C6A5EBBC;

  return v4();
}

uint64_t sub_1C6A5EBBC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1C6A5ECD8()
{
  if (MEMORY[0x1E698C7D8])
  {
    v2 = objc_opt_self();
    v3 = [v2 bagSubProfile];
    if (v3)
    {
      v0 = v3;
      v4 = [v2 bagSubProfileVersion];
      if (v4)
      {
        v5 = v4;
        v6 = [objc_opt_self() bagForProfile:v0 profileVersion:v4];
        v1[7] = v6;

        v7 = objc_allocWithZone(MEMORY[0x1E698C9E0]);
        v8 = v6;
        v9 = sub_1C6A74780();
        v10 = sub_1C6A74780();
        v11 = [v7 initWithType:5 clientIdentifier:v9 clientVersion:v10 bag:v8];
        v1[8] = v11;

        v12 = sub_1C6A74820();
        [v11 setItemIdentifiers_];

        v13 = sub_1C6A74820();
        [v11 setIncludedResultKeys_];

        v14 = swift_task_alloc();
        v1[9] = v14;
        *(v14 + 16) = v11;
        v15 = swift_task_alloc();
        v1[10] = v15;
        v16 = sub_1C6A57054(0, &qword_1EC1D4740, 0x1E698C9D8);
        *v15 = v1;
        v15[1] = sub_1C6A5EF98;
        v17 = sub_1C6A5F42C;
        v18 = 0x286D726F66726570;
        v19 = v1 + 5;
        v20 = 0;
        v21 = 0;
        v22 = 0xE900000000000029;
        v23 = v14;

        return MEMORY[0x1EEE6DE38](v19, v20, v21, v18, v22, v17, v23, v16);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6DE38](v19, v20, v21, v18, v22, v17, v23, v16);
  }

  v24 = v1[1];

  return v24(0);
}

uint64_t sub_1C6A5EF98()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1C6A5F120;
  }

  else
  {

    v2 = sub_1C6A5F0B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6A5F0B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1C6A5F120()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];

  swift_getErrorValue();
  sub_1C6A57498(0xD00000000000004CLL, 0x80000001C6A9FB60, v0[3], v0[4]);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1C6A5F1D8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C6A556F0;

  return sub_1C6A58160(a1, a2, v6);
}

unint64_t sub_1C6A5F288()
{
  result = qword_1EC1D4730;
  if (!qword_1EC1D4730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1D4710, &qword_1C6A85A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D4730);
  }

  return result;
}

void sub_1C6A5F2EC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    sub_1C6A5E874(a2, a3);
  }
}

uint64_t sub_1C6A5F334(uint64_t a1)
{
  v4 = *(sub_1C6A743A0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C6A54D18;

  return sub_1C6A58D98(a1, v6, v7, v8, v1 + v5);
}

void *sub_1C6A5F434(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4748, &qword_1C6A85A98);

  return sub_1C6A57384(a1, a2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C6A5F4D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 72);
  v8 = *a1;
  v5(&v7, &v8);
  v4(&v9, &v7);

  *a2 = v9;
  return result;
}

uint64_t sub_1C6A5F554(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6A5F5B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1C6A5F61C()
{
  result = qword_1EC1D4780;
  if (!qword_1EC1D4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D4780);
  }

  return result;
}

uint64_t sub_1C6A5F670(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6A556F0;

  return sub_1C6A5D21C(a1, v4);
}

id sub_1C6A5F728()
{
  if (MEMORY[0x1E69C9DC8])
  {
    result = [objc_allocWithZone(MEMORY[0x1E69C9DC8]) init];
  }

  else
  {
    result = 0;
  }

  qword_1EC1D4790 = result;
  return result;
}

id sub_1C6A5F774(uint64_t a1)
{
  v3 = sub_1C6A744A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR___WBSFeatureRestrictionAlertHelper_fallbackAlertMessage];
  sub_1C6A74490();
  v8 = sub_1C6A74480();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  *v7 = v8;
  v7[1] = v10;
  v11 = &v1[OBJC_IVAR___WBSFeatureRestrictionAlertHelper_screenTimeSettingsURLString];
  *v11 = 0xD000000000000034;
  *(v11 + 1) = 0x80000001C6A9FED0;
  *&v1[OBJC_IVAR___WBSFeatureRestrictionAlertHelper_presentingViewController] = a1;
  v13.receiver = v1;
  v13.super_class = WBSFeatureRestrictionAlertHelper;
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_1C6A5F908(void *a1, char a2)
{
  v5 = sub_1C6A744A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &selRef__updateProgressForFinishingInitialContentExtraction;
  sub_1C6A74490();
  sub_1C6A74480();
  if (a2)
  {
    v20 = *(v6 + 8);
    v20(v8, v5);
    v10 = *(v2 + OBJC_IVAR___WBSFeatureRestrictionAlertHelper_screenTimeSettingsURLString);
    v11 = *(v2 + OBJC_IVAR___WBSFeatureRestrictionAlertHelper_screenTimeSettingsURLString + 8);
    v21 = v2;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;

    v13 = sub_1C6A74780();

    v26 = sub_1C6A60874;
    v27 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1C6A5FE58;
    v25 = &block_descriptor_4;
    v14 = _Block_copy(&aBlock);

    v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];
    _Block_release(v14);

    [a1 addAction_];
    v9 = &selRef__updateProgressForFinishingInitialContentExtraction;
    v2 = v21;
    sub_1C6A74490();
    sub_1C6A74480();
    v20(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  v16 = sub_1C6A74780();

  v17 = [objc_opt_self() v9[50]];

  [a1 addAction_];
  v18 = *(v2 + OBJC_IVAR___WBSFeatureRestrictionAlertHelper_presentingViewController);
  v26 = sub_1C6A5FEC0;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C6A57190;
  v25 = &block_descriptor_2;
  v19 = _Block_copy(&aBlock);
  [v18 presentViewController:a1 animated:1 completion:v19];
  _Block_release(v19);
}

void sub_1C6A5FCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4860, &qword_1C6A85978);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    sub_1C6A74380();
    v8 = sub_1C6A743A0();
    v9 = *(v8 - 8);
    v10 = 0;
    if ((*(v9 + 48))(v5, 1, v8) != 1)
    {
      v10 = sub_1C6A74340();
      (*(v9 + 8))(v5, v8);
    }

    sub_1C6A65A84(MEMORY[0x1E69E7CC0]);
    v11 = sub_1C6A74710();

    [v7 openSensitiveURL:v10 withOptions:v11];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C6A5FE58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Void __swiftcall WBSFeatureRestrictionAlertHelper.displayPrivateBrowsingDenialAlert()()
{
  v0 = sub_1C6A744A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC1D4418 != -1)
  {
    swift_once();
  }

  v4 = sub_1C6A744E0();
  __swift_project_value_buffer(v4, qword_1EC1D5828);
  v5 = sub_1C6A744C0();
  v6 = sub_1C6A749B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [objc_opt_self() isPrivateBrowsingEnabled];
    _os_log_impl(&dword_1C6968000, v5, v6, "Attempting to display private browsing denial alert. isPrivateBrowsingEnabled=%{BOOL}d", v7, 8u);
    MEMORY[0x1CCA51EA0](v7, -1, -1);
  }

  if (byte_1EC1D4798)
  {
    v17 = sub_1C6A744C0();
    v8 = sub_1C6A74990();
    if (os_log_type_enabled(v17, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C6968000, v17, v8, "Aborted displaying private browsing denial alert because a different alert is already shown.", v9, 2u);
      MEMORY[0x1CCA51EA0](v9, -1, -1);
    }

    v10 = v17;
  }

  else
  {
    byte_1EC1D4798 = 1;
    sub_1C6A74490();
    sub_1C6A74480();
    v11 = *(v1 + 8);
    v11(v3, v0);
    sub_1C6A74490();
    sub_1C6A74480();
    v11(v3, v0);
    if (qword_1EC1D4438 != -1)
    {
      swift_once();
    }

    if (qword_1EC1D4790 && ([qword_1EC1D4790 isRestrictionsPasscodeSet] & 1) != 0)
    {
      v12 = 1;
    }

    else
    {

      v12 = 0;
    }

    v13 = sub_1C6A74780();

    v14 = sub_1C6A74780();

    v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

    sub_1C6A5F908(v15, v12);
  }
}

Swift::Void __swiftcall WBSFeatureRestrictionAlertHelper.displayHistoryClearingDenialAlert()()
{
  v0 = sub_1C6A744A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC1D4418 != -1)
  {
    swift_once();
  }

  v4 = sub_1C6A744E0();
  __swift_project_value_buffer(v4, qword_1EC1D5828);
  v5 = sub_1C6A744C0();
  v6 = sub_1C6A749B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [objc_opt_self() isHistoryClearingEnabled];
    _os_log_impl(&dword_1C6968000, v5, v6, "Attempting to display history clearing denial alert. isHistoryClearingEnabled=%{BOOL}d", v7, 8u);
    MEMORY[0x1CCA51EA0](v7, -1, -1);
  }

  if (byte_1EC1D4798)
  {
    v17 = sub_1C6A744C0();
    v8 = sub_1C6A74990();
    if (os_log_type_enabled(v17, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C6968000, v17, v8, "Aborted displaying history clearing denial alert because a different alert is already shown.", v9, 2u);
      MEMORY[0x1CCA51EA0](v9, -1, -1);
    }

    v10 = v17;
  }

  else
  {
    byte_1EC1D4798 = 1;
    sub_1C6A74490();
    sub_1C6A74480();
    v11 = *(v1 + 8);
    v11(v3, v0);
    sub_1C6A74490();
    sub_1C6A74480();
    v11(v3, v0);
    if (qword_1EC1D4438 != -1)
    {
      swift_once();
    }

    if (qword_1EC1D4790 && ([qword_1EC1D4790 isRestrictionsPasscodeSet] & 1) != 0)
    {
      v12 = 1;
    }

    else
    {

      v12 = 0;
    }

    v13 = sub_1C6A74780();

    v14 = sub_1C6A74780();

    v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

    sub_1C6A5F908(v15, v12);
  }
}

void __swiftcall WBSFeatureRestrictionAlertHelper.init()(WBSFeatureRestrictionAlertHelper *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for WBSFeatureRestrictionAlertHelper()
{
  result = qword_1EC1D47B8;
  if (!qword_1EC1D47B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1D47B8);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static WBSFormDataController.creditCardControlValuesForFilling(in:originatingInFrame:forForm:with:andCreditCardData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[44] = a5;
  v6[45] = v5;
  v6[42] = a3;
  v6[43] = a4;
  v6[40] = a1;
  v6[41] = a2;
  sub_1C6A748C0();
  v6[46] = sub_1C6A748B0();
  v8 = sub_1C6A74870();
  v6[47] = v8;
  v6[48] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C6A60924, v8, v7);
}

uint64_t sub_1C6A60924()
{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C6A60A70;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D47C0, &qword_1C6A85B00);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C6A61AE0;
  v0[13] = &block_descriptor_3;
  v0[14] = v6;
  [ObjCClassFromMetadata orderedFormsMetadataForCrossFrameFillingIn:v4 originatingInFrame:v3 forForm:v2 with:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C6A60A70()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1C6A60B78, v2, v1);
}

uint64_t sub_1C6A60B78()
{
  v141 = v0;
  v1 = v0;

  v2 = v0[18];
  v3 = v0[19];
  v4 = v0 + 18;
  v130 = v0;
  if (v3 == sub_1C6A742D0())
  {

    if (qword_1EC1D4408 != -1)
    {
      goto LABEL_125;
    }

    goto LABEL_3;
  }

  v117 = v2;
  v12 = MEMORY[0x1E69E7CC0];
  v0[36] = sub_1C6A65BB4(MEMORY[0x1E69E7CC0]);
  if (v12 >> 62 && sub_1C6A74A20())
  {
    sub_1C6A65D98(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  v0[37] = v13;
  v0[38] = v12;
  v0[39] = 0;
  if (v117 >> 62)
  {
    v13 = sub_1C6A74A20();
    v14 = v13;
    if (v13 >= v3)
    {
      goto LABEL_9;
    }

LABEL_129:
    __break(1u);
    return MEMORY[0x1EEE6B550](v13);
  }

  v14 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14 < v3)
  {
    goto LABEL_129;
  }

LABEL_9:
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v139 = v0 + 18;
  if (v3 == v14)
  {
    v125 = 0;
    goto LABEL_60;
  }

  v125 = 0;
  v115 = v14;
  v18 = v3;
  v118 = v3;
  do
  {
    if ((v117 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1CCA50820](v18, v117);
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_121;
      }

      if (v18 >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_122;
      }

      v19 = *(v117 + 32 + 8 * v18);
    }

    v20 = v19;
    v21 = [v19 frameInfo];
    v135 = [v21 _handle];
    if (sub_1C6A61B78(v21, v4[19]))
    {

LABEL_59:
      break;
    }

    v121 = v21;
    v22 = [v20 formMetadata];
    v126 = v22;
    v128 = sub_1C6A749C0();
    v133 = v23;
    if (v24)
    {
      v25 = v18;
      v26 = v20;
      v27 = v135;
      v28 = [v22 uniqueID];
      v29 = objc_allocWithZone(WBSAutoFillControlHandle);
      v30 = sub_1C6A74780();

      v31 = [v29 initWithFrameHandle:v27 formID:v28 controlID:v30];

      v20 = v26;
      v18 = v25;
      v1 = v130;
      v3 = v118;
      v4[21] = v31;

      v125 = v31;
    }

    v32 = v133;
    if (!v128[2])
    {

      goto LABEL_59;
    }

    v123 = v20;

    v34 = sub_1C6A61C90(v33);

    v36 = sub_1C6A61C90(v35);
    v37 = sub_1C6A61DC4(v36, v34);

    if ((v37 & 1) == 0)
    {

      v20 = v123;
      goto LABEL_59;
    }

    v119 = v18 + 1;
    v131 = [v126 uniqueID];
    v38 = 0;
    v39 = -1 << *(v133 + 32);
    if (-v39 < 64)
    {
      v40 = ~(-1 << -v39);
    }

    else
    {
      v40 = -1;
    }

    v1 = v40 & *(v133 + 64);
    v41 = (63 - v39) >> 6;
LABEL_29:
    if (v1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
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
        goto LABEL_120;
      }

      if (v42 >= v41)
      {
        break;
      }

      v1 = *(v133 + 64 + 8 * v42);
      ++v38;
      if (v1)
      {
        v38 = v42;
LABEL_34:
        v137 = *(*(v32 + 56) + 8 * (__clz(__rbit64(v1)) | (v38 << 6)));
        v43 = objc_allocWithZone(WBSAutoFillControlHandle);
        v44 = v135;

        v45 = sub_1C6A74780();

        v46 = [v43 initWithFrameHandle:v44 formID:v131 controlID:v45];

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v140 = v4[18];
        v48 = v140;
        v50 = sub_1C6A63FB4(v46);
        v51 = v48[2];
        v52 = (v49 & 1) == 0;
        v53 = v51 + v52;
        if (__OFADD__(v51, v52))
        {
          goto LABEL_117;
        }

        v54 = v49;
        if (v48[3] >= v53)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v49 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          else
          {
            sub_1C6A65900();
            v48 = v140;
            if ((v54 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

LABEL_27:
          *(v48[7] + 8 * v50) = v137;

          goto LABEL_28;
        }

        sub_1C6A6569C(v53, isUniquelyReferenced_nonNull_native);
        v48 = v140;
        v55 = sub_1C6A63FB4(v46);
        if ((v54 & 1) != (v56 & 1))
        {
LABEL_103:
          v13 = type metadata accessor for WBSAutoFillControlHandle(0);

          return MEMORY[0x1EEE6B550](v13);
        }

        v50 = v55;
        if (v54)
        {
          goto LABEL_27;
        }

LABEL_41:
        v48[(v50 >> 6) + 8] |= 1 << v50;
        *(v48[6] + 8 * v50) = v46;
        *(v48[7] + 8 * v50) = v137;
        v57 = v48[2];
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_119;
        }

        v48[2] = v59;
LABEL_28:
        v1 &= v1 - 1;
        v4 = v139;
        v139[18] = v48;
        swift_endAccess();
        v32 = v133;
        goto LABEL_29;
      }
    }

    swift_beginAccess();
    v60 = v121;
    sub_1C6A64250(&v140, v60);
    swift_endAccess();

    v61 = v4[20];
    if (v61 >> 62)
    {
      v62 = sub_1C6A74A20();
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v119;
    v63 = objc_allocWithZone(WBSAutoFillValuesForFilling);
    v64 = sub_1C6A74710();

    v65 = [v63 initWithFrameAssociatedFormMetadata:v123 controlIDsToValues:v64];

    swift_beginAccess();
    if (v61 >> 62)
    {
      v66 = sub_1C6A74A20();
    }

    else
    {
      v66 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = v130;
    v3 = v118;
    if (v66 < v62)
    {
      goto LABEL_123;
    }

    if (v62 < 0)
    {
      goto LABEL_124;
    }

    sub_1C6A661A4(v62, v62, v65);
    swift_endAccess();
  }

  while (v119 != v115);
LABEL_60:
  v67 = v3 - 1;
  if (v3 < 1)
  {
    goto LABEL_110;
  }

  swift_beginAccess();
  swift_beginAccess();
  v116 = 0;
  v68 = v3 - 2;
  if (v67 < 1)
  {
    goto LABEL_62;
  }

  while (2)
  {
    while (2)
    {
      if ((v117 & 0xC000000000000001) == 0)
      {
        if (v67 < *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v69 = *(v117 + 32 + 8 * v67);
          goto LABEL_67;
        }

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
        swift_once();
LABEL_3:
        v5 = *(v1 + 336);
        v6 = sub_1C6A744E0();
        __swift_project_value_buffer(v6, qword_1EC1D57F8);
        v7 = v5;
        v8 = sub_1C6A744C0();
        v9 = sub_1C6A74990();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = v130[42];
          v11 = swift_slowAlloc();
          *v11 = 134217984;
          *(v11 + 4) = [v10 uniqueID];

          v1 = v130;
          _os_log_impl(&dword_1C6968000, v8, v9, "The originating form with ID %ld no longer existed when trying to determine values for filling credit card controls. No values will be returned for filling.", v11, 0xCu);
          MEMORY[0x1CCA51EA0](v11, -1, -1);
        }

        else
        {

          v8 = *(v1 + 336);
        }

        v15 = MEMORY[0x1E69E7CC0];
        v16 = sub_1C6A65CA0(MEMORY[0x1E69E7CC0]);
        v17 = 0;
        goto LABEL_111;
      }

      v69 = MEMORY[0x1CCA50820](v67, v117);
LABEL_67:
      v70 = v69;
      v71 = [v69 frameInfo];
      v136 = [v71 _handle];
      v124 = v71;
      if (sub_1C6A61B78(v71, v4[19]))
      {
        goto LABEL_108;
      }

      v122 = v68;
      v129 = [v70 formMetadata];
      v72 = sub_1C6A749C0();
      v74 = v73;
      v127 = v72;
      if (!v75)
      {
        goto LABEL_71;
      }

      if (!v125)
      {
        v107 = v136;
        v108 = [v129 uniqueID];
        v109 = objc_allocWithZone(WBSAutoFillControlHandle);
        v110 = sub_1C6A74780();

        v111 = [v109 initWithFrameHandle:v107 formID:v108 controlID:v110];

        v125 = v111;
        v4[21] = v111;
        if (v127[2])
        {
          goto LABEL_72;
        }

        goto LABEL_106;
      }

LABEL_71:
      if (!*(v72 + 16))
      {
LABEL_106:

LABEL_109:

        goto LABEL_110;
      }

LABEL_72:

      v77 = sub_1C6A61C90(v76);

      v79 = sub_1C6A61C90(v78);
      v80 = sub_1C6A61DC4(v79, v77);

      if ((v80 & 1) == 0)
      {

LABEL_108:
        goto LABEL_109;
      }

      v120 = v70;
      v132 = v74;
      v134 = [v129 uniqueID];
      v81 = 0;
      v82 = v74 + 64;
      v83 = -1 << *(v74 + 32);
      if (-v83 < 64)
      {
        v84 = ~(-1 << -v83);
      }

      else
      {
        v84 = -1;
      }

      v1 = v84 & *(v74 + 64);
      v85 = (63 - v83) >> 6;
      while (2)
      {
        if (v1)
        {
LABEL_84:
          v138 = *(*(v74 + 56) + 8 * (__clz(__rbit64(v1)) | (v81 << 6)));
          v87 = objc_allocWithZone(WBSAutoFillControlHandle);
          v88 = v136;

          v89 = sub_1C6A74780();

          v90 = [v87 initWithFrameHandle:v88 formID:v134 controlID:v89];

          swift_beginAccess();
          v91 = swift_isUniquelyReferenced_nonNull_native();
          v140 = v139[18];
          v92 = v140;
          v94 = sub_1C6A63FB4(v90);
          v95 = v92[2];
          v96 = (v93 & 1) == 0;
          v97 = v95 + v96;
          if (__OFADD__(v95, v96))
          {
            goto LABEL_116;
          }

          v98 = v93;
          if (v92[3] < v97)
          {
            sub_1C6A6569C(v97, v91);
            v92 = v140;
            v99 = sub_1C6A63FB4(v90);
            if ((v98 & 1) != (v100 & 1))
            {
              goto LABEL_103;
            }

            v94 = v99;
            if ((v98 & 1) == 0)
            {
              goto LABEL_91;
            }

LABEL_77:
            *(v92[7] + 8 * v94) = v138;

LABEL_78:
            v1 &= v1 - 1;
            v139[18] = v92;
            swift_endAccess();
            v74 = v132;
            continue;
          }

          if (v91)
          {
            if (v93)
            {
              goto LABEL_77;
            }
          }

          else
          {
            sub_1C6A65900();
            v92 = v140;
            if (v98)
            {
              goto LABEL_77;
            }
          }

LABEL_91:
          v92[(v94 >> 6) + 8] |= 1 << v94;
          *(v92[6] + 8 * v94) = v90;
          *(v92[7] + 8 * v94) = v138;
          v101 = v92[2];
          v58 = __OFADD__(v101, 1);
          v102 = v101 + 1;
          if (v58)
          {
            goto LABEL_118;
          }

          v92[2] = v102;
          goto LABEL_78;
        }

        break;
      }

      while (1)
      {
        v86 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          __break(1u);
          goto LABEL_115;
        }

        if (v86 >= v85)
        {
          break;
        }

        v1 = *(v82 + 8 * v86);
        ++v81;
        if (v1)
        {
          v81 = v86;
          goto LABEL_84;
        }
      }

      v4 = v139;
      swift_beginAccess();
      v103 = v124;
      sub_1C6A64250(&v140, v103);
      swift_endAccess();

      v104 = objc_allocWithZone(WBSAutoFillValuesForFilling);
      v105 = sub_1C6A74710();

      v106 = [v104 initWithFrameAssociatedFormMetadata:v120 controlIDsToValues:v105];

      swift_beginAccess();
      if (v139[20] >> 62 && sub_1C6A74A20() < 0)
      {
        __break(1u);
        goto LABEL_103;
      }

      sub_1C6A661A4(0, 0, v106);
      swift_endAccess();

      v67 = v122;
      v1 = v130;
      v68 = v122 - 1;
      if (v122 >= 1)
      {
        continue;
      }

      break;
    }

LABEL_62:
    if ((v116 & 1) == 0)
    {
      v68 = 0;
      v116 = 1;
      continue;
    }

    break;
  }

LABEL_110:

  swift_beginAccess();
  v15 = v4[20];
  type metadata accessor for WBSAutoFillControlHandle(0);
  type metadata accessor for WBSSingleCreditCardDataType(0);
  sub_1C6A6955C(&qword_1EC1D47C8, type metadata accessor for WBSAutoFillControlHandle, MEMORY[0x1E69E81B8]);
  sub_1C6A6955C(&unk_1EC1D47D0, type metadata accessor for WBSSingleCreditCardDataType, &unk_1C6A85540);

  v112 = sub_1C6A74730();

  v16 = v112;
  v17 = v125;
LABEL_111:
  v113 = *(v1 + 8);

  return v113(v15, v16, v17);
}

uint64_t sub_1C6A61AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  type metadata accessor for WBSAutoFillFrameAssociatedFormMetadata();
  v5 = sub_1C6A74830();
  v6 = *(*(v4 + 64) + 40);
  *v6 = v5;
  v6[1] = a3;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1C6A61B78(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1C6A74A50();
  }

  else if (*(a2 + 16) && (sub_1C6A57054(0, &qword_1EC1D48A8, 0x1E6985328), v5 = sub_1C6A749D0(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_1C6A749E0();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1C6A61C90(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for WBSSingleCreditCardDataType(0);
  v4 = v3;
  v5 = sub_1C6A6955C(&qword_1EC1D48E8, type metadata accessor for WBSSingleCreditCardDataType, &unk_1C6A854D8);
  result = MEMORY[0x1CCA506A0](v2, v4, v5);
  v7 = 0;
  v15 = result;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  for (i = (v8 + 63) >> 6; v10; result = sub_1C6A64488(&v14, *(*(a1 + 56) + ((v12 << 9) | (8 * v13)))))
  {
    v12 = v7;
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= i)
    {

      return v15;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6A61DC4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      sub_1C6A74C50();
      MEMORY[0x1CCA50990](v14);
      result = sub_1C6A74C70();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 8 * v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6A61F34(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, const void *a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46D0, &qword_1C6A85980);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - v16;
  v18 = _Block_copy(a8);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v19[7] = v18;
  v19[8] = a1;
  v20 = sub_1C6A748F0();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1C6A85BA0;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1C6A85BA8;
  v22[5] = v21;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  swift_unknownObjectRetain();
  v26 = a7;
  sub_1C6A62D78(0, 0, v17, &unk_1C6A85BB0, v22);
}

uint64_t sub_1C6A620F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_1C6A748C0();
  v7[9] = sub_1C6A748B0();
  v9 = sub_1C6A74870();

  return MEMORY[0x1EEE6DFA0](sub_1C6A62198, v9, v8);
}

uint64_t sub_1C6A62198()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];

  v0[10] = _Block_copy(v1);
  swift_getObjCClassMetadata();
  v6 = v5;
  v7 = v4;
  v8 = v3;
  swift_unknownObjectRetain();
  v9 = v2;
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_1C6A62294;
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[2];

  return static WBSFormDataController.creditCardControlValuesForFilling(in:originatingInFrame:forForm:with:andCreditCardData:)(v15, v13, v14, v11, v12);
}

uint64_t sub_1C6A62294(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 48);
  v7 = *(*v3 + 32);
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  swift_unknownObjectRelease();
  if (v5)
  {
    v11 = *(v4 + 80);
    type metadata accessor for WBSAutoFillValuesForFilling();
    v12 = sub_1C6A74820();
    type metadata accessor for WBSAutoFillControlHandle(0);
    sub_1C6A57054(0, &unk_1EC1D48B0, 0x1E696AD98);
    sub_1C6A6955C(&qword_1EC1D47C8, type metadata accessor for WBSAutoFillControlHandle, MEMORY[0x1E69E81B8]);
    v13 = sub_1C6A74710();
    (v11)[2](v11, v12, v13, a3);
    _Block_release(v11);
  }

  else
  {

    v13 = a3;
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_1C6A62534(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1C6A62598(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_1C6A57054(0, &qword_1EC1D48A8, 0x1E6985328);
  **(*(v2 + 64) + 40) = sub_1C6A74830();

  return MEMORY[0x1EEE6DED8](v2);
}

uint64_t sub_1C6A6261C(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_1C6A74BF0();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v6 = sub_1C6A74BF0();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1C6A626AC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, const void *a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46D0, &qword_1C6A85980);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = a1;
  v18 = sub_1C6A748F0();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1C6A85B18;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1C6A85B28;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  swift_unknownObjectRetain();
  sub_1C6A62D78(0, 0, v15, &unk_1C6A85B38, v20);
}

uint64_t sub_1C6A62858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1C6A748C0();
  v5[7] = sub_1C6A748B0();
  v7 = sub_1C6A74870();

  return MEMORY[0x1EEE6DFA0](sub_1C6A628F8, v7, v6);
}

uint64_t sub_1C6A628F8()
{
  v1 = v0[6];
  v2 = v0[4];
  v4 = v0[2];
  v3 = v0[3];

  v0[8] = _Block_copy(v1);
  v5 = v4;
  v6 = v3;
  v7 = v2;
  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1C6A629D4;
  v9 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  return sub_1C6A67714(v12, v11, v9, v10);
}

uint64_t sub_1C6A629D4(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v11 = *v2;

  swift_unknownObjectRelease();

  type metadata accessor for WBSAutoFillFrameAssociatedFormMetadata();
  v8 = sub_1C6A74820();
  (v4)[2](v4, v8, a2);

  _Block_release(v4);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1C6A62BA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C6A556F0;

  return v6();
}

uint64_t sub_1C6A62C90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C6A54D18;

  return v7();
}

uint64_t sub_1C6A62D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46D0, &qword_1C6A85980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1C6A5F5B4(a3, v23 - v10, &qword_1EC1D46D0, &qword_1C6A85980);
  v12 = sub_1C6A748F0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C6A5F554(v11, &qword_1EC1D46D0, &qword_1C6A85980);
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

  sub_1C6A748E0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1C6A74870();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1C6A747C0() + 32;
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

    sub_1C6A5F554(a3, &qword_1EC1D46D0, &qword_1C6A85980);

    return v21;
  }

LABEL_8:
  sub_1C6A5F554(a3, &qword_1EC1D46D0, &qword_1C6A85980);
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

uint64_t sub_1C6A63074(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C6A6316C;

  return v6(a1);
}

uint64_t sub_1C6A6316C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1C6A63264(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C6A63330(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1C6A56FF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C6A63330(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C6A6343C(a5, a6);
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
    result = sub_1C6A74B10();
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

void *sub_1C6A6343C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C6A63488(a1, a2);
  sub_1C6A635B8(&unk_1F4646130);
  return v3;
}

void *sub_1C6A63488(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C6A636A4(v5, 0);
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

  result = sub_1C6A74B10();
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
        v10 = sub_1C6A747F0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C6A636A4(v10, 0);
        result = sub_1C6A74AD0();
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

uint64_t sub_1C6A635B8(uint64_t result)
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

  result = sub_1C6A63718(result, v11, 1, v3);
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

void *sub_1C6A636A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1D4880, &qword_1C6A85B90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C6A63718(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1D4880, &qword_1C6A85B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C6A6380C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6A6388C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6A6382C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6A63A64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6A6384C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6A63B70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6A6386C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6A63DC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6A6388C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4778, &qword_1C6A85AC8);
  v10 = *(sub_1C6A743A0() - 8);
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
  v15 = *(sub_1C6A743A0() - 8);
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

char *sub_1C6A63A64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1D4910, &qword_1C6A85AD0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6A63B70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4788, &qword_1C6A85AD8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C6A63C7C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1D48C0, &qword_1C6A85A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4738, &qword_1C6A85A90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6A63DC4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48A0, &qword_1C6A85A08);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46D8, &qword_1C6A85A10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1C6A63EF8(uint64_t a1)
{
  v2 = sub_1C6A74A60();

  return sub_1C6A63FF8(a1, v2);
}

unint64_t sub_1C6A63F3C(uint64_t a1, uint64_t a2)
{
  sub_1C6A74C50();
  sub_1C6A747D0();
  v4 = sub_1C6A74C70();

  return sub_1C6A640C0(a1, a2, v4);
}

unint64_t sub_1C6A63FB4(uint64_t a1)
{
  v2 = sub_1C6A749D0();

  return sub_1C6A64178(a1, v2);
}

unint64_t sub_1C6A63FF8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C6A695B4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1CCA507A0](v9, a1);
      sub_1C6A57104(v9);
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

unint64_t sub_1C6A640C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C6A74C00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C6A64178(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for WBSAutoFillControlHandle(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C6A749E0();

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

uint64_t sub_1C6A64250(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1C6A74A30();

    if (v9)
    {

      sub_1C6A57054(0, &qword_1EC1D48A8, 0x1E6985328);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1C6A74A20();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1C6A64620(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1C6A64810(v20 + 1);
    }

    v18 = v8;
    sub_1C6A64C88(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1C6A57054(0, &qword_1EC1D48A8, 0x1E6985328);
  v11 = sub_1C6A749D0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1C6A64D0C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1C6A749E0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1C6A64488(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C6A74C50();
  MEMORY[0x1CCA50990](a2);
  v6 = sub_1C6A74C70();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1C6A64E7C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C6A64580(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C6A74A20();
LABEL_9:
  result = sub_1C6A74B00();
  *v2 = result;
  return result;
}

uint64_t sub_1C6A64620(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48D8, &qword_1C6A85BC0);
    v2 = sub_1C6A74AB0();
    v15 = v2;
    sub_1C6A74A10();
    if (sub_1C6A74A40())
    {
      sub_1C6A57054(0, &qword_1EC1D48A8, 0x1E6985328);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1C6A64810(v9 + 1);
        }

        v2 = v15;
        result = sub_1C6A749D0();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1C6A74A40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C6A64810(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48D8, &qword_1C6A85BC0);
  result = sub_1C6A74AA0();
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
      result = sub_1C6A749D0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_30;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C6A64A38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48F0, &qword_1C6A85BD0);
  result = sub_1C6A74AA0();
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
      sub_1C6A74C50();
      MEMORY[0x1CCA50990](v17);
      result = sub_1C6A74C70();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_30;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C6A64C88(uint64_t a1, uint64_t a2)
{
  sub_1C6A749D0();
  result = sub_1C6A74A00();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1C6A64D0C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C6A64810(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C6A64FD8();
      goto LABEL_12;
    }

    sub_1C6A65268(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1C6A749D0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1C6A57054(0, &qword_1EC1D48A8, 0x1E6985328);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1C6A749E0();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C6A74C20();
  __break(1u);
}

void sub_1C6A64E7C(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C6A64A38(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1C6A65128();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C6A6547C(v5 + 1);
  }

  v8 = *v3;
  sub_1C6A74C50();
  MEMORY[0x1CCA50990](result);
  v9 = sub_1C6A74C70();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for WBSSingleCreditCardDataType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C6A74C20();
  __break(1u);
}

id sub_1C6A64FD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48D8, &qword_1C6A85BC0);
  v2 = *v0;
  v3 = sub_1C6A74A90();
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

void *sub_1C6A65128()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48F0, &qword_1C6A85BD0);
  v2 = *v0;
  v3 = sub_1C6A74A90();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1C6A65268(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48D8, &qword_1C6A85BC0);
  result = sub_1C6A74AA0();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      result = sub_1C6A749D0();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
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

        v2 = v24;
        goto LABEL_26;
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

uint64_t sub_1C6A6547C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48F0, &qword_1C6A85BD0);
  result = sub_1C6A74AA0();
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
      sub_1C6A74C50();
      MEMORY[0x1CCA50990](v16);
      result = sub_1C6A74C70();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
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
        goto LABEL_26;
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

uint64_t sub_1C6A6569C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48E0, &qword_1C6A85BC8);
  result = sub_1C6A74B90();
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

      result = sub_1C6A749D0();
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
  return result;
}

id sub_1C6A65900()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48E0, &qword_1C6A85BC8);
  v2 = *v0;
  v3 = sub_1C6A74B80();
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

unint64_t sub_1C6A65A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48F8, &qword_1C6A85BD8);
    v3 = sub_1C6A74BA0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C6A5F5B4(v4, &v13, &unk_1EC1D4900, &unk_1C6A85BE0);
      v5 = v13;
      v6 = v14;
      result = sub_1C6A63F3C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C6A695A4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1C6A65BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48E0, &qword_1C6A85BC8);
    v3 = sub_1C6A74BA0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1C6A63FB4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1C6A65CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48D0, &qword_1C6A85BB8);
    v3 = sub_1C6A74BA0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1C6A63FB4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void sub_1C6A65D98(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1C6A74A20())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D48D8, &qword_1C6A85BC0);
      v3 = sub_1C6A74AC0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1C6A74A20();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1CCA50820](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1C6A749D0();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1C6A57054(0, &qword_1EC1D48A8, 0x1E6985328);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1C6A749E0();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1C6A749D0();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1C6A57054(0, &qword_1EC1D48A8, 0x1E6985328);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1C6A749E0();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

char *sub_1C6A66088(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for WBSAutoFillValuesForFilling();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C6A74A20();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1C6A74A20();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1C6A661A4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C6A74A20();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1C6A74A20();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1C6A64580(result, 1);

  return sub_1C6A66088(v7, v6, 1, v4);
}

uint64_t sub_1C6A66290()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C6A556F0;

  return sub_1C6A62858(v2, v3, v4, v5, v6);
}

uint64_t sub_1C6A66364()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C6A556F0;

  return sub_1C6A62BA8(v2, v3, v4);
}

uint64_t sub_1C6A66424(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6A556F0;

  return sub_1C6A62C90(a1, v4, v5, v6);
}

uint64_t sub_1C6A664F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6A556F0;

  return sub_1C6A63074(a1, v4);
}

uint64_t sub_1C6A665A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6A54D18;

  return sub_1C6A63074(a1, v4);
}

uint64_t sub_1C6A66660(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(void *, void *))
{
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[16 * v13] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 16 * v13);
      a4 = v29;
    }

    v59 = &a4[16 * v13];
    v14 = a4;
    if (v11 >= 16 && v6 > v7)
    {
      v48 = sub_1C6A57054(0, &unk_1EC1D4890, 0x1E69C8F38);
      v49 = v14;
      v53 = v7;
LABEL_27:
      v51 = v6;
      v46 = v6 - 16;
      v30 = v5 - 16;
      v31 = v59;
      do
      {
        v32 = v30;
        v33 = v30 + 16;
        v35 = *(v31 - 2);
        v34 = *(v31 - 1);
        v31 -= 16;
        v37 = *(v51 - 2);
        v36 = *(v51 - 1);
        v58 = v48;
        v56 = v48;
        v57[0] = v36;
        v55[0] = v34;
        v38 = v34;
        v39 = v36;
        v40 = v38;
        v41 = v39;
        v42 = v35;
        v43 = v37;
        v44 = a5(v57, v55);
        __swift_destroy_boxed_opaque_existential_0(v55);
        __swift_destroy_boxed_opaque_existential_0(v57);

        if (v44 == 1)
        {
          v5 = v32;
          if (v33 != v51)
          {
            *v32 = *v46;
          }

          v14 = v49;
          if (v59 <= v49 || (v6 = v46, v46 <= v53))
          {
            v6 = v46;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v33 != v59)
        {
          *v32 = *v31;
        }

        v30 = v32 - 16;
        v59 = v31;
        v14 = v49;
      }

      while (v31 > v49);
      v59 = v31;
      v6 = v51;
    }
  }

  else
  {
    v14 = a4;
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v59 = &v14[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      v47 = sub_1C6A57054(0, &unk_1EC1D4890, 0x1E69C8F38);
      v50 = v5;
      while (1)
      {
        v52 = v7;
        v16 = *v6;
        v15 = *(v6 + 1);
        v18 = *v14;
        v17 = *(v14 + 1);
        v58 = v47;
        v56 = v47;
        v57[0] = v17;
        v55[0] = v15;
        v19 = v15;
        v20 = v17;
        v21 = v19;
        v22 = v20;
        v23 = v16;
        v24 = v18;
        v25 = a5(v57, v55);
        __swift_destroy_boxed_opaque_existential_0(v55);
        __swift_destroy_boxed_opaque_existential_0(v57);

        if (v25 != 1)
        {
          break;
        }

        v26 = v6;
        v27 = v52;
        v28 = v52 == v6;
        v6 += 16;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 = v27 + 16;
        if (v14 >= v59 || v6 >= v50)
        {
          goto LABEL_20;
        }
      }

      v26 = v14;
      v27 = v52;
      v28 = v52 == v14;
      v14 += 16;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_38:
  if (v6 != v14 || v6 >= &v14[(v59 - v14 + (v59 - v14 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v14, 16 * ((v59 - v14) / 16));
  }

  return 1;
}

uint64_t sub_1C6A66A0C(char *a1, char *a2, uint64_t *a3, uint64_t (*a4)(void *, void *), uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v26 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v26 = sub_1C6A6423C(v26);
  }

  v22 = v7;
  *v7 = v26;
  v9 = v26 + 16;
  v10 = *(v26 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v26;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v26[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __dst = (v11 + 16 * *v13);
      v18 = (v11 + 16 * *v16);
      v7 = (v11 + 16 * v17);

      sub_1C6A66660(__dst, v18, v7, a2, a4);
      v6 = v12;

      if (v12)
      {
        *v22 = v26;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v26;
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6A66BB4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void *, void *), uint64_t a6)
{
  v7 = v6;
  v147 = MEMORY[0x1E69E7CC0];
  v9 = a3[1];
  if (v9 >= 1)
  {
    swift_retain_n();
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v138 = a6;
    while (1)
    {
      if (v10 + 1 >= v9)
      {
        v9 = v10 + 1;
      }

      else
      {
        v123 = v7;
        v12 = *a3 + 16 * (v10 + 1);
        v14 = *v12;
        v13 = *(v12 + 8);
        v15 = v10;
        v129 = 16 * v10;
        v16 = *a3 + 16 * v10;
        v18 = *v16;
        v17 = *(v16 + 8);
        v146 = sub_1C6A57054(0, &unk_1EC1D4890, 0x1E69C8F38);
        v145[0] = v17;
        v136 = v146;
        v144 = v146;
        v143[0] = v13;
        v19 = v13;
        v20 = v17;
        v21 = v19;
        v22 = v20;
        v23 = v14;
        v24 = v18;
        v140 = a5(v145, v143);
        __swift_destroy_boxed_opaque_existential_0(v143);
        __swift_destroy_boxed_opaque_existential_0(v145);

        v25 = v15 + 2;
        v26 = v16 + 24;
        v134 = v9;
        while (v9 != v25)
        {
          v28 = *v26;
          v27 = *(v26 + 8);
          v30 = v26 + 16;
          v29 = *(v26 + 16);
          v31 = *(v26 - 8);
          v146 = v136;
          v145[0] = v28;
          v144 = v136;
          v143[0] = v29;
          v32 = v29;
          v33 = v28;
          v34 = v32;
          v35 = v33;
          v36 = v27;
          v37 = v31;
          v38 = a5(v145, v143);
          __swift_destroy_boxed_opaque_existential_0(v143);
          __swift_destroy_boxed_opaque_existential_0(v145);

          ++v25;
          v26 = v30;
          v9 = v134;
          if ((v140 == 1) == (v38 != 1))
          {
            v9 = v25 - 1;
            break;
          }
        }

        v10 = v15;
        v7 = v123;
        a6 = v138;
        v39 = v129;
        if (v140 == 1)
        {
          if (v9 < v15)
          {
            goto LABEL_113;
          }

          if (v15 < v9)
          {
            v40 = 16 * v9 - 16;
            v41 = v9;
            v42 = v15;
            do
            {
              if (v42 != --v41)
              {
                v44 = *a3;
                if (!*a3)
                {
                  goto LABEL_118;
                }

                v43 = *(v44 + v39);
                *(v44 + v39) = *(v44 + v40);
                *(v44 + v40) = v43;
              }

              ++v42;
              v40 -= 16;
              v39 += 16;
            }

            while (v42 < v41);
          }
        }
      }

      v45 = a3[1];
      if (v9 >= v45)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v9, v10))
      {
        goto LABEL_112;
      }

      if (v9 - v10 >= a4)
      {
        goto LABEL_28;
      }

      if (__OFADD__(v10, a4))
      {
        goto LABEL_114;
      }

      if (v10 + a4 >= v45)
      {
        v46 = a3[1];
      }

      else
      {
        v46 = v10 + a4;
      }

      if (v46 < v10)
      {
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
        goto LABEL_120;
      }

      if (v9 == v46)
      {
LABEL_28:
        v47 = v9;
        if (v9 < v10)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v132 = v11;
        v124 = v7;
        v102 = *a3;
        v103 = sub_1C6A57054(0, &unk_1EC1D4890, 0x1E69C8F38);
        v104 = v102 + 16 * v9 - 16;
        v122 = v10;
        v105 = v10 - v9;
        v127 = v46;
        do
        {
          v135 = v9;
          v106 = *(v102 + 16 * v9);
          v128 = v105;
          v130 = v104;
          v107 = v105;
          do
          {
            v142 = v106;
            v109 = *v104;
            v108 = *(v104 + 8);
            v146 = v103;
            v145[0] = v108;
            v144 = v103;
            v143[0] = *(&v106 + 1);
            v110 = *(&v106 + 1);
            v111 = v108;
            v112 = v110;
            v113 = v111;
            v114 = v142;
            v115 = v109;
            v116 = a5(v145, v143);
            __swift_destroy_boxed_opaque_existential_0(v143);
            __swift_destroy_boxed_opaque_existential_0(v145);

            if (v116 != 1)
            {
              break;
            }

            if (!v102)
            {
              goto LABEL_116;
            }

            v117 = *v104;
            v106 = *(v104 + 16);
            *v104 = v106;
            *(v104 + 16) = v117;
            v104 -= 16;
          }

          while (!__CFADD__(v107++, 1));
          v9 = v135 + 1;
          v104 = v130 + 16;
          v105 = v128 - 1;
          v47 = v127;
        }

        while (v135 + 1 != v127);
        v10 = v122;
        v7 = v124;
        a6 = v138;
        v11 = v132;
        if (v127 < v122)
        {
          goto LABEL_111;
        }
      }

      v126 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1C6A5C3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v49 = *(v11 + 2);
      v48 = *(v11 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v11 = sub_1C6A5C3B0((v48 > 1), v49 + 1, 1, v11);
      }

      *(v11 + 2) = v50;
      v51 = v11 + 32;
      v52 = &v11[16 * v49 + 32];
      *v52 = v10;
      *(v52 + 1) = v126;
      v141 = *a1;
      if (!*a1)
      {
        goto LABEL_119;
      }

      if (v49)
      {
        v137 = v11 + 32;
        v131 = v11;
        while (1)
        {
          v53 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v54 = *(v11 + 4);
            v55 = *(v11 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_49:
            if (v57)
            {
              goto LABEL_101;
            }

            v70 = &v11[16 * v50];
            v72 = *v70;
            v71 = *(v70 + 1);
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_103;
            }

            v76 = &v51[16 * v53];
            v78 = *v76;
            v77 = *(v76 + 1);
            v64 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v64)
            {
              goto LABEL_106;
            }

            if (__OFADD__(v74, v79))
            {
              goto LABEL_108;
            }

            if (v74 + v79 >= v56)
            {
              if (v56 < v79)
              {
                v53 = v50 - 2;
              }

              goto LABEL_71;
            }

            goto LABEL_64;
          }

          if (v50 < 2)
          {
            goto LABEL_109;
          }

          v80 = &v11[16 * v50];
          v82 = *v80;
          v81 = *(v80 + 1);
          v64 = __OFSUB__(v81, v82);
          v74 = v81 - v82;
          v75 = v64;
LABEL_64:
          if (v75)
          {
            goto LABEL_105;
          }

          v83 = &v51[16 * v53];
          v85 = *v83;
          v84 = *(v83 + 1);
          v64 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v64)
          {
            goto LABEL_107;
          }

          if (v86 < v74)
          {
            goto LABEL_3;
          }

LABEL_71:
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          v91 = *a3;
          if (!*a3)
          {
            goto LABEL_117;
          }

          v92 = v7;
          v93 = &v51[16 * v53 - 16];
          v94 = *v93;
          v95 = v53;
          v96 = &v51[16 * v53];
          v97 = *(v96 + 1);
          v98 = (v91 + 16 * *v93);
          v99 = (v91 + 16 * *v96);
          v100 = (v91 + 16 * v97);
          a6 = v138;

          sub_1C6A66660(v98, v99, v100, v141, a5);
          v7 = v92;
          if (v92)
          {

            v147 = v131;
            goto LABEL_93;
          }

          v11 = v131;
          if (v97 < v94)
          {
            goto LABEL_96;
          }

          v101 = *(v131 + 2);
          if (v95 > v101)
          {
            goto LABEL_97;
          }

          *v93 = v94;
          *(v93 + 1) = v97;
          if (v95 >= v101)
          {
            goto LABEL_98;
          }

          v50 = v101 - 1;
          memmove(v96, v96 + 16, 16 * (v101 - 1 - v95));
          *(v131 + 2) = v101 - 1;
          v51 = v137;
          if (v101 <= 2)
          {
            goto LABEL_3;
          }
        }

        v58 = &v51[16 * v50];
        v59 = *(v58 - 8);
        v60 = *(v58 - 7);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_99;
        }

        v63 = *(v58 - 6);
        v62 = *(v58 - 5);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_100;
        }

        v65 = &v11[16 * v50];
        v67 = *v65;
        v66 = *(v65 + 1);
        v64 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v64)
        {
          goto LABEL_102;
        }

        v64 = __OFADD__(v56, v68);
        v69 = v56 + v68;
        if (v64)
        {
          goto LABEL_104;
        }

        if (v69 >= v61)
        {
          v87 = &v51[16 * v53];
          v89 = *v87;
          v88 = *(v87 + 1);
          v64 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v64)
          {
            goto LABEL_110;
          }

          if (v56 < v90)
          {
            v53 = v50 - 2;
          }

          goto LABEL_71;
        }

        goto LABEL_49;
      }

LABEL_3:
      v9 = a3[1];
      v10 = v126;
      if (v126 >= v9)
      {
        v147 = v11;
        goto LABEL_91;
      }
    }
  }

  swift_retain_n();
LABEL_91:
  v119 = *a1;
  if (*a1)
  {

    sub_1C6A66A0C(&v147, v119, a3, a5, a6);

LABEL_93:
  }

  else
  {
LABEL_120:

    __break(1u);
  }

  return result;
}

void sub_1C6A6737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, void *))
{
  if (a3 != a2)
  {
    v5 = a3;
    v7 = *a4;
    v8 = sub_1C6A57054(0, &unk_1EC1D4890, 0x1E69C8F38);
    v31 = v7;
    v9 = v7 + 16 * v5 - 16;
    v10 = a1 - v5;
LABEL_5:
    v26 = v5;
    v11 = *(v31 + 16 * v5);
    v24 = v10;
    v25 = v9;
    while (1)
    {
      v28 = v11;
      v12 = *v9;
      v13 = *(v9 + 8);
      v30[3] = v8;
      v29[3] = v8;
      v30[0] = v13;
      v29[0] = *(&v11 + 1);
      v14 = *(&v11 + 1);
      v15 = v13;
      v16 = v14;
      v17 = v15;
      v18 = v28;
      v19 = v12;
      v20 = a5(v30, v29);
      __swift_destroy_boxed_opaque_existential_0(v29);
      __swift_destroy_boxed_opaque_existential_0(v30);

      if (v20 != 1)
      {
LABEL_4:
        v5 = v26 + 1;
        v9 = v25 + 16;
        v10 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v31)
      {
        break;
      }

      v21 = *v9;
      v11 = *(v9 + 16);
      *v9 = v11;
      *(v9 + 16) = v21;
      v9 -= 16;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C6A674F4(uint64_t *a1, uint64_t (*a2)(void *, void *), uint64_t a3)
{
  v6 = a1[1];
  swift_retain_n();
  result = sub_1C6A74BD0();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D46D8, &qword_1C6A85A10);
        v10 = sub_1C6A74850();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;

      sub_1C6A66BB4(v11, v12, a1, v8, a2, a3);

      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_1C6A6737C(0, v6, 1, a1, a2);
  }
}

uint64_t sub_1C6A67660(void **a1, uint64_t (*a2)(void *, void *), uint64_t a3)
{
  v6 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1C6A65A70(v6);
  }

  v7 = v6[2];
  v9[0] = (v6 + 4);
  v9[1] = v7;

  sub_1C6A674F4(v9, a2, a3);

  *a1 = v6;
}

uint64_t sub_1C6A67714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[40] = a3;
  v4[41] = a4;
  v4[38] = a1;
  v4[39] = a2;
  v5 = sub_1C6A74470();
  v4[42] = v5;
  v4[43] = *(v5 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4840, &qword_1C6A85B60);
  v4[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4848, &qword_1C6A85B68);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4850, &qword_1C6A85B70);
  v4[53] = v6;
  v4[54] = *(v6 - 8);
  v4[55] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4858, &qword_1C6A85B78);
  v4[56] = v7;
  v4[57] = *(v7 - 8);
  v4[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4860, &qword_1C6A85978);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v8 = sub_1C6A74300();
  v4[61] = v8;
  v4[62] = *(v8 - 8);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v9 = sub_1C6A743A0();
  v4[65] = v9;
  v4[66] = *(v9 - 8);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = sub_1C6A748C0();
  v4[71] = sub_1C6A748B0();
  v11 = sub_1C6A74870();
  v4[72] = v11;
  v4[73] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C6A67AB4, v11, v10);
}

uint64_t sub_1C6A67AB4()
{
  v2 = v0[38];
  v1 = v0[39];
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1C6A67BDC;
  v3 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4868, &qword_1C6A85B80);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1C6A62534;
  v0[21] = &block_descriptor_25;
  v0[22] = v3;
  [v2 safari:v1 getFrameInfoForFrameWithHandle:v0 + 18 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C6A67BDC()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 576);

  return MEMORY[0x1EEE6DFA0](sub_1C6A67CE4, v2, v1);
}

uint64_t sub_1C6A67CE4()
{
  v1 = *(v0 + 288);
  *(v0 + 592) = v1;
  if (!v1)
  {

    v26 = sub_1C6A742D0();
LABEL_8:

    v20 = *(v0 + 8);
    v21 = MEMORY[0x1E69E7CC0];

    return v20(v21, v26);
  }

  v2 = [*(v0 + 304) URL];
  if (!v2)
  {

    goto LABEL_7;
  }

  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 512);
  v8 = *(v0 + 496);
  v25 = *(v0 + 488);
  v9 = *(v0 + 480);
  v10 = v2;
  sub_1C6A74360();

  v11 = v4;
  v12 = *(v5 + 32);
  v12(v3, v11, v6);
  v13 = [v1 request];
  sub_1C6A742E0();

  sub_1C6A742F0();
  v14 = *(v8 + 8);
  *(v0 + 600) = v14;
  *(v0 + 608) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v25);
  v15 = *(v5 + 48);
  *(v0 + 616) = v15;
  *(v0 + 624) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v9, 1, v6) == 1)
  {
    v16 = *(v0 + 552);
    v17 = *(v0 + 528);
    v18 = *(v0 + 520);
    v19 = *(v0 + 480);

    sub_1C6A5F554(v19, &qword_1EC1D4860, &qword_1C6A85978);
    (*(v17 + 8))(v16, v18);
LABEL_7:
    v26 = sub_1C6A742D0();

    goto LABEL_8;
  }

  v23 = *(v0 + 304);
  v12(*(v0 + 536), *(v0 + 480), *(v0 + 520));
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 296;
  *(v0 + 88) = sub_1C6A680BC;
  v24 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4870, &qword_1C6A85B88);
  *(v0 + 208) = MEMORY[0x1E69E9820];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1C6A62598;
  *(v0 + 232) = &block_descriptor_28;
  *(v0 + 240) = v24;
  [v23 safari:v0 + 208 getAllFrameInfos:?];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1C6A680BC()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 576);

  return MEMORY[0x1EEE6DFA0](sub_1C6A681C4, v2, v1);
}

uint64_t sub_1C6A681C4()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v0[79] = v0[37];
  ObjectType = swift_getObjectType();
  WBSFormsMetadataProvider.formsAndFrames()(ObjectType);
  sub_1C6A74920();
  (*(v2 + 8))(v1, v3);
  v0[80] = MEMORY[0x1E69E7CC0];
  v5 = sub_1C6A748B0();
  v0[81] = v5;
  v6 = swift_task_alloc();
  v0[82] = v6;
  *v6 = v0;
  v6[1] = sub_1C6A682EC;
  v7 = v0[56];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 34, v5, v8, v7);
}

uint64_t sub_1C6A682EC()
{
  v1 = *v0;

  v2 = *(v1 + 584);
  v3 = *(v1 + 576);

  return MEMORY[0x1EEE6DFA0](sub_1C6A68430, v3, v2);
}

uint64_t sub_1C6A68430()
{
  v130 = v0;
  v2 = v0[34];
  if (v2 != 1)
  {
    v1 = v0[35];
    if (v1)
    {
      v9 = v0[79];
      if (v9 >> 62)
      {
        goto LABEL_88;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_8;
      }

LABEL_89:
    }

LABEL_91:
    v101 = sub_1C6A748B0();
    v0[81] = v101;
    v102 = swift_task_alloc();
    v0[82] = v102;
    *v102 = v0;
    v102[1] = sub_1C6A682EC;
    v6 = v0[56];
    v5 = MEMORY[0x1E69E85E0];
    v3 = v0 + 34;
    v4 = v101;

    return MEMORY[0x1EEE6D9C8](v3, v4, v5, v6);
  }

  (*(v0[57] + 8))(v0[58], v0[56]);
  v3 = [objc_opt_self() visualOrderComparator];
  if (!v3)
  {
    __break(1u);
    return MEMORY[0x1EEE6D9C8](v3, v4, v5, v6);
  }

  v7 = v3;
  v2 = v0[69];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  if (sub_1C6A74320())
  {
    v112 = 1;
  }

  else
  {
    v2 = v0[67];
    v112 = sub_1C6A74320();
  }

  v104 = v8;
  v18 = v0[80];
  v19 = *(v18 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (!v19)
  {
    goto LABEL_39;
  }

  v21 = 0;
  v115 = *(v18 + 16);
  v117 = v18 + 32;
  v110 = (v0[66] + 8);
  v106 = v19 - 1;
  v118 = v0[80];
  do
  {
    v108 = v20;
    v22 = v21;
    while (1)
    {
      if (v22 >= *(v18 + 16))
      {
        __break(1u);
LABEL_84:
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v10 = sub_1C6A74A20();
          if (!v10)
          {
            goto LABEL_89;
          }

LABEL_8:
          v11 = 0;
          while (1)
          {
            v12 = v0[79];
            if ((v12 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x1CCA50820](v11);
            }

            else
            {
              if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_86;
              }

              v13 = *(v12 + 8 * v11 + 32);
            }

            v14 = v13;
            v0 = (v11 + 1);
            if (__OFADD__(v11, 1))
            {
              break;
            }

            v15 = [v13 _handle];
            v16 = [v15 isEqual_];

            if (v16)
            {
              v0 = v114;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v41 = v114[80];
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v41 = sub_1C6A5C5FC(0, v41[2] + 1, 1, v114[80]);
              }

              v43 = v41[2];
              v42 = v41[3];
              if (v43 >= v42 >> 1)
              {
                v41 = sub_1C6A5C5FC((v42 > 1), v43 + 1, 1, v41);
              }

              v41[2] = v43 + 1;
              v44 = &v41[2 * v43];
              v44[4] = v14;
              v44[5] = v1;
              v114[80] = v41;
              goto LABEL_91;
            }

            ++v11;
            v17 = v0 == v10;
            v0 = v114;
            if (v17)
            {
              goto LABEL_89;
            }
          }
        }
      }

      v1 = v0[77];
      v23 = v0[75];
      v24 = v0[65];
      v2 = v0[63];
      v25 = v0[61];
      v26 = v0[59];
      v125 = *(v117 + 16 * v22);
      v27 = v125;
      v120 = *(&v125 + 1);
      v122 = v27;
      v28 = [v27 request];
      sub_1C6A742E0();

      sub_1C6A742F0();
      v23(v2, v25);
      if ((v1)(v26, 1, v24) != 1)
      {
        break;
      }

      sub_1C6A5F554(v0[59], &qword_1EC1D4860, &qword_1C6A85978);
      v18 = v118;
LABEL_23:
      ++v22;

      if (v115 == v22)
      {
        v20 = v108;
        goto LABEL_39;
      }
    }

    v29 = v0[65];
    v2 = v0[59];
    v30 = sub_1C6A74340();
    (*v110)(v2, v29);
    if ((v112 & 1) == 0 || ([v30 isFileURL] & 1) == 0)
    {
      v2 = sub_1C6A74340();
      v31 = [v30 safari:v2 hasSameOriginAsURL:1 relaxingWWW:?];

      if ((v31 & 1) == 0)
      {
        v2 = sub_1C6A74340();
        v32 = [v30 safari:v2 hasSameOriginAsURL:1 relaxingWWW:?];

        v18 = v118;
        if (v32)
        {
          goto LABEL_32;
        }

        goto LABEL_23;
      }
    }

    v18 = v118;
LABEL_32:
    v20 = v108;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v129[0] = v108;
    if ((v33 & 1) == 0)
    {
      v2 = v129;
      sub_1C6A6386C(0, v108[2] + 1, 1);
      v20 = v129[0];
    }

    v35 = v20[2];
    v34 = v20[3];
    if (v35 >= v34 >> 1)
    {
      v2 = v129;
      sub_1C6A6386C((v34 > 1), v35 + 1, 1);
      v20 = v129[0];
    }

    v21 = v22 + 1;
    v20[2] = v35 + 1;
    *&v20[2 * v35 + 4] = v125;
  }

  while (v106 != v22);
LABEL_39:
  v129[0] = v20;

  sub_1C6A67660(v129, sub_1C6A692B8, v104);
  v36 = v0[74];

  v123 = v129[0];

  v37 = [v36 _documentIdentifier];
  if (v37)
  {
    v38 = v37;
    sub_1C6A74460();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v45 = v0[51];
  v2 = v0[52];
  v46 = v0[40];
  v121 = *(v0[43] + 56);
  v121(v45, v39, 1, v0[42]);
  sub_1C6A692C0(v45, v2);
  v105 = [v46 uniqueID];
  v119 = v123[2];
  if (v119)
  {
    v47 = 0;
    v48 = v0[43];
    v116 = (v48 + 48);
    v103 = (v48 + 32);
    v111 = (v48 + 8);
    v113 = v0[45];
    v49 = (v123 + 5);
    do
    {
      if (v47 >= v123[2])
      {
        goto LABEL_87;
      }

      v52 = *v49;
      v53 = *(v49 - 1);
      v54 = v52;
      v55 = [v53 _documentIdentifier];
      v124 = v53;
      v126 = v54;
      if (v55)
      {
        v56 = v55;
        sub_1C6A74460();

        v57 = 0;
      }

      else
      {
        v57 = 1;
      }

      v58 = v0[52];
      v59 = v0[50];
      v2 = v0[46];
      v60 = v0[42];
      v121(v59, v57, 1, v60);
      v1 = *(v113 + 48);
      sub_1C6A5F5B4(v59, v2, &qword_1EC1D4848, &qword_1C6A85B68);
      sub_1C6A5F5B4(v58, v1 + v2, &qword_1EC1D4848, &qword_1C6A85B68);
      v61 = *v116;
      if ((*v116)(v2, 1, v60) == 1)
      {
        v62 = v0[42];
        sub_1C6A5F554(v0[50], &qword_1EC1D4848, &qword_1C6A85B68);
        v63 = v61(v1 + v2, 1, v62);
        v50 = v126;
        if (v63 != 1)
        {
          goto LABEL_50;
        }

        sub_1C6A5F554(v0[46], &qword_1EC1D4848, &qword_1C6A85B68);
        v51 = v124;
      }

      else
      {
        v64 = v0[42];
        sub_1C6A5F5B4(v0[46], v0[49], &qword_1EC1D4848, &qword_1C6A85B68);
        v65 = v61(v1 + v2, 1, v64);
        v67 = v0[49];
        v66 = v0[50];
        if (v65 == 1)
        {
          v2 = v0[42];
          sub_1C6A5F554(v0[50], &qword_1EC1D4848, &qword_1C6A85B68);
          (*v111)(v67, v2);
          v50 = v126;
LABEL_50:
          sub_1C6A5F554(v0[46], &qword_1EC1D4840, &qword_1C6A85B60);
          v51 = v124;
LABEL_51:

          goto LABEL_52;
        }

        v109 = v0[46];
        v68 = v0[44];
        v69 = v114[42];
        (*v103)(v68, v1 + v2, v69);
        sub_1C6A6955C(&qword_1EC1D4878, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v107 = sub_1C6A74770();
        v2 = v47;
        v1 = *v111;
        (*v111)(v68, v69);
        sub_1C6A5F554(v66, &qword_1EC1D4848, &qword_1C6A85B68);
        v0 = v114;
        (v1)(v67, v69);
        sub_1C6A5F554(v109, &qword_1EC1D4848, &qword_1C6A85B68);
        v51 = v124;
        v50 = v126;
        if ((v107 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      v2 = [v50 uniqueID];

      if (v2 == v105)
      {

        goto LABEL_65;
      }

LABEL_52:
      ++v47;
      v49 += 2;
    }

    while (v119 != v47);
  }

  v47 = sub_1C6A742D0();
LABEL_65:
  if (v47 == sub_1C6A742D0())
  {
    if (qword_1EC1D4408 != -1)
    {
      swift_once();
    }

    v70 = v0[52];
    v71 = v0[48];
    v72 = sub_1C6A744E0();
    __swift_project_value_buffer(v72, qword_1EC1D57F8);
    sub_1C6A5F5B4(v70, v71, &qword_1EC1D4848, &qword_1C6A85B68);
    v73 = sub_1C6A744C0();
    v74 = sub_1C6A74990();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v0[48];
    if (v75)
    {
      v77 = v0[47];
      v78 = v0[42];
      v79 = v0[43];
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v129[0] = v81;
      *v80 = 134218242;
      *(v80 + 4) = v105;
      *(v80 + 12) = 2080;
      sub_1C6A5F5B4(v76, v77, &qword_1EC1D4848, &qword_1C6A85B68);
      v82 = (*(v79 + 48))(v77, 1, v78);
      v83 = v0[47];
      if (v82 == 1)
      {
        sub_1C6A5F554(v0[47], &qword_1EC1D4848, &qword_1C6A85B68);
        v84 = 0xE300000000000000;
        v85 = 7104878;
      }

      else
      {
        v86 = v0[43];
        v127 = v0[42];
        v85 = sub_1C6A74450();
        v84 = v87;
        (*(v86 + 8))(v83, v127);
      }

      sub_1C6A5F554(v0[48], &qword_1EC1D4848, &qword_1C6A85B68);
      v88 = sub_1C6A63264(v85, v84, v129);

      *(v80 + 14) = v88;
      _os_log_impl(&dword_1C6968000, v73, v74, "Unable to find the originating form with ID %ld for document identifier '%s' while evaluating all forms for cross-frame filling eligibility.", v80, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x1CCA51EA0](v81, -1, -1);
      MEMORY[0x1CCA51EA0](v80, -1, -1);
    }

    else
    {

      sub_1C6A5F554(v76, &qword_1EC1D4848, &qword_1C6A85B68);
    }
  }

  v89 = v123[2];
  if (v89)
  {
    v129[0] = MEMORY[0x1E69E7CC0];
    v2 = v129;
    sub_1C6A74B40();
    v90 = 0;
    v1 = v123 + 5;
    v0 = v123;
    while (v90 < v123[2])
    {
      ++v90;
      [objc_allocWithZone(WBSAutoFillFrameAssociatedFormMetadata) initWithFrameInfo:*(v1 - 1) formMetadata:*v1];
      v2 = v129;
      sub_1C6A74B20();
      sub_1C6A74B50();
      sub_1C6A74B60();
      sub_1C6A74B30();
      v1 += 2;
      if (v89 == v90)
      {
        v0 = v114;
        v91 = v114[74];

        v92 = v129[0];
        goto LABEL_80;
      }
    }

    goto LABEL_84;
  }

  v93 = v0[74];

  v92 = MEMORY[0x1E69E7CC0];
LABEL_80:
  v128 = v92;
  v94 = v0[69];
  v95 = v0[67];
  v96 = v0[66];
  v97 = v0[65];
  sub_1C6A5F554(v0[52], &qword_1EC1D4848, &qword_1C6A85B68);
  v98 = *(v96 + 8);
  v98(v95, v97);
  v98(v94, v97);

  v99 = v0[1];

  return v99(v128, v47);
}

uint64_t sub_1C6A692C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D4848, &qword_1C6A85B68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C6A69374()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1C6A556F0;

  return sub_1C6A620F4(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C6A69490(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6A54D18;

  return sub_1C6A62C90(a1, v4, v5, v6);
}

uint64_t sub_1C6A6955C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_1C6A695A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void __saveCurrentDeviceTimeInterval_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = saveCurrentDeviceTimeInterval_saveCurrentDeviceTimeInterval;
  OUTLINED_FUNCTION_5(&dword_1C6968000, a1, a3, "Saving current extension device using a debug interval of every %f seconds", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __pruneInactiveDevicesTimeInterval_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = pruneInactiveDevicesTimeInterval_pruneInactiveDevicesTimeInterval;
  OUTLINED_FUNCTION_5(&dword_1C6968000, a1, a3, "Pruning inactive extension devices using a debug interval of every %f seconds", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __timeIntervalBeforeAssumingDeviceHasBecomeInactive_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = timeIntervalBeforeAssumingDeviceHasBecomeInactive_timeIntervalBeforeAssumingDeviceHasBecomeInactive;
  OUTLINED_FUNCTION_5(&dword_1C6968000, a1, a3, "Using debug time interval of %f seconds before assuming a cloud extension device is inactive", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __getSLHighlightCenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSLHighlightCenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSHighlightManager.m" lineNumber:21 description:{@"Unable to find class %s", "SLHighlightCenter"}];

  __break(1u);
}

void SocialLayerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SocialLayerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSHighlightManager.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getSLAttributionViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSLAttributionViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSHighlightManager.m" lineNumber:22 description:{@"Unable to find class %s", "SLAttributionView"}];

  __break(1u);
}

void getASAttributeContentVersion_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getASAttributeContentVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"WBSMobileAssetController.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getASAttributeContentVersionSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileAssetLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSMobileAssetController.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void __getVNImageRequestHandlerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVNImageRequestHandlerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSScribbleUtilities.m" lineNumber:22 description:{@"Unable to find class %s", "VNImageRequestHandler"}];

  __break(1u);
}

void VisionLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VisionLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSScribbleUtilities.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getVNRecognizeTextRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVNRecognizeTextRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSScribbleUtilities.m" lineNumber:23 description:{@"Unable to find class %s", "VNRecognizeTextRequest"}];

  __break(1u);
}

void getkSymptomAnalyticsServiceEndpoint_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomAnalyticsServiceEndpoint(void)"];
  [v0 handleFailureInFunction:v1 file:@"WBSPrivacyTransparencyController.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkSymptomAnalyticsServiceDomainTrackingClearHistoryKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const NSString *getkSymptomAnalyticsServiceDomainTrackingClearHistoryKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"WBSPrivacyTransparencyController.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkSymptomAnalyticsServiceDomainTrackingClearHistoryBundleIDs_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const NSString *getkSymptomAnalyticsServiceDomainTrackingClearHistoryBundleIDs(void)"];
  [v0 handleFailureInFunction:v1 file:@"WBSPrivacyTransparencyController.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkSymptomAnalyticsServiceDomainTrackingClearHistoryStartDate_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const NSString *getkSymptomAnalyticsServiceDomainTrackingClearHistoryStartDate(void)"];
  [v0 handleFailureInFunction:v1 file:@"WBSPrivacyTransparencyController.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkSymptomAnalyticsServiceDomainTrackingClearHistoryEndDate_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const NSString *getkSymptomAnalyticsServiceDomainTrackingClearHistoryEndDate(void)"];
  [v0 handleFailureInFunction:v1 file:@"WBSPrivacyTransparencyController.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

void logCompletionMatchToDebugChannel(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412547;
  *(buf + 4) = a1;
  *(buf + 6) = 2117;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C6968000, log, OS_LOG_TYPE_DEBUG, "%@: %{sensitive}@", buf, 0x16u);
}

{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C6968000, log, OS_LOG_TYPE_DEBUG, "%@: [%{public}@]", buf, 0x16u);
}

void __getSYLinkContextClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSYLinkContextClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSSystemNoteTakingController.m" lineNumber:20 description:{@"Unable to find class %s", "SYLinkContextClient"}];

  __break(1u);
}

void SynapseLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SynapseLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSSystemNoteTakingController.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getSYFeatureEligibilityClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSYFeatureEligibilityClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSSystemNoteTakingController.m" lineNumber:22 description:{@"Unable to find class %s", "SYFeatureEligibility"}];

  __break(1u);
}

void __getSYNotesActivationObserverClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSYNotesActivationObserverClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSSystemNoteTakingController.m" lineNumber:21 description:{@"Unable to find class %s", "SYNotesActivationObserver"}];

  __break(1u);
}

void __getLPMetadataProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPMetadataProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSSystemNoteTakingLinkMetadataFetcher.m" lineNumber:17 description:{@"Unable to find class %s", "LPMetadataProvider"}];

  __break(1u);
}

void LinkPresentationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSSystemNoteTakingLinkMetadataFetcher.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void __getLPImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSSystemNoteTakingLinkMetadataFetcher.m" lineNumber:18 description:{@"Unable to find class %s", "LPImage"}];

  __break(1u);
}

void __WBSLoadBuiltInContentBlockersWithStore_block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Failed to load content rule list from WebPrivacy with error: %{public}@", &v5, 0xCu);
}

void SafariShared::TranslatedFileURLProtocol::registerProtocol()
{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

void TranslationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TranslationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSTranslationAvailability.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void get_LTTranslationErrorDomain_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (_LTTranslationErrorDomain) (*)(void))0)()) get_LTTranslationErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"WBSTranslationAvailability.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkLTUnknownLanguageCode_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (kLTUnknownLanguageCode) (*)(void))0)()) getkLTUnknownLanguageCode(void)"];
  [v0 handleFailureInFunction:v1 file:@"WBSTranslationAvailability.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

void localizationDictionaryAtURL_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Could not parse localization dictionary: %{public}@", &v5, 0xCu);
}

CFRange CFURLGetByteRangeForComponent(CFURLRef url, CFURLComponentType component, CFRange *rangeIncludingSeparators)
{
  v3 = MEMORY[0x1EEDB7D88](url, component, rangeIncludingSeparators);
  result.length = v4;
  result.location = v3;
  return result;
}

CGSize CGContextConvertSizeToDeviceSpace(CGContextRef c, CGSize size)
{
  MEMORY[0x1EEDB9318](c, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  v1 = MEMORY[0x1EEDBF488](run);
  result.length = v2;
  result.location = v1;
  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

uint64_t vfx_script_clock_time_delayInitStub(double a1)
{
  if (!atomic_load(dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x1EEE4ECA0]();
}

uint64_t vfx_script_get_arguments_buffer_delayInitStub(double a1)
{
  if (!atomic_load(dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x1EEE4ECE0]();
}

double gotLoadHelper_x8__OBJC_CLASS___VFXSceneLoadOptions(double result)
{
  if (!atomic_load(dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

void gotLoadHelper_x22__OBJC_CLASS___VFXView(double a1)
{
  if (!atomic_load(dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS____TtC3VFX8VFXScene(double result)
{
  if (!atomic_load(dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

double dlopenHelper_VFX(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/VFX.framework/VFX", 0);
  atomic_store(1u, dlopenHelperFlag_VFX);
  return a1;
}