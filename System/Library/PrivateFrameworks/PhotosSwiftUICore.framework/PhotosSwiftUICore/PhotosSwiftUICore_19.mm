uint64_t sub_1C116B188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C1266D50() & 1;
  }
}

uint64_t sub_1C116B1CC()
{
  sub_1C116E8B4();
  OUTLINED_FUNCTION_41_0();
  return sub_1C12666B0() & 1;
}

uint64_t sub_1C116B264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1C116B2F0(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C116B2DC(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1C116B994(v4);
  *a1 = v2;
}

uint64_t sub_1C116B35C(uint64_t *a1, double a2, double a3)
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1C0FBF8EC(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1C116BA98(v10, a2, a3);
  return sub_1C1266A30();
}

uint64_t sub_1C116B3F0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = (&v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1C110230C(0, v5, v6);
    v7 = sub_1C116B590(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_1C116B6FC(v9, v5, sub_1C116E464);

    MEMORY[0x1C68F1630](v9, -1, -1);
  }

  return v7;
}

uint64_t sub_1C116B590(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *(a3 + 16);
  if (v18)
  {
    v15 = 0;
    v5 = 0;
    v17 = a3 + 32;
    while (2)
    {
      v21 = v5 + 1;
      sub_1C0FF4B88(v17 + 40 * v5, v20);
      v6 = sub_1C12668B0();
      v7 = ~(-1 << *(a4 + 32));
      do
      {
        v8 = v6 & v7;
        v9 = (v6 & v7) >> 6;
        v10 = 1 << (v6 & v7);
        if ((v10 & *(a4 + 56 + 8 * v9)) == 0)
        {
          sub_1C0FD1A08(v20);
          goto LABEL_10;
        }

        sub_1C0FF4B88(*(a4 + 48) + 40 * v8, v19);
        v11 = MEMORY[0x1C68F0200](v19, v20);
        sub_1C0FD1A08(v19);
        v6 = v8 + 1;
      }

      while ((v11 & 1) == 0);
      result = sub_1C0FD1A08(v20);
      v13 = a1[v9];
      a1[v9] = v13 | v10;
      if ((v13 & v10) == 0)
      {
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          return result;
        }

        ++v15;
      }

LABEL_10:
      v5 = v21;
      if (v21 != v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

  return sub_1C116B778(a1, a2, v15, a4);
}

void *sub_1C116B6FC(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1C116B778(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94060, &unk_1C12B7488);
  result = sub_1C1266910();
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
    sub_1C0FF4B88(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = sub_1C12668B0();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
LABEL_27:

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
      goto LABEL_27;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1C116B994(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C1266CD0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907A8, &qword_1C12BC710);
        v6 = sub_1C1266140();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C116C1F0(v7, v8, a1, v4);
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
    sub_1C116BB98(0, v2, 1, a1);
  }
}

void sub_1C116BA98(uint64_t *a1, double a2, double a3)
{
  v7 = a1[1];
  v8 = sub_1C1266CD0();
  if (v8 < v7)
  {
    v9 = v8;
    v10 = sub_1C116B12C(v7 / 2);
    v12[0] = v11;
    v12[1] = v7 / 2;
    sub_1C116C90C(v12, a2, a3, v13, a1, v9);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_1C116BCC4(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1C116BB98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 48 * a3);
    v6 = result - a3;
    while (2)
    {
      v20 = a3;
      v7 = v6;
      v17 = v5;
      do
      {
        sub_1C10D1A1C(v5, v19, &qword_1EBE907A8, &qword_1C12BC710);
        v8 = v5 - 3;
        sub_1C10D1A1C((v5 - 3), v18, &qword_1EBE907A8, &qword_1C12BC710);
        v9 = v19[0];
        v10 = v18[0];
        sub_1C0FD1A5C(v18, &qword_1EBE907A8, &qword_1C12BC710);
        result = sub_1C0FD1A5C(v19, &qword_1EBE907A8, &qword_1C12BC710);
        if (v9 >= v10)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v12 = v5[1];
        v11 = v5[2];
        v13 = *v5;
        v14 = *(v5 - 2);
        *v5 = *v8;
        v5[1] = v14;
        v5[2] = *(v5 - 1);
        *v8 = v13;
        *(v5 - 2) = v12;
        v5 -= 3;
        v8[2] = v11;
      }

      while (!__CFADD__(v7++, 1));
      a3 = v20 + 1;
      v5 = v17 + 3;
      --v6;
      if (v20 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C116BCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5, double a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v39 - v13;
  v14 = sub_1C1261DE0();
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v39 - v18;
  v40 = a2;
  if (a3 == a2)
  {
    return;
  }

  v19 = *a4;
  v44 = (v17 + 8);
  v45 = (v17 + 32);
  v48 = v19;
  v20 = (v19 + 8 * a3 - 8);
  v21 = a1 - a3;
  while (2)
  {
    v42 = v20;
    v43 = a3;
    v41 = v21;
    while (1)
    {

      sub_1C10CE294(v51);
      v22 = v52;
      sub_1C0FD1A5C(v51, &qword_1EBE8FE30, &unk_1C12A1CC0);
      sub_1C10CE294(v51);
      v23 = v52;
      sub_1C0FD1A5C(v51, &qword_1EBE8FE30, &unk_1C12A1CC0);
      if (v23)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_6;
      }

LABEL_20:
      if (!v48)
      {
        __break(1u);
        return;
      }

      v37 = *v20;
      *v20 = v20[1];
      v20[1] = v37;
      --v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_25;
      }
    }

    if (v22)
    {
LABEL_6:
      v24 = v47;
      sub_1C10CDF38(v47);
      if (__swift_getEnumTagSinglePayload(v24, 1, v14) == 1)
      {
        sub_1C1261D50();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v14);
        v26 = v46;
        if (EnumTagSinglePayload != 1)
        {
          sub_1C0FD1A5C(v47, &qword_1EBE91E68, &qword_1C12AC940);
        }
      }

      else
      {
        (*v45)(v49, v24, v14);
        v26 = v46;
      }

      sub_1C10CDF38(v26);
      if (__swift_getEnumTagSinglePayload(v26, 1, v14) == 1)
      {
        sub_1C1261D50();
        if (__swift_getEnumTagSinglePayload(v26, 1, v14) != 1)
        {
          sub_1C0FD1A5C(v26, &qword_1EBE91E68, &qword_1C12AC940);
        }
      }

      else
      {
        (*v45)(v50, v26, v14);
      }

      sub_1C116B0E4(&qword_1EDE82F38, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      if (sub_1C1265DE0())
      {
        PXRectShortestDistanceToPoint();
        v28 = v27;
        PXRectShortestDistanceToPoint();
        v30 = v29;
        v31 = *v44;
        (*v44)(v50, v14);
        v31(v49, v14);

        if (v28 >= v30)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v32 = v49;
        v33 = v50;
        v34 = sub_1C1261D70();
        v35 = v33;
        v36 = *v44;
        (*v44)(v35, v14);
        v36(v32, v14);

        if ((v34 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_20;
    }

LABEL_25:
    a3 = v43 + 1;
    v20 = v42 + 1;
    v21 = v41 - 1;
    if (v43 + 1 != v40)
    {
      continue;
    }

    break;
  }
}

void sub_1C116C1F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v106 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v89 = v110;
LABEL_93:
      v103 = v6;
      v91 = *(v6 + 2);
      v6 += 16;
      for (i = v91; ; *v6 = i)
      {
        if (i < 2)
        {

          v110 = v89;
          return;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v92 = &v103[16 * i];
        v93 = *v92;
        v94 = &v6[16 * i];
        v95 = *(v94 + 1);
        sub_1C116D8B4((*a3 + 48 * *v92), (*a3 + 48 * *v94), (*a3 + 48 * v95), v106);
        if (v89)
        {
          break;
        }

        if (v95 < v93)
        {
          goto LABEL_119;
        }

        if (i - 2 >= *v6)
        {
          goto LABEL_120;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v6 - i;
        if (*v6 < i)
        {
          goto LABEL_121;
        }

        i = *v6 - 1;
        memmove(v94, v94 + 16, 16 * v96);
      }

      v110 = v89;
LABEL_103:

      return;
    }

LABEL_128:
    v89 = v110;
    v6 = sub_1C116DE84(v6);
    goto LABEL_93;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v101 = v6;
      v8 = *a3;
      sub_1C10D1A1C(*a3 + 48 * v5, v109, &qword_1EBE907A8, &qword_1C12BC710);
      sub_1C10D1A1C(v8 + 48 * v7, v108, &qword_1EBE907A8, &qword_1C12BC710);
      v104 = v108[0];
      v106 = v109[0];
      sub_1C0FD1A5C(v108, &qword_1EBE907A8, &qword_1C12BC710);
      sub_1C0FD1A5C(v109, &qword_1EBE907A8, &qword_1C12BC710);
      v9 = v8 + 48 * v7 + 96;
      v10 = v7 + 2;
      while (1)
      {
        v11 = v10;
        if (++v5 >= v4)
        {
          break;
        }

        v6 = v4;
        sub_1C10D1A1C(v9, v109, &qword_1EBE907A8, &qword_1C12BC710);
        sub_1C10D1A1C(v9 - 48, v108, &qword_1EBE907A8, &qword_1C12BC710);
        v12 = v109[0];
        v13 = v108[0];
        sub_1C0FD1A5C(v108, &qword_1EBE907A8, &qword_1C12BC710);
        sub_1C0FD1A5C(v109, &qword_1EBE907A8, &qword_1C12BC710);
        v9 += 48;
        v10 = v11 + 1;
        if (v106 < v104 == v12 >= v13)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v106 >= v104)
      {
        v6 = v101;
      }

      else
      {
        if (v5 < v7)
        {
          goto LABEL_125;
        }

        if (v7 < v5)
        {
          if (v4 >= v11)
          {
            v14 = v11;
          }

          else
          {
            v14 = v4;
          }

          v15 = 48 * v14 - 48;
          v16 = v5;
          v17 = v7;
          v18 = 48 * v7;
          do
          {
            if (v17 != --v16)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v20 = (v19 + v18);
              v21 = (v19 + v15);
              v22 = *v20;
              v23 = v20[1];
              v24 = v20[2];
              v26 = v21[1];
              v25 = v21[2];
              *v20 = *v21;
              v20[1] = v26;
              v20[2] = v25;
              v21[1] = v23;
              v21[2] = v24;
              *v21 = v22;
            }

            ++v17;
            v15 -= 48;
            v18 += 48;
          }

          while (v17 < v16);
        }

        v6 = v101;
      }
    }

    v27 = a3[1];
    if (v5 < v27)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_124;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_38:
    if (v5 < v7)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C0FE4694(0, *(v6 + 2) + 1, 1, v6);
      v6 = v87;
    }

    v42 = *(v6 + 2);
    v41 = *(v6 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      sub_1C0FE4694(v41 > 1, v42 + 1, 1, v6);
      v6 = v88;
    }

    *(v6 + 2) = v43;
    v44 = v6 + 32;
    v45 = &v6[16 * v42 + 32];
    *v45 = v7;
    *(v45 + 1) = v5;
    v106 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        v47 = &v44[16 * v43 - 16];
        v48 = &v6[16 * v43];
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v49 = *(v6 + 4);
          v50 = *(v6 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_58:
          if (v52)
          {
            goto LABEL_110;
          }

          v64 = *v48;
          v63 = *(v48 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_113;
          }

          v68 = *(v47 + 1);
          v69 = v68 - *v47;
          if (__OFSUB__(v68, *v47))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v66, v69))
          {
            goto LABEL_118;
          }

          if (v66 + v69 >= v51)
          {
            if (v51 < v69)
            {
              v46 = v43 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v71 = *v48;
        v70 = *(v48 + 1);
        v59 = __OFSUB__(v70, v71);
        v66 = v70 - v71;
        v67 = v59;
LABEL_73:
        if (v67)
        {
          goto LABEL_115;
        }

        v73 = *v47;
        v72 = *(v47 + 1);
        v59 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v59)
        {
          goto LABEL_117;
        }

        if (v74 < v66)
        {
          goto LABEL_87;
        }

LABEL_80:
        if (v46 - 1 >= v43)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v78 = &v44[16 * v46 - 16];
        v79 = *v78;
        v80 = v44;
        v81 = &v44[16 * v46];
        v82 = *(v81 + 1);
        v83 = v110;
        sub_1C116D8B4((*a3 + 48 * *v78), (*a3 + 48 * *v81), (*a3 + 48 * v82), v106);
        v110 = v83;
        if (v83)
        {
          goto LABEL_103;
        }

        if (v82 < v79)
        {
          goto LABEL_105;
        }

        v84 = v5;
        v85 = v6;
        v6 = *(v6 + 2);
        if (v46 > v6)
        {
          goto LABEL_106;
        }

        *v78 = v79;
        *(v78 + 1) = v82;
        if (v46 >= v6)
        {
          goto LABEL_107;
        }

        v43 = (v6 - 1);
        memmove(v81, v81 + 16, 16 * &v6[-v46 - 1]);
        *(v85 + 2) = v6 - 1;
        v86 = v6 > 2;
        v6 = v85;
        v5 = v84;
        v44 = v80;
        if (!v86)
        {
          goto LABEL_87;
        }
      }

      v53 = &v44[16 * v43];
      v54 = *(v53 - 8);
      v55 = *(v53 - 7);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_108;
      }

      v58 = *(v53 - 6);
      v57 = *(v53 - 5);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_109;
      }

      v60 = *(v48 + 1);
      v61 = v60 - *v48;
      if (__OFSUB__(v60, *v48))
      {
        goto LABEL_111;
      }

      v59 = __OFADD__(v51, v61);
      v62 = v51 + v61;
      if (v59)
      {
        goto LABEL_114;
      }

      if (v62 >= v56)
      {
        v76 = *v47;
        v75 = *(v47 + 1);
        v59 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v59)
        {
          goto LABEL_122;
        }

        if (v51 < v77)
        {
          v46 = v43 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_58;
    }

LABEL_87:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_90;
    }
  }

  v28 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_126;
  }

  if (v28 >= v27)
  {
    v28 = a3[1];
  }

  if (v28 < v7)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v5 == v28)
  {
    goto LABEL_38;
  }

  v100 = v28;
  v102 = v6;
  v29 = *a3;
  v30 = (*a3 + 48 * v5);
  v98 = v7;
  v31 = v7 - v5;
LABEL_31:
  v105 = v30;
  v106 = v5;
  v32 = v31;
  while (1)
  {
    sub_1C10D1A1C(v30, v109, &qword_1EBE907A8, &qword_1C12BC710);
    v33 = v30 - 3;
    sub_1C10D1A1C((v30 - 3), v108, &qword_1EBE907A8, &qword_1C12BC710);
    v34 = v109[0];
    v35 = v108[0];
    sub_1C0FD1A5C(v108, &qword_1EBE907A8, &qword_1C12BC710);
    sub_1C0FD1A5C(v109, &qword_1EBE907A8, &qword_1C12BC710);
    if (v34 >= v35)
    {
LABEL_36:
      v5 = (v106 + 1);
      v30 = v105 + 3;
      --v31;
      if (v106 + 1 == v100)
      {
        v5 = v100;
        v6 = v102;
        v7 = v98;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v29)
    {
      break;
    }

    v37 = v30[1];
    v36 = v30[2];
    v38 = *v30;
    v39 = *(v30 - 2);
    *v30 = *v33;
    v30[1] = v39;
    v30[2] = *(v30 - 1);
    *v33 = v38;
    *(v30 - 2) = v37;
    v30 -= 3;
    v33[2] = v36;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_36;
    }
  }

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
}

void sub_1C116C90C(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v139 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v137 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v145 = &v137 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v137 - v19;
  v20 = sub_1C1261DE0();
  MEMORY[0x1EEE9AC00](v20);
  v157 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v137 - v23;
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v148 = a5;
  v29 = *(a5 + 8);
  if (v29 < 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_130:
    a5 = *v139;
    if (!*v139)
    {
      goto LABEL_172;
    }

    a6 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_166:
      a6 = sub_1C116DE84(a6);
    }

    v129 = (a6 + 16);
    v130 = *(a6 + 16);
    while (v130 >= 2)
    {
      if (!*v148)
      {
        goto LABEL_169;
      }

      v131 = a6;
      v132 = (a6 + 16 * v130);
      v133 = *v132;
      a6 = &v129[2 * v130];
      v134 = *(a6 + 8);
      v135 = v149;
      sub_1C116DB54((*v148 + 8 * *v132), (*v148 + 8 * *a6), (*v148 + 8 * v134), a5, a2, a3);
      v149 = v135;
      if (v135)
      {
        break;
      }

      if (v134 < v133)
      {
        goto LABEL_157;
      }

      if (v130 - 2 >= *v129)
      {
        goto LABEL_158;
      }

      *v132 = v133;
      v132[1] = v134;
      v136 = *v129 - v130;
      if (*v129 < v130)
      {
        goto LABEL_159;
      }

      v130 = *v129 - 1;
      memmove(a6, (a6 + 16), 16 * v136);
      *v129 = v130;
      a6 = v131;
    }

LABEL_140:

    return;
  }

  v147 = &v137 - v27;
  v30 = 0;
  v152 = (v26 + 8);
  v153 = (v26 + 32);
  v31 = MEMORY[0x1E69E7CC0];
  v138 = a6;
  v151 = v12;
  v154 = v15;
  v143 = v28;
  v158 = v20;
  while (1)
  {
    v32 = v30 + 1;
    v140 = v30;
    if (v30 + 1 < v29)
    {
      v33 = v30;
      v137 = v31;
      v34 = *v148;
      v161[0] = *(*v148 + 8 * v32);
      a5 = *(v34 + 8 * v30);
      v160 = a5;

      v35 = v149;
      LODWORD(v146) = sub_1C1168864(v161, &v160, a2, a3);
      v149 = v35;
      if (v35)
      {

        return;
      }

      v141 = 8 * v33;
      v36 = v34 + 8 * v33 + 16;
      v37 = (v33 + 2);
      v144 = v29;
      while (1)
      {
        v38 = v37;
        if (v32 + 1 >= v29)
        {
          break;
        }

        v159 = v37;
        v150 = v32;
        v155 = v36;

        sub_1C10CE294(v161);
        v39 = v162;
        v40 = v162 != 0;
        a5 = &unk_1C12A1CC0;
        sub_1C0FD1A5C(v161, &qword_1EBE8FE30, &unk_1C12A1CC0);
        sub_1C10CE294(v161);
        v41 = v162;
        v42 = v162 == 0;
        sub_1C0FD1A5C(v161, &qword_1EBE8FE30, &unk_1C12A1CC0);
        if (v42 == v40)
        {

          if (v39)
          {
            v46 = v41 == 0;
          }

          else
          {
            v46 = 0;
          }

          v47 = v46;
        }

        else
        {
          a5 = v142;
          sub_1C10CDF38(v142);
          if (__swift_getEnumTagSinglePayload(a5, 1, v20) == 1)
          {
            sub_1C1261D50();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a5, 1, v20);
            v44 = v145;
            v45 = v143;
            if (EnumTagSinglePayload != 1)
            {
              sub_1C0FD1A5C(a5, &qword_1EBE91E68, &qword_1C12AC940);
            }
          }

          else
          {
            (*v153)(v147, a5, v20);
            v44 = v145;
            v45 = v143;
          }

          sub_1C10CDF38(v44);
          v48 = v145;
          if (__swift_getEnumTagSinglePayload(v145, 1, v20) == 1)
          {
            sub_1C1261D50();
            if (__swift_getEnumTagSinglePayload(v48, 1, v20) != 1)
            {
              sub_1C0FD1A5C(v48, &qword_1EBE91E68, &qword_1C12AC940);
            }
          }

          else
          {
            (*v153)(v45, v48, v20);
          }

          sub_1C116B0E4(&qword_1EDE82F38, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
          v49 = v147;
          if (sub_1C1265DE0())
          {
            PXRectShortestDistanceToPoint();
            v51 = v50;
            PXRectShortestDistanceToPoint();
            v53 = v52;
            v54 = *v152;
            (*v152)(v45, v20);
            v54(v147, v20);

            v47 = v51 < v53;
          }

          else
          {
            v47 = sub_1C1261D70();
            v55 = *v152;
            (*v152)(v143, v20);
            v55(v49, v20);
          }
        }

        v29 = v144;
        v36 = v155 + 8;
        v32 = v150 + 1;
        v38 = v159;
        v37 = v159 + 1;
        if ((v146 ^ v47))
        {
          goto LABEL_28;
        }
      }

      v32 = v29;
LABEL_28:
      a6 = v138;
      if (v146)
      {
        v56 = v140;
        if (v32 < v140)
        {
          goto LABEL_165;
        }

        v31 = v137;
        if (v140 < v32)
        {
          if (v29 >= v38)
          {
            v57 = v38;
          }

          else
          {
            v57 = v29;
          }

          v58 = 8 * v57 - 8;
          v59 = v32;
          v60 = v141;
          do
          {
            if (v56 != --v59)
            {
              v61 = *v148;
              if (!*v148)
              {
                goto LABEL_170;
              }

              v62 = *(v61 + v60);
              *(v61 + v60) = *(v61 + v58);
              *(v61 + v58) = v62;
            }

            ++v56;
            v58 -= 8;
            v60 += 8;
          }

          while (v56 < v59);
        }
      }

      else
      {
        v31 = v137;
      }
    }

    v63 = v148[1];
    if (v32 >= v63)
    {
      goto LABEL_75;
    }

    if (__OFSUB__(v32, v140))
    {
      goto LABEL_162;
    }

    if (v32 - v140 >= a6)
    {
LABEL_75:
      v65 = v140;
      goto LABEL_76;
    }

    if (__OFADD__(v140, a6))
    {
      goto LABEL_163;
    }

    if ((v140 + a6) >= v63)
    {
      v64 = v148[1];
    }

    else
    {
      v64 = v140 + a6;
    }

    if (v64 < v140)
    {
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v65 = v140;
    if (v32 != v64)
    {
      break;
    }

LABEL_76:
    if (v32 < v65)
    {
      goto LABEL_161;
    }

    a5 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = a5;
    }

    else
    {
      sub_1C0FE4694(0, *(a5 + 16) + 1, 1, a5);
      v31 = v127;
    }

    v86 = v31[2];
    v85 = v31[3];
    a6 = v86 + 1;
    v150 = v32;
    if (v86 >= v85 >> 1)
    {
      sub_1C0FE4694(v85 > 1, v86 + 1, 1, v31);
      v31 = v128;
    }

    v31[2] = a6;
    v87 = v31 + 4;
    v88 = &v31[2 * v86 + 4];
    v89 = v150;
    *v88 = v140;
    v88[1] = v89;
    v159 = *v139;
    if (!v159)
    {
      goto LABEL_171;
    }

    if (v86)
    {
      while (1)
      {
        v90 = a6 - 1;
        v91 = &v87[2 * a6 - 2];
        v92 = &v31[2 * a6];
        if (a6 >= 4)
        {
          break;
        }

        if (a6 == 3)
        {
          v93 = v31[4];
          v94 = v31[5];
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_96:
          if (v96)
          {
            goto LABEL_148;
          }

          v108 = *v92;
          v107 = v92[1];
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_151;
          }

          v112 = v91[1];
          v113 = v112 - *v91;
          if (__OFSUB__(v112, *v91))
          {
            goto LABEL_154;
          }

          if (__OFADD__(v110, v113))
          {
            goto LABEL_156;
          }

          if (v110 + v113 >= v95)
          {
            if (v95 < v113)
            {
              v90 = a6 - 2;
            }

            goto LABEL_118;
          }

          goto LABEL_111;
        }

        if (a6 < 2)
        {
          goto LABEL_150;
        }

        v115 = *v92;
        v114 = v92[1];
        v103 = __OFSUB__(v114, v115);
        v110 = v114 - v115;
        v111 = v103;
LABEL_111:
        if (v111)
        {
          goto LABEL_153;
        }

        v117 = *v91;
        v116 = v91[1];
        v103 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v103)
        {
          goto LABEL_155;
        }

        if (v118 < v110)
        {
          goto LABEL_125;
        }

LABEL_118:
        if (v90 - 1 >= a6)
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
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
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*v148)
        {
          goto LABEL_168;
        }

        v122 = v31;
        a6 = &v87[2 * v90 - 2];
        v123 = *a6;
        v124 = &v87[2 * v90];
        a5 = v124[1];
        v125 = v149;
        sub_1C116DB54((*v148 + 8 * *a6), (*v148 + 8 * *v124), (*v148 + 8 * a5), v159, a2, a3);
        v149 = v125;
        if (v125)
        {
          goto LABEL_140;
        }

        if (a5 < v123)
        {
          goto LABEL_143;
        }

        v126 = v122[2];
        if (v90 > v126)
        {
          goto LABEL_144;
        }

        *a6 = v123;
        *(a6 + 8) = a5;
        if (v90 >= v126)
        {
          goto LABEL_145;
        }

        a6 = v126 - 1;
        memmove(&v87[2 * v90], v124 + 2, 16 * (v126 - 1 - v90));
        v31 = v122;
        v122[2] = v126 - 1;
        if (v126 <= 2)
        {
          goto LABEL_125;
        }
      }

      v97 = &v87[2 * a6];
      v98 = *(v97 - 8);
      v99 = *(v97 - 7);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_146;
      }

      v102 = *(v97 - 6);
      v101 = *(v97 - 5);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_147;
      }

      v104 = v92[1];
      v105 = v104 - *v92;
      if (__OFSUB__(v104, *v92))
      {
        goto LABEL_149;
      }

      v103 = __OFADD__(v95, v105);
      v106 = v95 + v105;
      if (v103)
      {
        goto LABEL_152;
      }

      if (v106 >= v100)
      {
        v120 = *v91;
        v119 = v91[1];
        v103 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v103)
        {
          goto LABEL_160;
        }

        if (v95 < v121)
        {
          v90 = a6 - 2;
        }

        goto LABEL_118;
      }

      goto LABEL_96;
    }

LABEL_125:
    v29 = v148[1];
    v30 = v150;
    a6 = v138;
    if (v150 >= v29)
    {
      goto LABEL_130;
    }
  }

  v137 = v31;
  v155 = *v148;
  v66 = v155 + 8 * v32 - 8;
  v67 = (v140 - v32);
  v141 = v64;
LABEL_51:
  v150 = v32;
  a5 = *(v155 + 8 * v32);
  v144 = v67;
  v146 = v66;
  v68 = v66;
  while (1)
  {
    v159 = v67;

    sub_1C10CE294(v161);
    v69 = v162;
    sub_1C0FD1A5C(v161, &qword_1EBE8FE30, &unk_1C12A1CC0);
    sub_1C10CE294(v161);
    a6 = v162;
    sub_1C0FD1A5C(v161, &qword_1EBE8FE30, &unk_1C12A1CC0);
    if (a6)
    {
      if (!v69)
      {

        goto LABEL_73;
      }
    }

    else if (v69)
    {

      goto LABEL_68;
    }

    v70 = v154;
    sub_1C10CDF38(v154);
    v71 = __swift_getEnumTagSinglePayload(v70, 1, v20);
    v72 = v156;
    if (v71 == 1)
    {
      sub_1C1261D50();
      v73 = __swift_getEnumTagSinglePayload(v70, 1, v20);
      v74 = v151;
      if (v73 != 1)
      {
        sub_1C0FD1A5C(v154, &qword_1EBE91E68, &qword_1C12AC940);
      }
    }

    else
    {
      (*v153)(v156, v70, v20);
      v74 = v151;
    }

    sub_1C10CDF38(v74);
    if (__swift_getEnumTagSinglePayload(v74, 1, v20) == 1)
    {
      v75 = v157;
      sub_1C1261D50();
      if (__swift_getEnumTagSinglePayload(v74, 1, v20) != 1)
      {
        sub_1C0FD1A5C(v74, &qword_1EBE91E68, &qword_1C12AC940);
      }
    }

    else
    {
      v75 = v157;
      (*v153)(v157, v74, v20);
    }

    sub_1C116B0E4(&qword_1EDE82F38, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if ((sub_1C1265DE0() & 1) == 0)
    {
      v81 = sub_1C1261D70();
      a6 = v20;
      v82 = *v152;
      (*v152)(v75, v20);
      v82(v72, v20);

      if (v81)
      {
        goto LABEL_68;
      }

LABEL_71:
      v20 = v158;
LABEL_73:
      v32 = v150 + 1;
      v66 = v146 + 8;
      v67 = (v144 - 1);
      if (v150 + 1 == v141)
      {
        v32 = v141;
        v31 = v137;
        goto LABEL_75;
      }

      goto LABEL_51;
    }

    PXRectShortestDistanceToPoint();
    v77 = v76;
    PXRectShortestDistanceToPoint();
    v79 = v78;
    a6 = *v152;
    v80 = v158;
    (*v152)(v157, v158);
    (a6)(v156, v80);

    if (v77 >= v79)
    {
      goto LABEL_71;
    }

LABEL_68:
    v83 = v159;
    if (!v155)
    {
      break;
    }

    v84 = *v68;
    a5 = v68[1];
    *v68 = a5;
    v68[1] = v84;
    --v68;
    v67 = v83 + 1;
    v20 = v158;
    if (v83 == -1)
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
}

uint64_t sub_1C116D8B4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_1C11021B4(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      sub_1C10D1A1C(v6, v36, &qword_1EBE907A8, &qword_1C12BC710);
      sub_1C10D1A1C(v4, v35, &qword_1EBE907A8, &qword_1C12BC710);
      v13 = v36[0];
      v14 = v35[0];
      sub_1C0FD1A5C(v35, &qword_1EBE907A8, &qword_1C12BC710);
      sub_1C0FD1A5C(v36, &qword_1EBE907A8, &qword_1C12BC710);
      if (v13 >= v14)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 48;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 48;
      v5 = v12;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 48;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 2);
    *(v7 + 1) = *(v15 + 1);
    *(v7 + 2) = v18;
    *v7 = v17;
    goto LABEL_13;
  }

  sub_1C11021B4(a2, (a3 - a2) / 48, a4);
  v19 = &v4[48 * v9];
  v37 = v7;
  v34 = v4;
LABEL_15:
  v20 = (v6 - 48);
  v5 -= 48;
  v21 = v19 - 48;
  while (1)
  {
    v10 = v21 + 48;
    if (v21 + 48 <= v4 || v6 <= v7)
    {
      break;
    }

    v23 = v6;
    sub_1C10D1A1C(v21, v36, &qword_1EBE907A8, &qword_1C12BC710);
    v24 = v20;
    sub_1C10D1A1C(v20, v35, &qword_1EBE907A8, &qword_1C12BC710);
    v25 = v36[0];
    v26 = v35[0];
    sub_1C0FD1A5C(v35, &qword_1EBE907A8, &qword_1C12BC710);
    sub_1C0FD1A5C(v36, &qword_1EBE907A8, &qword_1C12BC710);
    if (v25 < v26)
    {
      v19 = v21 + 48;
      v16 = v5 + 48 == v23;
      v6 = v24;
      v4 = v34;
      v7 = v37;
      if (!v16)
      {
        v29 = *v24;
        v30 = *(v24 + 2);
        *(v5 + 1) = *(v24 + 1);
        *(v5 + 2) = v30;
        *v5 = v29;
        v6 = v24;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 48)
    {
      v27 = *v21;
      v28 = *(v21 + 2);
      *(v5 + 1) = *(v21 + 1);
      *(v5 + 2) = v28;
      *v5 = v27;
    }

    v5 -= 48;
    v21 -= 48;
    v4 = v34;
    v6 = v23;
    v7 = v37;
    v20 = v24;
  }

LABEL_28:
  v31 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v31])
  {
    memmove(v6, v4, 48 * v31);
  }

  return 1;
}

uint64_t sub_1C116DB54(char *a1, char *a2, char *a3, char *a4, double a5, double a6)
{
  v7 = v6;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v13 = (a2 - a1) / 8;
  v14 = (a3 - a2) / 8;
  if (v13 < v14)
  {
    sub_1C110213C(a1, (a2 - a1) / 8, a4);
    v16 = a4;
    for (i = &a4[8 * v13]; ; i = v19)
    {
      if (v16 >= i || v11 >= v10)
      {
        v11 = v12;
        goto LABEL_30;
      }

      v19 = i;
      v20 = v10;
      v52 = *v11;
      v21 = v16;
      v51 = *v16;

      v22 = sub_1C1168864(&v52, &v51, a5, a6);
      if (v6)
      {

        v16 = v21;
        v43 = (v19 - v21) / 8;
        v44 = v12 < v21 || v12 >= &v21[v43];
        if (v44 || v12 != v21)
        {
          v41 = 8 * v43;
          v42 = v12;
          goto LABEL_50;
        }

        return 1;
      }

      v23 = v22;

      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = v11;
      v25 = v12 == v11++;
      v16 = v21;
      if (!v25)
      {
        goto LABEL_13;
      }

LABEL_14:
      v12 += 8;
      v10 = v20;
    }

    v24 = v21;
    v16 = v21 + 1;
    if (v12 == v21)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v12 = *v24;
    goto LABEL_14;
  }

  sub_1C110213C(a2, (a3 - a2) / 8, a4);
  v16 = a4;
  i = &a4[8 * v14];
  v27 = -a4;
  v48 = v12;
  v49 = a4;
LABEL_16:
  v28 = v11 - 1;
  v29 = v10 - 8;
  v30 = &i[v27];
  v50 = v11;
  while (1)
  {
    if (i <= v16 || v11 <= v12)
    {
LABEL_30:
      v39 = (i - v16) / 8;
      v40 = v11 < v16 || v11 >= &v16[v39];
      if (v40 || v11 != v16)
      {
        v41 = 8 * v39;
        v42 = v11;
        goto LABEL_50;
      }

      return 1;
    }

    v32 = v29;
    v33 = v7;
    v34 = i;
    v35 = i - 8;
    v52 = *(i - 1);
    v36 = v28;
    v51 = *v28;

    v37 = sub_1C1168864(&v52, &v51, a5, a6);
    if (v33)
    {
      break;
    }

    v38 = v37;

    if (v38)
    {
      v10 = v32;
      v16 = v49;
      v25 = v32 + 8 == v50;
      v11 = v36;
      v12 = v48;
      i = v34;
      v7 = 0;
      if (!v25)
      {
        *v10 = *v36;
        v11 = v36;
      }

      goto LABEL_16;
    }

    v28 = v36;
    if (v34 != v32 + 8)
    {
      *v32 = *v35;
    }

    v29 = v32 - 8;
    v30 -= 8;
    i = v35;
    v12 = v48;
    v16 = v49;
    v11 = v50;
    v7 = 0;
  }

  v45 = v30 / 8;
  v16 = v49;
  v42 = v50;
  if (v50 < v49 || v50 >= &v49[8 * (v30 / 8)])
  {
    memmove(v50, v49, 8 * v45);
  }

  else if (v50 != v49)
  {
    v41 = 8 * v45;
LABEL_50:
    memmove(v42, v16, v41);
  }

  return 1;
}

char *sub_1C116DE98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907B0, &unk_1C12A4550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1C116DF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosInlinePlaybackCoordinator.DebugItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C116DFFC(uint64_t a1)
{
  v2 = type metadata accessor for PhotosInlinePlaybackCoordinator.DebugItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C116E058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosInlinePlaybackCoordinator.DebugItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C116E0BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1C1266BB0();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1C0FE5EE8();
      sub_1C116E2C0(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1C116E150(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C1266BB0();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C0FF7688();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for PhotosConcreteSelectableItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C116E858(&qword_1EBE95448, &qword_1EBE95440, &unk_1C12BC870);
        for (i = 0; i != v7; ++i)
        {
          v9 = OUTLINED_FUNCTION_7_20();
          __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
          v11 = sub_1C110929C(v14, i, a3);
          v13 = *v12;
          v11(v14, 0);
          *(v5 + 8 * i) = v13;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C116E2C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C1266BB0();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C0FF7688();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for PhotosInlinePlaybackContainerModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C116E858(&qword_1EBE95438, &qword_1EBE95430, &qword_1C12BC720);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95430, &qword_1C12BC720);
          v9 = sub_1C1109374(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C116E434@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C116B590(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

__n128 sub_1C116E4C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC17PhotosSwiftUICore31PhotosInlinePlaybackCoordinator___configuration;
  v4 = v1[1];
  result = v1[2];
  v5 = *v1;
  *(v2 + 48) = *(v1 + 6);
  *(v2 + 16) = v4;
  *(v2 + 32) = result;
  *v2 = v5;
  return result;
}

__n128 sub_1C116E540()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  v1[4] = result;
  v1[5].n128_u8[0] = v2;
  return result;
}

__n128 sub_1C116E58C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 56) = *(v2 + 32);
  *(v1 + 40) = v4;
  *(v1 + 24) = result;
  return result;
}

void sub_1C116E5FC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30();
  v13 = v11 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v18 = *(v9 + 16);
  v18(&v26 - v16, v15);
  type metadata accessor for PhotosInlinePlayerModel(0);
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_34_0();
  (v18)(v20);
  v21 = sub_1C0FE7B64(v13, v7, v19, v3, v1);
  OUTLINED_FUNCTION_24_11();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v21 + 80);
  v24 = *(v21 + 88);
  *(v21 + 80) = sub_1C116E834;
  *(v21 + 88) = v22;

  sub_1C0FCF004(v23, v24);

  OUTLINED_FUNCTION_24_11();
  v25 = swift_allocObject();
  swift_weakInit();

  sub_1C0FE6BD8(sub_1C116E850, v25);

  OUTLINED_FUNCTION_16_16(v5 + OBJC_IVAR____TtC17PhotosSwiftUICore31PhotosInlinePlaybackCoordinator_players, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95418, &qword_1C12BC6D0);
  sub_1C1262360();
  swift_endAccess();
  sub_1C11697C8();
  sub_1C1165CE0();
  (*(v9 + 8))(v17, v3);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C116E858(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C116E8B4()
{
  result = qword_1EDE7B648;
  if (!qword_1EDE7B648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE7B648);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_9()
{
  v2 = *(v0 + 480);
  *(v0 + 304) = *(v0 + 464);
  *(v0 + 320) = v2;
  *(v0 + 336) = *(v0 + 496);

  return sub_1C0FF4B88(v0 + 304, v0 + 424);
}

uint64_t OUTLINED_FUNCTION_41_6(uint64_t a1)
{

  return sub_1C0FD1A5C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_42_5()
{
  *(v0 + 304) = v1;

  return swift_getKeyPath();
}

char *OUTLINED_FUNCTION_54_3()
{

  return sub_1C11023F0(0, v0, 0);
}

void OUTLINED_FUNCTION_56_0()
{

  sub_1C0FA329C();
}

void OUTLINED_FUNCTION_57()
{

  sub_1C0FA329C();
}

double OUTLINED_FUNCTION_59_1()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_60_0()
{
  *(v0 + 304) = v1;

  return swift_getKeyPath();
}

uint64_t PhotosSummary.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosSummary.init()();
  return v0;
}

uint64_t PhotosSummary.init()()
{
  *(v0 + 64) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  sub_1C1261F60();
  return v0;
}

void sub_1C116EAD8(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 48) == v2)
  {
    *(v1 + 48) = v2;
    sub_1C116F7C0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v5[2] = v1;
    v6 = v2;
    sub_1C116F8E4(v4, sub_1C116F37C, v5);
  }
}

uint64_t (*sub_1C116EB98(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_8_6(v1 + 16);
  return sub_1C116EBE0;
}

uint64_t sub_1C116EBE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C116EC28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C116EC28()
{
  swift_getKeyPath();
  v1 = sub_1C116F840();
  OUTLINED_FUNCTION_6(v1, v2);

  OUTLINED_FUNCTION_7_4(v0 + 16, v3);
  v4 = *(v0 + 16);

  return v4;
}

void sub_1C116ECA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (sub_1C0FDFDE0(*(v2 + 16), *(v2 + 24), a1, a2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_6();
    sub_1C116F8E4(v6, sub_1C116F96C, v7);
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;

    sub_1C116F7C0();
  }
}

uint64_t sub_1C116ED78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;

  return sub_1C116F7C0();
}

uint64_t (*sub_1C116EDEC())()
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  v3 = OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_1_6(v3);

  v4 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v4);

  v5 = OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C116EB98(v5);
  return sub_1C116EE90;
}

uint64_t (*sub_1C116EE9C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_8_6(v1 + 32);
  return sub_1C1170014;
}

uint64_t sub_1C116EEE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C116EF70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C116EF28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C116EF70()
{
  swift_getKeyPath();
  v1 = sub_1C116F840();
  OUTLINED_FUNCTION_6(v1, v2);

  OUTLINED_FUNCTION_7_4(v0 + 32, v3);
  v4 = *(v0 + 32);

  return v4;
}

void sub_1C116EFE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (sub_1C0FDFDE0(*(v2 + 32), *(v2 + 40), a1, a2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_6();
    sub_1C116F8E4(v6, sub_1C116F98C, v7);
  }

  else
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;

    sub_1C116F7C0();
  }
}

uint64_t sub_1C116F0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;

  return sub_1C116F7C0();
}

uint64_t (*sub_1C116F134())()
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  v3 = OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_1_6(v3);

  v4 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v4);

  v5 = OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C116EE9C(v5);
  return sub_1C116F1D8;
}

uint64_t (*sub_1C116F1E4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_8_6(v1 + 48);
  return sub_1C1170014;
}

uint64_t sub_1C116F22C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C116F7C0();
  }

  return result;
}

uint64_t sub_1C116F260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C116F2B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C116F2B8()
{
  swift_getKeyPath();
  v1 = sub_1C116F840();
  OUTLINED_FUNCTION_6(v1, v2);

  OUTLINED_FUNCTION_7_4(v0 + 48, v3);
  return *(v0 + 48);
}

uint64_t sub_1C116F320(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
  return sub_1C116F7C0();
}

uint64_t (*sub_1C116F39C())()
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  v3 = OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_1_6(v3);

  v4 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v4);

  v5 = OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C116F1E4(v5);
  return sub_1C116F440;
}

void (*sub_1C116F44C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 64);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1C116F4CC;
}

void sub_1C116F4CC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
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

uint64_t sub_1C116F550@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C116F5B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C116F57C(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1C116F628(v3, v2);
}

uint64_t sub_1C116F5B8()
{
  swift_getKeyPath();
  v1 = sub_1C116F840();
  OUTLINED_FUNCTION_6(v1, v2);

  OUTLINED_FUNCTION_7_4(v0 + 56, v3);
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1C116F628(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1C116F8E4(KeyPath, sub_1C116F9AC, &v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C116F6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 64) = a3;
  return swift_unknownObjectWeakAssign();
}

uint64_t (*sub_1C116F710())()
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  v3 = OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_1_6(v3);

  v4 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v4);

  v5 = OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C116F44C(v5);
  return sub_1C116F7B4;
}

uint64_t sub_1C116F7C0()
{
  result = sub_1C116F5B8();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1C116F840()
{
  result = qword_1EDE7EE90;
  if (!qword_1EDE7EE90)
  {
    type metadata accessor for PhotosSummary(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7EE90);
  }

  return result;
}

uint64_t type metadata accessor for PhotosSummary(uint64_t a1)
{
  result = qword_1EDE7EE80;
  if (!qword_1EDE7EE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosSummary.deinit()
{

  sub_1C0FF4BE4(v0 + 56);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore13PhotosSummary___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosSummary.__deallocating_deinit()
{
  PhotosSummary.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C116FA9C()
{
  type metadata accessor for PhotosSummary(0);
  v0 = swift_allocObject();
  result = PhotosSummary.init()();
  qword_1EDE82B40 = v0;
  return result;
}

double sub_1C116FADC@<D0>(void *a1@<X8>)
{
  if (qword_1EDE82B38 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE82B40;

  return result;
}

uint64_t EnvironmentValues.photosSummary.getter()
{
  sub_1C116FB84();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C116FB84()
{
  result = qword_1EDE82B30;
  if (!qword_1EDE82B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82B30);
  }

  return result;
}

void (*EnvironmentValues.photosSummary.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C116FB84();
  sub_1C12637F0();
  return sub_1C116FCA0;
}

void sub_1C116FCA0(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_1C1263800();
  }

  else
  {
    sub_1C1263800();
  }
}

uint64_t sub_1C116FD3C(uint64_t a1)
{
  result = sub_1C1261F70();
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

unint64_t OUTLINED_FUNCTION_11_27()
{
  v1[5] = v2;
  *v1 = v0;

  return sub_1C116F840();
}

uint64_t sub_1C1170030@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  v7 = *(v6 + 16);

  return v7(a3, a1, v5);
}

double sub_1C1170098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  v16[0] = sub_1C1263FE0();
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = sub_1C1263FF0();
  MEMORY[0x1C68EE920](v16, a6, v14, a8);

  return result;
}

double sub_1C1170174(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = *a1;
  v9 = a2;
  v10 = a3;
  KeyPath = swift_getKeyPath();
  v12 = 0;
  v13 = swift_getKeyPath();
  v14 = 0;
  sub_1C0FCF1B4(v9, v10);
  MEMORY[0x1C68EE920](v8, a4, &type metadata for ElementVisibilityModifier, a5);
  sub_1C0FCF004(v9, v10);
  j__swift_release_1();

  return result;
}

uint64_t sub_1C117024C()
{
  sub_1C1178AF4();
  sub_1C12637F0();
  if (!v2)
  {
    return 0;
  }

  Strong = swift_weakLoadStrong();

  return Strong;
}

double sub_1C11702B4(uint64_t a1)
{
  type metadata accessor for WeakOneUpChromeViewModelReference();
  swift_allocObject();

  sub_1C1178378(v1);
  sub_1C1178AF4();
  sub_1C1263800();

  return result;
}

void OneUpChromeView<>.init(model:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = 0;
  *(a2 + 80) = swift_getKeyPath();
  *(a2 + 88) = 0;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE95450, &qword_1C12BCAE0) + 56);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 48) = nullsub_1;
  *(a2 + 56) = 0;
}

void OneUpChromeView.init(model:libraryScrubber:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X4>)
{
  *(a4 + 8) = swift_getKeyPath();
  *(a4 + 16) = 0;
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 64) = swift_getKeyPath();
  *(a4 + 72) = 0;
  *(a4 + 80) = swift_getKeyPath();
  *(a4 + 88) = 0;
  v10 = OUTLINED_FUNCTION_32_10();
  v13 = *(type metadata accessor for OneUpChromeView(v10, v11, a5, v12) + 56);
  *(a4 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
}

void OneUpChromeView.body.getter()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v113 = v4;
  v108 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v106 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v104 = v8 - v7;
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = OUTLINED_FUNCTION_42_6();
  v15 = type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar(v11, v12, v13, v14);
  v16 = OUTLINED_FUNCTION_42_6();
  type metadata accessor for OneUpChromeView.ChromeWithLeftToolbar(v16, v17, v18, v19);
  OUTLINED_FUNCTION_11_0();
  v114 = v15;
  v118 = v20;
  v21 = sub_1C1263C30();
  v22 = OUTLINED_FUNCTION_42_6();
  type metadata accessor for OneUpChromeView.ChromeWithRightToolbar(v22, v23, v24, v25);
  OUTLINED_FUNCTION_11_0();
  v119 = v21;
  v115 = v26;
  sub_1C1263C30();
  OUTLINED_FUNCTION_22();
  v120 = v27;
  v28 = sub_1C12652C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D70, &qword_1C12B69E0);
  OUTLINED_FUNCTION_19_1();
  v29 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v105 = v30;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v31);
  v101 = &v96 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D78, &qword_1C12B69E8);
  OUTLINED_FUNCTION_19_1();
  v117 = v29;
  v33 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v109 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_30();
  v107 = v36 - v37;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  v102 = &v96 - v39;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  v103 = &v96 - v41;
  v111 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_30();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v112 = &v96 - v49;
  v110 = v1;
  v50 = *v1;
  sub_1C1213358();
  v116 = v28;
  if (v159 == 3)
  {
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v33);
    OUTLINED_FUNCTION_6_31();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_5_30();
    v53 = swift_getWitnessTable();
    v157 = WitnessTable;
    v158 = v53;
    OUTLINED_FUNCTION_7_16();
    v54 = swift_getWitnessTable();
    OUTLINED_FUNCTION_4_45();
    v55 = swift_getWitnessTable();
    v155 = v54;
    v156 = v55;
    v154 = swift_getWitnessTable();
    OUTLINED_FUNCTION_2_11();
    v56 = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_8();
    v60 = sub_1C1179D7C(v57, v58, v59);
    v152 = v56;
    v153 = v60;
    OUTLINED_FUNCTION_9_4();
    v61 = swift_getWitnessTable();
    v62 = sub_1C1179D7C(&qword_1EDE7B970, &qword_1EBE93D78, &qword_1C12B69E8);
    v150 = v61;
    v151 = v62;
    swift_getWitnessTable();
    sub_1C1170030(v47, v112);
    v63 = *(v43 + 8);
    v63(v47, v111);
  }

  else
  {
    v97 = v50;
    v98 = v47;
    v99 = v43;
    v100 = v33;
    v64 = v117;
    MEMORY[0x1EEE9AC00](v51);
    *(&v96 - 4) = v9;
    *(&v96 - 3) = v10;
    *(&v96 - 16) = v65;
    *(&v96 - 1) = v110;
    OUTLINED_FUNCTION_6_31();
    v66 = swift_getWitnessTable();
    OUTLINED_FUNCTION_5_30();
    v67 = swift_getWitnessTable();
    v132 = v66;
    v133 = v67;
    v68 = swift_getWitnessTable();
    OUTLINED_FUNCTION_4_45();
    v69 = swift_getWitnessTable();
    v130 = v68;
    v131 = v69;
    v70 = swift_getWitnessTable();
    sub_1C12652B0();
    v138[0] = v134;
    v138[1] = v135;
    v138[2] = v136;
    v139 = v137;
    v126 = v134;
    v127 = v135;
    v128 = v136;
    v129 = v137;
    sub_1C1171908();
    LOBYTE(v68) = sub_1C1222F4C();

    if (v68)
    {
      v71 = v106;
      v72 = v104;
      v73 = v108;
      (*(v106 + 104))(v104, *MEMORY[0x1E697DBA8], v108);
      v74 = v116;
    }

    else
    {
      v72 = v104;
      sub_1C1171A48(v104);
      v74 = v116;
      v73 = v108;
      v71 = v106;
    }

    v125 = v70;
    OUTLINED_FUNCTION_2_11();
    v75 = swift_getWitnessTable();
    v76 = v101;
    OUTLINED_FUNCTION_34_8();
    sub_1C1264A10();
    (*(v71 + 8))(v72, v73);
    (*(*(v74 - 8) + 8))(v138, v74);
    swift_getKeyPath();
    *&v134 = v97;
    v77 = sub_1C1179D7C(&qword_1EDE7B960, &qword_1EBE93D70, &qword_1C12B69E0);
    v123 = v75;
    v124 = v77;

    v78 = swift_getWitnessTable();
    v79 = v102;
    sub_1C1264A30();

    (*(v105 + 8))(v76, v64);
    v80 = sub_1C1179D7C(&qword_1EDE7B970, &qword_1EBE93D78, &qword_1C12B69E8);
    v121 = v78;
    v122 = v80;
    v81 = v100;
    swift_getWitnessTable();
    v82 = v103;
    sub_1C0FDBA4C();
    v83 = v109;
    v84 = *(v109 + 8);
    v84(v79, v81);
    v85 = v107;
    sub_1C0FDBA4C();
    v84(v82, v81);
    v86 = v98;
    (*(v83 + 32))(v98, v85, v81);
    __swift_storeEnumTagSinglePayload(v86, 0, 1, v81);
    sub_1C1170030(v86, v112);
    v63 = *(v99 + 8);
    v63(v86, v111);
  }

  OUTLINED_FUNCTION_6_31();
  v87 = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_30();
  v88 = swift_getWitnessTable();
  v148 = v87;
  v149 = v88;
  OUTLINED_FUNCTION_7_16();
  v89 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_45();
  v90 = swift_getWitnessTable();
  v146 = v89;
  v147 = v90;
  v145 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_11();
  v91 = swift_getWitnessTable();
  v92 = sub_1C1179D7C(&qword_1EDE7B960, &qword_1EBE93D70, &qword_1C12B69E0);
  v143 = v91;
  v144 = v92;
  OUTLINED_FUNCTION_9_4();
  v93 = swift_getWitnessTable();
  v94 = sub_1C1179D7C(&qword_1EDE7B970, &qword_1EBE93D78, &qword_1C12B69E8);
  v141 = v93;
  v142 = v94;
  v140 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_34_8();
  sub_1C0FDBA4C();
  v95 = OUTLINED_FUNCTION_34_8();
  (v63)(v95);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1170F04(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1C11718AC();
      v69 = *&v66[16];
      v70 = v66[24];
      v67 = *v66;
      v68 = v66[8];
      v71 = v65;
      *v72 = *v66;
      *&v72[9] = *&v66[9];
      type metadata accessor for OneUpChromeView.ChromeWithLeftToolbar(0, a3, a4, v6);
      WitnessTable = swift_getWitnessTable();
      sub_1C0FDBA4C();

      sub_1C0FD1A5C(&v67, &qword_1EBE92928, &qword_1C12AF570);
      sub_1C0FD1A5C(&v69, &qword_1EBE955E8, &unk_1C12BCF40);
      v71 = v45;
      *v72 = v46;
      v72[8] = v47;
      *&v72[16] = v48;
      v72[24] = v49;
      sub_1C0FDBA4C();
      v61 = v41;
      *&v62 = v42;
      BYTE8(v62) = v43;
      *&v63 = v44;
      BYTE8(v63) = BYTE8(v44);
      type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar(0, a3, a4, v8);
      v9 = swift_getWitnessTable();
      sub_1C1112E18();
      v10 = *(&v71 + 1);
      v11 = *&v72[8];
      v38 = *v72;
      v39 = v71;
      v12 = *&v72[16];
      v36 = *&v72[24];
      v13 = v73;
      v52 = v71;
      *v53 = *v72;
      *&v53[16] = *&v72[16];
      *&v53[24] = *&v72[24];
      v54 = v73;
      sub_1C1263C30();
      type metadata accessor for OneUpChromeView.ChromeWithRightToolbar(0, a3, a4, v14);
      v50 = v9;
      v51 = WitnessTable;
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1C1112D68();
      sub_1C1178A60(v39, v10, v38, v11, v12, v36, v13);
    }

    else
    {
      sub_1C11718AC();
      *&v41 = *&v53[16];
      BYTE8(v41) = v53[24];
      v69 = *v53;
      v70 = v53[8];
      v71 = v52;
      *v72 = *v53;
      *&v72[9] = *&v53[9];
      type metadata accessor for OneUpChromeView.ChromeWithRightToolbar(0, a3, a4, v23);
      swift_getWitnessTable();
      sub_1C0FDBA4C();

      sub_1C0FD1A5C(&v69, &qword_1EBE92928, &qword_1C12AF570);
      sub_1C0FD1A5C(&v41, &qword_1EBE955E8, &unk_1C12BCF40);
      v71 = v65;
      *v72 = *v66;
      v72[8] = v66[8];
      *&v72[16] = *&v66[16];
      v72[24] = v66[24];
      sub_1C0FDBA4C();
      v71 = v45;
      *v72 = v46;
      v72[8] = v47;
      *&v72[16] = v48;
      v72[24] = v49;
      type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar(255, a3, a4, v24);
      type metadata accessor for OneUpChromeView.ChromeWithLeftToolbar(255, a3, a4, v25);
      sub_1C1263C30();
      v26 = swift_getWitnessTable();
      v27 = swift_getWitnessTable();
      v59 = v26;
      v60 = v27;
      swift_getWitnessTable();
      sub_1C1112E18();
    }

    j__swift_release_1();

    j__swift_release_1();
  }

  else
  {
    sub_1C1171850();
    v69 = *v66;
    v70 = v66[8];
    v67 = v65;
    v68 = BYTE8(v65);
    v71 = v65;
    *v72 = *v66;
    *&v72[16] = *&v66[16];
    type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar(0, a3, a4, v15);
    swift_getWitnessTable();
    sub_1C0FDBA4C();

    sub_1C0FD1A5C(&v67, &qword_1EBE92928, &qword_1C12AF570);
    sub_1C0FD1A5C(&v69, &qword_1EBE955E8, &unk_1C12BCF40);

    *&v71 = v45;
    BYTE8(v71) = BYTE8(v45);
    *v72 = v46;
    v72[8] = v47;
    *&v72[16] = v48;
    *&v72[24] = v49;
    sub_1C0FDBA4C();
    *&v61 = v41;
    BYTE8(v61) = BYTE8(v41);
    *&v62 = v42;
    BYTE8(v62) = v43;
    v63 = v44;
    type metadata accessor for OneUpChromeView.ChromeWithLeftToolbar(0, a3, a4, v16);
    swift_getWitnessTable();
    sub_1C1112D68();
    v17 = v71;
    v18 = *v72;
    v40 = *(&v71 + 1);
    v19 = *&v72[16];
    v20 = *&v72[24];
    v37 = v73;
    v52 = v71;
    *v53 = *v72;
    *&v53[16] = *&v72[16];
    *&v53[24] = *&v72[24];
    v54 = v73;
    sub_1C1263C30();
    type metadata accessor for OneUpChromeView.ChromeWithRightToolbar(0, a3, a4, v21);
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1C1112D68();
    sub_1C1178A60(v17, v40, v18, *(&v18 + 1), v19, v20, v37);

    j__swift_release_1();

    j__swift_release_1();
  }

  v71 = v61;
  *v72 = v62;
  *&v72[16] = v63;
  v73 = v64;
  type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar(255, a3, a4, v22);
  type metadata accessor for OneUpChromeView.ChromeWithLeftToolbar(255, a3, a4, v28);
  sub_1C1263C30();
  type metadata accessor for OneUpChromeView.ChromeWithRightToolbar(255, a3, a4, v29);
  v30 = sub_1C1263C30();
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v57 = v31;
  v58 = v32;
  v33 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v55 = v33;
  v56 = v34;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(*(v30 - 8) + 8))(&v71, v30);
}

uint64_t sub_1C1171850()
{
  OUTLINED_FUNCTION_17_4();
  v3 = v2;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *v3 = KeyPath;
  *(v3 + 8) = 0;
  *(v3 + 16) = result;
  *(v3 + 24) = 0;
  *(v3 + 32) = v1;
  *(v3 + 40) = v0;
  return result;
}

uint64_t sub_1C11718AC()
{
  OUTLINED_FUNCTION_17_4();
  v3 = v2;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *v3 = v1;
  *(v3 + 8) = v0;
  *(v3 + 16) = KeyPath;
  *(v3 + 24) = 0;
  *(v3 + 32) = result;
  *(v3 + 40) = 0;
  return result;
}

uint64_t sub_1C1171908()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C1171A48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1C0FD0AC4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C12629F0();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_1C1171C4C()
{
  OUTLINED_FUNCTION_23();
  v39 = v0;
  v40 = v1;
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = OUTLINED_FUNCTION_20_0();
  type metadata accessor for OneUpChromeView.TopBar(v5, v6, v4, v7);
  OUTLINED_FUNCTION_7_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955D8, &qword_1C12BCF30);
  v9 = OUTLINED_FUNCTION_20_0();
  v38 = v4;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(v9, v10, v4, v11);
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  v12 = sub_1C1263190();
  v13 = OUTLINED_FUNCTION_20_0();
  type metadata accessor for OneUpChromeView.Toolbar(v13, v14, v4, v15);
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  OUTLINED_FUNCTION_12_2();
  v16 = sub_1C1263190();
  OUTLINED_FUNCTION_22_2(255, v12, v16, &type metadata for OneUpChromeDebugBar);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  v17 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_22_2(v17, v18, v8, v19);
  OUTLINED_FUNCTION_22();
  v20 = sub_1C1265B00();
  swift_getWitnessTable();
  v21 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v37 - v25;
  OUTLINED_FUNCTION_32_10();
  v27 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_30();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v37 - v32;
  v41 = v3;
  v42 = v38;
  v43 = v39;
  sub_1C10A7F5C(v20);
  sub_1C1265590();
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  sub_1C10F4FC0(v21);
  sub_1C1264470();
  sub_1C1264BF0();
  (*(v23 + 8))(v26, v21);
  v44 = WitnessTable;
  v45 = MEMORY[0x1E6980A30];
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_57_0();
  sub_1C0FDBA4C();
  v35 = *(v29 + 8);
  v36 = OUTLINED_FUNCTION_57_0();
  v35(v36);
  sub_1C0FDBA4C();
  (v35)(v33, v27);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1171FF0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v62 = v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE955D8, &qword_1C12BCF30);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = (&v47 - v10);
  v11 = sub_1C12637E0();
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v4;
  v65 = v2;
  v58 = v4;
  v59 = v2;
  v15 = type metadata accessor for OneUpChromeView.TopBar(0, v4, v2, v14);
  swift_getWitnessTable();
  sub_1C10A7F5C(v15);
  sub_1C1265590();
  v90 = v99;
  v114 = v102;
  *v94 = *v103;
  *&v94[3] = *&v103[3];
  v16 = v107;
  v113 = v107;
  v91 = v100;
  v53 = v101;
  v54 = v106;
  v92 = v101;
  v93 = v102;
  v51 = v104;
  v95 = v104;
  v55 = v105;
  v96 = v105;
  v97 = v106;
  v98 = v107;
  v50 = sub_1C12644A0();
  v112 = *(v6 + 8);
  v57 = v6;
  v17 = *v6;
  v111 = v17;
  LODWORD(v52) = v112;
  v48 = v13;
  v49 = v11;
  if (v112 == 1)
  {
    v89 = v17;
  }

  else
  {

    sub_1C1266420();
    v18 = v11;
    v19 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v111, &qword_1EBE92928, &qword_1C12AF570);
    v56[1](v13, v18);
    v16 = v113;
  }

  sub_1C122336C();

  sub_1C12655A0();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264FB0();
  j__swift_release_1();

  sub_1C0FF9034(v55, v54, v16 & 1);
  memcpy(v88, v108, sizeof(v88));
  sub_1C12644C0();
  if (v52)
  {
    v87 = v17;
  }

  else
  {

    sub_1C1266420();
    v21 = sub_1C1264410();
    sub_1C1262620();

    v22 = v48;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v111, &qword_1EBE92928, &qword_1C12AF570);
    v56[1](v22, v49);
  }

  sub_1C122336C();

  v23 = sub_1C1263190();
  v24 = MEMORY[0x1E697E5D8];
  v76 = WitnessTable;
  v77 = MEMORY[0x1E697E5D8];
  v25 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v78, v88, 0x79uLL);
  (*(*(v23 - 8) + 8))(v78, v23);
  memcpy(v85, v109, 0xA9uLL);
  v26 = sub_1C1263190();
  v74 = v25;
  v75 = v24;
  v54 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v79, v85, 0xA9uLL);
  v52 = *(v26 - 8);
  v53 = v26;
  v27 = *(v52 + 8);
  v55 = v52 + 8;
  v56 = v27;
  (v27)(v79, v26);
  v28 = sub_1C1263AA0();
  v29 = v61;
  *v61 = v28;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE955E0, &qword_1C12BCF38);
  v31 = v57;
  v32 = v58;
  v33 = v59;
  v34 = sub_1C1172C30(v58, v59, v29 + *(v30 + 44));
  MEMORY[0x1EEE9AC00](v34);
  *(&v47 - 4) = v32;
  *(&v47 - 3) = v33;
  *(&v47 - 2) = v31;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(255, v32, v33, v35);
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  type metadata accessor for OneUpChromeView.Toolbar(255, v32, v33, v36);
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  v37 = sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C10A7F5C(v37);
  sub_1C1265590();
  memcpy(v83, v85, 0x199uLL);
  v38 = sub_1C12655A0();
  v59 = MEMORY[0x1E6981870];
  v39 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v80, v83, 0x199uLL);
  v40 = *(v38 - 8);
  v41 = *(v40 + 8);
  v41(v80, v38);
  memcpy(v81, v110, 0xA9uLL);
  memcpy(v71, v110, 0xA9uLL);
  v72[0] = v71;
  v42 = v63;
  sub_1C0FD0AC4();
  v72[1] = v42;
  memcpy(v82, v73, 0x199uLL);
  memcpy(v70, v73, 0x199uLL);
  v72[2] = v70;
  v43 = v53;
  (*(v52 + 16))(v85, v81, v53);
  (*(v40 + 16))(v85, v82, v38);
  v44 = v43;
  v69[0] = v43;
  v69[1] = v60;
  v69[2] = v38;
  v66 = v54;
  v67 = sub_1C1179D7C(&qword_1EDE76BD8, &qword_1EBE955D8, &qword_1C12BCF30);
  v68 = v39;
  sub_1C119EE80(v72, 3, v69);
  memcpy(v83, v73, 0x199uLL);
  v41(v83, v38);
  sub_1C0FD1A5C(v29, &qword_1EBE955D8, &qword_1C12BCF30);
  memcpy(v84, v110, 0xA9uLL);
  v45 = v56;
  (v56)(v84, v44);
  memcpy(v85, v70, 0x199uLL);
  v41(v85, v38);
  sub_1C0FD1A5C(v42, &qword_1EBE955D8, &qword_1C12BCF30);
  memcpy(v86, v71, 0xA9uLL);
  return (v45)(v86, v44);
}

double sub_1C1172A30(uint64_t a1, uint64_t a2)
{
  sub_1C1172BC4(&v9);
  v19 = v13;
  v20 = v14;
  v17 = v11;
  v18 = v12;
  v15 = v9;
  v16 = v10;
  type metadata accessor for OneUpChromeView.TopBar(0, a1, a2, v4);
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  sub_1C0FD1A5C(&v15, &qword_1EBE955E8, &unk_1C12BCF40);
  sub_1C0FD1A5C(&v17, &qword_1EBE92928, &qword_1C12AF570);
  sub_1C0FD1A5C(&v19, &qword_1EBE92930, &qword_1C12AF578);
  sub_1C0FDBA4C();
  j__swift_release_1();

  return sub_1C0FF9034(v6, v7, v8);
}

uint64_t sub_1C1172BC4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1C1172C30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DB8, &qword_1C12B6B30);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  *(v12 + 2) = swift_getKeyPath();
  v12[24] = 0;
  *(v12 + 4) = swift_getKeyPath();
  *(v12 + 5) = 0;
  v12[48] = 0;
  v13 = type metadata accessor for OneUpChromeVideoControls(0);
  v14 = *(v13 + 28);
  *&v12[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 32);
  *&v12[v15] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar(0, a1, a2, v16);
  v17 = sub_1C1172E80();
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DE8, &qword_1C12B6BC8) + 36)];
  *v18 = 0.0;
  v18[1] = v17;
  v19 = sub_1C1265A30();
  v20 = sub_1C1172E80();
  v21 = &v12[*(v7 + 44)];
  *v21 = v19;
  *(v21 + 1) = v20;
  sub_1C0FD0AC4();
  *a3 = 0;
  *(a3 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE955F0, &unk_1C12BCFC0);
  sub_1C0FD0AC4();
  sub_1C0FD1A5C(v12, &qword_1EBE93DB8, &qword_1C12B6B30);
  return sub_1C0FD1A5C(v9, &qword_1EBE93DB8, &qword_1C12B6B30);
}

double sub_1C1172E80()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 24);
  v5 = v0[2];
  v15 = v5;
  v6 = v16;

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v15, &qword_1EBE955E8, &unk_1C12BCF40);
    (*(v2 + 8))(v4, v1);
    v5 = v13;
  }

  v14 = *(v0 + 8);
  v13 = *v0;
  v8 = v14;

  if ((v8 & 1) == 0)
  {
    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v13, &qword_1EBE92928, &qword_1C12AF570);
    (*(v2 + 8))(v4, v1);
  }

  if (!v5)
  {

    return 0.0;
  }

  if (sub_1C1214C90())
  {

    return 0.0;
  }

  v11 = sub_1C1222D88();

  result = 32.0;
  if ((v11 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1C1173104(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v66 = v7;
  v8 = sub_1C12637E0();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v6[5];
  v96[0] = sub_1C10CA974(v6[4]);
  v96[1] = v12;
  v96[2] = v13;
  LOBYTE(v96[3]) = v14 & 1;
  v64 = v11;

  sub_1C1264490();
  v69 = v4;
  v70 = v2;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(0, v4, v2, v15);
  WitnessTable = swift_getWitnessTable();
  sub_1C1264FB0();

  j__swift_release_1();
  memcpy(v106, v107, sizeof(v106));
  sub_1C12644A0();
  v114 = *(v6 + 8);
  v65 = v6;
  v17 = *v6;
  v113 = *v6;
  v18 = v114;
  v63 = v10;
  if (v114 == 1)
  {
    v105 = v17;

    v19 = v67;
    v20 = v68;
  }

  else
  {

    sub_1C1266420();
    v21 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v113, &qword_1EBE92928, &qword_1C12AF570);
    v19 = v67;
    v22 = v10;
    v20 = v68;
    (*(v67 + 8))(v22, v68);
  }

  sub_1C122336C();

  v23 = sub_1C1263190();
  v102 = WitnessTable;
  v103 = MEMORY[0x1E697E5D8];
  v24 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v104, v106, 0x49uLL);
  (*(*(v23 - 8) + 8))(v104, v23);
  memcpy(v101, v108, sizeof(v101));
  LODWORD(v62) = sub_1C12644C0();
  v58 = v18;
  if (v18)
  {
    v100 = v17;
  }

  else
  {

    sub_1C1266420();
    v25 = sub_1C1264410();
    sub_1C1262620();

    v26 = v63;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v113, &qword_1EBE92928, &qword_1C12AF570);
    (*(v19 + 8))(v26, v20);
  }

  sub_1C122336C();

  v27 = sub_1C1263190();
  v96[27] = v24;
  v96[28] = MEMORY[0x1E697E5D8];
  v28 = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v97, v101, 0x79uLL);
  (*(*(v27 - 8) + 8))(v97, v27);
  memcpy(v96, v109, 0xA9uLL);
  v30 = sub_1C1263190();
  v96[25] = v29;
  v96[26] = v28;
  v60 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v98, v96, 0xA9uLL);
  v59 = *(v30 - 8);
  v61 = *(v59 + 8);
  v62 = v59 + 8;
  v61(v98, v30);
  LOBYTE(v95[0]) = sub_1C1173D6C(0) & 1;
  v95[1] = v31;
  LOBYTE(v95[2]) = v32 & 1;
  sub_1C1264460();
  type metadata accessor for OneUpChromeView.Toolbar(0, v69, v70, v33);
  v34 = swift_getWitnessTable();
  sub_1C1264FB0();
  j__swift_release_1();
  memcpy(v95, v96, 0x41uLL);
  sub_1C1264480();
  v35 = sub_1C1263190();
  v91 = v34;
  v92 = MEMORY[0x1E697E5D8];
  v36 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v99, v95, 0x41uLL);
  (*(*(v35 - 8) + 8))(v99, v35);
  memcpy(v90, v93, sizeof(v90));
  sub_1C1264490();
  if (v58)
  {
    v89 = v17;
  }

  else
  {

    sub_1C1266420();
    v37 = sub_1C1264410();
    sub_1C1262620();

    v38 = v63;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v113, &qword_1EBE92928, &qword_1C12AF570);
    (*(v67 + 8))(v38, v68);
  }

  sub_1C122336C();

  v39 = sub_1C1263190();
  v79[7] = v36;
  v40 = MEMORY[0x1E697E5D8];
  v79[8] = MEMORY[0x1E697E5D8];
  v41 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v80, v90, 0x71uLL);
  (*(*(v39 - 8) + 8))(v80, v39);
  memcpy(v96, v94, 0xA1uLL);
  v42 = v65;
  v111 = v65[2];
  v112 = *(v65 + 24);
  v43 = swift_allocObject();
  v44 = v70;
  *(v43 + 16) = v69;
  *(v43 + 24) = v44;
  v45 = v42[1];
  *(v43 + 32) = *v42;
  *(v43 + 48) = v45;
  *(v43 + 64) = v42[2];

  sub_1C0FD0AC4();
  sub_1C0FD0AC4();
  v46 = sub_1C1263190();
  v79[5] = v41;
  v79[6] = v40;
  v47 = swift_getWitnessTable();
  v48 = sub_1C0FF9EE4();
  sub_1C1170098(MEMORY[0x1E69E7DE0], sub_1C116302C, 0, sub_1C11787F0, v43, v46, MEMORY[0x1E69E7DE0], v47, v48);

  memcpy(v81, v96, 0xA1uLL);
  (*(*(v46 - 8) + 8))(v81, v46);
  memcpy(v87, v95, sizeof(v87));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  v49 = sub_1C1263190();
  v50 = sub_1C1179D7C(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00);
  v79[3] = v47;
  v79[4] = v50;
  v51 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v82, v87, sizeof(v82));
  v52 = *(v49 - 8);
  v53 = *(v52 + 8);
  v53(v82, v49);
  KeyPath = swift_getKeyPath();
  memcpy(v83, v110, 0xA9uLL);
  memcpy(v78, v110, 0xA9uLL);
  v79[0] = v78;
  memcpy(v84, v96, sizeof(v84));
  memcpy(v77, v96, sizeof(v77));
  v75 = KeyPath;
  v76 = 0;
  v79[1] = v77;
  v79[2] = &v75;
  (*(v59 + 16))(v87, v83, v30);
  (*(v52 + 16))(v87, v84, v49);

  v74[0] = v30;
  v74[1] = v49;
  v74[2] = &type metadata for OneUpChromeDebugBar;
  v71 = v60;
  v72 = v51;
  v73 = sub_1C10F8A98();
  sub_1C119EE80(v79, 3, v74);

  memcpy(v85, v96, sizeof(v85));
  v53(v85, v49);
  memcpy(v86, v110, 0xA9uLL);
  v55 = v61;
  v61(v86, v30);
  j__swift_release_1();
  memcpy(v87, v77, sizeof(v87));
  v53(v87, v49);
  memcpy(v88, v78, 0xA9uLL);
  return v55(v88, v30);
}

void sub_1C1173DAC(double *a1, uint64_t a2)
{
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a2 + 16);
  v12 = v9;
  v13 = *(a2 + 24);
  LOBYTE(a2) = v13;

  if ((a2 & 1) == 0)
  {
    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v12, &qword_1EBE955E8, &unk_1C12BCF40);
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  if (v9)
  {
    if (v8 != sub_1C1212B30())
    {
      sub_1C1211524(v8);
    }
  }
}

void sub_1C1173F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23();
  a19 = v21;
  a20 = v22;
  v96 = v20;
  v24 = v23;
  v98 = v25;
  v95 = sub_1C1263150();
  OUTLINED_FUNCTION_0();
  v97 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v94 = v29 - v28;
  v30 = *(v24 + 16);
  v31 = *(v24 + 24);
  v32 = OUTLINED_FUNCTION_26();
  type metadata accessor for OneUpChromeView.Toolbar(v32, v33, v31, v34);
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  OUTLINED_FUNCTION_12_2();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  v35 = sub_1C1263190();
  v36 = OUTLINED_FUNCTION_26();
  v104[0] = type metadata accessor for OneUpChromeView.TopBar(v36, v37, v31, v38);
  v104[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955F8, &qword_1C12BCFD0);
  v39 = OUTLINED_FUNCTION_26();
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(v39, v40, v31, v41);
  OUTLINED_FUNCTION_22();
  v105 = sub_1C1263190();
  v106 = &type metadata for OneUpChromeDebugBar;
  OUTLINED_FUNCTION_28_12(v105, v42, v104);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95600, &unk_1C12BCFD8);
  v43 = OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_22_2(v43, v44, v45, v46);
  OUTLINED_FUNCTION_22();
  v47 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_32_10();
  v49 = sub_1C12654C0();
  OUTLINED_FUNCTION_0();
  v93[4] = v50;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v51);
  v53 = v93 - v52;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE940C0, &qword_1C12B7570);
  OUTLINED_FUNCTION_19_1();
  v54 = sub_1C1263190();
  OUTLINED_FUNCTION_55_3(v54, &a13);
  v93[6] = v55;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v56);
  v59 = OUTLINED_FUNCTION_50_3(v57, v58);
  OUTLINED_FUNCTION_0();
  v93[7] = v60;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_51_6(v93 - v62);
  OUTLINED_FUNCTION_0();
  v93[8] = v63;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_30();
  v93[3] = v65 - v66;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_47_4(v68, v69, v70, v71, v72, v73, v74, v75, v93[0]);
  v99 = v30;
  v100 = v31;
  v101 = v96;
  v76 = sub_1C1012734(v47);
  OUTLINED_FUNCTION_35_8(v76);
  swift_getKeyPath();
  (*(v97 + 104))(v94, *MEMORY[0x1E697E7D0], v95);
  OUTLINED_FUNCTION_1_11();
  v77 = swift_getWitnessTable();
  OUTLINED_FUNCTION_44_6(v77);

  v78 = OUTLINED_FUNCTION_34_8();
  v79(v78);
  OUTLINED_FUNCTION_8_11();
  v80(v53, v49);
  v81 = sub_1C12644C0();
  OUTLINED_FUNCTION_0_0();
  v83 = sub_1C1179D7C(v82, &qword_1EBE940C0, &qword_1C12B7570);
  OUTLINED_FUNCTION_20_20(v83);
  v84 = v93[2];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_8_11();
  v85(v35, v84);
  sub_1C1264460();
  v86 = OUTLINED_FUNCTION_58_2(MEMORY[0x1E697E5D8]);
  v87 = OUTLINED_FUNCTION_57_0();
  v88 = sub_1C10F4FC0(v87);
  OUTLINED_FUNCTION_45_7(v88);
  OUTLINED_FUNCTION_8_11();
  v89(WitnessTable, v59);
  v102 = v86;
  v103 = MEMORY[0x1E6980A30];
  OUTLINED_FUNCTION_32_5();
  v90 = swift_getWitnessTable();
  OUTLINED_FUNCTION_33_10(v90);
  v91 = OUTLINED_FUNCTION_53_4();
  v81(v91);
  OUTLINED_FUNCTION_32_5();
  sub_1C0FDBA4C();
  v92 = OUTLINED_FUNCTION_32_5();
  v81(v92);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11744DC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v74 = a4;
  v120[0] = type metadata accessor for OneUpChromeView.TopBar(255, a2, a3, a5);
  v120[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955F8, &qword_1C12BCFD0);
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(255, a2, a3, v8);
  v120[2] = sub_1C1263190();
  v120[3] = &type metadata for OneUpChromeDebugBar;
  swift_getTupleTypeMetadata();
  v9 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v66 = v9;
  v10 = sub_1C12655A0();
  v68 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v59 - v11;
  v69 = v12;
  v73 = sub_1C1263190();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v59 - v15;
  LOBYTE(v120[0]) = sub_1C1173D6C(1) & 1;
  v120[1] = v16;
  LOBYTE(v120[2]) = v17 & 1;
  sub_1C12644D0();
  v75 = a2;
  v70 = a3;
  v19 = type metadata accessor for OneUpChromeView.Toolbar(0, a2, a3, v18);
  v20 = swift_getWitnessTable();
  sub_1C10F4FC0(v19);
  sub_1C1264BF0();
  j__swift_release_1();
  v107[168] = v112;
  v108 = v113;
  v109 = v114;
  v110 = v115;
  v111 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8, &unk_1C12B03B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C12A3440;
  LOBYTE(v9) = sub_1C12644D0();
  *(v21 + 32) = v9;
  v22 = sub_1C12644A0();
  *(v21 + 33) = v22;
  sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != v9)
  {
    sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v22)
  {
    sub_1C12644B0();
  }

  sub_1C1263190();
  v97[11] = v20;
  v97[12] = MEMORY[0x1E6980A30];
  v23 = swift_getWitnessTable();
  sub_1C1264FB0();
  j__swift_release_1();
  memcpy(v120, v117, 0x51uLL);
  v128 = *(a1 + 16);
  v129 = *(a1 + 24);
  v126 = *(a1 + 32);
  v127 = *(a1 + 40);
  v24 = swift_allocObject();
  v25 = v70;
  *(v24 + 16) = v75;
  *(v24 + 24) = v25;
  v26 = *(a1 + 16);
  *(v24 + 32) = *a1;
  *(v24 + 48) = v26;
  *(v24 + 57) = *(a1 + 25);

  sub_1C0FD0AC4();
  sub_1C0FD0AC4();
  v27 = sub_1C1263190();
  v97[9] = v23;
  v97[10] = MEMORY[0x1E697E5D8];
  v28 = swift_getWitnessTable();
  v29 = sub_1C0FF9EE4();
  sub_1C1170098(MEMORY[0x1E69E7DE0], sub_1C1179DC8, 0, sub_1C1178808, v24, v27, MEMORY[0x1E69E7DE0], v28, v29);

  memcpy(v98, v120, 0x51uLL);
  (*(*(v27 - 8) + 8))(v98, v27);
  memcpy(v120, v118, 0x78uLL);
  sub_1C12644C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  v30 = sub_1C1263190();
  v31 = sub_1C1179D7C(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00);
  v97[7] = v28;
  v97[8] = v31;
  v32 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v99, v120, sizeof(v99));
  (*(*(v30 - 8) + 8))(v99, v30);
  memcpy(v107, v119, 0xA1uLL);
  v33 = sub_1C1263190();
  v97[5] = v32;
  v97[6] = MEMORY[0x1E697E5D8];
  v62 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v100, v107, 0xA1uLL);
  v60 = *(v33 - 8);
  v61 = v33;
  v34 = *(v60 + 8);
  v63 = v60 + 8;
  v64 = v34;
  v35 = v34(v100, v33);
  MEMORY[0x1EEE9AC00](v35);
  *(&v59 - 4) = v75;
  *(&v59 - 3) = v25;
  v58 = a1;
  sub_1C10A7F5C(v66);
  v36 = v67;
  sub_1C1265590();
  v37 = v69;
  v38 = swift_getWitnessTable();
  sub_1C10F4FC0(v37);
  sub_1C1264470();
  v39 = v72;
  sub_1C1264BF0();
  (*(v68 + 8))(v36, v37);
  v97[3] = v38;
  v97[4] = MEMORY[0x1E6980A30];
  v40 = v73;
  v70 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v41 = v71;
  v75 = *(v71 + 8);
  v75(v39, v40);
  sub_1C12659A0();
  sub_1C1262C80();
  v68 = v122;
  v69 = v120[21];
  v66 = v125;
  v67 = v124;
  v103 = 1;
  v102 = v121;
  v101 = v123;
  v42 = sub_1C12644A0();
  sub_1C12628A0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v103;
  LOBYTE(v24) = v102;
  LOBYTE(v33) = v101;
  v107[0] = 0;
  memcpy(v105, v120, 0xA1uLL);
  memcpy(v96, v120, 0xA1uLL);
  v97[0] = v96;
  v52 = v76;
  (*(v41 + 16))(v39, v76, v40);
  v81 = 0;
  v82 = v51;
  v83 = v69;
  v84 = v24;
  v85 = v68;
  v86 = v33;
  v87 = v67;
  v88 = v66;
  v89 = v42;
  *v90 = *v104;
  *&v90[3] = *&v104[3];
  v91 = v44;
  v92 = v46;
  v93 = v48;
  v94 = v50;
  v95 = 0;
  v97[1] = v39;
  v97[2] = &v81;
  v53 = v61;
  (*(v60 + 16))(v107, v105, v61);
  v80[0] = v53;
  v80[1] = v40;
  v80[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95600, &unk_1C12BCFD8);
  v77 = v62;
  v78 = v70;
  v79 = sub_1C1178870();
  sub_1C119EE80(v97, 3, v80);
  v54 = v52;
  v55 = v75;
  v75(v54, v40);
  memcpy(v106, v120, 0xA1uLL);
  v56 = v64;
  v64(v106, v53);
  v55(v39, v40);
  memcpy(v107, v96, 0xA1uLL);
  return v56(v107, v53);
}

void sub_1C1174FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23();
  a19 = v21;
  a20 = v22;
  v100 = v20;
  v24 = v23;
  v103 = v25;
  sub_1C1263150();
  OUTLINED_FUNCTION_0();
  v101 = v27;
  v102 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v99 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95600, &unk_1C12BCFD8);
  v32 = *(v24 + 16);
  v31 = *(v24 + 24);
  v33 = OUTLINED_FUNCTION_43_8();
  v109[0] = type metadata accessor for OneUpChromeView.TopBar(v33, v34, v35, v36);
  v109[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955F8, &qword_1C12BCFD0);
  v37 = OUTLINED_FUNCTION_43_8();
  v95 = v31;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(v37, v38, v39, v40);
  v110 = sub_1C1263190();
  v111 = &type metadata for OneUpChromeDebugBar;
  OUTLINED_FUNCTION_28_12(v110, v41, v109);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_26_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  v42 = sub_1C1263190();
  v43 = OUTLINED_FUNCTION_43_8();
  type metadata accessor for OneUpChromeView.Toolbar(v43, v44, v45, v46);
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  v47 = sub_1C1263190();
  OUTLINED_FUNCTION_22_2(255, v30, v42, v47);
  OUTLINED_FUNCTION_22();
  v48 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_32_10();
  v50 = sub_1C12654C0();
  OUTLINED_FUNCTION_0();
  v94[3] = v51;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v94 - v53;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE940C0, &qword_1C12B7570);
  OUTLINED_FUNCTION_19_1();
  v55 = sub_1C1263190();
  OUTLINED_FUNCTION_55_3(v55, &a12);
  v96 = v56;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v57);
  v60 = OUTLINED_FUNCTION_50_3(v58, v59);
  OUTLINED_FUNCTION_0();
  v97 = v61;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_51_6(v94 - v63);
  OUTLINED_FUNCTION_0();
  v98 = v64;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_30();
  v94[2] = v66 - v67;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_47_4(v69, v70, v71, v72, v73, v74, v75, v76, v94[0]);
  v104 = v32;
  v105 = v95;
  v106 = v100;
  v77 = sub_1C1012734(v48);
  OUTLINED_FUNCTION_35_8(v77);
  swift_getKeyPath();
  (*(v101 + 104))(v99, *MEMORY[0x1E697E7D0], v102);
  OUTLINED_FUNCTION_1_11();
  v78 = swift_getWitnessTable();
  OUTLINED_FUNCTION_44_6(v78);

  v79 = OUTLINED_FUNCTION_34_8();
  v80(v79);
  OUTLINED_FUNCTION_8_11();
  v81(v54, v50);
  v82 = sub_1C12644A0();
  OUTLINED_FUNCTION_0_0();
  v84 = sub_1C1179D7C(v83, &qword_1EBE940C0, &qword_1C12B7570);
  OUTLINED_FUNCTION_20_20(v84);
  v85 = v94[1];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_8_11();
  v86(v30, v85);
  sub_1C1264460();
  v87 = OUTLINED_FUNCTION_58_2(MEMORY[0x1E697E5D8]);
  v88 = OUTLINED_FUNCTION_57_0();
  v89 = sub_1C10F4FC0(v88);
  OUTLINED_FUNCTION_45_7(v89);
  OUTLINED_FUNCTION_8_11();
  v90(WitnessTable, v60);
  v107 = v87;
  v108 = MEMORY[0x1E6980A30];
  OUTLINED_FUNCTION_32_5();
  v91 = swift_getWitnessTable();
  OUTLINED_FUNCTION_33_10(v91);
  v92 = OUTLINED_FUNCTION_53_4();
  v82(v92);
  OUTLINED_FUNCTION_32_5();
  sub_1C0FDBA4C();
  v93 = OUTLINED_FUNCTION_32_5();
  v82(v93);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1175510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v77 = a1;
  v74 = a4;
  v75 = a3;
  v5 = a2;
  v126[0] = type metadata accessor for OneUpChromeView.TopBar(255, a2, a3, a5);
  v126[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955F8, &qword_1C12BCFD0);
  v76 = v5;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(255, v5, a3, v7);
  v126[2] = sub_1C1263190();
  v126[3] = &type metadata for OneUpChromeDebugBar;
  swift_getTupleTypeMetadata();
  v8 = sub_1C1265B00();
  swift_getWitnessTable();
  v9 = sub_1C12655A0();
  v73 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  v12 = sub_1C1263190();
  v78 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  sub_1C12659A0();
  sub_1C1262C80();
  v64 = v126[29];
  v68 = v130;
  v66 = v128;
  v67 = v131;
  v138 = 1;
  v137 = v127;
  v136 = v129;
  v65 = sub_1C12644C0();
  sub_1C12628A0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v61 = v138;
  v62 = v137;
  v63 = v136;
  LOBYTE(v126[0]) = 0;
  v79 = v5;
  v80 = v75;
  v81 = v77;
  sub_1C10A7F5C(v8);
  sub_1C1265590();
  WitnessTable = swift_getWitnessTable();
  sub_1C10F4FC0(v9);
  sub_1C1264470();
  sub_1C1264BF0();
  (*(v73 + 8))(v11, v9);
  v126[27] = WitnessTable;
  v126[28] = MEMORY[0x1E6980A30];
  v27 = swift_getWitnessTable();
  v71 = v17;
  v60 = v27;
  sub_1C0FDBA4C();
  v28 = *(v78 + 8);
  v72 = v14;
  v73 = v12;
  v29 = v14;
  v30 = v75;
  v69 = v28;
  v70 = v78 + 8;
  v28(v29, v12);
  LOBYTE(v126[0]) = sub_1C1173D6C(1) & 1;
  v126[1] = v31;
  LOBYTE(v126[2]) = v32 & 1;
  sub_1C12644D0();
  v34 = type metadata accessor for OneUpChromeView.Toolbar(0, v76, v30, v33);
  v35 = swift_getWitnessTable();
  sub_1C10F4FC0(v34);
  sub_1C1264BF0();
  j__swift_release_1();
  v112[216] = v117;
  v113 = v118;
  v114 = v119;
  v115 = v120;
  v116 = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8, &unk_1C12B03B0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C12A3440;
  LOBYTE(v5) = sub_1C12644D0();
  *(v36 + 32) = v5;
  v37 = sub_1C12644C0();
  *(v36 + 33) = v37;
  sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != v5)
  {
    sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v37)
  {
    sub_1C12644B0();
  }

  sub_1C1263190();
  v105[11] = v35;
  v105[12] = MEMORY[0x1E6980A30];
  v38 = swift_getWitnessTable();
  sub_1C1264FB0();
  j__swift_release_1();
  memcpy(v126, v122, 0x51uLL);
  sub_1C12644A0();
  v39 = sub_1C1263190();
  v105[9] = v38;
  v105[10] = MEMORY[0x1E697E5D8];
  v40 = MEMORY[0x1E697E5D8];
  v41 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v106, v126, 0x51uLL);
  (*(*(v39 - 8) + 8))(v106, v39);
  memcpy(v126, v123, 0x81uLL);
  v42 = v77;
  v134 = *(v77 + 16);
  v135 = *(v77 + 24);
  v132 = *(v77 + 32);
  v133 = *(v77 + 40);
  v43 = swift_allocObject();
  *(v43 + 16) = v76;
  *(v43 + 24) = v30;
  v44 = v42[1];
  *(v43 + 32) = *v42;
  *(v43 + 48) = v44;
  *(v43 + 57) = *(v42 + 25);

  sub_1C0FD0AC4();
  sub_1C0FD0AC4();
  v45 = sub_1C1263190();
  v105[7] = v41;
  v105[8] = v40;
  v46 = swift_getWitnessTable();
  v47 = sub_1C0FF9EE4();
  sub_1C1170098(MEMORY[0x1E69E7DE0], sub_1C1179DC8, 0, sub_1C1178A18, v43, v45, MEMORY[0x1E69E7DE0], v46, v47);

  memcpy(v107, v126, 0x81uLL);
  (*(*(v45 - 8) + 8))(v107, v45);
  memcpy(v126, v124, 0xA8uLL);
  sub_1C12644A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  v48 = sub_1C1263190();
  v49 = sub_1C1179D7C(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00);
  v105[5] = v46;
  v105[6] = v49;
  v50 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v108, v126, sizeof(v108));
  (*(*(v48 - 8) + 8))(v108, v48);
  memcpy(v112, v125, 0xD1uLL);
  v51 = sub_1C1263190();
  v105[3] = v50;
  v105[4] = v40;
  v52 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v109, v112, 0xD1uLL);
  v53 = *(v51 - 8);
  v54 = *(v53 + 8);
  v54(v109, v51);
  v87 = 0;
  v88 = v61;
  *v89 = v142[0];
  *&v89[3] = *(v142 + 3);
  v90 = v64;
  v91 = v62;
  *v92 = *v141;
  *&v92[3] = *&v141[3];
  v93 = v66;
  v94 = v63;
  *&v95[3] = *&v140[3];
  *v95 = *v140;
  v96 = v68;
  v97 = v67;
  v98 = v65;
  *&v99[3] = *&v139[3];
  *v99 = *v139;
  v100 = v19;
  v101 = v21;
  v102 = v23;
  v103 = v25;
  v104 = 0;
  v105[0] = &v87;
  v56 = v71;
  v55 = v72;
  v57 = v73;
  (*(v78 + 16))(v72, v71, v73);
  v105[1] = v55;
  memcpy(v110, v126, 0xD1uLL);
  memcpy(v86, v126, 0xD1uLL);
  v105[2] = v86;
  (*(v53 + 16))(v112, v110, v51);
  v85[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95600, &unk_1C12BCFD8);
  v85[1] = v57;
  v85[2] = v51;
  v82 = sub_1C1178870();
  v83 = v60;
  v84 = v52;
  sub_1C119EE80(v105, 3, v85);
  memcpy(v111, v126, 0xD1uLL);
  v54(v111, v51);
  v58 = v69;
  v69(v56, v57);
  memcpy(v112, v86, 0xD1uLL);
  v54(v112, v51);
  return v58(v55, v57);
}

void sub_1C1176064()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v47 = v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE955F8, &qword_1C12BCFD0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30();
  v48 = v6 - v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  sub_1C1172BC4(&v74);
  v82 = v76;
  v83 = v77;
  v80 = v75;
  v81 = BYTE8(v75);
  v78 = v74;
  v79 = BYTE8(v74);
  LOBYTE(v87[3]) = v77;
  v87[1] = v75;
  v87[2] = v76;
  v87[0] = v74;
  v11 = OUTLINED_FUNCTION_32_10();
  v44 = type metadata accessor for OneUpChromeView.TopBar(v11, v12, v1, v13);
  OUTLINED_FUNCTION_7_33();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C();
  sub_1C0FD1A5C(&v78, &qword_1EBE955E8, &unk_1C12BCF40);
  sub_1C0FD1A5C(&v80, &qword_1EBE92928, &qword_1C12AF570);
  sub_1C0FD1A5C(&v82, &qword_1EBE92930, &qword_1C12AF578);
  *v10 = sub_1C1263AA0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v49 = v10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95610, &qword_1C12BD028);
  sub_1C11765C4(&v10[*(v14 + 44)]);
  v86[0] = sub_1C10CA974(*v3);
  v86[1] = v15;
  v86[2] = v16;
  LOBYTE(v86[3]) = v17 & 1;

  sub_1C1264490();
  v18 = OUTLINED_FUNCTION_32_10();
  type metadata accessor for OneUpChromeMaskedLibraryScrubber(v18, v19, v1, v20);
  v21 = swift_getWitnessTable();
  sub_1C1264FB0();

  j__swift_release_1();
  memcpy(v86, v87, 0x49uLL);
  OUTLINED_FUNCTION_32_10();
  v22 = sub_1C1263190();
  v65[4] = v21;
  v65[5] = MEMORY[0x1E697E5D8];
  OUTLINED_FUNCTION_4_0();
  v41 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  memcpy(v84, v86, 0x49uLL);
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  v42 = v23 + 8;
  v43 = v24;
  v24(v84, v22);
  KeyPath = swift_getKeyPath();
  v26 = v67;
  v27 = v71;
  v28 = v72;
  HIDWORD(v37) = v73;
  v58 = v67;
  v38 = v67;
  v59 = v68;
  v39 = v68;
  v60 = v69;
  v40 = v69;
  v61 = v70;
  v62 = v71;
  v63 = v72;
  v64 = v73;
  v65[0] = &v58;
  v29 = v48;
  sub_1C0FD0AC4();
  v65[1] = v29;
  memcpy(v85, v66, 0x49uLL);
  memcpy(v57, v66, 0x49uLL);
  v55 = KeyPath;
  v56 = 0;
  v65[2] = v57;
  v65[3] = &v55;
  j__swift_retain(v26);

  v30 = v28;
  LOBYTE(v28) = BYTE4(v37);
  v31 = sub_1C1058CE4(v27, v30, SBYTE4(v37));
  (*(v23 + 16))(v87, v85, v22, v31);

  v54[0] = v44;
  v54[1] = v46;
  v54[2] = v22;
  v54[3] = &type metadata for OneUpChromeDebugBar;
  v50 = WitnessTable;
  v51 = sub_1C1179D7C(&qword_1EBE95618, &qword_1EBE955F8, &qword_1C12BCFD0);
  v52 = v41;
  v53 = sub_1C10F8A98();
  sub_1C119EE80(v65, 4, v54);

  memcpy(v86, v66, 0x49uLL);
  v32 = v43;
  v43(v86, v22);
  sub_1C0FD1A5C(v49, &qword_1EBE955F8, &qword_1C12BCFD0);
  j__swift_release_1();

  v33 = OUTLINED_FUNCTION_34_8();
  sub_1C0FF9034(v33, v34, v28);
  j__swift_release_1();
  memcpy(v87, v57, 0x49uLL);
  v32(v87, v22);
  sub_1C0FD1A5C(v48, &qword_1EBE955F8, &qword_1C12BCFD0);
  v35 = v62;
  v36 = v63;
  LOBYTE(v27) = v64;
  j__swift_release_1();

  sub_1C0FF9034(v35, v36, v27);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11765C4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OneUpChromeVideoControls(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_30();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  *(v9 + 2) = swift_getKeyPath();
  v9[24] = 0;
  *(v9 + 4) = swift_getKeyPath();
  *(v9 + 5) = 0;
  v9[48] = 0;
  v10 = *(v3 + 36);
  *&v9[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  swift_storeEnumTagMultiPayload();
  v11 = *(v3 + 40);
  *&v9[v11] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_1C1178900(v9, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE95620, &unk_1C12BD030);
  sub_1C1178900(v6, a1 + *(v12 + 48));
  sub_1C1178964(v9);
  return sub_1C1178964(v6);
}

void sub_1C1176740(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, double (*a5)(uint64_t), void (*a6)(double))
{
  v10 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = *a1;
  v18 = *(a2 + 32);
  v22 = v18;
  v23 = *(a2 + 40);

  if ((v23 & 1) == 0)
  {
    sub_1C1266420();
    v20 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v22, &qword_1EBE955E8, &unk_1C12BCF40);
    v19 = (*(v12 + 8))(v16, v10);
    v18 = v21;
  }

  if (v18)
  {
    if (v17 != a5(v19))
    {
      a6(v17);
    }
  }
}

void sub_1C1176914()
{
  OUTLINED_FUNCTION_23();
  v28 = v0;
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  if ((v5 & 1) == 0)
  {

    sub_1C1266420();
    v25 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v26 = j__swift_release_1();
    (*(v12 + 8))(v16, v10, v26);
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C1112950(v31);
    goto LABEL_6;
  }

  v32 = v7;

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C12135E0();

  v17 = v9 & 1;
  sub_1C1210800(v9 & 1, &v33);
  v27 = v33;
  v18 = v34;
  v19 = v35;
  v20 = v36;
  KeyPath = swift_getKeyPath();
  v38 = v20;
  v37 = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v28;
  *(v22 + 32) = v17;
  *(v22 + 40) = v7;
  *(v22 + 48) = v5 & 1;
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v40 = 0;
  v39 = 0;
  v30[0] = v27;
  *&v30[1] = v18;
  DWORD2(v30[1]) = v19;
  BYTE12(v30[1]) = v20;
  v30[2] = KeyPath;
  LOBYTE(v30[3]) = 0;
  *(&v30[3] + 1) = sub_1C0FA84D0;
  *&v30[4] = 0;
  *(&v30[4] + 1) = sub_1C1178FEC;
  *&v30[5] = v22;
  BYTE8(v30[5]) = 2;
  v30[6] = 0uLL;
  *&v30[7] = v23;
  BYTE8(v30[7]) = 0;
  *&v30[8] = v24;
  BYTE8(v30[8]) = 0;
  nullsub_1();
  j__swift_retain(v7);
  memcpy(v31, v30, 0x89uLL);
LABEL_6:
  memcpy(v29, v31, 0x89uLL);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C1176BAC(double *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1C12637E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];

  if ((a4 & 1) == 0)
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v14 = j__swift_release_1();
    (*(v8 + 8))(v10, v7, v14);
    a3 = v15[1];
  }

  if (a3)
  {
    sub_1C1214148(v11, v12);
  }
}

void sub_1C1176D34()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95740, &qword_1C12BD498);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  v9 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v15 = v14 - v13;
  v30 = *(v0 + 8);
  v16 = *v0;
  v29 = *v0;
  v17 = v30;

  if ((v17 & 1) == 0)
  {
    sub_1C1266420();
    v18 = sub_1C1264410();
    v28[0] = v0;
    v19 = v5;
    v20 = v2;
    v21 = v4;
    v22 = v18;
    sub_1C1262620();

    v4 = v21;
    v2 = v20;
    v5 = v19;
    v0 = v28[0];
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v29, &qword_1EBE955E8, &unk_1C12BCF40);
    (*(v11 + 8))(v15, v9);
    v16 = v28[1];
  }

  v23 = 1;
  if (v16)
  {
    *v8 = sub_1C1263AA0();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95748, &qword_1C12BD4A0);
    sub_1C1176F90(v0, v16, *(v2 + 24), &v8[*(v24 + 44)], *(v2 + 16));

    KeyPath = swift_getKeyPath();
    v26 = swift_getKeyPath();
    v27 = &v8[*(v5 + 36)];
    *v27 = 1;
    *(v27 + 1) = 0;
    *(v27 + 2) = 0;
    *(v27 + 3) = KeyPath;
    v27[32] = 0;
    *(v27 + 5) = v26;
    v27[48] = 0;
    sub_1C0FC0614();
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v4, v23, 1, v5);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1176F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t a5@<X2>)
{
  v83 = a3;
  v88 = a4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95750, &qword_1C12BD4A8);
  v76 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v75 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95758, &qword_1C12BD4B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v71 - v12;
  v74 = sub_1C12637E0();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OneUpTopBar(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95760, &qword_1C12BD4B8);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71 - v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95768, &qword_1C12BD4C0);
  MEMORY[0x1EEE9AC00](v78);
  v23 = &v71 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95770, &qword_1C12BD4C8);
  MEMORY[0x1EEE9AC00](v80);
  v25 = &v71 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95778, &qword_1C12BD4D0);
  MEMORY[0x1EEE9AC00](v79);
  v84 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v71 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v81 = &v71 - v31;
  v77 = type metadata accessor for OneUpChromeView.TopBar(0, a5, v83, v32);
  sub_1C1177954(__src);
  LOBYTE(a5) = __src[0];
  *(v17 + 3) = type metadata accessor for OneUpChromeViewModel(0);
  *(v17 + 4) = sub_1C1178FA8(&qword_1EDE7D3D0, type metadata accessor for OneUpChromeViewModel);
  *v17 = a2;
  *(v17 + 6) = swift_getKeyPath();
  *(v17 + 7) = 0;
  v17[64] = 0;
  *(v17 + 9) = swift_getKeyPath();
  v17[80] = 0;
  v33 = *(v15 + 40);
  *&v17[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v17[40] = a5;
  v82 = a2;

  sub_1C12659A0();
  sub_1C1263390();
  sub_1C1178EE4(v17, v21, v34);
  memcpy(&v21[*(v19 + 44)], __src, 0x70uLL);
  v35 = sub_1C1264480();
  v97 = *(a1 + 16);
  v83 = a1;
  v98 = *(a1 + 24);
  LOBYTE(v19) = v98;

  if ((v19 & 1) == 0)
  {
    sub_1C1266420();
    v36 = sub_1C1264410();
    sub_1C1262620();

    v37 = v72;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v97, &qword_1EBE92928, &qword_1C12AF570);
    (*(v73 + 8))(v37, v74);
  }

  sub_1C122336C();

  sub_1C12628A0();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_1C1178F50();
  v46 = &v23[*(v78 + 36)];
  *v46 = v35;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = sub_1C1264490();
  sub_1C12628A0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_1C1178F50();
  v56 = &v25[*(v80 + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_1C1178F50();
  v57 = &v29[*(v79 + 36)];
  *v57 = sub_1C116302C;
  *(v57 + 1) = 0;
  v58 = v82;
  *(v57 + 2) = sub_1C1178F48;
  *(v57 + 3) = v58;
  v59 = v81;
  sub_1C1178F50();

  if (sub_1C1177CD4())
  {
    KeyPath = swift_getKeyPath();
    v61 = swift_getKeyPath();
    type metadata accessor for OneUpSpatialPhotoBadgeStateModel(0);
    sub_1C1178FA8(&qword_1EDE7C6C8, type metadata accessor for OneUpSpatialPhotoBadgeStateModel);
    v62 = sub_1C1262A80();
    v89 = KeyPath;
    v90 = 0;
    v91 = 0;
    v92 = v61;
    v93 = 0;
    v94 = v62;
    v95 = v63 & 1;
    if (qword_1EDE82FD8 != -1)
    {
      swift_once();
    }

    sub_1C10F90E0();
    v64 = v75;
    sub_1C1264A20();

    v65 = v85;
    v66 = v86;
    (*(v76 + 32))(v85, v64, v86);
    v67 = 0;
  }

  else
  {
    v67 = 1;
    v66 = v86;
    v65 = v85;
  }

  __swift_storeEnumTagSinglePayload(v65, v67, 1, v66);
  v68 = v84;
  sub_1C0FD0AC4();
  v69 = v87;
  sub_1C0FC0674();
  sub_1C0FD0AC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95780, &qword_1C12BD4D8);
  sub_1C0FC0674();
  sub_1C0FC06D4(v65);
  sub_1C0FD1A5C(v59, &qword_1EBE95778, &qword_1C12BD4D0);
  sub_1C0FC06D4(v69);
  return sub_1C0FD1A5C(v68, &qword_1EBE95778, &qword_1C12BD4D0);
}

void sub_1C1177954(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v1 + 8);
  v22 = *v1;
  v8 = v22;
  v9 = v23;

  v10 = v8;
  if ((v9 & 1) == 0)
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v22, &qword_1EBE955E8, &unk_1C12BCF40);
    (*(v5 + 8))(v7, v4);
    v10 = v20;
  }

  if (v10 && (sub_1C121380C(), , (v20 & 1) != 0))
  {
    v12 = 0x80;
  }

  else
  {

    if ((v9 & 1) == 0)
    {
      sub_1C1266420();
      v13 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v22, &qword_1EBE955E8, &unk_1C12BCF40);
      (*(v5 + 8))(v7, v4);
      v8 = v20;
    }

    if (!v8 || (sub_1C1213358(), , v14 = v20, v20 == 3))
    {
      v14 = 0;
    }

    v19 = v14;
    v21 = *(v2 + 24);
    v20 = v2[2];
    v15 = v21;

    if ((v15 & 1) == 0)
    {
      sub_1C1266420();
      v16 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v20, &qword_1EBE92928, &qword_1C12AF570);
      (*(v5 + 8))(v7, v4);
    }

    v17 = sub_1C1224CE4();

    sub_1C119135C(&v19, 1, (v17 & 1) == 0, &v18);
    v12 = v18;
  }

  *a1 = v12;
}

void sub_1C1177C94(double *a1)
{
  v1 = *a1;
  if (v1 != sub_1C1212A0C())
  {
    sub_1C1211490(v1);
  }
}

void sub_1C1177D4C()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v10[0] = *v0;
  v10[1] = v5;
  v10[2] = *(v0 + 32);
  v11 = *(v0 + 48);
  v12 = *(v0 + 40);
  v13 = v11;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v12, &qword_1EBE92928, &qword_1C12AF570);
    (*(v2 + 8))(v4, v1);
  }

  sub_1C1222454();

  v8 = sub_1C1265A60();
  MEMORY[0x1EEE9AC00](v8);
  *(&v9 - 2) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95728, &qword_1C12BD480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95730, &qword_1C12BD488);
  sub_1C1179D7C(&unk_1EDE7BB58, &qword_1EBE95728, &qword_1C12BD480);
  sub_1C1178E2C();
  sub_1C1265030();
}

uint64_t sub_1C1177FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C12637E0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 8);
  if (!v11 || (v12 = 0.0, (v11(v8) & 1) != 0))
  {
    v13 = *(a2 + 16);
    v19[0] = *a2;
    v19[1] = v13;
    v19[2] = *(a2 + 32);
    v20 = *(a2 + 48);
    v12 = 0.0;
    if (sub_1C11781FC())
    {
      BYTE8(v19[0]) = *(a2 + 48);
      *&v19[0] = *(a2 + 40);
      v14 = BYTE8(v19[0]);

      if ((v14 & 1) == 0)
      {
        sub_1C1266420();
        v15 = sub_1C1264410();
        sub_1C1262620();

        sub_1C12637D0();
        swift_getAtKeyPath();
        sub_1C0FD1A5C(v19, &qword_1EBE92928, &qword_1C12AF570);
        (*(v7 + 8))(v10, v6);
      }

      v12 = sub_1C122607C();
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95738, &qword_1C12BD490);
  (*(*(v16 - 8) + 16))(a3, a1, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95730, &qword_1C12BD488);
  *(a3 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_1C11781FC()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 3);
  v7 = v0[32];

  if ((v7 & 1) == 0)
  {
    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v10 = j__swift_release_1();
    (*(v2 + 8))(v4, v1, v10);
    v6 = v14;
  }

  if (v6)
  {
    HIBYTE(v13) = v5;
    v11 = sub_1C121486C(&v13 + 7, v8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1C1178378(uint64_t a1)
{
  swift_weakInit();
  if (a1)
  {
    swift_weakAssign();
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t sub_1C11783D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1C117845C(uint64_t a1)
{
  type metadata accessor for OneUpChromeViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1C10F89D0(319, &qword_1EDE775D0, &qword_1EBE93D88, &qword_1C12BE100);
    if (v2 <= 0x3F)
    {
      sub_1C10F89D0(319, &qword_1EDE77668, &qword_1EBE91478, qword_1C12B6A70);
      if (v3 <= 0x3F)
      {
        sub_1C1007F88();
        if (v4 <= 0x3F)
        {
          sub_1C10F8858(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
          if (v5 <= 0x3F)
          {
            sub_1C0FDAA88();
            if (v6 <= 0x3F)
            {
              sub_1C10F8858(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C117860C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1178648(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1178688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1178870()
{
  result = qword_1EBE95608;
  if (!qword_1EBE95608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95600, &unk_1C12BCFD8);
    sub_1C10F9200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95608);
  }

  return result;
}

uint64_t sub_1C1178900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpChromeVideoControls(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1178964(uint64_t a1)
{
  v2 = type metadata accessor for OneUpChromeVideoControls(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_51Tm()
{

  j__swift_release_1();

  return swift_deallocObject();
}

double sub_1C1178A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return j__swift_release_1();
  }

  else
  {

    j__swift_release_1();
  }

  return result;
}

unint64_t sub_1C1178AF4()
{
  result = qword_1EDE7CAA8;
  if (!qword_1EDE7CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CAA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SbIegd_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C1178B70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1178BC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C1178C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1178C74(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1178CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1178CEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1178D2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C1178E2C()
{
  result = qword_1EDE7BF30;
  if (!qword_1EDE7BF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95730, &qword_1C12BD488);
    sub_1C1179D7C(&qword_1EDE7BAC0, &qword_1EBE95738, &qword_1C12BD490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF30);
  }

  return result;
}

uint64_t sub_1C1178EE4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for OneUpTopBar(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1178F50()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_18();
  v4(v3);
  return v0;
}

uint64_t sub_1C1178FA8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_15_22();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1179008()
{
  result = qword_1EBE95798;
  if (!qword_1EBE95798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95740, &qword_1C12BD498);
    sub_1C1179D7C(&qword_1EBE957A0, &qword_1EBE957A8, &qword_1C12BD4E8);
    sub_1C10CAB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95798);
  }

  return result;
}

uint64_t sub_1C11790C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    OUTLINED_FUNCTION_17();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C117912C()
{
  result = qword_1EBE957C0;
  if (!qword_1EBE957C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE957C8, &qword_1C12BD4F8);
    sub_1C11791B8();
    sub_1C10CAB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE957C0);
  }

  return result;
}

unint64_t sub_1C11791B8()
{
  result = qword_1EBE957D0;
  if (!qword_1EBE957D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE957D8, &qword_1C12BD500);
    sub_1C1179270();
    sub_1C1179D7C(&qword_1EDE7BA88, &qword_1EBE93AE8, &qword_1C12B77B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE957D0);
  }

  return result;
}

unint64_t sub_1C1179270()
{
  result = qword_1EBE957E0;
  if (!qword_1EBE957E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE957E8, &qword_1C12BD508);
    sub_1C11792FC();
    sub_1C109739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE957E0);
  }

  return result;
}

unint64_t sub_1C11792FC()
{
  result = qword_1EDE76E10;
  if (!qword_1EDE76E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE957F0, &unk_1C12BD510);
    sub_1C1179388();
    sub_1C11799FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E10);
  }

  return result;
}

unint64_t sub_1C1179388()
{
  result = qword_1EDE7BBC0;
  if (!qword_1EDE7BBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE957F8, &unk_1C12C8D40);
    sub_1C1179414();
    sub_1C1179708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBC0);
  }

  return result;
}

unint64_t sub_1C1179414()
{
  result = qword_1EDE7BBE0;
  if (!qword_1EDE7BBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95800, &qword_1C12BD520);
    sub_1C11794A0();
    sub_1C11795D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBE0);
  }

  return result;
}

unint64_t sub_1C11794A0()
{
  result = qword_1EDE7BC30;
  if (!qword_1EDE7BC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95808, &qword_1C12BD528);
    sub_1C117952C();
    sub_1C1179580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC30);
  }

  return result;
}

unint64_t sub_1C117952C()
{
  result = qword_1EDE7CA90;
  if (!qword_1EDE7CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CA90);
  }

  return result;
}

unint64_t sub_1C1179580()
{
  result = qword_1EDE7CAA0;
  if (!qword_1EDE7CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CAA0);
  }

  return result;
}

unint64_t sub_1C11795D4()
{
  result = qword_1EDE7BC18;
  if (!qword_1EDE7BC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95810, &qword_1C12BD530);
    sub_1C1179660();
    sub_1C11796B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC18);
  }

  return result;
}

unint64_t sub_1C1179660()
{
  result = qword_1EDE7C7D0;
  if (!qword_1EDE7C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C7D0);
  }

  return result;
}

unint64_t sub_1C11796B4()
{
  result = qword_1EDE7C6E8;
  if (!qword_1EDE7C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C6E8);
  }

  return result;
}

unint64_t sub_1C1179708()
{
  result = qword_1EDE7BBD8;
  if (!qword_1EDE7BBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95818, &qword_1C12BD538);
    sub_1C1179794();
    sub_1C11798C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBD8);
  }

  return result;
}

unint64_t sub_1C1179794()
{
  result = qword_1EDE7BC20;
  if (!qword_1EDE7BC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95820, &qword_1C12BD540);
    sub_1C1179820();
    sub_1C1179874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC20);
  }

  return result;
}

unint64_t sub_1C1179820()
{
  result = qword_1EDE7C8A0;
  if (!qword_1EDE7C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C8A0);
  }

  return result;
}

unint64_t sub_1C1179874()
{
  result = qword_1EDE7C898;
  if (!qword_1EDE7C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C898);
  }

  return result;
}

unint64_t sub_1C11798C8()
{
  result = qword_1EDE7BC28;
  if (!qword_1EDE7BC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95828, &qword_1C12BD548);
    sub_1C1179954();
    sub_1C11799A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC28);
  }

  return result;
}

unint64_t sub_1C1179954()
{
  result = qword_1EDE7C948[0];
  if (!qword_1EDE7C948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7C948);
  }

  return result;
}

unint64_t sub_1C11799A8()
{
  result = qword_1EDE7CB50;
  if (!qword_1EDE7CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CB50);
  }

  return result;
}

unint64_t sub_1C11799FC()
{
  result = qword_1EDE76E18;
  if (!qword_1EDE76E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95830, &qword_1C12BD550);
    sub_1C1179A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E18);
  }

  return result;
}

unint64_t sub_1C1179A88()
{
  result = qword_1EDE76E38;
  if (!qword_1EDE76E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95838, &qword_1C12BD558);
    sub_1C1179B14();
    sub_1C1179C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E38);
  }

  return result;
}

unint64_t sub_1C1179B14()
{
  result = qword_1EDE7BC48;
  if (!qword_1EDE7BC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95840, &qword_1C12BD560);
    sub_1C1179BA0();
    sub_1C1179BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC48);
  }

  return result;
}

unint64_t sub_1C1179BA0()
{
  result = qword_1EDE7D6B0;
  if (!qword_1EDE7D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6B0);
  }

  return result;
}

unint64_t sub_1C1179BF4()
{
  result = qword_1EDE7CB40;
  if (!qword_1EDE7CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CB40);
  }

  return result;
}

unint64_t sub_1C1179C48()
{
  result = qword_1EDE76EE0;
  if (!qword_1EDE76EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95848, &qword_1C12BD568);
    sub_1C1179CD4();
    sub_1C1179D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EE0);
  }

  return result;
}

unint64_t sub_1C1179CD4()
{
  result = qword_1EDE77918;
  if (!qword_1EDE77918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77918);
  }

  return result;
}

unint64_t sub_1C1179D28()
{
  result = qword_1EDE77718;
  if (!qword_1EDE77718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77718);
  }

  return result;
}

uint64_t sub_1C1179D7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_15_22();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return sub_1C1264FB0();
}

uint64_t OUTLINED_FUNCTION_50_3(uint64_t a1, uint64_t a2)
{

  return sub_1C1263190();
}

uint64_t OUTLINED_FUNCTION_51_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return sub_1C1263190();
}

uint64_t OUTLINED_FUNCTION_58_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 152) = v1;
  *(v2 - 144) = a1;

  return swift_getWitnessTable();
}

uint64_t PhotosSearchBarTokenSizer.tokenMatchingLeadingOffset(from:)(__C::_NSRange_optional a1)
{
  a1.is_nil &= 1u;
  PhotosSearchBarTokenSizer.tokenMatchingRect(from:)(&v7, a1);
  if (v7.is_nil)
  {
    return 0;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = v2, [v2 effectiveUserInterfaceLayoutDirection] != 1))
  {
    swift_unknownObjectRelease();
LABEL_8:
    v10.origin.x = OUTLINED_FUNCTION_19_2();
    MinX = CGRectGetMinX(v10);
    return *&MinX;
  }

  [v3 frame];
  Width = CGRectGetWidth(v8);
  v9.origin.x = OUTLINED_FUNCTION_19_2();
  MaxX = CGRectGetMaxX(v9);
  swift_unknownObjectRelease();
  MinX = Width - MaxX;
  return *&MinX;
}

void __swiftcall PhotosSearchBarTokenSizer.tokenMatchingRect(from:)(__C::CGRect_optional *__return_ptr retstr, __C::_NSRange_optional from)
{
  if (from.is_nil)
  {
    v3 = sub_1C117A1D8();
  }

  else
  {
    v3 = sub_1C117A090(from.value.location, from.value.length);
  }

  v4 = v3;
  v5 = 0;
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong firstRectForRange_];
      v14 = v7;
      v15 = v8;
      v13 = v9;
      v16 = v10;

      swift_unknownObjectRelease();
      v12.width = v13;
      v5.x = v14;
      v11 = 0;
      v5.y = v15;
      v12.height = v16;
    }

    else
    {

      v11 = 1;
      v12 = 0;
      v5 = 0;
    }
  }

  else
  {
    v11 = 1;
    v12 = 0;
  }

  retstr->value.origin = v5;
  retstr->value.size = v12;
  retstr->is_nil = v11;
}

UITextRange_optional __swiftcall PhotosSearchBarTokenSizer.tokenMatchingTextRange(from:)(__C::_NSRange_optional from)
{
  if (from.is_nil)
  {
    v1 = sub_1C117A1D8();
  }

  else
  {
    v1 = sub_1C117A090(from.value.location, from.value.length);
  }

  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id sub_1C117A090(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = [Strong beginningOfDocument];
  swift_unknownObjectRelease();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6 || (v7 = [v6 positionFromPosition:v5 offset:a1], swift_unknownObjectRelease(), !v7))
  {

    return 0;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = [v8 positionFromPosition:v7 offset:a2], swift_unknownObjectRelease(), !v9))
  {

    return 0;
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {

    return 0;
  }

  v11 = [v10 textRangeFromPosition:v7 toPosition:v9];
  swift_unknownObjectRelease();

  return v11;
}

id sub_1C117A1D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong endOfDocument];
  swift_unknownObjectRelease();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2 || (v3 = [v2 positionFromPosition:v1 offset:-1], swift_unknownObjectRelease(), !v3))
  {

    return 0;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {

    return 0;
  }

  v5 = [v4 textRangeFromPosition:v3 toPosition:v1];
  swift_unknownObjectRelease();

  return v5;
}

BOOL static PhotosSearchBarTokenSizer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  v4 = v3;
  if (Strong)
  {
    if (v3)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v4;
    }

    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

uint64_t PhotosSearchBarTokenSizer.__deallocating_deinit()
{
  sub_1C0FF4BE4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

double PhotosPlaceholderSearchBar.init(placeholder:tapAction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  sub_1C0FDE8F8(0, &qword_1EDE76A08, 0x1E696AAB0);
  sub_1C1265410();
  *a5 = v11;
  sub_1C1265410();
  *(a5 + 16) = v11;
  *(a5 + 24) = *(&v11 + 1);
  if (qword_1EDE7B208 != -1)
  {
    swift_once();
  }

  sub_1C0F99A64(xmmword_1EDE7B210, *(&xmmword_1EDE7B210 + 1), byte_1EDE7B220);

  sub_1C1265410();
  result = *&v11;
  *(a5 + 32) = v11;
  *(a5 + 48) = v12;
  *(a5 + 56) = v13;
  *(a5 + 64) = v14;
  *(a5 + 72) = a1;
  *(a5 + 80) = a2;
  *(a5 + 88) = a3;
  *(a5 + 96) = a4;
  return result;
}

uint64_t PhotosPlaceholderSearchBar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = sub_1C12632E0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95860, &qword_1C12BD570);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  memcpy(__dst, v1, 0x68uLL);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v1, 0x68uLL);
  v18[4] = __dst;
  sub_1C1183618(__dst, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95868, &unk_1C12BD578);
  sub_1C1183650();
  sub_1C1265480();
  sub_1C12632D0();
  OUTLINED_FUNCTION_15_2();
  sub_1C1184EC0(v15);
  OUTLINED_FUNCTION_5_31();
  sub_1C118468C(v16);
  sub_1C12649F0();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_1C117A788@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotosOffsetReaderContainer(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v39 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95D08, &qword_1C12BDD48);
  sub_1C1265440();
  v36 = *v42;
  v31 = 0x80000001C126CA90;
  v35 = *&v42[8];
  v39 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265440();
  v33 = *&v42[8];
  v34 = *v42;
  v32 = v42[16];
  v10 = a1[3];
  v39 = a1[2];
  v40 = v10;
  v41 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95D10, &qword_1C12BDD50);
  sub_1C1265440();
  v30 = *v42;
  v11 = *&v42[16];
  v12 = v43;
  v13 = v44;
  v29 = v45;
  v14 = *(a1 + 10);
  v28 = *(a1 + 9);
  v15 = type metadata accessor for PhotosSearchBar(0);
  v16 = v15[12];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v17 = a2 + v15[13];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 39) = 0;
  v18 = a2 + v15[14];
  v37 = 0;
  v38 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690, &qword_1C12B32F0);
  sub_1C1265410();
  v19 = BYTE8(v39);
  v20 = v40;
  *v18 = v39;
  *(v18 + 8) = v19;
  *(v18 + 16) = v20;
  v21 = v15[15];
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95890, &qword_1C12BD5F0);
  sub_1C1265410();
  *(a2 + v21) = v39;
  *&v39 = 0xD00000000000001ELL;
  *(&v39 + 1) = v31;
  sub_1C1263F30();
  *&v9[*(v4 + 20)] = 0;
  sub_1C11846D0(v9, v6, type metadata accessor for PhotosOffsetReaderContainer);
  sub_1C1265410();
  sub_1C118446C(v9, type metadata accessor for PhotosOffsetReaderContainer);
  *a2 = v36;
  *(a2 + 8) = v35;
  v22 = v33;
  *(a2 + 24) = v34;
  *(a2 + 32) = v22;
  *(a2 + 40) = v32;
  *(a2 + 48) = v30;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  v23 = v28;
  *(a2 + 88) = v29;
  *(a2 + 96) = v23;
  *(a2 + 104) = v14;
  *(a2 + 112) = nullsub_1;
  *(a2 + 120) = 0;
  *(a2 + 128) = nullsub_1;
  *(a2 + 136) = 0;
  *(a2 + 144) = nullsub_1;
  *(a2 + 152) = 0;
  *(a2 + 160) = nullsub_1;
  *(a2 + 168) = 0;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95868, &unk_1C12BD578);
  v27 = (a2 + *(result + 36));
  *v27 = KeyPath;
  v27[1] = sub_1C1023064;
  v27[2] = v25;
  return result;
}

double PhotosSearchBar.init(attributedText:isEditing:selectedRange:placeholder:tapAction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, uint64_t a10)
{
  v39 = a6;
  v36 = a4;
  v37 = a5;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v40 = a10;
  v41 = a7;
  *v38 = a9;
  type metadata accessor for PhotosOffsetReaderContainer(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v32 = OUTLINED_FUNCTION_21_10();
  v19 = *(OUTLINED_FUNCTION_22_17() + 48);
  *(a8 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_28(KeyPath);
  v22 = a8 + v21;
  v42 = 0;
  v43 = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690, &qword_1C12B32F0);
  OUTLINED_FUNCTION_12_19(v23);
  OUTLINED_FUNCTION_8_37();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95890, &qword_1C12BD5F0);
  OUTLINED_FUNCTION_12_19(v24);
  *(a8 + v22) = v44;
  OUTLINED_FUNCTION_13_23("PhotosSearchBarCoordinateSpace");
  sub_1C1263F30();
  v25 = OUTLINED_FUNCTION_3_40();
  sub_1C11846D0(v25, v17, v26);
  sub_1C1265410();
  OUTLINED_FUNCTION_7_34();
  v27 = v34;
  *a8 = v33;
  *(a8 + 8) = v27;
  v28 = v36;
  *(a8 + 16) = v35;
  *(a8 + 24) = v28;
  *(a8 + 32) = v37;
  *(a8 + 40) = v39;
  *(a8 + 48) = v32;
  *(a8 + 64) = v10;
  *(a8 + 72) = v11;
  *(a8 + 80) = v12;
  v29 = v40;
  v30 = v41;
  *(a8 + 88) = v13;
  *(a8 + 96) = v30;
  result = v38[0];
  *(a8 + 104) = *v38;
  *(a8 + 120) = v29;
  *(a8 + 128) = nullsub_1;
  *(a8 + 136) = 0;
  *(a8 + 144) = nullsub_1;
  *(a8 + 152) = 0;
  *(a8 + 160) = nullsub_1;
  *(a8 + 168) = 0;
  return result;
}

double PhotosSearchBar.init(attributedText:isEditing:selectedRange:placeholder:tapAction:onScrollViewLeadingOffsetChange:onScrollOffsetChange:onTokenSizerChange:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13)
{
  v47 = a7;
  v44 = a6;
  v42 = a5;
  v40 = a4;
  v38 = a3;
  v37 = a2;
  v36 = a1;
  v46 = a13;
  v45 = a12;
  v43 = a11;
  v41 = a10;
  v39 = a9;
  type metadata accessor for PhotosOffsetReaderContainer(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v35 = OUTLINED_FUNCTION_21_10();
  v22 = *(OUTLINED_FUNCTION_22_17() + 48);
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_28(KeyPath);
  v25 = a8 + v24;
  v48 = 0;
  v49 = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690, &qword_1C12B32F0);
  OUTLINED_FUNCTION_12_19(v26);
  OUTLINED_FUNCTION_8_37();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95890, &qword_1C12BD5F0);
  OUTLINED_FUNCTION_12_19(v27);
  *(a8 + v25) = v50;
  OUTLINED_FUNCTION_13_23("PhotosSearchBarCoordinateSpace");
  sub_1C1263F30();
  v28 = OUTLINED_FUNCTION_3_40();
  sub_1C11846D0(v28, v20, v29);
  sub_1C1265410();
  OUTLINED_FUNCTION_7_34();
  v30 = v37;
  *a8 = v36;
  *(a8 + 8) = v30;
  v31 = v40;
  *(a8 + 16) = v38;
  *(a8 + 24) = v31;
  *(a8 + 32) = v42;
  *(a8 + 40) = v44;
  *(a8 + 48) = v35;
  *(a8 + 64) = v13;
  *(a8 + 72) = v14;
  *(a8 + 80) = v15;
  v32 = v46;
  v33 = v47;
  *(a8 + 88) = v16;
  *(a8 + 96) = v33;
  *(a8 + 104) = v39;
  *(a8 + 120) = v41;
  *(a8 + 136) = v43;
  result = *&v45;
  *(a8 + 152) = v45;
  *(a8 + 168) = v32;
  return result;
}

void *PhotosSearchBar.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1C12638E0();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95898, &qword_1C12BD5F8);
  sub_1C117B128(v2, a2 + *(v4 + 44));
  v5 = sub_1C1264460();
  sub_1C12628A0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958A0, &qword_1C12BD600) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  type metadata accessor for PhotosSearchBar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958A8, &qword_1C12BD608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0, &qword_1C12BD610);
  return sub_1C1265440();
}

uint64_t sub_1C117B128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B60, &qword_1C12BDB20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v110 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v108 = &v78 - v6;
  v7 = type metadata accessor for PhotosOffsetReaderContainer(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v106 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for PhotosSearchBar(0);
  v95 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v100 = v9;
  v101 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1C1264160();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1C1263D50();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B68, &qword_1C12BDB28);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v78 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B70, &qword_1C12BDB30);
  v78 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v18 = &v78 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B78, &qword_1C12BDB38);
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v20 = &v78 - v19;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B80, &qword_1C12BDB40);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v78 - v21;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B88, &qword_1C12BDB48);
  MEMORY[0x1EEE9AC00](v89);
  v84 = &v78 - v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B90, &qword_1C12BDB50);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v111 = &v78 - v23;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B98, &qword_1C12BDB58);
  MEMORY[0x1EEE9AC00](v88);
  v96 = &v78 - v24;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BA0, &qword_1C12BDB60);
  MEMORY[0x1EEE9AC00](v93);
  v104 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v78 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v78 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BA8, &qword_1C12BDB68);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v103 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v99 = &v78 - v33;
  sub_1C117C08C(&v78 - v33);
  sub_1C1264420();
  v107 = a1;
  v112 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BB0, &qword_1C12BDB70);
  sub_1C1184568(&unk_1EBE95BB8);
  sub_1C1262950();
  sub_1C1265BB0();
  v34 = sub_1C1184EC0(&unk_1EBE95BD8);
  sub_1C1264CF0();
  (*(v14 + 8))(v16, v13);
  sub_1C1263D40();
  LOBYTE(v16) = sub_1C1264440();
  sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v16)
  {
    sub_1C1264430();
  }

  v114 = v13;
  v115 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v20;
  v37 = v81;
  sub_1C1264D80();
  (*(v79 + 8))(v12, v80);
  (*(v78 + 8))(v18, v37);
  v38 = v90;
  sub_1C1263D40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BE0, &unk_1C12BDB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  v40 = sub_1C1264440();
  *(inited + 32) = v40;
  v41 = sub_1C1264420();
  *(inited + 33) = v41;
  sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v40)
  {
    sub_1C1264430();
  }

  sub_1C1264430();
  if (sub_1C1264430() != v41)
  {
    sub_1C1264430();
  }

  v114 = v37;
  v115 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v82;
  v43 = v85;
  sub_1C1264C50();
  (*(v91 + 8))(v38, v92);
  (*(v83 + 8))(v36, v43);
  v44 = v107;
  v45 = v101;
  sub_1C11846D0(v107, v101, type metadata accessor for PhotosSearchBar);
  v46 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v47 = swift_allocObject();
  sub_1C118472C(v45, v47 + v46, type metadata accessor for PhotosSearchBar);
  v48 = v84;
  (*(v86 + 32))(v84, v42, v87);
  v49 = (v48 + *(v89 + 36));
  *v49 = sub_1C0FBFBE4;
  v49[1] = 0;
  v49[2] = sub_1C1184788;
  v49[3] = v47;
  sub_1C11846D0(v44, v45, type metadata accessor for PhotosSearchBar);
  v50 = swift_allocObject();
  sub_1C118472C(v45, v50 + v46, type metadata accessor for PhotosSearchBar);
  sub_1C1184854();
  sub_1C0FF9EE4();
  sub_1C1264DE0();

  sub_1C0F9E27C(v48, &qword_1EBE95B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0, &qword_1C12BD610);
  v51 = v106;
  sub_1C1265420();
  v53 = *(v44 + 128);
  v52 = *(v44 + 136);
  v54 = v96;
  v55 = &v96[*(v88 + 36)];
  sub_1C11846D0(v51, v55, type metadata accessor for PhotosOffsetReaderContainer);
  v56 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  v57 = (v55 + v56[5]);
  *v57 = v53;
  v57[1] = v52;
  v58 = (v55 + v56[6]);
  v113 = 0;

  sub_1C1265410();
  v59 = v115;
  *v58 = v114;
  v58[1] = v59;
  v60 = (v55 + v56[7]);
  v113 = 0;
  sub_1C1265410();
  sub_1C118446C(v51, type metadata accessor for PhotosOffsetReaderContainer);
  v61 = v115;
  *v60 = v114;
  v60[1] = v61;
  v62 = v56[8];
  *(v55 + v62) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  swift_storeEnumTagMultiPayload();
  (*(v97 + 32))(v54, v111, v98);
  v63 = sub_1C12659B0();
  v65 = v64;
  v66 = v94;
  v67 = &v94[*(v93 + 36)];
  sub_1C117CC28(v44);
  v68 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BF0, &qword_1C12BDBC8) + 36)];
  *v68 = v63;
  v68[1] = v65;
  sub_1C0FE4040(v54, v66, &qword_1EBE95B98, &qword_1C12BDB58);
  v69 = v102;
  sub_1C0FE4040(v66, v102, &qword_1EBE95BA0, &qword_1C12BDB60);
  v70 = v108;
  sub_1C117CEF8(v108);
  v71 = v99;
  v72 = v103;
  sub_1C0FE5654(v99, v103, &qword_1EBE95BA8, &qword_1C12BDB68);
  v73 = v104;
  sub_1C0FE5654(v69, v104, &qword_1EBE95BA0, &qword_1C12BDB60);
  v74 = v110;
  sub_1C0FE5654(v70, v110, &qword_1EBE95B60, &qword_1C12BDB20);
  v75 = v109;
  sub_1C0FE5654(v72, v109, &qword_1EBE95BA8, &qword_1C12BDB68);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BF8, &qword_1C12BDBD0);
  sub_1C0FE5654(v73, v75 + *(v76 + 48), &qword_1EBE95BA0, &qword_1C12BDB60);
  sub_1C0FE5654(v74, v75 + *(v76 + 64), &qword_1EBE95B60, &qword_1C12BDB20);
  sub_1C0F9E27C(v70, &qword_1EBE95B60);
  sub_1C0F9E27C(v69, &qword_1EBE95BA0);
  sub_1C0F9E27C(v71, &qword_1EBE95BA8);
  sub_1C0F9E27C(v74, &qword_1EBE95B60);
  sub_1C0F9E27C(v73, &qword_1EBE95BA0);
  return sub_1C0F9E27C(v72, &qword_1EBE95BA8);
}

uint64_t sub_1C117C08C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CE0, &qword_1C12BDD28);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CE8, &qword_1C12BDD30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C00, &qword_1C12BDBD8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - v10;
  if (sub_1C117D4B0() == 2 || (v12 = sub_1C1262F30(), v12 != sub_1C1262F30()))
  {
    v18 = sub_1C12652F0();
    v19 = sub_1C12651F0();
    v29[4] = v2;
    v20 = v19;
    KeyPath = swift_getKeyPath();
    v29[3] = v8;
    v22 = KeyPath;
    v23 = sub_1C1264530();
    v24 = swift_getKeyPath();
    v30 = v18;
    v31 = v22;
    v32 = v20;
    v33 = v24;
    v34 = v23;
    v29[2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CF0, &qword_1C12BDD38);
    v29[1] = v5;
    sub_1C1184B04(&unk_1EBE95CF8);
    sub_1C1264CE0();

    sub_1C0FE5654(v4, v7, &qword_1EBE95CE0, &qword_1C12BDD28);
    swift_storeEnumTagMultiPayload();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C38, &qword_1C12BDC00);
    v26 = sub_1C12632E0();
    v27 = sub_1C11849FC();
    v28 = sub_1C118468C(&qword_1EDE7BCF0);
    v30 = v25;
    v31 = v26;
    v32 = v27;
    v33 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1C118519C();
    sub_1C1263C20();
    return sub_1C0F9E27C(v4, &qword_1EBE95CE0);
  }

  else
  {
    sub_1C117D518();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C38, &qword_1C12BDC00);
    v14 = sub_1C12632E0();
    v15 = sub_1C11849FC();
    v16 = sub_1C118468C(&qword_1EDE7BCF0);
    v30 = v13;
    v31 = v14;
    v32 = v15;
    v33 = v16;
    swift_getOpaqueTypeConformance2();
    sub_1C118519C();
    sub_1C1263C20();
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1C117C510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v66 = sub_1C1263A50();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C12637E0();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosSearchBar(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v70[0] = *a1;
  *&v70[1] = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0, &qword_1C12BC340);
  sub_1C1265610();
  v61 = *&v69[0];
  v62 = *(v69 + 8);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v70[0] = *(a1 + 24);
  v70[1] = v10;
  LOBYTE(v70[2]) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  sub_1C1265610();
  v59 = *(&v69[0] + 1);
  v60 = *&v69[0];
  v58 = LOBYTE(v69[1]);
  v12 = *(a1 + 56);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  *&v69[0] = *(a1 + 48);
  *(&v69[0] + 1) = v12;
  v69[1] = *(a1 + 64);
  LOBYTE(v69[2]) = v13;
  *(&v69[2] + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0, &qword_1C12BC330);
  sub_1C1265610();
  v56 = v70[1];
  v57 = v70[0];
  v54 = v70[3];
  v55 = v70[2];
  v53 = LOBYTE(v70[4]);
  v52 = v70[5];
  v15 = (a1 + *(v7 + 64));
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = v15[2];
  *&v69[0] = v16;
  BYTE8(v69[0]) = v17;
  *&v69[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0, &qword_1C12B77F0);
  sub_1C1265420();
  v51 = v71;
  v19 = v72;
  v20 = *(a1 + 112);
  v67 = *(a1 + 160);
  v68 = v20;
  sub_1C11846D0(a1, &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosSearchBar);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_1C118472C(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v22, type metadata accessor for PhotosSearchBar);
  v77 = v19;
  LOBYTE(v71) = 1;

  sub_1C1265410();
  LODWORD(v22) = LOBYTE(v69[0]);
  v23 = *(&v69[0] + 1);
  v71 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD8, &qword_1C12BDD20);
  sub_1C1265410();
  v50 = *(&v69[0] + 1);
  v24 = *&v69[0];
  v48 = v77;
  v49 = sub_1C12644D0();
  v25 = a1 + *(v7 + 60);
  v27 = *v25;
  v26 = *(v25 + 8);
  v29 = *(v25 + 16);
  v28 = *(v25 + 24);
  v30 = *(v25 + 32);
  v31 = *(v25 + 40);
  if (*(v25 + 42) == 1)
  {
    v71 = *v25;
    v72 = v26;
    v73 = v29;
    v74 = v28;
    v75 = v30;
    v76 = v31;
  }

  else
  {
    v43 = *(v25 + 40);
    v42 = v28;

    sub_1C1266420();
    v32 = sub_1C1264410();
    v44 = v22;
    v33 = v32;
    sub_1C1262620();

    v22 = v45;
    sub_1C12637D0();
    swift_getAtKeyPath();
    v34 = sub_1C1022584(v27, v26, v29, v42, v30, v43, 0);
    v35 = v22;
    LOBYTE(v22) = v44;
    (*(v46 + 8))(v35, v47, v34);
  }

  sub_1C12628A0();
  v78 = 0;
  *&v69[0] = v61;
  *(v69 + 8) = v62;
  *(&v69[1] + 1) = v60;
  *&v69[2] = v59;
  BYTE8(v69[2]) = v58;
  *&v69[3] = v57;
  *(&v69[3] + 1) = v56;
  *&v69[4] = v55;
  *(&v69[4] + 1) = v54;
  LOBYTE(v69[5]) = v53;
  *(&v69[5] + 1) = v52;
  *&v69[6] = v51;
  BYTE8(v69[6]) = v48;
  v69[8] = v67;
  v69[7] = v68;
  *&v69[9] = sub_1C1185134;
  *(&v69[9] + 1) = v21;
  LOBYTE(v69[10]) = v22;
  *(&v69[10] + 1) = v23;
  *&v69[11] = v24;
  *(&v69[11] + 1) = v50;
  LOBYTE(v69[12]) = v49;
  *(&v69[12] + 1) = v36;
  *&v69[13] = v37;
  *(&v69[13] + 1) = v38;
  *&v69[14] = v39;
  BYTE8(v69[14]) = 0;
  v40 = v63;
  sub_1C1263A30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95BC8, &qword_1C12BDB78);
  sub_1C1184600();
  sub_1C1264DA0();
  (*(v64 + 8))(v40, v66);
  memcpy(v70, v69, 0xE9uLL);
  return sub_1C0F9E27C(v70, &unk_1EBE95BC8);
}

double sub_1C117CB0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhotosSearchBar(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C98, &qword_1C12BDCD0);
  sub_1C1265430();
  return result;
}

double sub_1C117CB7C(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for PhotosSearchBar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0, &qword_1C12B77F0);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C117CC28(uint64_t a1)
{
  v1 = *(a1 + 104);
  __dst[0] = *(a1 + 96);
  __dst[1] = v1;
  sub_1C0FDB9AC();

  v2 = sub_1C12648F0();
  v4 = v3;
  v6 = v5;
  sub_1C1264530();
  v7 = sub_1C1264870();
  v9 = v8;
  v11 = v10;

  sub_1C0FDB8E8(v2, v4, v6 & 1);

  LODWORD(__dst[0]) = sub_1C1263E50();
  v12 = sub_1C1264850();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1C0FDB8E8(v7, v9, v11 & 1);

  v19 = sub_1C1264460();
  sub_1C12628A0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v16 & 1;
  v34 = v28;
  v33 = 0;
  if (sub_1C117CE44())
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  v35 = 0;
  __src[0] = v12;
  __src[1] = v14;
  LOBYTE(__src[2]) = v28;
  __src[3] = v18;
  LOBYTE(__src[4]) = v19;
  __src[5] = v21;
  __src[6] = v23;
  __src[7] = v25;
  __src[8] = v27;
  LOBYTE(__src[9]) = 0;
  *&__src[10] = v29;
  __src[11] = swift_getKeyPath();
  __src[12] = 1;
  LOBYTE(__src[13]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CB0, &qword_1C12BDD08);
  sub_1C1184D7C();
  sub_1C1264CE0();
  memcpy(__dst, __src, 0x69uLL);
  return sub_1C0F9E27C(__dst, &qword_1EBE95CB0);
}

BOOL sub_1C117CE44()
{
  v9[1] = *v0;
  v10 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0, &qword_1C12BC340);
  MEMORY[0x1C68EEF20](v9, v1);
  v2 = v9[0];
  v3 = [v9[0] string];

  v4 = sub_1C1265EA0();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 == 0;
}

uint64_t sub_1C117CEF8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C00, &qword_1C12BDBD8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C08, &qword_1C12BDBE0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C10, &qword_1C12BDBE8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  if (!sub_1C117CE44())
  {
    sub_1C117D854(v12);
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C18, &qword_1C12BDBF0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C20, &qword_1C12BDBF8);
    v38 = v2;
    v27 = a1;
    v28 = v26;
    v29 = sub_1C12632E0();
    v30 = sub_1C1184568(&unk_1EBE95C28);
    v31 = sub_1C118468C(&qword_1EDE7BCF0);
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v25;
    v40 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C38, &qword_1C12BDC00);
    v34 = sub_1C11849FC();
    v39 = v33;
    v40 = v29;
    v41 = v34;
    v42 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    (*(v10 + 8))(v12, v9);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C50, &qword_1C12BDC18);
    v24 = v27;
    return __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
  }

  if (sub_1C117D4B0() != 2)
  {
    v13 = sub_1C1262F30();
    if (v13 == sub_1C1262F30())
    {
      sub_1C117D518();
      (*(v3 + 16))(v8, v5, v2);
      swift_storeEnumTagMultiPayload();
      v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C18, &qword_1C12BDBF0);
      v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C20, &qword_1C12BDBF8);
      v38 = a1;
      v15 = v14;
      v16 = sub_1C12632E0();
      v17 = sub_1C1184568(&unk_1EBE95C28);
      v18 = sub_1C118468C(&qword_1EDE7BCF0);
      v39 = v15;
      v40 = v16;
      v41 = v17;
      v42 = v18;
      v19 = swift_getOpaqueTypeConformance2();
      v39 = v37;
      v40 = v19;
      swift_getOpaqueTypeConformance2();
      v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C38, &qword_1C12BDC00);
      v21 = sub_1C11849FC();
      v39 = v20;
      v40 = v16;
      v41 = v21;
      v42 = v18;
      swift_getOpaqueTypeConformance2();
      v22 = v38;
      sub_1C1263C20();
      (*(v3 + 8))(v5, v2);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C50, &qword_1C12BDC18);
      v24 = v22;
      return __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
    }
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C50, &qword_1C12BDC18);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v36);
}

uint64_t sub_1C117D4B0()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result dictationSearchFieldUIEnabled];

    if (v2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C117D518()
{
  v1 = sub_1C12632E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PhotosSearchBar(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C38, &qword_1C12BDC00);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  sub_1C11846D0(v0, &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PhotosSearchBar);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_1C118472C(&v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for PhotosSearchBar);
  v16 = 0x6C6C69662E63696DLL;
  v17 = 0xE800000000000000;
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C58, &qword_1C12BDC20);
  sub_1C1184B04(&unk_1EBE95C60);
  sub_1C1265480();
  v13 = &v10[*(v8 + 36)];
  *v13 = 0xC030000000000000;
  v13[8] = 0;
  sub_1C12632D0();
  sub_1C11849FC();
  sub_1C118468C(&qword_1EDE7BCF0);
  sub_1C12649F0();
  (*(v2 + 8))(v4, v1);
  return sub_1C0F9E27C(v10, &qword_1EBE95C38);
}

uint64_t sub_1C117D854@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_1C1263050();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v45 - v6;
  v7 = sub_1C12632E0();
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1265E50();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PhotosSearchBar(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C38, &qword_1C12BDC00);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C20, &qword_1C12BDBF8);
  MEMORY[0x1EEE9AC00](v45);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C18, &qword_1C12BDBF0);
  v23 = *(v22 - 8);
  v46 = v22;
  v47 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v56 = &v45 - v24;
  sub_1C11846D0(v2, &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosSearchBar);
  v25 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v26 = swift_allocObject();
  sub_1C118472C(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for PhotosSearchBar);
  v57 = 0x6B72616D78;
  v58 = 0xE500000000000000;
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C58, &qword_1C12BDC20);
  sub_1C1184B04(&unk_1EBE95C60);
  sub_1C1265480();
  v27 = &v19[*(v17 + 36)];
  *v27 = 0xC030000000000000;
  v27[8] = 0;
  sub_1C1265DF0();
  v28 = static String.photosSwiftUICoreLocalized(_:)(v13);
  v30 = v29;
  (*(v11 + 8))(v13, v10);
  v60 = v28;
  v61 = v30;
  sub_1C11849FC();
  sub_1C0FDB9AC();
  v31 = v21;
  sub_1C1264C80();

  sub_1C0F9E27C(v19, &qword_1EBE95C38);
  v32 = v48;
  sub_1C12632D0();
  v33 = sub_1C1184568(&unk_1EBE95C28);
  v34 = sub_1C118468C(&qword_1EDE7BCF0);
  v35 = v45;
  v36 = v49;
  sub_1C12649F0();
  (*(v50 + 8))(v32, v36);
  sub_1C0F9E27C(v31, &qword_1EBE95C20);
  v37 = v51;
  sub_1C1263020();
  v38 = v52;
  sub_1C1262FE0();
  v39 = *(v53 + 8);
  v40 = v37;
  v41 = v54;
  v39(v40, v54);
  v60 = v35;
  v61 = v36;
  v62 = v33;
  v63 = v34;
  swift_getOpaqueTypeConformance2();
  v42 = v56;
  v43 = v46;
  sub_1C1264B20();
  v39(v38, v41);
  return (*(v47 + 8))(v42, v43);
}

double sub_1C117DF00(uint64_t a1)
{
  LOBYTE(v2) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  sub_1C12655F0();
  type metadata accessor for PhotosSearchBar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C98, &qword_1C12BDCD0);
  sub_1C1265420();
  if (v2)
  {
    sub_1C117DFAC();
  }

  return result;
}

void sub_1C117DFAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C0FDE8F8(0, &unk_1EBE95CA0, 0x1E69DC950);
    v2 = sub_1C1265EA0();
    v4 = sub_1C1180058(v2, v3);
    v5 = [objc_opt_self() sharedInputModeController];
    if (v5)
    {
      v6 = v5;
      [v5 toggleDictationForResponder:v1 WithOptions:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1C117E07C(uint64_t *a1)
{
  LOBYTE(v5) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  sub_1C12655F0();
  [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0, &qword_1C12BC340);
  sub_1C12655F0();
  if (qword_1EDE7B208 != -1)
  {
    swift_once();
  }

  v2 = a1[8];
  v3 = a1[9];
  v6 = *(a1 + 80);
  sub_1C0F99A64(xmmword_1EDE7B210, *(&xmmword_1EDE7B210 + 1), byte_1EDE7B220);

  sub_1C0F99A64(v2, v3, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0, &qword_1C12BC330);
  sub_1C12655F0();

  sub_1C1184000(v2, v3, v6);

  return result;
}

uint64_t sub_1C117E244@<X0>(char a3@<W2>, uint64_t *a4@<X8>)
{

  v6 = sub_1C12652F0();
  if (a3)
  {
    sub_1C1263E40();
  }

  else
  {
    sub_1C1263E50();
  }

  KeyPath = swift_getKeyPath();
  v8 = sub_1C1262C90();
  if (a3)
  {
    v9 = sub_1C12651F0();
  }

  else
  {
    v9 = sub_1C1265230();
  }

  v10 = v9;
  v11 = swift_getKeyPath();
  v12 = sub_1C1264530();
  result = swift_getKeyPath();
  *a4 = v6;
  a4[1] = KeyPath;
  a4[2] = v8;
  a4[3] = v11;
  a4[4] = v10;
  a4[5] = result;
  a4[6] = v12;
  return result;
}

uint64_t View.photosSearchBarAllowsFirstResponderResignation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_1C1183784;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_1C0FCF1B4(a1, a2);
  sub_1C1264A30();

  return sub_1C0FCF004(v7, v6);
}

uint64_t (*sub_1C117E41C())()
{
  sub_1C118450C();
  sub_1C12637F0();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1C11852E0;
}

uint64_t (*sub_1C117E4A4@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = sub_1C117E41C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1C11852D0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1C117E514(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C11844D4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C0FCF1B4(v1, v2);
  return sub_1C117E5A0(v4, v3);
}

uint64_t sub_1C117E5A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1C118450C();
  return sub_1C1263800();
}

uint64_t sub_1C117E628@<X0>(uint64_t (**a1)()@<X8>)
{
  result = OUTLINED_FUNCTION_23_3();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C11852D0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1C117E694()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(__src, v0, sizeof(__src));
  v1 = objc_allocWithZone(type metadata accessor for PhotosSearchBar.WrappedSearchBar.Coordinator());
  sub_1C1183FC8(__dst, &v3);
  return sub_1C117FB20(__src);
}

id sub_1C117E6FC()
{
  v1 = sub_1C1265C10();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1265C30();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v46, v0, 0xC0uLL);
  type metadata accessor for PhotosSearchBar.TextView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  v9 = v7;
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setScrollEnabled_];
  [v9 setEditable_];
  v10 = [v9 textContainer];
  [v10 setMaximumNumberOfLines_];

  v11 = [v9 textContainer];
  [v11 setLineFragmentPadding_];

  v12 = [v9 textContainer];
  [v12 setHeightTracksTextView_];

  v13 = [v9 textContainer];
  [v13 setWidthTracksTextView_];

  [v9 setTextContainerInset_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95AE0, &qword_1C12BDAE8);
  sub_1C1264210();
  v14 = v44[0];
  [v9 setDelegate_];

  [v9 setReturnKeyType_];
  [v9 setAutocorrectionType_];
  [v9 setSpellCheckingType_];
  v15 = v9;
  v16 = [v15 inputAssistantItem];
  sub_1C0FDE8F8(0, &qword_1EBE95B20, 0x1E69DC720);
  v17 = MEMORY[0x1E69E7CC0];
  v18 = sub_1C12660A0();
  [v16 setLeadingBarButtonGroups_];

  v19 = [v15 inputAssistantItem];
  v20 = sub_1C12660A0();
  [v19 setTrailingBarButtonGroups_];

  v21 = [objc_opt_self() preferredFontForTextStyle_];
  [v15 setFont_];

  sub_1C117EE70();
  v22 = [v15 textLayoutManager];
  if (v22)
  {
    v23 = v22;
    [v22 setDelegate_];
  }

  v24 = [v15 textLayoutManager];

  if (v24)
  {
    v25 = [v24 textContentManager];

    if (v25)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        [v26 setDelegate_];
      }
    }
  }

  v44[3] = type metadata accessor for PhotosSearchBar.WrappedSearchBar.Coordinator();
  sub_1C1264210();
  v27 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v28 = sub_1C1183400(v44, sel_tapAction_);
  sub_1C1264210();
  v29 = v44[0];
  [v28 setDelegate_];

  [v15 addGestureRecognizer_];
  sub_1C0FDE8F8(0, &qword_1EDE83410, 0x1E69E9610);
  v30 = sub_1C12664C0();
  v31 = swift_allocObject();
  memcpy((v31 + 16), v46, 0xC0uLL);
  *(v31 + 208) = v15;
  v45[4] = sub_1C11842B0;
  v45[5] = v31;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 1107296256;
  v45[2] = sub_1C0FD7FC4;
  v45[3] = &block_descriptor_54;
  v32 = _Block_copy(v45);
  v37 = v15;
  sub_1C1183FC8(v46, v44);

  v33 = v38;
  sub_1C1265C20();
  v44[0] = v17;
  sub_1C118468C(&qword_1EDE7B768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
  sub_1C1184EC0(&qword_1EDE7B708);
  v34 = v39;
  v35 = v43;
  sub_1C1266870();
  MEMORY[0x1C68EFE10](0, v33, v34, v32);
  _Block_release(v32);

  (*(v42 + 8))(v34, v35);
  (*(v40 + 8))(v33, v41);
  return v37;
}

void sub_1C117EE70()
{
  v1 = [v0 font];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93478, &qword_1C12B3320);
  inited = swift_initStackObject();
  if (v1)
  {
    *(inited + 16) = xmmword_1C12A3440;
    v3 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v4 = sub_1C0FDE8F8(0, &qword_1EDE76980, 0x1E69DB878);
    *(inited + 40) = v1;
    v5 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v4;
    *(inited + 72) = v5;
    v6 = objc_opt_self();
    v7 = v3;
    v8 = v1;
    v9 = v5;
    v10 = [v6 labelColor];
    *(inited + 104) = sub_1C0FDE8F8(0, &qword_1EDE76940, 0x1E69DC888);
    *(inited + 80) = v10;
    type metadata accessor for Key(0);
    sub_1C118468C(&qword_1EDE769F8);
    sub_1C1265CE0();
  }

  else
  {
    v11 = MEMORY[0x1E69DB650];
    *(inited + 16) = xmmword_1C12A8B40;
    v12 = *v11;
    *(inited + 32) = *v11;
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 labelColor];
    *(inited + 64) = sub_1C0FDE8F8(0, &qword_1EDE76940, 0x1E69DC888);
    *(inited + 40) = v15;
    type metadata accessor for Key(0);
    sub_1C118468C(&qword_1EDE769F8);
    sub_1C1265CE0();
  }

  type metadata accessor for Key(0);
  sub_1C118468C(&qword_1EDE769F8);
  v16 = sub_1C1265CC0();

  [v0 setTypingAttributes_];
}

double sub_1C117F13C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 128);
  type metadata accessor for PhotosSearchBarTokenSizer();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4(v5);

  v6 = *(a1 + 144);
  type metadata accessor for PhotosSearchBarDictationManager();
  swift_allocObject();
  v7 = a2;
  sub_1C1180018(a2);
  v6();

  return result;
}

uint64_t sub_1C117F200(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_1C1265C10();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1265C30();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C12637E0();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1C1262750();
  MEMORY[0x1EEE9AC00](v43);
  memcpy(v63, v2, sizeof(v63));
  v47 = OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_isUpdating;
  a1[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_isUpdating] = 1;
  v54 = *v2;
  *&v55 = v2[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0, &qword_1C12BC340);
  MEMORY[0x1C68EEF20](&v64);
  v13 = v64;
  v14 = [v64 length];

  if (!v14)
  {
    goto LABEL_4;
  }

  v54 = v63[3];
  v55 = v63[4];
  v56 = v63[5];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0, &qword_1C12BC330);
  MEMORY[0x1C68EEF20](&v64, v15);
  if (v65 == 1)
  {
    sub_1C1184000(v64, *(&v64 + 1), 1);

LABEL_4:
    [a1 unmarkText];
    goto LABEL_6;
  }

  sub_1C1184000(v64, *(&v64 + 1), v65);

LABEL_6:
  v54 = *v3;
  *&v55 = v3[2];
  MEMORY[0x1C68EEF20](&v64, v12);
  v16 = v64;
  [a1 setAttributedText_];

  v64 = v63[3];
  v65 = v63[4];
  v66 = v63[5];
  v54 = v63[3];
  v55 = v63[4];
  v56 = v63[5];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0, &qword_1C12BC330);
  MEMORY[0x1C68EEF20](&v57);
  v18 = v57;
  v19 = v58;
  v20 = v59;
  v21 = sub_1C118406C(a1, v57, v58, v59);
  sub_1C1184000(v18, v19, v20);

  [a1 setSelectedTextRange_];

  v54 = v64;
  v55 = v65;
  v56 = v66;
  MEMORY[0x1C68EEF20](&v57, v17);
  v22 = v59 != 1;
  if (v59 == 1)
  {
    v23 = v57;
  }

  else
  {
    v23 = 0;
  }

  if (v59 == 1)
  {
    v24 = v58;
  }

  else
  {
    v24 = 0;
  }

  sub_1C1184000(v57, v58, v59);

  sub_1C1266630();
  *&v54 = v23;
  *(&v54 + 1) = v24;
  LOBYTE(v55) = v22;
  sub_1C118418C();
  sub_1C1262740();
  sub_1C1266640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95AE0, &qword_1C12BDAE8);
  sub_1C1264220();
  v25 = sub_1C117E41C();
  v27 = v26;
  (*(v44 + 8))(v11, v45);
  v28 = &a1[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation];
  v29 = *&a1[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation];
  v30 = *&a1[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation + 8];
  *v28 = v25;
  v28[1] = v27;
  sub_1C0FCF004(v29, v30);
  sub_1C1264210();
  v31 = v54;
  v32 = v54 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_minWidth;
  v33 = *&v63[6];
  *(v32 + 8) = BYTE8(v63[6]);
  *v32 = v33;

  sub_1C0FDE8F8(0, &qword_1EDE83410, 0x1E69E9610);
  v34 = sub_1C12664C0();
  v35 = swift_allocObject();
  memcpy((v35 + 16), v63, 0xC0uLL);
  *(v35 + 208) = a1;
  v61 = sub_1C11841E0;
  v62 = v35;
  v57 = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1C0FD7FC4;
  v60 = &block_descriptor_13;
  v36 = _Block_copy(&v57);
  sub_1C1183FC8(v63, &v54);
  v37 = a1;

  v38 = v48;
  sub_1C1265C20();
  *&v54 = MEMORY[0x1E69E7CC0];
  sub_1C118468C(&qword_1EDE7B768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
  sub_1C1184EC0(&qword_1EDE7B708);
  v39 = v51;
  v40 = v53;
  sub_1C1266870();
  MEMORY[0x1C68EFE10](0, v38, v39, v36);
  _Block_release(v36);

  (*(v52 + 8))(v39, v40);
  result = (*(v49 + 8))(v38, v50);
  a1[v47] = 0;
  return result;
}

double sub_1C117F8DC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  if (v10 == 1)
  {
    v8 = *(a1 + 24);
    LOBYTE(v9) = *(a1 + 40);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
    MEMORY[0x1C68EEF20](&v10);
    v6 = v10;
    if (v6 != [a2 isFirstResponder])
    {
      MEMORY[0x1C68EEF20](&v10, v5);
      v7 = &selRef_becomeFirstResponder;
      if (!v10)
      {
        v7 = &selRef_resignFirstResponder;
      }

      LOBYTE(v10) = [a2 *v7];
      sub_1C1265430();
    }
  }

  return result;
}

uint64_t sub_1C117FA04(int a1, int a2, uint64_t a3, uint64_t a4, id a5)
{
  [a5 intrinsicContentSize];
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95AE0, &qword_1C12BDAE8);
  sub_1C1264210();
  v8 = *&v22[OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_minWidth];
  v9 = v22[OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_minWidth + 8];

  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v8;
  }

  v11 = [a5 beginningOfDocument];
  [a5 caretRectForPosition_];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v23.origin.x = v13;
  v23.origin.y = v15;
  v23.size.width = v17;
  v23.size.height = v19;
  CGRectGetHeight(v23);
  if (v7 >= v10)
  {
    v20 = v7;
  }

  else
  {
    v20 = v10;
  }

  return *&v20;
}

id sub_1C117FB20(void *__src)
{
  v2 = &v1[OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_minWidth];
  *v2 = 0;
  v2[8] = 1;
  memcpy(&v1[OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent], __src, 0xC0uLL);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PhotosSearchBar.WrappedSearchBar.Coordinator();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C117FBAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosSearchBar.WrappedSearchBar.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C117FC2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C117E694();
  *a1 = result;
  return result;
}

uint64_t sub_1C117FC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11842BC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C117FCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11842BC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C117FD50(uint64_t a1)
{
  sub_1C11842BC();
  sub_1C1263BD0();
  __break(1u);
}

uint64_t sub_1C117FDAC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation];
  if (!v3 || (v4 = *&v0[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation + 8], v5 = , v6 = v3(v5), sub_1C0FCF004(v3, v4), v6 == 2))
  {
    v8.receiver = v1;
    v8.super_class = ObjectType;
    v6 = objc_msgSendSuper2(&v8, sel_canResignFirstResponder);
  }

  return v6 & 1;
}

id sub_1C117FE54(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_isUpdating] = 0;
  v12 = &v5[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation];
  *v12 = 0;
  v12[1] = 0;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);

  return v13;
}

id sub_1C117FF54(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_isUpdating] = 0;
  v4 = &v1[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation];
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1C1180018(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v1;
}

id sub_1C1180058(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1C1265E70();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() dictationInputModeOptionsWithInvocationSource_];

  return v3;
}

uint64_t sub_1C11800C8()
{
  MEMORY[0x1C68F1710](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C1180100()
{
  result = sub_1C1265E70();
  qword_1EBE95850 = result;
  return result;
}

void sub_1C1180138(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

id sub_1C118015C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C118418C();
  sub_1C12664F0();
  v6 = [a1 userInterfaceStyle];
  v7 = objc_opt_self();
  if ((v16 & 1) == 0 && (v14 == a2 ? (v8 = v15 == a3) : (v8 = 0), v8))
  {
    if (v6 == 2)
    {
      v9 = [v7 whiteColor];
    }

    else
    {
      v9 = [v7 systemBlueColor];
    }

    return v9;
  }

  else
  {
    if (v6 == 2)
    {
      v10 = [v7 whiteColor];
      v11 = [v10 colorWithAlphaComponent_];
    }

    else
    {
      v10 = [v7 systemBlueColor];
      v11 = [v10 colorWithAlphaComponent_];
    }

    v12 = v11;

    return v12;
  }
}

id sub_1C11802BC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C118418C();
  sub_1C12664F0();
  if ((v14 & 1) == 0 && (v12 == a2 ? (v6 = v13 == a3) : (v6 = 0), v6))
  {
    v7 = objc_opt_self();
    v8 = &selRef_systemBackgroundColor;
  }

  else
  {
    v9 = [a1 userInterfaceStyle];
    v7 = objc_opt_self();
    v8 = &selRef_systemBlueColor;
    if (v9 == 2)
    {
      v8 = &selRef_whiteColor;
    }
  }

  v10 = [v7 *v8];

  return v10;
}

uint64_t sub_1C1180394(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = [v3 textLineFragments];
  sub_1C0FDE8F8(0, &qword_1EBE95B50, 0x1E69DB830);
  v10 = sub_1C12660B0();

  result = sub_1C0FF7688();
  if (!result)
  {
LABEL_8:

    v16.receiver = v4;
    v16.super_class = ObjectType;
    return objc_msgSendSuper2(&v16, sel_drawAtPoint_inContext_, a1, a2, a3);
  }

  v12 = result;
  if (result >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1C68F02D0](i, v10);
      }

      else
      {
        v14 = *(v10 + 8 * i + 32);
      }

      v15 = v14;
      sub_1C11804C4(a1);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1C11804C4(void *a1)
{
  v2 = v1;
  v4 = [v2 attributedString];
  if (qword_1EBE8FD10 != -1)
  {
    swift_once();
  }

  v5 = qword_1EBE95850;
  v6 = [v2 characterRange];
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C11844CC;
  *(v10 + 24) = v9;
  v15[4] = sub_1C11852C8;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1C1180BF8;
  v15[3] = &block_descriptor_101;
  v11 = _Block_copy(v15);
  v12 = v2;
  v13 = a1;

  [v4 enumerateAttribute:v5 inRange:v6 options:v8 usingBlock:{0, v11}];

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_1C1180730(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithTextElement:a1 range:a2];

  return v5;
}

id sub_1C1180788(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithTextElement_range_, a1, a2);

  return v5;
}

id sub_1C1180834(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1C11808C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C1180900(uint64_t a1, NSUInteger a2, NSUInteger a3, uint64_t a4, void *a5, CGContext *a6)
{
  sub_1C0FE5654(a1, v31, &qword_1EBE90620, &qword_1C12A8B00);
  if (v32)
  {
    if (swift_dynamicCast())
    {
      v34.location = [a5 characterRange];
      v34.length = v10;
      v33.location = a2;
      v33.length = a3;
      v11 = NSIntersectionRange(v33, v34);
      if (v11.length)
      {
        v12 = v11.location == a2;
      }

      else
      {
        v12 = 0;
      }

      if (v12 && v11.length == a3)
      {
        sub_1C1180B04(a2, a3);
        sub_1C1266550();
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        ClipBoundingBox = CGContextGetClipBoundingBox(a6);
        v35.origin.x = v15;
        v35.origin.y = v17;
        v35.size.width = v19;
        v35.size.height = v21;
        v36 = CGRectIntersection(v35, ClipBoundingBox);
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        CGContextSaveGState(a6);
        v26 = [v29 CGColor];
        CGContextSetFillColorWithColor(a6, v26);

        v27 = [objc_opt_self() bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v30}];
        [v27 fill];
        CGContextRestoreGState(a6);
      }
    }
  }

  else
  {
    sub_1C0F9E27C(v31, &qword_1EBE90620);
  }
}

void sub_1C1180B04(uint64_t a1, uint64_t a2)
{
  v5 = [v2 characterRange];
  v6 = a1 - v5;
  if (__OFSUB__(a1, v5))
  {
    __break(1u);
  }

  else
  {
    v7 = __OFADD__(v6, a2);
    v8 = v6 + a2;
    if (!v7)
    {
      [v2 locationForCharacterAtIndex_];
      [v2 locationForCharacterAtIndex_];
      [v2 typographicBounds];
      x = v13.origin.x;
      y = v13.origin.y;
      width = v13.size.width;
      height = v13.size.height;
      CGRectGetMinY(v13);
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      CGRectGetHeight(v14);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C1180BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1C0FD09FC(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1C0F9E27C(v13, &qword_1EBE90620);
}

void sub_1C1180CA4(uint64_t a1)
{
  v3 = [v1 length];
  v4 = [objc_opt_self() labelColor];
  v5 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93478, &qword_1C12B3320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v8 = sub_1C0FDE8F8(0, &qword_1EDE76940, 0x1E69DC888);
  *(inited + 40) = v4;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  *(inited + 104) = sub_1C0FDE8F8(0, &qword_1EDE76980, 0x1E69DB878);
  *(inited + 80) = v5;
  type metadata accessor for Key(0);
  sub_1C118468C(&qword_1EDE769F8);
  v10 = v7;
  v11 = v4;
  v12 = v9;
  v13 = v5;
  sub_1C1265CE0();
  v14 = sub_1C1265CC0();

  [v1 addAttributes:v14 range:{0, v3}];

  [v1 removeAttribute:*MEMORY[0x1E69DB748] range:{0, v3}];
  if (qword_1EBE8FD10 != -1)
  {
    swift_once();
  }

  [v1 removeAttribute:qword_1EBE95850 range:{0, v3}];
  if (qword_1EDE76A00 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDE9B5C0;
  v16 = swift_allocObject();
  v16[2] = v1;
  v16[3] = 0;
  v16[4] = v3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1C1184310;
  *(v17 + 24) = v16;
  v21[4] = sub_1C118431C;
  v21[5] = v17;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1C1180BF8;
  v21[3] = &block_descriptor_63;
  v18 = _Block_copy(v21);
  v19 = v1;

  [v19 enumerateAttribute:v15 inRange:0 options:v3 usingBlock:{0, v18}];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1C118107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B38, &qword_1C12BDAF8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v55 - v16;
  sub_1C0FE5654(a1, v60, &qword_1EBE90620, &qword_1C12A8B00);
  if (v61 == 0.0)
  {
    sub_1C0F9E27C(v60, &qword_1EBE90620);
    v18 = type metadata accessor for PhotosSearchTokenStyleAttributeValue(0);
    v20 = v17;
    v19 = 1;
  }

  else
  {
    v18 = type metadata accessor for PhotosSearchTokenStyleAttributeValue(0);
    v19 = swift_dynamicCast() ^ 1;
    v20 = v17;
  }

  __swift_storeEnumTagSinglePayload(v20, v19, 1, v18);
  type metadata accessor for PhotosSearchTokenStyleAttributeValue(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v18);
  result = sub_1C0F9E27C(v17, &unk_1EBE95B38);
  if (!EnumTagSinglePayload && a3 && a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = a7;
    v23 = [a5 attributedSubstringFromRange_];
    v24 = CTLineCreateWithAttributedString(v23);
    IsRightToLeft = CTLineIsRightToLeft();

    v26 = sub_1C1181560(a2);
    v27 = sub_1C11815D0(a2, a3);
    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;
    v29 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v58 = sub_1C1183544(sub_1C1184344, v28);
    v30 = swift_allocObject();
    *(v30 + 16) = a2;
    *(v30 + 24) = a3;
    v31 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v32 = sub_1C1183544(sub_1C118434C, v30);
    v33 = v27;
    if (IsRightToLeft)
    {
      v34 = v27;
    }

    else
    {
      v34 = v26;
    }

    v56 = v34;
    v57 = v32;
    v35 = IsRightToLeft ^ 1;
    if (__OFSUB__(a2, v35))
    {
      __break(1u);
    }

    else
    {
      v36 = sub_1C118165C((a2 - v35), a6, v59);
      if ((v38 & 1) == 0)
      {
        IsRightToLeft = v36;
        v39 = v37;
        v55 = *MEMORY[0x1E69DB748];
        sub_1C0FDE8F8(0, &unk_1EDE7B5D0, 0x1E696AD98);
        v40 = sub_1C1266690();
        [a5 addAttribute:v55 value:v40 range:{IsRightToLeft, v39}];
      }

      v41 = a2 + a3;
      if (!__OFADD__(a2, a3))
      {
        if (!__OFSUB__(v41, v35))
        {
          v42 = (v56 - 2) * 4.0;
          v43 = (v33 - 2) * 4.0 * -0.5;
          v44 = sub_1C118165C((v41 - v35), a6, v59);
          IsRightToLeft = &selRef_proposedBeginState;
          if ((v46 & 1) == 0)
          {
            v47 = v44;
            v48 = v45;
            v49 = *MEMORY[0x1E69DB748];
            sub_1C0FDE8F8(0, &unk_1EDE7B5D0, 0x1E696AD98);
            v50 = sub_1C1266690();
            [a5 addAttribute:v49 value:v50 range:{v47, v48}];
          }

          v7 = v42 * 0.5;
          v8 = (v26 - 2) * 4.0 * -0.5 + v43;
          v33 = v58;
          [a5 addAttribute:*MEMORY[0x1E69DB650] value:v58 range:{a2, a3}];
          if (qword_1EBE8FD10 == -1)
          {
            goto LABEL_18;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        swift_once();
LABEL_18:
        v51 = qword_1EBE95850;
        v52 = v57;
        v60[0] = v33;
        v60[1] = v57;
        v60[2] = 0x4018000000000000;
        v61 = v7;
        v62 = v8;
        v53 = v33;
        v54 = v52;
        [a5 IsRightToLeft[129]];

        return swift_unknownObjectRelease();
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C1181560(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 < 1)
  {
    return 0;
  }

  if (sub_1C1181718(a1 - 1))
  {
    return 3;
  }

  sub_1C11817E4(v1);
  if (v3 && (v4 = sub_1C1265D50(), , (v4 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1C11815D0(uint64_t result, uint64_t a2)
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else if (v3 >= [v2 length])
  {
    return 0;
  }

  else if (sub_1C1181718(v3))
  {
    return 3;
  }

  else
  {
    sub_1C11817E4(v3);
    if (v4 && (v5 = sub_1C1265D50(), , (v5 & 1) != 0))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

id sub_1C118165C(id result, uint64_t a2, uint64_t a3)
{
  if (result < a2)
  {
    return 0;
  }

  if (!__OFADD__(a2, a3))
  {
    v4 = result;
    if (a2 + a3 > result)
    {
      result = [v3 string];
      if (result)
      {
        v5 = result;
        [result rangeOfComposedCharacterSequenceAtIndex_];

        return sub_1C1266720();
      }

      goto LABEL_8;
    }

    return 0;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_1C1181718(uint64_t a1)
{
  if (qword_1EDE76A00 != -1)
  {
    swift_once();
  }

  v3 = [v1 attribute:qword_1EDE9B5C0 atIndex:a1 effectiveRange:0];
  if (v3)
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_1C0F9E27C(v5, &qword_1EBE90620);
  return v3 != 0;
}

uint64_t sub_1C11817E4(uint64_t a1)
{
  v2 = [v1 attributedSubstringFromRange_];
  v3 = [v2 string];

  v4 = sub_1C1265EA0();
  v6 = v5;

  v7 = sub_1C10FD70C(v4, v6);

  return v7;
}

uint64_t sub_1C1181880(void *a1)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent), sizeof(__dst));
  sub_1C1183FC8(__dst, &v5);
  [a1 isFirstResponder];
  LOBYTE(a1) = __dst[20];
  v3 = __dst[21];
  v5 = __dst[3];
  v6 = __dst[4];
  v7 = __dst[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  sub_1C12655F0();
  LOBYTE(v5) = a1;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return sub_1C1184430(__dst);
}

void sub_1C1181964(void *a1)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent), sizeof(__dst));
  sub_1C1183FC8(__dst, v8);
  v3 = [a1 attributedText];
  if (v3)
  {
    v4 = v3;
    v5 = __dst[2];
    v8[0] = __dst[0];
    v8[1] = __dst[1];
    v8[2] = __dst[2];

    v6 = v5;
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0, &qword_1C12BC340);
    sub_1C12655F0();
    sub_1C1184430(__dst);
  }

  else
  {
    __break(1u);
  }
}

double sub_1C1181AC4(void *a1)
{
  type metadata accessor for PhotosSearchBar.TextView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v5 = v3;
    if ((*(v3 + OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_isUpdating) & 1) == 0)
    {
      memcpy(__dst, (v1 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent), sizeof(__dst));
      v6 = a1;
      sub_1C1183FC8(__dst, v12);
      [v5 selectedTextRange];
      type metadata accessor for PhotosSearchRange.TextInputStorage();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v7 = __dst[8];
      v8 = __dst[9];
      v9 = __dst[10];
      v12[0] = __dst[6];
      v12[1] = __dst[7];
      v13 = __dst[8];
      v14 = __dst[9];
      v15 = __dst[10];
      v16 = __dst[11];

      sub_1C0F99A64(v7, v8, v9);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0, &qword_1C12BC330);
      sub_1C12655F0();

      sub_1C1184430(__dst);
      v10 = v13;
      v11 = v14;
      LOBYTE(v7) = v15;

      sub_1C1184000(v10, v11, v7);
    }
  }

  return result;
}

id sub_1C1181CD4(void *a1, void *a2, void *a3)
{
  v6 = sub_1C12663C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C12663D0();
  v10 = (*(v7 + 88))(v9, v6);
  v11 = *MEMORY[0x1E69DC3B0];
  (*(v7 + 8))(v9, v6);
  if (v10 != v11)
  {
    return a3;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C12618D0();
  *(v12 + 24) = 0;
  v13 = [a1 textStorage];
  v14 = *MEMORY[0x1E69DE720];
  v15 = [a2 range];
  v16 = [a1 textStorage];
  v17 = [v16 length];

  v18 = [v13 attribute:v14 atIndex:v15 longestEffectiveRange:v12 + 16 inRange:{0, v17}];
  if (v18)
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  sub_1C0F9E27C(v22, &qword_1EBE90620);
  sub_1C0FDE8F8(0, &qword_1EBE95B48, 0x1E69DC628);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v12;
  return sub_1C12666D0();
}

char *sub_1C1181FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    memcpy(__dst, (Strong + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent), sizeof(__dst));
    sub_1C1183FC8(__dst, &v14);

    swift_beginAccess();
    type metadata accessor for PhotosSearchRange.TextInputStorage();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = __dst[8];
    v6 = __dst[9];
    v7 = __dst[10];
    v14 = __dst[6];
    v15 = __dst[7];
    v16 = __dst[8];
    v17 = __dst[9];
    v18 = __dst[10];
    v19 = __dst[11];

    sub_1C0F99A64(v5, v6, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0, &qword_1C12BC330);
    sub_1C12655F0();
    sub_1C1184430(__dst);
    v8 = v16;
    v9 = v17;
    v10 = v18;

    sub_1C1184000(v8, v9, v10);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    memcpy(__dst, &result[OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent], sizeof(__dst));
    sub_1C1183FC8(__dst, &v14);

    LOBYTE(v12) = __dst[20];
    v13 = __dst[21];
    v14 = __dst[3];
    v15 = __dst[4];
    LOBYTE(v16) = __dst[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
    sub_1C12655F0();
    LOBYTE(v14) = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
    sub_1C1265430();
    return sub_1C1184430(__dst);
  }

  return result;
}

uint64_t sub_1C1182284(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v69 = a2;
  ObjectType = swift_getObjectType();
  v11 = sub_1C1262750();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosSearchBar.TextView();
  if (swift_dynamicCastClass())
  {
    sub_1C117EE70();
  }

  v15 = a4 == 10 && a5 == 0xE100000000000000;
  if (v15 || (sub_1C1266D50() & 1) != 0)
  {
    memcpy(v81, (v5 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent), 0xC0uLL);
    v16 = v81[20];
    v17 = v81[21];
    v71 = v81[3];
    v72 = v81[4];
    v73 = v81[5];
    v70 = 0;
    sub_1C1183FC8(v81, &v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
    sub_1C12655F0();
    LOBYTE(v75) = v16;
    v76 = v17;
    LOBYTE(v71) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
    sub_1C1265430();
    sub_1C1184430(v81);
    return 0;
  }

  sub_1C1266630();
  sub_1C118418C();
  sub_1C1262730();
  (*(v12 + 8))(v14, v11);
  v19 = v81[1];
  v67 = v81[0];
  v20 = LOBYTE(v81[2]);
  v21 = [a1 textStorage];
  v22 = [v21 length];

  result = sub_1C1265F00();
  v66 = v19;
  if (v20)
  {
    v23 = a3;
  }

  else
  {
    v23 = v19;
  }

  v24 = &v22[result];
  if (__OFADD__(v22, result))
  {
    __break(1u);
    goto LABEL_33;
  }

  v25 = __OFSUB__(v24, v23);
  v26 = &v24[-v23];
  if (v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v26 >= 1000 && v23 < result)
  {
    return 0;
  }

  if ((v20 & 1) == 0)
  {
    v39 = (v6 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent);
    v81[0] = *v39;
    *&v81[1] = *(v39 + 8);
    v69 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0, &qword_1C12BC340);
    MEMORY[0x1C68EEF20](&v75);
    v40 = v75;
    v41 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

    v42 = v66;
    v43 = v67;
    [v41 setAttributes:0 range:{v67, v66}];
    v44 = sub_1C1265E70();
    [v41 replaceCharactersInRange:v43 withString:{v42, v44}];

    v81[0] = *v39;
    *&v81[1] = *(v39 + 8);
    v75 = v41;
    v45 = v41;
    sub_1C12655F0();
    result = memcpy(v81, v39, 0xC0uLL);
    if (!__OFADD__(v43, v69))
    {
      v46 = (v43 + v69) & ~((v43 + v69) >> 63);
      v47 = a1;
      sub_1C1183FC8(v81, &v75);
      v48 = sub_1C1184354(v47, v46, 0);
      type metadata accessor for PhotosSearchRange.TextInputStorage();
      v49 = swift_allocObject();
      swift_unknownObjectWeakInit();
      if (v48)
      {
        v50 = 0;
      }

      else
      {
        v50 = -1;
      }

      swift_unknownObjectWeakAssign();

      v51 = v81[8];
      v52 = v81[9];
      v53 = v81[10];
      v75 = v81[6];
      v76 = v81[7];
      v77 = v81[8];
      v78 = v81[9];
      v79 = v81[10];
      v80 = v81[11];
      v71 = v48;
      v72 = 0;
      v73 = v50;
      v74 = v49;

      sub_1C0F99A64(v51, v52, v53);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0, &qword_1C12BC330);
      sub_1C12655F0();

      sub_1C1184430(v81);
      v54 = v77;
      v55 = v78;
      v56 = v79;
      goto LABEL_31;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  v28 = v69;
  v67 = sub_1C11828C8(a1, v69, a3, a4, a5);
  if ((v30 & 1) == 0)
  {
    v57 = v29;
    v58 = v6 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent;
    v59 = *(v6 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent + 48);
    v60 = *(v6 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent + 56);
    v61 = *(v6 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent + 64);
    v62 = *(v58 + 72);
    v63 = *(v58 + 88);
    v64 = *(v58 + 80);
    type metadata accessor for PhotosSearchRange.TextInputStorage();
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81[0] = v59;
    v81[1] = v60;
    v81[2] = v61;
    v81[3] = v62;
    LOBYTE(v81[4]) = v64;
    v81[5] = v63;
    v75 = v67;
    v76 = v57;
    LOBYTE(v77) = 1;
    v78 = v65;

    sub_1C0F99A64(v61, v62, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0, &qword_1C12BC330);
    sub_1C12655F0();
    v54 = v81[2];
    v55 = v81[3];
    v56 = v81[4];
LABEL_31:

    sub_1C1184000(v54, v55, v56);

    return 0;
  }

  v31 = [a1 textStorage];
  sub_1C1182CD0(v31, v28, a3);
  v33 = v32;
  v35 = v34;
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    v38 = [a1 textStorage];
    [v38 setAttributes:0 range:{v33, v35}];
  }

  return 1;
}

uint64_t sub_1C11828C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B38, &qword_1C12BDAF8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for PhotosSearchTokenStyleAttributeValue(0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v18 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v18 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 || a3 != 1)
  {
    return result;
  }

  v19 = [a1 markedTextRange];
  if (v19)
  {

    return 0;
  }

  v20 = [a1 textStorage];
  if (qword_1EDE76A00 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDE9B5C0;
  v22 = [v20 attribute:qword_1EDE9B5C0 atIndex:a2 effectiveRange:0];

  if (v22)
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {
    sub_1C0F9E27C(&v30, &qword_1EBE90620);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    goto LABEL_18;
  }

  v23 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v12, v23 ^ 1u, 1, v13);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
LABEL_18:
    sub_1C0F9E27C(v12, &unk_1EBE95B38);
    return 0;
  }

  sub_1C118472C(v12, v16, type metadata accessor for PhotosSearchTokenStyleAttributeValue);
  if (v16[*(v13 + 20)] != 1)
  {
    sub_1C118446C(v16, type metadata accessor for PhotosSearchTokenStyleAttributeValue);
    return 0;
  }

  v28 = sub_1C12618D0();
  v24 = [a1 textStorage];
  v25 = [a1 textStorage];
  v26 = [v25 length];

  v27 = [v24 attribute:v21 atIndex:a2 longestEffectiveRange:&v28 inRange:{0, v26}];
  if (v27)
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
    sub_1C118446C(v16, type metadata accessor for PhotosSearchTokenStyleAttributeValue);
  }

  else
  {
    sub_1C118446C(v16, type metadata accessor for PhotosSearchTokenStyleAttributeValue);
    v30 = 0u;
    v31 = 0u;
  }

  sub_1C0F9E27C(&v30, &qword_1EBE90620);
  return v28;
}