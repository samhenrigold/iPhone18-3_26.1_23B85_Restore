void sub_1B7C7EC9C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v47 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v14;
        if (!*(*v14 + 16))
        {
          __break(1u);
          goto LABEL_62;
        }

        v16 = *v4;

        v17 = sub_1B7C400B4(0);
        if ((v18 & 1) == 0)
        {
          goto LABEL_63;
        }

        if (!*(v16 + 16))
        {
          goto LABEL_66;
        }

        v19 = (*(v15 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];

        v22 = sub_1B7C400B4(0);
        if ((v23 & 1) == 0)
        {
          goto LABEL_68;
        }

        v24 = (*(v16 + 56) + 16 * v22);
        v25 = v20 == *v24 && v21 == v24[1];
        if (v25)
        {
          break;
        }

        v26 = sub_1B7CFF590();

        if ((v26 & 1) == 0)
        {
          goto LABEL_25;
        }

        v27 = v14;
        v25 = v6 == v14;
        v14 += 8;
        if (!v25)
        {
          goto LABEL_26;
        }

LABEL_27:
        v6 += 8;
        if (v4 >= v47 || v14 >= v5)
        {
          goto LABEL_29;
        }
      }

LABEL_25:
      v27 = v4;
      v25 = v6 == v4;
      v4 += 8;
      if (v25)
      {
        goto LABEL_27;
      }

LABEL_26:
      *v6 = *v27;
      goto LABEL_27;
    }

LABEL_29:
    v28 = v6;
    goto LABEL_57;
  }

  v28 = __src;
  if (a4 != __src || &__src[8 * v12] <= a4)
  {
    memmove(a4, __src, 8 * v12);
  }

  v47 = &v4[8 * v12];
  if (v10 < 8 || v28 <= v6)
  {
LABEL_57:
    if (v28 != v4 || v28 >= &v4[(v47 - v4 + (v47 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v28, v4, 8 * ((v47 - v4) / 8));
    }

    return;
  }

  v46 = v4;
LABEL_36:
  v45 = v28;
  v29 = v28 - 8;
  v5 -= 8;
  v30 = v47;
  while (1)
  {
    v32 = *(v30 - 1);
    v30 -= 8;
    v31 = v32;
    if (!*(v32 + 16))
    {
      break;
    }

    v33 = *v29;

    v34 = sub_1B7C400B4(0);
    if ((v35 & 1) == 0)
    {
      goto LABEL_64;
    }

    if (!*(v33 + 16))
    {
      goto LABEL_65;
    }

    v36 = (*(v31 + 56) + 16 * v34);
    v37 = *v36;
    v38 = v36[1];

    v39 = sub_1B7C400B4(0);
    if ((v40 & 1) == 0)
    {
      goto LABEL_67;
    }

    v41 = (*(v33 + 56) + 16 * v39);
    if (v37 == *v41 && v38 == v41[1])
    {
    }

    else
    {
      v43 = sub_1B7CFF590();

      if (v43)
      {
        v44 = v29;
        if (v5 + 8 != v45)
        {
          *v5 = *v29;
        }

        v4 = v46;
        if (v47 <= v46 || (v28 = v44, v44 <= v6))
        {
          v28 = v44;
          goto LABEL_57;
        }

        goto LABEL_36;
      }
    }

    if (v5 + 8 != v47)
    {
      *v5 = *v30;
    }

    v5 -= 8;
    v47 = v30;
    if (v30 <= v46)
    {
      v47 = v30;
      v28 = v45;
      v4 = v46;
      goto LABEL_57;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_1B7C7F070(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B7C7F0FC(v3);
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

char *sub_1B7C7F110(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA52F78, &qword_1B7D0FF98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1B7C7F214(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 > 4u)
  {
  }

  else
  {
    v8 = sub_1B7CFF590();

    if ((v8 & 1) == 0)
    {
      if (*(a4 + 16))
      {
        v9 = sub_1B7C400B4(a1);
        if (v10)
        {
          if (a1 <= 1u)
          {
            v14 = *(*(a4 + 56) + 8 * v9);
          }

          else if (a1 == 2)
          {
            v14 = *(*(a4 + 56) + 8 * v9);
          }

          else
          {
            if (a1 != 3)
            {

              goto LABEL_17;
            }

            v14 = *(*(a4 + 56) + 8 * v9);
          }

          v11 = sub_1B7CFF590();

          if ((v11 & 1) == 0)
          {
            if (!a1)
            {

LABEL_20:
              if (!__OFSUB__(v14, sub_1B7CFEB20()))
              {
                sub_1B7C4BFF0();
                sub_1B7CFF080();
                MEMORY[0x1B8CADCA0](a2, a3);
                return;
              }

              __break(1u);
              goto LABEL_28;
            }

            v12 = sub_1B7CFF590();

            if (v12)
            {
              goto LABEL_20;
            }

            if (a1 == 3)
            {
            }

            else
            {
              v13 = sub_1B7CFF590();

              if ((v13 & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            if (__OFADD__(v14, 9))
            {
LABEL_28:
              __break(1u);
              return;
            }

LABEL_26:
            sub_1B7C4BFF0();
            sub_1B7CFF080();
            return;
          }

LABEL_17:
        }
      }
    }
  }
}

void sub_1B7C7F6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 4u)
  {
  }

  else
  {
    v6 = sub_1B7CFF590();

    if ((v6 & 1) == 0)
    {
      if (*(a3 + 16))
      {
        v7 = sub_1B7C400B4(a1);
        if (v8)
        {
          if (*(a2 + 16))
          {
            v9 = *(*(a3 + 56) + 8 * v7);
            v10 = sub_1B7C400B4(a1);
            if (v11)
            {
              v12 = (*(a2 + 56) + 16 * v10);
              v13 = v12[1];
              v25 = *v12;
              if (a1 >= 4u)
              {

                return;
              }

              v14 = sub_1B7CFF590();

              if (v14)
              {
                return;
              }

              if (!a1)
              {

LABEL_17:
                if (!__OFSUB__(v9, sub_1B7CFEB20()))
                {
                  sub_1B7C4BFF0();
                  sub_1B7CFF080();
                  MEMORY[0x1B8CADCA0](v25, v13);
LABEL_25:

                  return;
                }

                __break(1u);
                goto LABEL_28;
              }

              v15 = sub_1B7CFF590();

              if (v15)
              {
                goto LABEL_17;
              }

              sub_1B7C4BFF0();
              sub_1B7CFF080();

              if (a1 == 3)
              {

                goto LABEL_22;
              }

              v16 = sub_1B7CFF590();

              if (v16)
              {
LABEL_22:
                if (*(a2 + 16))
                {
                  v17 = sub_1B7C400B4(5);
                  if (v18)
                  {
                    v19 = (*(a2 + 56) + 16 * v17);
                    v20 = *v19;
                    v21 = v19[1];

                    MEMORY[0x1B8CADCA0](v20, v21);

                    MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
                    v22 = sub_1B7CFF080();
                    v24 = v23;

                    MEMORY[0x1B8CADCA0](v22, v24);

                    MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
                    goto LABEL_25;
                  }

                  goto LABEL_29;
                }

LABEL_28:
                __break(1u);
LABEL_29:
                __break(1u);
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B7C7FC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = *(a3 + 16);
  if (v54)
  {
    sub_1B7C219E4(a1, a2);
    v6 = *(a4 + 24);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    else
    {
      v9 = 0;
      v10 = 0;
      *(a4 + 24) = v8;
      v55 = a3 + 32;
      while (1)
      {
        v11 = *(v55 + 16 * v9);
        v12 = *(v55 + 16 * v9 + 8);
        v61 = 0x203A4449574F52;
        v62 = 0xE700000000000000;
        v63 = v11;

        v13 = sub_1B7CFF570();
        MEMORY[0x1B8CADCA0](v13);

        if (*(a4 + 24) + 0x4000000000000000 < 0)
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v56 = v9;
        v15 = v61;
        v14 = v62;
        v61 = sub_1B7CFEC10();
        v62 = v16;
        MEMORY[0x1B8CADCA0](v15, v14);
        v17 = v61;
        v18 = v62;
        swift_beginAccess();
        v19 = *(a4 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a4 + 16) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_1B7AF182C(0, *(v19 + 2) + 1, 1, v19);
          *(a4 + 16) = v19;
        }

        v22 = *(v19 + 2);
        v21 = *(v19 + 3);
        if (v22 >= v21 >> 1)
        {
          v19 = sub_1B7AF182C((v21 > 1), v22 + 1, 1, v19);
        }

        *(v19 + 2) = v22 + 1;
        v23 = &v19[16 * v22];
        *(v23 + 4) = v17;
        *(v23 + 5) = v18;
        *(a4 + 16) = v19;
        swift_endAccess();

        v25 = *(a4 + 24);
        v7 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v7)
        {
          goto LABEL_32;
        }

        *(a4 + 24) = v26;
        v59 = *(v12 + 16);
        if (v59)
        {
          break;
        }

LABEL_23:

        v51 = *(a4 + 24);
        v7 = __OFSUB__(v51, 1);
        v42 = v51 - 1;
        if (v7)
        {
          goto LABEL_33;
        }

        v9 = v56 + 1;
        *(a4 + 24) = v42;
        if (v9 == v54)
        {
          goto LABEL_27;
        }
      }

      v27 = 0;
      v57 = v12;
      v58 = v12 + 32;
      while (1)
      {
        if (v27 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v28 = (v58 + 16 * v27);
        v30 = *v28;
        v29 = v28[1];
        v61 = 10;
        v62 = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v24);
        v53[2] = &v61;

        v32 = sub_1B7CA57D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B7C14D3C, v53, v30, v29, v31);
        v60 = v10;
        v33 = *(v32 + 16);
        if (v33)
        {
          break;
        }

LABEL_12:
        ++v27;

        v10 = v60;
        v12 = v57;
        if (v27 == v59)
        {
          goto LABEL_23;
        }
      }

      v34 = (v32 + 56);
      while (1)
      {
        v35 = *(v34 - 3);
        v36 = *(v34 - 2);
        v37 = *(v34 - 1);
        v38 = *v34;

        v39 = MEMORY[0x1B8CADC20](v35, v36, v37, v38);
        v41 = v40;

        v42 = *(a4 + 24);
        if (v42 + 0x4000000000000000 < 0)
        {
          break;
        }

        v61 = sub_1B7CFEC10();
        v62 = v43;
        MEMORY[0x1B8CADCA0](v39, v41);

        v44 = v61;
        v45 = v62;
        swift_beginAccess();
        v46 = *(a4 + 16);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *(a4 + 16) = v46;
        if ((v47 & 1) == 0)
        {
          v46 = sub_1B7AF182C(0, *(v46 + 2) + 1, 1, v46);
          *(a4 + 16) = v46;
        }

        v49 = *(v46 + 2);
        v48 = *(v46 + 3);
        if (v49 >= v48 >> 1)
        {
          v46 = sub_1B7AF182C((v48 > 1), v49 + 1, 1, v46);
        }

        *(v46 + 2) = v49 + 1;
        v50 = &v46[16 * v49];
        *(v50 + 4) = v44;
        *(v50 + 5) = v45;
        *(a4 + 16) = v46;
        swift_endAccess();
        v34 += 4;
        if (!--v33)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_27:
      v7 = __OFSUB__(v42, 1);
      v52 = v42 - 1;
      if (v7)
      {
        goto LABEL_35;
      }

      *(a4 + 24) = v52;
    }
  }
}

void sub_1B7C800A4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v125 = sub_1B7CFF120();
    if (!v125)
    {
      return;
    }

    v9 = sub_1B7CFF120();
    if (!v9)
    {
      goto LABEL_16;
    }

    v3 = v9;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v125 = v3;
    if (!v3)
    {
      return;
    }
  }

  v135 = MEMORY[0x1E69E7CC0];
  sub_1B7C31228(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
LABEL_16:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v4 = 0;
  v5 = v135;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B8CAE380](v4);
    }

    else
    {
    }

    v6 = sub_1B7C7D828();

    v135 = v5;
    v8 = *(v5 + 16);
    v7 = *(v5 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1B7C31228((v7 > 1), v8 + 1, 1);
      v5 = v135;
    }

    ++v4;
    *(v5 + 16) = v8 + 1;
    *(v5 + 8 * v8 + 32) = v6;
  }

  while (v3 != v4);
LABEL_17:
  v135 = v5;

  sub_1B7C7E220(&v135);

  v10 = v135;
  v11 = sub_1B7C238DC(MEMORY[0x1E69E7CC0]);
  v127 = *(v10 + 16);
  v128 = a2;
  v126 = v10;
  if (v127)
  {
    v12 = 0;
    v130 = v10 + 32;
    do
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_154;
      }

      v13 = *(v130 + 8 * v12);
      v131 = v12 + 1;
      v133 = v11;
      v14 = 1 << *(v13 + 32);
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v16 = v15 & *(v13 + 64);
      v17 = (v14 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v18 = 0;
      while (v16)
      {
        v19 = v16;
LABEL_31:
        v16 = (v19 - 1) & v19;
        if (*(v13 + 16))
        {
          v21 = *(*(v13 + 48) + (__clz(__rbit64(v19)) | (v18 << 6)));
          sub_1B7C400B4(v21);
          if (v22)
          {
            v23 = v133[2];

            if (!v23)
            {
              goto LABEL_39;
            }

            sub_1B7C400B4(v21);
            if ((v24 & 1) == 0)
            {
              goto LABEL_39;
            }

            if (!v133[2])
            {
              goto LABEL_150;
            }

            v25 = sub_1B7C400B4(v21);
            if ((v26 & 1) == 0)
            {
              goto LABEL_151;
            }

            v27 = *(v133[7] + 8 * v25);
            if (v27 >= sub_1B7CFEB20())
            {
            }

            else
            {
LABEL_39:
              v28 = sub_1B7CFEB20();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v135 = v133;
              v30 = sub_1B7C400B4(v21);
              v32 = v133[2];
              v33 = (v31 & 1) == 0;
              v34 = __OFADD__(v32, v33);
              v35 = v32 + v33;
              if (v34)
              {
                goto LABEL_156;
              }

              v36 = v31;
              if (v133[3] >= v35)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v41 = v30;
                  sub_1B7CE8200();
                  v30 = v41;
                }
              }

              else
              {
                sub_1B7CE3CDC(v35, isUniquelyReferenced_nonNull_native);
                v30 = sub_1B7C400B4(v21);
                if ((v36 & 1) != (v37 & 1))
                {
                  goto LABEL_163;
                }
              }

              v38 = v135;
              v133 = v135;
              if (v36)
              {
                *(v135[7] + 8 * v30) = v28;
              }

              else
              {
                v135[(v30 >> 6) + 8] |= 1 << v30;
                *(v38[6] + v30) = v21;
                *(v38[7] + 8 * v30) = v28;
                v39 = v38[2];
                v34 = __OFADD__(v39, 1);
                v40 = v39 + 1;
                if (v34)
                {
                  goto LABEL_158;
                }

                v38[2] = v40;
              }
            }
          }
        }
      }

      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        if (v20 >= v17)
        {
          break;
        }

        v19 = *(v13 + 64 + 8 * v20);
        ++v18;
        if (v19)
        {
          v18 = v20;
          goto LABEL_31;
        }
      }

      a2 = v128;
      v12 = v131;
      v11 = v133;
      v10 = v126;
    }

    while (v131 != v127);
  }

  sub_1B7C219E4(0xD000000000000019, 0x80000001B7D562F0);
  v42 = *(a2 + 24);
  v34 = __OFADD__(v42, 1);
  v43 = v42 + 1;
  if (v34)
  {
    goto LABEL_157;
  }

  *(a2 + 24) = v43;
  if (v127)
  {
    v44 = 0;
    v45 = 0;
    v124 = v10 + 32;
    do
    {
      if (v45 >= *(v10 + 16))
      {
        goto LABEL_152;
      }

      v134 = *(v124 + 8 * v45);

      if (!v44)
      {
        v123 = v45;
        v46 = 0;
        v47 = MEMORY[0x1E69E7CC0];
        v48 = MEMORY[0x1E69E7CC0];
        do
        {
          v49 = byte_1F2FA1890[v46 + 32];
          v132 = v47;
          if (byte_1F2FA1890[v46 + 32] > 2u)
          {
            if (v49 == 3)
            {
              v50 = 0x64656E616870726FLL;
              v51 = 0xEE00746E756F6320;
            }

            else
            {
              if (v49 == 4)
              {
                v50 = 0xD000000000000020;
              }

              else
              {
                v50 = 0xD000000000000013;
              }

              if (v49 == 4)
              {
                v51 = 0x80000001B7D56350;
              }

              else
              {
                v51 = 0x80000001B7D56310;
              }
            }
          }

          else if (byte_1F2FA1890[v46 + 32])
          {
            if (v49 == 1)
            {
              v50 = 0x6E756F6320776F72;
            }

            else
            {
              v50 = 0x6465746E65726170;
            }

            if (v49 == 1)
            {
              v51 = 0xE900000000000074;
            }

            else
            {
              v51 = 0xEE00746E756F6320;
            }
          }

          else
          {
            v50 = 0x616E20656C626174;
            v51 = 0xEA0000000000656DLL;
          }

          v135 = 0;
          v136 = 0xE000000000000000;
          sub_1B7CFEB20();
          sub_1B7C4BFF0();
          v52 = sub_1B7CFF080();
          v54 = v53;
          v55 = v11;
          sub_1B7C7F214(v49, v50, v51, v11);
          v57 = v56;
          v59 = v58;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1B7AF182C(0, *(v48 + 2) + 1, 1, v48);
          }

          v61 = *(v48 + 2);
          v60 = *(v48 + 3);
          if (v61 >= v60 >> 1)
          {
            v48 = sub_1B7AF182C((v60 > 1), v61 + 1, 1, v48);
          }

          *(v48 + 2) = v61 + 1;
          v62 = &v48[16 * v61];
          *(v62 + 4) = v57;
          *(v62 + 5) = v59;
          v11 = v55;
          sub_1B7C7F214(v49, v52, v54, v55);
          v64 = v63;
          v66 = v65;

          v47 = v132;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1B7AF182C(0, *(v132 + 2) + 1, 1, v132);
          }

          v68 = *(v47 + 2);
          v67 = *(v47 + 3);
          if (v68 >= v67 >> 1)
          {
            v47 = sub_1B7AF182C((v67 > 1), v68 + 1, 1, v47);
          }

          ++v46;
          *(v47 + 2) = v68 + 1;
          v69 = &v47[16 * v68];
          *(v69 + 4) = v64;
          *(v69 + 5) = v66;
        }

        while (v46 != 6);
        v135 = v48;

        sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
        sub_1B7C81070(&qword_1EDBE3020, &unk_1EBA525A0, "D\r\b", MEMORY[0x1E69E6310]);
        v70 = sub_1B7CFEA10();
        v44 = v71;

        a2 = v128;
        sub_1B7C219E4(v70, v44);

        v137 = v47;
        v135 = 0;
        v136 = 0xE000000000000000;
        sub_1B7CFEB20();
        sub_1B7CFF080();
        v72 = sub_1B7CFEA10();
        v74 = v73;

        sub_1B7C219E4(v72, v74);

        v45 = v123;
      }

      v75 = 0;
      ++v45;
      v76 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1B7C7F6C0(byte_1F2FA1890[v75 + 32], v134, v11);
        v78 = v77;
        v80 = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1B7AF182C(0, *(v76 + 2) + 1, 1, v76);
        }

        v82 = *(v76 + 2);
        v81 = *(v76 + 3);
        if (v82 >= v81 >> 1)
        {
          v76 = sub_1B7AF182C((v81 > 1), v82 + 1, 1, v76);
        }

        ++v75;
        *(v76 + 2) = v82 + 1;
        v83 = &v76[16 * v82];
        *(v83 + 4) = v78;
        *(v83 + 5) = v80;
      }

      while (v75 != 6);

      v135 = v76;
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7C81070(&qword_1EDBE3020, &unk_1EBA525A0, "D\r\b", MEMORY[0x1E69E6310]);
      v84 = sub_1B7CFEA10();
      v86 = v85;

      if (*(a2 + 24) + 0x4000000000000000 < 0)
      {
        goto LABEL_153;
      }

      v135 = sub_1B7CFEC10();
      v136 = v87;
      MEMORY[0x1B8CADCA0](v84, v86);
      v88 = v135;
      v89 = v136;
      swift_beginAccess();
      v90 = *(a2 + 16);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v90;
      if ((v91 & 1) == 0)
      {
        v90 = sub_1B7AF182C(0, *(v90 + 2) + 1, 1, v90);
        *(a2 + 16) = v90;
      }

      v93 = *(v90 + 2);
      v92 = *(v90 + 3);
      if (v93 >= v92 >> 1)
      {
        v90 = sub_1B7AF182C((v92 > 1), v93 + 1, 1, v90);
      }

      *(v90 + 2) = v93 + 1;
      v94 = &v90[16 * v93];
      *(v94 + 4) = v88;
      *(v94 + 5) = v89;
      *(a2 + 16) = v90;
      swift_endAccess();

      v10 = v126;
    }

    while (v45 != v127);
  }

  else
  {
  }

  v95 = *(a2 + 24);
  v34 = __OFSUB__(v95, 1);
  v96 = v95 - 1;
  v97 = a1;
  if (v34)
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v98 = 0;
  *(a2 + 24) = v96;
  v99 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v125 == v98)
    {
      goto LABEL_147;
    }

    if (!v99)
    {
      break;
    }

    v100 = MEMORY[0x1B8CAE380](v98, v97);
    if (__OFADD__(v98, 1))
    {
      goto LABEL_106;
    }

LABEL_102:
    swift_beginAccess();
    v101 = *(v100 + 48);

    v102 = *(v101 + 16);

    ++v98;
    v97 = a1;
    if (v102)
    {
      goto LABEL_107;
    }
  }

  if (v98 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_155;
  }

  v100 = *(v97 + 8 * v98 + 32);

  if (!__OFADD__(v98, 1))
  {
    goto LABEL_102;
  }

LABEL_106:
  __break(1u);
LABEL_107:
  sub_1B7C219E4(0, 0xE000000000000000);
  sub_1B7C219E4(0xD00000000000001ALL, 0x80000001B7D56330);
  v103 = *(a2 + 24);
  v34 = __OFADD__(v103, 1);
  v104 = v103 + 1;
  if (v34)
  {
    goto LABEL_160;
  }

  *(a2 + 24) = v104;
  if (v125 < 1)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v105 = 0;
  do
  {
    if (v99)
    {
      v106 = MEMORY[0x1B8CAE380](v105, a1);
    }

    else
    {
      v106 = *(a1 + 8 * v105 + 32);
    }

    ++v105;
    v107 = *(v106 + 16);
    v108 = 0xD000000000000017;
    v109 = 0xD00000000000001DLL;
    if (v107 == 8)
    {
      v109 = 0xD000000000000010;
    }

    v110 = 0x80000001B7D4E2C0;
    if (v107 == 8)
    {
      v110 = 0x80000001B7D4E2A0;
    }

    if (v107 == 7)
    {
      v111 = 0x80000001B7D4E280;
    }

    else
    {
      v108 = v109;
      v111 = v110;
    }

    if (v107 == 5)
    {
      v112 = 0xD000000000000011;
    }

    else
    {
      v112 = 0xD000000000000010;
    }

    if (v107 == 5)
    {
      v113 = 0x80000001B7D4E240;
    }

    else
    {
      v113 = 0x80000001B7D4E260;
    }

    if (*(v106 + 16) <= 6u)
    {
      v108 = v112;
      v111 = v113;
    }

    v114 = 0xEA0000000000746ELL;
    v115 = 0x656D686361747461;
    if (v107 != 3)
    {
      v115 = 0x656C646E6168;
      v114 = 0xE600000000000000;
    }

    if (v107 == 2)
    {
      v115 = 0x6567617373656DLL;
      v114 = 0xE700000000000000;
    }

    v116 = 0x6E776F6E6B6E75;
    if (*(v106 + 16))
    {
      v116 = 1952540771;
    }

    v117 = 0xE400000000000000;
    if (!*(v106 + 16))
    {
      v117 = 0xE700000000000000;
    }

    if (*(v106 + 16) <= 1u)
    {
      v115 = v116;
      v114 = v117;
    }

    if (*(v106 + 16) <= 4u)
    {
      v118 = v115;
    }

    else
    {
      v118 = v108;
    }

    if (*(v106 + 16) <= 4u)
    {
      v119 = v114;
    }

    else
    {
      v119 = v111;
    }

    swift_beginAccess();
    v120 = *(v106 + 48);

    sub_1B7C7FC94(v118, v119, v120, v128);
  }

  while (v125 != v105);
  v121 = *(v128 + 24);
  v34 = __OFSUB__(v121, 1);
  v122 = v121 - 1;
  if (!v34)
  {
    *(v128 + 24) = v122;
LABEL_147:

    return;
  }

LABEL_162:
  __break(1u);
LABEL_163:
  sub_1B7CFF740();
  __break(1u);

  __break(1u);
}

uint64_t sub_1B7C80E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B656C626174 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F43776F72 && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656E616870726FLL && a2 == 0xED0000746E756F43 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B7D4E310 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7D562D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1B7C8101C()
{
  result = qword_1EBA52F70;
  if (!qword_1EBA52F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F70);
  }

  return result;
}

uint64_t sub_1B7C81070(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C810B8()
{
  result = qword_1EBA52F90;
  if (!qword_1EBA52F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseTableInspectionReport.ReportColumnKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseTableInspectionReport.ReportColumnKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C81260()
{
  result = qword_1EBA52FA8;
  if (!qword_1EBA52FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52FA8);
  }

  return result;
}

unint64_t sub_1B7C812B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7CFF3B0();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7C81348(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 40;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v5 + 24 * v3);
  v8 = v3;
  while (1)
  {
    if (v4 == v8)
    {
      sub_1B7CB5C48(v6);
      v20 = v19;

      return v20;
    }

    if (v8 >= v4)
    {
      break;
    }

    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_19;
    }

    v9 = *(v7 - 1);
    v10 = *v7;
    v11 = HIBYTE(*v7) & 0xF;
    if ((*v7 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    ++v8;
    v7 += 3;
    if (v11)
    {
      v12 = *(v7 - 2);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B7CA23F8(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        result = sub_1B7CA23F8((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v15;
      v16 = (v6 + 24 * v14);
      v16[4] = v9;
      v16[5] = v10;
      v16[6] = v12;
      if (v4 != v8)
      {
        v17 = *(v6 + 24);
        if ((v14 + 2) > (v17 >> 1))
        {
          result = sub_1B7CA23F8((v17 > 1), v14 + 2, 1, v6);
          v6 = result;
        }

        *(v6 + 16) = v14 + 2;
        v18 = (v6 + 24 * v15);
        v18[4] = a2;
        v18[5] = a3;
        v18[6] = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t IMDNotificationsController.shouldDisplayGroupNameAndPhoto(with:participants:)(uint64_t a1, uint64_t a2)
{
  sub_1B7CFE300();
  sub_1B7C81604();
  return sub_1B7CFE2F0() & 1;
}

id sub_1B7C81598(void **a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v1 contact];
  v4 = [v2 isCNContactAKnownContact_];

  return v4;
}

unint64_t sub_1B7C81604()
{
  result = qword_1EBA52FB0;
  if (!qword_1EBA52FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA52FB0);
  }

  return result;
}

double sub_1B7C816E0()
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B7CFE420();
  sub_1B7AD9040(v1, qword_1EBA5DA20);
  v2 = sub_1B7CFE400();
  v3 = sub_1B7CFEF00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, v3, "Attempting group participant recovery migration...", v4, 2u);
    MEMORY[0x1B8CB0E70](v4, -1, -1);
  }

  v5 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1B7AE3A9C((v6 > 1), v7 + 1, 1, v5);
  }

  v9 = MEMORY[0x1E69E7508];
  v14 = MEMORY[0x1E69E7508];
  v15 = &off_1F2FA8AB8;
  LOBYTE(v13) = 43;
  v5[2] = v8;
  sub_1B7AE910C(&v13, &v5[5 * v7 + 4]);
  v10 = v5[3];
  v11 = v7 + 2;
  if (v11 > (v10 >> 1))
  {
    v5 = sub_1B7AE3A9C((v10 > 1), v11, 1, v5);
  }

  v14 = v9;
  v15 = &off_1F2FA8AB8;
  LOBYTE(v13) = 43;
  v5[2] = v11;
  sub_1B7AE910C(&v13, &v5[5 * v8 + 4]);
  sub_1B7AE3B2C(0xD0000000000003C2, 0x80000001B7D563C0, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(v5);
  }

  return result;
}

uint64_t sub_1B7C81984@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord, &unk_1B7D10134);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  sub_1B7CFE770();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B7C81A90()
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord, &unk_1B7D10134);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C81B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  sub_1B7CFE790();
}

double sub_1B7C81C48@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord, &unk_1B7D10134);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  sub_1B7AF6C94(&qword_1EBA523E0, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
  sub_1B7CFE770();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B7C81D7C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord, &unk_1B7D10134);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C81E44()
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord, &unk_1B7D10134);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  sub_1B7AF6C94(&qword_1EBA523E0, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C81F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  sub_1B7AF6C94(&qword_1EBA523D8, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
  sub_1B7CFE790();
}

uint64_t sub_1B7C8204C@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord, &unk_1B7D10134);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  sub_1B7C8336C(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  v3 = sub_1B7CFE760();

  *a2 = v3;
  return result;
}

uint64_t sub_1B7C82188(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord, &unk_1B7D10134);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C82254()
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord, &unk_1B7D10134);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  sub_1B7C8336C(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  v0 = sub_1B7CFE760();

  return v0;
}

uint64_t sub_1B7C8238C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  sub_1B7C8336C(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE780();
}

uint64_t sub_1B7C82464(__int128 *a1)
{
  type metadata accessor for SyncChatSliceRecord(0);
  *(v1 + 48) = sub_1B7C107FC(&unk_1EBA52FD8, &qword_1B7D10350);
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1B7C1A14C((v1 + 24));
  sub_1B7CFE720();
  *(v1 + 16) = 1;
  sub_1B7CFE1F0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_1B7AE9168((v1 + 24));
  sub_1B7AE910C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B7C82598()
{
  sub_1B7AE9168((v0 + 24));
  v1 = OBJC_IVAR____TtC14IMDPersistence19SyncChatSliceRecord___observationRegistrar;
  v2 = sub_1B7CFE200();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SyncChatSliceRecord(uint64_t a1)
{
  result = qword_1EDBE3C90;
  if (!qword_1EDBE3C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C82690(uint64_t a1)
{
  result = sub_1B7CFE200();
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

uint64_t sub_1B7C82758()
{
  v0 = qword_1EBA52FB8;

  return v0;
}

uint64_t sub_1B7C82790(__int128 *a1)
{
  type metadata accessor for SyncChatSliceRecord(0);
  v2 = swift_allocObject();
  sub_1B7C82464(a1);
  return v2;
}

uint64_t sub_1B7C8281C(__int128 *a1)
{
  swift_beginAccess();
  sub_1B7AE9168((v1 + 24));
  sub_1B7AE910C(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_1B7C82874(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1B7AE90A8(v1 + 24, v4);
  return sub_1B7C82904;
}

void sub_1B7C82904(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1B7AE90A8(*a1, v2 + 40);
    swift_beginAccess();
    sub_1B7AE9168((v3 + 24));
    sub_1B7AE910C((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_1B7AE9168(v2);
  }

  else
  {
    swift_beginAccess();
    sub_1B7AE9168((v3 + 24));
    sub_1B7AE910C(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1B7C829C0()
{
  sub_1B7CFF7C0();
  type metadata accessor for SyncChatSliceRecord(0);
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C82AA4(uint64_t a1, uint64_t a2)
{
  sub_1B7CFF7C0();
  swift_getWitnessTable();
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C82B0C()
{
  type metadata accessor for SyncChatSliceRecord(0);
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  return sub_1B7CFE740();
}

uint64_t sub_1B7C82B88(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7C82DA4(uint64_t a1)
{
  result = sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord, &unk_1B7D101F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7C82DFC()
{
  v25 = sub_1B7CFE850();
  v0 = *(v25 - 8);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B7CFE7D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52050, &qword_1B7D0AF40);
  v7 = *(v0 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7D0CB60;
  swift_getKeyPath();
  v29 = 0u;
  v30 = 0u;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v29 = 0u;
  v30 = 0u;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v29 = 0u;
  v30 = 0u;
  (*(v4 + 104))(v6, *MEMORY[0x1E697BCD8], v3);
  v10 = sub_1B7CFE800();
  swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1B7CFE810();
  *(&v27 + 1) = v10;
  v28 = sub_1B7C8336C(qword_1EDBE3A20, MEMORY[0x1E697BCF0], MEMORY[0x1E697BCE8]);
  *&v26 = v12;
  sub_1B7CFE840();
  swift_getKeyPath();
  v29 = 0u;
  v30 = 0u;
  sub_1B7C107FC(&qword_1EBA52FC8, &unk_1B7D10330);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7D0A6F0;
  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B7D0AD40;
  *(v14 + 32) = swift_getKeyPath();
  *(v14 + 40) = swift_getKeyPath();
  *(v13 + 32) = v14;
  v15 = v24;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7D100C0;
  *(v16 + 32) = swift_getKeyPath();
  *(v13 + 40) = v16;
  v17 = sub_1B7C107FC(&qword_1EBA52FD0, &unk_1B7D10340);
  swift_allocObject();
  v18 = sub_1B7CFE890();
  *(&v27 + 1) = v17;
  v28 = sub_1B7C832EC();
  *&v26 = v18;
  sub_1B7CFE840();
  v19 = sub_1B7CA2198(0, 1, 1, v11);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1B7CA2198((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = v19;
  (*(v1 + 32))(&v19[v8 + v21 * v7], v15, v25);
  *&v26 = v9;
  sub_1B7C50CF0(v22);
  return v26;
}

unint64_t sub_1B7C832EC()
{
  result = qword_1EDBE3A08;
  if (!qword_1EDBE3A08)
  {
    sub_1B7C1091C(&qword_1EBA52FD0, &unk_1B7D10340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBE3A08);
  }

  return result;
}

uint64_t sub_1B7C8336C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1B7C83458()
{
  sub_1B7C107FC(&qword_1EBA530B8, &qword_1B7D103E0);
  swift_allocObject();
  result = sub_1B7C856AC(sub_1B7C834C4, 0, MEMORY[0x1E69E7CC0]);
  off_1EBA50DD0 = result;
  return result;
}

uint64_t (*sub_1B7C834C4())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C8903C;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void *sub_1B7C83588()
{
  sub_1B7C107FC(&qword_1EBA530B8, &qword_1B7D103E0);
  swift_allocObject();
  result = sub_1B7C856AC(sub_1B7C835F4, 0, &unk_1F2FA22B8);
  off_1EBA52FE8 = result;
  return result;
}

uint64_t (*sub_1B7C835F4())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C89018;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void sub_1B7C83690(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B7C890F0;
  v6[3] = a4;
  v5 = _Block_copy(v6);

  [a3 ptaskQueryProviderWithBlock_];
  _Block_release(v5);
}

void *sub_1B7C83780()
{
  sub_1B7C107FC(&qword_1EBA53098, &qword_1B7D103C8);
  swift_allocObject();
  result = sub_1B7C85758(sub_1B7C837EC, 0, MEMORY[0x1E69E7CC0]);
  off_1EBA50DB0 = result;
  return result;
}

uint64_t (*sub_1B7C837EC())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88F84;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void *sub_1B7C838B0()
{
  sub_1B7C107FC(&qword_1EBA53098, &qword_1B7D103C8);
  swift_allocObject();
  result = sub_1B7C85758(sub_1B7C8391C, 0, &unk_1F2FA22E8);
  off_1EBA52FF8 = result;
  return result;
}

uint64_t (*sub_1B7C8391C())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88F38;
  *(v2 + 24) = v1;
  return sub_1B7C88F5C;
}

void sub_1B7C839B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B7C890F0;
  v6[3] = a4;
  v5 = _Block_copy(v6);

  [a3 indexingQueryProviderWithBlock_];
  _Block_release(v5);
}

void *sub_1B7C83AA8()
{
  sub_1B7C107FC(&qword_1EBA53078, &qword_1B7D103B0);
  swift_allocObject();
  result = sub_1B7C85804(sub_1B7C83B14, 0, MEMORY[0x1E69E7CC0]);
  off_1EBA53000 = result;
  return result;
}

uint64_t (*sub_1B7C83B14())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88E88;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void *sub_1B7C83BD8()
{
  sub_1B7C107FC(&qword_1EBA53078, &qword_1B7D103B0);
  swift_allocObject();
  result = sub_1B7C85804(sub_1B7C83C44, 0, &unk_1F2FA2318);
  off_1EDBE2AC8 = result;
  return result;
}

uint64_t (*sub_1B7C83C44())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88E64;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void sub_1B7C83CE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B7C890F0;
  v6[3] = a4;
  v5 = _Block_copy(v6);

  [a3 spotlightQueryProviderWithBlock_];
  _Block_release(v5);
}

void *sub_1B7C83DD0()
{
  sub_1B7C107FC(&qword_1EBA53058, &qword_1B7D10398);
  swift_allocObject();
  result = sub_1B7C858B0(sub_1B7C83E3C, 0, MEMORY[0x1E69E7CC0]);
  off_1EBA53010 = result;
  return result;
}

uint64_t (*sub_1B7C83E3C())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88DD0;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void *sub_1B7C83F00()
{
  sub_1B7C107FC(&qword_1EBA53058, &qword_1B7D10398);
  swift_allocObject();
  result = sub_1B7C858B0(sub_1B7C83F6C, 0, &unk_1F2FA2348);
  off_1EBA53018 = result;
  return result;
}

uint64_t (*sub_1B7C83F6C())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88DAC;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void sub_1B7C84008(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B7C890F0;
  v6[3] = a4;
  v5 = _Block_copy(v6);

  [a3 spotlightActivityMonitorQueryProviderWithBlock_];
  _Block_release(v5);
}

void *sub_1B7C840F8()
{
  sub_1B7C107FC(&qword_1EBA53038, &qword_1B7D10380);
  swift_allocObject();
  result = sub_1B7C8595C(sub_1B7C84164, 0, MEMORY[0x1E69E7CC0]);
  off_1EBA50DC0 = result;
  return result;
}

uint64_t (*sub_1B7C84164())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88D18;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

uint64_t sub_1B7C84200(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void *sub_1B7C84288()
{
  sub_1B7C107FC(&qword_1EBA53038, &qword_1B7D10380);
  swift_allocObject();
  result = sub_1B7C8595C(sub_1B7C842F4, 0, &unk_1F2FA2378);
  off_1EBA50D18 = result;
  return result;
}

uint64_t (*sub_1B7C842F4())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88CF4;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void sub_1B7C84390(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B7C890F0;
  v6[3] = a4;
  v5 = _Block_copy(v6);

  [a3 databaseQueryProviderWithBlock_];
  _Block_release(v5);
}

uint64_t sub_1B7C84458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = a2[1];

  v9 = a3(v6, v7, v8);

  *a4 = v9;
  return result;
}

void __swiftcall IMDPersistenceService.init()(IMDPersistenceService *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void IMDPersistenceService.ptaskQueryProvider(_:)(void (*a1)(void))
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v14, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_allocWithZone(IMDPersistentTaskQueryProvider) init];
      a1();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v9 = sub_1B7CFE420();
      sub_1B7AD9040(v9, qword_1EDBE79D0);
      v10 = v3;
      v11 = sub_1B7CFE400();
      v12 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = [v10 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v11, v12, "PTask provider request from %d denied, lacks entitlements", v13, 8u);
        MEMORY[0x1B8CB0E70](v13, -1, -1);
      }

      else
      {

        v11 = v10;
      }

      (a1)(0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EDBE79D0);
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "No current NSXPCConnection", v8, 2u);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }

    (a1)(0);
  }
}

void IMDPersistenceService.indexingQueryProvider(_:)(void (*a1)(void))
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v16, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_opt_self() sharedFeatureFlags];
      v5 = [v4 isSpotlightRefactorEnabled];

      if (v5)
      {
        v6 = [objc_opt_self() sharedController];
      }

      else
      {
        v6 = [objc_opt_self() sharedProvider];
      }

      v15 = v6;
      a1();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v11 = sub_1B7CFE420();
      sub_1B7AD9040(v11, qword_1EDBE79D0);
      v3 = v3;
      v12 = sub_1B7CFE400();
      v13 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67109120;
        *(v14 + 4) = [v3 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v12, v13, "PTask provider request from %d denied, lacks entitlements", v14, 8u);
        MEMORY[0x1B8CB0E70](v14, -1, -1);
      }

      else
      {

        v12 = v3;
      }

      (a1)(0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v7 = sub_1B7CFE420();
    sub_1B7AD9040(v7, qword_1EDBE79D0);
    v8 = sub_1B7CFE400();
    v9 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B7AD5000, v8, v9, "No current NSXPCConnection", v10, 2u);
      MEMORY[0x1B8CB0E70](v10, -1, -1);
    }

    (a1)(0);
  }
}

void sub_1B7C84B10(void *a1, int a2, void *aBlock, void (*a4)(void *))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4(v6);
  _Block_release(v6);
  _Block_release(v6);
}

void sub_1B7C84BB4(void *a1, int a2, void *aBlock, void *a4, SEL *a5)
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  sub_1B7C886E4(v8, a4, a5);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1B7C84C4C(void (*a1)(void), uint64_t a2, void *a3, SEL *a4)
{
  v6 = [objc_opt_self() currentConnection];
  if (v6)
  {
    v7 = v6;
    [v6 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v18, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = [objc_opt_self() *a4];
      a1();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v13 = sub_1B7CFE420();
      sub_1B7AD9040(v13, qword_1EDBE79D0);
      v14 = v7;
      v15 = sub_1B7CFE400();
      v16 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = [v14 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v15, v16, "PTask provider request from %d denied, lacks entitlements", v17, 8u);
        MEMORY[0x1B8CB0E70](v17, -1, -1);
      }

      else
      {

        v15 = v14;
      }

      (a1)(0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v9 = sub_1B7CFE420();
    sub_1B7AD9040(v9, qword_1EDBE79D0);
    v10 = sub_1B7CFE400();
    v11 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B7AD5000, v10, v11, "No current NSXPCConnection", v12, 2u);
      MEMORY[0x1B8CB0E70](v12, -1, -1);
    }

    (a1)(0);
  }
}

void IMDPersistenceService.databaseQueryProvider(_:)(void (*a1)(void))
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v14, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_opt_self() database];
      a1();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v9 = sub_1B7CFE420();
      sub_1B7AD9040(v9, qword_1EDBE79D0);
      v10 = v3;
      v11 = sub_1B7CFE400();
      v12 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = [v10 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v11, v12, "Database provider request from %d denied, lacks entitlements", v13, 8u);
        MEMORY[0x1B8CB0E70](v13, -1, -1);
      }

      else
      {

        v11 = v10;
      }

      (a1)(0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EDBE79D0);
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "No current NSXPCConnection", v8, 2u);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }

    (a1)(0);
  }
}

void sub_1B7C85194(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = v4;
  if (qword_1EDBE3808 != -1)
  {
    swift_once();
  }

  v10 = sub_1B7CFE420();
  sub_1B7AD9040(v10, qword_1EDBE79D0);
  v11 = sub_1B7CFE400();
  v12 = sub_1B7CFEF00();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    sub_1B7C107FC(a1, a2);
    sub_1B7C107FC(a3, a4);
    v15 = sub_1B7CFEAB0();
    v17 = sub_1B7AED1B8(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B7AD5000, v11, v12, "Clearing query provider for %{public}s", v13, 0xCu);
    sub_1B7AE9168(v14);
    MEMORY[0x1B8CB0E70](v14, -1, -1);
    MEMORY[0x1B8CB0E70](v13, -1, -1);
  }

  v18 = *(v9 + 48);
  os_unfair_lock_lock((v18 + 32));
  sub_1B7C85338((v18 + 16));
  os_unfair_lock_unlock((v18 + 32));
}

void sub_1B7C85338(void *a1)
{
  swift_unknownObjectRelease();
  *a1 = 0;
  v2 = a1[1];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease_n();
  }

  a1[1] = 0;
}

uint64_t sub_1B7C853D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1B7C85434(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!a1[1])
  {
    v10 = [objc_opt_self() defaultCenter];
    if (qword_1EDBE39F0 != -1)
    {
      swift_once();
    }

    v11 = qword_1EDBE39F8;
    aBlock[4] = a4;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7C855B8;
    aBlock[3] = a5;
    v12 = _Block_copy(aBlock);

    v13 = [v10 addObserverForName:v11 object:0 queue:0 usingBlock:v12];
    _Block_release(v12);

    a1[1] = v13;
  }
}

uint64_t sub_1B7C855B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7CFDC70();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1B7CFDC60();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void *sub_1B7C856AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&qword_1EBA530C0, &unk_1B7D103E8);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v3[6] = v7;
  v3[2] = a1;
  v3[3] = a2;
  if (*(a3 + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = sub_1B7C88FE0;
  }

  else
  {

    v9 = 0;
    v8 = 0;
  }

  v3[4] = v9;
  v3[5] = v8;
  return v3;
}

void *sub_1B7C85758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA530A0, &qword_1B7D103D0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v3[6] = v7;
  v3[2] = a1;
  v3[3] = a2;
  if (*(a3 + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = sub_1B7C88F00;
  }

  else
  {

    v9 = 0;
    v8 = 0;
  }

  v3[4] = v9;
  v3[5] = v8;
  return v3;
}

void *sub_1B7C85804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA53080, &qword_1B7D103B8);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v3[6] = v7;
  v3[2] = a1;
  v3[3] = a2;
  if (*(a3 + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = sub_1B7C88E2C;
  }

  else
  {

    v9 = 0;
    v8 = 0;
  }

  v3[4] = v9;
  v3[5] = v8;
  return v3;
}

void *sub_1B7C858B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA53060, &qword_1B7D103A0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v3[6] = v7;
  v3[2] = a1;
  v3[3] = a2;
  if (*(a3 + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = sub_1B7C88D74;
  }

  else
  {

    v9 = 0;
    v8 = 0;
  }

  v3[4] = v9;
  v3[5] = v8;
  return v3;
}

void *sub_1B7C8595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA53040, &qword_1B7D10388);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v3[6] = v7;
  v3[2] = a1;
  v3[3] = a2;
  if (*(a3 + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = sub_1B7C88C94;
  }

  else
  {

    v9 = 0;
    v8 = 0;
  }

  v3[4] = v9;
  v3[5] = v8;
  return v3;
}

uint64_t sub_1B7C85A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a4 + 16);
  if (v7)
  {
    swift_unknownObjectRetain();
    v12 = a4 + 40;
    do
    {
      v13 = *(v12 - 8);
      v18 = a1;
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      v17[0] = a6;
      v17[1] = v14;

      v13(&v16, &v18, v17);

      swift_unknownObjectRelease();
      a1 = v16;
      v12 += 16;
      --v7;
    }

    while (v7);
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return a1;
}

id sub_1B7C85AF8(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  if (IMDIsRunningInDatabaseServerProcess())
  {
    swift_unknownObjectWeakAssign();
    v3.receiver = v1;
    v3.super_class = IMDPersistenceService;
    return objc_msgSendSuper2(&v3, sel_init);
  }

  else
  {
    result = sub_1B7CFF340();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C85D58(uint64_t a1)
{
  if (qword_1EBA50DC8 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA50DD0;
  v2 = *(off_1EBA50DD0 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&unk_1EBA52710, &unk_1B7D0CEB0);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v22);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v22[0];
  if (!v22[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = (*(v1 + 2))(v7);

    v8(sub_1B7C890F4, v5);

    v9 = v5;

    v11 = *(v1 + 4);
    if (v11)
    {
      v12 = *(v1 + 5);

      sub_1B7AD8F38(v11, v12);
      v13 = swift_unknownObjectRetain();
      v14 = v11(v13, sub_1B7C890B0, v1);
      sub_1B7AE15D4(v11, v12);
      swift_unknownObjectRelease();

      *v6 = v14;
      v10 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v15 = (*(v1 + 2))(v10);

      v15(sub_1B7C890F4, v9);

      v16 = *(v1 + 4);
      if (v16)
      {
        v17 = *(v1 + 5);

        sub_1B7AD8F38(v16, v17);
        v18 = swift_unknownObjectRetain();
        v19 = v16(v18, sub_1B7C890B0, v1);
        sub_1B7AE15D4(v16, v17);
        swift_unknownObjectRelease();

        *v6 = v19;
        swift_unknownObjectRelease();
      }
    }

    v20 = *(v1 + 6);
    os_unfair_lock_lock((v20 + 32));
    sub_1B7C85434((v20 + 16), v6, v1, sub_1B7C88FA8, &unk_1F2FA5F58);
    os_unfair_lock_unlock((v20 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C860E4(uint64_t a1)
{
  if (qword_1EBA51610 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA52FE8;
  v2 = *(off_1EBA52FE8 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&unk_1EBA52710, &unk_1B7D0CEB0);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v22);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v22[0];
  if (!v22[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = (*(v1 + 2))(v7);

    v8(sub_1B7C890F4, v5);

    v9 = v5;

    v11 = *(v1 + 4);
    if (v11)
    {
      v12 = *(v1 + 5);

      sub_1B7AD8F38(v11, v12);
      v13 = swift_unknownObjectRetain();
      v14 = v11(v13, sub_1B7C88FA8, v1);
      sub_1B7AE15D4(v11, v12);
      swift_unknownObjectRelease();

      *v6 = v14;
      v10 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v15 = (*(v1 + 2))(v10);

      v15(sub_1B7C890F4, v9);

      v16 = *(v1 + 4);
      if (v16)
      {
        v17 = *(v1 + 5);

        sub_1B7AD8F38(v16, v17);
        v18 = swift_unknownObjectRetain();
        v19 = v16(v18, sub_1B7C88FA8, v1);
        sub_1B7AE15D4(v16, v17);
        swift_unknownObjectRelease();

        *v6 = v19;
        swift_unknownObjectRelease();
      }
    }

    v20 = *(v1 + 6);
    os_unfair_lock_lock((v20 + 32));
    sub_1B7C85434((v20 + 16), v6, v1, sub_1B7C88FA8, &unk_1F2FA5F58);
    os_unfair_lock_unlock((v20 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C86470(uint64_t a1)
{
  if (qword_1EBA50DA8 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA50DB0;
  v2 = *(off_1EBA50DB0 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA52708, &unk_1B7D0CEA0);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v22);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v22[0];
  if (!v22[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = (*(v1 + 2))(v7);

    v8(sub_1B7C890F4, v5);

    v9 = v5;

    v11 = *(v1 + 4);
    if (v11)
    {
      v12 = *(v1 + 5);

      sub_1B7AD8F38(v11, v12);
      v13 = swift_unknownObjectRetain();
      v14 = v11(v13, sub_1B7C890AC, v1);
      sub_1B7AE15D4(v11, v12);
      swift_unknownObjectRelease();

      *v6 = v14;
      v10 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v15 = (*(v1 + 2))(v10);

      v15(sub_1B7C890F4, v9);

      v16 = *(v1 + 4);
      if (v16)
      {
        v17 = *(v1 + 5);

        sub_1B7AD8F38(v16, v17);
        v18 = swift_unknownObjectRetain();
        v19 = v16(v18, sub_1B7C890AC, v1);
        sub_1B7AE15D4(v16, v17);
        swift_unknownObjectRelease();

        *v6 = v19;
        swift_unknownObjectRelease();
      }
    }

    v20 = *(v1 + 6);
    os_unfair_lock_lock((v20 + 32));
    sub_1B7C85434((v20 + 16), v6, v1, sub_1B7C88EC8, &unk_1F2FA5DC8);
    os_unfair_lock_unlock((v20 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C867FC(uint64_t a1)
{
  if (qword_1EBA50D00 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA52FF8;
  v2 = *(off_1EBA52FF8 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA52708, &unk_1B7D0CEA0);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE44((v2 + 16), v22);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v22[0];
  if (!v22[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = (*(v1 + 2))(v7);

    v8(sub_1B7C88EAC, v5);

    v9 = v5;

    v11 = *(v1 + 4);
    if (v11)
    {
      v12 = *(v1 + 5);

      sub_1B7AD8F38(v11, v12);
      v13 = swift_unknownObjectRetain();
      v14 = v11(v13, sub_1B7C88EC8, v1);
      sub_1B7AE15D4(v11, v12);
      swift_unknownObjectRelease();

      *v6 = v14;
      v10 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v15 = (*(v1 + 2))(v10);

      v15(sub_1B7C88EAC, v9);

      v16 = *(v1 + 4);
      if (v16)
      {
        v17 = *(v1 + 5);

        sub_1B7AD8F38(v16, v17);
        v18 = swift_unknownObjectRetain();
        v19 = v16(v18, sub_1B7C88EC8, v1);
        sub_1B7AE15D4(v16, v17);
        swift_unknownObjectRelease();

        *v6 = v19;
        swift_unknownObjectRelease();
      }
    }

    v20 = *(v1 + 6);
    os_unfair_lock_lock((v20 + 32));
    sub_1B7C85434((v20 + 16), v6, v1, sub_1B7C88EC8, &unk_1F2FA5DC8);
    os_unfair_lock_unlock((v20 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C86B88(uint64_t a1)
{
  if (qword_1EBA51618 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA53000;
  v2 = *(off_1EBA53000 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA52700, &unk_1B7D0CE90);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v22);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v22[0];
  if (!v22[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = (*(v1 + 2))(v7);

    v8(sub_1B7C890F4, v5);

    v9 = v5;

    v11 = *(v1 + 4);
    if (v11)
    {
      v12 = *(v1 + 5);

      sub_1B7AD8F38(v11, v12);
      v13 = swift_unknownObjectRetain();
      v14 = v11(v13, sub_1B7C890A8, v1);
      sub_1B7AE15D4(v11, v12);
      swift_unknownObjectRelease();

      *v6 = v14;
      v10 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v15 = (*(v1 + 2))(v10);

      v15(sub_1B7C890F4, v9);

      v16 = *(v1 + 4);
      if (v16)
      {
        v17 = *(v1 + 5);

        sub_1B7AD8F38(v16, v17);
        v18 = swift_unknownObjectRetain();
        v19 = v16(v18, sub_1B7C890A8, v1);
        sub_1B7AE15D4(v16, v17);
        swift_unknownObjectRelease();

        *v6 = v19;
        swift_unknownObjectRelease();
      }
    }

    v20 = *(v1 + 6);
    os_unfair_lock_lock((v20 + 32));
    sub_1B7C85434((v20 + 16), v6, v1, sub_1B7C88DF4, &unk_1F2FA5C38);
    os_unfair_lock_unlock((v20 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C86F14(uint64_t a1)
{
  if (qword_1EDBE2AC0 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EDBE2AC8;
  v2 = *(off_1EDBE2AC8 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA52700, &unk_1B7D0CE90);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v22);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v22[0];
  if (!v22[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = (*(v1 + 2))(v7);

    v8(sub_1B7C890F4, v5);

    v9 = v5;

    v11 = *(v1 + 4);
    if (v11)
    {
      v12 = *(v1 + 5);

      sub_1B7AD8F38(v11, v12);
      v13 = swift_unknownObjectRetain();
      v14 = v11(v13, sub_1B7C88DF4, v1);
      sub_1B7AE15D4(v11, v12);
      swift_unknownObjectRelease();

      *v6 = v14;
      v10 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v15 = (*(v1 + 2))(v10);

      v15(sub_1B7C890F4, v9);

      v16 = *(v1 + 4);
      if (v16)
      {
        v17 = *(v1 + 5);

        sub_1B7AD8F38(v16, v17);
        v18 = swift_unknownObjectRetain();
        v19 = v16(v18, sub_1B7C88DF4, v1);
        sub_1B7AE15D4(v16, v17);
        swift_unknownObjectRelease();

        *v6 = v19;
        swift_unknownObjectRelease();
      }
    }

    v20 = *(v1 + 6);
    os_unfair_lock_lock((v20 + 32));
    sub_1B7C85434((v20 + 16), v6, v1, sub_1B7C88DF4, &unk_1F2FA5C38);
    os_unfair_lock_unlock((v20 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C872A0(uint64_t a1)
{
  if (qword_1EBA51628 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA53010;
  v2 = *(off_1EBA53010 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA526F8, &unk_1B7D0CE80);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v22);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v22[0];
  if (!v22[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = (*(v1 + 2))(v7);

    v8(sub_1B7C890F4, v5);

    v9 = v5;

    v11 = *(v1 + 4);
    if (v11)
    {
      v12 = *(v1 + 5);

      sub_1B7AD8F38(v11, v12);
      v13 = swift_unknownObjectRetain();
      v14 = v11(v13, sub_1B7C890A4, v1);
      sub_1B7AE15D4(v11, v12);
      swift_unknownObjectRelease();

      *v6 = v14;
      v10 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v15 = (*(v1 + 2))(v10);

      v15(sub_1B7C890F4, v9);

      v16 = *(v1 + 4);
      if (v16)
      {
        v17 = *(v1 + 5);

        sub_1B7AD8F38(v16, v17);
        v18 = swift_unknownObjectRetain();
        v19 = v16(v18, sub_1B7C890A4, v1);
        sub_1B7AE15D4(v16, v17);
        swift_unknownObjectRelease();

        *v6 = v19;
        swift_unknownObjectRelease();
      }
    }

    v20 = *(v1 + 6);
    os_unfair_lock_lock((v20 + 32));
    sub_1B7C85434((v20 + 16), v6, v1, sub_1B7C88D3C, &unk_1F2FA5AA8);
    os_unfair_lock_unlock((v20 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C8762C(uint64_t a1)
{
  if (qword_1EBA51630 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA53018;
  v2 = *(off_1EBA53018 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA526F8, &unk_1B7D0CE80);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v22);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v22[0];
  if (!v22[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = (*(v1 + 2))(v7);

    v8(sub_1B7C890F4, v5);

    v9 = v5;

    v11 = *(v1 + 4);
    if (v11)
    {
      v12 = *(v1 + 5);

      sub_1B7AD8F38(v11, v12);
      v13 = swift_unknownObjectRetain();
      v14 = v11(v13, sub_1B7C88D3C, v1);
      sub_1B7AE15D4(v11, v12);
      swift_unknownObjectRelease();

      *v6 = v14;
      v10 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v15 = (*(v1 + 2))(v10);

      v15(sub_1B7C890F4, v9);

      v16 = *(v1 + 4);
      if (v16)
      {
        v17 = *(v1 + 5);

        sub_1B7AD8F38(v16, v17);
        v18 = swift_unknownObjectRetain();
        v19 = v16(v18, sub_1B7C88D3C, v1);
        sub_1B7AE15D4(v16, v17);
        swift_unknownObjectRelease();

        *v6 = v19;
        swift_unknownObjectRelease();
      }
    }

    v20 = *(v1 + 6);
    os_unfair_lock_lock((v20 + 32));
    sub_1B7C85434((v20 + 16), v6, v1, sub_1B7C88D3C, &unk_1F2FA5AA8);
    os_unfair_lock_unlock((v20 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C879B8(uint64_t a1)
{
  if (qword_1EBA50DB8 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA50DC0;
  v2 = *(off_1EBA50DC0 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA526F0, &unk_1B7D0CE70);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v22);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v22[0];
  if (!v22[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = (*(v1 + 2))(v7);

    v8(sub_1B7C890F4, v5);

    v9 = v5;

    v11 = *(v1 + 4);
    if (v11)
    {
      v12 = *(v1 + 5);

      sub_1B7AD8F38(v11, v12);
      v13 = swift_unknownObjectRetain();
      v14 = v11(v13, sub_1B7C890A0, v1);
      sub_1B7AE15D4(v11, v12);
      swift_unknownObjectRelease();

      *v6 = v14;
      v10 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v15 = (*(v1 + 2))(v10);

      v15(sub_1B7C890F4, v9);

      v16 = *(v1 + 4);
      if (v16)
      {
        v17 = *(v1 + 5);

        sub_1B7AD8F38(v16, v17);
        v18 = swift_unknownObjectRetain();
        v19 = v16(v18, sub_1B7C890A0, v1);
        sub_1B7AE15D4(v16, v17);
        swift_unknownObjectRelease();

        *v6 = v19;
        swift_unknownObjectRelease();
      }
    }

    v20 = *(v1 + 6);
    os_unfair_lock_lock((v20 + 32));
    sub_1B7C85434((v20 + 16), v6, v1, sub_1B7C88C5C, &unk_1F2F9F938);
    os_unfair_lock_unlock((v20 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C87D44(uint64_t a1)
{
  if (qword_1EBA50D10 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA50D18;
  v2 = *(off_1EBA50D18 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA526F0, &unk_1B7D0CE70);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v22);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v22[0];
  if (!v22[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = (*(v1 + 2))(v7);

    v8(sub_1B7C890F4, v5);

    v9 = v5;

    v11 = *(v1 + 4);
    if (v11)
    {
      v12 = *(v1 + 5);

      sub_1B7AD8F38(v11, v12);
      v13 = swift_unknownObjectRetain();
      v14 = v11(v13, sub_1B7C88C5C, v1);
      sub_1B7AE15D4(v11, v12);
      swift_unknownObjectRelease();

      *v6 = v14;
      v10 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v15 = (*(v1 + 2))(v10);

      v15(sub_1B7C890F4, v9);

      v16 = *(v1 + 4);
      if (v16)
      {
        v17 = *(v1 + 5);

        sub_1B7AD8F38(v16, v17);
        v18 = swift_unknownObjectRetain();
        v19 = v16(v18, sub_1B7C88C5C, v1);
        sub_1B7AE15D4(v16, v17);
        swift_unknownObjectRelease();

        *v6 = v19;
        swift_unknownObjectRelease();
      }
    }

    v20 = *(v1 + 6);
    os_unfair_lock_lock((v20 + 32));
    sub_1B7C85434((v20 + 16), v6, v1, sub_1B7C88C5C, &unk_1F2F9F938);
    os_unfair_lock_unlock((v20 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

unint64_t type metadata accessor for IMDPersistenceService()
{
  result = qword_1EBA50CF0;
  if (!qword_1EBA50CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA50CF0);
  }

  return result;
}

void sub_1B7C8811C(uint64_t a1)
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v14, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_allocWithZone(IMDPersistentTaskQueryProvider) init];
      (*(a1 + 16))(a1, v4);
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v10 = sub_1B7CFE420();
      sub_1B7AD9040(v10, qword_1EDBE79D0);
      v4 = v3;
      v11 = sub_1B7CFE400();
      v12 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = [v4 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v11, v12, "PTask provider request from %d denied, lacks entitlements", v13, 8u);
        MEMORY[0x1B8CB0E70](v13, -1, -1);
      }

      else
      {

        v11 = v4;
      }

      (*(a1 + 16))(a1, 0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EDBE79D0);
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "No current NSXPCConnection", v8, 2u);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }

    v9 = *(a1 + 16);

    v9(a1, 0);
  }
}

void sub_1B7C883CC(uint64_t a1)
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v18, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_opt_self() sharedFeatureFlags];
      v5 = [v4 isSpotlightRefactorEnabled];

      if (v5)
      {
        v6 = [objc_opt_self() sharedController];
      }

      else
      {
        v6 = [objc_opt_self() sharedProvider];
      }

      v17 = v6;
      (*(a1 + 16))(a1, v17);
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v12 = sub_1B7CFE420();
      sub_1B7AD9040(v12, qword_1EDBE79D0);
      v13 = v3;
      v14 = sub_1B7CFE400();
      v15 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 67109120;
        *(v16 + 4) = [v13 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v14, v15, "PTask provider request from %d denied, lacks entitlements", v16, 8u);
        MEMORY[0x1B8CB0E70](v16, -1, -1);
      }

      else
      {

        v14 = v13;
      }

      (*(a1 + 16))(a1, 0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v7 = sub_1B7CFE420();
    sub_1B7AD9040(v7, qword_1EDBE79D0);
    v8 = sub_1B7CFE400();
    v9 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B7AD5000, v8, v9, "No current NSXPCConnection", v10, 2u);
      MEMORY[0x1B8CB0E70](v10, -1, -1);
    }

    v11 = *(a1 + 16);

    v11(a1, 0);
  }
}

void sub_1B7C886E4(uint64_t a1, void *a2, SEL *a3)
{
  v5 = [objc_opt_self() currentConnection];
  if (v5)
  {
    v6 = v5;
    [v5 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v17, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = [objc_opt_self() *a3];
      (*(a1 + 16))(a1, v7);
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v13 = sub_1B7CFE420();
      sub_1B7AD9040(v13, qword_1EDBE79D0);
      v7 = v6;
      v14 = sub_1B7CFE400();
      v15 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 67109120;
        *(v16 + 4) = [v7 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v14, v15, "PTask provider request from %d denied, lacks entitlements", v16, 8u);
        MEMORY[0x1B8CB0E70](v16, -1, -1);
      }

      else
      {

        v14 = v7;
      }

      (*(a1 + 16))(a1, 0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v8 = sub_1B7CFE420();
    sub_1B7AD9040(v8, qword_1EDBE79D0);
    v9 = sub_1B7CFE400();
    v10 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B7AD5000, v9, v10, "No current NSXPCConnection", v11, 2u);
      MEMORY[0x1B8CB0E70](v11, -1, -1);
    }

    v12 = *(a1 + 16);

    v12(a1, 0);
  }
}

void sub_1B7C8899C(uint64_t a1)
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v15, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_opt_self() database];
      (*(a1 + 16))(a1, v4);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v10 = sub_1B7CFE420();
      sub_1B7AD9040(v10, qword_1EDBE79D0);
      v11 = v3;
      v12 = sub_1B7CFE400();
      v13 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67109120;
        *(v14 + 4) = [v11 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v12, v13, "Database provider request from %d denied, lacks entitlements", v14, 8u);
        MEMORY[0x1B8CB0E70](v14, -1, -1);
      }

      else
      {

        v12 = v11;
      }

      (*(a1 + 16))(a1, 0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EDBE79D0);
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "No current NSXPCConnection", v8, 2u);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }

    v9 = *(a1 + 16);

    v9(a1, 0);
  }
}

uint64_t sub_1B7C890FC()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA50EE0);
  sub_1B7AD9040(v0, qword_1EBA50EE0);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

void sub_1B7C89194(uint64_t a1)
{
  v2 = 0xD000000000000017;
  v3 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v25 - v4;
  v5 = sub_1B7C107FC(&qword_1EBA52038, &qword_1B7D0AD18);
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = sub_1B7C107FC(&qword_1EBA52040, &qword_1B7D13090);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = a1;
  v13 = v42;
  v14 = sub_1B7AE3B2C(0xD000000000000035, 0x80000001B7D56CF0, 0);
  if (!v13)
  {
    v15 = v14;
    v33 = 0x80000001B7D56CF0;
    v28 = v9;
    v35 = v12;
    v26 = v5;
    v37 = v11;
    v38 = v8;
    v42 = v7;
    v16 = MEMORY[0x1E69E7CC0];
    v39[0] = MEMORY[0x1E69E7CC0];

    sub_1B7AF1A7C(v16, v15, v39, v15);

    v17 = v39[0];
    v27 = *(v39[0] + 16);
    if (v27)
    {
      v18 = 0;
      v32 = "IMDMessageQueryStrings";
      v33 = 0x80000001B7D56D30;
      v30 = (v34 + 32);
      v31 = (v34 + 48);
      ++v28;
      v29 = (v34 + 8);
      v19 = (v39[0] + 40);
      v20 = v26;
      while (v18 < *(v17 + 16))
      {
        v21 = *(v19 - 1);
        v22 = *v19;
        v40 = 0xD000000000000017;
        v41 = v33;

        sub_1B7CFE310();
        v2 = v36;
        sub_1B7CFE320();
        if ((*v31)(v2, 1, v20) == 1)
        {
          goto LABEL_19;
        }

        (*v30)(v42, v2, v20);
        swift_getKeyPath();
        sub_1B7CFE330();

        if ((v22 & 0x2000000000000000) != 0)
        {
          v23 = HIBYTE(v22) & 0xF;
        }

        else
        {
          v23 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (v39[2] == v21 && v39[3] == v22 && !(v39[0] >> 16) && v39[1] >> 16 == v23)
        {

          (*v29)(v42, v20);
        }

        else
        {
          v24 = sub_1B7CFF560();

          (*v29)(v42, v20);
          if ((v24 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        (*v28)(v37, v38);
        MEMORY[0x1B8CADCA0](v21, v22);

        sub_1B7AE3B2C(v40, v41, 0);
        sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
        ++v18;

        v19 += 2;
        v2 = 0xD000000000000017;
        if (v27 == v18)
        {
          goto LABEL_16;
        }
      }

      __break(1u);

      (*(v34 + 56))(0xD000000000000017, 1, 1, v20);
LABEL_19:
      sub_1B7AEE190(v2, &qword_1EBA52030, &unk_1B7D13080);
LABEL_20:
      sub_1B7CFF340();
      __break(1u);
    }

    else
    {
LABEL_16:
    }
  }
}

uint64_t sub_1B7C89794(uint64_t a1)
{
  v2 = sub_1B7CFDFF0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SQLConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v13 = *(v12 + 36);
  v14 = sub_1B7CFE420();
  (*(*(v14 - 8) + 56))(&v11[v13], 1, 1, v14);
  *v11 = 1;
  *(v11 + 1) = 0;
  *(v11 + 8) = 1;
  (*(v3 + 16))(v5, a1, v2);
  sub_1B7AE3EA4(v11, v8);
  v15 = v26;
  v16 = sub_1B7CA69E0(v5, v8);
  if (!v15)
  {
    v18 = v16;
    sub_1B7C89194(v16);
    v24 = v18;
    v25 = 1;

    sub_1B7CBD01C();
    v22 = v18;
    v23 = 1;
    sub_1B7CD3FA4();
    if (qword_1EBA50ED8 != -1)
    {
      swift_once();
    }

    sub_1B7AD9040(v14, qword_1EBA50EE0);
    v19 = sub_1B7CFE400();
    v20 = sub_1B7CFEF00();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B7AD5000, v19, v20, "Migration trial success", v21, 2u);
      MEMORY[0x1B8CB0E70](v21, -1, -1);
    }
  }

  return sub_1B7AE3F08(v11);
}

void sub_1B7C89A94(void *a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_1B7CFEA30();
  v4 = sub_1B7CFEA30();
  v5 = [v2 getBoolFromDomain:v3 forKey:v4];

  if ((v5 & 1) == 0)
  {
    if (qword_1EBA50ED8 != -1)
    {
      swift_once();
    }

    v6 = sub_1B7CFE420();
    sub_1B7AD9040(v6, qword_1EBA50EE0);
    v7 = sub_1B7CFE400();
    v8 = sub_1B7CFEF00();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B7AD5000, v7, v8, "Removing trial.db", v9, 2u);
      MEMORY[0x1B8CB0E70](v9, -1, -1);
    }

    v10 = sub_1B7CFDF40();
    v27[0] = 0;
    v11 = [a1 removeItemAtURL:v10 error:v27];

    if (v11)
    {
      v12 = v27[0];
    }

    else
    {
      v13 = v27[0];
      v14 = sub_1B7CFDEC0();

      swift_willThrow();
    }

    v15 = sub_1B7CFDF40();
    v27[0] = 0;
    v16 = [a1 removeItemAtURL:v15 error:v27];

    if (v16)
    {
      v17 = v27[0];
    }

    else
    {
      v18 = v27[0];
      v19 = sub_1B7CFDEC0();

      swift_willThrow();
    }

    v20 = sub_1B7CFDF40();
    v27[0] = 0;
    v21 = [a1 removeItemAtURL:v20 error:v27];

    if (v21)
    {
      v22 = v27[0];
    }

    else
    {
      v23 = v27[0];
      v24 = sub_1B7CFDEC0();

      swift_willThrow();
    }

    v25 = sub_1B7CFEA30();
    v26 = sub_1B7CFEA30();
    IMSetDomainIntForKey();
  }
}

uint64_t sub_1B7C89DD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B7CFEB40();

    return sub_1B7CFEC40();
  }

  return result;
}

void sub_1B7C89E70(void *a1)
{
  v1 = a1;
  sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
  v2 = sub_1B7CFEAB0();
  v4 = sub_1B7C89DD4(4096, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v54 = v4;
  v55 = v6;
  v56 = v8;
  v57 = v10;
  if (qword_1EBA50ED8 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v11 = sub_1B7CFE420();
    sub_1B7AD9040(v11, qword_1EBA50EE0);
    v12 = sub_1B7CFE400();
    v13 = sub_1B7CFEF00();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7AD5000, v12, v13, "Migration error:", v14, 2u);
      MEMORY[0x1B8CB0E70](v14, -1, -1);
    }

    swift_beginAccess();

    v15 = sub_1B7CFF020();

    if (v15 < 1025)
    {
      break;
    }

    while (1)
    {
      v16 = sub_1B7CFE400();
      v17 = sub_1B7CFEF00();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v53 = v19;
        *v18 = 136315138;

        v20 = sub_1B7CFF000();
        if (v21)
        {
          v22 = v6;
        }

        else
        {
          v22 = v20;
        }

        if (v22 >> 14 < v4 >> 14)
        {
          goto LABEL_21;
        }

        v51 = v17;
        v23 = sub_1B7CFF030();
        log = v16;
        v25 = v24;
        v26 = v8;
        v28 = v27;
        v30 = v29;

        v31 = v28;
        v8 = v26;
        v32 = MEMORY[0x1B8CADC20](v23, v25, v31, v30);
        v34 = v33;

        v35 = sub_1B7AED1B8(v32, v34, &v53);

        *(v18 + 4) = v35;
        v16 = log;
        _os_log_impl(&dword_1B7AD5000, log, v51, " %s", v18, 0xCu);
        sub_1B7AE9168(v19);
        MEMORY[0x1B8CB0E70](v19, -1, -1);
        MEMORY[0x1B8CB0E70](v18, -1, -1);
      }

      v36 = sub_1B7CFF000();
      if (v37)
      {
        v36 = v6;
      }

      if (v6 >> 14 < v36 >> 14)
      {
        break;
      }

      v4 = sub_1B7CFF030();
      v6 = v38;
      v8 = v39;
      v41 = v40;

      v54 = v4;
      v55 = v6;
      v56 = v8;
      v57 = v41;

      v42 = sub_1B7CFF020();

      v10 = v41;
      if (v42 <= 1024)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v41 = v10;
LABEL_17:
  v43 = sub_1B7CFE400();
  v44 = sub_1B7CFEF00();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    *v45 = 136315138;

    v47 = MEMORY[0x1B8CADC20](v4, v6, v8, v41);
    v49 = v48;

    v50 = sub_1B7AED1B8(v47, v49, &v53);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_1B7AD5000, v43, v44, " %s", v45, 0xCu);
    sub_1B7AE9168(v46);
    MEMORY[0x1B8CB0E70](v46, -1, -1);
    MEMORY[0x1B8CB0E70](v45, -1, -1);
  }
}

void _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE17runMigrationTrialyyFZ_0()
{
  v121[2] = *MEMORY[0x1E69E9840];
  v0 = sub_1B7CFDEE0();
  v116 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v109 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B7CFDFF0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v119 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v120 = (&v109 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v109 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v109 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v109 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v109 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v118 = &v109 - v23;
  v24 = [objc_opt_self() sharedInstance];
  if (!v24)
  {
    __break(1u);
  }

  v25 = v24;
  v26 = [v24 isInternalInstall];

  if (v26)
  {
    v27 = [objc_opt_self() sharedFeatureFlags];
    v28 = [v27 _isOneChatOptedOut];

    if (v28)
    {
      v115 = v10;
      v29 = sub_1B7CFEA30();
      v30 = sub_1B7CFEA30();
      v31 = IMGetDomainIntForKey();

      if (v31 > 4)
      {
        if (qword_1EBA50ED8 != -1)
        {
          swift_once();
        }

        v52 = sub_1B7CFE420();
        sub_1B7AD9040(v52, qword_1EBA50EE0);
        v120 = sub_1B7CFE400();
        v53 = sub_1B7CFEED0();
        if (os_log_type_enabled(v120, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_1B7AD5000, v120, v53, "Skipping trial, already performed latest version", v54, 2u);
          MEMORY[0x1B8CB0E70](v54, -1, -1);
        }

        v55 = v120;
      }

      else
      {
        v114 = [objc_opt_self() defaultManager];
        v32 = IMMessagesDatabaseURL();
        sub_1B7CFDFB0();

        v33 = IMMessagesDatabaseURL();
        sub_1B7CFDFB0();

        sub_1B7CFDF50();
        v34 = *(v4 + 8);
        v113 = v4 + 8;
        v34(v16, v3);
        sub_1B7CFDF70();
        v34(v19, v3);
        v35 = IMMessagesDatabaseURL();
        sub_1B7CFDFB0();

        sub_1B7CFDF50();
        v34(v16, v3);
        v110 = v13;
        sub_1B7CFDF70();
        v34(v19, v3);
        v36 = IMSMSDirectoryURL();
        sub_1B7CFDFB0();

        strcpy(v121, "trial.db");
        BYTE1(v121[1]) = 0;
        WORD1(v121[1]) = 0;
        HIDWORD(v121[1]) = -402653184;
        v37 = *MEMORY[0x1E6968F70];
        v38 = v116;
        v39 = *(v116 + 104);
        v39(v2, v37, v0);
        v111 = sub_1B7C4BFF0();
        sub_1B7CFDFE0();
        v112 = v3;
        v40 = *(v38 + 8);
        v40(v2, v0);
        v34(v19, v112);
        v41 = IMSMSDirectoryURL();
        sub_1B7CFDFB0();

        strcpy(v121, "trial.db-shm");
        BYTE5(v121[1]) = 0;
        HIWORD(v121[1]) = -5120;
        v39(v2, v37, v0);
        sub_1B7CFDFE0();
        v40(v2, v0);
        v34(v19, v112);
        v42 = IMSMSDirectoryURL();
        sub_1B7CFDFB0();

        strcpy(v121, "trial.db-wal");
        BYTE5(v121[1]) = 0;
        HIWORD(v121[1]) = -5120;
        v39(v2, v37, v0);
        sub_1B7CFDFE0();
        v40(v2, v0);
        v43 = v112;
        v34(v19, v112);
        if (qword_1EBA50ED8 != -1)
        {
          swift_once();
        }

        v44 = sub_1B7CFE420();
        sub_1B7AD9040(v44, qword_1EBA50EE0);
        v45 = sub_1B7CFE400();
        v46 = sub_1B7CFEF00();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_1B7AD5000, v45, v46, "Removing trial.db if already present", v47, 2u);
          MEMORY[0x1B8CB0E70](v47, -1, -1);
        }

        v48 = sub_1B7CFDF40();
        v121[0] = 0;
        v49 = v114;
        v50 = [v114 removeItemAtURL:v48 error:v121];

        if (v50)
        {
          v51 = v121[0];
        }

        else
        {
          v56 = v121[0];
          v57 = sub_1B7CFDEC0();

          swift_willThrow();
        }

        v58 = sub_1B7CFDF40();
        v121[0] = 0;
        v59 = [v49 removeItemAtURL:v58 error:v121];

        if (v59)
        {
          v60 = v121[0];
        }

        else
        {
          v61 = v121[0];
          v62 = sub_1B7CFDEC0();

          swift_willThrow();
        }

        v63 = sub_1B7CFDF40();
        v121[0] = 0;
        v64 = [v114 removeItemAtURL:v63 error:v121];

        if (v64)
        {
          v65 = v121[0];
        }

        else
        {
          v66 = v121[0];
          v67 = sub_1B7CFDEC0();

          swift_willThrow();
        }

        v68 = sub_1B7CFE400();
        v69 = sub_1B7CFEF00();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_1B7AD5000, v68, v69, "Copying sms.db to trial.db", v70, 2u);
          MEMORY[0x1B8CB0E70](v70, -1, -1);
        }

        v71 = sub_1B7CFDF40();
        v72 = sub_1B7CFDF40();
        v121[0] = 0;
        v73 = v114;
        v74 = [v114 copyItemAtURL:v71 toURL:v72 error:v121];

        if (v74)
        {
          v75 = v121[0];
          v76 = sub_1B7CFDF40();
          v77 = sub_1B7CFDF40();
          v121[0] = 0;
          v78 = [v73 copyItemAtURL:v76 toURL:v77 error:v121];

          if (v78)
          {
            v79 = v121[0];
          }

          else
          {
            v92 = v121[0];
            v93 = sub_1B7CFDEC0();

            swift_willThrow();
          }

          v94 = sub_1B7CFDF40();
          v95 = sub_1B7CFDF40();
          v121[0] = 0;
          v96 = [v114 copyItemAtURL:v94 toURL:v95 error:v121];

          v97 = v120;
          if (v96)
          {
            v98 = v121[0];
          }

          else
          {
            v99 = v121[0];
            v100 = sub_1B7CFDEC0();

            swift_willThrow();
          }

          v101 = sub_1B7CFE400();
          v102 = sub_1B7CFEF00();
          v103 = os_log_type_enabled(v101, v102);
          v104 = v110;
          if (v103)
          {
            v105 = swift_slowAlloc();
            *v105 = 0;
            _os_log_impl(&dword_1B7AD5000, v101, v102, "Running trial migration", v105, 2u);
            MEMORY[0x1B8CB0E70](v105, -1, -1);
          }

          v106 = v115;
          sub_1B7C89794(v115);
          v107 = v114;
          v108 = v119;
          sub_1B7C89A94(v114);

          v34(v108, v43);
          v34(v97, v43);
          v34(v106, v43);
          v91 = v104;
        }

        else
        {
          v80 = v121[0];
          v81 = sub_1B7CFDEC0();

          swift_willThrow();
          v82 = v81;
          v83 = sub_1B7CFE400();
          v84 = sub_1B7CFEEF0();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = v34;
            v87 = swift_slowAlloc();
            *v85 = 138412290;
            v88 = v81;
            v89 = _swift_stdlib_bridgeErrorToNSError();
            *(v85 + 4) = v89;
            *v87 = v89;
            _os_log_impl(&dword_1B7AD5000, v83, v84, "Could not start trial, but space may be unavailable: %@", v85, 0xCu);
            sub_1B7AEE190(v87, &qword_1EBA521E0, &unk_1B7D0CE60);
            v90 = v87;
            v34 = v86;
            MEMORY[0x1B8CB0E70](v90, -1, -1);
            MEMORY[0x1B8CB0E70](v85, -1, -1);
          }

          v34(v119, v43);
          v34(v120, v43);
          v34(v115, v43);
          v91 = v110;
        }

        v34(v91, v43);
        v34(v117, v43);
        v34(v118, v43);
      }
    }
  }
}

uint64_t sub_1B7C8B144(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 344);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_1B7CFF120();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8CAE380](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }
      }

      if (*(v6 + 16) == v2)
      {

        return v6;
      }

      ++v5;
    }

    while (v7 != v4);
  }

  return 0;
}

uint64_t sub_1B7C8B264(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 344);
  if (v5 >> 62)
  {
LABEL_54:
    v6 = sub_1B7CFF120();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B8CAE380](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_48:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_54;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_48;
        }
      }

      v10 = *(v8 + 16);
      v11 = 0xD000000000000017;
      v12 = 0xD00000000000001DLL;
      if (v10 == 8)
      {
        v12 = 0xD000000000000010;
      }

      v13 = 0x80000001B7D4E2C0;
      if (v10 == 8)
      {
        v13 = 0x80000001B7D4E2A0;
      }

      if (v10 != 7)
      {
        v11 = v12;
      }

      v15 = 0x80000001B7D4E260;
      v14 = 0x80000001B7D4E280;
      if (v10 != 7)
      {
        v14 = v13;
      }

      if (v10 == 5)
      {
        v16 = 0xD000000000000011;
      }

      else
      {
        v16 = 0xD000000000000010;
      }

      if (v10 == 5)
      {
        v15 = 0x80000001B7D4E240;
      }

      if (*(v8 + 16) <= 6u)
      {
        v11 = v16;
        v14 = v15;
      }

      v17 = 0x656D686361747461;
      if (v10 != 3)
      {
        v17 = 0x656C646E6168;
      }

      v18 = 0xEA0000000000746ELL;
      if (v10 != 3)
      {
        v18 = 0xE600000000000000;
      }

      if (v10 == 2)
      {
        v17 = 0x6567617373656DLL;
      }

      v19 = 0xE700000000000000;
      if (v10 == 2)
      {
        v18 = 0xE700000000000000;
      }

      v20 = 0x6E776F6E6B6E75;
      if (*(v8 + 16))
      {
        v20 = 1952540771;
        v19 = 0xE400000000000000;
      }

      if (*(v8 + 16) <= 1u)
      {
        v17 = v20;
        v18 = v19;
      }

      if (*(v8 + 16) <= 4u)
      {
        v21 = v17;
      }

      else
      {
        v21 = v11;
      }

      if (*(v8 + 16) <= 4u)
      {
        v22 = v18;
      }

      else
      {
        v22 = v14;
      }

      if (v21 == a1 && v22 == a2)
      {

LABEL_51:

        return v8;
      }

      v23 = sub_1B7CFF590();

      if (v23)
      {
        goto LABEL_51;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  return 0;
}

uint64_t sub_1B7C8B514(uint64_t a1)
{
  swift_beginAccess();

  MEMORY[0x1B8CADDF0](v2);
  if (*((*(v1 + 344) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 344) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  return swift_endAccess();
}

unint64_t static DatabaseInspectionReport.tableName(fromTableKey:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 > 4)
  {
    v6 = 0xD000000000000017;
    v7 = 0xD00000000000001DLL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (v1 != 5)
    {
      v8 = 0xD000000000000010;
    }

    if (*a1 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x6567617373656DLL;
    v4 = 0x656D686361747461;
    if (v1 != 3)
    {
      v4 = 0x656C646E6168;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*a1)
    {
      v2 = 1952540771;
    }

    if (*a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

char static DatabaseInspectionReport.tableKey(fromName:)@<W0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (qword_1EBA51600 != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v4 = off_1EBA52EA8;
  v5 = *(off_1EBA52EA8 + 2);
  if (v5)
  {
    a1 = sub_1B7AE11D0(a1, a2);
    if (v6)
    {
      LOBYTE(a1) = DatabaseTableInspectionReport.TableKey.init(rawValue:)(*(v4[7] + a1));
      LOBYTE(v5) = v10;
      if (v10 == 10)
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  *a3 = v5;
  return a1;
}

void sub_1B7C8B7B8(uint64_t a1)
{
  sub_1B7C219E4(0xD000000000000017, 0x80000001B7D56D50);
  v2 = *(a1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(a1 + 24) = v4;
  sub_1B7C219E4(0, 0xE000000000000000);
  swift_beginAccess();

  sub_1B7C800A4(v5, a1);

  sub_1B7C219E4(0, 0xE000000000000000);
  v6 = *(a1 + 24);
  v3 = __OFSUB__(v6, 1);
  v7 = v6 - 1;
  if (v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(a1 + 24) = v7;
  sub_1B7C219E4(0x3A73746E756F43, 0xE700000000000000);
  v8 = *(a1 + 24);
  v3 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  if (v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(a1 + 24) = v9;
  sub_1B7C6A6CC(a1);
  v10 = *(a1 + 24);
  v3 = __OFSUB__(v10, 1);
  v11 = v10 - 1;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  if (!v3)
  {
    *(a1 + 24) = v12;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t DatabaseInspectionReport.__allocating_init(from:)(void *a1)
{
  *(swift_allocObject() + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v4);
  v2 = StorageInspectionCountReport.init(from:)(v4);
  sub_1B7AE9168(a1);
  return v2;
}

uint64_t DatabaseInspectionReport.init(from:)(void *a1)
{
  *(v1 + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v5);
  v3 = StorageInspectionCountReport.init(from:)(v5);
  sub_1B7AE9168(a1);
  return v3;
}

uint64_t DatabaseInspectionReport.deinit()
{

  return v0;
}

uint64_t DatabaseInspectionReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1B7C8BB34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B7C31370(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1B7CFF0E0();
    v5 = 0;
    v6 = *(v2 + 36);
    v26 = v2 + 72;
    v27 = v1;
    v28 = v6;
    v29 = v2 + 64;
    v30 = v2;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v31 = v5;
      v9 = (*(v2 + 48) + 16 * v4);
      v10 = *v9;
      v11 = v9[1];
      v12 = (*(v2 + 56) + 16 * v4);
      v14 = *v12;
      v13 = v12[1];
      sub_1B7C107FC(&unk_1EBA52600, &qword_1B7D0AA78);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1B7D0A6F0;
      v16 = MEMORY[0x1E69E6158];
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = &off_1F2FA8B58;
      *(v15 + 72) = v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      *(v15 + 96) = v16;
      *(v15 + 104) = &off_1F2FA8B58;
      *(v15 + 80) = v13;
      v18 = *(v32 + 16);
      v17 = *(v32 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_1B7C31370((v17 > 1), v18 + 1, 1);
      }

      *(v32 + 16) = v18 + 1;
      *(v32 + 8 * v18 + 32) = v15;
      v2 = v30;
      v7 = 1 << *(v30 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v3 = v29;
      v19 = *(v29 + 8 * v8);
      if ((v19 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v28;
      if (v28 != *(v30 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v4 & 0x3F));
      if (v20)
      {
        v7 = __clz(__rbit64(v20)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v8 << 6;
        v22 = v8 + 1;
        v23 = (v26 + 8 * v8);
        while (v22 < (v7 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1B7C8CB5C(v4, v28, 0);
            v7 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1B7C8CB5C(v4, v28, 0);
      }

LABEL_4:
      v5 = v31 + 1;
      v4 = v7;
      if (v31 + 1 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1B7C8BDE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = a1 + 32;
  v20 = *(a1 + 32);

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = *(v2 + 8 * v3);
    v6 = *(v5 + 16);
    v7 = v4[2];
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= v4[3] >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_1B7AE3A9C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_14:
        if ((v4[3] >> 1) - v4[2] < v6)
        {
          goto LABEL_22;
        }

        sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = v4[2];
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_23;
          }

          v4[2] = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (v1 == ++v3)
    {
      sub_1B7AF3098(v4);
      sub_1B7AF7F10(0x3F, 0xE100000000000000, *(v20 + 16));
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v14 = sub_1B7CFEA10();
      v16 = v15;

      MEMORY[0x1B8CADCA0](v14, v16);

      MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
      sub_1B7AF7F10(0x28, 0xE100000000000000, v1);

      v17 = sub_1B7CFEA10();
      v19 = v18;

      MEMORY[0x1B8CADCA0](v17, v19);

      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

double sub_1B7C8C060(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v5 = sub_1B7AE3F68();
  v6 = sub_1B7C8C458(a2, v5);

  a3(v6, 0);

  return result;
}

void sub_1B7C8C1CC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for IMDAttachmentMetadata(0);
    v5 = sub_1B7CFE980();
  }

  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1B7C8C278(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  if (*(a1 + 16))
  {
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a1;
    v7[4] = sub_1B7C8C444;
    v7[5] = v6;
    aBlock[4] = sub_1B7C8C44C;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7AE14D0;
    aBlock[3] = &unk_1F2F9F960;
    v8 = _Block_copy(aBlock);
    _Block_copy(a3);
    v9 = a2;

    IMDPersistencePerformBlock(v8, 1, v10, v11);
    _Block_release(v8);
  }

  else
  {
    _Block_copy(a3);
    sub_1B7C247AC(MEMORY[0x1E69E7CC0]);
    type metadata accessor for IMDAttachmentMetadata(0);
    v12 = sub_1B7CFE980();
    (a3)[2](a3, v12, 0);
  }
}

void *sub_1B7C8C458(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B7C248BC(MEMORY[0x1E69E7CC0]);
  v89 = v7;
  v8 = *(a1 + 16);
  v82 = a2;
  if (!v8)
  {
LABEL_18:
    v86 = 0;
    v87 = 0xE000000000000000;
    v88 = v6;
    MEMORY[0x1B8CADCA0](0xD000000000000053, 0x80000001B7D56DD0);
    sub_1B7C8BB34(v89);
    sub_1B7C8BDE8(v40);

    MEMORY[0x1B8CADCA0](0xD0000000000000BELL, 0x80000001B7D56E30);
    v42 = v86;
    v41 = v87;
    v43 = v88;

    v44 = v82;
    v45 = sub_1B7AE3B2C(v42, v41, 0);
    if (v3)
    {
      v79 = v3;

      swift_bridgeObjectRelease_n();

      return v44;
    }

    v46 = v45;
    v86 = v6;

    sub_1B7C95110(v43, v46, &v86, v46);
    v79 = 0;

    swift_bridgeObjectRelease_n();
    v48 = v86;
    v44 = sub_1B7C247AC(MEMORY[0x1E69E7CC0]);
    v81 = *(v48 + 16);
    if (!v81)
    {
LABEL_44:

      return v44;
    }

    v49 = 0;
    v50 = (v48 + 80);
    v80 = v48;
    while (1)
    {
      if (v49 >= *(v48 + 16))
      {
        goto LABEL_47;
      }

      v53 = *(v50 - 5);
      v54 = *(v50 - 16);
      v55 = *v50;
      v83 = v49;
      v85 = v55;
      if (v54 == 1)
      {
        v82 = 0;
        v56 = 0;
      }

      else
      {
        v82 = *(v50 - 1);
        v56 = v55;
      }

      v57 = sub_1B7CFEA30();
      v58 = sub_1B7CFEA30();
      v84 = v53;
      if (v56)
      {
        v59 = sub_1B7CFEA30();
      }

      else
      {
        v59 = 0;
      }

      v60 = [objc_allocWithZone(IMDAttachmentMetadata) initWithPermanentAttachmentGUID:v57 messageGUID:v58 fromMe:v54 handleID:v59];

      v61 = [v60 permanentAttachmentGUID];
      v62 = sub_1B7CFEA60();
      v64 = v63;

      v65 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v44;
      v68 = sub_1B7AE11D0(v62, v64);
      v69 = v44[2];
      v70 = (v67 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_48;
      }

      v72 = v67;
      if (v44[3] >= v71)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v48 = v80;
          if (v67)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1B7CE94C0();
          v48 = v80;
          if (v72)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_1B7CE5EAC(v71, isUniquelyReferenced_nonNull_native);
        v73 = sub_1B7AE11D0(v62, v64);
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_50;
        }

        v68 = v73;
        v48 = v80;
        if (v72)
        {
LABEL_24:

          v44 = v86;
          v51 = *(v86 + 56);
          v52 = *(v51 + 8 * v68);
          *(v51 + 8 * v68) = v65;

          goto LABEL_25;
        }
      }

      v44 = v86;
      *(v86 + 8 * (v68 >> 6) + 64) |= 1 << v68;
      v75 = (v44[6] + 16 * v68);
      *v75 = v62;
      v75[1] = v64;
      *(v44[7] + 8 * v68) = v65;

      v76 = v44[2];
      v38 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v38)
      {
        goto LABEL_49;
      }

      v44[2] = v77;
LABEL_25:
      v49 = v83 + 1;
      v50 += 7;
      if (v81 == v83 + 1)
      {
        goto LABEL_44;
      }
    }
  }

  v9 = (a1 + 40);
  while (1)
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    v86 = 95;
    v87 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v7);
    v78[2] = &v86;
    swift_bridgeObjectRetain_n();
    v13 = sub_1B7CA57D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B7C14D3C, v78, v10, v11, v12);
    v14 = *(v13 + 16);
    if (v14)
    {
      break;
    }

LABEL_4:
    v9 += 2;
    if (!--v8)
    {
      goto LABEL_18;
    }
  }

  v83 = v8;
  v84 = v3;
  v15 = (v13 + 32 * v14);
  v16 = *v15;
  v17 = v15[1];
  v18 = v10;
  v19 = v15[2];
  v20 = v15[3];
  swift_bridgeObjectRetain_n();

  v85 = MEMORY[0x1B8CADC20](v16, v17, v19, v20);
  v22 = v21;
  swift_bridgeObjectRelease_n();
  v23 = v89;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v86 = v23;
  v25 = v18;
  v27 = sub_1B7AE11D0(v18, v11);
  v28 = *(v23 + 16);
  v29 = (v26 & 1) == 0;
  v7 = v28 + v29;
  if (!__OFADD__(v28, v29))
  {
    v30 = v26;
    if (*(v23 + 24) < v7)
    {
      sub_1B7CE5BEC(v7, v24);
      v7 = sub_1B7AE11D0(v18, v11);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_50;
      }

      v27 = v7;
      v32 = v85;
      if ((v30 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_13:

      v89 = v86;
      v33 = (*(v86 + 56) + 16 * v27);
      *v33 = v32;
      v33[1] = v22;

LABEL_17:
      v6 = MEMORY[0x1E69E7CC0];
      v8 = v83;
      v3 = v84;
      goto LABEL_4;
    }

    if (v24)
    {
      v32 = v85;
      if (v26)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1B7CE9348();
      v32 = v85;
      if (v30)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v34 = v86;
    *(v86 + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v35 = (v34[6] + 16 * v27);
    *v35 = v25;
    v35[1] = v11;
    v36 = (v34[7] + 16 * v27);
    *v36 = v32;
    v36[1] = v22;
    v37 = v34[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_46;
    }

    v89 = v34;
    v34[2] = v39;
    goto LABEL_17;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_1B7CFF740();
  __break(1u);
  return result;
}

double sub_1B7C8CB5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLColumn(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLColumn(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B7C8CBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return (*(a4 + 24))(a1);
  }

  __break(1u);
  return a1;
}

uint64_t sub_1B7C8CC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a3 <= 0x7FFFFFFF)
  {
    return (*(a5 + 24))(a2, a3, a4, a5);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7C8CCD8()
{
  result = qword_1EBA53130;
  if (!qword_1EBA53130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53130);
  }

  return result;
}

double sub_1B7C8CD2C@<D0>(void *a1@<X8>)
{
  v2 = v1;
  v3 = a1;
  v80 = MEMORY[0x1E69E7CC0];
  v4 = *(v1 + 48);
  v5 = *(v1 + 49);
  if (v5)
  {
    v7 = sub_1B7CFF570();
    v9 = v8;
    sub_1B7CFF210();

    v75 = v7;
    v76 = v9;
    MEMORY[0x1B8CADCA0](v7, v9);
    v10 = sub_1B7AF182C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1B7AF182C((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[16 * v12];
    *(v13 + 4) = 0xD000000000000012;
    *(v13 + 5) = 0x80000001B7D56F20;
    v80 = v10;
    v3 = a1;
  }

  else
  {
    v75 = IMChatStyle.description.getter(*(v1 + 48));
    v76 = v14;
    v10 = MEMORY[0x1E69E7CC0];
  }

  v77 = *(v1 + 64);
  v74 = *(v1 + 56);
  if (!v77)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
    }

    v16 = *(v10 + 2);
    v15 = *(v10 + 3);
    if (v16 >= v15 >> 1)
    {
      v10 = sub_1B7AF182C((v15 > 1), v16 + 1, 1, v10);
    }

    *(v10 + 2) = v16 + 1;
    v17 = &v10[16 * v16];
    *(v17 + 4) = 0xD000000000000013;
    *(v17 + 5) = 0x80000001B7D56F40;
    v80 = v10;
  }

  v18 = *(v1 + 136);
  v19 = v18[2];
  if (v19)
  {
    if (!v77)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
    }

    v21 = *(v10 + 2);
    v20 = *(v10 + 3);
    if (v21 >= v20 >> 1)
    {
      v10 = sub_1B7AF182C((v20 > 1), v21 + 1, 1, v10);
    }

    *(v10 + 2) = v21 + 1;
    v22 = &v10[16 * v21];
    *(v22 + 4) = 0xD000000000000030;
    *(v22 + 5) = 0x80000001B7D570C0;
    v80 = v10;
    if (!v77)
    {
      goto LABEL_21;
    }
  }

  if ((v5 & 1) == 0)
  {
    v23 = *(v1 + 128);
    v71 = v3;
    if (v23)
    {
      if ((v23 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v23) & 0xF;
      }

      else
      {
        v24 = *(v1 + 120) & 0xFFFFFFFFFFFFLL;
      }

      v25 = v24 != 0;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v1 + 24);
    v27 = *(v1 + 32);
    if (v27)
    {
      v28 = *(v1 + 24);
    }

    else
    {
      v28 = 0;
    }

    v72 = *(v1 + 24);
    v73 = v28;
    v29 = 0xE000000000000000;
    if (v27)
    {
      v29 = *(v1 + 32);
    }

    v70 = v29;
    if (v19 < 2)
    {
      if (v4 == 45)
      {
        v33 = *(v1 + 96);
        if (!v33)
        {
          goto LABEL_56;
        }

        v34 = *(v1 + 88);
        v35 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v35 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          swift_bridgeObjectRetain_n();
          sub_1B7CFF210();

          MEMORY[0x1B8CADCA0](v34, v33);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
          }

          v37 = *(v10 + 2);
          v36 = *(v10 + 3);
          v30 = v73;
          if (v37 >= v36 >> 1)
          {
            v10 = sub_1B7AF182C((v36 > 1), v37 + 1, 1, v10);
          }

          *(v10 + 2) = v37 + 1;
          v38 = &v10[16 * v37];
          *(v38 + 4) = 0xD000000000000024;
          *(v38 + 5) = 0x80000001B7D57090;
          v80 = v10;
        }

        else
        {
LABEL_56:
          swift_bridgeObjectRetain_n();
          v30 = v73;
        }

        v32 = v70;
        v26 = v72;
        if (v19 == 1)
        {

          v30 = v18[5];
          v32 = v18[6];
        }

        v31 = 45;
LABEL_60:
        if (*(v1 + 40) != v31)
        {
          sub_1B7CFF210();

          MEMORY[0x1B8CADCA0](v75, v76);
          MEMORY[0x1B8CADCA0](0x7463657078652027, 0xEC00000027206465);
          v47 = IMChatStyle.description.getter(v31);
          MEMORY[0x1B8CADCA0](v47);

          MEMORY[0x1B8CADCA0](39, 0xE100000000000000);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
          }

          v49 = *(v10 + 2);
          v48 = *(v10 + 3);
          if (v49 >= v48 >> 1)
          {
            v10 = sub_1B7AF182C((v48 > 1), v49 + 1, 1, v10);
          }

          *(v10 + 2) = v49 + 1;
          v50 = &v10[16 * v49];
          *(v50 + 4) = 0xD00000000000001ALL;
          *(v50 + 5) = 0x80000001B7D56FC0;
          v80 = v10;
          v26 = v72;
        }

        if (v27)
        {
          if (v30 == v26 && v27 == v32 || (sub_1B7CFF590() & 1) != 0)
          {

            goto LABEL_77;
          }
        }

        else
        {
          v27 = 0xE300000000000000;
          v26 = 7104878;
        }

        sub_1B7CFF210();
        MEMORY[0x1B8CADCA0](0xD000000000000019, 0x80000001B7D56FE0);
        MEMORY[0x1B8CADCA0](v26, v27);

        MEMORY[0x1B8CADCA0](0xD000000000000028, 0x80000001B7D57000);
        MEMORY[0x1B8CADCA0](v30, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
        }

        v52 = *(v10 + 2);
        v51 = *(v10 + 3);
        if (v52 >= v51 >> 1)
        {
          v10 = sub_1B7AF182C((v51 > 1), v52 + 1, 1, v10);
        }

        *(v10 + 2) = v52 + 1;
        v53 = &v10[16 * v52];
        *(v53 + 4) = 0;
        *(v53 + 5) = 0xE000000000000000;
        v80 = v10;
LABEL_77:
        v54 = sub_1B7CFEA30();
        v55 = sub_1B7CFEA30();
        v56 = IMCopyGUIDForChat();

        if (v56)
        {
          v57 = sub_1B7CFEA60();
          v59 = v58;

          v60 = HIBYTE(v59) & 0xF;
          if ((v59 & 0x2000000000000000) == 0)
          {
            v60 = v57 & 0xFFFFFFFFFFFFLL;
          }

          if (v60)
          {

            v61 = v2[1];
            v62 = v2[2];
            if (v61 == v57 && v62 == v59 || (sub_1B7CFF590() & 1) != 0)
            {

              v63 = v71;
              if (!*(v10 + 2))
              {
LABEL_85:
                v64 = 0;
                v10 = 0;
LABEL_96:
                *v63 = v64;
                v63[1] = v10;
                goto LABEL_97;
              }

LABEL_95:
              v64 = *v2;

              goto LABEL_96;
            }

            sub_1B7CFF210();

            v78 = 0x676E697473697865;
            v79 = 0xEF203A6469756720;
            MEMORY[0x1B8CADCA0](v61, v62);
            MEMORY[0x1B8CADCA0](0xD00000000000001ELL, 0x80000001B7D57070);
            v65 = v57;
LABEL_90:
            MEMORY[0x1B8CADCA0](v65, v59);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
            }

            v63 = v71;
            v67 = *(v10 + 2);
            v66 = *(v10 + 3);
            if (v67 >= v66 >> 1)
            {
              v10 = sub_1B7AF182C((v66 > 1), v67 + 1, 1, v10);
            }

            *(v10 + 2) = v67 + 1;
            v68 = &v10[16 * v67];
            *(v68 + 4) = v78;
            *(v68 + 5) = v79;
            v80 = v10;
            if (!*(v10 + 2))
            {
              goto LABEL_85;
            }

            goto LABEL_95;
          }
        }

        v78 = 0;
        v79 = 0xE000000000000000;
        sub_1B7CFF210();
        MEMORY[0x1B8CADCA0](0xD00000000000003BLL, 0x80000001B7D57030);
        MEMORY[0x1B8CADCA0](v30, v32);

        MEMORY[0x1B8CADCA0](0x636976726573202CLL, 0xEB00000000203A65);
        MEMORY[0x1B8CADCA0](v74, v77);
        MEMORY[0x1B8CADCA0](0x3A656C797473202CLL, 0xE900000000000020);
        v59 = 0xE100000000000000;
        if (v31 == 43)
        {
          v65 = 43;
        }

        else
        {
          v65 = 45;
        }

        goto LABEL_90;
      }

      swift_bridgeObjectRetain_n();
      sub_1B7CFF210();

      v39 = sub_1B7CFF570();
      MEMORY[0x1B8CADCA0](v39);

      MEMORY[0x1B8CADCA0](0xD000000000000023, 0x80000001B7D56F60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
      }

      v30 = v73;
      v41 = *(v10 + 2);
      v40 = *(v10 + 3);
      if (v41 >= v40 >> 1)
      {
        v10 = sub_1B7AF182C((v40 > 1), v41 + 1, 1, v10);
      }

      *(v10 + 2) = v41 + 1;
      v42 = &v10[16 * v41];
      *(v42 + 4) = 0x61682070756F7247;
      *(v42 + 5) = 0xEA00000000002073;
      v80 = v10;
      v26 = v72;
      if (v25)
      {
        goto LABEL_35;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v30 = v73;
      if (v25)
      {
LABEL_35:
        v31 = 43;
        v32 = v70;
        goto LABEL_60;
      }
    }

    sub_1B7CFF210();

    v43 = sub_1B7CFF570();
    MEMORY[0x1B8CADCA0](v43);

    MEMORY[0x1B8CADCA0](0xD000000000000022, 0x80000001B7D56F90);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1B7AF182C(0, *(v10 + 2) + 1, 1, v10);
    }

    v45 = *(v10 + 2);
    v44 = *(v10 + 3);
    if (v45 >= v44 >> 1)
    {
      v10 = sub_1B7AF182C((v44 > 1), v45 + 1, 1, v10);
    }

    *(v10 + 2) = v45 + 1;
    v46 = &v10[16 * v45];
    *(v46 + 4) = 0x7361682074616843;
    *(v46 + 5) = 0xE900000000000020;
    v80 = v10;
    v31 = 43;
    v32 = v70;
    v26 = v72;
    goto LABEL_60;
  }

LABEL_21:
  *v3 = *v1;
  v3[1] = v10;

LABEL_97:
  sub_1B7C8E424(&v80, v2, v75, v76);

  return result;
}

unint64_t sub_1B7C8D8D8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4449776F72;
    v7 = 0x6E65644974616863;
    if (a1 != 2)
    {
      v7 = 0x6C79745374616863;
    }

    if (a1)
    {
      v6 = 1684632935;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x444970756F7267;
    if (a1 != 9)
    {
      v2 = 0x7069636974726170;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x4E65636976726573;
    v4 = 0x656D614E6D6F6F72;
    if (a1 != 6)
    {
      v4 = 0x4E79616C70736964;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B7C8DA60(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA53168, &qword_1B7D10660);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C91618();
  sub_1B7CFF830();
  LOBYTE(v10) = 0;
  sub_1B7CFF520();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_1B7CFF4E0();
    LOBYTE(v10) = 2;
    sub_1B7CFF4A0();
    LOBYTE(v10) = 3;
    sub_1B7CFF4F0();
    LOWORD(v10) = *(v3 + 48);
    v11 = 4;
    type metadata accessor for IMChatStyle(0);
    sub_1B7C91728(&qword_1EBA53170, MEMORY[0x1E69A67B8]);
    sub_1B7CFF4C0();
    LOBYTE(v10) = 5;
    sub_1B7CFF4A0();
    LOBYTE(v10) = 6;
    sub_1B7CFF4A0();
    LOBYTE(v10) = 7;
    sub_1B7CFF4A0();
    LOBYTE(v10) = 8;
    sub_1B7CFF4A0();
    LOBYTE(v10) = 9;
    sub_1B7CFF4A0();
    v10 = *(v3 + 136);
    v11 = 10;
    sub_1B7C107FC(&qword_1EBA53150, &qword_1B7D10658);
    sub_1B7C9176C(&qword_1EBA53178, sub_1B7C917E4, MEMORY[0x1E69E6300]);
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B7C8DDB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7C90BC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7C8DDE4(uint64_t a1)
{
  v2 = sub_1B7C91618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C8DE20(uint64_t a1)
{
  v2 = sub_1B7C91618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1B7C8DE5C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B7C90F60(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1B7C8DED0()
{
  v1 = 7104878;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000024);
  v2 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v2);

  MEMORY[0x1B8CADCA0](0x203A64697567202CLL, 0xE800000000000000);
  MEMORY[0x1B8CADCA0](*(v0 + 8), *(v0 + 16));
  MEMORY[0x1B8CADCA0](0xD000000000000012, 0x80000001B7D57280);
  if (*(v0 + 32))
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v3, v4);

  MEMORY[0x1B8CADCA0](0x745374616863202CLL, 0xED0000203A656C79);
  if (*(v0 + 49))
  {
    v5 = sub_1B7CFF570();
  }

  else
  {
    v5 = IMChatStyle.description.getter(*(v0 + 48));
  }

  MEMORY[0x1B8CADCA0](v5);

  MEMORY[0x1B8CADCA0](0x636976726573202CLL, 0xEF203A656D614E65);
  if (*(v0 + 64))
  {
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v6, v7);

  MEMORY[0x1B8CADCA0](0x614E6D6F6F72202CLL, 0xEC000000203A656DLL);
  if (*(v0 + 80))
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v8, v9);

  MEMORY[0x1B8CADCA0](0x616C70736964202CLL, 0xEF203A656D614E79);
  if (*(v0 + 96))
  {
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v10, v11);

  MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D572A0);
  if (*(v0 + 112))
  {
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v12, v13);

  MEMORY[0x1B8CADCA0](0x4970756F7267202CLL, 0xEB00000000203A44);
  if (*(v0 + 128))
  {
    v1 = *(v0 + 120);
    v14 = *(v0 + 128);
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x1B8CADCA0](v1, v14);

  MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D572C0);
  v15 = *(v0 + 136);
  v16 = *(v15 + 16);
  if (v16)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v16, 0);
    v17 = (v15 + 48);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      sub_1B7CFF210();

      v20 = sub_1B7CFF570();
      MEMORY[0x1B8CADCA0](v20);

      MEMORY[0x1B8CADCA0](0x656C646E6168202CLL, 0xEA0000000000203ALL);
      MEMORY[0x1B8CADCA0](v18, v19);

      v22 = *(v28 + 16);
      v21 = *(v28 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B7AECEEC((v21 > 1), v22 + 1, 1);
      }

      *(v28 + 16) = v22 + 1;
      v23 = v28 + 16 * v22;
      *(v23 + 32) = 0xD000000000000024;
      *(v23 + 40) = 0x80000001B7D571A0;
      v17 += 3;
      --v16;
    }

    while (v16);
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v24 = sub_1B7CFEA10();
  v26 = v25;

  MEMORY[0x1B8CADCA0](v24, v26);

  return 0;
}

double sub_1B7C8E424(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(*a1 + 16))
  {
    v7 = 7104878;
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0x5F776F7220200A5BLL, 0xEC000000203A6469);
    v8 = sub_1B7CFF570();
    MEMORY[0x1B8CADCA0](v8);

    MEMORY[0x1B8CADCA0](0x6469756720200A2CLL, 0xEA0000000000203ALL);
    MEMORY[0x1B8CADCA0](a2[1], a2[2]);
    MEMORY[0x1B8CADCA0](0xD000000000000013, 0x80000001B7D57100);
    if (a2[4])
    {
      v9 = a2[3];
      v10 = a2[4];
    }

    else
    {
      v10 = 0xE300000000000000;
      v9 = 7104878;
    }

    MEMORY[0x1B8CADCA0](v9, v10);

    MEMORY[0x1B8CADCA0](0x5F7461686320200ALL, 0xEF203A656C797473);
    MEMORY[0x1B8CADCA0](a3, a4);
    MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D57120);
    if (a2[8])
    {
      v11 = a2[7];
      v12 = a2[8];
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7104878;
    }

    MEMORY[0x1B8CADCA0](v11, v12);

    MEMORY[0x1B8CADCA0](0x4E6D6F6F7220200ALL, 0xED0000203A656D61);
    if (a2[10])
    {
      v13 = a2[9];
      v14 = a2[10];
    }

    else
    {
      v14 = 0xE300000000000000;
      v13 = 7104878;
    }

    MEMORY[0x1B8CADCA0](v13, v14);

    MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D57140);
    if (a2[12])
    {
      v15 = a2[11];
      v16 = a2[12];
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 7104878;
    }

    MEMORY[0x1B8CADCA0](v15, v16);

    MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D57160);
    if (a2[14])
    {
      v17 = a2[13];
      v18 = a2[14];
    }

    else
    {
      v18 = 0xE300000000000000;
      v17 = 7104878;
    }

    MEMORY[0x1B8CADCA0](v17, v18);

    MEMORY[0x1B8CADCA0](0x70756F726720200ALL, 0xEC000000203A4449);
    if (a2[16])
    {
      v7 = a2[15];
      v19 = a2[16];
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    MEMORY[0x1B8CADCA0](v7, v19);

    MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D57180);
    v20 = a2[17];
    v21 = *(v20 + 16);
    v22 = sub_1B7CFF570();
    MEMORY[0x1B8CADCA0](v22);

    MEMORY[0x1B8CADCA0](0x202020200A3ALL, 0xE600000000000000);
    if (v21)
    {
      v34 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v21, 0);
      v23 = (v20 + 48);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;

        sub_1B7CFF210();

        v26 = sub_1B7CFF570();
        MEMORY[0x1B8CADCA0](v26);

        MEMORY[0x1B8CADCA0](0x656C646E6168202CLL, 0xEA0000000000203ALL);
        MEMORY[0x1B8CADCA0](v24, v25);

        v28 = *(v34 + 16);
        v27 = *(v34 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1B7AECEEC((v27 > 1), v28 + 1, 1);
        }

        *(v34 + 16) = v28 + 1;
        v29 = v34 + 16 * v28;
        *(v29 + 32) = 0xD000000000000024;
        *(v29 + 40) = 0x80000001B7D571A0;
        v23 += 3;
        --v21;
      }

      while (v21);
    }

    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v30 = sub_1B7CFEA10();
    v32 = v31;

    MEMORY[0x1B8CADCA0](v30, v32);

    MEMORY[0x1B8CADCA0](23818, 0xE200000000000000);
    sub_1B7C90664(0, 0, 0, 0xE000000000000000);
  }

  return result;
}

void sub_1B7C8E9E4(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), a2);
  *&v53 = 0;
  IMDSqlOperationGetError(a1 + 16, &v53);
  v8 = v53;
  swift_endAccess();
  if (v8)
  {
    swift_willThrow();
    v9 = v8;
    return;
  }

  v52 = a3;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_11:

    sub_1B7C90740(&v57);
    v17 = v64;
    a4[6] = v63;
    a4[7] = v17;
    a4[8] = v65;
    v18 = v60;
    a4[2] = v59;
    a4[3] = v18;
    v19 = v62;
    a4[4] = v61;
    a4[5] = v19;
    v20 = v58;
    *a4 = v57;
    a4[1] = v20;
    return;
  }

  type metadata accessor for SqlOperation.Row();
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = swift_allocObject();
    v14 = sub_1B7C23650(v11);
    *(v13 + 16) = a1;
    *(v13 + 24) = v14;
    SqlOperation.Row.column(forColumnName:)(0x64697567uLL, 0xE400000000000000, &v53);
    if (*(&v53 + 1))
    {
      break;
    }

    swift_setDeallocating();

    swift_deallocClassInstance();
    sub_1B7AEE190(&v53, &qword_1EBA52298, &unk_1B7D10570);
LABEL_7:
    swift_beginAccess();

    v12 = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v15 = v54;
  sub_1B7C26C78(&v57);
  v16 = SqlOperation.Row.string(forColumnIndex:)(v15);
  if (!v16.value._object)
  {
    swift_setDeallocating();

    swift_deallocClassInstance();
    goto LABEL_7;
  }

  SqlOperation.Row.column(forColumnName:)(0x656C797473uLL, 0xE500000000000000, &v53);
  if (*(&v53 + 1))
  {
    v57 = v53;
    v58 = v54;
    v59 = v55;
    v60 = v56;
    v21 = v54;
    sub_1B7C26C78(&v57);
    v67 = SqlOperation.Row.int(forColumnIndex:)(v21);
    if (v67.is_nil)
    {
      value = 0;
    }

    else
    {
      value = v67.value;
    }

    v51 = value;
  }

  else
  {
    sub_1B7AEE190(&v53, &qword_1EBA52298, &unk_1B7D10570);
    v51 = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0x6564695F74616863uLL, 0xEF7265696669746ELL, &v53);
  if (*(&v53 + 1))
  {
    v57 = v53;
    v58 = v54;
    v59 = v55;
    v60 = v56;
    v23 = v54;
    sub_1B7C26C78(&v57);
    v24 = SqlOperation.Row.string(forColumnIndex:)(v23);
    object = v24.value._object;
    countAndFlagsBits = v24.value._countAndFlagsBits;
  }

  else
  {
    sub_1B7AEE190(&v53, &qword_1EBA52298, &unk_1B7D10570);
    object = 0;
    countAndFlagsBits = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0x5F65636976726573uLL, 0xEC000000656D616ELL, &v53);
  if (*(&v53 + 1))
  {
    v57 = v53;
    v58 = v54;
    v59 = v55;
    v60 = v56;
    v25 = v54;
    sub_1B7C26C78(&v57);
    v26 = SqlOperation.Row.string(forColumnIndex:)(v25);
    v47 = v26.value._object;
    v48 = v26.value._countAndFlagsBits;
  }

  else
  {
    sub_1B7AEE190(&v53, &qword_1EBA52298, &unk_1B7D10570);
    v47 = 0;
    v48 = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0x6D616E5F6D6F6F72uLL, 0xE900000000000065, &v53);
  if (*(&v53 + 1))
  {
    v57 = v53;
    v58 = v54;
    v59 = v55;
    v60 = v56;
    v27 = v54;
    sub_1B7C26C78(&v57);
    v28 = SqlOperation.Row.string(forColumnIndex:)(v27);
    v45 = v28.value._object;
    v46 = v28.value._countAndFlagsBits;
  }

  else
  {
    sub_1B7AEE190(&v53, &qword_1EBA52298, &unk_1B7D10570);
    v45 = 0;
    v46 = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0xD000000000000015, 0x80000001B7D57260, &v53);
  if (*(&v53 + 1))
  {
    v57 = v53;
    v58 = v54;
    v59 = v55;
    v60 = v56;
    v29 = v54;
    sub_1B7C26C78(&v57);
    v30 = SqlOperation.Row.string(forColumnIndex:)(v29);
    v43 = v30.value._object;
    v44 = v30.value._countAndFlagsBits;
  }

  else
  {
    sub_1B7AEE190(&v53, &qword_1EBA52298, &unk_1B7D10570);
    v43 = 0;
    v44 = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0x64695F70756F7267uLL, 0xE800000000000000, &v53);
  if (*(&v53 + 1))
  {
    v57 = v53;
    v58 = v54;
    v59 = v55;
    v60 = v56;
    v31 = v54;
    sub_1B7C26C78(&v57);
    v32 = SqlOperation.Row.string(forColumnIndex:)(v31);
    v33 = v32.value._countAndFlagsBits;
    v34 = v32.value._object;
  }

  else
  {
    sub_1B7AEE190(&v53, &qword_1EBA52298, &unk_1B7D10570);
    v33 = 0;
    v34 = 0;
  }

  SqlOperation.Row.column(forColumnName:)(0x5F79616C70736964uLL, 0xEC000000656D616ELL, &v53);
  if (*(&v53 + 1))
  {
    v57 = v53;
    v58 = v54;
    v59 = v55;
    v60 = v56;
    v35 = v54;
    sub_1B7C26C78(&v57);
    v36 = SqlOperation.Row.string(forColumnIndex:)(v35);
    v37 = v36.value._countAndFlagsBits;
    v38 = v36.value._object;
  }

  else
  {

    sub_1B7AEE190(&v53, &qword_1EBA52298, &unk_1B7D10570);
    v37 = 0;
    v38 = 0;
  }

  if ((v51 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  if (v51 > 0xFF)
  {
    goto LABEL_41;
  }

  *&v57 = a2;
  *(&v57 + 1) = v16.value._countAndFlagsBits;
  *&v58 = v16.value._object;
  *(&v58 + 1) = countAndFlagsBits;
  *&v59 = object;
  *(&v59 + 1) = v51;
  LOWORD(v60) = v51;
  *(&v60 + 1) = v48;
  *&v61 = v47;
  *(&v61 + 1) = v46;
  *&v62 = v45;
  *(&v62 + 1) = v37;
  *&v63 = v38;
  *(&v63 + 1) = v44;
  *&v64 = v43;
  *(&v64 + 1) = v33;
  *&v65 = v34;
  *(&v65 + 1) = v52;
  nullsub_2();
  v39 = v64;
  a4[6] = v63;
  a4[7] = v39;
  a4[8] = v65;
  v40 = v60;
  a4[2] = v59;
  a4[3] = v40;
  v41 = v62;
  a4[4] = v61;
  a4[5] = v41;
  v42 = v58;
  *a4 = v57;
  a4[1] = v42;
}

id sub_1B7C8F070@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), a2);
  v21 = 0;
  IMDSqlOperationGetError(a1 + 16, &v21);
  v6 = v21;
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    return v6;
  }

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_11:

    v19 = 0;
    v20 = 1;
    goto LABEL_12;
  }

  type metadata accessor for SqlOperation.Row();
  v9 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = v9;
    swift_beginAccess();
    v12 = IMDSqlStatementColumnCount((a1 + 48));
    swift_endAccess();
    if (v12)
    {
      swift_beginAccess();
      IMDSqlStatementColumnByIndex((a1 + 48), 0, &v21);
      v13 = v21;
      v14 = v22;
      v15 = v23;
      swift_endAccess();
      v24 = v13;
      v25 = v14;
      v26 = v15;
      if (IMDSqlColumnGetType(&v24) == 1)
      {
        break;
      }
    }

    swift_beginAccess();

    v10 = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((a1 + 48), 0, &v21);
  v16 = v21;
  v17 = v22;
  v18 = v23;
  swift_endAccess();
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v19 = IMDInt64FromSqlColumn(&v24);

  if (v19 < 0)
  {
LABEL_14:
    __break(1u);
  }

  v20 = 0;
LABEL_12:
  *a3 = v19;
  *(a3 + 8) = v20;
  return result;
}

void sub_1B7C8F304(sqlite3_int64 a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v90 = a1;
  v86 = a3;
  v129 = *MEMORY[0x1E69E9840];
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v86 - v12;
  v112 = type metadata accessor for StorageInspectionAttachmentDirectory(0);
  v14 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v107 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v109 = &v86 - v17;
  v113 = type metadata accessor for StorageInspectionAttachmentRecord(0);
  v116 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = 0;
  v105 = 0;
  v124 = 0;
  v125 = 0;
  v92 = 0;
  v118 = (v14 + 48);
  v91 = ", participants: ";
  v98 = "_id ASC LIMIT ?;";
  v94 = "orphaned_attachments";
  v120 = v5 + 16;
  v96 = v5;
  v119 = (v5 + 8);
  p_cb = &OBJC_PROTOCOL___CNChangeHistoryEventVisitor.cb;
  v121 = v7;
  v122 = v4;
LABEL_2:
  v89 = objc_autoreleasePoolPush();
  if (*(p_cb + 190) != -1)
  {
    swift_once();
  }

  v21 = off_1EBA52D08;

  v22 = objc_autoreleasePoolPush();
  v23 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v21 + 2, v23);
  swift_endAccess();

  swift_beginAccess();
  v126 = 0;
  v106 = v21;
  IMDSqlOperationGetError((v21 + 2), &v126);
  v24 = v126;
  swift_endAccess();
  if (v24)
  {
LABEL_72:
    swift_willThrow();
    v24;
    v78 = v89;
    goto LABEL_76;
  }

  v25 = v90;
  if (v90 < 0)
  {
    goto LABEL_84;
  }

  v26 = v106;
  swift_beginAccess();
  IMDSqlStatementBindInt64(v26 + 6, v25);
  v126 = 0;
  IMDSqlOperationGetError((v26 + 2), &v126);
  v27 = v126;
  swift_endAccess();
  if (v27)
  {
    goto LABEL_68;
  }

  v28 = v92;
  if (v92 < 0)
  {
    goto LABEL_85;
  }

  v29 = v106;
  swift_beginAccess();
  IMDSqlStatementBindInt64(v29 + 6, v28);
  v126 = 0;
  IMDSqlOperationGetError((v29 + 2), &v126);
  v27 = v126;
  swift_endAccess();
  if (v27)
  {
LABEL_68:
    v77 = v27;
    swift_willThrow();
LABEL_74:
    v78 = v89;
    v79 = v106;
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v79 + 2));
    v126 = 0;
    IMDSqlOperationGetError((v79 + 2), &v126);
    v80 = v126;
    swift_endAccess();
    swift_willThrow();
    if (v80)
    {
      v80;
    }

LABEL_76:
    objc_autoreleasePoolPop(v22);

    v76 = v78;
LABEL_77:
    objc_autoreleasePoolPop(v76);
  }

  else
  {
    v30 = *(v93 + 24);
    if (v30 < 0xFFFFFFFF80000000)
    {
      goto LABEL_86;
    }

    if (v30 > 0x7FFFFFFF)
    {
      goto LABEL_87;
    }

    v31 = v106;
    swift_beginAccess();
    IMDSqlStatementBindInt(v31 + 6, v30);
    v126 = 0;
    IMDSqlOperationGetError((v31 + 2), &v126);
    v27 = v126;
    swift_endAccess();
    if (v27)
    {
      goto LABEL_68;
    }

    v32 = SqlOperation.uint64s(forColumnName:)(0x5F6567617373656DuLL, 0xEA00000000006469);
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v31 + 2));
    v126 = 0;
    IMDSqlOperationGetError((v31 + 2), &v126);
    v33 = v126;
    swift_endAccess();
    if (v33)
    {
      swift_willThrow();
      v77 = v33;
      goto LABEL_74;
    }

    objc_autoreleasePoolPop(v22);

    v34 = *(v32 + 16);
    v100 = (v32 + 16);
    if (v34)
    {
      v35 = *(v32 + 8 * v34 + 24);
      v36 = __CFADD__(v35, 1);
      v37 = v35 + 1;
      p_cb = (&OBJC_PROTOCOL___CNChangeHistoryEventVisitor + 64);
      if (v36)
      {
        goto LABEL_88;
      }

      v38 = v32;
      v92 = v37;
      goto LABEL_18;
    }

    v34 = *(MEMORY[0x1E69E7CC0] + 16);
    v100 = (MEMORY[0x1E69E7CC0] + 16);
    p_cb = (&OBJC_PROTOCOL___CNChangeHistoryEventVisitor + 64);
    if (v34)
    {
      v38 = MEMORY[0x1E69E7CC0];
LABEL_18:
      v39 = 0;
      v88 = v38;
      v97 = v38 + 32;
      v87 = v99 + v34;
      v101 = a2;
      v110 = v19;
      v111 = v10;
      v95 = v34;
      while (1)
      {
        if (v39 == v34)
        {

          objc_autoreleasePoolPop(v89);
          v99 = v87;
          goto LABEL_2;
        }

        if (v39 >= *v100)
        {
          __break(1u);
LABEL_82:
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
        }

        v102 = v39;
        v40 = *(v97 + 8 * v39);
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        v42 = v108;
        v43 = sub_1B7CD7370(0xD000000000000048, v98 | 0x8000000000000000, sub_1B7C90874, v41);
        v108 = v42;
        if (v42)
        {

          goto LABEL_67;
        }

        v44 = v43;

        v24 = MEMORY[0x1E69E7CC0];
        if (v44)
        {
          v45 = v44;
        }

        else
        {
          v45 = MEMORY[0x1E69E7CC0];
        }

        if (*(v45 + 16))
        {
          v127 = 0;
          v128 = 0xE000000000000000;
          sub_1B7CFF210();
          MEMORY[0x1B8CADCA0](0xD000000000000069, v94 | 0x8000000000000000);
          v126 = sub_1B7AF7F10(0x3F, 0xE100000000000000, *(v45 + 16));
          sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
          sub_1B7AF7FAC();
          v46 = sub_1B7CFEA10();
          v48 = v47;

          MEMORY[0x1B8CADCA0](v46, v48);

          MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
          v49 = v127;
          v24 = v128;
          v50 = swift_allocObject();
          *(v50 + 16) = v45;

          v51 = v108;
          v52 = sub_1B7CD7370(v49, v24, sub_1B7C65BE8, v50);
          v108 = v51;
          if (v51)
          {

LABEL_67:

            v76 = v89;
            goto LABEL_77;
          }

          v53 = v52;

          if (v53)
          {
            v54 = v53;
          }

          else
          {
            v54 = MEMORY[0x1E69E7CC0];
          }

          v4 = v122;
        }

        else
        {

          v54 = v24;
        }

        v55 = v112;
        v117 = v54[2];
        if (v117)
        {
          v22 = 0;
          v56 = *(v116 + 80);
          v114 = v54;
          v115 = v54 + ((v56 + 32) & ~v56);
          while (1)
          {
            if (v22 >= v54[2])
            {
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            v57 = a2;
            sub_1B7C607E8(&v115[*(v116 + 72) * v22], v19);
            v58 = *(v113 + 48);
            sub_1B7C59684(&v19[v58], v13);
            v24 = *v118;
            if ((*v118)(v13, 1, v55) == 1)
            {
              sub_1B7C60868(v19, type metadata accessor for StorageInspectionAttachmentRecord);
              v59 = v13;
              goto LABEL_37;
            }

            v60 = v109;
            sub_1B7C596F4(v13, v109);
            v61 = *(*(v60 + *(v55 + 20)) + 16);
            sub_1B7C60868(v60, type metadata accessor for StorageInspectionAttachmentDirectory);
            if (!v61)
            {
              break;
            }

            v19 = v110;
            if (!v57)
            {
              goto LABEL_43;
            }

            v10 = v111;
            sub_1B7C59684(&v110[v58], v111);
            v55 = v112;
            if ((v24)(v10, 1, v112) == 1)
            {
              sub_1B7C60868(v19, type metadata accessor for StorageInspectionAttachmentRecord);
              v59 = v10;
LABEL_37:
              sub_1B7AEE190(v59, &qword_1EBA52978, &qword_1B7D0DB38);
LABEL_44:
              a2 = v57;
              goto LABEL_45;
            }

            v24 = v107;
            sub_1B7C596F4(v10, v107);

            v62 = v108;
            v63 = sub_1B7CDE180(v24);
            if (v62)
            {

              sub_1B7C60868(v107, type metadata accessor for StorageInspectionAttachmentDirectory);
              sub_1B7C60868(v19, type metadata accessor for StorageInspectionAttachmentRecord);
              v76 = v89;
              goto LABEL_77;
            }

            v64 = v63[2];
            v108 = 0;
            if (v64)
            {
              v65 = 0;
              v66 = (*(v96 + 80) + 32) & ~*(v96 + 80);
              v104 = v63;
              v67 = v63 + v66;
              v123 = *(v96 + 72);
              v68 = *(v96 + 16);
              v103 = v124 + v64;
              while (1)
              {
                v69 = v121;
                v68(v121, v67, v4);
                if ((v124 ^ v65) == 0xFFFFFFFFFFFFFFFFLL)
                {
                  break;
                }

                v24 = URL.fileAllocationSize.getter();
                v70 = v4;
                v72 = v71;
                (*v119)(v69, v70);
                if (v72)
                {
                  v73 = 0;
                }

                else
                {
                  v73 = v24;
                }

                v36 = __CFADD__(v125, v73);
                v74 = &v73[v125];
                if (v36)
                {
                  goto LABEL_70;
                }

                v125 = v74;
                ++v65;
                v4 = v122;
                v67 += v123;
                if (v64 == v65)
                {

                  v124 = v103;
                  v19 = v110;
                  v10 = v111;
                  goto LABEL_58;
                }
              }

              __break(1u);
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

LABEL_58:
            a2 = v101;

            sub_1B7C60868(v107, type metadata accessor for StorageInspectionAttachmentDirectory);
            sub_1B7C60868(v19, type metadata accessor for StorageInspectionAttachmentRecord);
            v55 = v112;
LABEL_45:
            v54 = v114;
            if (++v22 == v117)
            {
              goto LABEL_59;
            }
          }

          v19 = v110;
LABEL_43:
          sub_1B7C60868(v19, type metadata accessor for StorageInspectionAttachmentRecord);
          v10 = v111;
          v55 = v112;
          goto LABEL_44;
        }

LABEL_59:
        if ((v99 ^ v102) == 0xFFFFFFFFFFFFFFFFLL)
        {
          goto LABEL_82;
        }

        v39 = v102 + 1;
        v75 = v54[2];

        v36 = __CFADD__(v105, v75);
        v105 += v75;
        p_cb = (&OBJC_PROTOCOL___CNChangeHistoryEventVisitor + 64);
        v34 = v95;
        if (v36)
        {
          goto LABEL_83;
        }
      }
    }

    objc_autoreleasePoolPop(v89);
    v81 = v108;
    sub_1B7CDAE64(v90);
    if (!v81)
    {
      v83 = v86;
      v84 = v105;
      *v86 = v99;
      v83[1] = v84;
      v85 = v125;
      v83[2] = v124;
      v83[3] = v85;
      v83[4] = v82;
    }
  }
}

unint64_t sub_1B7C9011C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1B7C90218(sqlite3_int64 a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v56 = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v8 = off_1EBA52D08;
  sub_1B7C90740(&v47);

  v9 = objc_autoreleasePoolPush();
  v10 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v8 + 16, v10);
  swift_endAccess();

  swift_beginAccess();
  v19 = 0;
  IMDSqlOperationGetError((v8 + 16), &v19);
  v11 = v19;
  swift_endAccess();
  if (v11)
  {
    swift_willThrow();
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v38 = v47;
    v39 = v48;
    v11;
LABEL_12:
    objc_autoreleasePoolPop(v9);

    sub_1B7AEE190(&v38, &qword_1EBA529A0, &qword_1B7D0DC48);
    return;
  }

  sub_1B7C8E9E4(v8, a1, a2, &v20);
  if (v3)
  {
    v35 = v53;
    v36 = v54;
    v37 = v55;
    v31 = v49;
    v32 = v50;
    v33 = v51;
    v34 = v52;
    v29 = v47;
    v30 = v48;
LABEL_9:
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v8 + 16));
    v18 = 0;
    IMDSqlOperationGetError((v8 + 16), &v18);
    v13 = v18;
    swift_endAccess();
    swift_willThrow();
    if (v13)
    {
      v13;
    }

    v44 = v35;
    v45 = v36;
    v46 = v37;
    v40 = v31;
    v41 = v32;
    v42 = v33;
    v43 = v34;
    v38 = v29;
    v39 = v30;
    goto LABEL_12;
  }

  swift_beginAccess();
  IMDSqlOperationFinishQuery((v8 + 16));
  v18 = 0;
  IMDSqlOperationGetError((v8 + 16), &v18);
  v12 = v18;
  swift_endAccess();
  if (v12)
  {
    swift_willThrow();
    v35 = v26;
    v36 = v27;
    v37 = v28;
    v31 = v22;
    v32 = v23;
    v33 = v24;
    v34 = v25;
    v29 = v20;
    v30 = v21;
    v4 = v12;
    goto LABEL_9;
  }

  objc_autoreleasePoolPop(v9);

  v14 = v27;
  a3[6] = v26;
  a3[7] = v14;
  a3[8] = v28;
  v15 = v23;
  a3[2] = v22;
  a3[3] = v15;
  v16 = v25;
  a3[4] = v24;
  a3[5] = v16;
  v17 = v21;
  *a3 = v20;
  a3[1] = v17;
}

unint64_t sub_1B7C90580(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1B7C90664(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_1B7AF182C(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_1B7C90580(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

double sub_1B7C90740(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1B7C9075C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_1B7C107FC(&qword_1EBA52908, qword_1B7D10580);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7C90890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_1B7CFDFF0();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B7C90A04(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

__n128 sub_1B7C90ADC(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1B7C90B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1B7C90B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7C90BC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xEE0065756C615665 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1B7CFF590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61 || (sub_1B7CFF590() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B7CFF590() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7D56100 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

void sub_1B7C90F60(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = sub_1B7C107FC(&qword_1EBA53138, &qword_1B7D10650);
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v32 - v6;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C91618();
  sub_1B7CFF820();
  if (v2)
  {
    sub_1B7AE9168(a1);
  }

  else
  {
    v8 = v5;
    LOBYTE(v59[0]) = 0;
    v9 = v49;
    v10 = sub_1B7CFF460();
    LOBYTE(v59[0]) = 1;
    v45 = sub_1B7CFF420();
    v47 = v11;
    LOBYTE(v59[0]) = 2;
    v12 = sub_1B7CFF3E0();
    v46 = v13;
    v42 = v12;
    LOBYTE(v59[0]) = 3;
    v14 = sub_1B7CFF430();
    v48 = 0;
    v41 = v14;
    type metadata accessor for IMChatStyle(0);
    LOBYTE(v50) = 4;
    sub_1B7C91728(&qword_1EBA53148, MEMORY[0x1E69A67C0]);
    v15 = v48;
    sub_1B7CFF400();
    if (v15)
    {
      v48 = v15;
      (*(v8 + 8))(v7, v9);
      sub_1B7AE9168(a1);
    }

    else
    {
      v40 = LOBYTE(v59[0]);
      v79 = BYTE1(v59[0]);
      LOBYTE(v59[0]) = 5;
      v39 = sub_1B7CFF3E0();
      v44 = v16;
      LOBYTE(v59[0]) = 6;
      v17 = sub_1B7CFF3E0();
      v43 = v18;
      LOBYTE(v59[0]) = 7;
      v36 = sub_1B7CFF3E0();
      v37 = v17;
      v20 = v19;
      LOBYTE(v59[0]) = 8;
      v35 = sub_1B7CFF3E0();
      v38 = v21;
      v48 = 0;
      LOBYTE(v59[0]) = 9;
      v33 = sub_1B7CFF3E0();
      v34 = v22;
      v48 = 0;
      sub_1B7C107FC(&qword_1EBA53150, &qword_1B7D10658);
      v78 = 10;
      sub_1B7C9176C(&qword_1EBA53158, sub_1B7C9166C, MEMORY[0x1E69E6330]);
      v23 = v48;
      sub_1B7CFF440();
      v48 = v23;
      (*(v8 + 8))(v7, v49);
      if (v23)
      {
        sub_1B7AE9168(a1);
      }

      else
      {
        v49 = v75;
        *&v50 = v10;
        *(&v50 + 1) = v45;
        *&v51 = v47;
        *(&v51 + 1) = v42;
        *&v52 = v46;
        *(&v52 + 1) = v41;
        LOBYTE(v53) = v40;
        HIDWORD(v32) = v79;
        BYTE1(v53) = v79;
        *(&v53 + 2) = v76;
        WORD3(v53) = v77;
        v24 = v38;
        v25 = v39;
        v27 = v43;
        v26 = v44;
        *(&v53 + 1) = v39;
        *&v54 = v44;
        *(&v54 + 1) = v37;
        *&v55 = v43;
        *(&v55 + 1) = v36;
        *&v56 = v20;
        *(&v56 + 1) = v35;
        *&v57 = v38;
        *(&v57 + 1) = v33;
        *&v58 = v34;
        *(&v58 + 1) = v75;
        sub_1B7C916C0(&v50, v59);
        sub_1B7AE9168(a1);
        v59[0] = v10;
        v59[1] = v45;
        v59[2] = v47;
        v59[3] = v42;
        v59[4] = v46;
        v59[5] = v41;
        v60 = v40;
        v61 = BYTE4(v32);
        v62 = v76;
        v63 = v77;
        v64 = v25;
        v65 = v26;
        v66 = v37;
        v67 = v27;
        v68 = v36;
        v69 = v20;
        v70 = v35;
        v71 = v24;
        v72 = v33;
        v73 = v34;
        v74 = v49;
        sub_1B7C916F8(v59);
        v28 = v57;
        a2[6] = v56;
        a2[7] = v28;
        a2[8] = v58;
        v29 = v53;
        a2[2] = v52;
        a2[3] = v29;
        v30 = v55;
        a2[4] = v54;
        a2[5] = v30;
        v31 = v51;
        *a2 = v50;
        a2[1] = v31;
      }
    }
  }
}

unint64_t sub_1B7C91618()
{
  result = qword_1EBA53140;
  if (!qword_1EBA53140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53140);
  }

  return result;
}

unint64_t sub_1B7C9166C()
{
  result = qword_1EBA53160;
  if (!qword_1EBA53160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53160);
  }

  return result;
}

uint64_t sub_1B7C91728(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IMChatStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7C9176C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA53150, &qword_1B7D10658);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C917E4()
{
  result = qword_1EBA53180;
  if (!qword_1EBA53180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53180);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspectionChatRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageInspectionChatRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C9198C()
{
  result = qword_1EBA53188;
  if (!qword_1EBA53188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53188);
  }

  return result;
}

unint64_t sub_1B7C919E4()
{
  result = qword_1EBA53190;
  if (!qword_1EBA53190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53190);
  }

  return result;
}

unint64_t sub_1B7C91A3C()
{
  result = qword_1EBA53198;
  if (!qword_1EBA53198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53198);
  }

  return result;
}

uint64_t sub_1B7C91A90()
{
  result = **(v0 + 16);
  if (result)
  {
    MEMORY[0x1B8CB0E70](result, -1, -1);
    MEMORY[0x1B8CB0E70](*(v0 + 16), -1, -1);
    v2 = *(v0 + 24);
    if (v2)
    {
      v3 = *(v0 + 32);
      if (v3)
      {
        v4 = 40 * v3;
        do
        {
          result = *v2;
          if (!*v2)
          {
            __break(1u);
            goto LABEL_11;
          }

          v2 += 5;
          MEMORY[0x1B8CB0E70](result, -1, -1);
          v4 -= 40;
        }

        while (v4);
        v2 = *(v0 + 24);
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      MEMORY[0x1B8CB0E70](v2, -1, -1);
    }

LABEL_9:

    return v0;
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C91B48()
{
  sub_1B7C91A90();

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C91B7C(uint64_t *a1, int a2)
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

uint64_t sub_1B7C91BC4(uint64_t result, int a2, int a3)
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

void sub_1B7C91C00(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = v4;
  v27 = a4;
  v28 = a2;
  v29 = a3;
  v8 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v26 - v9;
  v44 = sub_1B7C107FC(&qword_1EBA52038, &qword_1B7D0AD18);
  v10 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v26 - v11;
  v12 = sub_1B7C107FC(&qword_1EBA52040, &qword_1B7D13090);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v26 - v13;
  v14 = *(a1 + 16);
  v34 = (v10 + 48);
  v35 = "IMDMessageQueryStrings";
  v26 = v10;
  v32 = (v10 + 8);
  v33 = (v10 + 32);
  v31 = (v15 + 8);
  v16 = (a1 + 40);
  v17 = v14 + 1;
  while (1)
  {
    if (!--v17)
    {
      return;
    }

    v19 = *v16;
    if (*v16 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v19 > 0x7FFFFFFF)
    {
      goto LABEL_26;
    }

    v30 = *(v16 - 1);
    if (!sqlite3_column_name(v30, v19))
    {
      goto LABEL_27;
    }

    v20 = sub_1B7CFEB70();
    v22 = v21;
    sub_1B7CFE310();
    KeyPath = v36;
    v4 = v6;
    sub_1B7CFE320();
    if (v6)
    {
      goto LABEL_29;
    }

    v37 = 0;
    v23 = v44;
    if ((*v34)(KeyPath, 1, v44) == 1)
    {
      goto LABEL_30;
    }

    (*v33)(v39, KeyPath, v23);
    KeyPath = swift_getKeyPath();
    sub_1B7CFE330();

    if (v42 == 1701667182 && v43 == 0xE400000000000000 && !(v40 >> 16) && v41 >> 16 == 4)
    {

      (*v32)(v39, v44);
    }

    else
    {
      KeyPath = sub_1B7CFF560();

      (*v32)(v39, v44);
      if ((KeyPath & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    (*v31)(v38, v12);
    if (v20 == 1701667182 && v22 == 0xE400000000000000)
    {
      break;
    }

    v16 += 2;
    v18 = sub_1B7CFF590();

    v6 = v37;
    if (v18)
    {
      goto LABEL_18;
    }
  }

LABEL_18:
  if (!sqlite3_column_text(v30, v19))
  {
LABEL_28:
    __break(1u);
LABEL_29:

    (*(v26 + 56))(KeyPath, 1, 1, v44);
LABEL_30:
    sub_1B7C1D5F8(KeyPath);
LABEL_31:
    sub_1B7CFF340();
    __break(1u);
    return;
  }

  if (sub_1B7CFEB80() == v28 && v24 == v29)
  {
  }

  else
  {
    v25 = sub_1B7CFF590();

    if ((v25 & 1) == 0)
    {
      return;
    }
  }

  *v27 = 1;
}

void sub_1B7C92120(uint64_t a1, uint64_t *a2)
{
  v6 = v2;
  v27 = a2;
  v8 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v26 - v9;
  v42 = sub_1B7C107FC(&qword_1EBA52038, &qword_1B7D0AD18);
  v10 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v37 = &v26 - v11;
  v12 = sub_1B7C107FC(&qword_1EBA52040, &qword_1B7D13090);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v26 - v13;
  v14 = *(a1 + 16);
  v32 = (v10 + 48);
  v33 = "IMDMessageQueryStrings";
  v26 = v10;
  v30 = (v10 + 8);
  v31 = (v10 + 32);
  v29 = (v15 + 8);
  v16 = (a1 + 40);
  v17 = v14 + 1;
  while (1)
  {
    if (!--v17)
    {
      return;
    }

    v18 = *v16;
    if (*v16 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v18 > 0x7FFFFFFF)
    {
      goto LABEL_25;
    }

    v28 = *(v16 - 1);
    if (!sqlite3_column_name(v28, v18))
    {
      __break(1u);
      goto LABEL_28;
    }

    v3 = sub_1B7CFEB70();
    v5 = v19;
    sub_1B7CFE310();
    KeyPath = v34;
    v2 = v6;
    sub_1B7CFE320();
    if (v6)
    {
      goto LABEL_29;
    }

    v35 = 0;
    v20 = v42;
    if ((*v32)(KeyPath, 1, v42) == 1)
    {
      goto LABEL_30;
    }

    (*v31)(v37, KeyPath, v20);
    KeyPath = swift_getKeyPath();
    sub_1B7CFE330();

    if (v40 == 1701667182 && v41 == 0xE400000000000000 && !(v38 >> 16) && v39 >> 16 == 4)
    {

      (*v30)(v37, v42);
    }

    else
    {
      KeyPath = sub_1B7CFF560();

      (*v30)(v37, v42);
      if ((KeyPath & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    (*v29)(v36, v12);
    if (v3 == 1701667182 && v5 == 0xE400000000000000)
    {
      break;
    }

    v16 += 2;
    a1 = sub_1B7CFF590();

    v6 = v35;
    if (a1)
    {
      goto LABEL_18;
    }
  }

LABEL_18:
  if (!sqlite3_column_text(v28, v18))
  {
LABEL_28:
    __break(1u);
LABEL_29:

    (*(v26 + 56))(KeyPath, 1, 1, v42);
LABEL_30:
    sub_1B7C1D5F8(KeyPath);
LABEL_31:
    sub_1B7CFF340();
    __break(1u);
    return;
  }

  a1 = sub_1B7CFEB80();
  v12 = v21;
  v5 = v27;
  v3 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_26:
    v3 = sub_1B7CA2EA8(0, *(v3 + 16) + 1, 1, v3);
    *v5 = v3;
  }

  v24 = *(v3 + 16);
  v23 = *(v3 + 24);
  if (v24 >= v23 >> 1)
  {
    v3 = sub_1B7CA2EA8((v23 > 1), v24 + 1, 1, v3);
    *v5 = v3;
  }

  *(v3 + 16) = v24 + 1;
  v25 = v3 + 16 * v24;
  *(v25 + 32) = a1;
  *(v25 + 40) = v12;
}

uint64_t sub_1B7C92678(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA531C0, &qword_1B7D10858);
  v6 = off_1F2FA8A10;
  off_1F2FA8A10(*(a2 + 16), 0, (v20 + *(v5 + 32)));
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = v2;
    *(v7 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v9 = sub_1B7C107FC(&qword_1EBA531C0, &qword_1B7D10858);
    v6(*(a2 + 16), 1, (v20 + *(v9 + 48)));
    v10 = sub_1B7C107FC(&qword_1EBA531C0, &qword_1B7D10858);
    v6(*(a2 + 16), 2, (v20 + *(v10 + 64)));
    v11 = sub_1B7C107FC(&qword_1EBA531C0, &qword_1B7D10858);
    off_1F2FA8B70((v20 + *(v11 + 80)), *(a2 + 16), 3);
    v18 = v20[1];
    v19 = v20[0];
    v12 = v21;
    v13 = v22;
    v14 = *v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1D6C(0, v14[2] + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_1B7CA1D6C((v15 > 1), v16 + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    v14[2] = v16 + 1;
    v17 = &v14[5 * v16];
    *(v17 + 2) = v19;
    *(v17 + 3) = v18;
    v17[8] = v12;
  }

  return result;
}

uint64_t sub_1B7C929CC(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA52478, &unk_1B7D0D930);
  off_1F2FA8B70((v19 + *(v5 + 32)), *(a2 + 16), 0);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = v2;
    *(v7 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = sub_1B7C107FC(&qword_1EBA52478, &unk_1B7D0D930);
    off_1F2FA8A10(*(a2 + 16), 1, (v19 + *(v6 + 48)));
    v9 = v19[0];
    v10 = v19[1];
    v11 = v19[2];
    v12 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v12;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1D90(0, v12[2] + 1, 1, v12);
      v12 = result;
      *a1 = result;
    }

    v13 = v12[2];
    v14 = v12[3];
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v17 = v12;
      v18 = v12[2];
      result = sub_1B7CA1D90((v14 > 1), v13 + 1, 1, v17);
      v13 = v18;
      v12 = result;
      *a1 = result;
    }

    v12[2] = v15;
    v16 = &v12[3 * v13];
    v16[4] = v9;
    v16[5] = v10;
    v16[6] = v11;
  }

  return result;
}

uint64_t sub_1B7C92BE8(uint64_t *a1, uint64_t a2)
{
  off_1F2FA8A90(*(a2 + 16), 0, &v10);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = v2;
    *(v4 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = v10;
    v7 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v7;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1DB4(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
      *a1 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_1B7CA1DB4((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
      *a1 = result;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + 8 * v9 + 32) = v6;
  }

  return result;
}

uint64_t sub_1B7C92D1C(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA53208, qword_1B7D10898);
  off_1F2FA8B70((v19 + *(v5 + 32)), *(a2 + 16), 0);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = v2;
    *(v7 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = sub_1B7C107FC(&qword_1EBA53208, qword_1B7D10898);
    off_1F2FA8A90(*(a2 + 16), 1, (v19 + *(v6 + 48)));
    v9 = v19[0];
    v10 = v19[1];
    v11 = v19[2];
    v12 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v12;
    if ((result & 1) == 0)
    {
      result = sub_1B7CA1DC8(0, v12[2] + 1, 1, v12);
      v12 = result;
      *a1 = result;
    }

    v13 = v12[2];
    v14 = v12[3];
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v17 = v12;
      v18 = v12[2];
      result = sub_1B7CA1DC8((v14 > 1), v13 + 1, 1, v17);
      v13 = v18;
      v12 = result;
      *a1 = result;
    }

    v12[2] = v15;
    v16 = &v12[3 * v13];
    v16[4] = v9;
    v16[5] = v10;
    v16[6] = v11;
  }

  return result;
}