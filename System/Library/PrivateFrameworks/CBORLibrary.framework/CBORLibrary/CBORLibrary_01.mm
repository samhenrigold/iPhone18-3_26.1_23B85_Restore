id sub_222789CEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D70, &qword_2227A0650);
  v2 = *v0;
  v3 = sub_22279EFF0();
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
        result = v19;
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

void *sub_222789E4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D58, &qword_2227A0640);
  v2 = *v0;
  v3 = sub_22279EFF0();
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
        result = swift_unknownObjectRetain();
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

void *sub_222789FB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E38, &qword_2227A0B18);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E40, &qword_2227A0B20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22278A0F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019ED8, &qword_2227A1040);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unsigned __int8 *sub_22278A1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22279ED30();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22278A788(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22279EEF0();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22278A788(uint64_t a1, unint64_t a2)
{
  v2 = sub_22279ED40();
  v6 = sub_22278A808(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22278A808(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22279EE10();
    if (!v9 || (v10 = v9, v11 = sub_22278A960(v9, 0), v12 = sub_22278A9D4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22279ECC0();

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
      return sub_22279ECC0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22279EEF0();
LABEL_4:

  return sub_22279ECC0();
}

void *sub_22278A960(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019EE8, &qword_2227A1058);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_22278A9D4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_22278ABF4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22279ED10();
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
          result = sub_22279EEF0();
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

    result = sub_22278ABF4(v12, a6, a7);
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

    result = sub_22279ECF0();
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

unint64_t sub_22278ABF4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22279ED20();
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
    v5 = MEMORY[0x223DBFF50](15, a1 >> 16);
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

char *sub_22278AC70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22278AC90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22278AC90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019EE0, &unk_2227A1048);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_22278AD94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E78, &unk_2227A0B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22278ADFC()
{
  result = qword_280BC4440;
  if (!qword_280BC4440)
  {
    sub_222782C2C(255, qword_280BC4448, off_2784B4108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BC4440);
  }

  return result;
}

uint64_t sub_22278AE64(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22278414C(result, a2);
  }

  return result;
}

uint64_t sub_22278AE78(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_22278AECC()
{
  result = qword_27D019E80;
  if (!qword_27D019E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E80);
  }

  return result;
}

unint64_t sub_22278AF20()
{
  result = qword_27D019E90;
  if (!qword_27D019E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E90);
  }

  return result;
}

unint64_t sub_22278AF74()
{
  result = qword_27D019EA0;
  if (!qword_27D019EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EA0);
  }

  return result;
}

unint64_t sub_22278AFC8()
{
  result = qword_27D019EB0;
  if (!qword_27D019EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EB0);
  }

  return result;
}

unint64_t sub_22278B020()
{
  result = qword_27D019EB8;
  if (!qword_27D019EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EB8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22278B0BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22278B104(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22278B164(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22278B1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CBOREncoder.DateEncodingStrategy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CBOREncoder.DateEncodingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22278B36C()
{
  result = qword_27D019EC0;
  if (!qword_27D019EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EC0);
  }

  return result;
}

unint64_t sub_22278B3C4()
{
  result = qword_27D019EC8;
  if (!qword_27D019EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EC8);
  }

  return result;
}

unint64_t sub_22278B41C()
{
  result = qword_27D019ED0;
  if (!qword_27D019ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019ED0);
  }

  return result;
}

uint64_t sub_22278B474(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22278B4D0(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v33 = result;

      sub_22278A1FC(v33, a2, 8);

      return v33;
    }

    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((result & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v35 = result;
        v5 = sub_22279EEF0();
        result = v35;
        v3 = v36;
      }

      v6 = *v5;
      if (v6 == 43)
      {
        if (v3 >= 1)
        {
          v20 = v3 - 1;
          if (v20)
          {
            if (v5)
            {
              v21 = 0;
              v22 = v5 + 1;
              do
              {
                v23 = (*v22 & 0xF8) == 0x30 && (v21 - 0x1000000000000000) >> 61 == 7;
                v13 = !v23;
                if (!v23)
                {
                  break;
                }

                v21 = (*v22++ - 48) | (8 * v21);
                --v20;
              }

              while (v20);
              goto LABEL_92;
            }

            goto LABEL_76;
          }

LABEL_91:
          v13 = 1;
          goto LABEL_92;
        }

        goto LABEL_98;
      }

      if (v6 != 45)
      {
        if (v3)
        {
          if (v5)
          {
            v28 = 0;
            do
            {
              v29 = (*v5 & 0xF8) == 0x30 && (v28 - 0x1000000000000000) >> 61 == 7;
              v13 = !v29;
              if (!v29)
              {
                break;
              }

              v28 = (*v5++ - 48) | (8 * v28);
              --v3;
            }

            while (v3);
            goto LABEL_92;
          }

          goto LABEL_76;
        }

        goto LABEL_91;
      }

      if (v3 >= 1)
      {
        v7 = v3 - 1;
        if (v7)
        {
          if (v5)
          {
            v8 = 0;
            v9 = v5 + 1;
            while ((*v9 & 0xF8) == 0x30 && (v8 - 0x1000000000000000) >> 61 == 7)
            {
              v11 = *v9 - 48;
              v12 = __OFSUB__(8 * v8, v11);
              v8 = 8 * v8 - v11;
              if (v12)
              {
                break;
              }

              v13 = 0;
              ++v9;
              if (!--v7)
              {
                goto LABEL_92;
              }
            }

            goto LABEL_91;
          }

LABEL_76:
          v13 = 0;
LABEL_92:
          v38 = v13;
          return result;
        }

        goto LABEL_91;
      }

      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v37[0] = result;
    v37[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (!v2)
      {
LABEL_99:
        __break(1u);
        return result;
      }

      v24 = v2 - 1;
      if (v24)
      {
        v25 = 0;
        v26 = v37 + 1;
        do
        {
          v27 = (*v26 & 0xF8) == 0x30 && (v25 - 0x1000000000000000) >> 61 == 7;
          v19 = !v27;
          if (!v27)
          {
            break;
          }

          v25 = (*v26++ - 48) | (8 * v25);
          --v24;
        }

        while (v24);
        goto LABEL_90;
      }
    }

    else if (result == 45)
    {
      if (!v2)
      {
        goto LABEL_97;
      }

      v14 = v2 - 1;
      if (v14)
      {
        v15 = 0;
        v16 = v37 + 1;
        while ((*v16 & 0xF8) == 0x30 && (v15 - 0x1000000000000000) >> 61 == 7)
        {
          v18 = *v16 - 48;
          v12 = __OFSUB__(8 * v15, v18);
          v15 = 8 * v15 - v18;
          if (v12)
          {
            break;
          }

          v19 = 0;
          ++v16;
          if (!--v14)
          {
            goto LABEL_90;
          }
        }
      }
    }

    else if (v2)
    {
      v30 = 0;
      v31 = v37;
      do
      {
        v32 = (*v31 & 0xF8) == 0x30 && (v30 - 0x1000000000000000) >> 61 == 7;
        v19 = !v32;
        if (!v32)
        {
          break;
        }

        v30 = (*v31++ - 48) | (8 * v30);
        --v2;
      }

      while (v2);
      goto LABEL_90;
    }

    v19 = 1;
LABEL_90:
    v38 = v19;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22278B834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_22278B87C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22278B8D4()
{
  result = qword_27D019EF0;
  if (!qword_27D019EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EF0);
  }

  return result;
}

unint64_t sub_22278B92C()
{
  result = qword_27D019EF8;
  if (!qword_27D019EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019EF8);
  }

  return result;
}

unint64_t sub_22278B984()
{
  result = qword_27D019F00;
  if (!qword_27D019F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019F00);
  }

  return result;
}

void sub_22278BA54(unint64_t a1)
{
  v1 = a1;
  while (v1 >= 4)
  {
    v1 = *(v1 + 16);
    MEMORY[0x223DC0720](1);
  }

  JUMPOUT(0x223DC0720);
}

uint64_t sub_22278BAAC(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_maintainKeySetOrder) != 1)
  {
    goto LABEL_12;
  }

  v6 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if (!*(v7 + 16))
    {
      goto LABEL_10;
    }

    sub_222794F78(a1);
    if ((v10 & 1) == 0)
    {

      goto LABEL_10;
    }

    swift_unknownObjectRetain();

LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v8 = a1;
  v9 = sub_22279EFB0();

  if (v9)
  {
    goto LABEL_8;
  }

LABEL_10:
  v11 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_keyOrderList;
  swift_beginAccess();
  v12 = a1;
  MEMORY[0x223DBFFB0]();
  if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    sub_22279EDB0();
    swift_endAccess();
LABEL_12:
    v13 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
    swift_beginAccess();
    v14 = *(v3 + v13);
    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (v14 < 0)
    {
      v15 = *(v3 + v13);
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    swift_unknownObjectRetain();
    v16 = sub_22279EFA0();
    if (!__OFADD__(v16, 1))
    {
      *(v3 + v13) = sub_222788018(v15, v16 + 1);
      goto LABEL_19;
    }

    __break(1u);
LABEL_21:
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
LABEL_19:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v3 + v13);
  sub_222789688(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + v13) = v19;
  return swift_endAccess();
}

id sub_22278BCFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _CBORDictionary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CBOREncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  *(v0 + 24) = 2;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t CBOREncoder.init()()
{
  *(v0 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  *(v0 + 24) = 2;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t CBOREncoder.__allocating_init(userInfo:dictionaryEncodingStrategy:dateEncodingStrategy:)(uint64_t a1, uint64_t *a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a2;
  v8 = *a3;
  *(result + 16) = a1;
  *(result + 24) = v7;
  *(result + 32) = v8;
  return result;
}

uint64_t CBOREncoder.init(userInfo:dictionaryEncodingStrategy:dateEncodingStrategy:)(uint64_t a1, uint64_t *a2, char *a3)
{
  v4 = *a2;
  v5 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  return v3;
}

uint64_t sub_22278BEB4()
{
  (*(*v0 + 176))(&v3);
  if (v3 < 4)
  {
    return qword_2227A19D8[v3];
  }

  v2 = *(v3 + 16);
  if (v2 <= 1)
  {
    if (v2 >= 2)
    {
      goto LABEL_10;
    }

LABEL_7:
    sub_222793908(v3);
    return 0;
  }

  if (v2 == 2)
  {
    goto LABEL_7;
  }

  if (v2 == 3)
  {
    sub_222793908(v3);
    return 1;
  }

LABEL_10:
  result = sub_22279EFD0();
  __break(1u);
  return result;
}

void *sub_22278BFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*v3 + 168))(a1, 0, 1, a2, a3);
  if (!v4)
  {
    v6 = result;
    v7 = sub_22278BEB4();
    v8 = [objc_opt_self() dataWithCBOR:v6 encodingKeyOrder:v7];

    v9 = sub_22279EC10();
    return v9;
  }

  return result;
}

void *sub_22278C06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*v4 + 168))(a1, a2, 0, a3, a4);
  if (!v5)
  {
    v7 = result;
    v8 = sub_22278BEB4();
    v9 = [objc_opt_self() dataWithCBOR:v7 encodingKeyOrder:v8];

    v10 = sub_22279EC10();
    return v10;
  }

  return result;
}

void (*sub_22278C134(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5))(uint64_t *, uint64_t, uint64_t)
{
  LODWORD(v47) = a3;
  v46 = a2;
  v9 = sub_22279EED0();
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _CBOREncoder();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 16) = MEMORY[0x277D84F90];
  *(v12 + 24) = v13;
  swift_weakAssign();
  v50 = a4;
  v51 = a5;
  v14 = __swift_allocate_boxed_opaque_existential_1Tm(&v48);
  v15 = *(a4 - 8);
  v16 = *(v15 + 16);
  v17 = v15 + 16;
  v16(v14, a1, a4);
  v18 = sub_22278C668(&v48);
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    return v16;
  }

  v19 = v18;
  v43 = v17;
  v44 = a1;
  v45 = v11;
  v42 = v9;
  __swift_destroy_boxed_opaque_existential_1Tm(&v48);
  if (!v19)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_22279EE60();

    v48 = 0x6576656C20706F54;
    v49 = 0xEA0000000000206CLL;
    v24 = a4;
    v25 = sub_22279F5B0();
    v26 = v16;
    MEMORY[0x223DBFF30](v25);

    MEMORY[0x223DBFF30](0x6F74206C69616620, 0xEE0065646F6E6520);
    v22 = v45;
    sub_22279EE90();
    v16 = sub_22279EEE0();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F08, &qword_2227A11A0) + 48);
    v28[3] = v24;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
    v26(boxed_opaque_existential_1Tm, v44, v24);
    v31 = v52;
    v32 = v42;
    (*(v52 + 16))(v28 + v29, v22, v42);
    (*(*(v16 - 1) + 104))(v28, *MEMORY[0x277D841A8], v16);
    swift_willThrow();
LABEL_10:

    (*(v31 + 8))(v22, v32);
    return v16;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  v21 = v44;
  v22 = v45;
  if (!v20)
  {
    v33 = a4;
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_22279EE60();

    v48 = 0x6576656C20706F54;
    v49 = 0xEA0000000000206CLL;
    v34 = sub_22279F5B0();
    v47 = v16;
    MEMORY[0x223DBFF30](v34);

    MEMORY[0x223DBFF30](0x6F74206C69616620, 0xEE0065646F6E6520);
    sub_22279EE90();
    v16 = sub_22279EEE0();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F08, &qword_2227A11A0) + 48);
    v36[3] = v33;
    v38 = __swift_allocate_boxed_opaque_existential_1Tm(v36);
    v47(v38, v21, v33);
    v31 = v52;
    v39 = v36 + v37;
    v32 = v42;
    (*(v52 + 16))(v39, v22, v42);
    (*(*(v16 - 1) + 104))(v36, *MEMORY[0x277D841A8], v16);
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClassUnconditional();
  if ((v47 & 1) == 0)
  {
    v23 = [objc_opt_self() cborWithInteger_];
    [v16 setTag_];
  }

  return v16;
}

id sub_22278C668(void *a1)
{
  v4 = sub_22279EED0();
  v85 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22279EC40();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (DynamicType == v7)
  {
    sub_222783A04(a1, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F40, &qword_2227A15E0);
    swift_dynamicCast();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(*result + 200))(v81);

      v23 = LOBYTE(v81[0]);
      v24 = sub_22279EC20();
      v25 = objc_opt_self();
      v26 = &selRef_cborWithDateTime_;
      if (!v23)
      {
        v26 = &selRef_cborWithFullDate_;
      }

      v14 = [v25 *v26];

      (*(v8 + 8))(v10, v7);
      return v14;
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v12 = DynamicType;
  if (DynamicType == MEMORY[0x277CC9318] || DynamicType == sub_222782C2C(0, &qword_280BC4438, 0x277CBEA90))
  {
    sub_222783A04(a1, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F40, &qword_2227A15E0);
    swift_dynamicCast();
    v20 = v81[0];
    v21 = v81[1];
    v22 = sub_22279EC00();
    v14 = [objc_opt_self() cborWithData_];

    sub_22278414C(v20, v21);
    return v14;
  }

  if (v12 == &type metadata for CBORCodableWrapper)
  {
    sub_222783A04(a1, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F40, &qword_2227A15E0);
    swift_dynamicCast();
    return v81[0];
  }

  swift_beginAccess();
  v13 = *(v1 + 16);
  if (v13 >> 62)
  {
    v14 = sub_22279EFA0();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v83 = type metadata accessor for _CBOREncoder();
  v84 = sub_222793F1C(&qword_280BC4550, type metadata accessor for _CBOREncoder, &unk_2227A1590);
  v82[0] = v1;
  v78 = v1;

  sub_22279EC70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    v16 = v78;
    v17 = *(v78 + 16);
    if (v17 >> 62)
    {
      if (v14 >= sub_22279EFA0())
      {
        goto LABEL_14;
      }
    }

    else if (v14 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      swift_willThrow();
      return v14;
    }

    swift_beginAccess();
    v18 = *(v16 + 16);
    if (v18 >> 62)
    {
      if (sub_22279EFA0())
      {
LABEL_12:
        result = sub_222792E0C();
        if (result)
        {
          swift_endAccess();
          swift_unknownObjectRelease();
          goto LABEL_14;
        }

        goto LABEL_74;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_70:
    if (!sub_22279EFA0())
    {
      goto LABEL_71;
    }

    goto LABEL_26;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  v27 = v78;
  v28 = *(v78 + 16);
  if (!(v28 >> 62))
  {
    if (v14 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (v14 >= sub_22279EFA0())
  {
    return 0;
  }

LABEL_24:
  swift_beginAccess();
  v29 = *(v27 + 16);
  if (v29 >> 62)
  {
    goto LABEL_70;
  }

  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_26:
  result = sub_222792E0C();
  if (result)
  {
    v14 = result;
    swift_endAccess();
    type metadata accessor for _CBORDictionary();
    swift_unknownObjectRetain();
    v30 = swift_dynamicCastClass();
    if (!v30)
    {
      v82[0] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D60, &qword_2227A0648);
      if (!swift_dynamicCast())
      {
        return v14;
      }

      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      v35 = sub_22279ED70();

      v36 = [objc_opt_self() cborWithArray_];
LABEL_37:
      v38 = v36;
      swift_unknownObjectRelease();

      return v38;
    }

    v31 = v30;
    swift_unknownObjectRelease();
    sub_222783A04(a1, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F40, &qword_2227A15E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F48, &qword_2227A15E8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v80 = 0;
      memset(v79, 0, sizeof(v79));
      sub_222793F64(v79);
      goto LABEL_36;
    }

    sub_2227759E4(v79, v82);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_32:
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
LABEL_36:
      swift_beginAccess();

      sub_22278E1F4(v37);

      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      sub_22278ADFC();
      v35 = sub_22279EC50();

      v36 = [objc_opt_self() cborWithDictionary_];
      goto LABEL_37;
    }

    v33 = Strong;
    (*(*Strong + 176))(v81);
    v34 = v81[0];
    sub_222793908(v81[0]);
    if (v34 < 4)
    {

      goto LABEL_32;
    }

    v76 = v31;
    v39 = v83;
    v40 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v41 = *(v40 + 16);
    v71[2] = v33;
    v42 = v40;
    v15 = v76;
    v43 = v41(v33, v39, v42);
    v44 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_keyOrderList;
    swift_beginAccess();
    *(v15 + v44) = MEMORY[0x277D84F90];

    v45 = *(v43 + 16);
    v72 = v44;
    if (!v45)
    {

LABEL_55:
      v55 = *(v15 + v44);
      if (!(v55 >> 62))
      {
        v78 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_57:
        v56 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
        swift_beginAccess();
        v57 = *(v15 + v56);
        if ((v57 & 0xC000000000000001) != 0)
        {

          v58 = sub_22279EFA0();
        }

        else
        {
          v58 = *(v57 + 16);
        }

        if (v78 == v58)
        {

          sub_22278E1F4(v59);

          sub_222782C2C(0, qword_280BC4448, off_2784B4108);
          sub_22278ADFC();

          v60 = sub_22279EC50();

          v61 = sub_22279ED70();

          v62 = [objc_opt_self() cborWithDictionary:v60 keyOrderList:v61];
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1Tm(v82);
          return v62;
        }

        else
        {
          swift_beginAccess();

          sub_22279EE90();
          v63 = sub_22279EEE0();
          swift_allocError();
          v65 = v64;
          v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F08, &qword_2227A11A0) + 48);
          v67 = a1[3];
          v68 = __swift_project_boxed_opaque_existential_1(a1, v67);
          v65[3] = v67;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v65);
          (*(*(v67 - 8) + 16))(boxed_opaque_existential_1Tm, v68, v67);
          v70 = v85;
          (*(v85 + 16))(v65 + v66, v6, v4);
          (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D841A8], v63);
          swift_willThrow();
          swift_unknownObjectRelease();

          (*(v70 + 8))(v6, v4);
          __swift_destroy_boxed_opaque_existential_1Tm(v82);
        }

        return v14;
      }

LABEL_72:
      v78 = sub_22279EFA0();
      goto LABEL_57;
    }

    v77 = v45;
    v74 = objc_opt_self();
    v71[1] = v43;
    v46 = v43 + 32;
    v73 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
    swift_beginAccess();
    while (1)
    {
      sub_222783A04(v46, v81);
      __swift_project_boxed_opaque_existential_1(v81, v81[3]);
      sub_22279F550();
      v49 = sub_22279ECA0();

      v50 = [v74 cborWithUTF8String_];

      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      v51 = v76;
      v52 = *(v76 + v73);
      if ((v52 & 0xC000000000000001) == 0)
      {
        break;
      }

      v75 = v50;
      v48 = v50;
      v53 = sub_22279EFB0();

      if (v53)
      {
        swift_unknownObjectRelease();
        v51 = v76;
LABEL_41:
        v47 = v72;
        swift_beginAccess();
        v75 = v75;
        MEMORY[0x223DBFFB0]();
        if (*((*(v51 + v47) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v51 + v47) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22279EDA0();
        }

        v48 = v75;
        sub_22279EDB0();
        swift_endAccess();
      }

LABEL_45:
      v46 += 40;
      if (!--v77)
      {

        v15 = v76;
        v44 = v72;
        goto LABEL_55;
      }
    }

    if (!*(v52 + 16))
    {

      goto LABEL_45;
    }

    sub_222794F78(v50);
    if ((v54 & 1) == 0)
    {

      goto LABEL_45;
    }

    v75 = v50;

    goto LABEL_41;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t static CBOREncoder.DictionaryEncodingStrategy.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      if (v3 != 2)
      {
        goto LABEL_17;
      }

      sub_222793908(2uLL);
      v5 = 2;
    }

    else
    {
      if (v2 != 3)
      {
LABEL_10:
        if (v3 >= 4)
        {
          v6 = *(v2 + 16);
          v8 = *(v3 + 16);
          v9 = v6;
          sub_2227938F8(v3);
          sub_2227938F8(v2);
          v4 = static CBOREncoder.DictionaryEncodingStrategy.== infix(_:_:)(&v9, &v8);
          sub_222793908(v2);
          sub_222793908(v3);
          return v4 & 1;
        }

LABEL_17:
        sub_2227938F8(*a2);
        sub_2227938F8(v2);
        sub_222793908(v2);
        sub_222793908(v3);
        v4 = 0;
        return v4 & 1;
      }

      if (v3 != 3)
      {
        goto LABEL_17;
      }

      sub_222793908(3uLL);
      v5 = 3;
    }

LABEL_16:
    sub_222793908(v5);
    v4 = 1;
    return v4 & 1;
  }

  if (!v2)
  {
    if (v3)
    {
      goto LABEL_17;
    }

    sub_222793908(0);
    v5 = 0;
    goto LABEL_16;
  }

  if (v2 != 1)
  {
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    goto LABEL_17;
  }

  v4 = 1;
  sub_222793908(1uLL);
  sub_222793908(1uLL);
  return v4 & 1;
}

void CBOREncoder.DictionaryEncodingStrategy.hash(into:)()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }

LABEL_8:
    v3 = *(v1 + 16);
    MEMORY[0x223DC0720](1);
    sub_22278BA54(v3);
    return;
  }

  if (!v1)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 2;
LABEL_11:
  MEMORY[0x223DC0720](v2);
}

uint64_t CBOREncoder.DictionaryEncodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_22279F4C0();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 2;
LABEL_11:
      MEMORY[0x223DC0720](v2);
      return sub_22279F4F0();
    }
  }

  v3 = *(v1 + 16);
  MEMORY[0x223DC0720](1);
  sub_22278BA54(v3);
  return sub_22279F4F0();
}

void sub_22278D6AC()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }

LABEL_8:
    v3 = *(v1 + 16);
    MEMORY[0x223DC0720](1);
    sub_22278BA54(v3);
    return;
  }

  if (!v1)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 2;
LABEL_11:
  MEMORY[0x223DC0720](v2);
}

uint64_t sub_22278D730(uint64_t a1)
{
  v2 = *v1;
  sub_22279F4C0();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 2;
LABEL_11:
      MEMORY[0x223DC0720](v3);
      return sub_22279F4F0();
    }
  }

  v4 = *(v2 + 16);
  MEMORY[0x223DC0720](1);
  sub_22278BA54(v4);
  return sub_22279F4F0();
}

unint64_t sub_22278D7DC@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *a1 = v3;
  return sub_2227938F8(v3);
}

unint64_t sub_22278D824(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  return sub_222793908(v3);
}

uint64_t CBOREncoder.DateEncodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_22279F4C0();
  MEMORY[0x223DC0720](v1);
  return sub_22279F4F0();
}

uint64_t sub_22278D948@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_22278D98C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t CBOREncoder.deinit()
{

  sub_222793908(*(v0 + 24));
  return v0;
}

uint64_t CBOREncoder.__deallocating_deinit()
{

  sub_222793908(*(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

uint64_t sub_22278DA84@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 152))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

BOOL sub_22278DAD4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_22279EFA0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  return v2 == *(*(v0 + 24) + 16);
}

uint64_t sub_22278DB5C()
{

  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_22278DBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 + 16;
  if ((*(*v3 + 184))(a1))
  {
    swift_beginAccess();
    v7 = sub_22278DDBC();
    swift_endAccess();
    v8 = v7;
LABEL_12:
    swift_beginAccess();
    type metadata accessor for _CBOREncoderKeyContainer(0, a2, a3, v12);
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v13 = v8;
    swift_getWitnessTable();
    sub_22279F080();

    return;
  }

  swift_beginAccess();
  v9 = *v6;
  if (!(*v6 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = sub_22279EFA0();
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_5:
  v6 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_16:

  MEMORY[0x223DC00C0](v6, v9);

LABEL_10:
  type metadata accessor for _CBORDictionary();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v8 = v11;
    swift_unknownObjectRetain();
    goto LABEL_12;
  }

LABEL_19:
  swift_unknownObjectRelease();
  __break(1u);
}

id sub_22278DDBC()
{
  v1 = type metadata accessor for _CBORDictionary();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
  v4 = MEMORY[0x277D84F90];
  *&v2[v3] = sub_2227814B8(MEMORY[0x277D84F90]);
  *&v2[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_keyOrderList] = v4;
  v2[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_maintainKeySetOrder] = 0;
  v7.receiver = v2;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x223DBFFB0]();
  if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  sub_22279EDB0();
  return v5;
}

void sub_22278DEA0(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1 + 16;
  if ((*(*v1 + 184))())
  {
    swift_beginAccess();
    v5 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    MEMORY[0x223DBFFB0]();
    if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22279EDA0();
    }

    sub_22279EDB0();
    swift_endAccess();
    v6 = v5;
    goto LABEL_14;
  }

  swift_beginAccess();
  v7 = *v4;
  if (!(*v4 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = sub_22279EFA0();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_7:
  v4 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_18:

  MEMORY[0x223DC00C0](v4, v7);

LABEL_12:
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v6 = v9;
    swift_unknownObjectRetain();
LABEL_14:
    swift_beginAccess();
    v10 = *(v2 + 24);
    a1[3] = &type metadata for _CBOREncoderUnkeyedContainer;
    a1[4] = sub_222793E58();

    *a1 = v10;
    a1[1] = v6;
    a1[2] = v2;
    return;
  }

LABEL_21:
  swift_unknownObjectRelease();
  __break(1u);
}

uint64_t sub_22278E0C4()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 104))(result);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22278E174@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _CBOREncoder();
  a1[4] = sub_222793F1C(qword_280BC4558, type metadata accessor for _CBOREncoder, &unk_2227A14D8);
  *a1 = v3;
}

unint64_t sub_22278E1F4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v1 = a1;
    }

    v2 = ~(v1 >> 1) & 0x4000000000000000 | v1;
  }

  else
  {
    sub_222782C2C(0, qword_280BC4448, off_2784B4108);
    sub_22278ADFC();

    v3 = sub_22279EF80();
    return ~(v3 >> 1) & 0x4000000000000000 | v3;
  }

  return v2;
}

void sub_22278E298(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_222793008(v7, v8, v4, *(a2 + 24));
  v10 = [objc_opt_self() cborNil];
  sub_22278BAAC(v9, v10);
}

void sub_22278E3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v7 + 16))(v9, a2, v6);
  v11 = sub_222793008(v9, v10, v6, *(a3 + 24));
  v12 = objc_opt_self();
  v13 = &selRef_cborTrue;
  if ((v5 & 1) == 0)
  {
    v13 = &selRef_cborFalse;
  }

  v14 = [v12 *v13];
  sub_22278BAAC(v11, v14);
}

void sub_22278E548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a2;
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v7 + 16))(v9, a3, v6);
  v11 = sub_222793008(v9, v10, v6, *(a4 + 24));
  v12 = sub_22279ECA0();
  v13 = [objc_opt_self() cborWithUTF8String_];

  sub_22278BAAC(v11, v13);
}

void sub_22278E6B8(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_222793008(v9, v10, v6, *(a2 + 24));
  v12 = [objc_opt_self() cborWithDouble_];
  sub_22278BAAC(v11, v12);
}

void sub_22278E814(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_222793008(v9, v10, v6, *(a2 + 24));
  v12 = objc_opt_self();
  *&v13 = a3;
  v14 = [v12 cborWithFloat_];
  sub_22278BAAC(v11, v14);
}

void sub_22278E970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v7 + 16))(v9, a2, v6);
  v11 = sub_222793008(v9, v10, v6, *(a3 + 24));
  v12 = [objc_opt_self() cborWithInteger_];
  sub_22278BAAC(v11, v12);
}

void sub_22278EAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v7 + 16))(v9, a2, v6);
  v11 = sub_222793008(v9, v10, v6, *(a3 + 24));
  v12 = [objc_opt_self() cborWithInteger_];
  sub_22278BAAC(v11, v12);
}

void sub_22278EC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v7 + 16))(v9, a2, v6);
  v11 = sub_222793008(v9, v10, v6, *(a3 + 24));
  v12 = [objc_opt_self() cborWithInteger_];
  sub_22278BAAC(v11, v12);
}

void sub_22278ED78(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v15 = a4;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v10, a2, v7);
  v12 = sub_222793008(v10, v11, v7, *(a3 + 24));
  v13 = [objc_opt_self() *v15];
  sub_22278BAAC(v12, v13);
}

void sub_22278EED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v7 + 16))(v9, a2, v6);
  v11 = sub_222793008(v9, v10, v6, *(a3 + 24));
  v12 = [objc_opt_self() cborWithUnsignedInteger_];
  sub_22278BAAC(v11, v12);
}

void sub_22278F028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v7 + 16))(v9, a2, v6);
  v11 = sub_222793008(v9, v10, v6, *(a3 + 24));
  v12 = [objc_opt_self() cborWithUnsignedInteger_];
  sub_22278BAAC(v11, v12);
}

void sub_22278F17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v7 + 16))(v9, a2, v6);
  v11 = sub_222793008(v9, v10, v6, *(a3 + 24));
  v12 = [objc_opt_self() cborWithUnsignedInteger_];
  sub_22278BAAC(v11, v12);
}

uint64_t sub_22278F2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  v40 = a5;
  v33 = a3;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v37 = v5;
  v14 = *(v5 + 16);
  v15 = *(v8 + 16);
  v34 = v16;
  v15(&v32 - v12);
  swift_beginAccess();
  v17 = *(v14 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 24) = v17;
  v38 = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_222789FB0(0, v17[2] + 1, 1, v17);
    *(v14 + 24) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_222789FB0((v19 > 1), v20 + 1, 1, v17);
    *(v14 + 24) = v17;
  }

  (v15)(v11, v13, v7);
  v32 = v15;
  v21 = *(v33 + 24);
  sub_222793174(v20, v11, (v14 + 24), v7, v21);
  (*(v8 + 8))(v13, v7);
  *(v14 + 24) = v17;
  swift_endAccess();
  v22 = v37;
  v23 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  v32(v11, v34, v7);
  v24 = sub_222793008(v11, v23, v7, v21);
  v25 = v38;
  v39[3] = v38;
  v39[4] = v40;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v39);
  (*(*(v25 - 8) + 16))(boxed_opaque_existential_1Tm, v35, v25);
  v27 = v36;
  v28 = sub_22278C668(v39);
  if (v27)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v29 = v22;
  }

  else
  {
    v36 = v21;
    if (!v28)
    {
      v28 = [objc_opt_self() cborNil];
    }

    v30 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    sub_22278BAAC(v24, v30);

    swift_unknownObjectRelease();
    v29 = v22;
  }

  return sub_22278F600(v29);
}

uint64_t sub_22278F600(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_222792F90(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 24) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_22278F6B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v45 = a4;
  v46 = a5;
  v44 = a6;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  v42 = v11;
  v18 = *(v11 + 16);
  v41 = a2;
  v47 = v18;
  v18(v16, a2, v10);
  v43 = *(a3 + 24);
  v19 = sub_222793008(v16, v17, v10, v43);
  v20 = v7[1];
  v21 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v48 = v19;
  if ((v22 & 0xC000000000000001) == 0)
  {
    if (*(v22 + 16))
    {

      v25 = sub_222794F78(v48);
      if (v26)
      {
        v24 = *(*(v22 + 56) + 8 * v25);
        swift_unknownObjectRetain();

        goto LABEL_7;
      }
    }

LABEL_10:
    v30 = type metadata accessor for _CBORDictionary();
    v31 = objc_allocWithZone(v30);
    v32 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
    v33 = MEMORY[0x277D84F90];
    *&v31[v32] = sub_2227814B8(MEMORY[0x277D84F90]);
    *&v31[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_keyOrderList] = v33;
    v31[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_maintainKeySetOrder] = 0;
    v50.receiver = v31;
    v50.super_class = v30;
    v29 = objc_msgSendSuper2(&v50, sel_init);
    sub_22278BAAC(v48, v29);

    v28 = v47;
    goto LABEL_11;
  }

  v23 = v19;
  v24 = sub_22279EFB0();

  if (!v24)
  {
    goto LABEL_10;
  }

LABEL_7:
  ObjectType = swift_getObjectType();
  *&v51 = v24;
  sub_2227828C4(&v51, &v53);
  sub_22278B474(&v53, &v51);
  type metadata accessor for _CBORDictionary();
  v27 = swift_dynamicCast();
  v28 = v47;
  if (!v27)
  {
    __break(1u);
    return;
  }

  sub_2227828C4(&v53, &v51);
  swift_dynamicCast();
  v29 = v49;
LABEL_11:
  v28(v14, v41, v10);
  v34 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_222789FB0(0, v34[2] + 1, 1, v34);
    *v7 = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_222789FB0((v36 > 1), v37 + 1, 1, v34);
    *v7 = v34;
  }

  v28(v16, v14, v10);
  sub_222793174(v37, v16, v7, v10, v43);
  (*(v42 + 8))(v14, v10);
  *v7 = v34;
  v38 = v7[2];
  *&v53 = v34;
  *(&v53 + 1) = v29;
  v54 = v38;
  type metadata accessor for _CBOREncoderKeyContainer(0, v45, v46, v39);

  swift_getWitnessTable();
  sub_22279F080();
  sub_22278FB28(v7);
}

uint64_t sub_22278FB28(uint64_t *a1)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
LABEL_6:
    result = sub_222792F90(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *v1 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_22278FBA8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  v16 = *(v9 + 16);
  v37 = a1;
  v39 = v16;
  v40 = v9 + 16;
  v16(v14, a1, v8);
  v17 = *(a2 + 24);
  v38 = v14;
  v41 = sub_222793008(v14, v15, v8, v17);
  v18 = v4[1];
  v19 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
  swift_beginAccess();
  v20 = *(v18 + v19);
  if ((v20 & 0xC000000000000001) == 0)
  {
    if (*(v20 + 16))
    {

      v27 = sub_222794F78(v41);
      if (v28)
      {
        v26 = *(*(v20 + 56) + 8 * v27);
        swift_unknownObjectRetain();

        goto LABEL_7;
      }
    }

LABEL_10:
    v29 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    sub_22278BAAC(v41, v29);

    goto LABEL_11;
  }

  v21 = v17;
  v22 = a3;
  v23 = v12;
  v24 = v9;
  v25 = v41;
  v26 = sub_22279EFB0();

  v9 = v24;
  v12 = v23;
  a3 = v22;
  v17 = v21;

  if (!v26)
  {
    goto LABEL_10;
  }

LABEL_7:
  ObjectType = swift_getObjectType();
  *&v43 = v26;
  sub_2227828C4(&v43, v45);
  sub_22278B474(v45, &v43);
  sub_222782C2C(0, qword_27D019F60, 0x277CBEB18);
  if (!swift_dynamicCast())
  {
    __break(1u);
    return;
  }

  sub_2227828C4(v45, &v43);
  swift_dynamicCast();
  v29 = v42;
LABEL_11:
  v39(v12, v37, v8);
  v30 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_222789FB0(0, v30[2] + 1, 1, v30);
    *v4 = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    v30 = sub_222789FB0((v32 > 1), v33 + 1, 1, v30);
    *v4 = v30;
  }

  v34 = v38;
  v39(v38, v12, v8);
  sub_222793174(v33, v34, v4, v8, v17);
  (*(v9 + 8))(v12, v8);
  *v4 = v30;
  v35 = v4[2];
  a3[3] = &type metadata for _CBOREncoderUnkeyedContainer;
  a3[4] = sub_222793E58();
  *a3 = v30;
  a3[1] = v29;
  a3[2] = v35;

  sub_22278FB28(v4);
}

uint64_t sub_22278FFD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);

  result = sub_22278B4D0(0x7265707573, 0xE500000000000000);
  if (v5)
  {
    v8 = result;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = *(v1 + 8);
    v13 = type metadata accessor for _CBORReferenceEncoder();
    v14 = swift_allocObject();
    v15 = sub_222793370(v3, v8, v9, v10, v11 & 1, v12, v14);
    a1[3] = v13;
    result = sub_222793F1C(&qword_27D019F58, type metadata accessor for _CBORReferenceEncoder, &unk_2227A1590);
    a1[4] = result;
    *a1 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2227900D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _CBORReferenceEncoder();
  v13 = *(v3 + 8);
  v12 = *(v3 + 16);
  (*(v8 + 16))(v10, a1, v7);
  v14 = *(a2 + 24);

  v15 = sub_22279320C(v12, v10, v13, v11, v7, v14);
  a3[3] = v11;
  result = sub_222793F1C(&qword_27D019F58, type metadata accessor for _CBORReferenceEncoder, &unk_2227A1590);
  a3[4] = result;
  *a3 = v15;
  return result;
}

uint64_t sub_2227906B0(double a1)
{
  v3 = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  *&v16 = 0x3A6D657449;
  *(&v16 + 1) = 0xE500000000000000;
  v19 = [v5 count];
  v7 = sub_22279F090();
  MEMORY[0x223DBFF30](v7);

  swift_beginAccess();
  v8 = *(v6 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_222789FB0(0, v8[2] + 1, 1, v8);
    *(v6 + 24) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_222789FB0((v10 > 1), v11 + 1, 1, v8);
  }

  v17 = &type metadata for CBORCodingKey;
  v18 = sub_222782F30();
  v12 = swift_allocObject();
  *&v16 = v12;
  *(v12 + 16) = 0x3A6D657449;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  v8[2] = v11 + 1;
  sub_2227759E4(&v16, &v8[5 * v11 + 4]);
  *(v6 + 24) = v8;
  swift_endAccess();
  v17 = MEMORY[0x277D839F8];
  v18 = MEMORY[0x277D83A08];
  *&v16 = a1;
  v13 = sub_22278C668(&v16);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    return sub_22278F600(v3);
  }

  v14 = v13;
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  if (v14)
  {
    [v5 addObject_];
    swift_unknownObjectRelease();
    return sub_22278F600(v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_2227908B8(float a1)
{
  v3 = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  *&v16 = 0x3A6D657449;
  *(&v16 + 1) = 0xE500000000000000;
  v19 = [v5 count];
  v7 = sub_22279F090();
  MEMORY[0x223DBFF30](v7);

  swift_beginAccess();
  v8 = *(v6 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_222789FB0(0, v8[2] + 1, 1, v8);
    *(v6 + 24) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_222789FB0((v10 > 1), v11 + 1, 1, v8);
  }

  v17 = &type metadata for CBORCodingKey;
  v18 = sub_222782F30();
  v12 = swift_allocObject();
  *&v16 = v12;
  *(v12 + 16) = 0x3A6D657449;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  v8[2] = v11 + 1;
  sub_2227759E4(&v16, &v8[5 * v11 + 4]);
  *(v6 + 24) = v8;
  swift_endAccess();
  v17 = MEMORY[0x277D83A90];
  v18 = MEMORY[0x277D83AA0];
  *&v16 = a1;
  v13 = sub_22278C668(&v16);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    return sub_22278F600(v3);
  }

  v14 = v13;
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  if (v14)
  {
    [v5 addObject_];
    swift_unknownObjectRelease();
    return sub_22278F600(v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_222790AC0(uint64_t a1, ValueMetadata *a2, unint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 16);
  v19 = *(v3 + 8);
  *&v21 = 0x3A6D657449;
  *(&v21 + 1) = 0xE500000000000000;
  v24 = [v19 count];
  v8 = sub_22279F090();
  MEMORY[0x223DBFF30](v8);

  swift_beginAccess();
  v9 = *(v7 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 24) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_222789FB0(0, v9[2] + 1, 1, v9);
    *(v7 + 24) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_222789FB0((v11 > 1), v12 + 1, 1, v9);
  }

  v22 = &type metadata for CBORCodingKey;
  v23 = sub_222782F30();
  v13 = swift_allocObject();
  *&v21 = v13;
  *(v13 + 16) = 0x3A6D657449;
  *(v13 + 24) = 0xE500000000000000;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  v9[2] = v12 + 1;
  sub_2227759E4(&v21, &v9[5 * v12 + 4]);
  *(v7 + 24) = v9;
  swift_endAccess();
  v22 = a2;
  v23 = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v21);
  (*(a2[-1].Description + 2))(boxed_opaque_existential_1Tm, a1, a2);
  v15 = v25;
  v16 = sub_22278C668(&v21);
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    return sub_22278F600(v4);
  }

  v17 = v16;
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  if (v17)
  {
    [v19 addObject_];
    swift_unknownObjectRelease();
    return sub_22278F600(v4);
  }

  __break(1u);
  return result;
}

void sub_222790CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for _CBORDictionary();
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_content;
  v10 = MEMORY[0x277D84F90];
  *&v8[v9] = sub_2227814B8(MEMORY[0x277D84F90]);
  *&v8[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_keyOrderList] = v10;
  v8[OBJC_IVAR____TtC11CBORLibraryP33_7693559CB90E2482CACD4C8EAD5C623015_CBORDictionary_maintainKeySetOrder] = 0;
  v26.receiver = v8;
  v26.super_class = v7;
  v11 = objc_msgSendSuper2(&v26, sel_init);
  v12 = [*(v4 + 8) count];
  *&v21 = 0x3A6D657449;
  *(&v21 + 1) = 0xE500000000000000;
  v25 = v12;
  v13 = sub_22279F090();
  MEMORY[0x223DBFF30](v13);

  v14 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_222789FB0(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_222789FB0((v15 > 1), v16 + 1, 1, v14);
  }

  v23 = &type metadata for CBORCodingKey;
  v24 = sub_222782F30();
  v17 = swift_allocObject();
  *&v21 = v17;
  *(v17 + 16) = 0x3A6D657449;
  *(v17 + 24) = 0xE500000000000000;
  *(v17 + 32) = 0;
  *(v17 + 40) = 1;
  v14[2] = v16 + 1;
  sub_2227759E4(&v21, &v14[5 * v16 + 4]);
  *v4 = v14;
  v18 = *(v4 + 16);
  *&v21 = v14;
  *(&v21 + 1) = v11;
  v22 = v18;
  type metadata accessor for _CBOREncoderKeyContainer(0, a2, a3, v19);

  v20 = v11;
  swift_getWitnessTable();
  sub_22279F080();
  sub_22278FB28(v4);
}

uint64_t sub_222790F28@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v5 = [*(v1 + 8) count];
  *&v13 = 0x3A6D657449;
  *(&v13 + 1) = 0xE500000000000000;
  v16 = v5;
  v6 = sub_22279F090();
  MEMORY[0x223DBFF30](v6);

  v7 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_222789FB0(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_222789FB0((v8 > 1), v9 + 1, 1, v7);
  }

  v14 = &type metadata for CBORCodingKey;
  v15 = sub_222782F30();
  v10 = swift_allocObject();
  *&v13 = v10;
  *(v10 + 16) = 0x3A6D657449;
  *(v10 + 24) = 0xE500000000000000;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v7[2] = v9 + 1;
  sub_2227759E4(&v13, &v7[5 * v9 + 4]);
  *v2 = v7;
  v11 = v2[2];
  a1[3] = &type metadata for _CBOREncoderUnkeyedContainer;
  a1[4] = sub_222793E58();
  *a1 = v7;
  a1[1] = v4;
  a1[2] = v11;

  return sub_22278FB28(v2);
}

void sub_2227910E0()
{
  v1 = *(v0 + 8);
  v2 = [objc_opt_self() cborNil];
  [v1 addObject_];
}

void sub_22279114C(char a1)
{
  v3 = *(v1 + 8);
  v4 = objc_opt_self();
  v5 = &selRef_cborTrue;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_cborFalse;
  }

  v6 = [v4 *v5];
  [v3 addObject_];
}

void sub_2227911D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = sub_22279ECA0();
  v5 = [objc_opt_self() cborWithUTF8String_];

  [v3 addObject_];
}

void sub_22279127C(char a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithInteger_];
  [v2 addObject_];
}

void sub_2227912F0(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithInteger_];
  [v2 addObject_];
}

void sub_222791364(int a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithInteger_];
  [v2 addObject_];
}

void sub_2227913F0(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithUnsignedInteger_];
  [v2 addObject_];
}

void sub_222791464(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithUnsignedInteger_];
  [v2 addObject_];
}

void sub_2227914D8(unsigned int a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_opt_self() cborWithUnsignedInteger_];
  [v2 addObject_];
}

void sub_22279154C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(v4 + 8);
  v6 = [objc_opt_self() *a4];
  [v5 addObject_];
}

uint64_t sub_222791918@<X0>(uint64_t *a1@<X8>)
{
  v5 = v1 + 8;
  v3 = *(v1 + 8);
  v4 = *(v5 + 8);

  v6 = [v3 count];
  v7 = type metadata accessor for _CBORReferenceEncoder();
  swift_allocObject();
  v8 = sub_2227928FC(v4, v6, v3);
  a1[3] = v7;
  result = sub_222793F1C(&qword_27D019F58, type metadata accessor for _CBORReferenceEncoder, &unk_2227A1590);
  a1[4] = result;
  *a1 = v8;
  return result;
}

void sub_2227919E0(char a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = &selRef_cborTrue;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_cborFalse;
  }

  v6 = [v4 *v5];
  v7 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v7);
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791ACC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_22279ECA0();
  v5 = [objc_opt_self() cborWithUTF8String_];

  v6 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v6);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791BB0(char a1)
{
  v2 = [objc_opt_self() cborWithInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791C8C(__int16 a1)
{
  v2 = [objc_opt_self() cborWithInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791D68(int a1)
{
  v2 = [objc_opt_self() cborWithInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791E44(unsigned __int8 a1)
{
  v2 = [objc_opt_self() cborWithUnsignedInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791F20(unsigned __int16 a1)
{
  v2 = [objc_opt_self() cborWithUnsignedInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222791FFC(unsigned int a1)
{
  v2 = [objc_opt_self() cborWithUnsignedInteger_];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

uint64_t sub_2227920D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_22279EED0();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = a2;
  v28[4] = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
  v13 = *(a2 - 8);
  v14 = *(v13 + 16);
  v15 = v13 + 16;
  v14(boxed_opaque_existential_1Tm, a1, a2);
  v16 = sub_22278C668(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  if (v4)
  {
    return swift_willThrow();
  }

  v25 = v15;
  v26 = v14;
  v27 = a1;
  if (!v16)
  {
    swift_beginAccess();

    sub_22279EE90();
    v19 = sub_22279EEE0();
    swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F08, &qword_2227A11A0) + 48);
    v21[3] = a2;
    v23 = __swift_allocate_boxed_opaque_existential_1Tm(v21);
    v26(v23, v27, a2);
    v24 = v29;
    (*(v29 + 16))(v21 + v22, v11, v9);
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D841A8], v19);
    swift_willThrow();
    (*(v24 + 8))(v11, v9);
    return swift_willThrow();
  }

  v18 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v18);
  if (*((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_222792410()
{
  v1 = *v0;
  v2 = [objc_opt_self() cborNil];
  v3 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v3);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_22279252C(double a1)
{
  v2 = *v1;
  v3 = [objc_opt_self() cborWithDouble_];
  v4 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v4);
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_222792610(float a1)
{
  v3 = *v1;
  v4 = objc_opt_self();
  *&v5 = a1;
  v6 = [v4 cborWithFloat_];
  v7 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v7);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

void sub_2227927E4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *v4;
  v6 = [objc_opt_self() *a4];
  v7 = swift_beginAccess();
  MEMORY[0x223DBFFB0](v7);
  if (*((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  swift_unknownObjectRetain();
  sub_22279EDB0();
  swift_endAccess();
}

uint64_t sub_2227928FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *(v4 + 40) = a1;
  *(v4 + 48) = a3;
  *(v4 + 56) = a2;
  *(v4 + 64) = 0;
  swift_beginAccess();
  v8 = *(a1 + 24);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_weakInit();
    *(v4 + 16) = MEMORY[0x277D84F90];
    *(v4 + 24) = v8;
    swift_weakAssign();

    v10 = a3;

    *&v17 = 0x3A6D657449;
    *(&v17 + 1) = 0xE500000000000000;
    v20 = a2;
    swift_retain_n();
    v11 = sub_22279F090();
    MEMORY[0x223DBFF30](v11);

    swift_beginAccess();
    v12 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 24) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_222789FB0(0, v12[2] + 1, 1, v12);
      *(v4 + 24) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_222789FB0((v14 > 1), v15 + 1, 1, v12);
    }

    v18 = &type metadata for CBORCodingKey;
    v19 = sub_222782F30();
    v16 = swift_allocObject();
    *&v17 = v16;
    *(v16 + 16) = 0x3A6D657449;
    *(v16 + 24) = 0xE500000000000000;
    *(v16 + 32) = 0;
    *(v16 + 40) = 1;
    v12[2] = v15 + 1;
    sub_2227759E4(&v17, &v12[5 * v15 + 4]);
    *(v4 + 24) = v12;
    swift_endAccess();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_222792B18()
{
  swift_beginAccess();
  v1 = v0[2];
  if (v1 >> 62)
  {
    v2 = sub_22279EFA0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v3 = *(v0[3] + 16);
  v4 = v0[5];
  swift_beginAccess();
  return v2 == v3 + ~*(*(v4 + 24) + 16);
}

void sub_222792BD0()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  sub_222793EC4(v1, v2, v3);
}

void *sub_222792C04()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[2];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 == 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (!v3)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
      goto LABEL_10;
    }

LABEL_17:
    result = sub_22279EFD0();
    __break(1u);
    return result;
  }

  v3 = sub_22279EFA0();
  if (v3 != 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  swift_beginAccess();
  v4 = v0[2];
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!sub_22279EFA0())
  {
    goto LABEL_15;
  }

LABEL_5:
  v5 = sub_222792E0C();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  swift_endAccess();
LABEL_10:
  v7 = v0[6];
  v8 = v0[7];
  if (v1[8])
  {
    v9 = v7;
    v10 = v8;
    sub_22278BAAC(v10, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    [v7 insertObject:v6 atIndex:v1[7]];
    swift_unknownObjectRelease();
  }

  swift_weakDestroy();

  sub_222793EC4(v1[6], v1[7], *(v1 + 64));
  return v1;
}

uint64_t sub_222792DDC()
{
  v0 = sub_222792C04();

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

uint64_t sub_222792E0C()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_222792F2C();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_22279EFA0();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_222792E9C(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_222792E9C(result);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_22279EFA0();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

unint64_t sub_222792E9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_222792FA4(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_222792F2C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_222792FA4(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222792FA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22279EFA0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

id sub_222793008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 32))(v7);
  v8 = sub_22279F570();
  if (v9)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_22279F550();
    v11 = sub_22279ECA0();

    v12 = [ObjCClassFromMetadata cborWithUTF8String_];
  }

  else
  {
    v12 = [swift_getObjCClassFromMetadata() cborWithInteger_];
  }

  (*(v5 + 8))(v7, a3);
  return v12;
}

uint64_t sub_222793174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2227759E4(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_22279320C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  (*(v10 + 32))(&v19 - v14);
  type metadata accessor for _CBORReferenceEncoder();
  v16 = swift_allocObject();
  (*(v10 + 16))(v13, v15, a5);
  v17 = sub_2227935E4(a1, v13, a3, v16, a5, a6);
  (*(v10 + 8))(v15, a5);
  return v17;
}

uint64_t sub_222793370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  *(a7 + 40) = a1;
  v14 = objc_opt_self();

  v26 = a4;
  if (a5)
  {

    v15 = sub_22279ECA0();

    v16 = [v14 cborWithUTF8String_];
  }

  else
  {
    v16 = [v14 cborWithInteger_];
  }

  *(a7 + 48) = a6;
  *(a7 + 56) = v16;
  *(a7 + 64) = 1;
  swift_beginAccess();
  v17 = *(a1 + 24);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_weakInit();
    *(a7 + 16) = MEMORY[0x277D84F90];
    *(a7 + 24) = v17;
    swift_weakAssign();
    v19 = a6;
    v20 = v16;

    swift_beginAccess();
    v21 = *(a7 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a7 + 24) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_222789FB0(0, v21[2] + 1, 1, v21);
      *(a7 + 24) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_222789FB0((v23 > 1), v24 + 1, 1, v21);
    }

    v28 = &type metadata for CBORCodingKey;
    v29 = sub_222782F30();
    v25 = swift_allocObject();
    *&v27 = v25;
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    *(v25 + 32) = v26;
    *(v25 + 40) = a5 & 1;
    v21[2] = v24 + 1;
    sub_2227759E4(&v27, &v21[5 * v24 + 4]);
    *(a7 + 24) = v21;
    swift_endAccess();

    return a7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2227935E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  (*(v11 + 32))(&v30 - v15);
  *(a4 + 40) = a1;
  v17 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  v35 = v11;
  v18 = *(v11 + 16);
  v32 = v16;
  v33 = v18;
  v18(v14, v16, a5);

  v34 = a6;
  v19 = sub_222793008(v14, v17, a5, a6);
  v20 = a3;
  *(a4 + 48) = a3;
  *(a4 + 56) = v19;
  *(a4 + 64) = 1;
  swift_beginAccess();
  v21 = *(a1 + 24);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_weakInit();
    *(a4 + 16) = MEMORY[0x277D84F90];
    *(a4 + 24) = v21;
    v23 = (a4 + 24);
    swift_weakAssign();
    v31 = v20;
    v24 = v19;

    swift_beginAccess();
    v25 = *(a4 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 24) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_222789FB0(0, v25[2] + 1, 1, v25);
      *v23 = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_222789FB0((v27 > 1), v28 + 1, 1, v25);
      *v23 = v25;
    }

    v29 = v32;
    v33(v14, v32, a5);
    sub_222793174(v28, v14, (a4 + 24), a5, v34);
    *(a4 + 24) = v25;
    swift_endAccess();

    (*(v35 + 8))(v29, a5);

    return a4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2227938F8(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_222793908(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_22279391C()
{
  result = qword_27D019F10;
  if (!qword_27D019F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019F10);
  }

  return result;
}

unint64_t sub_222793974()
{
  result = qword_27D019F18;
  if (!qword_27D019F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019F18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11CBORLibrary11CBOREncoderC26DictionaryEncodingStrategyO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222793C6C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222793CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_222793D1C(void *result, int a2)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_222793DA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_222793DE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_222793E58()
{
  result = qword_27D019F38;
  if (!qword_27D019F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019F38);
  }

  return result;
}

void sub_222793EC4(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_222793F1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222793F64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F50, &qword_2227A15F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222793FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CBOR.EncodedCBOR.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v58 = a5;
  v54 = a4;
  v56 = a3;
  v7 = sub_22279EEA0();
  v55 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a2;
  v53 = *(a2 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v59;
  sub_22279F500();
  if (v19)
  {
    goto LABEL_14;
  }

  v51 = v16;
  v52 = v10;
  v49 = v18;
  v50 = v13;
  v59 = a1;
  v20 = v58;
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  sub_222784278();
  sub_22279F2A0();
  v21 = v60[0];
  if (![v60[0] isEmbeddedCBORData] || (v22 = objc_msgSend(v21, sel_data)) == 0)
  {
    v36 = v52;
    sub_22279EE90();
    v37 = sub_22279EEB0();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v39 = type metadata accessor for CBOR.EncodedCBOR(0, v57, v56, v54);
    v41 = v55;
    (v55)[2](v39 + v40, v36, v7);
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();

    (v41[1])(v36, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    a1 = v59;
LABEL_14:
    v47 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  v55 = v21;
  v23 = v22;
  v24 = sub_22279EC10();
  v26 = v25;

  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v27 = sub_22279F510();
  v28 = v56;
  if (qword_27D019D40 != -1)
  {
    swift_once();
  }

  v29 = sub_22279EF70();
  v30 = __swift_project_value_buffer(v29, qword_27D01A160);
  v31 = v57;
  v32 = v51;
  if (!*(v27 + 16) || (v33 = sub_222794ED0(v30), (v34 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_22278B474(*(v27 + 56) + 32 * v33, v60);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v35 = 0;
    goto LABEL_13;
  }

  v35 = v62;
LABEL_13:
  type metadata accessor for CBORDecoder();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  sub_222775F8C(v31, v35, v31, v28, v32);

  sub_22278414C(v24, v26);
  v44 = *(v53 + 32);
  v45 = v49;
  v44(v49, v32, v31);
  v46 = v50;
  v44(v50, v45, v31);
  v44(v20, v46, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  v47 = v59;
  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

uint64_t CBOR.EncodedCBOR.encode(to:)(void *a1, uint64_t a2)
{
  type metadata accessor for CBOREncoder();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  *(v6 + 24) = 2;
  *(v6 + 32) = 0;
  v7 = sub_22278BFA0(v2, *(a2 + 16), *(a2 + 32));
  if (v3)
  {
  }

  v10 = v7;
  v11 = v8;
  sub_22278AE78(v7, v8);
  v12 = sub_22279EC00();
  v13 = [objc_opt_self() cborWithEmbeddedCBORData_];

  sub_22278414C(v10, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F530();
  v14[6] = v13;
  __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_22278AECC();
  sub_22279F2D0();
  sub_22278414C(v10, v11);

  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t CBOR.EncodedCBORTag24Data.decode()(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for CBORDecoder();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  sub_222775D30(*(a1 + 16), v4, v3, *(a1 + 16), *(a1 + 24));
}

uint64_t CBOR.EncodedCBORTag24Data.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CBOR.EncodedCBORTag24Data.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v8 = sub_22279EEA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F500();
  if (v5)
  {
    goto LABEL_8;
  }

  v28 = v9;
  v29 = a1;
  v27 = v11;
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_222784278();
  sub_22279F2A0();
  v12 = v34;
  if (![v34 isEmbeddedCBORData] || objc_msgSend(v12, sel_type) != 2)
  {
    v18 = v12;
    v19 = v27;
    sub_22279EE90();
    v20 = sub_22279EEB0();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v22 = type metadata accessor for CBOR.EncodedCBOR(0, v30, v31, v32);
    v24 = v28;
    (*(v28 + 16))(v22 + v23, v19, v8);
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();

    (*(v24 + 8))(v19, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    a1 = v29;
LABEL_8:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  v13 = [objc_opt_self() dataWithCBOR_];
  v14 = sub_22279EC10();
  v16 = v15;

  *a5 = v14;
  a5[1] = v16;
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  v17 = v29;
  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t CBOR.EncodedCBORTag24Data.encode(to:)(void *a1, uint64_t *a2)
{
  v4 = sub_22279EED0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22279EC00();
  v9 = [objc_opt_self() cborWithEncodedTag24Data_];

  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22279F530();
    v16 = v9;
    __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_22278AECC();
    sub_22279F2D0();

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    sub_22279EE90();
    v11 = sub_22279EEE0();
    swift_allocError();
    v13 = v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019F08, &qword_2227A11A0) + 48);
    v15 = type metadata accessor for CBOR.EncodedCBOR(0, a2[2], a2[3], a2[4]);
    v13[3] = swift_getMetatypeMetadata();
    *v13 = v15;
    (*(v5 + 16))(v13 + v14, v7, v4);
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D841A8], v11);
    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_222794ED0(uint64_t a1)
{
  sub_22279EF70();
  v2 = sub_22279EC80();

  return sub_222794FBC(a1, v2);
}

unint64_t sub_222794F34(uint64_t a1)
{
  v2 = sub_22279EE30();

  return sub_222795154(a1, v2);
}

unint64_t sub_222794F78(uint64_t a1)
{
  v2 = sub_22279EDE0();

  return sub_22279521C(a1, v2);
}

unint64_t sub_222794FBC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_22279EF70();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_22279EC90();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_222795154(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2227829D0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DC0090](v9, a1);
      sub_22278291C(v9);
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

unint64_t sub_22279521C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_222795D80();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22279EDF0();

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

uint64_t sub_2227952E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22279EBC0();
    if (v10)
    {
      v11 = sub_22279EBE0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22279EBD0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22279EBC0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22279EBE0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22279EBD0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_222795510(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2227956A0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22278414C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2227952E0(v13, a3, a4, &v12);
  v10 = v4;
  sub_22278414C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2227956A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22279EBC0();
  v11 = result;
  if (result)
  {
    result = sub_22279EBE0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22279EBD0();
  sub_2227952E0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_222795758(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22278AE78(a3, a4);
          return sub_222795510(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2227958C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222795938(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_222795A78(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_222795C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_222795CC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_222795D1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_222795D80()
{
  result = qword_280BC4448[0];
  if (!qword_280BC4448[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280BC4448);
  }

  return result;
}

id _getRFC3339DateFormatter(int a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  if (a1)
  {
    v4 = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
  }

  else
  {
    v4 = @"yyyy-MM-dd";
  }

  [v2 setDateFormat:v4];
  v5 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v5];

  return v2;
}

void sub_22279C19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}