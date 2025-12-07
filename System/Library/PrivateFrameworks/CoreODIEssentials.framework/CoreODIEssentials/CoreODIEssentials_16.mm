char *sub_1DB0807BC(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      sub_1DB09E3A4();

      sub_1DB09D794();
      v9 = sub_1DB09E3E4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 368 * v3);
        v15 = (v14 + 368 * v6);
        if (v3 != v6 || result >= v15 + 368)
        {
          result = memmove(result, v15, 0x170uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DB080970(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 48);
      v10 = 1048 * v6;
      memcpy(__dst, (v9 + 1048 * v6), 0x414uLL);
      memcpy(v27, (v9 + 1048 * v6), sizeof(v27));
      sub_1DB09E3A4();
      sub_1DAF40898(__dst, v25);
      sub_1DAF8D1F0(v26);
      v11 = sub_1DB09E3E4();
      result = sub_1DAF407D4(__dst);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 1048 * v3);
      v15 = (v13 + v10);
      if (1048 * v3 < v10 || v14 >= v15 + 1048 || v3 != v6)
      {
        memmove(v14, v15, 0x418uLL);
      }

      v16 = *(a2 + 56);
      v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280) - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_23;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_23:
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DB080BC0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    while (1)
    {
      sub_1DB09E3A4();

      sub_1DB09D794();
      v9 = sub_1DB09E3E4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for AnyODIKnownBinding(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB080DAC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1DB09E3A4();
      MEMORY[0x1E1280A80](v9);
      result = sub_1DB09E3E4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB080F40(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1DB09E394();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DB0810B0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB09DD14() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1DB09E3A4();
      MEMORY[0x1E1280A80](v9);
      result = sub_1DB09E3E4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 112 * v3;
        v15 = (v14 + 112 * v6);
        if (v3 != v6 || result >= v15 + 112)
        {
          result = memmove(result, v15, 0x70uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB081248(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DB09E3A4();
  sub_1DB09D794();
  v8 = sub_1DB09E3E4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DB09E254() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1DB082054(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DB081398(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  sub_1DB09E3A4();
  sub_1DB09D044();
  v7 = sub_1DB09E3E4();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_141:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v82;
    sub_1DAF40674(a2, a3);
    sub_1DB0821D4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v82 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = a3 >> 62;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v88 = v14;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v85 = v15;
  v84 = v6;
  v80 = (a2 >> 32) - a2;
  v81 = a2 >> 32;
  v86 = v6 + 56;
  v87 = v11;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || a3 >> 62 != 3;
      if (((v22 | v88) & 1) == 0)
      {
        v75 = 0;
        v76 = 0xC000000000000000;
LABEL_142:
        sub_1DAF40780(v75, v76);
LABEL_143:
        v77 = *(*(v6 + 48) + 16 * v10);
        *a1 = v77;
        sub_1DAF40674(v77, *(&v77 + 1));
        return 0;
      }

LABEL_36:
      v23 = 0;
      if (v12 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_147;
      }

      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_146;
      }

      v23 = v23;
      if (v12 <= 1)
      {
LABEL_33:
        v27 = BYTE6(a3);
        if (v12)
        {
          v27 = HIDWORD(a2) - a2;
          if (v85)
          {
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
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v12 != 2)
    {
      if (!v23)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_145;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_140;
    }

    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      if (v18 > v18 >> 32)
      {
        goto LABEL_148;
      }

      sub_1DAF40674(v18, v17);
      v40 = sub_1DB09CD44();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1DB09CD74();
        if (__OFSUB__(v18, v42))
        {
          goto LABEL_150;
        }

        v39 = (v18 - v42 + v41);
      }

      else
      {
        v39 = 0;
      }

      sub_1DB09CD64();
      v11 = v87;
      if (v12 == 2)
      {
        v67 = *(a2 + 16);
        v79 = *(a2 + 24);
        v49 = sub_1DB09CD44();
        if (v49)
        {
          v68 = sub_1DB09CD74();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_164;
          }

          v49 += v67 - v68;
        }

        v26 = __OFSUB__(v79, v67);
        v69 = v79 - v67;
        if (v26)
        {
          goto LABEL_160;
        }

        result = sub_1DB09CD64();
        if (result >= v69)
        {
          v52 = v69;
        }

        else
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_176;
        }

        v8 = v86;
        v11 = v87;
        if (!v49)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v12 != 1)
        {
          v8 = v86;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v39)
          {
            goto LABEL_171;
          }

          goto LABEL_138;
        }

        if (v81 < a2)
        {
          goto LABEL_159;
        }

        v49 = sub_1DB09CD44();
        if (v49)
        {
          v53 = sub_1DB09CD74();
          if (__OFSUB__(a2, v53))
          {
            goto LABEL_166;
          }

          v49 += a2 - v53;
        }

        result = sub_1DB09CD64();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_180;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_179;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v18;
    *&__s1[8] = v17;
    __s1[10] = BYTE2(v17);
    __s1[11] = BYTE3(v17);
    __s1[12] = BYTE4(v17);
    __s1[13] = BYTE5(v17);
    if (!v12)
    {
      goto LABEL_69;
    }

    if (v12 == 1)
    {
      if (v81 < a2)
      {
        goto LABEL_152;
      }

      sub_1DAF40674(v18, v17);
      v30 = sub_1DB09CD44();
      if (!v30)
      {
        goto LABEL_174;
      }

      v31 = v30;
      v32 = sub_1DB09CD74();
      if (__OFSUB__(a2, v32))
      {
        goto LABEL_156;
      }

      v33 = (a2 - v32 + v31);
      v34 = sub_1DB09CD64();
      if (!v33)
      {
        goto LABEL_172;
      }

      goto LABEL_109;
    }

    v55 = *(a2 + 16);
    v54 = *(a2 + 24);
    sub_1DAF40674(v18, v17);
    v45 = sub_1DB09CD44();
    if (v45)
    {
      v56 = sub_1DB09CD74();
      if (__OFSUB__(v55, v56))
      {
        goto LABEL_161;
      }

      v45 += v55 - v56;
    }

    v26 = __OFSUB__(v54, v55);
    v47 = v54 - v55;
    if (v26)
    {
      goto LABEL_153;
    }

    v48 = sub_1DB09CD64();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v48 >= v47)
    {
      v57 = v47;
    }

    else
    {
      v57 = v48;
    }

    v58 = memcmp(__s1, v45, v57);
    sub_1DAF40780(v18, v17);
    v8 = v86;
    v11 = v87;
    if (!v58)
    {
LABEL_140:
      v75 = a2;
      v76 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v18 + 16);
    sub_1DAF40674(v18, v17);
    v36 = sub_1DB09CD44();
    if (v36)
    {
      v37 = v36;
      v38 = sub_1DB09CD74();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_149;
      }

      v39 = (v35 - v38 + v37);
    }

    else
    {
      v39 = 0;
    }

    sub_1DB09CD64();
    v11 = v87;
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        if (v81 < a2)
        {
          goto LABEL_155;
        }

        v49 = sub_1DB09CD44();
        if (v49)
        {
          v50 = sub_1DB09CD74();
          if (__OFSUB__(a2, v50))
          {
            goto LABEL_165;
          }

          v49 += a2 - v50;
        }

        result = sub_1DB09CD64();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_178;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_177;
        }

        goto LABEL_135;
      }

      v8 = v86;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v39)
      {
        goto LABEL_169;
      }

LABEL_138:
      v72 = __s1;
      v71 = v39;
      v70 = BYTE6(a3);
LABEL_139:
      v73 = memcmp(v71, v72, v70);
      sub_1DAF40780(v18, v17);
      v6 = v84;
      if (!v73)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v64 = *(a2 + 16);
    v78 = *(a2 + 24);
    v49 = sub_1DB09CD44();
    if (v49)
    {
      v65 = sub_1DB09CD74();
      if (__OFSUB__(v64, v65))
      {
        goto LABEL_163;
      }

      v49 += v64 - v65;
    }

    v26 = __OFSUB__(v78, v64);
    v66 = v78 - v64;
    if (v26)
    {
      goto LABEL_158;
    }

    result = sub_1DB09CD64();
    if (result >= v66)
    {
      v52 = v66;
    }

    else
    {
      v52 = result;
    }

    if (!v39)
    {
      goto LABEL_182;
    }

    v8 = v86;
    v11 = v87;
    if (!v49)
    {
      goto LABEL_181;
    }

LABEL_135:
    if (v39 == v49)
    {
      sub_1DAF40780(v18, v17);
      sub_1DAF40780(a2, a3);
      v6 = v84;
      goto LABEL_143;
    }

    v70 = v52;
    v71 = v39;
    v72 = v49;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v12)
  {
LABEL_69:
    __s2 = a2;
    v90 = a3;
    v91 = BYTE2(a3);
    v92 = BYTE3(a3);
    v93 = BYTE4(a3);
    v94 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    sub_1DAF40674(v18, v17);
    v45 = sub_1DB09CD44();
    if (v45)
    {
      v46 = sub_1DB09CD74();
      if (__OFSUB__(v44, v46))
      {
        goto LABEL_162;
      }

      v45 += v44 - v46;
    }

    v26 = __OFSUB__(v43, v44);
    v47 = v43 - v44;
    if (v26)
    {
      goto LABEL_154;
    }

    v48 = sub_1DB09CD64();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_173;
    }

    goto LABEL_100;
  }

  if (v81 < a2)
  {
    goto LABEL_151;
  }

  sub_1DAF40674(v18, v17);
  v59 = sub_1DB09CD44();
  if (v59)
  {
    v60 = v59;
    v61 = sub_1DB09CD74();
    if (__OFSUB__(a2, v61))
    {
      goto LABEL_157;
    }

    v33 = (a2 - v61 + v60);
    v34 = sub_1DB09CD64();
    if (!v33)
    {
      goto LABEL_168;
    }

LABEL_109:
    if (v34 >= v80)
    {
      v62 = (a2 >> 32) - a2;
    }

    else
    {
      v62 = v34;
    }

    v63 = memcmp(__s1, v33, v62);
    sub_1DAF40780(v18, v17);
    v8 = v86;
    if (!v63)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  sub_1DB09CD64();
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
LABEL_173:
  __break(1u);
LABEL_174:
  result = sub_1DB09CD64();
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_1DB081D14(uint64_t *a1, void *a2)
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

    v9 = sub_1DB09DD54();

    if (v9)
    {

      sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1DB09DD44();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1DB01FC5C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1DB02030C(v20 + 1);
    }

    v18 = v8;
    sub_1DB0207A4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
  v11 = sub_1DB09DC24();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1DB082AD4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1DB09DC34();

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

uint64_t sub_1DB081F4C(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v3;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](a2);
  v8 = sub_1DB09E3E4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
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
    v14 = *v3;
    a3(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1DB082054(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DB01FE4C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DB020828();
      goto LABEL_16;
    }

    sub_1DB082EFC(v8 + 1);
  }

  v10 = *v4;
  sub_1DB09E3A4();
  sub_1DB09D794();
  result = sub_1DB09E3E4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DB09E254();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DB09E2D4();
  __break(1u);
  return result;
}

uint64_t sub_1DB0821D4(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v91 = *MEMORY[0x1E69E9840];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_1DB0200AC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DB020984();
      goto LABEL_143;
    }

    sub_1DB083134(v8 + 1);
  }

  v10 = *v4;
  sub_1DB09E3A4();
  sub_1DB09D044();
  result = sub_1DB09E3E4();
  v11 = v10 + 56;
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v70 = *v79;
    *(*v79 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v71 = (*(v70 + 48) + 16 * a3);
    *v71 = v7;
    v71[1] = a2;
    v72 = *(v70 + 16);
    v29 = __OFADD__(v72, 1);
    v73 = v72 + 1;
    if (!v29)
    {
      *(v70 + 16) = v73;
      return result;
    }

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
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v13 = ~v12;
  v14 = a2 >> 62;
  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 0xC000000000000000;
  }

  v16 = !v15;
  v83 = v16;
  v78 = v10;
  v17 = __OFSUB__(HIDWORD(v7), v7);
  v80 = v17;
  v76 = (v7 >> 32) - v7;
  v77 = v7 >> 32;
  v81 = v13;
  v82 = v10 + 56;
  while (1)
  {
    v18 = (*(v10 + 48) + 16 * a3);
    v20 = *v18;
    v19 = v18[1];
    v21 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || a2 >> 62 != 3;
      if (((v24 | v83) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_32;
      }

      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      v29 = __OFSUB__(v35, v36);
      v25 = v35 - v36;
      if (v29)
      {
        goto LABEL_147;
      }
    }

    else if (v21)
    {
      LODWORD(v25) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_148;
      }

      v25 = v25;
    }

    else
    {
      v25 = BYTE6(v19);
    }

LABEL_33:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (!v25)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v26 = BYTE6(a2);
      if (v14)
      {
        v26 = HIDWORD(v7) - v7;
        if (v80)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v25 == v26)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v13;
    if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v25 < 1)
  {
    goto LABEL_185;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      *__s1 = v20;
      *&__s1[8] = v19;
      __s1[10] = BYTE2(v19);
      __s1[11] = BYTE3(v19);
      __s1[12] = BYTE4(v19);
      __s1[13] = BYTE5(v19);
      if (!v14)
      {
        goto LABEL_97;
      }

      if (v14 == 1)
      {
        if (v77 < v7)
        {
          goto LABEL_152;
        }

        sub_1DAF40674(v20, v19);
        v30 = sub_1DB09CD44();
        if (!v30)
        {
          goto LABEL_175;
        }

        v31 = v30;
        v32 = sub_1DB09CD74();
        if (__OFSUB__(v7, v32))
        {
          goto LABEL_158;
        }

        v33 = v7 - v32 + v31;
        v34 = sub_1DB09CD64();
        if (!v33)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v34 >= v76)
        {
          v55 = (v7 >> 32) - v7;
        }

        else
        {
          v55 = v34;
        }

LABEL_114:
        v59 = __s1;
        v60 = v33;
LABEL_140:
        v69 = memcmp(v59, v60, v55);
        result = sub_1DAF40780(v20, v19);
LABEL_141:
        v13 = v81;
        v11 = v82;
        if (!v69)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v53 = *(v7 + 16);
      v52 = *(v7 + 24);
      sub_1DAF40674(v20, v19);
      v33 = sub_1DB09CD44();
      if (v33)
      {
        v54 = sub_1DB09CD74();
        if (__OFSUB__(v53, v54))
        {
          goto LABEL_162;
        }

        v33 += v53 - v54;
      }

      v29 = __OFSUB__(v52, v53);
      v50 = v52 - v53;
      if (v29)
      {
        goto LABEL_156;
      }

      v51 = sub_1DB09CD64();
      v10 = v78;
      if (!v33)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v51 >= v50)
      {
        v55 = v50;
      }

      else
      {
        v55 = v51;
      }

      goto LABEL_114;
    }

    if (v20 > v20 >> 32)
    {
      goto LABEL_149;
    }

    sub_1DAF40674(v20, v19);
    v38 = sub_1DB09CD44();
    if (v38)
    {
      v44 = sub_1DB09CD74();
      if (__OFSUB__(v20, v44))
      {
        goto LABEL_151;
      }

      v38 += v20 - v44;
    }

    sub_1DB09CD64();
    if (v14 == 2)
    {
      v65 = *(v7 + 16);
      v75 = *(v7 + 24);
      v40 = sub_1DB09CD44();
      if (v40)
      {
        v66 = sub_1DB09CD74();
        if (__OFSUB__(v65, v66))
        {
          goto LABEL_166;
        }

        v40 += v65 - v66;
      }

      v29 = __OFSUB__(v75, v65);
      v67 = v75 - v65;
      if (v29)
      {
        goto LABEL_161;
      }

      v68 = sub_1DB09CD64();
      if (v68 >= v67)
      {
        v43 = v67;
      }

      else
      {
        v43 = v68;
      }

      if (!v38)
      {
        goto LABEL_177;
      }

      if (!v40)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_160;
      }

      v40 = sub_1DB09CD44();
      if (v40)
      {
        v45 = sub_1DB09CD74();
        if (__OFSUB__(v7, v45))
        {
          goto LABEL_167;
        }

        v40 += v7 - v45;
      }

      v46 = sub_1DB09CD64();
      v43 = (v7 >> 32) - v7;
      if (v46 < v76)
      {
        v43 = v46;
      }

      if (!v38)
      {
        goto LABEL_181;
      }

      if (!v40)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v21 == 2)
  {
    v37 = *(v20 + 16);
    sub_1DAF40674(v20, v19);
    v38 = sub_1DB09CD44();
    if (v38)
    {
      v39 = sub_1DB09CD74();
      if (__OFSUB__(v37, v39))
      {
        goto LABEL_150;
      }

      v38 += v37 - v39;
    }

    sub_1DB09CD64();
    if (v14 == 2)
    {
      v61 = *(v7 + 16);
      v74 = *(v7 + 24);
      v40 = sub_1DB09CD44();
      if (v40)
      {
        v62 = sub_1DB09CD74();
        if (__OFSUB__(v61, v62))
        {
          goto LABEL_164;
        }

        v40 += v61 - v62;
      }

      v29 = __OFSUB__(v74, v61);
      v63 = v74 - v61;
      if (v29)
      {
        goto LABEL_159;
      }

      v64 = sub_1DB09CD64();
      if (v64 >= v63)
      {
        v43 = v63;
      }

      else
      {
        v43 = v64;
      }

      if (!v38)
      {
        goto LABEL_183;
      }

      if (!v40)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_155;
      }

      v40 = sub_1DB09CD44();
      if (v40)
      {
        v41 = sub_1DB09CD74();
        if (__OFSUB__(v7, v41))
        {
          goto LABEL_165;
        }

        v40 += v7 - v41;
      }

      v42 = sub_1DB09CD64();
      v43 = (v7 >> 32) - v7;
      if (v42 < v76)
      {
        v43 = v42;
      }

      if (!v38)
      {
        goto LABEL_179;
      }

      if (!v40)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v38 == v40)
      {
        goto LABEL_184;
      }

      v69 = memcmp(v38, v40, v43);
      result = sub_1DAF40780(v20, v19);
      v10 = v78;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_170;
    }

LABEL_139:
    v60 = __s1;
    v59 = v38;
    v55 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v14)
  {
LABEL_97:
    __s2 = v7;
    v85 = a2;
    v86 = BYTE2(a2);
    v87 = BYTE3(a2);
    v88 = BYTE4(a2);
    v89 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v14 == 2)
  {
    v48 = *(v7 + 16);
    v47 = *(v7 + 24);
    sub_1DAF40674(v20, v19);
    v33 = sub_1DB09CD44();
    if (v33)
    {
      v49 = sub_1DB09CD74();
      if (__OFSUB__(v48, v49))
      {
        goto LABEL_163;
      }

      v33 += v48 - v49;
    }

    v29 = __OFSUB__(v47, v48);
    v50 = v47 - v48;
    if (v29)
    {
      goto LABEL_154;
    }

    v51 = sub_1DB09CD64();
    v10 = v78;
    if (!v33)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v77 < v7)
  {
    goto LABEL_153;
  }

  sub_1DAF40674(v20, v19);
  v56 = sub_1DB09CD44();
  if (v56)
  {
    v57 = v56;
    v58 = sub_1DB09CD74();
    if (__OFSUB__(v7, v58))
    {
      goto LABEL_157;
    }

    v33 = v7 - v58 + v57;
    v34 = sub_1DB09CD64();
    if (!v33)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  sub_1DB09CD64();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  sub_1DB09CD64();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_1DAF40780(v20, v19);
LABEL_185:
  result = sub_1DB09E2D4();
  __break(1u);
  return result;
}

void sub_1DB082AD4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DB02030C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DB020AE0();
      goto LABEL_12;
    }

    sub_1DB083370(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1DB09DC24();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1DB09DC34();

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
  sub_1DB09E2D4();
  __break(1u);
}

uint64_t sub_1DB082C44(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DB020534(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1DB020C30();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1DB083584(v5 + 1, &qword_1ECC0F508, &qword_1DB0B2730);
  }

  v8 = *v3;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v4);
  result = sub_1DB09E3E4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DB09E2D4();
  __break(1u);
  return result;
}

uint64_t sub_1DB082DA0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DB020548(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1DB020C44();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1DB083584(v5 + 1, &qword_1ECC0F510, &qword_1DB0B2738);
  }

  v8 = *v3;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v4);
  result = sub_1DB09E3E4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DB09E2D4();
  __break(1u);
  return result;
}

uint64_t sub_1DB082EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4F8, &unk_1DB0B2720);
  result = sub_1DB09DDD4();
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
      sub_1DB09E3A4();

      sub_1DB09D794();
      result = sub_1DB09E3E4();
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

uint64_t sub_1DB083134(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F500, &qword_1DB0BB1B0);
  result = sub_1DB09DDD4();
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
      sub_1DB09E3A4();
      sub_1DAF40674(v18, v19);
      sub_1DB09D044();
      result = sub_1DB09E3E4();
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

uint64_t sub_1DB083370(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4E8, &unk_1DB0B2700);
  result = sub_1DB09DDD4();
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
      result = sub_1DB09DC24();
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

uint64_t sub_1DB083584(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DB09DDD4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_1DB09E3A4();
      MEMORY[0x1E1280A80](v18);
      result = sub_1DB09E3E4();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1DB08379C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E1280A80](v3);
  if (v3)
  {
    v5 = a2 + 89;
    do
    {
      v6 = *(v5 - 41);
      v7 = *(v5 - 33);
      v8 = *(v5 - 25);
      v9 = *(v5 - 17);
      v10 = *(v5 - 9);
      v11 = *(v5 - 1);

      sub_1DB042B1C(v6, v7, v8);
      sub_1DB09D794();
      if (v8)
      {
        MEMORY[0x1E1280A80](1);
        sub_1DB09D794();
      }

      else
      {
        MEMORY[0x1E1280A80](0);
        sub_1DB09D794();
      }

      sub_1DB09D794();

      MEMORY[0x1E1280A80](v9);
      sub_1DB09E3C4();
      if (!v11)
      {
        MEMORY[0x1E1280A80](v10);
      }

      sub_1DB09E3C4();

      result = sub_1DB041AD8(v6, v7, v8);
      v5 += 64;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DB083D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding(0);
  v67 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFF8, &qword_1DB0BB0C0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v12);
  v65 = (&v58 - v16);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v61 = a1;
  v62 = v9;
  v17 = 0;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v59 = (v21 + 63) >> 6;
  v60 = v19;
  v24 = &qword_1ECC10000;
  v25 = &qword_1DB0BB0C8;
  while (v23)
  {
    v26 = __clz(__rbit64(v23));
    v27 = (v23 - 1) & v23;
    v28 = v26 | (v17 << 6);
LABEL_16:
    v33 = (*(v61 + 48) + 16 * v28);
    v34 = *v33;
    v35 = v33[1];
    v36 = v63;
    sub_1DB08E6B0(*(v61 + 56) + *(v67 + 72) * v28, v63, type metadata accessor for AnyODIKnownBinding);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v38 = *(v37 + 48);
    *v14 = v34;
    v14[1] = v35;
    sub_1DB08E91C(v36, v14 + v38, type metadata accessor for AnyODIKnownBinding);
    (*(*(v37 - 8) + 56))(v14, 0, 1, v37);

LABEL_17:
    v39 = v65;
    sub_1DAF624E8(v14, v65, &qword_1ECC0FFF8, &qword_1DB0BB0C0);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
    v66 = v41 == 1;
    if (v41 == 1)
    {
      return v66;
    }

    v42 = v27;
    v43 = v25;
    v44 = v24;
    v45 = v14;
    v46 = *(v40 + 48);
    v47 = v39;
    v49 = *v39;
    v48 = v39[1];
    v50 = v62;
    sub_1DB08E91C(v47 + v46, v62, type metadata accessor for AnyODIKnownBinding);
    v51 = sub_1DAF35210(v49, v48);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      sub_1DB08E718(v50, type metadata accessor for AnyODIKnownBinding);
      return 0;
    }

    v54 = *(a2 + 56) + *(v67 + 72) * v51;
    v55 = v64;
    sub_1DB08E6B0(v54, v64, type metadata accessor for AnyODIKnownBinding);
    v56 = sub_1DB0857B0(v55, v50);
    sub_1DB08E718(v55, type metadata accessor for AnyODIKnownBinding);
    result = sub_1DB08E718(v50, type metadata accessor for AnyODIKnownBinding);
    v14 = v45;
    v24 = v44;
    v25 = v43;
    v23 = v42;
    if ((v56 & 1) == 0)
    {
      return v66;
    }
  }

  if (v59 <= v17 + 1)
  {
    v29 = v17 + 1;
  }

  else
  {
    v29 = v59;
  }

  v30 = v29 - 1;
  while (1)
  {
    v31 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v31 >= v59)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      (*(*(v57 - 8) + 56))(v14, 1, 1, v57);
      v27 = 0;
      v17 = v30;
      goto LABEL_17;
    }

    v32 = *(v60 + 8 * v31);
    ++v17;
    if (v32)
    {
      v27 = (v32 - 1) & v32;
      v28 = __clz(__rbit64(v32)) | (v31 << 6);
      v17 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB084210(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = type metadata accessor for AnyODIKnownBinding(0);
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFF8, &qword_1DB0BB0C0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v41 = a2;

  v17 = 0;
  v18 = 0;
  v39 = v8;
  if (v14)
  {
    while (1)
    {
      v43 = v17;
      v19 = v18;
LABEL_12:
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v22 = v21 | (v19 << 6);
      v23 = (*(v41 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = v44;
      sub_1DB08E6B0(*(v41 + 56) + *(v40 + 72) * v22, v44, type metadata accessor for AnyODIKnownBinding);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
      v28 = *(v27 + 48);
      v29 = v39;
      *v39 = v24;
      *(v29 + 1) = v25;
      v30 = v29;
      sub_1DB08E91C(v26, &v29[v28], type metadata accessor for AnyODIKnownBinding);
      (*(*(v27 - 8) + 56))(v30, 0, 1, v27);

      v45 = v19;
      v8 = v30;
      v17 = v43;
LABEL_13:
      sub_1DAF624E8(v8, v10, &qword_1ECC0FFF8, &qword_1DB0BB0C0);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
      if ((*(*(v31 - 8) + 48))(v10, 1, v31) == 1)
      {
        break;
      }

      v32 = v8;
      v33 = v44;
      sub_1DB08E91C(&v10[*(v31 + 48)], v44, type metadata accessor for AnyODIKnownBinding);
      v34 = *(v42 + 48);
      v46[2] = *(v42 + 32);
      v46[3] = v34;
      v47 = *(v42 + 64);
      v35 = *(v42 + 16);
      v46[0] = *v42;
      v46[1] = v35;
      sub_1DB09D794();

      sub_1DB059844(v46);
      v36 = v33;
      v8 = v32;
      sub_1DB08E718(v36, type metadata accessor for AnyODIKnownBinding);
      result = sub_1DB09E3E4();
      v17 ^= result;
      v18 = v45;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1E1280A80](v17);
  }

  else
  {
LABEL_5:
    if (v15 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v15;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        v45 = v20 - 1;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
        (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        v43 = v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB08463C(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 16 * v13 + 8);
      sub_1DAF403FC(*(a2 + 56) + 40 * v13, &v20);
      v18 = v20;
      v19 = v21;
      v15 = v22;

      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v25[0] = v18;
      v25[1] = v19;
      v26 = v15;
      v16 = a1[3];
      v22 = a1[2];
      v23 = v16;
      v24 = *(a1 + 8);
      v17 = a1[1];
      v20 = *a1;
      v21 = v17;
      sub_1DB09D794();

      sub_1DB09DDA4();
      sub_1DAF4057C(v25);
      result = sub_1DB09E3E4();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1E1280A80](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1DB0847BC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  v10 = a1[6];
  v11 = a1[7];
  v12 = *(a1 + 64);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 40);
  v19 = *(a2 + 48);
  v18 = *(a2 + 56);
  v20 = *(a2 + 64);
  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v14 != 213)
        {
          return 0;
        }
      }

      else if (v14 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 211)
    {
      if (v14 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 212)
    {
      if (v14 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v14 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v14 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v14 != 215)
      {
        return 0;
      }
    }

    else if (v14 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 217)
  {
    if (v14 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 218)
  {
    if (v14 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 != 219)
  {
    goto LABEL_29;
  }

  if (v14 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != *a2 || v5 != v13)
    {
      v30 = *(a2 + 64);
      v31 = v12;
      v21 = *(a2 + 48);
      v22 = *(a2 + 56);
      v23 = v11;
      v24 = v10;
      v25 = *(a2 + 40);
      v26 = sub_1DB09E254();
      v17 = v25;
      v10 = v24;
      v11 = v23;
      v18 = v22;
      v19 = v21;
      v20 = v30;
      v12 = v31;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v9 <= 214)
  {
    if (v9 > 212)
    {
      if (v9 == 213)
      {
        if (v17 != 213)
        {
          return 0;
        }
      }

      else if (v17 != 214)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 211)
    {
      if (v17 != 211)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 212)
    {
      if (v17 != 212)
      {
        return 0;
      }

      goto LABEL_69;
    }

LABEL_67:
    if ((v17 - 211) < 9 || qword_1DB0BD040[v9 ^ 0x80] != qword_1DB0BD040[v17 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 <= 216)
  {
    if (v9 == 215)
    {
      if (v17 != 215)
      {
        return 0;
      }
    }

    else if (v17 != 216)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 217)
  {
    if (v17 != 217)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 218)
  {
    if (v17 != 218)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 != 219)
  {
    goto LABEL_67;
  }

  if (v17 != 219)
  {
    return 0;
  }

LABEL_69:
  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v7 != v16 || v8 != v15)
    {
      v28 = v10;
      v29 = sub_1DB09E254();
      v10 = v28;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v12 <= 214)
  {
    if (v12 > 212)
    {
      if (v12 == 213)
      {
        if (v20 != 213)
        {
          return 0;
        }
      }

      else if (v20 != 214)
      {
        return 0;
      }

      goto LABEL_106;
    }

    if (v12 == 211)
    {
      if (v20 != 211)
      {
        return 0;
      }

      goto LABEL_106;
    }

    if (v12 == 212)
    {
      if (v20 != 212)
      {
        return 0;
      }

      goto LABEL_106;
    }

LABEL_104:
    if ((v20 - 211) < 9 || qword_1DB0BD040[v12 ^ 0x80] != qword_1DB0BD040[v20 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_106;
  }

  if (v12 <= 216)
  {
    if (v12 == 215)
    {
      if (v20 != 215)
      {
        return 0;
      }
    }

    else if (v20 != 216)
    {
      return 0;
    }

    goto LABEL_106;
  }

  if (v12 == 217)
  {
    if (v20 != 217)
    {
      return 0;
    }

    goto LABEL_106;
  }

  if (v12 == 218)
  {
    if (v20 != 218)
    {
      return 0;
    }

    goto LABEL_106;
  }

  if (v12 != 219)
  {
    goto LABEL_104;
  }

  if (v20 != 219)
  {
    return 0;
  }

LABEL_106:
  if (!v11)
  {
    return !v18;
  }

  return v18 && (v10 == v19 && v11 == v18 || (sub_1DB09E254() & 1) != 0);
}

uint64_t sub_1DB084C0C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  v10 = a1[5];
  v11 = a1[6];
  v12 = *(a1 + 56);
  v13 = *(a2 + 9);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = *(a2 + 56);
  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v13 != 213)
        {
          return 0;
        }
      }

      else if (v13 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 211)
    {
      if (v13 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 212)
    {
      if (v13 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v13 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v13 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v13 != 215)
      {
        return 0;
      }
    }

    else if (v13 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 217)
  {
    if (v13 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 218)
  {
    if (v13 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 != 219)
  {
    goto LABEL_29;
  }

  if (v13 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *a2)
    {
      v20 = *(a2 + 8);
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (v9 <= 214)
  {
    if (v9 > 212)
    {
      if (v9 == 213)
      {
        if (v16 != 213)
        {
          return 0;
        }
      }

      else if (v16 != 214)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 211)
    {
      if (v16 != 211)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 212)
    {
      if (v16 != 212)
      {
        return 0;
      }

      goto LABEL_69;
    }

LABEL_67:
    if ((v16 - 211) < 9 || qword_1DB0BD040[v9 ^ 0x80] != qword_1DB0BD040[v16 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 <= 216)
  {
    if (v9 == 215)
    {
      if (v16 != 215)
      {
        return 0;
      }
    }

    else if (v16 != 216)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 217)
  {
    if (v16 != 217)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 218)
  {
    if (v16 != 218)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 != 219)
  {
    goto LABEL_67;
  }

  if (v16 != 219)
  {
    return 0;
  }

LABEL_69:
  if (!v8)
  {
    if (!v15)
    {
      goto LABEL_76;
    }

    return 0;
  }

  if (!v15 || (v7 != v14 || v8 != v15) && (sub_1DB09E254() & 1) == 0)
  {
    return 0;
  }

LABEL_76:

  return sub_1DB055D08(v10, v11, v12, v17, v18, v19);
}

uint64_t sub_1DB084EF0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  v10 = a1[6];
  v11 = a1[7];
  v12 = *(a1 + 64);
  v13 = *(a1 + 65);
  v14 = *(a1 + 66);
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v18 = *(a2 + 24);
  v17 = *(a2 + 32);
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a2 + 64);
  v23 = *(a2 + 65);
  v24 = *(a2 + 66);
  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v16 != 213)
        {
          return 0;
        }
      }

      else if (v16 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 211)
    {
      if (v16 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 212)
    {
      if (v16 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v16 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v16 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v16 != 215)
      {
        return 0;
      }
    }

    else if (v16 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 217)
  {
    if (v16 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 218)
  {
    if (v16 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 != 219)
  {
    goto LABEL_29;
  }

  if (v16 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != *a2 || v5 != v15)
    {
      v44 = *(a2 + 48);
      v45 = *(a2 + 56);
      v42 = *(a2 + 65);
      v43 = *(a2 + 66);
      v41 = v12;
      v40 = v11;
      v25 = v10;
      v26 = v14;
      v27 = v13;
      v28 = *(a2 + 64);
      v29 = v7;
      v30 = v8;
      v31 = *(a2 + 32);
      v32 = *(a2 + 24);
      v33 = *(a2 + 40);
      v34 = sub_1DB09E254();
      v19 = v33;
      v18 = v32;
      v17 = v31;
      v8 = v30;
      v7 = v29;
      v22 = v28;
      v13 = v27;
      v14 = v26;
      v10 = v25;
      v11 = v40;
      v12 = v41;
      v23 = v42;
      v24 = v43;
      v20 = v44;
      v21 = v45;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9 <= 214)
  {
    if (v9 > 212)
    {
      if (v9 == 213)
      {
        if (v19 != 213)
        {
          return 0;
        }
      }

      else if (v19 != 214)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 211)
    {
      if (v19 != 211)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 212)
    {
      if (v19 != 212)
      {
        return 0;
      }

      goto LABEL_69;
    }

LABEL_67:
    if ((v19 - 211) < 9 || qword_1DB0BD040[v9 ^ 0x80] != qword_1DB0BD040[v19 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 <= 216)
  {
    if (v9 == 215)
    {
      if (v19 != 215)
      {
        return 0;
      }
    }

    else if (v19 != 216)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 217)
  {
    if (v19 != 217)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 218)
  {
    if (v19 != 218)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 != 219)
  {
    goto LABEL_67;
  }

  if (v19 != 219)
  {
    return 0;
  }

LABEL_69:
  if (!v8)
  {
    if (!v17)
    {
      goto LABEL_76;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  if (v7 != v18 || v8 != v17)
  {
    v36 = v13;
    v37 = v22;
    v38 = sub_1DB09E254();
    v22 = v37;
    v13 = v36;
    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_76:
  v39 = v13;
  if ((sub_1DB055D08(v10, v11, v12, v20, v21, v22) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB055E54(v39 | (v14 << 8), v23 | (v24 << 8));
}

uint64_t sub_1DB0852AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (a1[1] <= 0xD6u)
  {
    if (a1[1] > 0xD4u)
    {
      if (v3 == 213)
      {
        if (v5 != 213)
        {
          return 0;
        }

        goto LABEL_33;
      }

      if (v3 == 214)
      {
        if (v5 != 214)
        {
          return 0;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (v3 == 211)
      {
        if (v5 != 211)
        {
          return 0;
        }

        goto LABEL_33;
      }

      if (v3 == 212)
      {
        if (v5 != 212)
        {
          return 0;
        }

        goto LABEL_33;
      }
    }

LABEL_31:
    if ((v5 - 211) < 9 || qword_1DB0BD040[v3 ^ 0x80] != qword_1DB0BD040[v5 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (a1[1] <= 0xD8u)
  {
    if (v3 == 215)
    {
      if (v5 != 215)
      {
        return 0;
      }

      goto LABEL_33;
    }

    if (v3 == 216)
    {
      if (v5 != 216)
      {
        return 0;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v3 == 217)
  {
    if (v5 != 217)
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v3 == 218)
  {
    if (v5 != 218)
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v3 != 219)
  {
    goto LABEL_31;
  }

  if (v5 != 219)
  {
    return 0;
  }

LABEL_33:
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else if (v4 == 2 || ((v2 ^ v4) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

BOOL sub_1DB0853E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v74 = *(a1 + 17);
  v73 = *(a1 + 18);
  v7 = a1[3];
  v69 = *(a1 + 32);
  v68 = *(a1 + 33);
  v8 = a1[5];
  v9 = *(a1 + 48);
  v10 = *(a1 + 49);
  v11 = a1[7];
  v12 = *(a1 + 64);
  v13 = *(a1 + 65);
  v14 = a1[9];
  v15 = *(a1 + 80);
  v16 = *(a1 + 81);
  v17 = a1[11];
  v18 = *(a1 + 96);
  v19 = *(a1 + 97);
  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  v71 = *(a2 + 17);
  v72 = *(a2 + 18);
  v67 = *(a2 + 24);
  v65 = *(a2 + 33);
  v66 = *(a2 + 32);
  v64 = *(a2 + 40);
  v62 = *(a2 + 49);
  v63 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *(a2 + 72);
  v24 = *(a2 + 80);
  v25 = *(a2 + 81);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  v28 = *(a2 + 97);
  v60 = *(a2 + 65);
  v61 = *(a2 + 64);
  v70 = v7;
  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v21 != 213)
        {
          return 0;
        }
      }

      else if (v21 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 211)
    {
      if (v21 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 212)
    {
      if (v21 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v21 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v21 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v21 != 215)
      {
        return 0;
      }
    }

    else if (v21 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 217)
  {
    if (v21 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 218)
  {
    if (v21 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 != 219)
  {
    goto LABEL_29;
  }

  if (v21 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if (!v20)
    {
      return 0;
    }

    if (v4 != *a2 || v5 != v20)
    {
      v46 = v8;
      v51 = *(a2 + 88);
      v49 = v15;
      v50 = v16;
      v48 = v14;
      v47 = v19;
      v44 = v10;
      v45 = v18;
      v29 = v17;
      v30 = *(a2 + 96);
      v43 = v11;
      v31 = v12;
      v32 = v13;
      v33 = *(a2 + 72);
      v34 = *(a2 + 80);
      v35 = *(a2 + 81);
      v36 = v9;
      v37 = sub_1DB09E254();
      v9 = v36;
      v25 = v35;
      v8 = v46;
      v24 = v34;
      v23 = v33;
      v13 = v32;
      v12 = v31;
      v11 = v43;
      v27 = v30;
      v17 = v29;
      v10 = v44;
      v18 = v45;
      v19 = v47;
      v14 = v48;
      v15 = v49;
      v16 = v50;
      v26 = v51;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v58 = v13;
  v59 = v12;
  v55 = v25;
  v56 = v23;
  v57 = v24;
  v52 = v27;
  v53 = v28;
  v54 = v17;
  v38 = v11;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  if ((sub_1DB055E54(v74 | (v73 << 8), v71 | (v72 << 8)) & 1) == 0 || !sub_1DB0560B4(v70, v69 | (v68 << 8), v67, v66 | (v65 << 8)) || !sub_1DB0560B4(v39, v40 | (v41 << 8), v64, v63 | (v62 << 8)) || !sub_1DB0560B4(v38, v59 | (v58 << 8), v22, v61 | (v60 << 8)) || !sub_1DB0560B4(v14, v15 | (v16 << 8), v56, v57 | (v55 << 8)))
  {
    return 0;
  }

  return sub_1DB0560B4(v54, v18 | (v19 << 8), v26, v52 | (v53 << 8));
}

uint64_t sub_1DB0857B0(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v2 = sub_1DB09D154();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v43 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v43 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v43 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v43 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v43 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10008, &qword_1DB0BB0D0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v43 - v24;
  v26 = (&v43 + *(v23 + 56) - v24);
  sub_1DB08E6B0(v47, &v43 - v24, type metadata accessor for AnyODIKnownBinding.BindingContent);
  sub_1DB08E6B0(v48, v26, type metadata accessor for AnyODIKnownBinding.BindingContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1DB08E6B0(v25, v19, type metadata accessor for AnyODIKnownBinding.BindingContent);
        v34 = *v19;
        v33 = v19[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          if (v34 == *v26 && v33 == v26[1])
          {
          }

          else
          {
            v36 = sub_1DB09E254();

            if ((v36 & 1) == 0)
            {
              sub_1DB08E718(v25, type metadata accessor for AnyODIKnownBinding.BindingContent);
LABEL_34:
              v31 = 0;
              return v31 & 1;
            }
          }

          goto LABEL_37;
        }

LABEL_33:
        sub_1DAF40AEC(v25, &qword_1ECC10008, &qword_1DB0BB0D0);
        goto LABEL_34;
      }

      sub_1DB08E6B0(v25, v16, type metadata accessor for AnyODIKnownBinding.BindingContent);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_33;
      }

      v40 = *v16 == *v26;
    }

    else
    {
      sub_1DB08E6B0(v25, v21, type metadata accessor for AnyODIKnownBinding.BindingContent);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_33;
      }

      v40 = *v21 == *v26;
    }

    v31 = v40;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_1DB08E6B0(v25, v7, type metadata accessor for AnyODIKnownBinding.BindingContent);
      v37 = *v7;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v38 = *(v37 + 16);
        v39 = *(*v26 + 16);

        v31 = sub_1DB07E820(v38, v39);

        goto LABEL_25;
      }

      goto LABEL_33;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
LABEL_37:
      sub_1DB08E718(v25, type metadata accessor for AnyODIKnownBinding.BindingContent);
      v31 = 1;
      return v31 & 1;
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1DB08E6B0(v25, v10, type metadata accessor for AnyODIKnownBinding.BindingContent);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v41 = *v10 ^ *v26;
      sub_1DB08E718(v25, type metadata accessor for AnyODIKnownBinding.BindingContent);
      v31 = v41 ^ 1;
      return v31 & 1;
    }

    goto LABEL_33;
  }

  sub_1DB08E6B0(v25, v13, type metadata accessor for AnyODIKnownBinding.BindingContent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v45 + 8))(v13, v46);
    goto LABEL_33;
  }

  v29 = v44;
  v28 = v45;
  v30 = v46;
  (*(v45 + 32))(v44, v26, v46);
  v31 = sub_1DB09D114();
  v32 = *(v28 + 8);
  v32(v29, v30);
  v32(v13, v30);
LABEL_25:
  sub_1DB08E718(v25, type metadata accessor for AnyODIKnownBinding.BindingContent);
  return v31 & 1;
}

BOOL sub_1DB085D68(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v5 <= 214)
  {
    if (v5 > 212)
    {
      if (v5 == 213)
      {
        if (v7 != 213)
        {
          return 0;
        }
      }

      else if (v7 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v5 == 211)
    {
      if (v7 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v5 == 212)
    {
      if (v7 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v7 - 211) < 9 || qword_1DB0BD040[v5 ^ 0x80] != qword_1DB0BD040[v7 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v5 <= 216)
  {
    if (v5 == 215)
    {
      if (v7 != 215)
      {
        return 0;
      }
    }

    else if (v7 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v5 == 217)
  {
    if (v7 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v5 == 218)
  {
    if (v7 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v5 != 219)
  {
    goto LABEL_29;
  }

  if (v7 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v4)
  {
    return v6 && (sub_1DB083D44(v4, v6) & 1) != 0;
  }

  return !v6;
}

uint64_t sub_1DB085EB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v2 = *(a2 + 32);
  v4 = *(a2 + 40);
  v67 = *(a2 + 56);
  v68 = *(a2 + 48);
  v66 = *(a2 + 64);
  v64 = *(a2 + 80);
  v65 = *(a2 + 72);
  v63 = *(a2 + 88);
  v59 = *(a2 + 104);
  v60 = *(a2 + 96);
  v58 = *(a2 + 112);
  v53 = *(a2 + 128);
  v54 = *(a2 + 120);
  v52 = *(a2 + 136);
  v48 = *(a2 + 144);
  v47 = *(a2 + 152);
  v46 = *(a2 + 160);
  v41 = *(a2 + 176);
  v42 = *(a2 + 168);
  v40 = *(a2 + 184);
  v35 = *(a2 + 200);
  v36 = *(a2 + 192);
  v34 = *(a2 + 208);
  v29 = *(a2 + 224);
  v30 = *(a2 + 216);
  v28 = *(a2 + 232);
  v23 = *(a2 + 248);
  v24 = *(a2 + 240);
  v22 = *(a2 + 256);
  v17 = *(a2 + 272);
  v18 = *(a2 + 264);
  v16 = *(a2 + 280);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v62 = *(a1 + 80);
  v61 = *(a1 + 88);
  v56 = *(a1 + 104);
  v57 = *(a1 + 96);
  v55 = *(a1 + 112);
  v50 = *(a1 + 128);
  v51 = *(a1 + 120);
  v49 = *(a1 + 136);
  v44 = *(a1 + 152);
  v45 = *(a1 + 144);
  v43 = *(a1 + 160);
  v38 = *(a1 + 176);
  v39 = *(a1 + 168);
  v37 = *(a1 + 184);
  v32 = *(a1 + 200);
  v33 = *(a1 + 192);
  v31 = *(a1 + 208);
  v26 = *(a1 + 224);
  v27 = *(a1 + 216);
  v25 = *(a1 + 232);
  v20 = *(a1 + 248);
  v21 = *(a1 + 240);
  v19 = *(a1 + 256);
  v14 = *(a1 + 272);
  v15 = *(a1 + 264);
  v13 = *(a1 + 280);
  if ((sub_1DB055D08(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0 || (sub_1DB055D08(v6, v5, v7, v3, v2, v4) & 1) == 0 || (sub_1DB055D08(v9, v8, v10, v68, v67, v66) & 1) == 0 || (sub_1DB055D08(v11, v62, v61, v65, v64, v63) & 1) == 0 || (sub_1DB055D08(v57, v56, v55, v60, v59, v58) & 1) == 0 || (sub_1DB055D08(v51, v50, v49, v54, v53, v52) & 1) == 0 || (sub_1DB055D08(v45, v44, v43, v48, v47, v46) & 1) == 0 || (sub_1DB055D08(v39, v38, v37, v42, v41, v40) & 1) == 0 || (sub_1DB055D08(v33, v32, v31, v36, v35, v34) & 1) == 0 || (sub_1DB055D08(v27, v26, v25, v30, v29, v28) & 1) == 0 || (sub_1DB055D08(v21, v20, v19, v24, v23, v22) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB055D08(v15, v14, v13, v18, v17, v16);
}

uint64_t sub_1DB0861A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 1);
  v8 = *(a1 + 3);
  v9 = a1[32];
  v10 = a1[33];
  v11 = a1[34];
  v12 = a1[35];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = *(a2 + 3);
  v18 = a2[32];
  v19 = a2[33];
  v20 = a2[34];
  v21 = a2[35];
  if (v4 <= 214)
  {
    if (v4 > 212)
    {
      if (v4 == 213)
      {
        if (v14 != 213)
        {
          return 0;
        }
      }

      else if (v14 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v4 == 211)
    {
      if (v14 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v4 == 212)
    {
      if (v14 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v14 - 211) < 9 || qword_1DB0BD040[v4 ^ 0x80] != qword_1DB0BD040[v14 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 <= 216)
  {
    if (v4 == 215)
    {
      if (v14 != 215)
      {
        return 0;
      }
    }

    else if (v14 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 == 217)
  {
    if (v14 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 == 218)
  {
    if (v14 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 != 219)
  {
    goto LABEL_29;
  }

  if (v14 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v3 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v3 ^ v13) & 1) != 0)
  {
    return 0;
  }

  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v16 != 213)
        {
          return 0;
        }
      }

      else if (v16 != 214)
      {
        return 0;
      }

      goto LABEL_66;
    }

    if (v6 == 211)
    {
      if (v16 != 211)
      {
        return 0;
      }

      goto LABEL_66;
    }

    if (v6 == 212)
    {
      if (v16 != 212)
      {
        return 0;
      }

      goto LABEL_66;
    }

LABEL_64:
    if ((v16 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v16 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_66;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v16 != 215)
      {
        return 0;
      }
    }

    else if (v16 != 216)
    {
      return 0;
    }

    goto LABEL_66;
  }

  if (v6 == 217)
  {
    if (v16 != 217)
    {
      return 0;
    }

    goto LABEL_66;
  }

  if (v6 == 218)
  {
    if (v16 != 218)
    {
      return 0;
    }

    goto LABEL_66;
  }

  if (v6 != 219)
  {
    goto LABEL_64;
  }

  if (v16 != 219)
  {
    return 0;
  }

LABEL_66:
  if (v5 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v5 ^ v15) & 1) != 0)
  {
    return 0;
  }

  if ((sub_1DB055FA0(v7, a1[16] | (a1[17] << 8), *(a2 + 1), a2[16] | (a2[17] << 8)) & 1) == 0 || (sub_1DB055FA0(v8, v9 | (v10 << 8), v17, v18 | (v19 << 8)) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB055E54(v11 | (v12 << 8), v20 | (v21 << 8));
}

BOOL sub_1DB0864E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v44 = *(a1 + 32);
  v42 = *(a1 + 41);
  v43 = *(a1 + 40);
  v40 = *(a1 + 48);
  v38 = *(a1 + 57);
  v39 = *(a1 + 56);
  v36 = *(a1 + 64);
  v34 = *(a1 + 73);
  v35 = *(a1 + 72);
  v30 = *(a1 + 80);
  v28 = *(a1 + 89);
  v29 = *(a1 + 88);
  v24 = *(a1 + 96);
  v22 = *(a1 + 105);
  v23 = *(a1 + 104);
  v18 = *(a1 + 112);
  v16 = *(a1 + 121);
  v17 = *(a1 + 120);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  v41 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 41);
  v37 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 57);
  v33 = *(a2 + 64);
  v31 = *(a2 + 73);
  v32 = *(a2 + 72);
  v27 = *(a2 + 80);
  v25 = *(a2 + 89);
  v26 = *(a2 + 88);
  v21 = *(a2 + 96);
  v19 = *(a2 + 105);
  v20 = *(a2 + 104);
  v15 = *(a2 + 112);
  v13 = *(a2 + 121);
  v14 = *(a2 + 120);
  if (!sub_1DB0560B4(*a1, *(a1 + 8) | (*(a1 + 9) << 8), *a2, *(a2 + 8) | (*(a2 + 9) << 8)) || !sub_1DB0560B4(v2, v3 | (v4 << 8), v5, v6 | (v7 << 8)) || !sub_1DB0560B4(v44, v43 | (v42 << 8), v41, v8 | (v9 << 8)) || !sub_1DB0560B4(v40, v39 | (v38 << 8), v37, v10 | (v11 << 8)) || !sub_1DB0560B4(v36, v35 | (v34 << 8), v33, v32 | (v31 << 8)) || !sub_1DB0560B4(v30, v29 | (v28 << 8), v27, v26 | (v25 << 8)) || !sub_1DB0560B4(v24, v23 | (v22 << 8), v21, v20 | (v19 << 8)))
  {
    return 0;
  }

  return sub_1DB0560B4(v18, v17 | (v16 << 8), v15, v14 | (v13 << 8));
}

uint64_t sub_1DB086758(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 9);
  if (*(a1 + 9) <= 0xD6u)
  {
    if (*(a1 + 9) > 0xD4u)
    {
      if (v2 == 213)
      {
        if (v3 != 213)
        {
          return 0;
        }

        goto LABEL_33;
      }

      if (v2 == 214)
      {
        if (v3 != 214)
        {
          return 0;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (v2 == 211)
      {
        if (v3 != 211)
        {
          return 0;
        }

        goto LABEL_33;
      }

      if (v2 == 212)
      {
        if (v3 != 212)
        {
          return 0;
        }

        goto LABEL_33;
      }
    }

LABEL_31:
    if ((v3 - 211) < 9 || qword_1DB0BD040[v2 ^ 0x80] != qword_1DB0BD040[v3 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (*(a1 + 9) <= 0xD8u)
  {
    if (v2 == 215)
    {
      if (v3 != 215)
      {
        return 0;
      }

      goto LABEL_33;
    }

    if (v2 == 216)
    {
      if (v3 != 216)
      {
        return 0;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v2 == 217)
  {
    if (v3 != 217)
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v2 == 218)
  {
    if (v3 != 218)
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v2 != 219)
  {
    goto LABEL_31;
  }

  if (v3 != 219)
  {
    return 0;
  }

LABEL_33:
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v5 = *(a2 + 8);
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

  return 1;
}

uint64_t _s17CoreODIEssentials16ArmandDeviceDataV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *v1;
  v6 = *(v1 + 24);
  v7 = *(v1 + 56);
  v151[2] = *(v1 + 40);
  v151[3] = v7;
  v152 = *(v1 + 72);
  v8 = *(v1 + 8);
  v151[1] = v6;
  v151[0] = v8;
  v128 = *(v1 + 88);
  v129 = *(v1 + 80);
  v127 = *(v1 + 96);
  v125 = *(v1 + 112);
  v126 = *(v1 + 104);
  v124 = *(v1 + 120);
  v120 = *(v1 + 136);
  v121 = *(v1 + 128);
  v119 = *(v1 + 144);
  v115 = *(v1 + 152);
  v114 = *(v1 + 160);
  v113 = *(v1 + 161);
  v108 = *(v1 + 176);
  v109 = *(v1 + 168);
  v107 = *(v1 + 184);
  *(v155 + 9) = *(v1 + 233);
  v9 = *(v1 + 208);
  v155[0] = *(v1 + 224);
  v10 = *(v1 + 192);
  v154 = v9;
  v153 = v10;
  *(v159 + 15) = *(v1 + 319);
  v11 = *(v1 + 288);
  v159[0] = *(v1 + 304);
  v158 = v11;
  v12 = *(v1 + 272);
  v156 = *(v1 + 256);
  v157 = v12;
  v103 = *(v1 + 328);
  v102 = *(v1 + 344);
  v98 = *(v1 + 346);
  v99 = *(v1 + 345);
  v94 = *(v1 + 360);
  v95 = *(v1 + 352);
  v93 = *(v1 + 368);
  v13 = *(v1 + 376);
  v161 = *(v1 + 392);
  v160 = v13;
  v14 = *(v1 + 408);
  v15 = *(v1 + 424);
  v16 = *(v1 + 440);
  v17 = *(v1 + 456);
  v166 = *(v1 + 472);
  v165 = v17;
  v164 = v16;
  v162 = v14;
  v163 = v15;
  v90 = *(v1 + 480);
  v89 = *(v1 + 488);
  memcpy(__dst, (v1 + 496), 0x119uLL);
  v18 = *(v4 + 800);
  v168 = *(v4 + 784);
  v169 = v18;
  v170 = *(v4 + 816);
  v19 = *(v4 + 904);
  v175 = *(v4 + 888);
  v176 = v19;
  v177[0] = *(v4 + 920);
  *(v177 + 10) = *(v4 + 930);
  v20 = *(v4 + 840);
  v171 = *(v4 + 824);
  v172 = v20;
  v21 = *(v4 + 872);
  v173 = *(v4 + 856);
  v174 = v21;
  v85 = *(v4 + 960);
  v86 = *(v4 + 952);
  v84 = *(v4 + 968);
  v82 = *(v4 + 984);
  v83 = *(v4 + 976);
  v81 = *(v4 + 992);
  v79 = *(v4 + 1008);
  v80 = *(v4 + 1000);
  v78 = *(v4 + 1016);
  v77 = *(v4 + 1024);
  v75 = *(v4 + 1033);
  v76 = *(v4 + 1032);
  v22 = *v3;
  v23 = *(v3 + 8);
  v179 = *(v3 + 72);
  v24 = *(v3 + 40);
  v178[3] = *(v3 + 56);
  v178[2] = v24;
  v25 = *(v3 + 24);
  v178[0] = v23;
  v178[1] = v25;
  v27 = *(v3 + 80);
  v26 = *(v3 + 88);
  v28 = *(v3 + 96);
  v122 = *(v3 + 104);
  v123 = *(v3 + 112);
  v29 = *(v3 + 120);
  v117 = *(v3 + 136);
  v118 = *(v3 + 128);
  v116 = *(v3 + 144);
  v112 = *(v3 + 152);
  v111 = *(v3 + 160);
  v110 = *(v3 + 161);
  v105 = *(v3 + 176);
  v106 = *(v3 + 168);
  v104 = *(v3 + 184);
  v30 = *(v3 + 192);
  v31 = *(v3 + 208);
  v32 = *(v3 + 224);
  *(v182 + 9) = *(v3 + 233);
  v182[0] = v32;
  v181 = v31;
  v180 = v30;
  v33 = *(v3 + 256);
  v34 = *(v3 + 272);
  v35 = *(v3 + 288);
  v36 = *(v3 + 304);
  *(v186 + 15) = *(v3 + 319);
  v186[0] = v36;
  v185 = v35;
  v183 = v33;
  v184 = v34;
  v101 = *(v3 + 328);
  v37 = *(v3 + 376);
  v188 = *(v3 + 392);
  v187 = v37;
  v38 = *(v3 + 408);
  v39 = *(v3 + 424);
  v40 = *(v3 + 440);
  v41 = *(v3 + 456);
  v193 = *(v3 + 472);
  v100 = *(v3 + 344);
  v192 = v41;
  v191 = v40;
  v189 = v38;
  v190 = v39;
  v96 = *(v3 + 346);
  v97 = *(v3 + 345);
  v42 = *(v3 + 352);
  v92 = *(v3 + 360);
  v91 = *(v3 + 368);
  v88 = *(v3 + 480);
  v87 = *(v3 + 488);
  memcpy(__src, (v3 + 496), 0x119uLL);
  v43 = *(v3 + 800);
  v195 = *(v3 + 784);
  v196 = v43;
  v197 = *(v3 + 816);
  v44 = *(v3 + 904);
  v202 = *(v3 + 888);
  v203 = v44;
  v204[0] = *(v3 + 920);
  *(v204 + 10) = *(v3 + 930);
  v45 = *(v3 + 840);
  v198 = *(v3 + 824);
  v199 = v45;
  v46 = *(v3 + 872);
  v200 = *(v3 + 856);
  v201 = v46;
  v47 = *(v3 + 1024);
  if (v5)
  {
    if (!v22)
    {
      goto LABEL_26;
    }

    v72 = *(v3 + 968);
    v73 = *(v3 + 960);
    v74 = *(v3 + 952);
    v69 = *(v3 + 992);
    v70 = *(v3 + 984);
    v71 = *(v3 + 976);
    v65 = *(v3 + 1032);
    v66 = *(v3 + 1016);
    v67 = *(v3 + 1008);
    v68 = *(v3 + 1000);
    v64 = *(v3 + 1033);

    v48 = sub_1DB07EA68(v5, v22);

    if ((v48 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v72 = *(v3 + 968);
    v73 = *(v3 + 960);
    v74 = *(v3 + 952);
    v69 = *(v3 + 992);
    v70 = *(v3 + 984);
    v71 = *(v3 + 976);
    v65 = *(v3 + 1032);
    v66 = *(v3 + 1016);
    v67 = *(v3 + 1008);
    v68 = *(v3 + 1000);
    v64 = *(v3 + 1033);
    if (v22)
    {
LABEL_26:
      v62 = 0;
      return v62 & 1;
    }
  }

  v49 = *(v4 + 24);
  v50 = *(v4 + 56);
  v134[2] = *(v4 + 40);
  v134[3] = v50;
  LOBYTE(v134[4]) = *(v4 + 72);
  v51 = *(v4 + 8);
  v134[1] = v49;
  v134[0] = v51;
  v52 = *(v3 + 24);
  v53 = *(v3 + 56);
  v133[2] = *(v3 + 40);
  v133[3] = v53;
  LOBYTE(v133[4]) = *(v3 + 72);
  v54 = *(v3 + 8);
  v133[1] = v52;
  v133[0] = v54;
  v55 = sub_1DB0847BC(v134, v133);
  v147[2] = v133[2];
  v147[3] = v133[3];
  v148 = v133[4];
  v147[1] = v133[1];
  v147[0] = v133[0];
  sub_1DB08B170(v151, v132);
  sub_1DB08B170(v178, v132);
  sub_1DB08EDEC(v147);
  v149[2] = v134[2];
  v149[3] = v134[3];
  v150 = v134[4];
  v149[1] = v134[1];
  v149[0] = v134[0];
  sub_1DB08EDEC(v149);
  if (!v55)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055D08(v129, v128, v127, v27, v26, v28) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055D08(v126, v125, v124, v122, v123, v29) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055D08(v121, v120, v119, v118, v117, v116) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055FA0(v115, v114 | (v113 << 8), v112, v111 | (v110 << 8)) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055D08(v109, v108, v107, v106, v105, v104) & 1) == 0)
  {
    goto LABEL_26;
  }

  v134[0] = v153;
  v134[1] = v154;
  v134[2] = v155[0];
  *(&v134[2] + 9) = *(v155 + 9);
  v133[0] = v180;
  v133[1] = v181;
  v133[2] = v182[0];
  *(&v133[2] + 9) = *(v182 + 9);
  v56 = sub_1DB084C0C(v134, v133);
  v143[0] = v133[0];
  v143[1] = v133[1];
  v144[0] = v133[2];
  *(v144 + 9) = *(&v133[2] + 9);
  sub_1DB08B1E0(&v153, v132);
  sub_1DB08B1E0(&v180, v132);
  sub_1DB08ECE4(v143);
  v145[0] = v134[0];
  v145[1] = v134[1];
  v146[0] = v134[2];
  *(v146 + 9) = *(&v134[2] + 9);
  sub_1DB08ECE4(v145);
  if ((v56 & 1) == 0)
  {
    goto LABEL_26;
  }

  v134[2] = v158;
  v134[3] = v159[0];
  *(&v134[3] + 15) = *(v159 + 15);
  v134[1] = v157;
  v134[0] = v156;
  v133[2] = v185;
  v133[3] = v186[0];
  *(&v133[3] + 15) = *(v186 + 15);
  v133[1] = v184;
  v133[0] = v183;
  v57 = sub_1DB084EF0(v134, v133);
  v139[2] = v133[2];
  v140[0] = v133[3];
  *(v140 + 15) = *(&v133[3] + 15);
  v139[1] = v133[1];
  v139[0] = v133[0];
  sub_1DB08B218(&v156, v132);
  sub_1DB08B218(&v183, v132);
  sub_1DB08EC60(v139);
  v141[2] = v134[2];
  v142[0] = v134[3];
  *(v142 + 15) = *(&v134[3] + 15);
  v141[1] = v134[1];
  v141[0] = v134[0];
  sub_1DB08EC60(v141);
  if ((v57 & 1) == 0)
  {
    goto LABEL_26;
  }

  v134[0] = v103;
  LOBYTE(v134[1]) = v102;
  v133[0] = v101;
  LOBYTE(v133[1]) = v100;
  v58 = sub_1DAF1F398(v134, v133);

  if ((v58 & 1) == 0)
  {
    goto LABEL_26;
  }

  LOBYTE(v134[0]) = v99;
  BYTE1(v134[0]) = v98;
  LOBYTE(v133[0]) = v97;
  BYTE1(v133[0]) = v96;
  if ((sub_1DB0852AC(v134, v133) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055D08(v95, v94, v93, v42, v92, v91) & 1) == 0)
  {
    goto LABEL_26;
  }

  v134[4] = v164;
  v134[5] = v165;
  LOWORD(v134[6]) = v166;
  v134[0] = v160;
  v134[1] = v161;
  v134[3] = v163;
  v134[2] = v162;
  v133[4] = v191;
  v133[5] = v192;
  LOWORD(v133[6]) = v193;
  v133[0] = v187;
  v133[1] = v188;
  v133[3] = v190;
  v133[2] = v189;
  v59 = sub_1DB0853E8(v134, v133);
  v135[4] = v133[4];
  v135[5] = v133[5];
  v136 = v133[6];
  v135[0] = v133[0];
  v135[1] = v133[1];
  v135[3] = v133[3];
  v135[2] = v133[2];
  sub_1DB08B250(&v160, v132);
  sub_1DB08B250(&v187, v132);
  sub_1DB08EBDC(v135);
  v137[4] = v134[4];
  v137[5] = v134[5];
  v138 = v134[6];
  v137[0] = v134[0];
  v137[1] = v134[1];
  v137[3] = v134[3];
  v137[2] = v134[2];
  sub_1DB08EBDC(v137);
  if (!v59)
  {
    goto LABEL_26;
  }

  *&v134[0] = v90;
  BYTE8(v134[0]) = v89;
  *&v133[0] = v88;
  BYTE8(v133[0]) = v87;

  v60 = sub_1DB085D68(v134, v133);

  if (!v60)
  {
    goto LABEL_26;
  }

  memcpy(v132, __dst, 0x119uLL);
  memcpy(v131, __src, 0x119uLL);
  v61 = sub_1DB085EB0(v132, v131);
  memcpy(v133, v131, 0x119uLL);
  sub_1DB08B298(__dst, v130);
  sub_1DB08B298(__src, v130);
  sub_1DB08EB58(v133);
  memcpy(v134, v132, 0x119uLL);
  sub_1DB08EB58(v134);
  if ((v61 & 1) == 0)
  {
    goto LABEL_26;
  }

  v132[0] = v168;
  v132[1] = v169;
  LODWORD(v132[2]) = v170;
  v131[0] = v195;
  v131[1] = v196;
  LODWORD(v131[2]) = v197;
  if ((sub_1DB0861A4(v132, v131) & 1) == 0)
  {
    goto LABEL_26;
  }

  v132[4] = v175;
  v132[5] = v176;
  v132[6] = v177[0];
  *(&v132[6] + 10) = *(v177 + 10);
  v132[0] = v171;
  v132[1] = v172;
  v132[2] = v173;
  v132[3] = v174;
  v131[4] = v202;
  v131[5] = v203;
  v131[6] = v204[0];
  *(&v131[6] + 10) = *(v204 + 10);
  v131[0] = v198;
  v131[1] = v199;
  v131[2] = v200;
  v131[3] = v201;
  if (!sub_1DB0864E8(v132, v131) || (sub_1DB055D08(v86, v85, v84, v74, v73, v72) & 1) == 0 || (sub_1DB055D08(v83, v82, v81, v71, v70, v69) & 1) == 0 || (sub_1DB055D08(v80, v79, v78, v68, v67, v66) & 1) == 0)
  {
    goto LABEL_26;
  }

  *&v132[0] = v77;
  BYTE8(v132[0]) = v76;
  BYTE9(v132[0]) = v75;
  *&v131[0] = v47;
  BYTE8(v131[0]) = v65;
  BYTE9(v131[0]) = v64;
  v62 = sub_1DB086758(v132, v131);
  return v62 & 1;
}

uint64_t sub_1DB0873E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v8 = a1[3];
  v7 = a1[4];
  v9 = *(a1 + 40);
  v10 = a1[6];
  v11 = a1[7];
  v12 = *(a1 + 64);
  v13 = a1[9];
  v14 = *(a1 + 80);
  v15 = *(a1 + 81);
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v19 = *(a2 + 24);
  v18 = *(a2 + 32);
  v20 = *(a2 + 40);
  v22 = *(a2 + 48);
  v21 = *(a2 + 56);
  v23 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 81);
  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v17 != 213)
        {
          return 0;
        }
      }

      else if (v17 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 211)
    {
      if (v17 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 212)
    {
      if (v17 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v17 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v17 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v17 != 215)
      {
        return 0;
      }
    }

    else if (v17 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 217)
  {
    if (v17 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 218)
  {
    if (v17 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 != 219)
  {
    goto LABEL_29;
  }

  if (v17 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if (!v16)
    {
      return 0;
    }

    if (v4 != *a2 || v5 != v16)
    {
      v52 = *(a2 + 56);
      v49 = v12;
      v50 = *(a2 + 80);
      v47 = v10;
      v48 = v11;
      v46 = *(a2 + 72);
      v44 = v14;
      v45 = v15;
      v27 = v13;
      v28 = *(a2 + 81);
      v29 = *(a2 + 64);
      v30 = v7;
      v31 = *(a2 + 32);
      v32 = *(a2 + 24);
      v33 = *(a2 + 40);
      v34 = sub_1DB09E254();
      v20 = v33;
      v19 = v32;
      v18 = v31;
      v7 = v30;
      v23 = v29;
      v21 = v52;
      v26 = v28;
      v13 = v27;
      v14 = v44;
      v15 = v45;
      v24 = v46;
      v10 = v47;
      v11 = v48;
      v12 = v49;
      v25 = v50;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v9 <= 214)
  {
    if (v9 > 212)
    {
      if (v9 == 213)
      {
        if (v20 != 213)
        {
          return 0;
        }
      }

      else if (v20 != 214)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 211)
    {
      if (v20 != 211)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 212)
    {
      if (v20 != 212)
      {
        return 0;
      }

      goto LABEL_69;
    }

LABEL_67:
    if ((v20 - 211) < 9 || qword_1DB0BD040[v9 ^ 0x80] != qword_1DB0BD040[v20 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 <= 216)
  {
    if (v9 == 215)
    {
      if (v20 != 215)
      {
        return 0;
      }
    }

    else if (v20 != 216)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 217)
  {
    if (v20 != 217)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 218)
  {
    if (v20 != 218)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 != 219)
  {
    goto LABEL_67;
  }

  if (v20 != 219)
  {
    return 0;
  }

LABEL_69:
  if (!v7)
  {
    if (!v18)
    {
      goto LABEL_76;
    }

    return 0;
  }

  if (!v18)
  {
    return 0;
  }

  if (v8 != v19 || v7 != v18)
  {
    v51 = v13;
    v53 = v21;
    v36 = v26;
    v37 = v22;
    v38 = v23;
    v39 = sub_1DB09E254();
    v23 = v38;
    v13 = v51;
    v21 = v53;
    v22 = v37;
    v26 = v36;
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_76:
  v40 = v12;
  v41 = v22;
  v42 = v13;
  v43 = v26;
  if ((sub_1DB055D08(v10, v11, v40, v41, v21, v23) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB055FA0(v42, v14 | (v15 << 8), v24, v25 | (v43 << 8));
}

BOOL _s17CoreODIEssentials25ArmandDeviceDataErrorCodeO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 0xD6u)
  {
    if (*a1 > 0xD4u)
    {
      if (v2 == 213)
      {
        return v3 == 213;
      }

      if (v2 == 214)
      {
        return v3 == 214;
      }
    }

    else
    {
      if (v2 == 211)
      {
        return v3 == 211;
      }

      if (v2 == 212)
      {
        return v3 == 212;
      }
    }
  }

  else if (*a1 <= 0xD8u)
  {
    if (v2 == 215)
    {
      return v3 == 215;
    }

    if (v2 == 216)
    {
      return v3 == 216;
    }
  }

  else
  {
    switch(v2)
    {
      case 0xD9:
        return v3 == 217;
      case 0xDA:
        return v3 == 218;
      case 0xDB:
        return v3 == 219;
    }
  }

  if ((v3 - 211) < 9)
  {
    return 0;
  }

  return qword_1DB0BD040[v2 ^ 0x80] == qword_1DB0BD040[v3 ^ 0x80];
}

uint64_t sub_1DB0878EC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v32 = *(a1 + 24);
  v31 = *(a1 + 40);
  v28 = *(a1 + 64);
  v6 = *(a2 + 8);
  v7 = *(a2 + 32);
  v29 = *(a1 + 48);
  v30 = *(a2 + 24);
  v8 = *(a2 + 40);
  v26 = *(a2 + 48);
  v27 = *(a1 + 56);
  v24 = *(a2 + 56);
  v25 = *(a2 + 64);
  if (v6 == 1)
  {
    v9 = 0;
    v10 = 0;
    if (v3 != 1)
    {
LABEL_3:

      goto LABEL_6;
    }
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 16);

    if (v3 != 1)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  v4 = 0;
LABEL_6:
  v11 = sub_1DB0561D4(v9, v6, v10, v2, v3, v4);
  sub_1DB0932C0(v9, v6);
  sub_1DB0932C0(v2, v3);
  if ((v11 & 1) == 0)
  {
    if (v6 == 1)
    {
      v12 = 0;
      v8 = 0;
      v7 = 1;
      v13 = v32;
      v14 = v31;
      if (v3 != 1)
      {
LABEL_9:

        goto LABEL_12;
      }
    }

    else
    {

      v13 = v32;
      v14 = v31;
      v12 = v30;
      if (v3 != 1)
      {
        goto LABEL_9;
      }
    }

    v13 = 0;
    v14 = 0;
    v5 = 1;
LABEL_12:
    v15 = sub_1DB0561D4(v12, v7, v8, v13, v5, v14);
    sub_1DB0932C0(v12, v7);
    sub_1DB0932C0(v13, v5);
    if (v15)
    {
      goto LABEL_13;
    }

    if (v6 == 1)
    {
      v17 = 0;
      v18 = 0;
      if (v3 != 1)
      {
LABEL_16:
        v19 = v27;

        v20 = v29;
        v21 = v28;
LABEL_19:
        v22 = sub_1DB0561D4(v17, v6, v18, v20, v19, v21);
        sub_1DB0932C0(v17, v6);
        sub_1DB0932C0(v20, v19);
        v16 = v22 ^ 1;
        return v16 & 1;
      }
    }

    else
    {
      v6 = v24;

      v17 = v26;
      v18 = v25;
      if (v3 != 1)
      {
        goto LABEL_16;
      }
    }

    v20 = 0;
    v21 = 0;
    v19 = 1;
    goto LABEL_19;
  }

LABEL_13:
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1DB087B44(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v45 = *(a1 + 24);
  v44 = *(a1 + 40);
  v6 = *(a1 + 48);
  v41 = *(a1 + 64);
  v38 = *(a1 + 72);
  v36 = *(a1 + 81);
  v37 = *(a1 + 80);
  v7 = *(a2 + 8);
  v8 = *(a2 + 32);
  v39 = *(a2 + 24);
  v40 = *(a1 + 56);
  v9 = *(a2 + 40);
  v31 = *(a2 + 56);
  v32 = *(a2 + 48);
  v43 = *(a2 + 64);
  v35 = *(a2 + 72);
  v33 = *(a2 + 81);
  v34 = *(a2 + 80);
  if (v7 == 1)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 16);
  }

  v42 = v6;
  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
  }

  v12 = sub_1DB0561D4(v10, v7, v11, v3, v2, v4);
  sub_1DB0932C0(v10, v7);
  sub_1DB0932C0(v3, v2);
  if (v12)
  {
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v13 = 0;
    v9 = 0;
    v8 = 1;
    v14 = v45;
    v15 = v44;
    if (v2 != 1)
    {
LABEL_10:

      goto LABEL_13;
    }
  }

  else
  {

    v14 = v45;
    v15 = v44;
    v13 = v39;
    if (v2 != 1)
    {
      goto LABEL_10;
    }
  }

  v14 = 0;
  v15 = 0;
  v5 = 1;
LABEL_13:
  v16 = sub_1DB0561D4(v13, v8, v9, v14, v5, v15);
  sub_1DB0932C0(v13, v8);
  sub_1DB0932C0(v14, v5);
  if (v16)
  {
LABEL_20:
    v25 = 0;
    return v25 & 1;
  }

  if (v7 == 1)
  {
    v17 = 0;
    v43 = 0;
    v18 = 1;
    v19 = v42;
    v20 = v41;
    v21 = v40;
    if (v2 != 1)
    {
LABEL_16:

      goto LABEL_19;
    }
  }

  else
  {
    v18 = v31;

    v19 = v42;
    v20 = v41;
    v21 = v40;
    v17 = v32;
    if (v2 != 1)
    {
      goto LABEL_16;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 1;
LABEL_19:
  v22 = sub_1DB0561D4(v17, v18, v43, v19, v21, v20);
  v23 = v18;
  v24 = v22;
  sub_1DB0932C0(v17, v23);
  sub_1DB0932C0(v19, v21);
  if (v24)
  {
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v35;
  }

  if (v7 == 1)
  {
    v28 = -9216;
  }

  else
  {
    v28 = v34 & 1 | (v33 << 8);
  }

  if (v2 == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = v38;
  }

  if (v2 == 1)
  {
    v30 = -9216;
  }

  else
  {
    v30 = v37 & 1 | (v36 << 8);
  }

  v25 = sub_1DAF1EECC(v27, v28, v29, v30) ^ 1;
  return v25 & 1;
}

uint64_t sub_1DB087E14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v25 = *(a1 + 56);
  v7 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v24 = *(a2 + 40);
  v12 = *(a2 + 56);
  if (v9 == 1)
  {
    v7 = 0;
    v13 = -9216;
  }

  else
  {
    v13 = *(a2 + 8) & 1 | (*(a2 + 9) << 8);
  }

  if (v2 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  if (v2 == 1)
  {
    v15 = -9216;
  }

  else
  {
    v15 = *(a1 + 8) & 1 | (*(a1 + 9) << 8);
  }

  if ((sub_1DAF1EECC(v7, v13, v14, v15) & 1) == 0)
  {
    if (v9 == 1)
    {
      v8 = 0;
      v10 = 0;
    }

    else
    {
    }

    v23 = v6;
    if (v2 == 1)
    {
      v3 = 0;
      v4 = 0;
    }

    else
    {
    }

    v16 = sub_1DB0561D4(v8, v9, v10, v3, v2, v4);
    sub_1DB0932C0(v8, v9);
    sub_1DB0932C0(v3, v2);
    if ((v16 & 1) == 0)
    {
      if (v9 == 1)
      {
        v18 = 0;
        v12 = 0;
        v11 = 1;
        v19 = v23;
        if (v2 != 1)
        {
LABEL_21:

          v20 = v25;
LABEL_24:
          v21 = sub_1DB0561D4(v18, v11, v12, v19, v5, v20);
          sub_1DB0932C0(v18, v11);
          sub_1DB0932C0(v19, v5);
          v17 = v21 ^ 1;
          return v17 & 1;
        }
      }

      else
      {

        v19 = v23;
        v18 = v24;
        if (v2 != 1)
        {
          goto LABEL_21;
        }
      }

      v19 = 0;
      v20 = 0;
      v5 = 1;
      goto LABEL_24;
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1DB087FF0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v41 = *(a1 + 24);
  v6 = *(a1 + 48);
  v37 = *(a1 + 64);
  v33 = *(a1 + 66);
  v34 = *(a1 + 65);
  v7 = *(a2 + 8);
  v8 = *(a2 + 32);
  v35 = *(a2 + 24);
  v36 = *(a1 + 56);
  v9 = *(a2 + 40);
  v29 = *(a2 + 56);
  v30 = *(a2 + 48);
  v39 = *(a2 + 64);
  v40 = *(a1 + 40);
  v31 = *(a2 + 66);
  v32 = *(a2 + 65);
  if (v7 == 1)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 16);
  }

  v38 = v6;
  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
  }

  v12 = sub_1DB0561D4(v10, v7, v11, v3, v2, v4);
  sub_1DB0932C0(v10, v7);
  sub_1DB0932C0(v3, v2);
  if (v12)
  {
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v13 = 0;
    v9 = 0;
    v8 = 1;
    v14 = v41;
    v15 = v40;
    if (v2 != 1)
    {
LABEL_10:

      goto LABEL_13;
    }
  }

  else
  {

    v14 = v41;
    v15 = v40;
    v13 = v35;
    if (v2 != 1)
    {
      goto LABEL_10;
    }
  }

  v14 = 0;
  v15 = 0;
  v5 = 1;
LABEL_13:
  v16 = sub_1DB0561D4(v13, v8, v9, v14, v5, v15);
  sub_1DB0932C0(v13, v8);
  sub_1DB0932C0(v14, v5);
  if (v16)
  {
LABEL_20:
    v25 = 0;
    return v25 & 1;
  }

  if (v7 == 1)
  {
    v17 = 0;
    v39 = 0;
    v18 = 1;
    v19 = v38;
    v20 = v37;
    v21 = v36;
    if (v2 != 1)
    {
LABEL_16:

      goto LABEL_19;
    }
  }

  else
  {
    v18 = v29;

    v19 = v38;
    v20 = v37;
    v21 = v36;
    v17 = v30;
    if (v2 != 1)
    {
      goto LABEL_16;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 1;
LABEL_19:
  v22 = sub_1DB0561D4(v17, v18, v39, v19, v21, v20);
  v23 = v18;
  v24 = v22;
  sub_1DB0932C0(v17, v23);
  sub_1DB0932C0(v19, v21);
  if (v24)
  {
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v27 = 3;
  }

  else
  {
    v27 = v32 | (v31 << 8);
  }

  if (v2 == 1)
  {
    v28 = 3;
  }

  else
  {
    v28 = v34 | (v33 << 8);
  }

  v25 = sub_1DB056364(v27, v28) ^ 1;
  return v25 & 1;
}

uint64_t sub_1DB088294(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 33);
  v7 = *(a1 + 40);
  v8 = *(a1 + 49);
  v9 = *(a1 + 56);
  v35 = *(a1 + 64);
  v10 = *(a1 + 65);
  v43 = *(a1 + 81);
  v40 = *(a1 + 97);
  v41 = *(a1 + 32);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v44 = *(a2 + 32);
  v14 = *(a2 + 33);
  v15 = *(a2 + 40);
  v37 = *(a1 + 48);
  v38 = *(a2 + 48);
  v16 = *(a2 + 49);
  v17 = *(a2 + 56);
  v36 = *(a2 + 64);
  v18 = *(a2 + 65);
  if (v11 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a2;
  }

  if (v11 == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(a2 + 16);
  }

  v42 = *(a2 + 81);
  if (v3 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v2;
  }

  if (v3 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v4;
  }

  v39 = *(a2 + 97);
  if (sub_1DB0561D4(v19, v11, v20, v21, v3, v22))
  {
LABEL_14:
    v23 = 0;
    return v23 & 1;
  }

  if (v11 == 1)
  {
    v25 = 3;
  }

  else
  {
    v25 = (v12 >> 8) & 0xFF00 | BYTE1(v12);
  }

  v26 = v3 == 1;
  if (v26)
  {
    v27 = 3;
  }

  else
  {
    v27 = (v4 >> 8) & 0xFF00 | BYTE1(v4);
  }

  v28 = sub_1DB056364(v25, v27);
  v23 = v28 ^ (v28 | v26);
  if (((v28 | v26) & 1) == 0 && v11 != 1)
  {
    if (v6 == 211 && v14 != 211 || v8 == 211 && v16 != 211 || v10 == 211 && v18 != 211)
    {
      goto LABEL_14;
    }

    if ((v44 & 1) == 0 && (v41 & 1) == 0 && (v38 & 1) == 0 && (v37 & 1) == 0 && (v36 & 1) == 0 && (v35 & 1) == 0)
    {
      v30 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v13 longitude:v15];
      v31 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v5 longitude:v7];
      [v30 distanceFromLocation_];
      v33 = v32;

      v34 = v9 >= v17 ? v17 : v9;
      if (v33 <= v34)
      {
        v23 = 1;
        return v23 & 1;
      }
    }

    if (v43 == 211 && v42 != 211)
    {
      goto LABEL_14;
    }

    v23 = v40 != 211 || v39 == 211;
  }

  return v23 & 1;
}

uint64_t sub_1DB0884F4(uint64_t *a1, uint64_t *a2)
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10170, &qword_1DB0BB370);
  MEMORY[0x1EEE9AC00](v81);
  v5 = &v67 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E238, &qword_1DB0A01D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v67 - v13;
  v78 = type metadata accessor for AnyODIKnownBinding(0);
  v82 = *(v78 - 8);
  v14 = MEMORY[0x1EEE9AC00](v78);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v85 = &v67 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v67 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFF8, &qword_1DB0BB0C0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v83 = (&v67 - v23);
  if (*a2 == 1)
  {
    return 0;
  }

  v25 = *a1;
  if (*a1 == 1)
  {
    return 1;
  }

  v26 = *(a1 + 8) != 211 && *(a2 + 8) == 211;
  result = 1;
  if (!v26 && v25)
  {
    v75 = *a2;
    v76 = v5;
    v79 = v22;
    v70 = v16;
    v71 = v9;
    v27 = *(v25 + 64);
    v68 = v25 + 64;
    v28 = 1 << *(v25 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v67 = (v28 + 63) >> 6;
    v73 = (v82 + 48);
    v74 = (v82 + 56);
    v72 = v25;

    v31 = 0;
    v32 = v78;
    v69 = v12;
    while (v30)
    {
      v33 = v31;
LABEL_23:
      v37 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v38 = v37 | (v33 << 6);
      v39 = (*(v72 + 48) + 16 * v38);
      v41 = *v39;
      v40 = v39[1];
      v42 = v80;
      sub_1DB08E6B0(*(v72 + 56) + *(v82 + 72) * v38, v80, type metadata accessor for AnyODIKnownBinding);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
      v44 = *(v43 + 48);
      v45 = v79;
      *v79 = v41;
      v45[1] = v40;
      v36 = v45;
      sub_1DB08E91C(v42, v45 + v44, type metadata accessor for AnyODIKnownBinding);
      (*(*(v43 - 8) + 56))(v36, 0, 1, v43);

LABEL_24:
      v46 = v83;
      sub_1DAF624E8(v36, v83, &qword_1ECC0FFF8, &qword_1DB0BB0C0);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
      v48 = (*(*(v47 - 8) + 48))(v46, 1, v47);
      v77 = v48 != 1;
      if (v48 == 1)
      {
        goto LABEL_41;
      }

      v50 = *v83;
      v49 = v83[1];
      sub_1DB08E91C(v83 + *(v47 + 48), v85, type metadata accessor for AnyODIKnownBinding);
      v51 = v75;
      if (v75 && *(v75 + 16))
      {
        v52 = v84;
        v53 = sub_1DAF35210(v50, v49);
        v55 = v54;

        if (v55)
        {
          sub_1DB08E6B0(*(v51 + 56) + *(v82 + 72) * v53, v52, type metadata accessor for AnyODIKnownBinding);
          v56 = 0;
        }

        else
        {
          v56 = 1;
        }

        v12 = v69;
      }

      else
      {

        v56 = 1;
      }

      v58 = *v74;
      v59 = v84;
      (*v74)(v84, v56, 1, v32);
      sub_1DB08E6B0(v85, v12, type metadata accessor for AnyODIKnownBinding);
      v58(v12, 0, 1, v32);
      v60 = *(v81 + 48);
      v61 = v76;
      sub_1DAF40A84(v59, v76, &qword_1ECC0E238, &qword_1DB0A01D0);
      sub_1DAF40A84(v12, v61 + v60, &qword_1ECC0E238, &qword_1DB0A01D0);
      v62 = *v73;
      if ((*v73)(v61, 1, v32) == 1)
      {
        sub_1DAF40AEC(v12, &qword_1ECC0E238, &qword_1DB0A01D0);
        sub_1DAF40AEC(v84, &qword_1ECC0E238, &qword_1DB0A01D0);
        sub_1DB08E718(v85, type metadata accessor for AnyODIKnownBinding);
        if (v62(v61 + v60, 1, v32) != 1)
        {
          goto LABEL_40;
        }

        result = sub_1DAF40AEC(v61, &qword_1ECC0E238, &qword_1DB0A01D0);
      }

      else
      {
        v63 = v32;
        v64 = v71;
        sub_1DAF40A84(v61, v71, &qword_1ECC0E238, &qword_1DB0A01D0);
        if (v62(v61 + v60, 1, v63) == 1)
        {
          sub_1DAF40AEC(v12, &qword_1ECC0E238, &qword_1DB0A01D0);
          sub_1DAF40AEC(v84, &qword_1ECC0E238, &qword_1DB0A01D0);
          sub_1DB08E718(v85, type metadata accessor for AnyODIKnownBinding);
          sub_1DB08E718(v64, type metadata accessor for AnyODIKnownBinding);
LABEL_40:
          sub_1DAF40AEC(v61, &qword_1ECC10170, &qword_1DB0BB370);
LABEL_41:

          return v77;
        }

        v65 = v70;
        sub_1DB08E91C(v61 + v60, v70, type metadata accessor for AnyODIKnownBinding);
        v66 = sub_1DB0857B0(v64, v65);
        sub_1DB08E718(v65, type metadata accessor for AnyODIKnownBinding);
        sub_1DAF40AEC(v12, &qword_1ECC0E238, &qword_1DB0A01D0);
        sub_1DAF40AEC(v84, &qword_1ECC0E238, &qword_1DB0A01D0);
        sub_1DB08E718(v85, type metadata accessor for AnyODIKnownBinding);
        sub_1DB08E718(v64, type metadata accessor for AnyODIKnownBinding);
        result = sub_1DAF40AEC(v61, &qword_1ECC0E238, &qword_1DB0A01D0);
        v32 = v78;
        if ((v66 & 1) == 0)
        {
          goto LABEL_41;
        }
      }
    }

    if (v67 <= v31 + 1)
    {
      v34 = v31 + 1;
    }

    else
    {
      v34 = v67;
    }

    v35 = v34 - 1;
    v36 = v79;
    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33 >= v67)
      {
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
        (*(*(v57 - 8) + 56))(v36, 1, 1, v57);
        v30 = 0;
        v31 = v35;
        goto LABEL_24;
      }

      v30 = *(v68 + 8 * v33);
      ++v31;
      if (v30)
      {
        v31 = v33;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB088D78(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(v114, v1, sizeof(v114));
  memcpy(v115, v3, sizeof(v115));
  memcpy(v116, v3, 0x119uLL);
  if (sub_1DAF33380(v116) == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v5 = v116[0];
    v7 = v116[1];
    v6 = v116[2];
  }

  memcpy(v113, v4, 0x119uLL);
  if (sub_1DAF33380(v113) == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v8 = v113[0];
    v10 = v113[1];
    v9 = v113[2];
  }

  v11 = sub_1DB0561D4(v5, v7, v6, v8, v10, v9);
  sub_1DB0932C0(v5, v7);
  sub_1DB0932C0(v8, v10);
  if (v11)
  {
    goto LABEL_78;
  }

  memcpy(v112, v3, 0x119uLL);
  if (sub_1DAF33380(v112) == 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v12 = v112[3];
    v14 = v112[4];
    v13 = v112[5];
  }

  memcpy(v111, v4, 0x119uLL);
  if (sub_1DAF33380(v111) == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  else
  {
    v15 = v111[3];
    v17 = v111[4];
    v16 = v111[5];
  }

  v18 = sub_1DB0561D4(v12, v14, v13, v15, v17, v16);
  sub_1DB0932C0(v12, v14);
  sub_1DB0932C0(v15, v17);
  if (v18)
  {
    goto LABEL_78;
  }

  memcpy(v110, v3, 0x119uLL);
  if (sub_1DAF33380(v110) == 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = 1;
  }

  else
  {
    v19 = v110[6];
    v21 = v110[7];
    v20 = v110[8];
  }

  memcpy(v109, v4, 0x119uLL);
  if (sub_1DAF33380(v109) == 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v22 = v109[6];
    v24 = v109[7];
    v23 = v109[8];
  }

  v25 = sub_1DB0561D4(v19, v21, v20, v22, v24, v23);
  sub_1DB0932C0(v19, v21);
  sub_1DB0932C0(v22, v24);
  if (v25)
  {
    goto LABEL_78;
  }

  memcpy(v108, v3, 0x119uLL);
  if (sub_1DAF33380(v108) == 1)
  {
    v26 = 0;
    v27 = 0;
    v28 = 1;
  }

  else
  {
    v26 = v108[9];
    v28 = v108[10];
    v27 = v108[11];
  }

  memcpy(v107, v4, 0x119uLL);
  if (sub_1DAF33380(v107) == 1)
  {
    v29 = 0;
    v30 = 0;
    v31 = 1;
  }

  else
  {
    v29 = v107[9];
    v31 = v107[10];
    v30 = v107[11];
  }

  v32 = sub_1DB0561D4(v26, v28, v27, v29, v31, v30);
  sub_1DB0932C0(v26, v28);
  sub_1DB0932C0(v29, v31);
  if (v32)
  {
    goto LABEL_78;
  }

  memcpy(v106, v3, 0x119uLL);
  if (sub_1DAF33380(v106) == 1)
  {
    v33 = 0;
    v34 = 0;
    v35 = 1;
  }

  else
  {
    v33 = v106[12];
    v35 = v106[13];
    v34 = v106[14];
  }

  memcpy(__dst, v4, 0x119uLL);
  if (sub_1DAF33380(__dst) == 1)
  {
    v36 = 0;
    v37 = 0;
    v38 = 1;
  }

  else
  {
    v36 = __dst[12];
    v38 = __dst[13];
    v37 = __dst[14];
  }

  v39 = sub_1DB0561D4(v33, v35, v34, v36, v38, v37);
  sub_1DB0932C0(v33, v35);
  sub_1DB0932C0(v36, v38);
  if (v39)
  {
    goto LABEL_78;
  }

  memcpy(v104, v115, 0x119uLL);
  if (sub_1DAF33380(v104) == 1)
  {
    v40 = 0;
    v41 = 0;
    v42 = 1;
  }

  else
  {
    v40 = v104[15];
    v42 = v104[16];
    v41 = v104[17];
  }

  memcpy(v103, v114, 0x119uLL);
  if (sub_1DAF33380(v103) == 1)
  {
    v43 = 0;
    v44 = 0;
    v45 = 1;
  }

  else
  {
    v43 = v103[15];
    v45 = v103[16];
    v44 = v103[17];
  }

  v46 = sub_1DB0561D4(v40, v42, v41, v43, v45, v44);
  sub_1DB0932C0(v40, v42);
  sub_1DB0932C0(v43, v45);
  if (v46)
  {
    goto LABEL_78;
  }

  memcpy(v102, v115, 0x119uLL);
  if (sub_1DAF33380(v102) == 1)
  {
    v47 = 0;
    v48 = 0;
    v49 = 1;
  }

  else
  {
    v47 = v102[18];
    v49 = v102[19];
    v48 = v102[20];
  }

  memcpy(v101, v114, 0x119uLL);
  if (sub_1DAF33380(v101) == 1)
  {
    v50 = 0;
    v51 = 0;
    v52 = 1;
  }

  else
  {
    v50 = v101[18];
    v52 = v101[19];
    v51 = v101[20];
  }

  v53 = sub_1DB0561D4(v47, v49, v48, v50, v52, v51);
  sub_1DB0932C0(v47, v49);
  sub_1DB0932C0(v50, v52);
  if (v53)
  {
    goto LABEL_78;
  }

  memcpy(v100, v115, 0x119uLL);
  if (sub_1DAF33380(v100) == 1)
  {
    v54 = 0;
    v55 = 0;
    v56 = 1;
  }

  else
  {
    v54 = v100[21];
    v56 = v100[22];
    v55 = v100[23];
  }

  memcpy(v99, v114, 0x119uLL);
  if (sub_1DAF33380(v99) == 1)
  {
    v57 = 0;
    v58 = 0;
    v59 = 1;
  }

  else
  {
    v57 = v99[21];
    v59 = v99[22];
    v58 = v99[23];
  }

  v60 = sub_1DB0561D4(v54, v56, v55, v57, v59, v58);
  sub_1DB0932C0(v54, v56);
  sub_1DB0932C0(v57, v59);
  if (v60)
  {
    goto LABEL_78;
  }

  memcpy(v98, v115, 0x119uLL);
  if (sub_1DAF33380(v98) == 1)
  {
    v61 = 0;
    v62 = 0;
    v63 = 1;
  }

  else
  {
    v61 = v98[24];
    v63 = v98[25];
    v62 = v98[26];
  }

  memcpy(v97, v114, 0x119uLL);
  if (sub_1DAF33380(v97) == 1)
  {
    v64 = 0;
    v65 = 0;
    v66 = 1;
  }

  else
  {
    v64 = v97[24];
    v66 = v97[25];
    v65 = v97[26];
  }

  v67 = sub_1DB0561D4(v61, v63, v62, v64, v66, v65);
  sub_1DB0932C0(v61, v63);
  sub_1DB0932C0(v64, v66);
  if (v67)
  {
    goto LABEL_78;
  }

  memcpy(v96, v115, 0x119uLL);
  if (sub_1DAF33380(v96) == 1)
  {
    v68 = 0;
    v69 = 0;
    v70 = 1;
  }

  else
  {
    v68 = v96[27];
    v70 = v96[28];
    v69 = v96[29];
  }

  memcpy(v95, v114, 0x119uLL);
  if (sub_1DAF33380(v95) == 1)
  {
    v71 = 0;
    v72 = 0;
    v73 = 1;
  }

  else
  {
    v71 = v95[27];
    v73 = v95[28];
    v72 = v95[29];
  }

  v74 = sub_1DB0561D4(v68, v70, v69, v71, v73, v72);
  sub_1DB0932C0(v68, v70);
  sub_1DB0932C0(v71, v73);
  if (v74)
  {
    goto LABEL_78;
  }

  memcpy(v94, v115, 0x119uLL);
  if (sub_1DAF33380(v94) == 1)
  {
    v75 = 0;
    v76 = 0;
    v77 = 1;
  }

  else
  {
    v75 = v94[30];
    v77 = v94[31];
    v76 = v94[32];
  }

  memcpy(v93, v114, 0x119uLL);
  if (sub_1DAF33380(v93) == 1)
  {
    v78 = 0;
    v79 = 0;
    v80 = 1;
  }

  else
  {
    v78 = v93[30];
    v80 = v93[31];
    v79 = v93[32];
  }

  v81 = sub_1DB0561D4(v75, v77, v76, v78, v80, v79);
  sub_1DB0932C0(v75, v77);
  sub_1DB0932C0(v78, v80);
  if (v81)
  {
LABEL_78:
    v82 = 0;
  }

  else
  {
    memcpy(v92, v115, 0x119uLL);
    if (sub_1DAF33380(v92) == 1)
    {
      v84 = 0;
      v85 = 0;
      v86 = 1;
    }

    else
    {
      v84 = v92[33];
      v86 = v92[34];
      v85 = v92[35];
    }

    memcpy(v91, v114, 0x119uLL);
    if (sub_1DAF33380(v91) == 1)
    {
      v87 = 0;
      v88 = 0;
      v89 = 1;
    }

    else
    {
      v87 = v91[33];
      v89 = v91[34];
      v88 = v91[35];
    }

    v90 = sub_1DB0561D4(v84, v86, v85, v87, v89, v88);
    sub_1DB0932C0(v84, v86);
    sub_1DB0932C0(v87, v89);
    v82 = v90 ^ 1;
  }

  return v82 & 1;
}

uint64_t sub_1DB089824(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v27 = a1[3];
  v28 = a1[1];
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v26 = a2[3];
  v8 = *(a2 + 8);
  v9 = *a2;
  if (v9 == 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = *a2;
  }

  if (v2 == 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v2;
  }

  if (sub_1DB056364(v10, v11) & 1) != 0 || (v9 != 3 ? (v12 = WORD1(v5)) : (v12 = 3), v2 != 3 ? (v13 = WORD1(v2)) : (v13 = 3), (sub_1DB056364(v12, v13) & 1) != 0 || (v9 != 3 ? (v14 = HIWORD(v8)) : (v14 = 3), v2 != 3 ? (v15 = HIWORD(v4)) : (v15 = 3), (sub_1DB056364(v14, v15) & 1) != 0 || (v9 != 3 ? (v16 = v6) : (v16 = 0), v9 != 3 ? (v17 = v7 & 0xFF01) : (v17 = -9216), v2 != 3 ? (v18 = v28) : (v18 = 0), v2 != 3 ? (v19 = v3 & 0xFFFFFF01) : (v19 = -9216), (sub_1DAF1EECC(v16, v17, v18, v19)))))
  {
    v20 = 0;
  }

  else
  {
    if (v9 == 3)
    {
      v22 = 0;
    }

    else
    {
      v22 = v26;
    }

    if (v9 == 3)
    {
      v23 = -9216;
    }

    else
    {
      v23 = v8 & 0xFF01;
    }

    if (v2 == 3)
    {
      v24 = 0;
    }

    else
    {
      v24 = v27;
    }

    if (v2 == 3)
    {
      v25 = -9216;
    }

    else
    {
      v25 = v4 & 0xFFFFFF01;
    }

    v20 = sub_1DAF1EECC(v22, v23, v24, v25) ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_1DB089958(_OWORD *a1, _OWORD *a2)
{
  v4 = a2[5];
  v146[4] = a2[4];
  v146[5] = v4;
  v147[0] = a2[6];
  *(v147 + 10) = *(a2 + 106);
  v5 = a2[1];
  v146[0] = *a2;
  v146[1] = v5;
  v6 = a2[3];
  v146[2] = a2[2];
  v146[3] = v6;
  if (sub_1DB0932A0(v146) == 1)
  {
    v7 = 0;
    v8 = 56320;
  }

  else
  {
    v7 = *&v146[0];
    v8 = BYTE8(v146[0]) | (BYTE9(v146[0]) << 8);
  }

  v9 = a1[5];
  v144[4] = a1[4];
  v144[5] = v9;
  v145[0] = a1[6];
  *(v145 + 10) = *(a1 + 106);
  v10 = a1[1];
  v144[0] = *a1;
  v144[1] = v10;
  v11 = a1[3];
  v144[2] = a1[2];
  v144[3] = v11;
  if (sub_1DB0932A0(v144) == 1)
  {
    v12 = 0;
    v13 = 56320;
  }

  else
  {
    v12 = *&v144[0];
    v13 = BYTE8(v144[0]) | (BYTE9(v144[0]) << 8);
  }

  if ((sub_1DB0564C0(v7, v8, v12, v13) & 1) != 0
    || ((v14 = a2[5], v141 = a2[4], v142 = v14, v143[0] = a2[6], *(v143 + 10) = *(a2 + 106), v15 = a2[1], v137 = *a2, v138 = v15, v16 = a2[3], v139 = a2[2], v140 = v16, sub_1DB0932A0(&v137) != 1) ? (v17 = v138, v18 = BYTE8(v138) | (BYTE9(v138) << 8)) : (v17 = 0, v18 = 56320),
        (v19 = a1[5], v134 = a1[4], v135 = v19, v136[0] = a1[6], *(v136 + 10) = *(a1 + 106), v20 = a1[1], v130 = *a1, v131 = v20, v21 = a1[3], v132 = a1[2], v133 = v21, sub_1DB0932A0(&v130) != 1) ? (v22 = v131, v23 = BYTE8(v131) | (BYTE9(v131) << 8)) : (v22 = 0, v23 = 56320),
        (sub_1DB0564C0(v17, v18, v22, v23) & 1) != 0 || ((v24 = a2[5], v127 = a2[4], v128 = v24, v129[0] = a2[6], *(v129 + 10) = *(a2 + 106), v25 = a2[1], v124[0] = *a2, v124[1] = v25, v26 = a2[3], v125 = a2[2], v126 = v26, sub_1DB0932A0(v124) != 1) ? (v27 = v125, v28 = BYTE8(v125) | (BYTE9(v125) << 8)) : (v27 = 0, v28 = 56320), (v29 = a1[5], v121 = a1[4], v122 = v29, v123[0] = a1[6], *(v123 + 10) = *(a1 + 106), v30 = a1[1], v118[0] = *a1, v118[1] = v30, v31 = a1[3], v119 = a1[2], v120 = v31, sub_1DB0932A0(v118) != 1) ? (v32 = v119, v33 = BYTE8(v119) | (BYTE9(v119) << 8)) : (v32 = 0, v33 = 56320), (sub_1DB0564C0(v27, v28, v32, v33) & 1) != 0 || ((v34 = a2[5], v115 = a2[4], v116 = v34, v117[0] = a2[6], *(v117 + 10) = *(a2 + 106), v35 = a2[1], v113[0] = *a2, v113[1] = v35, v36 = a2[3], v113[2] = a2[2], v114 = v36, sub_1DB0932A0(v113) != 1) ? (v37 = v114, v38 = BYTE8(v114) | (BYTE9(v114) << 8)) : (v37 = 0, v38 = 56320), (v39 = a1[5], v110 = a1[4], v111 = v39, v112[0] = a1[6], *(v112 + 10) = *(a1 + 106), v40 = a1[1], v108[0] = *a1, v108[1] = v40, v41 = a1[3], v108[2] = a1[2], v109 = v41, sub_1DB0932A0(v108) != 1) ? (v42 = v109, v43 = BYTE8(v109) | (BYTE9(v109) << 8)) : (v42 = 0, v43 = 56320), (sub_1DB0564C0(v37, v38, v42, v43) & 1) != 0 || ((v44 = a2[5], v105 = a2[4], v106 = v44, v107[0] = a2[6], *(v107 + 10) = *(a2 + 106), v45 = a2[1], v104[0] = *a2, v104[1] = v45, v46 = a2[3], v104[2] = a2[2], v104[3] = v46, sub_1DB0932A0(v104) != 1) ? (v47 = v105, v48 = BYTE8(v105) | (BYTE9(v105) << 8)) : (v47 = 0, v48 = 56320), (v49 = a1[5], v101 = a1[4], v102 = v49, v103[0] = a1[6], *(v103 + 10) = *(a1 + 106), v50 = a1[1], v100[0] = *a1, v100[1] = v50, v51 = a1[3], v100[2] = a1[2], v100[3] = v51, sub_1DB0932A0(v100) != 1) ? (v52 = v101, v53 = BYTE8(v101) | (BYTE9(v101) << 8)) : (v52 = 0, v53 = 56320), (sub_1DB0564C0(v47, v48, v52, v53) & 1) != 0 || ((v54 = a2[5], v97[4] = a2[4], v98 = v54, v99[0] = a2[6], *(v99 + 10) = *(a2 + 106), v55 = a2[1], v97[0] = *a2, v97[1] = v55, v56 = a2[3], v97[2] = a2[2], v97[3] = v56, sub_1DB0932A0(v97) != 1) ? (v57 = v98, v58 = BYTE8(v98) | (BYTE9(v98) << 8)) : (v57 = 0, v58 = 56320), (v59 = a1[5], v94[4] = a1[4], v95 = v59, v96[0] = a1[6], *(v96 + 10) = *(a1 + 106), v60 = a1[1], v94[0] = *a1, v94[1] = v60, v61 = a1[3], v94[2] = a1[2], v94[3] = v61, sub_1DB0932A0(v94) != 1) ? (v62 = v95, v63 = BYTE8(v95) | (BYTE9(v95) << 8)) : (v62 = 0, v63 = 56320), (sub_1DB0564C0(v57, v58, v62, v63) & 1) != 0 || ((v64 = a2[5], v92[4] = a2[4], v92[5] = v64, v93[0] = a2[6], *(v93 + 10) = *(a2 + 106), v65 = a2[1], v92[0] = *a2, v92[1] = v65, v66 = a2[3], v92[2] = a2[2], v92[3] = v66, sub_1DB0932A0(v92) != 1) ? (v67 = *&v93[0], v68 = BYTE8(v93[0]) | (BYTE9(v93[0]) << 8)) : (v67 = 0, v68 = 56320), (v69 = a1[5], v90[4] = a1[4], v90[5] = v69, v91[0] = a1[6], *(v91 + 10) = *(a1 + 106), v70 = a1[1], v90[0] = *a1, v90[1] = v70, v71 = a1[3], v90[2] = a1[2], v90[3] = v71, sub_1DB0932A0(v90) != 1) ? (v72 = *&v91[0], v73 = BYTE8(v91[0]) | (BYTE9(v91[0]) << 8)) : (v72 = 0, v73 = 56320), (sub_1DB0564C0(v67, v68, v72, v73) & 1) != 0)))))))
  {
    v74 = 0;
  }

  else
  {
    v76 = a2[5];
    v88[4] = a2[4];
    v88[5] = v76;
    *v89 = a2[6];
    *&v89[10] = *(a2 + 106);
    v77 = a2[1];
    v88[0] = *a2;
    v88[1] = v77;
    v78 = a2[3];
    v88[2] = a2[2];
    v88[3] = v78;
    if (sub_1DB0932A0(v88) == 1)
    {
      v79 = 0;
      v80 = 56320;
    }

    else
    {
      v79 = *&v89[16];
      v80 = v89[24] | (v89[25] << 8);
    }

    v81 = a1[5];
    v86[4] = a1[4];
    v86[5] = v81;
    *v87 = a1[6];
    *&v87[10] = *(a1 + 106);
    v82 = a1[1];
    v86[0] = *a1;
    v86[1] = v82;
    v83 = a1[3];
    v86[2] = a1[2];
    v86[3] = v83;
    if (sub_1DB0932A0(v86) == 1)
    {
      v84 = 0;
      v85 = 56320;
    }

    else
    {
      v84 = *&v87[16];
      v85 = v87[24] | (v87[25] << 8);
    }

    v74 = sub_1DB0564C0(v79, v80, v84, v85) ^ 1;
  }

  return v74 & 1;
}

BOOL _s17CoreODIEssentials16ArmandDeviceDataV21isLessCompleteOrEqual3lhs2toSbAC_ACtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v111 = *(v1 + 40);
  v112 = v6;
  v113 = *(v1 + 72);
  v7 = *(v1 + 8);
  v110 = v5;
  v109 = v7;
  v8 = *(v1 + 128);
  v116 = *(v1 + 112);
  v117 = v8;
  v118 = *(v1 + 144);
  v119 = *(v1 + 160);
  v9 = *(v1 + 96);
  v114 = *(v1 + 80);
  v115 = v9;
  v11 = *(v1 + 168);
  v10 = *(v1 + 176);
  v12 = *(v1 + 184);
  v13 = *(v1 + 208);
  v120 = *(v1 + 192);
  v121 = v13;
  v122[0] = *(v1 + 224);
  *(v122 + 9) = *(v1 + 233);
  v14 = *(v1 + 304);
  v125 = *(v1 + 288);
  *v126 = v14;
  *&v126[15] = *(v1 + 319);
  v15 = *(v1 + 256);
  v124 = *(v1 + 272);
  v123 = v15;
  v91 = *(v1 + 336);
  v92 = *(v1 + 328);
  v90 = *(v1 + 344);
  v85 = *(v1 + 346);
  v86 = *(v1 + 345);
  v81 = *(v1 + 360);
  v82 = *(v1 + 352);
  v80 = *(v1 + 368);
  v133 = *(v1 + 472);
  v16 = *(v1 + 440);
  v132 = *(v1 + 456);
  v131 = v16;
  v17 = *(v1 + 408);
  v130 = *(v1 + 424);
  v129 = v17;
  v18 = *(v1 + 376);
  v128 = *(v1 + 392);
  v127 = v18;
  v76 = *(v1 + 480);
  v75 = *(v1 + 488);
  memcpy(__dst, (v1 + 496), 0x119uLL);
  v71 = *(v4 + 792);
  v72 = *(v4 + 784);
  v69 = *(v4 + 808);
  v70 = *(v4 + 800);
  v68 = *(v4 + 816);
  v19 = *(v4 + 904);
  v139 = *(v4 + 888);
  v140 = v19;
  v141[0] = *(v4 + 920);
  *(v141 + 10) = *(v4 + 930);
  v20 = *(v4 + 840);
  v135 = *(v4 + 824);
  v136 = v20;
  v21 = *(v4 + 872);
  v137 = *(v4 + 856);
  v138 = v21;
  v22 = *(v3 + 24);
  v23 = *(v3 + 56);
  v144 = *(v3 + 40);
  v145 = v23;
  v146 = *(v3 + 72);
  v24 = *(v3 + 8);
  v143 = v22;
  v142 = v24;
  v25 = *(v3 + 128);
  v149 = *(v3 + 112);
  v150 = v25;
  v151 = *(v3 + 144);
  v152 = *(v3 + 160);
  v26 = *(v3 + 96);
  v147 = *(v3 + 80);
  v148 = v26;
  v27 = *(v3 + 168);
  v28 = *(v3 + 176);
  v29 = *(v3 + 184);
  *(v155 + 9) = *(v3 + 233);
  v30 = *(v3 + 208);
  v155[0] = *(v3 + 224);
  v31 = *(v3 + 192);
  v154 = v30;
  v153 = v31;
  *&v159[15] = *(v3 + 319);
  v32 = *(v3 + 288);
  *v159 = *(v3 + 304);
  v158 = v32;
  v33 = *(v3 + 272);
  v156 = *(v3 + 256);
  v157 = v33;
  v88 = *(v3 + 336);
  v89 = *(v3 + 328);
  v87 = *(v3 + 344);
  v83 = *(v3 + 346);
  v84 = *(v3 + 345);
  v78 = *(v3 + 360);
  v79 = *(v3 + 352);
  v77 = *(v3 + 368);
  v34 = *(v3 + 376);
  v161 = *(v3 + 392);
  v160 = v34;
  v35 = *(v3 + 408);
  v36 = *(v3 + 424);
  v37 = *(v3 + 440);
  v38 = *(v3 + 456);
  v166 = *(v3 + 472);
  v165 = v38;
  v164 = v37;
  v162 = v35;
  v163 = v36;
  v74 = *(v3 + 480);
  v73 = *(v3 + 488);
  memcpy(v167, (v3 + 496), 0x119uLL);
  v66 = *(v3 + 792);
  v67 = *(v3 + 784);
  v64 = *(v3 + 808);
  v65 = *(v3 + 800);
  v63 = *(v3 + 816);
  v39 = *(v3 + 904);
  v172 = *(v3 + 888);
  v173 = v39;
  v174[0] = *(v3 + 920);
  *(v174 + 10) = *(v3 + 930);
  v40 = *(v3 + 840);
  v168 = *(v3 + 824);
  v169 = v40;
  v41 = *(v3 + 872);
  v170 = *(v3 + 856);
  v171 = v41;
  result = 0;
  if (sub_1DB055D08(v109, *(&v109 + 1), v110, v142, *(&v142 + 1), v143) & 1) != 0 && (sub_1DB055D08(*(&v110 + 1), v111, BYTE8(v111), *(&v143 + 1), v144, BYTE8(v144)) & 1) != 0 && (sub_1DB055D08(v112, *(&v112 + 1), v113, v145, *(&v145 + 1), v146) & 1) != 0 || (v42 = *(v4 + 24), v43 = *(v4 + 56), v98[2] = *(v4 + 40), v98[3] = v43, LOBYTE(v98[4]) = *(v4 + 72), v44 = *(v4 + 8), v98[1] = v42, v98[0] = v44, v45 = *(v3 + 24), v46 = *(v3 + 56), __src[2] = *(v3 + 40), __src[3] = v46, LOBYTE(__src[4]) = *(v3 + 72), v47 = *(v3 + 8), __src[1] = v45, __src[0] = v47, sub_1DB08B170(&v109, v100), sub_1DB08B170(&v142, v100), v48 = sub_1DB0878EC(v98, __src), v99[2] = __src[2], v99[3] = __src[3], LOBYTE(v99[4]) = __src[4], v99[1] = __src[1], v99[0] = __src[0], sub_1DAF40AEC(v99, &qword_1ECC0FC98, &qword_1DB0B92A0), v100[2] = v98[2], v100[3] = v98[3], LOBYTE(v100[4]) = v98[4], v100[1] = v98[1], v100[0] = v98[0], sub_1DAF40AEC(v100, &qword_1ECC0FC98, &qword_1DB0B92A0), (v48))
  {
    if (sub_1DB055D08(v114, *(&v114 + 1), v115, v147, *(&v147 + 1), v148) & 1) != 0 && (sub_1DB055D08(*(&v115 + 1), v116, BYTE8(v116), *(&v148 + 1), v149, BYTE8(v149)) & 1) != 0 && (sub_1DB055D08(v117, *(&v117 + 1), v118, v150, *(&v150 + 1), v151) & 1) != 0 && (sub_1DB055FA0(*(&v118 + 1), v119 | (HIBYTE(v119) << 8), *(&v151 + 1), v152 | (HIBYTE(v152) << 8)) & 1) != 0 || (v98[2] = v116, v98[3] = v117, v98[4] = v118, LOWORD(v98[5]) = v119, v98[0] = v114, v98[1] = v115, __src[2] = v149, __src[3] = v150, __src[4] = v151, LOWORD(__src[5]) = v152, __src[0] = v147, __src[1] = v148, sub_1DB08B1A8(&v114, v100), sub_1DB08B1A8(&v147, v100), v49 = sub_1DB087B44(v98, __src), v99[2] = __src[2], v99[3] = __src[3], v99[4] = __src[4], LOWORD(v99[5]) = __src[5], v99[0] = __src[0], v99[1] = __src[1], sub_1DAF40AEC(v99, &qword_1ECC0FCA0, &qword_1DB0B92A8), v100[2] = v98[2], v100[3] = v98[3], v100[4] = v98[4], LOWORD(v100[5]) = v98[5], v100[0] = v98[0], v100[1] = v98[1], sub_1DAF40AEC(v100, &qword_1ECC0FCA0, &qword_1DB0B92A8), (v49))
    {
      *&v100[0] = v11;
      *(&v100[0] + 1) = v10;
      LOBYTE(v100[1]) = v12;
      *&v99[0] = v27;
      *(&v99[0] + 1) = v28;
      LOBYTE(v99[1]) = v29;
      v50 = sub_1DAF1F398(v100, v99);

      if ((v50 & 1) != 0 || (sub_1DB0561D4(v27, v28, v29, v11, v10, v12) & 1) == 0)
      {
        v100[0] = v120;
        v100[1] = v121;
        v100[2] = v122[0];
        *(&v100[2] + 9) = *(v122 + 9);
        v99[0] = v153;
        v99[1] = v154;
        v99[2] = v155[0];
        *(&v99[2] + 9) = *(v155 + 9);
        v51 = sub_1DB084C0C(v100, v99);
        v105[0] = v99[0];
        v105[1] = v99[1];
        v106[0] = v99[2];
        *(v106 + 9) = *(&v99[2] + 9);
        sub_1DB08B1E0(&v120, v98);
        sub_1DB08B1E0(&v153, v98);
        sub_1DB08ECE4(v105);
        v107[0] = v100[0];
        v107[1] = v100[1];
        v108[0] = v100[2];
        *(v108 + 9) = *(&v100[2] + 9);
        sub_1DB08ECE4(v107);
        if (v51 & 1) != 0 || (v98[0] = v120, v98[1] = v121, v98[2] = v122[0], *(&v98[2] + 9) = *(v122 + 9), __src[0] = v153, __src[1] = v154, __src[2] = v155[0], *(&__src[2] + 9) = *(v155 + 9), sub_1DB08B1E0(&v120, v100), sub_1DB08B1E0(&v153, v100), v52 = sub_1DB087E14(v98, __src), v99[0] = __src[0], v99[1] = __src[1], v99[2] = __src[2], *(&v99[2] + 9) = *(&__src[2] + 9), sub_1DAF40AEC(v99, &qword_1ECC0FCA8, &qword_1DB0B92B0), v100[0] = v98[0], v100[1] = v98[1], v100[2] = v98[2], *(&v100[2] + 9) = *(&v98[2] + 9), sub_1DAF40AEC(v100, &qword_1ECC0FCA8, &qword_1DB0B92B0), (v52))
        {
          if (sub_1DB055D08(v123, *(&v123 + 1), v124, v156, *(&v156 + 1), v157) & 1) != 0 && (sub_1DB055D08(*(&v124 + 1), v125, BYTE8(v125), *(&v157 + 1), v158, BYTE8(v158)) & 1) != 0 && (sub_1DB055D08(*v126, *&v126[8], v126[16], *v159, *&v159[8], v159[16]) & 1) != 0 && (sub_1DB055E54(*&v126[17], *&v159[17]) & 1) != 0 || (v98[2] = v125, v98[3] = *v126, *(&v98[3] + 15) = *&v126[15], v98[1] = v124, v98[0] = v123, __src[2] = v158, __src[3] = *v159, *(&__src[3] + 15) = *&v159[15], __src[1] = v157, __src[0] = v156, sub_1DB08B218(&v123, v100), sub_1DB08B218(&v156, v100), v53 = sub_1DB087FF0(v98, __src), v99[2] = __src[2], v99[3] = __src[3], *(&v99[3] + 15) = *(&__src[3] + 15), v99[1] = __src[1], v99[0] = __src[0], sub_1DAF40AEC(v99, &qword_1ECC0FCB0, &qword_1DB0B92B8), v100[2] = v98[2], v100[3] = v98[3], *(&v100[3] + 15) = *(&v98[3] + 15), v100[1] = v98[1], v100[0] = v98[0], sub_1DAF40AEC(v100, &qword_1ECC0FCB0, &qword_1DB0B92B8), (v53))
          {
            v100[4] = v131;
            v100[5] = v132;
            LOWORD(v100[6]) = v133;
            v100[0] = v127;
            v100[1] = v128;
            v100[3] = v130;
            v100[2] = v129;
            v99[4] = v164;
            v99[5] = v165;
            LOWORD(v99[6]) = v166;
            v99[0] = v160;
            v99[1] = v161;
            v99[3] = v163;
            v99[2] = v162;
            v54 = sub_1DB0853E8(v100, v99);
            v101[4] = v99[4];
            v101[5] = v99[5];
            v102 = v99[6];
            v101[0] = v99[0];
            v101[1] = v99[1];
            v101[3] = v99[3];
            v101[2] = v99[2];
            sub_1DB08B250(&v127, v98);
            sub_1DB08B250(&v160, v98);
            sub_1DB08EBDC(v101);
            v103[4] = v100[4];
            v103[5] = v100[5];
            v104 = v100[6];
            v103[0] = v100[0];
            v103[1] = v100[1];
            v103[3] = v100[3];
            v103[2] = v100[2];
            sub_1DB08EBDC(v103);
            if (v54 || (v98[4] = v131, v98[5] = v132, LOWORD(v98[6]) = v133, v98[0] = v127, v98[1] = v128, v98[3] = v130, v98[2] = v129, __src[4] = v164, __src[5] = v165, LOWORD(__src[6]) = v166, __src[0] = v160, __src[1] = v161, __src[3] = v163, __src[2] = v162, sub_1DB08B250(&v127, v100), sub_1DB08B250(&v160, v100), v55 = sub_1DB088294(v98, __src), v99[4] = __src[4], v99[5] = __src[5], LOWORD(v99[6]) = __src[6], v99[0] = __src[0], v99[1] = __src[1], v99[3] = __src[3], v99[2] = __src[2], sub_1DAF40AEC(v99, &qword_1ECC0FCB8, &qword_1DB0B92C0), v100[4] = v98[4], v100[5] = v98[5], LOWORD(v100[6]) = v98[6], v100[0] = v98[0], v100[1] = v98[1], v100[3] = v98[3], v100[2] = v98[2], sub_1DAF40AEC(v100, &qword_1ECC0FCB8, &qword_1DB0B92C0), (v55 & 1) != 0))
            {
              *&v100[0] = v92;
              *(&v100[0] + 1) = v91;
              LOBYTE(v100[1]) = v90;
              *&v99[0] = v89;
              *(&v99[0] + 1) = v88;
              LOBYTE(v99[1]) = v87;
              v56 = sub_1DAF1F398(v100, v99);

              if ((v56 & 1) != 0 || (sub_1DB0561D4(v89, v88, v87, v92, v91, v90) & 1) == 0)
              {
                LOBYTE(v100[0]) = v86;
                BYTE1(v100[0]) = v85;
                LOBYTE(v99[0]) = v84;
                BYTE1(v99[0]) = v83;
                if ((sub_1DB0852AC(v100, v99) & 1) != 0 || (sub_1DB056364(v84 | (v83 << 8), v86 | (v85 << 8)) & 1) == 0)
                {
                  *&v100[0] = v82;
                  *(&v100[0] + 1) = v81;
                  LOBYTE(v100[1]) = v80;
                  *&v99[0] = v79;
                  *(&v99[0] + 1) = v78;
                  LOBYTE(v99[1]) = v77;
                  v57 = sub_1DAF1F398(v100, v99);

                  if ((v57 & 1) != 0 || (sub_1DB0561D4(v79, v78, v77, v82, v81, v80) & 1) == 0)
                  {
                    *&v100[0] = v76;
                    BYTE8(v100[0]) = v75;
                    *&v99[0] = v74;
                    BYTE8(v99[0]) = v73;

                    v58 = sub_1DB085D68(v100, v99);

                    if (v58 || (*&v100[0] = v76, BYTE8(v100[0]) = v75, *&v99[0] = v74, BYTE8(v99[0]) = v73, , , v59 = sub_1DB0884F4(v100, v99), sub_1DB08B288(*&v99[0]), sub_1DB08B288(*&v100[0]), (v59 & 1) != 0))
                    {
                      memcpy(v98, __dst, 0x119uLL);
                      memcpy(__src, v167, 0x119uLL);
                      v60 = sub_1DB085EB0(v98, __src);
                      memcpy(v99, __src, 0x119uLL);
                      sub_1DB08B298(__dst, v96);
                      sub_1DB08B298(v167, v96);
                      sub_1DB08EB58(v99);
                      memcpy(v100, v98, 0x119uLL);
                      sub_1DB08EB58(v100);
                      if (v60 & 1) != 0 || (memcpy(v95, __dst, 0x119uLL), nullsub_3(), memcpy(v94, v95, 0x119uLL), memcpy(v96, v167, 0x119uLL), nullsub_3(), memcpy(v93, v96, sizeof(v93)), sub_1DB08B298(__dst, v98), sub_1DB08B298(v167, v98), v61 = sub_1DB088D78(v94), memcpy(__src, v93, 0x119uLL), sub_1DAF40AEC(__src, &qword_1ECC0FCC0, &qword_1DB0B92C8), memcpy(v98, v94, 0x119uLL), sub_1DAF40AEC(v98, &qword_1ECC0FCC0, &qword_1DB0B92C8), (v61))
                      {
                        *&v98[0] = v72;
                        *(&v98[0] + 1) = v71;
                        *&v98[1] = v70;
                        *(&v98[1] + 1) = v69;
                        LODWORD(v98[2]) = v68;
                        *&__src[0] = v67;
                        *(&__src[0] + 1) = v66;
                        *&__src[1] = v65;
                        *(&__src[1] + 1) = v64;
                        LODWORD(__src[2]) = v63;
                        if (sub_1DB0861A4(v98, __src) & 1) != 0 || (*&v98[0] = v72, *(&v98[0] + 1) = v71, *&v98[1] = v70, *(&v98[1] + 1) = v69, LODWORD(v98[2]) = v68, *&__src[0] = v67, *(&__src[0] + 1) = v66, *&__src[1] = v65, *(&__src[1] + 1) = v64, LODWORD(__src[2]) = v63, (sub_1DB089824(v98, __src)))
                        {
                          v98[4] = v139;
                          v98[5] = v140;
                          v98[6] = v141[0];
                          *(&v98[6] + 10) = *(v141 + 10);
                          v98[0] = v135;
                          v98[1] = v136;
                          v98[2] = v137;
                          v98[3] = v138;
                          __src[4] = v172;
                          __src[5] = v173;
                          __src[6] = v174[0];
                          *(&__src[6] + 10) = *(v174 + 10);
                          __src[0] = v168;
                          __src[1] = v169;
                          __src[2] = v170;
                          __src[3] = v171;
                          if (sub_1DB0864E8(v98, __src))
                          {
                            return 1;
                          }

                          __src[4] = v139;
                          __src[5] = v140;
                          __src[6] = v141[0];
                          *(&__src[6] + 10) = *(v141 + 10);
                          __src[0] = v135;
                          __src[1] = v136;
                          __src[2] = v137;
                          __src[3] = v138;
                          nullsub_3();
                          v96[4] = __src[4];
                          v96[5] = __src[5];
                          v96[6] = __src[6];
                          *(&v96[6] + 10) = *(&__src[6] + 10);
                          v96[0] = __src[0];
                          v96[1] = __src[1];
                          v96[2] = __src[2];
                          v96[3] = __src[3];
                          v98[3] = v171;
                          v98[2] = v170;
                          v98[1] = v169;
                          v98[0] = v168;
                          *(&v98[6] + 10) = *(v174 + 10);
                          v98[6] = v174[0];
                          v98[5] = v173;
                          v98[4] = v172;
                          nullsub_3();
                          v95[4] = v98[4];
                          v95[5] = v98[5];
                          v95[6] = v98[6];
                          *(&v95[6] + 10) = *(&v98[6] + 10);
                          v95[0] = v98[0];
                          v95[1] = v98[1];
                          v95[2] = v98[2];
                          v95[3] = v98[3];
                          if (sub_1DB089958(v96, v95))
                          {
                            return 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1DB08B288(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1DB08B2D0()
{
  result = qword_1ECC0FD20;
  if (!qword_1ECC0FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD20);
  }

  return result;
}

unint64_t sub_1DB08B324()
{
  result = qword_1ECC0FD28;
  if (!qword_1ECC0FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD28);
  }

  return result;
}

unint64_t sub_1DB08B378()
{
  result = qword_1ECC0FD30;
  if (!qword_1ECC0FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD30);
  }

  return result;
}

unint64_t sub_1DB08B3CC()
{
  result = qword_1ECC0FD38;
  if (!qword_1ECC0FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD38);
  }

  return result;
}

unint64_t sub_1DB08B420()
{
  result = qword_1ECC0FD40;
  if (!qword_1ECC0FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD40);
  }

  return result;
}

unint64_t sub_1DB08B474()
{
  result = qword_1ECC0FD48;
  if (!qword_1ECC0FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD48);
  }

  return result;
}

unint64_t sub_1DB08B4C8()
{
  result = qword_1ECC0FD50;
  if (!qword_1ECC0FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD50);
  }

  return result;
}

unint64_t sub_1DB08B51C()
{
  result = qword_1ECC0FD58;
  if (!qword_1ECC0FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD58);
  }

  return result;
}

unint64_t sub_1DB08B570()
{
  result = qword_1ECC0FD60;
  if (!qword_1ECC0FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD60);
  }

  return result;
}

unint64_t sub_1DB08B5C4()
{
  result = qword_1ECC0FD68;
  if (!qword_1ECC0FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD68);
  }

  return result;
}

unint64_t sub_1DB08B618()
{
  result = qword_1ECC0FD70;
  if (!qword_1ECC0FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD70);
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DB08B71C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DAF62CC4;

  return sub_1DB073774(a1, a2, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1DB08B868()
{
  result = qword_1ECC0FDD8;
  if (!qword_1ECC0FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FDD8);
  }

  return result;
}

unint64_t sub_1DB08B8C0()
{
  result = qword_1ECC0FDE0;
  if (!qword_1ECC0FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FDE0);
  }

  return result;
}

uint64_t dispatch thunk of ODIBindingsProvider.allBindings.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAF63DEC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ODIBindingsProvider.geoCoder.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAFD37FC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ODIBindingsProvider.getBinding(bindingName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DAF63DEC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ODIBindingsProvider.registerBinding(_:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DAF63DEC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ODILocationProvider.gpsLocationEnabled()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB0954A0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ODILocationProvider.getLocation()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB0954A0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ODILocationProvider.getLocationOrWait()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF61E90;

  return v7(a1, a2);
}

uint64_t getEnumTagSinglePayload for ArmandDeviceDataErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x25)
  {
    goto LABEL_20;
  }

  v2 = a2 + 219;
  if (a2 + 219 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 219;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 219;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0xD3)
  {
    v8 = v7 - 210;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xA)
  {
    return v8 - 9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ArmandDeviceDataErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 219;
  if (a3 + 219 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0x25)
  {
    v5 = 0;
  }

  if (a2 > 0x24)
  {
    v6 = ((a2 - 37) >> 8) + 1;
    *result = a2 - 37;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 - 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1DB08C284(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xD3)
  {
    return v1 - 210;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DB08C298(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 46;
  }

  return result;
}

uint64_t sub_1DB08C2C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1034))
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

uint64_t sub_1DB08C31C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 1032) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1034) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1034) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of ArmandDataFiller.updateArmandData(for:locationHelper:bindingsHelper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 600) + **(*v4 + 600));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DAFD37FC;

  return v12(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for TelephonyUtilitiesSource(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for TelephonyUtilitiesSource(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB08C864(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DB08C8C0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB08C924(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_1DB08C980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB08C9F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[36])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
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

uint64_t sub_1DB08CA58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1DB08CADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x25 && *(a1 + 122))
  {
    return (*a1 + 37);
  }

  v3 = *(a1 + 9);
  if (v3 <= 0xDB)
  {
    v4 = 219;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 220;
  if (v3 < 0xD3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1DB08CB30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x24)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 37;
    if (a3 >= 0x25)
    {
      *(result + 122) = 1;
    }
  }

  else
  {
    if (a3 >= 0x25)
    {
      *(result + 122) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 - 37;
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

uint64_t getEnumTagSinglePayload for ConfigurationSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x25 && *(a1 + 10))
  {
    return (*a1 + 37);
  }

  v3 = *(a1 + 9);
  if (v3 <= 0xDB)
  {
    v4 = 219;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 220;
  if (v3 < 0xD3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x24)
  {
    *(result + 8) = 0;
    *result = a2 - 37;
    if (a3 >= 0x25)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x25)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 - 37;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArmandDeviceDataErrorCode.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArmandDeviceDataErrorCode.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB08CE70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 281))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DB08CECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 281) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 281) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1DB08CFA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 98))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DB08D004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DB08D0A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 67))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DB08D104(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB08D180(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DB08D1DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DB08D274(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 82))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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