void sub_1D811FDC4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE4840();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1D7EE4840();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1D8120690((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1D812039C(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1D8120264(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1D8120804(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = v15 + 2;
  for (i = v15[2]; ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = &v15[2 * i];
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1D81204C8((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1D812039C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1D8120804(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = v5 + 2;
  for (i = v5[2]; ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = &v5[2 * i];
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1D8120690((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1D81204C8(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1D80E5C20(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1D8192634() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1D80E5C20(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1D8192634() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

uint64_t sub_1D8120690(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1D7ED0768(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1D7ED0768(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

char *sub_1D8120818(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

void *sub_1D8120844(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D7EB0164(0, &qword_1ECA0CF20, sub_1D80F808C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 4;
  v13 = a4 + 4;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D8120990(uint64_t a1, uint64_t a2)
{
  sub_1D811DB84(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8120A14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8120BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8120C38(uint64_t a1)
{
  v2 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8120C94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7EFF774();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_13Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1D8120D64()
{
  result = qword_1ECA0D808;
  if (!qword_1ECA0D808)
  {
    sub_1D7EB0164(255, &qword_1ECA0D298, type metadata accessor for JSONSchemaValue, type metadata accessor for JSONSchemaValueObject.EnablableValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D808);
  }

  return result;
}

void sub_1D8120E4C(uint64_t a1)
{
  if (!qword_1ECA11660)
  {
    sub_1D8120ED0(255, &qword_1EDBB6758, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType, MEMORY[0x1E69E6720]);
    v1 = sub_1D81925C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA11660);
    }
  }
}

void sub_1D8120ED0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_35();
    v11 = sub_1D7E0631C(v8, v9, v10);
    v12 = a5(a1, v11);
    if (!v13)
    {
      atomic_store(v12, v5);
    }
  }
}

void sub_1D8120F34(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_35();
    sub_1D7E98510(v3, v4, v5, v6);
    v7 = sub_1D81925C4();
    if (!v8)
    {
      atomic_store(v7, v2);
    }
  }
}

unint64_t sub_1D8120F8C()
{
  result = qword_1ECA11680;
  if (!qword_1ECA11680)
  {
    sub_1D812105C(255);
    sub_1D811E044(&qword_1ECA11620, sub_1D811DB84, sub_1D811DF88, sub_1D811E18C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11680);
  }

  return result;
}

void sub_1D812105C(uint64_t a1)
{
  if (!qword_1ECA11688)
  {
    sub_1D811DB84(255);
    v1 = sub_1D8190B14();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA11688);
    }
  }
}

uint64_t SegmentedControlState.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D8121164()
{
  result = qword_1EDBB08A0;
  if (!qword_1EDBB08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB08A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SegmentedControlState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void CellRenderKey.init(identifier:collectionView:debugging:)(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a2;
  *(a5 + 8) = a3;
  v8 = [a1 traitCollection];
  v9 = [v8 userInterfaceStyle];

  *(a5 + 16) = v9;
  *(a5 + 24) = a4;
}

uint64_t static CellRenderKey.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_1D8192634();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

double sub_1D81213CC@<D0>(uint64_t a1@<X8>)
{
  sub_1D81216B8(&v5);
  v2 = v6;
  v3 = v7;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_1D8121418(uint64_t *a1)
{
  v1 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = v1;
  sub_1D8190DB4();
  return sub_1D8121720(&v3);
}

void sub_1D8121468(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    v4 = a1[2];
    v5 = *(a1 + 24);
    v6 = &v1[qword_1EDBB9FD8];
    swift_beginAccess();
    v7 = *(v6 + 1);
    if (!v7)
    {

      goto LABEL_15;
    }

    v8 = *v6;
    v9 = *(v6 + 2);
    v10 = v6[24];
    if (v3 == v8 && v2 == v7)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      v12 = sub_1D8192634();
      swift_bridgeObjectRetain_n();
      if ((v12 & 1) == 0)
      {
LABEL_14:
        swift_bridgeObjectRelease_n();
LABEL_15:
        v13 = objc_opt_self();
        v14 = swift_allocObject();
        *(v14 + 16) = v1;
        v15 = swift_allocObject();
        *(v15 + 16) = sub_1D8124A3C;
        *(v15 + 24) = v14;
        aBlock[4] = sub_1D7E74D6C;
        aBlock[5] = v15;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D7E74D74;
        aBlock[3] = &block_descriptor_77;
        v16 = _Block_copy(aBlock);
        v17 = v1;

        [v13 performWithoutAnimation_];
        _Block_release(v16);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        return;
      }
    }

    if (v4 == v9)
    {
      swift_bridgeObjectRelease_n();
      if (((v5 ^ v10) & 1) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }
}

double sub_1D81216B8@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_1EDBB9FD8;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  sub_1D8190DB4();
  return result;
}

uint64_t sub_1D8121720(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = v1 + qword_1EDBB9FD8;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 24);
  *(v6 + 24) = v5;
  v11 = v7;
  v9 = *(v6 + 8);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  v12 = v9;
  v13 = v8;
  sub_1D8121468(&v11);
}

void (*sub_1D81217B8(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *(v3 + 7) = v1;
  v4 = v1 + qword_1EDBB9FD8;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 8);
  *v3 = *v4;
  *(v3 + 8) = v6;
  v3[24] = v5;
  sub_1D8190DB4();
  return sub_1D8121858;
}

void sub_1D8121858(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = v2[2];
  v6 = *(v2 + 24);
  v7[0] = v4;
  v7[1] = v3;
  v7[2] = v5;
  v8 = v6;
  if (a2)
  {
    sub_1D8190DB4();
    sub_1D8121720(v7);
  }

  else
  {
    sub_1D8121720(v7);
  }

  free(v2);
}

uint64_t sub_1D8121904(uint64_t a1, uint64_t a2)
{
  v3 = qword_1EDBBA018;
  OUTLINED_FUNCTION_10(v2 + qword_1EDBBA018, a2);
  return *(v2 + v3);
}

void *sub_1D812198C@<X0>(void *a1@<X8>, uint64_t a2@<X1>)
{
  result = sub_1D8121A04(a2, &v4);
  *a1 = v4;
  return result;
}

id sub_1D81219C8(unint64_t *a1)
{
  v2 = *a1;
  sub_1D7F25F40(v2);
  return sub_1D7EA2AEC(&v2);
}

unint64_t sub_1D8121A04@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = qword_1EDBBA008;
  OUTLINED_FUNCTION_10(v2 + qword_1EDBBA008, a1);
  v5 = *(v2 + v4);
  *a2 = v5;
  return sub_1D7F25F40(v5);
}

id (*sub_1D8121A50(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D8121AA4;
}

id sub_1D8121AA4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D7EA2B74();
  }

  return result;
}

void sub_1D8121B04(uint64_t a1)
{
  v3 = qword_1EDBB9FE8;
  OUTLINED_FUNCTION_5_0(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D8121B4C()
{
  v0 = OUTLINED_FUNCTION_109();
  sub_1D7E19F24(v0, v1);
  return OUTLINED_FUNCTION_109();
}

id CollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id CollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CollectionViewCell.init(coder:)()
{
  v1 = v0 + qword_1EDBB9FD8;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  *(v1 + 24) = 0;
  v2 = qword_1EDBBA040;
  v3 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *(v0 + v2) = OUTLINED_FUNCTION_4(v3, sel_initWithFrame_);
  v4 = qword_1EDBB9FE0;
  sub_1D7E40308(0, v5, v6, v7);
  v9 = v8;
  *(v0 + v4) = [objc_allocWithZone(v8) init];
  v10 = qword_1EDBBA030;
  *(v0 + v10) = [objc_allocWithZone(v9) init];
  v11 = qword_1EDBBA010;
  *(v0 + v11) = [objc_allocWithZone(v9) init];
  *(v0 + qword_1EDBBA018) = 0;
  *(v0 + qword_1EDBBA008) = 0x8000000000000008;
  v12 = qword_1EDBB9FE8;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v13 = (v0 + qword_1EDBB9FF8);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v0 + qword_1EDBBA000);
  *v14 = 0;
  v14[1] = 0;
  *(v0 + qword_1EDBBA020) = 0;
  *(v0 + qword_1EDBBA028) = 0;
  *(v0 + qword_1EDBBA038) = 0;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D8121DF4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D8121E7C(v6, v7, &selRef_willTransitionFromLayout_toLayout_, 1);
}

id sub_1D8121E7C(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  v5 = a4;
  OUTLINED_FUNCTION_7_73(a1, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  result = objc_msgSendSuper2(&v10, *a3, a1, a2);
  *(v4 + qword_1EDBBA020) = v5;
  return result;
}

void sub_1D8121F1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D8121E7C(v6, v7, &selRef_didTransitionFromLayout_toLayout_, 0);
}

uint64_t sub_1D8121FA4()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  sub_1D81216B8(v7);
  if (v8)
  {
  }

  else
  {
    v3 = sub_1D81220F4();
  }

  OUTLINED_FUNCTION_7_73(v3, *(v2 + 80), *(v2 + 88), v4);
  objc_msgSendSuper2(&v6, sel_prepareForReuse);
  [v0 setSelected_];
  [v0 setHighlighted_];
  sub_1D7EA3140(0);
  sub_1D7EA8098(0, 0);
  sub_1D81216B8(v7);
  if (v8)
  {
  }

  else
  {
    return sub_1D8122184();
  }
}

void sub_1D8122088(void *a1)
{
  v1 = a1;
  sub_1D8121FA4();
}

uint64_t sub_1D81220F4()
{
  sub_1D8121B04([objc_allocWithZone(MEMORY[0x1E69E58C0]) init]);

  return sub_1D7EA31F4(0, 0);
}

uint64_t sub_1D8122184()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = [v0 contentView];
  v3 = [v2 subviews];

  v4 = sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  v5 = sub_1D8191314();

  v6 = sub_1D7E36AB8(v5);

  if (v6 == 1)
  {
    v32[0] = *(v0 + qword_1EDBB9FF0);
    return (*(*(v1 + 88) + 16))(*(v1 + 80));
  }

  else
  {
    v8 = [v0 contentView];
    v9 = [v8 subviews];

    v10 = sub_1D8191314();
    result = sub_1D7E36AB8(v10);
    if (result)
    {
      v11 = result;
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v12 = 0;
        v13 = &qword_1EDBB36D8;
        v14 = v10 & 0xC000000000000001;
        v15 = &protocol descriptor for Reusable;
        v28 = result;
        do
        {
          if (v14)
          {
            v16 = MEMORY[0x1DA714420](v12, v10);
          }

          else
          {
            v16 = *(v10 + 8 * v12 + 32);
          }

          v17 = v16;
          v31 = v16;
          sub_1D7E0631C(0, v13, v15);
          v18 = v17;
          if (swift_dynamicCast())
          {
            sub_1D7E05450(v29, v32);
            v19 = v14;
            v20 = v10;
            v21 = v4;
            v22 = v15;
            v23 = v13;
            v25 = v33;
            v24 = v34;
            __swift_project_boxed_opaque_existential_1(v32, v33);
            v26 = *(v24 + 16);
            v27 = v24;
            v13 = v23;
            v15 = v22;
            v4 = v21;
            v10 = v20;
            v14 = v19;
            v11 = v28;
            v26(v25, v27);

            __swift_destroy_boxed_opaque_existential_1Tm(v32);
          }

          else
          {

            v30 = 0;
            memset(v29, 0, sizeof(v29));
            sub_1D7E9DD24(v29, &qword_1EDBAE678, v13, v15);
          }

          ++v12;
        }

        while (v11 != v12);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1D8122478(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_1D81224CC(v3);
}

double sub_1D81224CC(char a1)
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  v6 = type metadata accessor for CollectionViewCell(0, v4, *(v3 + 88), v5);
  v10.receiver = v1;
  v10.super_class = v6;
  v7 = objc_msgSendSuper2(&v10, sel_isSelected);
  v9.receiver = v1;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, sel_setSelected_, a1 & 1);
  return sub_1D8122570(v7);
}

double sub_1D8122570(char a1)
{
  v2 = v1;
  if ([v1 isSelected] != (a1 & 1))
  {
    v21 = *&v1[qword_1EDBB9FF0];
    sub_1D7E0631C(0, qword_1EDBBB350, &protocol descriptor for ViewSelectable);
    v4 = v21;
    if (swift_dynamicCast())
    {
      sub_1D7E05450(v19, v22);
      v5 = v23;
      v6 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      if ((*(v6 + 8))(v5, v6))
      {
        v7 = [v1 isSelected];
        v8 = v23;
        v9 = v24;
        __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
        (*(v9 + 24))(v7, v8, v9);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    else
    {
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      sub_1D7E9DD24(v19, &unk_1EDBBB340, qword_1EDBBB350, &protocol descriptor for ViewSelectable);
    }

    sub_1D8121A04(v10, v19);
    v11 = *&v19[0];
    v21 = *&v19[0];
    SelectionBehavior.style.getter(v22);
    sub_1D7E9B848(v11);
    v12 = v23;
    v13 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v14 = [v2 isSelected];
    v15 = [v2 isHighlighted];
    v17 = sub_1D8121904(v15, v16);
    v18 = [v2 contentView];
    (*(v13 + 16))(v14, v15, v17 & 1, v18, *&v2[qword_1EDBBA040], v12, v13);

    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    [v2 isSelected];
    return sub_1D7E80824();
  }

  return result;
}

void sub_1D812281C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1D8122870(a3);
}

double sub_1D8122870(uint64_t a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  v6 = type metadata accessor for CollectionViewCell(0, v4, *(v3 + 88), v5);
  v10.receiver = v1;
  v10.super_class = v6;
  v7 = objc_msgSendSuper2(&v10, sel_isHighlighted);
  sub_1D812291C(v2);
  v9.receiver = v1;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, sel_setHighlighted_, v2 & 1);
  return sub_1D8122A04(v7);
}

id sub_1D812291C(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHighlighted];
  if (result != v2)
  {
    sub_1D8121A04(v4, &v13);
    v5 = v13;
    v12 = v13;
    SelectionBehavior.style.getter(v9);
    sub_1D7E9B848(v5);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = [v1 contentView];
    (*(v7 + 24))(v2, v8, *&v1[qword_1EDBBA040], v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return result;
}

double sub_1D8122A04(char a1)
{
  v2 = v1;
  if ([v1 isHighlighted] != (a1 & 1))
  {
    v18 = *&v1[qword_1EDBB9FF0];
    sub_1D7E0631C(0, qword_1EDBBA0F0, &protocol descriptor for ViewHighlightable);
    v4 = v18;
    if (swift_dynamicCast())
    {
      sub_1D7E05450(v16, v19);
      v5 = v20;
      v6 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      if ((*(v6 + 8))(v5, v6))
      {
        v7 = [v1 isHighlighted];
        v8 = v20;
        v9 = v21;
        __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
        (*(v9 + 24))(v7, v8, v9);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      sub_1D7E9DD24(v16, &unk_1EDBBA0E0, qword_1EDBBA0F0, &protocol descriptor for ViewHighlightable);
    }

    sub_1D8121A04(v10, v16);
    v11 = *&v16[0];
    v18 = *&v16[0];
    SelectionBehavior.style.getter(v19);
    sub_1D7E9B848(v11);
    v12 = v20;
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v14 = [v2 isHighlighted];
    v15 = [v2 contentView];
    (*(v13 + 32))(v14, v15, *&v2[qword_1EDBBA040], v12, v13);

    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    return sub_1D7E80824();
  }

  return result;
}

void sub_1D8122C54(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
    if (a1)
    {
      type metadata accessor for DragState();
      sub_1D81926E4();
      __break(1u);
      return;
    }

    v7 = [*(v1 + qword_1EDBB9FF0) layer];
    [v7 setShouldRasterize_];
  }

  else
  {
    v2 = *(v1 + qword_1EDBB9FF0);
    v3 = [v2 layer];
    [v3 setShouldRasterize_];

    v7 = [v2 layer];
    v4 = [v2 traitCollection];
    [v4 displayScale];
    v6 = v5;

    [v7 setRasterizationScale_];
  }
}

void sub_1D8122DA4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1D8122C54(a3);
}

uint64_t sub_1D8122DF8(uint64_t a1, uint64_t a2)
{
  v3 = qword_1EDBBA038;
  OUTLINED_FUNCTION_10(v2 + qword_1EDBBA038, a2);
  return *(v2 + v3);
}

uint64_t sub_1D8122E30(uint64_t a1)
{
  v2 = a1;
  v3 = qword_1EDBBA038;
  result = OUTLINED_FUNCTION_5_0(a1);
  *(v1 + v3) = v2;
  return result;
}

id sub_1D8122EC0(void *a1)
{
  v1 = a1;
  sub_1D8122F38();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1D8190EE4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D8122F38()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  v5 = sub_1D8122DF8(v3, v4);
  if (v5)
  {
    v7 = [*(v0 + qword_1EDBB9FF0) accessibilityLabel];
  }

  else
  {
    OUTLINED_FUNCTION_7_73(v5, *(v2 + 80), *(v2 + 88), v6);
    v7 = objc_msgSendSuper2(&v11, sel_accessibilityLabel);
  }

  v8 = v7;
  if (v8)
  {
    v9 = v8;
    sub_1D8190F14();
  }

  return OUTLINED_FUNCTION_109();
}

void sub_1D8123008(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  sub_1D8123088(v4, v6);
}

void sub_1D8123088(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0();
  v5 = v4;
  v8 = sub_1D8122DF8(v6, v7);
  if (v8)
  {
    v10 = *(v2 + qword_1EDBB9FF0);
    if (a2)
    {
      sub_1D8190DB4();
      v11 = sub_1D8190EE4();
    }

    else
    {
      v11 = 0;
    }

    [v10 setAccessibilityLabel_];
  }

  if (a2)
  {
    v12 = sub_1D8190EE4();
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_7_73(v8, *(v5 + 80), *(v5 + 88), v9);
  objc_msgSendSuper2(&v13, sel_setAccessibilityLabel_, v12);
}

id sub_1D8123198(void *a1)
{
  v1 = a1;
  v2 = sub_1D8123218();

  if (v2)
  {
    sub_1D7E0A1A8(0, &unk_1EDBB3040, 0x1E69DC5E8);
    v3 = sub_1D8191304();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1D8123218()
{
  v1 = v0;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  v5 = type metadata accessor for CollectionViewCell(0, v3, *(v2 + 88), v4);
  v19.receiver = v0;
  v19.super_class = v5;
  v6 = objc_msgSendSuper2(&v19, sel_accessibilityCustomActions);
  if (v6)
  {
    v7 = v6;
    sub_1D7E0A1A8(0, &unk_1EDBB3040, 0x1E69DC5E8);
    v8 = sub_1D8191314();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v20 = v8;
  v9 = sub_1D8121B4C();
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    v13 = v9();
    if (v13)
    {
      sub_1D7F0AAE0(v13);
    }

    sub_1D7E0E10C(v11, v12);
  }

  v14 = [*&v1[qword_1EDBB9FF0] accessibilityCustomActions];
  if (v14)
  {
    v15 = v14;
    sub_1D7E0A1A8(0, &unk_1EDBB3040, 0x1E69DC5E8);
    v16 = sub_1D8191314();

    sub_1D7F0AAE0(v16);
  }

  v17 = v20;
  if (!sub_1D7E36AB8(v20))
  {

    return 0;
  }

  return v17;
}

void sub_1D812339C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1D7E0A1A8(0, &unk_1EDBB3040, 0x1E69DC5E8);
    sub_1D8191314();
  }

  v4 = a1;
  sub_1D8123420();
}

void sub_1D8123420()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  if (v0)
  {
    sub_1D7E0A1A8(0, &unk_1EDBB3040, 0x1E69DC5E8);
    v4 = sub_1D8191304();
  }

  else
  {
    v4 = 0;
  }

  OUTLINED_FUNCTION_7_73(v0, *(v3 + 80), *(v3 + 88), v1);
  objc_msgSendSuper2(&v5, sel_setAccessibilityCustomActions_, v4);
}

id CollectionViewCell.__deallocating_deinit()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7_73(v1, v2, *(v0 + 88), v3);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1D8123540(uint64_t a1)
{

  sub_1D7E9B848(*(a1 + qword_1EDBBA008));
  sub_1D7E0E10C(*(a1 + qword_1EDBB9FF8), *(a1 + qword_1EDBB9FF8 + 8));
  v2 = *(a1 + qword_1EDBBA000);
  v3 = *(a1 + qword_1EDBBA000 + 8);

  return sub_1D7E0E10C(v2, v3);
}

uint64_t CollectionViewCell.keyCommandBlocks.getter()
{
  v12 = MEMORY[0x1E69E7CC0];
  v8 = *(v0 + qword_1EDBB9FF0);
  OUTLINED_FUNCTION_2_0();
  sub_1D7E0631C(0, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType);
  v1 = v8;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 8))(v2, v3);
    sub_1D7F0A4EC(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D7E9DD24(v6, &qword_1EDBB6758, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType);
  }

  return v12;
}

uint64_t (*sub_1D81238E4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D8123944(v2);
  return sub_1D7F41FE0;
}

id (*sub_1D8123944(uint64_t a1))(void **a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isHighlighted];
  return sub_1D8123998;
}

uint64_t (*sub_1D8123A78(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D8123AD8(v2);
  return sub_1D7F413B4;
}

id (*sub_1D8123AD8(uint64_t a1))(void **a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isSelected];
  return sub_1D8123B2C;
}

uint64_t (*sub_1D8123B44(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D812193C();
  return sub_1D7F41FE0;
}

uint64_t CollectionViewCell<>.blueprintViewportMonitor(_:viewportScrollDataDidChange:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewCell<>.blueprintViewportMonitor(_:viewportMotionDataDidChange:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewCell<>.blueprintViewportMonitor(_:viewportMotionEnabled:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewCell<>.blueprintViewportMonitor(_:willDisplayCellWith:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewCell<>.blueprintViewportMonitor(_:didEndDisplayingCellWith:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewCell<>.sourceView(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  OUTLINED_FUNCTION_2_0();
  v8 = *(v7 + 80);
  v10 = v9;
  v11 = v6(a1, a2, v8, a3);

  return v11;
}

uint64_t CollectionViewCell<>.viewWillAppear()()
{
  OUTLINED_FUNCTION_2_144();
  OUTLINED_FUNCTION_2_0();
  return v1(*(v0 + 80));
}

uint64_t CollectionViewCell<>.viewDidAppear()()
{
  OUTLINED_FUNCTION_2_144();
  OUTLINED_FUNCTION_2_0();
  return v1(*(v0 + 80));
}

uint64_t CollectionViewCell<>.viewWillDisappear()()
{
  OUTLINED_FUNCTION_2_144();
  OUTLINED_FUNCTION_2_0();
  return v1(*(v0 + 80));
}

uint64_t CollectionViewCell<>.viewDidDisappear()()
{
  OUTLINED_FUNCTION_2_144();
  OUTLINED_FUNCTION_2_0();
  return v1(*(v0 + 80));
}

uint64_t CollectionViewCell<>.windowDidBecomeBackground()()
{
  OUTLINED_FUNCTION_2_144();
  OUTLINED_FUNCTION_2_0();
  return v1(*(v0 + 80));
}

uint64_t CollectionViewCell<>.windowWillBecomeForeground()()
{
  OUTLINED_FUNCTION_2_144();
  OUTLINED_FUNCTION_2_0();
  return v1(*(v0 + 80));
}

id CollectionViewCell.renderWithAutoResizing(originalSize:renderBlock:)(uint64_t (*a1)(id), double a2, double a3)
{
  v7 = *(v3 + qword_1EDBB9FF0);
  v8 = [v7 frame];
  if (v10 == a2 && v9 == a3)
  {
    return a1(v8);
  }

  [v7 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v7 setFrame_];
  [v7 setNeedsLayout];
  a1([v7 layoutIfNeeded]);
  [v7 setFrame_];

  return [v7 setNeedsLayout];
}

uint64_t sub_1D8124624(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1D8124664(uint64_t result, int a2, int a3)
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

uint64_t FloatingTabBarAccessoryOption.TransitionStyle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) == 1)
  {
    return MEMORY[0x1DA714A00]((v1 | v2) != 0);
  }

  MEMORY[0x1DA714A00](2);
  MEMORY[0x1DA714A00](v1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x1DA714A20](v3);
}

BOOL static FloatingTabBarAccessoryOption.TransitionStyle.== infix(_:_:)(double *a1, double *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if (*(a1 + 16) == 1)
  {
    v7 = *&v5 | *&v4;
    if (v3 | *&v2)
    {
      v8 = v7 != 0;
    }

    else
    {
      v8 = v7 == 0;
    }

    return *(a2 + 16) && v8;
  }

  else
  {
    if (v3 != *&v5)
    {
      v6 = 1;
    }

    return (v6 & 1) == 0 && v2 == v4;
  }
}

uint64_t FloatingTabBarAccessoryOption.TransitionStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D81927E4();
  if (v3 == 1)
  {
    MEMORY[0x1DA714A00]((v1 | v2) != 0);
  }

  else
  {
    MEMORY[0x1DA714A00](2);
    MEMORY[0x1DA714A00](v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA714A20](v4);
  }

  return sub_1D8192824();
}

uint64_t sub_1D8124C04(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_1D81927E4();
  if (v4 == 1)
  {
    MEMORY[0x1DA714A00]((v2 | v3) != 0);
  }

  else
  {
    MEMORY[0x1DA714A00](2);
    MEMORY[0x1DA714A00](v2);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1DA714A20](v5);
  }

  return sub_1D8192824();
}

BOOL static FloatingTabBarAccessoryOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if ((v3 & 0x80000000) == 0)
  {
    return (v5 & 0x80000000) == 0 && v2 == v4;
  }

  if ((v5 & 0x80000000) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (v5 & 1) == 0 && *&v2 == *&v4 && v7 == v8;
  }

  if (*&v2 | *&v7)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    return (*&v4 | *&v8) != 0;
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    return (*&v4 | *&v8) == 0;
  }
}

uint64_t FloatingTabBarAccessoryOption.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 < 0)
  {
    v4 = v0[1];
    MEMORY[0x1DA714A00](1);
    if (v2)
    {
      return MEMORY[0x1DA714A00]((v1 | v4) != 0);
    }

    MEMORY[0x1DA714A00](2);
    MEMORY[0x1DA714A00](v1);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    MEMORY[0x1DA714A00](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }
  }

  return MEMORY[0x1DA714A20](v3);
}

uint64_t FloatingTabBarAccessoryOption.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D81927E4();
  if ((v3 & 0x80000000) == 0)
  {
    MEMORY[0x1DA714A00](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

LABEL_10:
    MEMORY[0x1DA714A20](v4);
    return sub_1D8192824();
  }

  MEMORY[0x1DA714A00](1);
  if ((v3 & 1) == 0)
  {
    MEMORY[0x1DA714A00](2);
    MEMORY[0x1DA714A00](v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_10;
  }

  MEMORY[0x1DA714A00]((v1 | v2) != 0);
  return sub_1D8192824();
}

uint64_t sub_1D8124E80(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_1D81927E4();
  if ((v4 & 0x80000000) == 0)
  {
    MEMORY[0x1DA714A00](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

LABEL_10:
    MEMORY[0x1DA714A20](v5);
    return sub_1D8192824();
  }

  MEMORY[0x1DA714A00](1);
  if ((v4 & 1) == 0)
  {
    MEMORY[0x1DA714A00](2);
    MEMORY[0x1DA714A00](v2);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_10;
  }

  MEMORY[0x1DA714A00]((v2 | v3) != 0);
  return sub_1D8192824();
}

uint64_t FloatingTabBarAccessory.identifier.getter()
{
  v1 = *(v0 + 48);
  sub_1D8190DB4();
  return v1;
}

uint64_t FloatingTabBarAccessory.init(provider:identifier:options:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_1D7E05450(a1, a5);
  a5[6] = a2;
  a5[7] = a3;
  a5[5] = a4;
  return result;
}

uint64_t FloatingTabBarAccessory.init(provider:identifier:options:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1D7E0E768(a1, a5);
  v10 = sub_1D7F13080(a4);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  a5[5] = v10;
  a5[6] = a2;
  a5[7] = a3;
  return result;
}

unint64_t sub_1D8125024()
{
  result = qword_1ECA11690;
  if (!qword_1ECA11690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11690);
  }

  return result;
}

unint64_t sub_1D812507C()
{
  result = qword_1ECA11698;
  if (!qword_1ECA11698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11698);
  }

  return result;
}

uint64_t sub_1D81250E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D8125128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8125238()
{

  return v0;
}

uint64_t sub_1D8125268()
{
  sub_1D8125238();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8125308()
{
  OUTLINED_FUNCTION_0_221();
  OUTLINED_FUNCTION_2_145();
  return (*(v0 + 40))();
}

uint64_t sub_1D8125360()
{
  OUTLINED_FUNCTION_0_221();
  OUTLINED_FUNCTION_2_145();
  return (*(v0 + 32))();
}

uint64_t sub_1D81253B8()
{
  OUTLINED_FUNCTION_0_221();
  OUTLINED_FUNCTION_2_145();
  return (*(v0 + 24))();
}

uint64_t ContextMenu.build(commandCenter:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v6 = *(v4 + 16);
  if (v6)
  {
    v10 = v4 + 32;
    do
    {
      sub_1D7E0E768(v10, v16);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v13 = (*(v12 + 8))(a1, a2, a3, v11, v12);
      v14 = __swift_destroy_boxed_opaque_existential_1Tm(v16);
      if (v13)
      {
        MEMORY[0x1DA713500](v14);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D81913B4();
        }

        sub_1D8191404();
        v5 = v19;
      }

      v10 += 40;
      --v6;
    }

    while (v6);
  }

  return v5;
}

uint64_t ContextMenu.activityItemConfiguration.getter()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  sub_1D818F844();
  return v2;
}

uint64_t ContextMenu.__allocating_init(groups:activityItemConfiguration:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0();
  v2 = swift_allocObject();

  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t ContextMenu.init(groups:activityItemConfiguration:)(uint64_t a1)
{

  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t *ContextMenu.__allocating_init(groups:activityItemConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_0();
  swift_allocObject();
  return ContextMenu.init(groups:activityItemConfiguration:)(a1);
}

uint64_t *ContextMenu.init(groups:activityItemConfiguration:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D7F2BEE8(v3, &v13);
      v10[0] = v13;
      v10[1] = v14;
      v11 = v15;
      if (*(&v14 + 1))
      {
        sub_1D7E05450(v10, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D7EE542C(0, *(v4 + 16) + 1, 1, v4);
          v4 = v7;
        }

        v6 = *(v4 + 16);
        v5 = *(v4 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_1D7EE542C(v5 > 1, v6 + 1, 1, v4);
          v4 = v8;
        }

        *(v4 + 16) = v6 + 1;
        sub_1D7E05450(v12, v4 + 40 * v6 + 32);
      }

      else
      {
        sub_1D7F2BF4C(v10);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  if (*(v4 + 16))
  {
    *(v1 + 16) = v4;
    *(v1 + 24) = 0;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

void ContextMenu.__allocating_init(groups:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
}

uint64_t *ContextMenu.__allocating_init(groups:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0();
  swift_allocObject();
  return ContextMenu.init(groups:activityItemConfiguration:)(a1);
}

void sub_1D8125848(uint64_t a1)
{
  type metadata accessor for ContextMenu();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  qword_1ECA116A0 = v1;
}

double static ContextMenu.previewOnly.getter()
{
  if (qword_1ECA0C3D8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t ContextMenu.deinit()
{

  return v0;
}

uint64_t ContextMenu.__deallocating_deinit()
{
  ContextMenu.deinit();
  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

void sub_1D8125948(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = v1 + 32;
  v29 = *(v1 + 16);
  v30 = *(a1 + 16);
  v28 = v1 + 32;
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
LABEL_34:
      __break(1u);
      return;
    }

    sub_1D7E0E768(v4 + 40 * v3, &v35);
    sub_1D7F2BBEC();
    v5 = type metadata accessor for ContextMenuGroup();
    if ((OUTLINED_FUNCTION_2_146(v5, v6, v7, v8) & 1) == 0)
    {
      goto LABEL_22;
    }

    if (*(v31 + 56) == 2)
    {
      v9 = *(v31 + 64);
      v10 = *(v9 + 16);
      if (v10)
      {
        break;
      }
    }

LABEL_22:
    if (++v3 == v2)
    {
      return;
    }
  }

  v11 = v9 + 32;
  sub_1D8190DB4();
  v12 = 0;
  while (1)
  {
    if (v12 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v13 = sub_1D7F2BEE8(v11, &v35);
    if (!*(&v36 + 1))
    {
      sub_1D7F2BF4C(&v35);
      goto LABEL_19;
    }

    if (OUTLINED_FUNCTION_2_146(v13, v14, v15, v16))
    {
      break;
    }

LABEL_19:
    ++v12;
    v11 += 40;
    if (v10 == v12)
    {

      v2 = v29;
      v1 = v30;
      v4 = v28;
      goto LABEL_22;
    }
  }

  v17 = *(v31 + 24);
  if (!v17 || (*(v31 + 16) == 0x6775626544 ? (v18 = v17 == 0xE500000000000000) : (v18 = 0), !v18 && (sub_1D8192634() & 1) == 0))
  {

    goto LABEL_19;
  }

  v19 = *(v31 + 64);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 32;
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D7F2BEE8(v21, &v35);
      v32 = v35;
      v33 = v36;
      v34 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE532C(0, *(v22 + 16) + 1, 1, v22);
        v22 = v26;
      }

      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D7EE532C(v23 > 1, v24 + 1, 1, v22);
        v22 = v27;
      }

      *(v22 + 16) = v24 + 1;
      v25 = v22 + 40 * v24;
      *(v25 + 64) = v34;
      *(v25 + 32) = v32;
      *(v25 + 48) = v33;
      v21 += 40;
      --v20;
    }

    while (v20);
  }
}

uint64_t dispatch thunk of ContextMenu.__allocating_init(groups:activityItemConfiguration:)()
{
  return (*(v0 + 96))();
}

{
  return (*(v0 + 104))();
}

void BlueprintLayoutCollection.compositionalSupplementaryLayoutAttributes(for:at:offset:insets:)()
{
  OUTLINED_FUNCTION_21_36();
  OUTLINED_FUNCTION_1_159();
  v4 = *(v0 + 1232);
  if (*(v4 + 16))
  {
    v5 = sub_1D7E11428(v2, v3);
    if (v6)
    {
      OUTLINED_FUNCTION_10_57(v5);
      v7 = sub_1D7EA83F4(v1, v4);

      if (v7)
      {
        v8 = BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter();
        if (v8)
        {
          OUTLINED_FUNCTION_23_23(v8, v9, v10, v11, v12, v13, v14, v15, v32);
          sub_1D7EAF9D8(v35, v34);
          OUTLINED_FUNCTION_4_93(v16, v17, v18, v19, v20, v21, v22, v23);

          OUTLINED_FUNCTION_26_23(v24, v25, v26, v27, v28, v29, v30, v31, v33);
          sub_1D7EAFC0C(v34);
        }
      }
    }
  }

  OUTLINED_FUNCTION_22_25();
}

Swift::OpaquePointer_optional __swiftcall BlueprintLayoutCollection.layoutAttributes(in:offset:insets:)(__C::CGRect in, CGPoint offset, UIEdgeInsets insets)
{
  left = insets.left;
  top = insets.top;
  OUTLINED_FUNCTION_5_46();
  OUTLINED_FUNCTION_15_45(__src);
  memcpy(__dst, (v3 + 40), sizeof(__dst));
  sub_1D7E6EB58(&__src[40], v29);
  OUTLINED_FUNCTION_4_5();
  sub_1D7E6ED1C();
  OUTLINED_FUNCTION_9_50();
  sub_1D7E6F268(v30);
  memcpy(v29, __src, sizeof(v29));
  v7.n128_f64[0] = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_31_19(v7, v16, v17, v18, v19, v20, v21, v22, v8, v9, v10, v11, v12, v13, v14, v15, top, left, v26, v27, v28);
  if (v23)
  {
    v6 = *(v23 + 16);
    sub_1D8190DB4();
  }

  else
  {
    v6 = 0;
  }

  v25 = v6;
  result.value._rawValue = v25;
  result.is_nil = v24;
  return result;
}

void BlueprintLayoutCollection.supplementaryLayoutAttributes(for:at:offset:insets:)()
{
  OUTLINED_FUNCTION_21_36();
  OUTLINED_FUNCTION_1_159();
  v4 = *(v0 + 1224);
  if (*(v4 + 16))
  {
    v5 = sub_1D7E11428(v2, v3);
    if (v6)
    {
      OUTLINED_FUNCTION_10_57(v5);
      v7 = sub_1D7EA83F4(v1, v4);

      if (v7)
      {
        v8 = BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter();
        if (v8)
        {
          OUTLINED_FUNCTION_23_23(v8, v9, v10, v11, v12, v13, v14, v15, v32);
          sub_1D7EAF9D8(v35, v34);
          OUTLINED_FUNCTION_4_93(v16, v17, v18, v19, v20, v21, v22, v23);

          OUTLINED_FUNCTION_26_23(v24, v25, v26, v27, v28, v29, v30, v31, v33);
          sub_1D7EAFC0C(v34);
        }
      }
    }
  }

  OUTLINED_FUNCTION_22_25();
}

__C::CGRect __swiftcall BlueprintLayoutCollection.frameForSection(index:)(Swift::Int index)
{
  v2 = *(v1 + 1192);
  v3 = 0.0;
  if (*(v2 + 16))
  {
    v4 = sub_1D7E7E198(index);
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if (v8)
    {
      v9 = *(v2 + 56) + 32 * v4;
      v3 = *v9;
      v5 = *(v9 + 8);
      v6 = *(v9 + 16);
      v7 = *(v9 + 24);
    }
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v10 = v3;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v10;
  return result;
}

void BlueprintLayoutCollection.layoutAttributesResult(in:offset:insets:)(double a1, double a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  OUTLINED_FUNCTION_5_46();
  OUTLINED_FUNCTION_15_45(__src);
  memcpy(__dst, (v8 + 40), sizeof(__dst));
  sub_1D7E6EB58(&__src[40], v30);
  OUTLINED_FUNCTION_4_5();
  sub_1D7E6ED1C();
  OUTLINED_FUNCTION_9_50();
  sub_1D7E6F268(v31);
  memcpy(v30, __src, sizeof(v30));
  v11.n128_f64[0] = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_31_19(v11, v20, v21, v22, v23, v24, v25, v26, v12, v13, v14, v15, v16, v17, v18, v19, a7, a8, v27, v28, v29);
}

void BlueprintLayoutCollection.decorationLayoutAttributes(for:at:offset:insets:)()
{
  OUTLINED_FUNCTION_21_36();
  OUTLINED_FUNCTION_1_159();
  v4 = *(v0 + 1240);
  if (*(v4 + 16))
  {
    v5 = sub_1D7E11428(v2, v3);
    if (v6)
    {
      OUTLINED_FUNCTION_10_57(v5);
      v7 = sub_1D7EA83F4(v1, v4);

      if (v7)
      {
        v8 = BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter();
        if (v8)
        {
          OUTLINED_FUNCTION_23_23(v8, v9, v10, v11, v12, v13, v14, v15, v32);
          sub_1D7EAF9D8(v35, v34);
          OUTLINED_FUNCTION_4_93(v16, v17, v18, v19, v20, v21, v22, v23);

          OUTLINED_FUNCTION_26_23(v24, v25, v26, v27, v28, v29, v30, v31, v33);
          sub_1D7EAFC0C(v34);
        }
      }
    }
  }

  OUTLINED_FUNCTION_22_25();
}

void sub_1D812618C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1D7E1AF20(0, &qword_1ECA116A8, sub_1D8127824, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_28_0();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v159 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v159 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v159 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v164 = &v159 - v24;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  v167 = &v159 - v26;
  v181 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v174 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_28_0();
  v180 = v29 - v30;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  v168 = &v159 - v32;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v159 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v177 = &v159 - v37;
  memcpy(v186, v3, 0x4E8uLL);
  if (!*(*&v186[76] + 16))
  {
    goto LABEL_6;
  }

  v179 = v3;
  v38 = v9;
  v39 = v5;
  v176 = v22;
  v40 = *&v186[76];
  sub_1D8190DB4();
  v41 = sub_1D7E7DB08();
  if ((v42 & 1) == 0)
  {

    v9 = v38;
    v3 = v179;
LABEL_6:
    v47 = v9;
    v48 = v3;
    goto LABEL_7;
  }

  v175 = v19;
  v43 = v7;
  v44 = *(*(v40 + 56) + 8 * v41);
  v161 = v43;
  v45 = sub_1D818E974();
  v46 = v39;
  if (v45 == sub_1D818E974())
  {

    v47 = v38;
    v48 = v179;
LABEL_7:
    memcpy(v47, v48, 0x4E8uLL);
    sub_1D7E6755C(v186, v185);
    return;
  }

  v159 = v38;
  v170 = v44;
  v165 = v13;
  v166 = v16;
  *&v184[24] = MEMORY[0x1E69E7CC0];
  *&v184[32] = MEMORY[0x1E69E7CC8];
  *&v184[1216] = MEMORY[0x1E69E7CC8];
  *&v184[1224] = MEMORY[0x1E69E7CC8];
  *&v184[1232] = MEMORY[0x1E69E7CC8];
  *&v184[1240] = MEMORY[0x1E69E7CC8];
  *&v184[1248] = MEMORY[0x1E69E7CC8];
  *v184 = v186[0];
  v184[16] = v186[1];
  memcpy(&v184[40], v179 + 5, 0x236uLL);
  memcpy(&v184[608], v179 + 76, 0x260uLL);
  v50 = v174 + 16;
  v49 = *(v174 + 16);
  v160 = v39;
  v172 = v49;
  v49(v177, v39, v181);
  v169 = v40;
  v51 = *(v40 + 64);
  v163 = v40 + 64;
  v52 = 1 << *(v40 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & v51;
  sub_1D7E6EB58(&v186[2] + 8, v185);
  sub_1D7EAF9D8(&v186[38], v185);
  v55 = 0;
  v56 = (v52 + 63) >> 6;
  v173 = v50;
  v178 = (v50 + 16);
  v179 = (v50 - 8);
  v171 = v35;
  v57 = v175;
  v58 = v164;
  v59 = v168;
  for (i = v56; ; v56 = i)
  {
    if (!v54)
    {
      v46 = v167;
      while (1)
      {
        v60 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_77;
        }

        if (v60 >= v56)
        {
          sub_1D8127824(0);
          v66 = v99;
          OUTLINED_FUNCTION_22_1(v58);
          v54 = 0;
          goto LABEL_18;
        }

        v54 = *(v163 + 8 * v60);
        ++v55;
        if (v54)
        {
          v55 = v60;
          break;
        }
      }
    }

    OUTLINED_FUNCTION_16_45();
    v61 = v169;
    v62 = v174;
    v63 = v181;
    v172(v35, v169[6] + *(v174 + 72) * v46, v181);
    v64 = *(*(v61 + 56) + 8 * v46);
    sub_1D8127824(0);
    v66 = v65;
    v67 = *(v65 + 48);
    v68 = *(v62 + 32);
    v69 = v164;
    v68(v164, v35, v63);
    *(v69 + v67) = v64;
    v58 = v69;
    OUTLINED_FUNCTION_27_26(v69);
    v46 = v167;
    v59 = v168;
LABEL_18:
    sub_1D8127898(v58, v46);
    sub_1D8127824(0);
    OUTLINED_FUNCTION_3_9(v46);
    if (v70)
    {
      break;
    }

    v71 = *(v46 + *(v66 + 48));
    (*v178)(v59, v46, v181);
    v72 = sub_1D818E964();
    v73 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_78;
    }

    v74 = sub_1D818E974();
    MEMORY[0x1DA710B60](v73, v74);
    if (!v169[2] || (sub_1D7E7DB08(), (v75 & 1) == 0))
    {
      v76 = sub_1D818E974();
      if (v76 == sub_1D818E974())
      {

        v46 = *v179;
        v77 = v181;
        (*v179)(v180, v181);
        (v46)(v59, v77);
        goto LABEL_31;
      }

      v78 = sub_1D818E974();
      if (v78 == sub_1D818E974())
      {
        v79 = v170;
        [v170 copy];
        sub_1D8191F34();
        swift_unknownObjectRelease();
        type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
        OUTLINED_FUNCTION_12_52();
        swift_dynamicCast();
        v80 = v183[0];
        v81 = sub_1D818E8E4();
        [v80 setIndexPath_];

        [v79 frame];
        v83 = v82;
        v2 = v84;
        v86 = v85;
        [v71 frame];
        [v80 setFrame_];

        BlueprintLayoutCollection.add(layoutAttributes:)(v80);
      }
    }

    v87 = sub_1D812746C(v71, v177, v170);
    memcpy(v183, v184, sizeof(v183));
    memcpy(v182, v184, sizeof(v182));
    sub_1D7E6755C(v183, v185);
    v88 = sub_1D7E7D31C(v87);
    v90 = v89;
    memcpy(v185, v182, sizeof(v185));
    sub_1D7E598FC(v185);
    v91 = &v87[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier];
    *v91 = v88;
    v91[1] = v90;

    v92 = v87;
    MEMORY[0x1DA713500]();
    if (*((*&v184[24] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v184[24] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D81913B4();
    }

    sub_1D8191404();
    v93 = [v92 indexPath];
    v94 = v171;
    sub_1D818E924();

    v95 = v92;
    v96 = *&v184[1216];
    swift_isUniquelyReferenced_nonNull_native();
    v182[0] = v96;
    sub_1D7E7D494();
    v97 = *v179;
    (*v179)(v94, v181);
    *&v184[1216] = v182[0];
    sub_1D7E7D6B8(v95);
    v98 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
    swift_beginAccess();
    if (v95[v98] == 1)
    {
      BlueprintLayoutCollectionPinAdjuster.track(layoutAttributes:)(v95);
    }

    v46 = v181;
    v97(v180, v181);
    v59 = v168;
    v97(v168, v46);
LABEL_31:
    v35 = v171;
  }

  v100 = *(&v186[76] + 1) + 64;
  OUTLINED_FUNCTION_0_222();
  OUTLINED_FUNCTION_30_24(v101);
  v102 = 0;
  v103 = v159;
  v180 = v66;
  v160 = v58;
  v161 = v100;
LABEL_34:
  v104 = v166;
  v105 = v170;
  if (v59)
  {
LABEL_38:
    v107 = OUTLINED_FUNCTION_7_74();
    v168 = v108;
    v169 = v107;
    v109 = v105 + 64;
    OUTLINED_FUNCTION_0_222();
    v112 = v111 & v110;
    v114 = (v113 + 63) >> 6;
    sub_1D8190DB4();
    v167 = v105;
    sub_1D8190DB4();
    v115 = 0;
    v116 = v176;
    if (!v112)
    {
      goto LABEL_40;
    }

    do
    {
LABEL_44:
      OUTLINED_FUNCTION_16_45();
      v118 = v167;
      v119 = OUTLINED_FUNCTION_20_41();
      v120 = v181;
      (v172)(v119);
      OUTLINED_FUNCTION_19_33();
      v57 = v175;
      v121(v175, v35, v120);
      *&v118[v57] = v116;
      v66 = v180;
      OUTLINED_FUNCTION_27_26(v57);
      v116 = v176;
LABEL_45:
      sub_1D8127898(v57, v116);
      OUTLINED_FUNCTION_3_9(v116);
      if (v70)
      {

        v102 = v163;
        v59 = v164;
        v103 = v159;
        v58 = v160;
        v100 = v161;
        goto LABEL_34;
      }

      v122 = *(v116 + *(v66 + 48));
      v123 = [v122 indexPath];
      sub_1D818E924();

      sub_1D818E974();
      v124 = OUTLINED_FUNCTION_18_38();
      (v57)(v124);
      if (sub_1D818E974() >= v66)
      {
        v125 = v122;
      }

      else
      {
        [v122 copy];
        sub_1D8191F34();
        swift_unknownObjectRelease();
        type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
        OUTLINED_FUNCTION_12_52();
        swift_dynamicCast();
        v125 = v183[0];
        [v122 frame];
        OUTLINED_FUNCTION_13_48();
        Height = CGRectGetHeight(v188);
        OUTLINED_FUNCTION_29_22(Height, v2 + Height, v127, sel_setFrame_);
      }

      BlueprintLayoutCollection.add(supplementaryLayoutAttributes:for:)(v125, v168, v169);

      v116 = v176;
      (v57)(v176, v181);
      v57 = v175;
      v66 = v180;
    }

    while (v112);
LABEL_40:
    while (1)
    {
      v117 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        break;
      }

      if (v117 >= v114)
      {
        OUTLINED_FUNCTION_22_1(v57);
        v112 = 0;
        goto LABEL_45;
      }

      v112 = *&v109[8 * v117];
      ++v115;
      if (v112)
      {
        v115 = v117;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  while (1)
  {
    v106 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      break;
    }

    if (v106 >= v58)
    {

      v128 = *(&v186[77] + 1) + 64;
      OUTLINED_FUNCTION_0_222();
      v130.n128_f64[0] = OUTLINED_FUNCTION_30_24(v129);
      v131 = 0;
      v160 = v58;
      v161 = v128;
      v132 = v165;
      while (1)
      {
        v133 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          goto LABEL_80;
        }

        if (v133 >= v58)
        {
          (*v179)(v177, v181, v130);

          memcpy(v103, v184, 0x4E8uLL);
          return;
        }

        ++v131;
        if (*(v128 + 8 * v133))
        {
          while (2)
          {
            v134 = OUTLINED_FUNCTION_7_74();
            v175 = v135;
            v176 = v134;
            v136 = (v105 + 64);
            OUTLINED_FUNCTION_0_222();
            v139 = v138 & v137;
            v141 = (v140 + 63) >> 6;
            sub_1D8190DB4();
            v169 = v105;
            sub_1D8190DB4();
            v142 = 0;
            v167 = v141;
            v168 = v105 + 64;
            if (!v139)
            {
              goto LABEL_60;
            }

            while (1)
            {
              v143 = v132;
              v144 = v104;
              v145 = v142;
LABEL_64:
              v146 = __clz(__rbit64(v139));
              v139 &= v139 - 1;
              v147 = v146 | (v145 << 6);
              v148 = v169;
              v149 = OUTLINED_FUNCTION_20_41();
              v150 = v35;
              v151 = v181;
              (v172)(v149);
              OUTLINED_FUNCTION_19_33();
              v132 = v143;
              v152(v143, v150, v151);
              *(v143 + v148) = v147;
              v66 = v180;
              OUTLINED_FUNCTION_27_26(v143);
              v104 = v144;
              v141 = v167;
              v136 = v168;
LABEL_65:
              sub_1D8127898(v132, v104);
              OUTLINED_FUNCTION_3_9(v104);
              if (v70)
              {
                break;
              }

              v153 = *(v104 + *(v66 + 48));
              v154 = [v153 indexPath];
              v35 = v171;
              sub_1D818E924();

              sub_1D818E974();
              v155 = OUTLINED_FUNCTION_18_38();
              v132(v155);
              if (sub_1D818E974() >= v66)
              {
                v156 = v153;
              }

              else
              {
                [v153 copy];
                sub_1D8191F34();
                swift_unknownObjectRelease();
                type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
                OUTLINED_FUNCTION_12_52();
                swift_dynamicCast();
                v156 = v183[0];
                [v153 frame];
                OUTLINED_FUNCTION_13_48();
                v157 = CGRectGetHeight(v189);
                OUTLINED_FUNCTION_29_22(v157, v2 + v157, v158, sel_setFrame_);
              }

              BlueprintLayoutCollection.add(decorationLayoutAttributes:for:)(v156, v175, v176);

              v104 = v166;
              (v132)(v166, v181);
              v132 = v165;
              v66 = v180;
              if (!v139)
              {
LABEL_60:
                while (1)
                {
                  v145 = v142 + 1;
                  if (__OFADD__(v142, 1))
                  {
                    goto LABEL_76;
                  }

                  if (v145 >= v141)
                  {
                    OUTLINED_FUNCTION_22_1(v132);
                    v139 = 0;
                    goto LABEL_65;
                  }

                  v139 = *(v136 + 8 * v145);
                  ++v142;
                  if (v139)
                  {
                    v143 = v132;
                    v144 = v104;
                    v142 = v145;
                    goto LABEL_64;
                  }
                }
              }
            }

            v131 = v163;
            v103 = v159;
            v58 = v160;
            v105 = v170;
            v35 = v171;
            v128 = v161;
            if (v164)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    ++v102;
    if (*(v100 + 8 * v106))
    {
      goto LABEL_38;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

uint64_t BlueprintLayoutCollection.shouldInvalidateLayoutAttributes(for:offset:insets:hasViewOnScreen:)(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_5_46();
  v20 = *v18;
  v21 = v18[1];
  OUTLINED_FUNCTION_14_48(v60);
  OUTLINED_FUNCTION_14_48(v59);
  sub_1D7EAF9D8(v60, v61);
  v22.n128_f64[0] = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_24_27(v22, v31, v32, v33, v34, v35, v36, v37, v23, v24, v25, v26, v27, v28, v29, v30, a17, a18, v20, v21, *&a13, *&a14, *&a15, *&a16, v59[0], v59[1], v59[2], v59[3], v59[4], v59[5], v59[6], v59[7], v59[8], v59[9], v59[10], v59[11], v59[12], v59[13], v59[14], v59[15]);
  OUTLINED_FUNCTION_28_22(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v49, v50, v52, v54, v56, v58, v59[0]);
  sub_1D7EAFC0C(v61);
  return a2;
}

BOOL BlueprintLayoutCollection.shouldInvalidate(for:offset:insets:hasViewOnScreen:)(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_5_46();
  v20 = *v18;
  v21 = v18[1];
  OUTLINED_FUNCTION_14_48(v61);
  OUTLINED_FUNCTION_14_48(v60);
  sub_1D7EAF9D8(v61, v62);
  v22.n128_f64[0] = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_24_27(v22, v31, v32, v33, v34, v35, v36, v37, v23, v24, v25, v26, v27, v28, v29, v30, a17, a18, v20, v21, *&a13, *&a14, *&a15, *&a16, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8], v60[9], v60[10], v60[11], v60[12], v60[13], v60[14], v60[15]);
  OUTLINED_FUNCTION_28_22(v38, v39, v40, v41, v42, v43, v44, v45, v48, v49, v50, v51, v53, v55, v57, v59, v60[0]);
  sub_1D7EAFC0C(v62);
  v46 = sub_1D7E36AB8(a2);

  return v46 != 0;
}

uint64_t BlueprintLayoutCollection.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 608), 0x235uLL);
  memcpy(a1, (v1 + 608), 0x235uLL);
  return sub_1D7E222B8(__dst, v4);
}

uint64_t BlueprintLayoutCollection.add(decorationLayoutAttributes:for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a3;
  v7 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_15_45(v29);
  v13 = v29[155];
  OUTLINED_FUNCTION_15_45(v28);
  sub_1D7E6755C(v29, v30);
  v14 = sub_1D7E7D31C(a1);
  v16 = v15;
  memcpy(v30, v28, 0x4E8uLL);
  sub_1D7E598FC(v30);
  v17 = &a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier];
  *v17 = v14;
  *(v17 + 1) = v16;

  v18 = a1;
  MEMORY[0x1DA713500]();
  sub_1D7E2893C(*((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  v19 = v27;
  sub_1D8191404();
  if (*(v13 + 16) && (v20 = sub_1D7E11428(a2, v19), (v21 & 1) != 0))
  {
    v22 = *(*(v13 + 56) + 8 * v20);
    sub_1D8190DB4();
  }

  else
  {
    type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
    OUTLINED_FUNCTION_2_147(&qword_1EDBBC6C0);
    v22 = sub_1D8190D94();
  }

  v23 = [v18 indexPath];
  sub_1D818E924();

  v24 = v18;
  swift_isUniquelyReferenced_nonNull_native();
  v28[0] = v22;
  sub_1D7E7D494();
  (*(v9 + 8))(v12, v7);
  swift_isUniquelyReferenced_nonNull_native();
  v28[0] = *(v4 + 1240);
  sub_1D7EB49B0();
  *(v4 + 1240) = v28[0];
  sub_1D7E7D6B8(v24);
  result = BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter();
  if (result)
  {
    return BlueprintLayoutCollectionPinAdjuster.track(layoutAttributes:)(v24);
  }

  return result;
}

id sub_1D812746C(void *a1, uint64_t a2, void *a3)
{
  v22[0] = a1;
  swift_getObjectType();
  v4 = sub_1D818E994();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v22[0] indexPath];
  sub_1D818E924();

  v10 = sub_1D818E974();
  (*(v5 + 8))(v8, v4);
  if (sub_1D818E974() >= v10)
  {
    v21 = v22[0];

    return v21;
  }

  else
  {
    [v22[0] copy];
    sub_1D8191F34();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v11 = v22[1];
    [v22[0] frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [a3 frame];
    [v11 setFrame_];

    return v11;
  }
}

uint64_t sub_1D812768C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 1224) = 0u;
    *(result + 1240) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1256) = 1;
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

    *(result + 1256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8127824(uint64_t a1)
{
  if (!qword_1ECA116B0)
  {
    sub_1D818E994();
    type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA116B0);
    }
  }
}

uint64_t sub_1D8127898(uint64_t a1, uint64_t a2)
{
  sub_1D7E1AF20(0, &qword_1ECA116A8, sub_1D8127824, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t MastheadDisplayMode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D812798C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MastheadDisplayMode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *MastheadStyleOptions.mastheadTextColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSMastheadStyleOptions_mastheadTextColor);
  v2 = v1;
  return v1;
}

id MastheadStyleOptions.__allocating_init(mastheadTextColor:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___TSMastheadStyleOptions_mastheadTextColor] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MastheadStyleOptions.init(mastheadTextColor:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___TSMastheadStyleOptions_mastheadTextColor] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t MastheadStyleOptions.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_1D7E7B91C(a1, v12);
  if (!v13)
  {
    sub_1D7E7BAAC(v12);
    goto LABEL_7;
  }

  if ((OUTLINED_FUNCTION_2_148(v3) & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    return v8 & 1;
  }

  v4 = *(v1 + OBJC_IVAR___TSMastheadStyleOptions_mastheadTextColor);
  v5 = *&v11[OBJC_IVAR___TSMastheadStyleOptions_mastheadTextColor];
  if (!v4)
  {
    v10 = v5;

    if (!v5)
    {
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_7;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  sub_1D7E9F44C();
  v6 = v5;
  v7 = v4;
  v8 = sub_1D8191CC4();

  return v8 & 1;
}

id MastheadStyleOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

BOOL static MastheadStatusBarMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void MastheadDisplayOptions.statusBarMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode + 8);
  *a1 = *(v1 + OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode);
  *(a1 + 8) = v2;
}

void *MastheadDisplayOptions.styleOptions.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSMastheadDisplayOptions_styleOptions);
  v2 = v1;
  return v1;
}

id MastheadDisplayOptions.init(statusBarMode:styleOptions:)()
{
  OUTLINED_FUNCTION_1_160();
  ObjectType = swift_getObjectType();
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = &v1[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode];
  *v6 = *v2;
  v6[8] = v5;
  *&v1[OBJC_IVAR___TSMastheadDisplayOptions_styleOptions] = v0;
  if (v5)
  {
    v4 = 0;
  }

  *&v1[OBJC_IVAR___TSMastheadDisplayOptions_displayMode] = v5;
  v7 = &v1[OBJC_IVAR___TSMastheadDisplayOptions_statusBarVisiblityOffset];
  *v7 = v4;
  v7[8] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t sub_1D8127E90()
{
  result = qword_1ECA116E0;
  if (!qword_1ECA116E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA116E0);
  }

  return result;
}

double BlueprintManualImpressionManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*BlueprintManualImpressionManager.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F5FE58;
}

double BlueprintManualImpressionManager.viewProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*BlueprintManualImpressionManager.viewProvider.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D801455C;
}

uint64_t BlueprintManualImpressionManager.__allocating_init(impressionManager:manualImpressionUpdateProvider:app:)(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  BlueprintManualImpressionManager.init(impressionManager:manualImpressionUpdateProvider:app:)(a1, a2, a3);
  return v6;
}

void *BlueprintManualImpressionManager.init(impressionManager:manualImpressionUpdateProvider:app:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[5] = 0;
  swift_unknownObjectWeakInit();
  sub_1D7E0E768(a1, (v4 + 11));
  v4[16] = a2;
  sub_1D7E0E768(a3, (v4 + 6));
  v8 = v4[9];
  v9 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v8);
  v10 = *(v9 + 32);
  v11 = a2;
  v12 = v10(v8, v9);
  v13 = OUTLINED_FUNCTION_1_161();
  swift_weakInit();
  v23[4] = sub_1D81285F4;
  v23[5] = v13;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1D7E64940;
  v23[3] = &block_descriptor_78;
  v14 = _Block_copy(v23);

  v15 = [v12 onWindowWillBecomeForegroundWithBlock_];
  _Block_release(v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v16 = v4[9];
  v17 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v16);
  [(*(v17 + 32))(v16 v17)];
  swift_unknownObjectRelease();
  v18 = v4[16];
  v19 = OUTLINED_FUNCTION_1_161();
  swift_weakInit();
  v20 = v18;

  sub_1D7F09548(sub_1D8128D1C, v19);

  v21 = OUTLINED_FUNCTION_1_161();
  swift_weakInit();

  sub_1D7F09620(sub_1D8128D94, v21);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return v4;
}

void sub_1D81284BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 128) + OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_visibleViewAccessor;
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 8);

      v7 = v4(v6);
      sub_1D7E0E10C(v4, v5);
      if (v7)
      {
        v8 = *(v2 + 128) + OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_visibleRectAccessor;
        v9 = *v8;
        if (*v8)
        {
          v10 = *(v8 + 8);

          v12 = v9(v11);
          v14 = v13;
          v16 = v15;
          v18 = v17;
          sub_1D7E0E10C(v9, v10);
          v19 = 0;
          sub_1D81285FC(v7, &v19 + 1, &v19, v12, v14, v16, v18);

          return;
        }
      }
    }
  }
}

void sub_1D81285FC(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = v7;
  v16 = 0;
  v17 = type metadata accessor for BlueprintManualImpressionView(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v90 = &v77 - v24;
  v25 = sub_1D818E994();
  v94 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v89 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a2;
  v91 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v86 = v27;
    v30 = v8[5];
    ObjectType = swift_getObjectType();
    v32 = *(v30 + 16);
    v87 = v29;
    v84 = ObjectType;
    v85 = v30;
    v33 = v32(ObjectType, v30);
    sub_1D7E0E768((v8 + 11), v97);
    v82 = v99;
    v83 = v98;
    v34 = __swift_project_boxed_opaque_existential_1(v97, v98);
    v35 = *(v33 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    v95 = v33;
    v88 = v18;
    if (v35)
    {
      v77 = v34;
      v78 = 0;
      v79 = v20;
      v80 = a1;
      v81 = v8;
      v96 = MEMORY[0x1E69E7CC0];
      sub_1D7EB0144();
      v36 = v96;
      v37 = v33 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v92 = *(v18 + 72);
      v38 = (v94 + 32);
      v39 = v90;
      v40 = v89;
      do
      {
        sub_1D812986C(v37, v39);
        v41 = v93;
        sub_1D812992C(v39, v93);
        sub_1D806FE7C(0);

        v42 = *v38;
        (*v38)(v40, v41, v25);
        v96 = v36;
        v43 = *(v36 + 16);
        if (v43 >= *(v36 + 24) >> 1)
        {
          sub_1D7EB0144();
          v39 = v90;
          v36 = v96;
        }

        *(v36 + 16) = v43 + 1;
        v42((v36 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v43), v40, v25);
        v37 += v92;
        --v35;
      }

      while (v35);
      v8 = v81;
      a1 = v80;
      v20 = v79;
      v16 = v78;
    }

    LOBYTE(v96) = -126;
    (*(v82 + 56))(v36, &v96, v83);

    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    v44 = (*(v85 + 8))(v84);
    [v44 frame];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = [v44 superview];
    [a1 convertRect:v53 fromView:{v46, v48, v50, v52}];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;

    v100.origin.x = a4;
    v100.origin.y = a5;
    v100.size.width = a6;
    v100.size.height = a7;
    v104.origin.x = v55;
    v104.origin.y = v57;
    v104.size.width = v59;
    v104.size.height = v61;
    v101 = CGRectIntersection(v100, v104);
    x = v101.origin.x;
    y = v101.origin.y;
    width = v101.size.width;
    height = v101.size.height;

    v102.origin.x = x;
    v102.origin.y = y;
    v102.size.width = width;
    v102.size.height = height;
    IsEmpty = CGRectIsEmpty(v102);
    v67 = v86;
    v68 = v91;
    if (!IsEmpty)
    {
      v69 = v8[14];
      v70 = v8[15];
      __swift_project_boxed_opaque_existential_1(v8 + 11, v69);
      LOBYTE(v97[0]) = v67 | 0x80;
      (*(v70 + 8))(v97, v69, v70);
    }

    v71 = 0;
    v72 = v95;
    v73 = *(v95 + 16);
    v74 = v88;
    while (v73 != v71)
    {
      if (v71 >= *(v72 + 16))
      {
        __break(1u);
LABEL_20:

        sub_1D81298D0(v20);
        __break(1u);
        return;
      }

      sub_1D812986C(v72 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v71, v20);
      sub_1D8129248(v20, a1, v8, v68, a4, a5, a6, a7);
      if (v16)
      {
        goto LABEL_20;
      }

      ++v71;
      sub_1D81298D0(v20);
      v72 = v95;
    }

    v103.origin.x = x;
    v103.origin.y = y;
    v103.size.width = width;
    v103.size.height = height;
    if (CGRectIsEmpty(v103))
    {
      v75 = v8[14];
      v76 = v8[15];
      __swift_project_boxed_opaque_existential_1(v8 + 11, v75);
      LOBYTE(v97[0]) = v67 | 0x80;
      (*(v76 + 16))(v97, v75, v76);
    }

    swift_unknownObjectRelease();
  }
}

void sub_1D8128C74(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v12 = 2;
    v11 = 3;
    sub_1D81285FC(a1, &v12, &v11, a3, a4, a5, a6);
  }
}

double sub_1D8128D24(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = 4;
    v2 = 3;
    sub_1D8128D9C(&v3, &v2);
  }

  return result;
}

void sub_1D8128D9C(char *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44[-v11];
  v51 = type metadata accessor for BlueprintManualImpressionView(0);
  v57 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v44[-v15];
  v16 = *a1;
  v17 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v45 = v17;
    v20 = v3[5];
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 16);
    v46 = v19;
    v23 = v22(ObjectType, v20);
    v58 = *(v23 + 16);
    swift_beginAccess();
    v24 = 0;
    v47 = *&v16 | 0xFFFFFF80;
    v54 = (v7 + 8);
    v55 = (v7 + 32);
    v25 = v52;
    v26 = v53;
    v49 = v9;
    v50 = v6;
    v48 = v3;
    for (i = v23; ; v23 = i)
    {
      if (v58 == v24)
      {

        v42 = v3[14];
        v43 = v3[15];
        __swift_project_boxed_opaque_existential_1(v3 + 11, v42);
        v59 = v45 | 0x80;
        (*(v43 + 16))(&v59, v42, v43);
        swift_unknownObjectRelease();
        return;
      }

      if (v24 >= *(v23 + 16))
      {
        break;
      }

      sub_1D812986C(v23 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v24, v26);
      sub_1D812986C(v26, v25);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1D806FE7C(0);
      v28 = *v55;
      if (EnumCaseMultiPayload == 1)
      {
        v28(v9, v25, v6);
        v29 = sub_1D818F8D4();
        if (v29)
        {
          v30 = v29;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v31 = v3[3];
            v32 = swift_getObjectType();
            v33 = *(v31 + 16);
            v34 = v31;
            v25 = v52;
            v33(v9, v30, v32, v34);
            swift_unknownObjectRelease();
          }

          (*v54)(v9, v6);
        }

        else
        {
          (*v54)(v9, v6);
        }

        v26 = v53;
      }

      else
      {
        v28(v12, v25, v6);
        v35 = sub_1D818F8D4();
        if (v35)
        {
          v36 = v35;
          v37 = v3[14];
          v38 = v3[15];
          __swift_project_boxed_opaque_existential_1(v3 + 11, v37);
          v59 = v47;
          v39 = *(v38 + 40);
          v40 = v36;
          v41 = v37;
          v25 = v52;
          v26 = v53;
          v39(v12, v36, &v59, v41, v38);
          v3 = v48;
          v9 = v49;

          v6 = v50;

          (*v54)(v12, v6);
        }

        else
        {
          (*v54)(v12, v6);
        }
      }

      sub_1D81298D0(v26);
      ++v24;
    }

    __break(1u);
  }
}

void sub_1D8129248(uint64_t a1, void *a2, void *a3, int a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  LODWORD(v78) = a4;
  v15 = sub_1D818E994();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v77 - v20;
  v22 = type metadata accessor for BlueprintManualImpressionView(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D812986C(a1, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D806FE7C(0);
  v27 = *&v24[*(v26 + 48)];
  v28 = *(v16 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v28(v18, v24, v15);
    v29 = sub_1D818F8D4();
    if (v29)
    {
      v30 = v29;
      [v29 frame];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = [v30 superview];
      [a2 convertRect:v39 fromView:{v32, v34, v36, v38}];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v80.origin.x = a5;
      v80.origin.y = a6;
      v80.size.width = a7;
      v80.size.height = a8;
      v84.origin.x = v41;
      v84.origin.y = v43;
      v84.size.width = v45;
      v84.size.height = v47;
      v81 = CGRectIntersection(v80, v84);
      if (CGRectIsEmpty(v81))
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v48 = a3[3];
          ObjectType = swift_getObjectType();
          (*(v48 + 16))(v18, v30, ObjectType, v48);
          swift_unknownObjectRelease();
        }

LABEL_16:

        (*(v16 + 8))(v18, v15);
        return;
      }

      v73 = sub_1D818F8D4();
      if (v73)
      {
        v74 = v73;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v75 = a3[3];
          v76 = swift_getObjectType();
          (*(v75 + 8))(v18, v74, v76, v75);
          swift_unknownObjectRelease();
        }

        goto LABEL_16;
      }

      (*(v16 + 8))(v18, v15);
    }

    else
    {
      (*(v16 + 8))(v18, v15);
    }

LABEL_11:

    return;
  }

  v28(v21, v24, v15);
  v50 = sub_1D818F8D4();
  if (!v50)
  {
    (*(v16 + 8))(v21, v15);
    goto LABEL_11;
  }

  v51 = v50;
  v77[1] = v27;
  [v50 frame];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = [v51 superview];
  [a2 convertRect:v60 fromView:{v53, v55, v57, v59}];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;

  v82.origin.x = a5;
  v82.origin.y = a6;
  v82.size.width = a7;
  v82.size.height = a8;
  v85.origin.x = v62;
  v85.origin.y = v64;
  v85.size.width = v66;
  v85.size.height = v68;
  v83 = CGRectIntersection(v82, v85);
  LOBYTE(v60) = CGRectIsEmpty(v83);
  v70 = a3[14];
  v69 = a3[15];
  __swift_project_boxed_opaque_existential_1(a3 + 11, v70);
  v71 = (v16 + 8);
  v79[0] = v78 | 0x80;
  if (v60)
  {
    v78 = *(v69 + 40);
  }

  else
  {
    v78 = *(v69 + 32);
  }

  v72 = v51;
  v78(v21, v51, v79, v70, v69);

  (*v71)(v21, v15);
}

uint64_t BlueprintManualImpressionManager.deinit()
{
  sub_1D7E166A0(v0 + 16);
  sub_1D7E166A0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));

  return v0;
}

uint64_t BlueprintManualImpressionManager.__deallocating_deinit()
{
  BlueprintManualImpressionManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D812986C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintManualImpressionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D81298D0(uint64_t a1)
{
  v2 = type metadata accessor for BlueprintManualImpressionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D812992C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintManualImpressionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TabBarNavigationBarVisiblity.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D8129A28()
{
  result = qword_1ECA116E8;
  if (!qword_1ECA116E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA116E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TabBarNavigationBarVisiblity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t CommandCenterType.canExecute<A>(command:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_23();
  v7 = *(v6 + 88);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
  LOBYTE(a3) = CommandCenterType.canExecute<A>(command:context:)(a1, v10, a2, a3);
  v14 = OUTLINED_FUNCTION_74();
  v15(v14);
  return a3 & 1;
}

uint64_t CommandCenterType.execute<A>(command:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_23();
  v9 = *(v8 + 88);
  v10 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v9);
  (*(a4 + 8))(a1, v15, a2, v9, a3, a4);
  return (*(v12 + 8))(v15, v10);
}

uint64_t CommandCenterType.execute<A>(command:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_23();
  v7 = *(v6 + 88);
  v8 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
  CommandCenterType.execute<A>(command:context:)(a1, v13, a2, a3);
  return (*(v10 + 8))(v13, v8);
}

void CommandCenterType.state<A, B>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_120();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *v26;
  v29 = *(*v26 + 136);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v29);
  (*(v23 + 80))(v27, v32, v29, *(v28 + 144), *(v28 + 152), v25, v23);
  v36 = OUTLINED_FUNCTION_46();
  v37(v36);
  OUTLINED_FUNCTION_100();
}

void CommandCenterType.state<A, B>(for:closure:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_15_46(v0, v1, v2, v3, v4, v5);
  v7 = *(v6 + 136);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_45_14();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
  OUTLINED_FUNCTION_46_14();
  OUTLINED_FUNCTION_46_14();
  v12 = OUTLINED_FUNCTION_24_28();
  v13(v12);
  v14 = OUTLINED_FUNCTION_42_15();
  v15(v14);
  OUTLINED_FUNCTION_100();
}

void CommandCenterType.addStateObserver<A, B>(for:closure:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_15_46(v0, v1, v2, v3, v4, v5);
  v7 = *(v6 + 136);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_45_14();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
  OUTLINED_FUNCTION_46_14();
  OUTLINED_FUNCTION_46_14();
  v12 = OUTLINED_FUNCTION_24_28();
  v13(v12);
  v14 = OUTLINED_FUNCTION_42_15();
  v15(v14);
  OUTLINED_FUNCTION_100();
}

void CommandCenterType.canExecute<A>(command:closure:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_8_23();
  v11 = *(v10 + 88);
  v12 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  CommandCenterType.canExecute<A>(command:context:closure:)(v9, v17, v7, v5, v3, v1);
  (*(v14 + 8))(v17, v12);
  OUTLINED_FUNCTION_100();
}

uint64_t CommandCenter.deinit()
{

  return v0;
}

uint64_t CommandCenter.__deallocating_deinit()
{
  CommandCenter.deinit();
  OUTLINED_FUNCTION_21_0();

  return swift_deallocClassInstance();
}

uint64_t CommandCenter.execute<A>(command:context:source:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_8_23();
  v9 = *(v8 + 88);
  v172 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v173 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23();
  v167 = v12;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v169 = &v164 - v14;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v164 - v16;
  v181 = v9;
  v171 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23();
  v168 = v19;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v170 = (&v164 - v21);
  OUTLINED_FUNCTION_52_0();
  v22 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  v28 = (v27 - v26);
  sub_1D7E11E0C();
  *v28 = sub_1D8191AB4();
  (*(v24 + 104))(v28, *MEMORY[0x1E69E8020], v22);
  v29 = sub_1D8190CA4();
  (*(v24 + 8))(v28, v22);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  CommandCenter.canExecute<A>(command:context:source:)();
  v28 = a1;
  if ((v30 & 1) == 0)
  {
    v59 = OUTLINED_FUNCTION_35_18();
    type metadata accessor for Command.LoggingBehavior(v59, v181, v60, v61);
    if (!sub_1D7E13510())
    {
      goto LABEL_30;
    }

    if (qword_1EDBBCFC0 == -1)
    {
LABEL_14:
      v62 = qword_1EDBC6138;
      v63 = sub_1D81919C4();
      v64 = OUTLINED_FUNCTION_0_193();
      sub_1D7E13630(v64, v65, v66, v67, v68);
      OUTLINED_FUNCTION_41_14();
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1D819FAC0;
      v71 = v28[2];
      v70 = v28[3];
      v72 = MEMORY[0x1E69E6158];
      *(v69 + 56) = MEMORY[0x1E69E6158];
      v73 = sub_1D7E13BF4();
      *(v69 + 64) = v73;
      *(v69 + 32) = v71;
      *(v69 + 40) = v70;
      v176 = 0;
      v177 = 0xE000000000000000;
      sub_1D8190DB4();
      sub_1D81925F4();
      v74 = v176;
      v75 = v177;
      *(v69 + 96) = v72;
      *(v69 + 104) = v73;
      *(v69 + 72) = v74;
      *(v69 + 80) = v75;
      sub_1D818FD44("Failed to execute command, command=%{public}@, context=%{public}@", 65, 2, &dword_1D7DFF000, v62, v63, v69);
LABEL_29:

      goto LABEL_30;
    }

LABEL_45:
    OUTLINED_FUNCTION_1_162();
    swift_once();
    goto LABEL_14;
  }

  v31 = v4;
  v32 = a3;
  OUTLINED_FUNCTION_39_17();
  v34 = v172;
  (*(v33 + 16))(v17, a2, v172);
  v35 = v181;
  if (__swift_getEnumTagSinglePayload(v17, 1, v181) != 1)
  {
    (*(v171 + 32))(v170, v17, v35);
    v76 = OUTLINED_FUNCTION_35_18();
    type metadata accessor for Command.LoggingBehavior(v76, v35, v77, v78);
    v79 = sub_1D7E13510();
    v166 = v32;
    if (v79)
    {
      if (qword_1EDBBCFC0 != -1)
      {
        OUTLINED_FUNCTION_1_162();
        swift_once();
      }

      v80 = qword_1EDBC6138;
      v81 = OUTLINED_FUNCTION_0_193();
      sub_1D7E13630(v81, v82, v83, v84, v85);
      OUTLINED_FUNCTION_41_14();
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_1D819FAC0;
      v87 = a1[2];
      v88 = a1[3];
      v89 = MEMORY[0x1E69E6158];
      *(v86 + 56) = MEMORY[0x1E69E6158];
      v90 = sub_1D7E13BF4();
      *(v86 + 64) = v90;
      *(v86 + 32) = v87;
      *(v86 + 40) = v88;
      v176 = 0;
      v177 = 0xE000000000000000;
      sub_1D8190DB4();
      sub_1D81925F4();
      v91 = v176;
      v92 = v177;
      *(v86 + 96) = v89;
      *(v86 + 104) = v90;
      *(v86 + 72) = v91;
      *(v86 + 80) = v92;
      v93 = sub_1D81919E4();
      sub_1D818FD44("Executing command with inline context, command=%{public}@, context=%{public}@", 77, 2, &dword_1D7DFF000, v80, v93, v86);

      v31 = v4;
      v32 = v166;
    }

    v94 = sub_1D812CD24(a1);
    if (v94)
    {
      v165 = v31;
      v95 = *(v94 + 16);
      v167 = a1;
      v96 = v181;
      v178 = v181;
      v97 = __swift_allocate_boxed_opaque_existential_0(&v176);
      v98 = v171;
      v99 = *(v171 + 16);
      v100 = v170;
      v99(v97, v170, v96);
      v95(&v176, v32);
      v101 = v173;
      __swift_destroy_boxed_opaque_existential_1Tm(&v176);
      v102 = v169;
      v99(v169, v100, v96);
      OUTLINED_FUNCTION_102();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v96);
      sub_1D80A5010(v167, v102, v166);

      (*(v101 + 8))(v102, v172);
      v106 = v96;
      v28 = v167;
      (*(v98 + 8))(v100, v106);
    }

    else
    {
      (*(v171 + 8))(v170, v181);
    }

    return sub_1D7E15144(v28);
  }

  OUTLINED_FUNCTION_39_17();
  v37 = *(v36 + 8);
  v173 = v36 + 8;
  (v37)(v17, v34);

  sub_1D8131630(v28, 0, &v174);

  if (!v175)
  {
    sub_1D812D184(&v174);
LABEL_24:
    v110 = MEMORY[0x1E69E7CA8];
    if (v35 == MEMORY[0x1E69E7CA8] + 8)
    {
      v129 = sub_1D812CD24(v28);
      if (v129)
      {
        v132 = v129;
        LOBYTE(v176) = *(v28 + 33);
        v133 = v110 + 8;
        type metadata accessor for Command.LoggingBehavior(0, v133, v130, v131);
        if (sub_1D7E13510())
        {
          v170 = v37;
          v166 = v32;
          if (qword_1EDBBCFC0 != -1)
          {
            OUTLINED_FUNCTION_1_162();
            swift_once();
          }

          v134 = OUTLINED_FUNCTION_0_193();
          sub_1D7E13630(v134, v135, v136, v137, v138);
          OUTLINED_FUNCTION_15_17();
          v139 = swift_allocObject();
          *(v139 + 16) = xmmword_1D819FAB0;
          v140 = v28[2];
          v141 = v28[3];
          *(v139 + 56) = MEMORY[0x1E69E6158];
          *(v139 + 64) = sub_1D7E13BF4();
          *(v139 + 32) = v140;
          *(v139 + 40) = v141;
          sub_1D8190DB4();
          sub_1D81919E4();
          OUTLINED_FUNCTION_21_34("Executing command with void context, command=%{public}@");
          sub_1D818FD44(v142);

          v32 = v166;
          v37 = v170;
        }

        v143 = *(v132 + 16);
        v178 = v133;
        v143(&v176, v32);
        __swift_destroy_boxed_opaque_existential_1Tm(&v176);
        v144 = v169;
        OUTLINED_FUNCTION_8_1();
        __swift_storeEnumTagSinglePayload(v145, v146, v147, v133);
        sub_1D80A5010(v28, v144, v32);

        OUTLINED_FUNCTION_39_17();
        v37();
        return sub_1D7E15144(v28);
      }
    }

    v111 = OUTLINED_FUNCTION_35_18();
    type metadata accessor for Command.LoggingBehavior(v111, v35, v112, v113);
    if (sub_1D7E13510())
    {
      if (qword_1EDBBCFC0 != -1)
      {
        OUTLINED_FUNCTION_1_162();
        swift_once();
      }

      v114 = sub_1D81919C4();
      v115 = OUTLINED_FUNCTION_0_193();
      sub_1D7E13630(v115, v116, v117, v118, v119);
      OUTLINED_FUNCTION_15_17();
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1D819FAB0;
      v122 = v28[2];
      v121 = v28[3];
      *(v120 + 56) = MEMORY[0x1E69E6158];
      *(v120 + 64) = sub_1D7E13BF4();
      *(v120 + 32) = v122;
      *(v120 + 40) = v121;
      sub_1D8190DB4();
      OUTLINED_FUNCTION_21_34("Failed to execute command, no context provider registered and no inline context provided, command=%{public}@");
      sub_1D818FD44(v123, v124, v125, v126, v127, v114, v120);
      goto LABEL_29;
    }

LABEL_30:
    sub_1D812D130();
    swift_allocError();
    return swift_willThrow();
  }

  sub_1D7E63AFC(&v174, &v176);
  sub_1D7E1B288(&v176, &v174);
  v38 = v167;
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v35);
    sub_1D7E63FD4(&v176);
    OUTLINED_FUNCTION_39_17();
    v37();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v35);
  (*(v171 + 32))(v168, v38, v35);
  LOBYTE(v174) = *(v28 + 33);
  type metadata accessor for Command.LoggingBehavior(0, v35, v42, v43);
  v44 = sub_1D7E13510();
  v170 = v37;
  if (v44)
  {
    v165 = v4;
    if (qword_1EDBBCFC0 != -1)
    {
      OUTLINED_FUNCTION_1_162();
      swift_once();
    }

    v45 = OUTLINED_FUNCTION_0_193();
    sub_1D7E13630(v45, v46, v47, v48, v49);
    OUTLINED_FUNCTION_41_14();
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1D819FAC0;
    v51 = v28[2];
    v52 = v28[3];
    v53 = v28;
    v54 = MEMORY[0x1E69E6158];
    *(v50 + 56) = MEMORY[0x1E69E6158];
    v55 = sub_1D7E13BF4();
    *(v50 + 64) = v55;
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    *&v174 = 0;
    *(&v174 + 1) = 0xE000000000000000;
    sub_1D8190DB4();
    sub_1D8192334();
    v56 = v174;
    *(v50 + 96) = v54;
    *(v50 + 104) = v55;
    v28 = v53;
    *(v50 + 72) = v56;
    sub_1D81919E4();
    OUTLINED_FUNCTION_21_34("Executing command with global context, command=%{public}@, context=%{public}@");
    sub_1D818FD44(v57);
  }

  if (v32)
  {
    v58 = sub_1D810E38C(&v179);
  }

  else
  {
    v58 = 0;
  }

  v148 = sub_1D812CD24(v28);
  if (v148)
  {
    v149 = *(v148 + 16);
    v167 = v28;
    v150 = v181;
    v175 = v181;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v174);
    v152 = *(v171 + 16);
    v153 = v168;
    v152(boxed_opaque_existential_0, v168, v150);
    v149(&v174, v58);
    __swift_destroy_boxed_opaque_existential_1Tm(&v174);
    v154 = v169;
    v152(v169, v153, v150);
    OUTLINED_FUNCTION_102();
    v155 = v150;
    v28 = v167;
    __swift_storeEnumTagSinglePayload(v156, v157, v158, v155);
    sub_1D80A5010(v28, v154, v58);

    OUTLINED_FUNCTION_39_17();
    v170();
  }

  v159 = v180;
  if (v180)
  {
    v160 = v181;
    v175 = v181;
    v161 = __swift_allocate_boxed_opaque_existential_0(&v174);
    v162 = v171;
    v163 = v168;
    (*(v171 + 16))(v161, v168, v160);
    v159(&v174);

    (*(v162 + 8))(v163, v160);
    sub_1D7E63FD4(&v176);
    __swift_destroy_boxed_opaque_existential_1Tm(&v174);
  }

  else
  {
    (*(v171 + 8))(v168, v181);

    sub_1D7E63FD4(&v176);
  }

  return sub_1D7E15144(v28);
}

double CommandCenter.remove(_:)(uint64_t a1)
{
  v3 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_14();
  sub_1D7E11E0C();
  *v1 = sub_1D8191AB4();
  (*(v5 + 104))(v1, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1D8190CA4();
  (*(v5 + 8))(v1, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1EDBBCFC0 != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_1_162();
    swift_once();
  }

  v8 = OUTLINED_FUNCTION_0_193();
  sub_1D7E13630(v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_15_17();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D819FAB0;
  sub_1D8192334();
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D7E13BF4();
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  sub_1D81919E4();
  OUTLINED_FUNCTION_21_34("Removing context provider, contextProvider=%{public}@");
  sub_1D818FD44(v14);

  sub_1D8131754(a1);

  return result;
}

double CommandCenter.remove<A>(_:for:)()
{
  OUTLINED_FUNCTION_40_13();
  v3 = v2;
  v4 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = (v9 - v8);
  sub_1D7E11E0C();
  *v10 = sub_1D8191AB4();
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v4);
  v11 = sub_1D8190CA4();
  v12 = OUTLINED_FUNCTION_74();
  v13(v12);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for Command.LoggingBehavior(0, *(v3 + 88), v14, v15);
  if (sub_1D7E13510())
  {
    if (qword_1EDBBCFC0 == -1)
    {
LABEL_4:
      v16 = OUTLINED_FUNCTION_0_193();
      sub_1D7E13630(v16, v17, v18, v19, v20);
      OUTLINED_FUNCTION_41_14();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D819FAC0;
      sub_1D8192334();
      v22 = MEMORY[0x1E69E6158];
      *(v21 + 56) = MEMORY[0x1E69E6158];
      v23 = sub_1D7E13BF4();
      *(v21 + 32) = 0;
      *(v21 + 40) = 0xE000000000000000;
      v25 = *(v0 + 16);
      v24 = *(v0 + 24);
      *(v21 + 96) = v22;
      *(v21 + 104) = v23;
      *(v21 + 64) = v23;
      *(v21 + 72) = v25;
      *(v21 + 80) = v24;
      sub_1D8190DB4();
      sub_1D81919E4();
      OUTLINED_FUNCTION_21_34("Removing context provider for command, contextProvider=%{public}@, command=%{public}");
      sub_1D818FD44(v26);

      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_1_162();
    swift_once();
    goto LABEL_4;
  }

LABEL_5:

  sub_1D8131858(v1);

  return result;
}

uint64_t CommandCenter.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_8_23();
  v5 = v4;
  if (*(v6 + 32) == 1)
  {

    v7 = sub_1D812E104;
    v8 = a1;
  }

  else
  {

    v8 = a1;
    v7 = 0;
  }

  sub_1D8131630(v8, v7, &v12);

  if (v13)
  {
    sub_1D7E1B288(&v12, v14);
    sub_1D7E63FD4(&v12);
  }

  else
  {
    sub_1D812D184(&v12);
    memset(v14, 0, sizeof(v14));
  }

  sub_1D7E09D14(0, &qword_1EDBBC780, MEMORY[0x1E69E7CA0] + 8);
  v9 = *(v5 + 88);
  v10 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v10 ^ 1u, 1, v9);
}

void CommandCenter.state<A, B>(for:context:)()
{
  OUTLINED_FUNCTION_120();
  v47 = v0;
  v2 = v1;
  v51 = v3;
  v50 = *v1;
  v4 = *(v50 + 136);
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v48 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  OUTLINED_FUNCTION_2();
  v49 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v46 - v15;
  OUTLINED_FUNCTION_52_0();
  v16 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v22 = (v21 - v20);
  sub_1D7E11E0C();
  *v22 = sub_1D8191AB4();
  (*(v18 + 104))(v22, *MEMORY[0x1E69E8020], v16);
  v23 = sub_1D8190CA4();
  (*(v18 + 8))(v22, v16);
  if (v23)
  {
    v24 = sub_1D812CD24(v2);
    if (v24)
    {
      v25 = v24;
      v26 = v48;
      (*(v48 + 16))(v9, v47, v5);
      OUTLINED_FUNCTION_21(v9);
      if (v27)
      {
        CommandCenter.context<A>(for:)(v2, v12);
        OUTLINED_FUNCTION_21(v9);
        if (!v27)
        {
          (*(v26 + 8))(v9, v5);
        }
      }

      else
      {
        (*(v49 + 32))(v12, v9, v4);
        OUTLINED_FUNCTION_102();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v4);
      }

      OUTLINED_FUNCTION_21(v12);
      if (v27)
      {
        (*(v26 + 8))(v12, v5);
        if (v4 != MEMORY[0x1E69E7CA8] + 8)
        {
          OUTLINED_FUNCTION_8_1();
          __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);

LABEL_15:
          OUTLINED_FUNCTION_100();
          return;
        }

        v43 = *(v25 + 48);
        v53 = MEMORY[0x1E69E7CA8] + 8;
        v43(v54, v52);
      }

      else
      {
        v39 = v49;
        v40 = v46;
        (*(v49 + 32))(v46, v12, v4);
        v41 = *(v25 + 48);
        v53 = v4;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v52);
        (*(v39 + 16))(boxed_opaque_existential_0, v40, v4);
        v41(v54, v52);
        (*(v39 + 8))(v40, v4);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      sub_1D7E09D14(0, &qword_1EDBBC780, MEMORY[0x1E69E7CA0] + 8);
      v44 = v51;
      v45 = *(v50 + 144);
      v29 = swift_dynamicCast() ^ 1;
      v28 = v44;
      v30 = 1;
      v31 = v45;
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
    }

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    goto LABEL_15;
  }

  __break(1u);
}

void CommandCenter.state<A, B>(for:context:closure:)()
{
  OUTLINED_FUNCTION_120();
  v18[1] = v2;
  v18[2] = v1;
  v19 = v3;
  v18[0] = v4;
  OUTLINED_FUNCTION_8_23();
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_20_42();
  *v0 = sub_1D8191AB4();
  v12 = OUTLINED_FUNCTION_5_81();
  v13(v12);
  v14 = sub_1D8190CA4();
  v15 = OUTLINED_FUNCTION_46();
  v16(v15);
  if (v14)
  {
    OUTLINED_FUNCTION_74();
    v17 = v19;
    CommandCenter.addStateObserver<A, B>(for:context:closure:)();
    OUTLINED_FUNCTION_74();
    CommandCenter.state<A, B>(for:context:)();
    v17(v10);
    (*(v7 + 8))(v10, v5);
    OUTLINED_FUNCTION_100();
  }

  else
  {
    __break(1u);
  }
}

void CommandCenter.addStateObserver<A, B>(for:context:closure:)()
{
  OUTLINED_FUNCTION_120();
  v46 = v1;
  v47 = v0;
  v48 = v2;
  v42 = v3;
  v5 = v4;
  v45 = v6;
  v7 = *v4;
  v44 = *(*v4 + 136);
  v8 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v39 - v14;
  OUTLINED_FUNCTION_52_0();
  v15 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v21 = (v20 - v19);
  sub_1D7E11E0C();
  *v21 = sub_1D8191AB4();
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v15);
  v22 = sub_1D8190CA4();
  (*(v17 + 8))(v21, v15);
  if (v22)
  {
    v23 = v8;
    v39 = *(v7 + 144);
    v40 = v7;
    sub_1D8191E84();
    v41 = swift_allocBox();
    v24 = v42;
    CommandCenter.state<A, B>(for:context:)();
    OUTLINED_FUNCTION_0_8();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v43;
    (*(v10 + 16))(v43, v24, v23);
    v27 = (*(v10 + 80) + 64) & ~*(v10 + 80);
    v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v39;
    *(v29 + 2) = v44;
    *(v29 + 3) = v30;
    *(v29 + 4) = v46;
    *(v29 + 5) = *(v40 + 152);
    *(v29 + 6) = v25;
    *(v29 + 7) = v5;
    (*(v10 + 32))(&v29[v27], v26, v23);
    *&v29[v28] = v41;
    v31 = &v29[(v28 + 15) & 0xFFFFFFFFFFFFFFF8];
    v32 = v48;
    *v31 = v47;
    *(v31 + 1) = v32;
    v33 = type metadata accessor for CommandStateObserver();
    OUTLINED_FUNCTION_1_63();
    swift_allocObject();

    v35 = sub_1D804B770(v34, sub_1D812FC78, v29);
    sub_1D804B890(v35, v5);
    v36 = v45;
    v45[3] = v33;
    OUTLINED_FUNCTION_11_53();
    v36[4] = sub_1D7E18B74(v37, v38, &protocol conformance descriptor for CommandStateObserver);

    *v36 = v35;
    OUTLINED_FUNCTION_100();
  }

  else
  {
    __break(1u);
  }
}

void CommandCenter.canExecute<A>(command:context:source:)()
{
  OUTLINED_FUNCTION_120();
  v65 = v0;
  v68 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_8_23();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_2();
  v67 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  v64 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v61 - v10;
  OUTLINED_FUNCTION_52_0();
  v69 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23();
  v66 = v14;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v61 - v16;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  OUTLINED_FUNCTION_52_0();
  v23 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  v29 = (v28 - v27);
  sub_1D7E11E0C();
  *v29 = sub_1D8191AB4();
  (*(v25 + 104))(v29, *MEMORY[0x1E69E8020], v23);
  v30 = sub_1D8190CA4();
  (*(v25 + 8))(v29, v23);
  if (v30)
  {

    sub_1D8131630(v3, 0, &v70);

    if (v71)
    {
      v31 = v72;
      v32 = v73;
      sub_1D7E19F24(v72, v73);
      sub_1D7E63FD4(&v70);
      if (v31)
      {
        sub_1D7E0E10C(v31, v32);
        v33 = 1;
        goto LABEL_7;
      }
    }

    else
    {
      sub_1D812D184(&v70);
    }

    v33 = 0;
LABEL_7:
    v34 = *(v12 + 16);
    v34(v19, v68, v69);
    OUTLINED_FUNCTION_30_25(v19);
    if (v35)
    {
      CommandCenter.context<A>(for:)(v3, v22);
      OUTLINED_FUNCTION_30_25(v19);
      if (!v35)
      {
        (*(v12 + 8))(v19, v69);
      }
    }

    else
    {
      (*(v67 + 32))(v22, v19, v5);
      OUTLINED_FUNCTION_102();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v5);
    }

    v39 = sub_1D812CD24(v3);
    v40 = v39;
    v41 = MEMORY[0x1E69E7CA8];
    if (v5 == MEMORY[0x1E69E7CA8] + 8)
    {
      v42 = v22;
      if (v33)
      {
        if (v39)
        {
          v45 = v63;
          v46 = v22;
          v47 = v69;
          v34(v63, v46, v69);
          OUTLINED_FUNCTION_21(v45);
          if (!v35)
          {
            OUTLINED_FUNCTION_48_12();
            v54 = v62;
            v55(v62, v45, v41 + 8);
            v56 = *(v40 + 32);
            v71 = v41 + 8;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v70);
            (*(v47 + 16))(boxed_opaque_existential_0, v54, v41 + 8);
            v56(&v70, v65);
            (*(v47 + 8))(v54, v41 + 8);
            goto LABEL_26;
          }

          v48 = *(v12 + 8);
          v48(v45, v47);
        }

        else
        {
          v48 = *(v12 + 8);
          v47 = v69;
        }

        v48(v42, v47);
LABEL_28:
        OUTLINED_FUNCTION_100();
        return;
      }

      v43 = v69;
      if (v39)
      {
        v53 = *(v39 + 32);
        v71 = MEMORY[0x1E69E7CA8] + 8;
        v53(&v70, v65);

        (*(v12 + 8))(v42, v43);
LABEL_27:
        __swift_destroy_boxed_opaque_existential_1Tm(&v70);
        goto LABEL_28;
      }
    }

    else
    {
      v42 = v22;
      v43 = v69;
      if (v39)
      {
        v44 = v66;
        v34(v66, v42, v69);
        OUTLINED_FUNCTION_30_25(v44);
        if (!v35)
        {
          OUTLINED_FUNCTION_48_12();
          v49 = v64;
          v50(v64, v44, v5);
          v51 = *(v40 + 32);
          v71 = v5;
          v52 = __swift_allocate_boxed_opaque_existential_0(&v70);
          (*(v43 + 16))(v52, v49, v5);
          v51(&v70, v65);
          (*(v43 + 8))(v49, v5);
LABEL_26:

          v58 = OUTLINED_FUNCTION_46();
          v60(v58, v59);
          goto LABEL_27;
        }

        (*(v12 + 8))(v44, v43);
      }
    }

    OUTLINED_FUNCTION_30_25(v42);
    (*(v12 + 8))(v42, v43);
    goto LABEL_28;
  }

  __break(1u);
}

void CommandCenter.canExecute<A>(command:context:source:closure:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v55 = v3;
  v52 = v5;
  v53 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_8_23();
  v54 = *(v10 + 88);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v50 = v12;
  v51 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v45 - v15;
  OUTLINED_FUNCTION_52_0();
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_20_42();
  *v1 = sub_1D8191AB4();
  v18 = OUTLINED_FUNCTION_5_81();
  v19(v18);
  v20 = sub_1D8190CA4();
  v21 = OUTLINED_FUNCTION_46();
  v22(v21);
  if (v20)
  {
    v23 = swift_allocObject();
    v48 = v23;
    CommandCenter.canExecute<A>(command:context:source:)();
    *(v23 + 16) = v24 & 1;
    v49 = (v23 + 16);
    OUTLINED_FUNCTION_0_8();
    v46 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_0_8();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v50;
    v27 = v16;
    v28 = v7;
    v29 = v51;
    (*(v50 + 16))(v16, v28, v51);
    v30 = (*(v26 + 80) + 40) & ~*(v26 + 80);
    v31 = (v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v47 = v2;
    v33 = swift_allocObject();
    v34 = v46;
    *(v33 + 2) = v54;
    *(v33 + 3) = v34;
    *(v33 + 4) = v9;
    (*(v26 + 32))(&v33[v30], v27, v29);
    *&v33[v31] = v25;
    *&v33[v32] = v48;
    v35 = &v33[(v32 + 15) & 0xFFFFFFFFFFFFFFF8];
    v36 = v53;
    v37 = v55;
    *v35 = v53;
    *(v35 + 1) = v37;
    v38 = type metadata accessor for CommandStateObserver();
    OUTLINED_FUNCTION_1_63();
    swift_allocObject();

    v40 = sub_1D804B770(v39, sub_1D812FD60, v33);
    v41 = v49;
    swift_beginAccess();
    v36(*v41);
    sub_1D804B890(v40, v9);
    v42 = v52;
    v52[3] = v38;
    OUTLINED_FUNCTION_11_53();
    v42[4] = sub_1D7E18B74(v43, v44, &protocol conformance descriptor for CommandStateObserver);

    *v42 = v40;
    OUTLINED_FUNCTION_100();
  }

  else
  {
    __break(1u);
  }
}

uint64_t CommandCenter.description.getter()
{
  sub_1D81921A4();
  OUTLINED_FUNCTION_43_13();
  MEMORY[0x1DA713260]();
  swift_beginAccess();
  sub_1D81925B4();
  OUTLINED_FUNCTION_52_6();

  OUTLINED_FUNCTION_43_13();
  MEMORY[0x1DA713260](v0);
  CommandStateObserverStore.description.getter();
  OUTLINED_FUNCTION_52_6();

  OUTLINED_FUNCTION_43_13();
  MEMORY[0x1DA713260](v1);
  CommandExecutionObserverStore.description.getter();
  OUTLINED_FUNCTION_52_6();

  OUTLINED_FUNCTION_43_13();
  MEMORY[0x1DA713260](0xD000000000000013);

  sub_1D8132034();
  OUTLINED_FUNCTION_52_6();

  MEMORY[0x1DA713260](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_1D812CD24(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (!*(v4 + 16) || (v5 = sub_1D7E11428(v2, v3), (v6 & 1) == 0))
  {
    swift_endAccess();
    return 0;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  swift_endAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();

    sub_1D7F03CAC(v2, v3, v9, v10, v11, v12, v13, v14, v15, v16);
    swift_endAccess();

    return 0;
  }

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1D812CE20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000032, 0x80000001D81D7C20);
  MEMORY[0x1DA713260](a1[2], a1[3]);
  MEMORY[0x1DA713260](0xD000000000000012, 0x80000001D81D7C60);
  sub_1D8192334();
  MEMORY[0x1DA713260](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D81925F4();
  return 0;
}

uint64_t sub_1D812CF40(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1D8191E84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-v9];
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7E1B288(a1, v16);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, a4);
    (*(v11 + 32))(v14, v10, a4);
    a2(v14);
    return (*(v11 + 8))(v14, a4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, a4);
    return (*(v8 + 8))(v10, v7);
  }
}

unint64_t sub_1D812D130()
{
  result = qword_1EDBBB8B0[0];
  if (!qword_1EDBBB8B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBBB8B0);
  }

  return result;
}

uint64_t sub_1D812D184(uint64_t a1)
{
  sub_1D7E09D14(0, qword_1EDBB98A0, &type metadata for CommandContextStore.ContextContainer);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1D812D208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6)
{
  v35 = a6;
  v36 = a5;
  v37 = a2;
  v8 = *(*a4 + 88);
  v9 = sub_1D8191E84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D7E1B288(a1, &v38);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
      (*(v16 + 32))(v19, v15, v8);
      LOBYTE(v38) = *(a4 + 33);
      type metadata accessor for Command.LoggingBehavior(0, v8, v21, v22);
      if (sub_1D7E13510())
      {
        v33 = v10;
        v34 = v9;
        if (qword_1EDBBCFC0 != -1)
        {
          swift_once();
        }

        v32 = qword_1EDBC6138;
        sub_1D7E13630(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1D819FAC0;
        v25 = *(a4 + 16);
        v24 = *(a4 + 24);
        *(v23 + 56) = MEMORY[0x1E69E6158];
        v26 = sub_1D7E13BF4();
        *(v23 + 64) = v26;
        *(v23 + 32) = v25;
        *(v23 + 40) = v24;
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_1D8190DB4();
        sub_1D81925F4();
        v27 = v38;
        v28 = v39;
        *(v23 + 96) = MEMORY[0x1E69E6158];
        *(v23 + 104) = v26;
        *(v23 + 72) = v27;
        *(v23 + 80) = v28;
        v29 = sub_1D81919E4();
        sub_1D818FD44("Handling command with context through closure, command=%{public}@, context=%{public}@", 85, 2, &dword_1D7DFF000, v32, v29, v23);

        v10 = v33;
        v9 = v34;
      }

      v30 = v37;
      v36(v19, v37);
      if (v30)
      {
        (*(v16 + 16))(v12, v19, v8);
        __swift_storeEnumTagSinglePayload(v12, 0, 1, v8);

        sub_1D810E4EC();

        (*(v10 + 8))(v12, v9);
        (*(v16 + 8))(v19, v8);
      }

      else
      {
        (*(v16 + 8))(v19, v8);
      }
    }

    else
    {

      __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
      (*(v10 + 8))(v15, v9);
    }
  }

  return result;
}

uint64_t sub_1D812D650(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, __n128), uint64_t a4, uint64_t a5)
{
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-v12];
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7E1B288(a1, v20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a5);
    (*(v14 + 32))(v17, v13, a5);
    if (a3)
    {

      v18 = (a3)(v17, a2);
      sub_1D7E0E10C(a3, a4);
      (*(v14 + 8))(v17, a5);
    }

    else
    {
      (*(v14 + 8))(v17, a5);
      v18 = 1;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a5);
    (*(v11 + 8))(v13, v10);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D812D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, void (*a7)(void, void), uint64_t a8)
{
  v58 = a5;
  v59 = a8;
  v57 = a6;
  v60 = a2;
  v11 = *(*a4 + 144);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v50 - v13;
  v16 = *(v15 + 136);
  v17 = sub_1D8191E84();
  v61 = *(v17 - 8);
  v62 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v63 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7E1B288(a1, &v64);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v16);
      (*(v63 + 32))(v24, v21, v16);
      LOBYTE(v64) = *(a4 + 33);
      type metadata accessor for Command.LoggingBehavior(0, v16, v26, v27);
      v28 = sub_1D7E13510();
      v54 = v12;
      v55 = v11;
      v52 = a7;
      v53 = v14;
      if (v28)
      {
        if (qword_1EDBBCFC0 != -1)
        {
          swift_once();
        }

        v51 = qword_1EDBC6138;
        sub_1D7E13630(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D819FAC0;
        v31 = *(a4 + 16);
        v30 = *(a4 + 24);
        v32 = MEMORY[0x1E69E6158];
        *(v29 + 56) = MEMORY[0x1E69E6158];
        v33 = sub_1D7E13BF4();
        *(v29 + 64) = v33;
        *(v29 + 32) = v31;
        *(v29 + 40) = v30;
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_1D8190DB4();
        sub_1D81925F4();
        v34 = v64;
        v35 = v65;
        *(v29 + 96) = v32;
        *(v29 + 104) = v33;
        *(v29 + 72) = v34;
        *(v29 + 80) = v35;
        v36 = sub_1D81919E4();
        sub_1D818FD44("Checking state for command with context through closure, command=%{public}@, context=%{public}@", 95, 2, &dword_1D7DFF000, v51, v36, v29);

        v12 = v54;
        v11 = v55;
        a7 = v52;
        v14 = v53;
      }

      v58(v24);
      LOBYTE(v64) = *(a4 + 33);
      if (sub_1D7E13510())
      {
        if (qword_1EDBBCFC0 != -1)
        {
          swift_once();
        }

        v58 = qword_1EDBC6138;
        sub_1D7E13630(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1D81A1B70;
        v39 = *(a4 + 16);
        v38 = *(a4 + 24);
        v40 = MEMORY[0x1E69E6158];
        *(v37 + 56) = MEMORY[0x1E69E6158];
        v41 = sub_1D7E13BF4();
        *(v37 + 64) = v41;
        *(v37 + 32) = v39;
        *(v37 + 40) = v38;
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_1D8190DB4();
        sub_1D81925F4();
        v42 = v64;
        v43 = v65;
        *(v37 + 96) = v40;
        *(v37 + 104) = v41;
        *(v37 + 72) = v42;
        *(v37 + 80) = v43;
        v64 = 0;
        v65 = 0xE000000000000000;
        v14 = v53;
        sub_1D81925F4();
        v44 = v64;
        v45 = v65;
        *(v37 + 136) = v40;
        *(v37 + 144) = v41;
        *(v37 + 112) = v44;
        *(v37 + 120) = v45;
        v46 = sub_1D81919E4();
        sub_1D818FD44("Handling command with context and state through closure, command=%{public}@, context=%{public}@, state=%{public}@", 113, 2, &dword_1D7DFF000, v58, v46, v37);

        v12 = v54;
        a7 = v52;
      }

      v47 = v60;
      a7(v24, v60);
      if (v47)
      {
        v48 = v63;
        v49 = v56;
        (*(v63 + 16))(v56, v24, v16);
        __swift_storeEnumTagSinglePayload(v49, 0, 1, v16);

        sub_1D810E638();

        (*(v61 + 8))(v49, v62);
        (*(v12 + 8))(v14, v55);
        return (*(v48 + 8))(v24, v16);
      }

      else
      {

        (*(v12 + 8))(v14, v11);
        return (*(v63 + 8))(v24, v16);
      }
    }

    else
    {

      __swift_storeEnumTagSinglePayload(v21, 1, 1, v16);
      return (*(v61 + 8))(v21, v62);
    }
  }

  return result;
}

double sub_1D812DEEC@<D0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19 = a2;
  v9 = sub_1D8191E84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E1B288(a1, v20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a3);
    (*(v13 + 32))(v16, v12, a3);
    *(a5 + 24) = a4;
    __swift_allocate_boxed_opaque_existential_0(a5);
    v19(v16);
    (*(v13 + 8))(v16, a3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, a3);
    (*(v10 + 8))(v12, v9);
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

id sub_1D812E104()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = [v0 isFirstResponder];
  }

  else
  {
    v1 = 0;
  }

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D812E178(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7)
{
  v41 = a7;
  v46 = a6;
  v47 = a5;
  v48 = a3;
  v7 = *(*a2 + 144);
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v38 - v8;
  v9 = sub_1D8191E84();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v38 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    CommandCenter.state<A, B>(for:context:)();
    swift_beginAccess();
    v38 = TupleTypeMetadata2;
    v25 = *(TupleTypeMetadata2 + 48);
    v42 = v13;
    v26 = *(v13 + 16);
    v26(v12, v22, v9);
    v48 = v21;
    v26(&v12[v25], v21, v9);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v7);
    v39 = v26;
    if (EnumTagSinglePayload == 1)
    {
      v28 = __swift_getEnumTagSinglePayload(&v12[v25], 1, v7);
      v29 = v48;
      v30 = v42;
      if (v28 == 1)
      {

        v31 = *(v30 + 8);
        v31(v12, v9);
        return (v31)(v29, v9);
      }

      goto LABEL_7;
    }

    v26(v18, v12, v9);
    if (__swift_getEnumTagSinglePayload(&v12[v25], 1, v7) == 1)
    {
      (*(v44 + 8))(v18, v7);
      v29 = v48;
      v30 = v42;
LABEL_7:
      (*(v43 + 8))(v12, v38);
LABEL_8:
      swift_beginAccess();
      (*(v30 + 24))(v22, v29, v9);
      swift_beginAccess();
      v32 = v45;
      v39(v45, v22, v9);
      v47(v32);

      v33 = *(v30 + 8);
      v33(v32, v9);
      return (v33)(v29, v9);
    }

    v43 = v24;
    v34 = v44;
    v35 = v40;
    (*(v44 + 32))(v40, &v12[v25], v7);
    LODWORD(v41) = sub_1D8190ED4();
    v36 = *(v34 + 8);
    v36(v35, v7);
    v36(v18, v7);
    v30 = v42;
    v37 = *(v42 + 8);
    v37(v12, v9);
    v29 = v48;
    if ((v41 & 1) == 0)
    {
      goto LABEL_8;
    }

    return (v37)(v29, v9);
  }

  return result;
}

uint64_t sub_1D812E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *, uint64_t))
{
  v8 = sub_1D8191E84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CommandCenter.state<A, B>(for:context:)();
    a5(a1, v11, a2);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

double sub_1D812E7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    swift_weakLoadStrong();
    CommandCenter.canExecute<A>(command:context:source:)();
    v10 = v9 & 1;

    swift_beginAccess();
    if (v10 != *(a5 + 16))
    {
      swift_beginAccess();
      *(a5 + 16) = v10;
      a6(v10);
    }
  }

  return result;
}

double sub_1D812E8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v44 = a2;
  v45 = a5;
  v46 = a6;
  v9 = *(*a4 + 88);
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D7E1B288(a1, &v47);
    if (swift_dynamicCast())
    {
      v41 = v11;
      v42 = v10;
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v9);
      (*(v17 + 32))(v20, v16, v9);
      LOBYTE(v47) = *(a4 + 33);
      type metadata accessor for Command.LoggingBehavior(0, v9, v22, v23);
      if (sub_1D7E13510())
      {
        if (qword_1EDBBCFC0 != -1)
        {
          swift_once();
        }

        v40 = qword_1EDBC6138;
        sub_1D7E13630(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1D81A1B70;
        v26 = *(a4 + 16);
        v25 = *(a4 + 24);
        *(v24 + 56) = MEMORY[0x1E69E6158];
        v27 = sub_1D7E13BF4();
        *(v24 + 64) = v27;
        *(v24 + 32) = v26;
        *(v24 + 40) = v25;
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_1D8190DB4();
        sub_1D81925F4();
        v28 = v47;
        v29 = v48;
        v30 = MEMORY[0x1E69E6158];
        *(v24 + 96) = MEMORY[0x1E69E6158];
        *(v24 + 104) = v27;
        *(v24 + 72) = v28;
        *(v24 + 80) = v29;
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_1D81925F4();
        v31 = v47;
        v32 = v48;
        *(v24 + 136) = v30;
        *(v24 + 144) = v27;
        *(v24 + 112) = v31;
        *(v24 + 120) = v32;
        v33 = sub_1D81919E4();
        sub_1D818FD44("Handling command with context, command=%{public}@, context=%{public}@, handler=%{public}@", 89, 2, &dword_1D7DFF000, v40, v33, v24);
      }

      v40 = v13;
      v34 = v17;
      v35 = v43;
      v36 = *(v43 + 16);

      v38 = v44;
      v36(v37, &protocol witness table for CommandCenter, a4, v20, v44, v46, v35);

      if (v38)
      {
        v39 = v40;
        (*(v34 + 16))(v40, v20, v9);
        __swift_storeEnumTagSinglePayload(v39, 0, 1, v9);

        sub_1D810E4EC();

        (*(v41 + 8))(v39, v42);
        (*(v34 + 8))(v20, v9);
      }

      else
      {
        (*(v34 + 8))(v20, v9);
      }
    }

    else
    {

      __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
      (*(v11 + 8))(v16, v10);
    }
  }

  return result;
}

uint64_t sub_1D812ED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[1] = a4;
  v24 = a6;
  v23[0] = a2;
  v10 = *(*a5 + 88);
  v11 = sub_1D8191E84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_5;
  }

  sub_1D7E1B288(a1, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_storeEnumTagSinglePayload(v14, 1, 1, v10);
    (*(v12 + 8))(v14, v11);
LABEL_5:
    v21 = 0;
    return v21 & 1;
  }

  __swift_storeEnumTagSinglePayload(v14, 0, 1, v10);
  (*(v15 + 32))(v18, v14, v10);
  v19 = *(a7 + 24);

  v21 = v19(v20, &protocol witness table for CommandCenter, a5, v18, v23[0], v24, a7);

  (*(v15 + 8))(v18, v10);
  return v21 & 1;
}

uint64_t sub_1D812EFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = a6;
  v76 = a7;
  v74 = a5;
  v72 = a2;
  v9 = *(*a4 + 144);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v65 - v11;
  v13 = *(v12 + 136);
  v14 = sub_1D8191E84();
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - v18;
  v77 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7E1B288(a1, &v79);
    if (swift_dynamicCast())
    {
      v71 = v9;
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v13);
      (*(v77 + 32))(v22, v19, v13);
      LOBYTE(v79) = *(a4 + 33);
      v68 = type metadata accessor for Command.LoggingBehavior(0, v13, v24, v25);
      v26 = sub_1D7E13510();
      v69 = v10;
      if (v26)
      {
        if (qword_1EDBBCFC0 != -1)
        {
          swift_once();
        }

        v70 = qword_1EDBC6138;
        sub_1D7E13630(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1D81A1B70;
        v29 = *(a4 + 16);
        v28 = *(a4 + 24);
        *(v27 + 56) = MEMORY[0x1E69E6158];
        v30 = sub_1D7E13BF4();
        *(v27 + 64) = v30;
        *(v27 + 32) = v29;
        *(v27 + 40) = v28;
        v79 = 0;
        v80 = 0xE000000000000000;
        sub_1D8190DB4();
        sub_1D81925F4();
        v31 = v79;
        v32 = v80;
        v33 = MEMORY[0x1E69E6158];
        *(v27 + 96) = MEMORY[0x1E69E6158];
        *(v27 + 104) = v30;
        *(v27 + 72) = v31;
        *(v27 + 80) = v32;
        v79 = 0;
        v80 = 0xE000000000000000;
        sub_1D81925F4();
        v34 = v79;
        v35 = v80;
        *(v27 + 136) = v33;
        *(v27 + 144) = v30;
        *(v27 + 112) = v34;
        *(v27 + 120) = v35;
        v36 = sub_1D81919E4();
        sub_1D818FD44("Checking state for command with context, command=%{public}@, context=%{public}@, handler=%{public}@", 99, 2, &dword_1D7DFF000, v70, v36, v27);
      }

      v70 = v13;
      v66 = v16;
      v67 = v14;
      v37 = v76;
      v38 = *(v76 + 40);

      v40 = v22;
      v41 = v78;
      v42 = v75;
      v38(v39, &protocol witness table for CommandCenter, a4, v40, v75, v37);

      LOBYTE(v79) = *(a4 + 33);
      if (sub_1D7E13510())
      {
        if (qword_1EDBBCFC0 != -1)
        {
          swift_once();
        }

        v68 = qword_1EDBC6138;
        sub_1D7E13630(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1D81A3F90;
        v45 = *(a4 + 16);
        v44 = *(a4 + 24);
        v46 = MEMORY[0x1E69E6158];
        *(v43 + 56) = MEMORY[0x1E69E6158];
        v47 = sub_1D7E13BF4();
        *(v43 + 64) = v47;
        *(v43 + 32) = v45;
        *(v43 + 40) = v44;
        v79 = 0;
        v80 = 0xE000000000000000;
        sub_1D8190DB4();
        sub_1D81925F4();
        v48 = v79;
        v49 = v80;
        *(v43 + 96) = v46;
        *(v43 + 104) = v47;
        *(v43 + 72) = v48;
        *(v43 + 80) = v49;
        v79 = 0;
        v80 = 0xE000000000000000;
        v41 = v78;
        sub_1D81925F4();
        v50 = v79;
        v51 = v80;
        *(v43 + 136) = v46;
        *(v43 + 144) = v47;
        *(v43 + 112) = v50;
        *(v43 + 120) = v51;
        v79 = 0;
        v80 = 0xE000000000000000;
        v42 = v75;
        sub_1D81925F4();
        v52 = v79;
        v53 = v80;
        *(v43 + 176) = v46;
        *(v43 + 184) = v47;
        *(v43 + 152) = v52;
        *(v43 + 160) = v53;
        v54 = sub_1D81919E4();
        sub_1D818FD44("Handling command with context and state, command=%{public}@, context=%{public}@, state=%{public}@ handler=%{public}@", 116, 2, &dword_1D7DFF000, v68, v54, v43);
      }

      v55 = v41;
      v56 = v76;
      v57 = *(v76 + 32);

      v59 = v72;
      v57(v58, &protocol witness table for CommandCenter, a4, v40, v55, v72, v42, v56);

      if (v59)
      {
        v60 = v77;
        v61 = v66;
        v62 = v40;
        v63 = v40;
        v64 = v70;
        (*(v77 + 16))(v66, v62, v70);
        __swift_storeEnumTagSinglePayload(v61, 0, 1, v64);

        sub_1D810E638();

        (*(v73 + 8))(v61, v67);
        (*(v69 + 8))(v78, v71);
        return (*(v60 + 8))(v63, v64);
      }

      else
      {

        (*(v69 + 8))(v78, v71);
        return (*(v77 + 8))(v40, v70);
      }
    }

    else
    {

      __swift_storeEnumTagSinglePayload(v19, 1, 1, v13);
      return (*(v73 + 8))(v19, v14);
    }
  }

  return result;
}

uint64_t sub_1D812F718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[1] = a4;
  v24 = a6;
  v23[0] = a2;
  v10 = *(*a5 + 136);
  v11 = sub_1D8191E84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_5;
  }

  sub_1D7E1B288(a1, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_storeEnumTagSinglePayload(v14, 1, 1, v10);
    (*(v12 + 8))(v14, v11);
LABEL_5:
    v21 = 0;
    return v21 & 1;
  }

  __swift_storeEnumTagSinglePayload(v14, 0, 1, v10);
  (*(v15 + 32))(v18, v14, v10);
  v19 = *(a7 + 48);

  v21 = v19(v20, &protocol witness table for CommandCenter, a5, v18, v23[0], v24, a7);

  (*(v15 + 8))(v18, v10);
  return v21 & 1;
}

double sub_1D812F990@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a5;
  v27 = a6;
  v24 = *a4;
  v25 = a3;
  v10 = *(v24 + 136);
  v11 = sub_1D8191E84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D7E1B288(a1, v28);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v10);
      (*(v15 + 32))(v18, v14, v10);
      v19 = v27;
      v20 = *(v27 + 40);
      *(a7 + 24) = *(v24 + 144);
      __swift_allocate_boxed_opaque_existential_0(a7);

      v20(v21, &protocol witness table for CommandCenter, a4, v18, v26, v19);

      (*(v15 + 8))(v18, v10);
      return result;
    }

    __swift_storeEnumTagSinglePayload(v14, 1, 1, v10);
    (*(v12 + 8))(v14, v11);
  }

  result = 0.0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  return result;
}

uint64_t sub_1D812FC78()
{
  v1 = *(v0 + 4);
  v2 = sub_1D8191E84();
  OUTLINED_FUNCTION_15_15(v2);
  OUTLINED_FUNCTION_27_27();
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v7 = *&v0[v6];
  v9 = *&v0[v8];
  v10 = *&v0[v8 + 8];

  return sub_1D812E178(v4, v5, &v0[v3], v7, v9, v10, v1);
}

uint64_t objectdestroy_11Tm_0()
{

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

double sub_1D812FD60()
{
  v1 = sub_1D8191E84();
  OUTLINED_FUNCTION_15_15(v1);
  OUTLINED_FUNCTION_27_27();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + v5);
  v8 = *(v0 + v7);
  v9 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D812E7DC(v3, v4, v0 + v2, v6, v8, v9);
}

_BYTE *storeEnumTagSinglePayload for CommandCenter.Errors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D8130008()
{
  result = qword_1ECA116F0;
  if (!qword_1ECA116F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA116F0);
  }

  return result;
}

uint64_t sub_1D813009C()
{
  OUTLINED_FUNCTION_2();
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  return sub_1D812F718(v4, v5, *(v0 + 48), v0 + v2, *(v0 + ((*(v3 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), v6, v7);
}

uint64_t sub_1D81301BC()
{
  OUTLINED_FUNCTION_2();
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  return sub_1D812ED78(v4, v5, *(v0 + 40), v0 + v2, *(v0 + ((*(v3 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), v6, v7);
}

uint64_t BlueprintState.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

double BlueprintProviderType.traversableCollection.getter@<D0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(a2 + 48))();
  v5[0] = OUTLINED_FUNCTION_0_224();
  v5[1] = OUTLINED_FUNCTION_0_224();
  v5[2] = swift_getAssociatedConformanceWitness();
  v5[3] = swift_getAssociatedConformanceWitness();
  a3[3] = type metadata accessor for Blueprint(0, v5);
  a3[4] = &protocol witness table for Blueprint<A, B>;
  __swift_allocate_boxed_opaque_existential_0(a3);
  sub_1D818F154();

  return result;
}

uint64_t BlueprintProviderType.contains(indexPath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = swift_getAssociatedTypeWitness();
  v13[1] = swift_getAssociatedTypeWitness();
  v13[2] = swift_getAssociatedConformanceWitness();
  v13[3] = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for Blueprint(0, v13);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  (*(a3 + 48))(a2, a3, v7);
  sub_1D818F154();

  Blueprint.contains(indexPath:)();
  v11 = v10;
  (*(v6 + 8))(v9, v5);
  return v11 & 1;
}

void BlueprintProvider.blueprintState.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 24) = v2;
}

uint64_t BlueprintProvider.__deallocating_deinit()
{
  BlueprintProvider.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D8130620()
{
  result = qword_1ECA116F8;
  if (!qword_1ECA116F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA116F8);
  }

  return result;
}

double sub_1D8130674@<D0>(uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return BlueprintProviderType.traversableCollection.getter(WitnessTable, a2);
}

uint64_t sub_1D81306D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return BlueprintProviderType.contains(indexPath:)(a1, a2, WitnessTable);
}

_BYTE *storeEnumTagSinglePayload for BlueprintState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t BlueprintDragBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D8130964@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_1D81309B0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  BlueprintViewProvider.delegate.setter(v1);
}

void (*BlueprintViewProvider.delegate.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1D8130A5C;
}

void sub_1D8130A5C(id **a1, char a2)
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

    sub_1D7E2A5B4();
  }

  free(v3);
}

uint64_t BlueprintViewProvider.__allocating_init(view:viewDataSource:viewDelegate:viewDragDelegate:)()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_13_49();
  v0 = swift_allocObject();
  BlueprintViewProvider.init(view:viewDataSource:viewDelegate:viewDragDelegate:)();
  return v0;
}

uint64_t BlueprintViewProvider.__allocating_init(view:viewDataSource:viewDelegate:viewDragDelegate:dragBehavior:)()
{
  OUTLINED_FUNCTION_13_49();
  v0 = swift_allocObject();
  BlueprintViewProvider.init(view:viewDataSource:viewDelegate:viewDragDelegate:dragBehavior:)();
  return v0;
}

_OWORD *sub_1D8130BEC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

Swift::Void __swiftcall BlueprintViewProvider.viewWillDisappear()()
{
  OUTLINED_FUNCTION_12_53();
  (*(*(*(v2 + 136) + 8) + 32))(*(v0 + 96));
  OUTLINED_FUNCTION_16_46();
  sub_1D7E41148();
  v3 = v1;
  if (OUTLINED_FUNCTION_9_9(v3, v4, v5, v6, v7, v8, v9, v10, v15, *(&v15 + 1), v16, v17, v18, v19, v20))
  {
    sub_1D7E05450(&v15, v21);
    OUTLINED_FUNCTION_27_0(v21);
    v11 = OUTLINED_FUNCTION_3_1();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_0_225();
    sub_1D7E4091C(&v15, v13, v14);
  }
}

Swift::Void __swiftcall BlueprintViewProvider.viewDidDisappear()()
{
  OUTLINED_FUNCTION_4_94();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_5_82();
  v2 = OUTLINED_FUNCTION_11_54();
  v4 = v3(v2);
  if (v4)
  {
    v5 = v4;
    BlueprintViewportMonitor.stopUpdates()();
  }

  OUTLINED_FUNCTION_9_51();
  v6 = OUTLINED_FUNCTION_17_38();
  v7(v6);
  OUTLINED_FUNCTION_7_76();
  v8 = v1;
  if (OUTLINED_FUNCTION_9_9(v8, v9, v10, v11, v12, v13, v14, v15, v20, *(&v20 + 1), v21, v22, v23, v24, v25))
  {
    sub_1D7E05450(&v20, v26);
    OUTLINED_FUNCTION_27_0(v26);
    v16 = OUTLINED_FUNCTION_3_1();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_0_225();
    sub_1D7E4091C(&v20, v18, v19);
  }
}

Swift::Void __swiftcall BlueprintViewProvider.windowDidBecomeBackground()()
{
  OUTLINED_FUNCTION_4_94();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_5_82();
  v2 = OUTLINED_FUNCTION_11_54();
  v4 = v3(v2);
  if (v4)
  {
    v5 = v4;
    BlueprintViewportMonitor.stopUpdates()();
  }

  OUTLINED_FUNCTION_9_51();
  v6 = OUTLINED_FUNCTION_17_38();
  v7(v6);
  OUTLINED_FUNCTION_7_76();
  v8 = v1;
  if (OUTLINED_FUNCTION_9_9(v8, v9, v10, v11, v12, v13, v14, v15, v20, *(&v20 + 1), v21, v22, v23, v24, v25))
  {
    sub_1D7E05450(&v20, v26);
    OUTLINED_FUNCTION_27_0(v26);
    v16 = OUTLINED_FUNCTION_3_1();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_0_225();
    sub_1D7E4091C(&v20, v18, v19);
  }
}

Swift::Void __swiftcall BlueprintViewProvider.windowWillBecomeForeground()()
{
  OUTLINED_FUNCTION_4_94();
  v2 = *(v1 + 48);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_5_82();
  v3 = OUTLINED_FUNCTION_11_54();
  v5 = v4(v3);
  if (v5)
  {
    v6 = v5;
    BlueprintViewportMonitor.startUpdates(view:)(*(v0 + 16));
  }

  OUTLINED_FUNCTION_9_51();
  v7 = OUTLINED_FUNCTION_17_38();
  v8(v7);
  OUTLINED_FUNCTION_7_76();
  v9 = v2;
  if (OUTLINED_FUNCTION_9_9(v9, v10, v11, v12, v13, v14, v15, v16, v21, *(&v21 + 1), v22, v23, v24, v25, v26))
  {
    sub_1D7E05450(&v21, v27);
    OUTLINED_FUNCTION_27_0(v27);
    v17 = OUTLINED_FUNCTION_3_1();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_0_225();
    sub_1D7E4091C(&v21, v19, v20);
  }
}

uint64_t BlueprintViewProvider.deinit()
{
  MEMORY[0x1DA715E30](v0 + 24);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BlueprintViewProvider.__deallocating_deinit()
{
  BlueprintViewProvider.deinit();
  OUTLINED_FUNCTION_13_49();

  return swift_deallocClassInstance();
}

unint64_t sub_1D81310A4()
{
  result = qword_1ECA11700;
  if (!qword_1ECA11700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11700);
  }

  return result;
}

uint64_t (*sub_1D81310FC(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintViewProvider.delegate.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D8131158(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintViewProvider.isReloading.modify(v2);
  return sub_1D7F413B4;
}

_BYTE *storeEnumTagSinglePayload for BlueprintDragBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1D81313F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = a1;
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;
  sub_1D8190DB4();
  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v10)) | (v13 << 6);
      v15 = (*(a2 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(a2 + 56) + 8 * v14);
      v19[0] = *v15;
      v19[1] = v16;
      v19[2] = v17;
      sub_1D8190DB4();
      sub_1D8190DB4();
      sub_1D8131D5C(&v20, v19, a3, a4);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        swift_unknownObjectRelease();

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t (*sub_1D813156C@<X0>(uint64_t (*result)(_BYTE *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>))(_BYTE *)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 96 * v6 - 64;
  if (v6)
  {
    while (1)
    {
      sub_1D7E638A8(v7, v9);
      v8 = v4(v9);
      if (v3)
      {
        return sub_1D7E63FD4(v9);
      }

      if (v8)
      {
        return sub_1D7E63AFC(v9, a3);
      }

      result = sub_1D7E63FD4(v9);
      v7 -= 96;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1D8131630@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1D8131AEC(a1);
  if (a2)
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    OUTLINED_FUNCTION_3_128(v7);
    v10 = *(v3 + 32);

    v11 = sub_1D7E18740(v9, v8, v10);
    if (v11)
    {
      v12 = v11;
      swift_endAccess();

      v13 = OUTLINED_FUNCTION_4_8();
      sub_1D813156C(v13, v12, v14);
      v15 = OUTLINED_FUNCTION_4_8();
      sub_1D7E0E10C(v15, v16);

      v17 = OUTLINED_FUNCTION_4_8();
      sub_1D7E0E10C(v17, v18);
      return result;
    }

    swift_endAccess();
    v24 = OUTLINED_FUNCTION_4_8();
    sub_1D7E0E10C(v24, v25);
  }

  else
  {
    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    OUTLINED_FUNCTION_3_128(v7);
    v22 = sub_1D7E18740(v21, v20, *(v3 + 32));
    if (v22)
    {
      v23 = v22;
      swift_endAccess();
      sub_1D805B5DC(v23, a3);

      return result;
    }

    swift_endAccess();
  }

  result = 0.0;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_1D8131754(uint64_t a1)
{
  v13 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v3 = *(v1 + 32);
  swift_unknownObjectRetain();
  sub_1D8190DB4();
  sub_1D81313F0(MEMORY[0x1E69E7CC8], v3, a1, &v13);
  v5 = v4;

  *(v1 + 32) = v5;

  v7 = 0;
  v8 = v13;
  v9 = *(v13 + 16);
  for (i = (v13 + 40); ; i += 2)
  {
    if (v9 == v7)
    {
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    ++v7;
    v12 = *(i - 1);
    v11 = *i;
    sub_1D8190DB4();
    sub_1D7E63E18(v12, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8131858(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = OUTLINED_FUNCTION_11_0();
  v7 = sub_1D7E18740(v4, v5, v6);
  if (v7)
  {
    v8 = v7;
    v22 = v1;
    result = swift_endAccess();
    v10 = 0;
    v11 = *(v8 + 16);
    v12 = v8 + 32;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v11 == v10)
      {

        v2 = v22;
        goto LABEL_16;
      }

      if (v10 >= *(v8 + 16))
      {
        break;
      }

      sub_1D7E638A8(v12, v24);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v15 = Strong, swift_unknownObjectRelease(), v15 == a1))
      {
        result = sub_1D7E63FD4(v24);
      }

      else
      {
        sub_1D7E63AFC(v24, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D7F08F8C(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1D7F08F8C(v17 > 1, v18 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v18 + 1;
        result = sub_1D7E63AFC(v23, v13 + 96 * v18 + 32);
      }

      v12 += 96;
      ++v10;
    }

    __break(1u);
  }

  else
  {
    swift_endAccess();
    v13 = 0;
LABEL_16:
    swift_beginAccess();
    if (v13)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v23[0] = *(v2 + 32);
      sub_1D7E63B58();
      *(v2 + 32) = v23[0];
    }

    else
    {
      v19 = OUTLINED_FUNCTION_11_0();
      sub_1D7F03DB4(v19);
    }

    swift_endAccess();
    v20 = OUTLINED_FUNCTION_11_0();
    return sub_1D7E63E18(v20, v21);
  }

  return result;
}

BOOL sub_1D8131A60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  v2 = v1;
  if (Strong)
  {
    if (v1)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }

    goto LABEL_5;
  }

  if (v1)
  {
LABEL_5:
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

uint64_t sub_1D8131AEC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  v5 = sub_1D7E18740(v3, v4, *(v1 + 32));
  if (!v5)
  {
    swift_endAccess();
    v14 = 0;
    v10 = 0;
LABEL_15:
    swift_beginAccess();
    v15 = sub_1D7E18740(v3, v4, *(v2 + 32));
    if (v15)
    {
      v16 = v15;
      swift_endAccess();
      v17 = *(v16 + 16);

      if (v5 && v14 == v17)
      {
      }
    }

    else
    {
      swift_endAccess();
      if (!v5)
      {
      }
    }

    swift_beginAccess();
    if (v10)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v19[0] = *(v2 + 32);
      sub_1D7E63B58();
      *(v2 + 32) = v19[0];
    }

    else
    {
      sub_1D7F03DB4(v3);
    }

    swift_endAccess();
    return sub_1D7E63E18(v3, v4);
  }

  v18 = v3;
  result = swift_endAccess();
  v7 = 0;
  v8 = *(v5 + 16);
  v9 = v5 + 32;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v7)
    {

      v14 = *(v10 + 16);
      v3 = v18;
      v2 = v1;
      goto LABEL_15;
    }

    if (v7 >= *(v5 + 16))
    {
      break;
    }

    sub_1D7E638A8(v9, v20);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1D7E63AFC(v20, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7F08F8C(0, *(v10 + 16) + 1, 1);
        v10 = v21;
      }

      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D7F08F8C(v12 > 1, v13 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v13 + 1;
      result = sub_1D7E63AFC(v19, v10 + 96 * v13 + 32);
    }

    else
    {
      result = sub_1D7E63FD4(v20);
    }

    v9 += 96;
    ++v7;
  }

  __break(1u);
  return result;
}

void *sub_1D8131D5C(void *result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v21 = result;
  v5 = 0;
  v20 = *a2;
  v19 = a2[1];
  v6 = a2[2];
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D7E638A8(v8, v23);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v11 = Strong, swift_unknownObjectRelease(), v11 == a3))
    {
      result = sub_1D7E63FD4(v23);
    }

    else
    {
      sub_1D7E63AFC(v23, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7F08F8C(0, *(v9 + 16) + 1, 1);
        v9 = v24;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D7F08F8C(v13 > 1, v14 + 1, 1);
        v9 = v24;
      }

      *(v9 + 16) = v14 + 1;
      result = sub_1D7E63AFC(v22, v9 + 96 * v14 + 32);
    }

    v8 += 96;
    ++v5;
  }

  if (*(v9 + 16) != *(v6 + 16))
  {
    sub_1D8190DB4();
    sub_1D7EE42F0();
    v15 = *(*a4 + 16);
    sub_1D7EE451C();
    v16 = *a4;
    *(v16 + 16) = v15 + 1;
    v17 = v16 + 16 * v15;
    *(v17 + 32) = v20;
    *(v17 + 40) = v19;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v23[0] = *v21;
  result = sub_1D7E63B58();
  *v21 = v23[0];
  return result;
}

uint64_t sub_1D8131F30()
{
  sub_1D7E0E10C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_1D8131F58()
{
  sub_1D8131F30();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8131F8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D8131FCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8132034()
{
  sub_1D81921A4();

  v1 = swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D8190DB4();
    sub_1D7F08E34(0, v3, 0);
    v5 = sub_1D804C12C();
    v6 = v2 + 64;
    v7 = v3 - 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        if ((*(v6 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_17;
        }

        if (v4 != *(v2 + 36))
        {
          goto LABEL_18;
        }

        v20 = v7;
        v21 = v4;
        v8 = (*(v2 + 48) + 16 * v5);
        v9 = *v8;
        v10 = v8[1];
        v11 = *(*(v2 + 56) + 8 * v5);
        sub_1D8190DB4();
        sub_1D8190DB4();
        v12 = sub_1D81322D4(v9, v10, v11);
        v14 = v13;

        v16 = *(v22 + 16);
        v15 = *(v22 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D7F08E34(v15 > 1, v16 + 1, 1);
        }

        *(v22 + 16) = v16 + 1;
        v17 = v22 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        if (v5 >= -(-1 << *(v2 + 32)))
        {
          goto LABEL_19;
        }

        v6 = v2 + 64;
        if ((*(v2 + 64 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_20;
        }

        if (v21 != *(v2 + 36))
        {
          goto LABEL_21;
        }

        v18 = sub_1D8192034();
        if (!v20)
        {

          goto LABEL_15;
        }

        v5 = v18;
        v4 = *(v2 + 36);
        v7 = v20 - 1;
        if (v18 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_0_226(v1, &qword_1EDBB3330, MEMORY[0x1E69E6158]);
    sub_1D7E1B6BC();
    sub_1D8190E94();

    v19 = OUTLINED_FUNCTION_11_0();
    MEMORY[0x1DA713260](v19);

    MEMORY[0x1DA713260](10506, 0xE200000000000000);
  }
}

uint64_t sub_1D81322D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_1D81921A4();
  sub_1D8190DB4();

  v26 = a1;
  v27 = a2;
  MEMORY[0x1DA713260](0x3D6576696C61283DLL, 0xE800000000000000);
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = v6;
  for (i = v7; v9; --v9)
  {
    sub_1D7E638A8(i, v24);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1D7E63AFC(v24, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7F08F8C(0, *(v8 + 16) + 1, 1);
        v8 = v25;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D7F08F8C(v12 > 1, v13 + 1, 1);
        v8 = v25;
      }

      *(v8 + 16) = v13 + 1;
      sub_1D7E63AFC(v23, v8 + 96 * v13 + 32);
    }

    else
    {
      sub_1D7E63FD4(v24);
    }

    i += 96;
  }

  v14 = *(v8 + 16);

  v24[0] = v14;
  v15 = sub_1D81925B4();
  MEMORY[0x1DA713260](v15);

  MEMORY[0x1DA713260](0x3D64616564202CLL, 0xE700000000000000);
  for (j = MEMORY[0x1E69E7CC0]; v6; --v6)
  {
    sub_1D7E638A8(v7, v24);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1D7E63FD4(v24);
    }

    else
    {
      sub_1D7E63AFC(v24, v23);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v25 = j;
      if ((v17 & 1) == 0)
      {
        sub_1D7F08F8C(0, *(j + 16) + 1, 1);
        j = v25;
      }

      v19 = *(j + 16);
      v18 = *(j + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D7F08F8C(v18 > 1, v19 + 1, 1);
        j = v25;
      }

      *(j + 16) = v19 + 1;
      sub_1D7E63AFC(v23, j + 96 * v19 + 32);
    }

    v7 += 96;
  }

  v20 = *(j + 16);

  v24[0] = v20;
  v21 = sub_1D81925B4();
  MEMORY[0x1DA713260](v21);

  MEMORY[0x1DA713260](41, 0xE100000000000000);
  return v26;
}

uint64_t sub_1D81325D0(uint64_t result, uint64_t a2, const void *a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __OFSUB__(1, v7);
  v9 = 1 - v7;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v5 + v9;
  if (__OFADD__(v5, v9))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1D80B6C88(result, 1);

  return sub_1D813266C(v6, a2, 1, a3);
}

uint64_t sub_1D813266C(uint64_t result, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = 9 * result;
  v12 = v10 + 72 * result;
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v5);
  v14 = a3 - v5;
  if (v13)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v9 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_16;
  }

  result = sub_1D80E5FBC((v10 + 72 * a2), v15 - a2, (v12 + 72 * a3));
  v16 = *(v9 + 16);
  v13 = __OFADD__(v16, v14);
  v17 = v16 + v14;
  if (v13)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v9 + 16) = v17;
LABEL_7:
  if (a3 <= 0)
  {

    return sub_1D8132824(a4);
  }

  else
  {
    memcpy(__dst, a4, sizeof(__dst));
    result = memcpy((8 * v11 + v9 + 32), __dst, 0x41uLL);
    if (8 * v11 + v9 + 104 < (v12 + 72 * a3))
    {
      result = sub_1D81328A4(a4, &v18);
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D8132824(uint64_t a1)
{
  sub_1D7E11C74(0, &qword_1ECA11708, &type metadata for DebugItem, MEMORY[0x1E69E6BC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D81328A4(uint64_t a1, uint64_t a2)
{
  sub_1D7E11C74(0, &qword_1ECA11708, &type metadata for DebugItem, MEMORY[0x1E69E6BC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D813292C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1D7F054EC();
  v3 = sub_1D7F061EC();
  sub_1D7E4507C(v5);
  if (v3 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1D81329BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D7F054EC();
  sub_1D7F059A4(&v7, v3 + 32, v2, a1);
  v5 = v4;
  sub_1D7E4507C(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1D8132A4C()
{
  result = 0x57646E656C424943;
  switch(*(v0 + 16))
  {
    case 1:
      return result;
    case 2:
      result = 0x6973737561474943;
      break;
    case 3:
      result = 0x6E616964654D4943;
      switch(*v0)
      {
        case 1:
        case 2:
          result = 0xD000000000000017;
          break;
        case 3:
          result = 0x49726F6C6F434943;
          break;
        case 4:
          result = 0x6F546B73614D4943;
          break;
        case 5:
        case 6:
        case 0xDLL:
          result = 0xD000000000000012;
          break;
        case 7:
          result = 0xD000000000000013;
          break;
        case 8:
          result = 0xD000000000000011;
          break;
        case 9:
        case 0xCLL:
          goto LABEL_2;
        case 0xALL:
          result = 0xD000000000000011;
          break;
        case 0xBLL:
          result = 0xD000000000000011;
          break;
        case 0xELL:
          result = 0xD000000000000015;
          break;
        case 0xFLL:
          result = 0x5461697065534943;
          break;
        default:
          return result;
      }

      break;
    default:
LABEL_2:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1D8132C80()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      sub_1D7FA9B38(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D819FAB0;
      *(inited + 32) = sub_1D8190F14();
      *(inited + 40) = v11;
      *(inited + 72) = MEMORY[0x1E69E7DE0];
      *(inited + 48) = v1;
    }
  }

  else
  {
    v3 = *(v0 + 8);
    sub_1D7FA9B38(0);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1D819FAC0;
    *(v4 + 32) = sub_1D8190F14();
    *(v4 + 40) = v5;
    v6 = sub_1D7E0A1A8(0, &qword_1EDBAE450, 0x1E695F658);
    *(v4 + 72) = v6;
    *(v4 + 48) = v1;
    *(v4 + 80) = sub_1D8190F14();
    *(v4 + 88) = v7;
    *(v4 + 120) = v6;
    *(v4 + 96) = v3;
    v8 = v1;
    v9 = v3;
  }

  return sub_1D8190D94();
}

void CoreImageFilterDescriptor.filter.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D7E0A1A8(0, qword_1ECA11710, 0x1E695F648);
  v24 = v1;
  v25 = v2;
  LOBYTE(v26[0]) = v3;
  v4 = sub_1D8132A4C();
  v6 = sub_1D8133114(v4, v5);
  if (v6)
  {
    v7 = v6;
    v26[4] = v1;
    v26[5] = v2;
    v27 = v3;
    v8 = sub_1D8132C80();
    v9 = v8;
    v10 = v8 + 64;
    v11 = 1 << *(v8 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v8 + 64);
    v14 = (v11 + 63) >> 6;
    sub_1D8190DB4();
    v15 = 0;
    while (v13)
    {
      v16 = v15;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = v17 | (v16 << 6);
      v19 = (*(v9 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      sub_1D7E1B288(*(v9 + 56) + 32 * v18, v26);
      v24 = v20;
      v25 = v21;
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      sub_1D8190DB4();
      v22 = sub_1D8192614();
      v23 = sub_1D8190EE4();
      [v7 setValue:v22 forKey:v23];
      swift_unknownObjectRelease();

      sub_1D8133178(&v24);
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        return;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t CoreImageFilterDescriptor.identifier.getter()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  v11 = *(v0 + 8);
  v2 = v11;
  v12 = v3;
  v4 = sub_1D8132C80();
  v10 = sub_1D813292C(v4);
  sub_1D8190DB4();
  sub_1D8133240(&v10);

  v5 = v10;
  sub_1D7E0E81C(0, &qword_1EDBB2C60, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D819FAB0;
  v10 = v1;
  v11 = v2;
  v12 = v3;
  *(v6 + 32) = sub_1D8132A4C();
  *(v6 + 40) = v7;
  v10 = v6;
  sub_1D7E675D4(v5);
  sub_1D7E0E81C(0, &qword_1EDBB3330, MEMORY[0x1E69E62F8]);
  sub_1D7E1B6BC();
  v8 = sub_1D8190E94();

  return v8;
}

id sub_1D8133114(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8190EE4();

  v3 = [swift_getObjCClassFromMetadata() filterWithName_];

  return v3;
}

uint64_t sub_1D8133178(uint64_t a1)
{
  sub_1D81331D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D81331D4()
{
  if (!qword_1EDBB3408)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB3408);
    }
  }
}

uint64_t sub_1D8133240(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D8120A5C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1D81332BC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1D81332BC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D81925A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1D81913D4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1D80734A8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D807336C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D81333B0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8133438(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 17) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 17) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1D81335B8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 17) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 17] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D8133860(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19, v10);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return sub_1D8190B94();
}

uint64_t sub_1D81339DC(uint64_t a1)
{
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_1D8190B84();
  OUTLINED_FUNCTION_1_163();
  swift_getWitnessTable();
  v4 = sub_1D8190A74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  sub_1D81905F4();
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  sub_1D8190A64();
  OUTLINED_FUNCTION_0_227();
  swift_getWitnessTable();
  sub_1D80CCC80();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_1D80CCC80();
  return (v12)(v10, v4);
}

uint64_t sub_1D8133BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v40 = a4;
  v42 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = v37 - v8;
  v10 = v9[1];
  v46 = *v9;
  v47 = v10;
  sub_1D7E50D2C();
  sub_1D8190DB4();
  v11 = sub_1D8190814();
  v13 = v12;
  v15 = v14;
  sub_1D8190794();
  v16 = sub_1D81907F4();
  v18 = v17;
  v20 = v19;
  v37[0] = v21;

  sub_1D80CBD04(v11, v13, v15 & 1);

  v37[1] = a1;
  if (*(a1 + 16) == 1)
  {
    v22 = sub_1D8190914();
  }

  else
  {
    v22 = sub_1D8190904();
  }

  v46 = v22;
  v23 = sub_1D81907E4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1D80CBD04(v16, v18, v20 & 1);

  v30 = v38;
  type metadata accessor for VerticallyLabeledContent(0, a2, v38, v31);
  v32 = v39;
  sub_1D80CCC80();
  v46 = v23;
  v47 = v25;
  v48 = v27 & 1;
  v49 = v29;
  v50[0] = &v46;
  v34 = v41;
  v33 = v42;
  (*(v42 + 16))(v41, v32, a2);
  v50[1] = v34;
  sub_1D8133EC0(v23, v25, v27 & 1);
  sub_1D8190DB4();
  v45[0] = MEMORY[0x1E6981148];
  v45[1] = a2;
  v43 = MEMORY[0x1E6981138];
  v44 = v30;
  sub_1D8133860(v50, 2, v45);
  sub_1D80CBD04(v23, v25, v27 & 1);

  v35 = *(v33 + 8);
  v35(v32, a2);
  v35(v34, a2);
  sub_1D80CBD04(v46, v47, v48);
}

double sub_1D8133EC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1D8190DB4();
  }

  return result;
}

void *sub_1D8133ED0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() sharedApplication];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E062C4(0, qword_1EDBBDC38, &protocolRef_TSAppMonitorType);
  result = sub_1D818EFE4();
  if (result)
  {
    v6 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7E0631C(0, &qword_1EDBBA418, &protocol descriptor for SceneProviderType);
    result = sub_1D818EFF4();
    if (v10)
    {
      v8 = 0;
      v7 = type metadata accessor for App();
      swift_allocObject();
      result = App.init(application:monitor:sceneProvider:environment:)(v4, v6, &v9, &v8);
      a2[3] = v7;
      a2[4] = &protocol witness table for App;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D8134010(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AccessibilityAnnouncer();
  v3 = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F5300138;
  *a1 = v3;
}

uint64_t sub_1D81340C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double), double a5)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14);
  v18 = a4(v16, a2, a3, v5, v11, v12, a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v18;
}

uint64_t sub_1D8134200(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double), double a4)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12);
  v16 = a3(v14, a2, v4, v9, v10, a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v16;
}

id StateRestoreController.init(store:timeWindow:isRunningPPT:)()
{
  OUTLINED_FUNCTION_7_77();
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___TUStateRestoreController_anyNavigationHappenAfterBackground] = 0;
  v1[OBJC_IVAR___TUStateRestoreController_alwaysAllowStateRestoration] = 0;
  *&v1[OBJC_IVAR___TUStateRestoreController_timeWindow] = v3;
  sub_1D7E0E768(v2, &v1[OBJC_IVAR___TUStateRestoreController_store]);
  v1[OBJC_IVAR___TUStateRestoreController_isStateRestorationFeatureEnabled] = v0 ^ 1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v5;
}

uint64_t StateRestoreLastBackgroundStore.__allocating_init()()
{
  OUTLINED_FUNCTION_0_32();
  v0 = swift_allocObject();
  return OUTLINED_FUNCTION_1_164(v0, "stateRestoreLastBackgroundDate");
}

id StateRestoreController.init(timeWindow:isStateRestorationEnabled:)()
{
  OUTLINED_FUNCTION_3_129();
  ObjectType = swift_getObjectType();
  BackgroundStore = type metadata accessor for StateRestoreLastBackgroundStore();
  OUTLINED_FUNCTION_0_32();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_1_164(v4, "stateRestoreLastBackgroundDate");
  v5 = objc_allocWithZone(ObjectType);
  v11[3] = BackgroundStore;
  v11[4] = &protocol witness table for StateRestoreLastBackgroundStore;
  v11[0] = v4;
  v5[OBJC_IVAR___TUStateRestoreController_anyNavigationHappenAfterBackground] = 0;
  v6 = OBJC_IVAR___TUStateRestoreController_alwaysAllowStateRestoration;
  v5[OBJC_IVAR___TUStateRestoreController_alwaysAllowStateRestoration] = 0;
  *&v5[OBJC_IVAR___TUStateRestoreController_timeWindow] = v1;
  sub_1D7E0E768(v11, &v5[OBJC_IVAR___TUStateRestoreController_store]);
  v5[OBJC_IVAR___TUStateRestoreController_isStateRestorationFeatureEnabled] = v0;
  v5[v6] = 0;
  v10.receiver = v5;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v8 = swift_getObjectType();
  OUTLINED_FUNCTION_8_58(v8);
  return v7;
}