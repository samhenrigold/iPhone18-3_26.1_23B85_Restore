uint64_t sub_1B700(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = sub_B6370();
  v45 = *(v47 - 8);
  v8 = __chkstk_darwin(v47);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v36 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF500, &qword_BE040);
  result = sub_B7D60();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = v45 + 16;
  v39 = result;
  v46 = v45 + 32;
  v16 = result + 64;
  v40 = a1;
  v37 = a4;
  v17 = v47;
  while (v14)
  {
    v18 = v10;
    v19 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v45;
    v44 = *(v45 + 72);
    v25 = v41;
    (*(v45 + 16))(v41, v23 + v44 * v22, v17);
    v43 = *(a4[7] + v22);
    v26 = *(v24 + 32);
    v10 = v18;
    v26(v18, v25, v17);
    v13 = v39;
    sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
    result = sub_B7870();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v40;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v40;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = (v26)(*(v13 + 48) + v30 * v44, v10, v47);
    *(*(v13 + 56) + v30) = v43;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v10;
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BA98(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_B7EB0();
  sub_B7980();
  v8 = sub_B7EE0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_B7DD0() & 1) != 0)
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

    sub_1DFBC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1BBE8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E94C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BCFC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1BC54(uint64_t *a1)
{
  v2 = *(sub_B6370() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E960(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BDF4(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1BCFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_B7D90(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_B79F0();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C2B4(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1BF20(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1BDF4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_B7D90(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_B6370();
        v6 = sub_B79F0();
        v6[2] = v5;
      }

      v7 = *(sub_B6370() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C890(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_1BFF0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_B7DD0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_B6370();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_212D0(&qword_EF4B0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
      v26 = sub_B78B0();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C2B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1DB60(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D2B8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_B7DD0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_B7DD0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DC58(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1DC58((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D2B8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB60(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1DAD4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_B7DD0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1C890(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_B6370();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v119 - v15;
  result = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = &_swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1DB60(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1D4E0(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1DB60(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_1DAD4(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = &_swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_212D0(&qword_EF4B0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
      LODWORD(v133) = sub_B78B0();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_B78B0() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DC58(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_1DC58((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1D4E0(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1DB60(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_1DAD4(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_212D0(&qword_EF4B0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
    v109 = sub_B78B0();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1D2B8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
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
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_B7DD0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_B7DD0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D4E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_B6370();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_212D0(&qword_EF4B0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
          LOBYTE(v35) = sub_B78B0();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_212D0(&qword_EF4B0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
        LOBYTE(v22) = sub_B78B0();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_1DB74(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_1DAD4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DB60(v3);
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

uint64_t sub_1DB74(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_B6370();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1DC58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF490, &qword_BDFB0);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_1DD5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF498, &qword_BDFB8);
  result = sub_B7C60();
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
      sub_B7EB0();
      sub_B7980();
      result = sub_B7EE0();
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

uint64_t sub_1DFBC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1DD5C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1E13C();
      goto LABEL_16;
    }

    sub_1E298(v8 + 1);
  }

  v10 = *v4;
  sub_B7EB0();
  sub_B7980();
  result = sub_B7EE0();
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

      result = sub_B7DD0();
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
  result = sub_B7DE0();
  __break(1u);
  return result;
}

void *sub_1E13C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF498, &qword_BDFB8);
  v2 = *v0;
  v3 = sub_B7C50();
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

  return result;
}

uint64_t sub_1E298(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF498, &qword_BDFB8);
  result = sub_B7C60();
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
      sub_B7EB0();

      sub_B7980();
      result = sub_B7EE0();
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

void *sub_1E4D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E61C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E510(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF148, &qword_BDA10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_1E61C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4B8, &qword_BDFE8);
  v10 = *(sub_B6370() - 8);
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
  v15 = *(sub_B6370() - 8);
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

void *sub_1E7F4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E974(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v28 = v9;
  v29 = result;
  if (v8)
  {
    do
    {
      v10 = __clz(__rbit64(v8));
      v30 = (v8 - 1) & v8;
LABEL_12:
      v13 = v10 | (v4 << 6);
      v14 = *(*(v3 + 48) + 8 * v13);
      v15 = *(v3 + 56) + 32 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      v20 = v14;
      sub_20AFC(v16, v17, v18, v19);
      if (!v20)
      {
        return 1;
      }

      v35 = v16;
      v36 = v17;
      v37 = v18;
      v38 = v19;
      v21 = sub_17E94(v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        sub_20B30(v16, v17, v18, v19);
        return 0;
      }

      v24 = *(a2 + 56) + 32 * v21;
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v31 = *v24;
      v32 = v25;
      v33 = v26;
      v34 = *(v24 + 24);
      sub_20AFC(v31, v25, v26, v34);
      MyAppCore22ContactPickerViewModelC15RecipientStatusO2eeoiySbAE_AEtFZ_0 = _s13FindMyAppCore22ContactPickerViewModelC15RecipientStatusO2eeoiySbAE_AEtFZ_0(&v31, &v35);
      sub_20B30(v31, v32, v33, v34);
      result = sub_20B30(v35, v36, v37, v38);
      if ((MyAppCore22ContactPickerViewModelC15RecipientStatusO2eeoiySbAE_AEtFZ_0 & 1) == 0)
      {
        return 0;
      }

      v9 = v28;
      v3 = v29;
      v8 = v30;
    }

    while (v30);
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v30 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1EB4C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = *(*(v2 + 48) + 8 * (v8 | (v3 << 6)));

    sub_17E94(v11);
    v13 = v12;

    if ((v13 & 1) == 0)
    {

      return 0;
    }

    v14 = sub_B7AD0();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13FindMyAppCore22ContactPickerViewModelC15RecipientStatusO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  v30[0] = v3;
  v30[1] = v4;
  v30[2] = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  if (!v6)
  {
    if (!v10)
    {
      v12 = v9;
      if (v4)
      {
        if (!v8)
        {
          v22 = v7;
          sub_20AFC(v7, 0, v9, 0);
          sub_20AFC(v22, 0, v12, 0);
          v13 = v3;
          v14 = v4;
          v15 = v5;
          v16 = 0;
          goto LABEL_24;
        }

        if (v3 == v7 && v4 == v8)
        {
          sub_20AFC(v3, v4, v9, 0);
          sub_20AFC(v3, v4, v5, 0);
          goto LABEL_26;
        }

        v23 = v7;
        v24 = v8;
        v25 = sub_B7DD0();
        sub_20AFC(v23, v24, v12, 0);
        sub_20AFC(v3, v4, v5, 0);
        sub_A194(v30, &qword_EF4D8, &qword_BE008);
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v18 = v7;
        v19 = v8;

        sub_20AFC(v18, v19, v12, 0);
        sub_20AFC(v3, 0, v5, 0);
        sub_A194(v30, &qword_EF4D8, &qword_BE008);
        if (v19)
        {
          sub_20B30(v18, v19, v12, 0);
          return 0;
        }
      }

      return 1;
    }

    goto LABEL_23;
  }

  if (v6 != 1)
  {
    if (v5 | v4 | v3)
    {
      if (v10 == 2 && v7 == 1 && !(v9 | v8))
      {
        goto LABEL_26;
      }
    }

    else if (v10 == 2 && !(v9 | v8 | v7))
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v10 != 1)
  {
LABEL_23:
    sub_20AFC(v7, v8, v9, v10);
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v16 = v6;
LABEL_24:
    sub_20AFC(v13, v14, v15, v16);
    sub_A194(v30, &qword_EF4D8, &qword_BE008);
    return 0;
  }

  if ((v7 ^ v3))
  {
LABEL_35:
    sub_20AFC(v7, v8, v9, 1u);
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v16 = 1;
    goto LABEL_24;
  }

  v11 = v7;
  if (!v5)
  {
    v20 = v9;
    v21 = v8;

    sub_20AFC(v11, v21, v20, 1u);
    sub_20AFC(v3, v4, 0, 1u);
    sub_A194(v30, &qword_EF4D8, &qword_BE008);
    if (v20)
    {
      sub_20B30(v11, v21, v20, 1u);
      return 0;
    }

    return 1;
  }

  if (!v9)
  {
    v26 = v8;
    sub_20AFC(v7, v8, 0, 1u);
    v7 = v11;
    v8 = v26;
    v9 = 0;
    goto LABEL_35;
  }

  if (v4 == v8 && v5 == v9)
  {
    sub_20AFC(v7, v4, v5, 1u);
    sub_20AFC(v3, v4, v5, 1u);
LABEL_26:
    sub_A194(v30, &qword_EF4D8, &qword_BE008);
    return 1;
  }

  v27 = v8;
  v28 = v9;
  v29 = sub_B7DD0();
  sub_20AFC(v11, v27, v28, 1u);
  sub_20AFC(v3, v4, v5, 1u);
  sub_A194(v30, &qword_EF4D8, &qword_BE008);
  result = 1;
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  return result;
}

id sub_1F0A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_B6320();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_B6370();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v48[-v12];
  __chkstk_darwin(v11);
  v15 = &v48[-v14];

  sub_B6350();
  sub_B6330();
  v16 = (*(v3 + 88))(v5, v2);
  if (v16 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    sub_B6360();
    sub_B6360();
    v17 = sub_B78E0();

    v18 = sub_B78E0();

    v19 = [objc_opt_self() contactWithDisplayName:v17 emailOrPhoneNumber:v18];

    sub_B6360();
    v20 = objc_allocWithZone(CNComposeRecipient);
    v21 = sub_B78E0();

    v22 = [v20 initWithContact:v19 address:v21 kind:1];
LABEL_5:
    v26 = v22;

    (*(v7 + 8))(v15, v6);
    return v26;
  }

  if (v16 == enum case for PersonModel.Handle.Kind.email(_:))
  {
    sub_B6360();
    sub_B6360();
    v23 = sub_B78E0();

    v24 = sub_B78E0();

    v19 = [objc_opt_self() contactWithDisplayName:v23 emailOrPhoneNumber:v24];

    sub_B6360();
    v25 = objc_allocWithZone(CNComposeRecipient);
    v21 = sub_B78E0();

    v22 = [v25 initWithContact:v19 address:v21 kind:0];
    goto LABEL_5;
  }

  if (v16 == enum case for PersonModel.Handle.Kind.unknown(_:))
  {
    if (qword_EEA90 != -1)
    {
      swift_once();
    }

    v27 = sub_B69C0();
    __swift_project_value_buffer(v27, qword_EF150);
    (*(v7 + 16))(v13, v15, v6);
    v28 = sub_B69A0();
    v29 = sub_B7B40();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v30 = 136315651;
      *(v30 + 4) = sub_17834(0xD000000000000016, 0x80000000000B9010, &v53);
      *(v30 + 12) = 2160;
      *(v30 + 14) = 1752392040;
      *(v30 + 22) = 2081;
      v31 = sub_B6300();
      v33 = v32;
      v34 = *(v7 + 8);
      v34(v13, v6);
      v35 = sub_17834(v31, v33, &v53);

      *(v30 + 24) = v35;
      _os_log_impl(&dword_0, v28, v29, "FMRecipientsViewModel: %s - %{private,mask.hash}s", v30, 0x20u);
      swift_arrayDestroy();

      v34(v15, v6);
    }

    else
    {

      v45 = *(v7 + 8);
      v45(v13, v6);
      v45(v15, v6);
    }
  }

  else
  {
    if (qword_EEA90 != -1)
    {
      swift_once();
    }

    v36 = sub_B69C0();
    __swift_project_value_buffer(v36, qword_EF150);
    (*(v7 + 16))(v10, v15, v6);
    v37 = sub_B69A0();
    v38 = sub_B7B40();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v39 = 136315651;
      *(v39 + 4) = sub_17834(0xD000000000000016, 0x80000000000B9010, &v53);
      *(v39 + 12) = 2160;
      *(v39 + 14) = 1752392040;
      *(v39 + 22) = 2081;
      v50 = v37;
      v40 = sub_B6300();
      v49 = v38;
      v42 = v41;
      v51 = *(v7 + 8);
      v51(v10, v6);
      v43 = sub_17834(v40, v42, &v53);

      *(v39 + 24) = v43;
      v44 = v50;
      _os_log_impl(&dword_0, v50, v49, "FMRecipientsViewModel: %s - %{private,mask.hash}s", v39, 0x20u);
      swift_arrayDestroy();

      v51(v15, v6);
    }

    else
    {

      v46 = *(v7 + 8);
      v46(v10, v6);
      v46(v15, v6);
    }

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

unint64_t sub_1F86C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF478, &qword_BDF48);
    v3 = sub_B7D60();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 4);
      sub_20AFC(v5, v6, v7, v8);
      result = sub_17E94(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v12 = v3[7] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1F98C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF468, &qword_BDF10);
    v3 = sub_B7D60();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_17E94(v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1FA84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1FABC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2184C;

  return sub_147C0(a1, a2, v7, v6);
}

uint64_t sub_1FB70()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1FBA8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1FBF0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2184C;

  return sub_15834(a1, a2, v6, v7, v8, v9, v11, v10);
}

unint64_t sub_1FCD0()
{
  result = qword_EF1A8;
  if (!qword_EF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF1A8);
  }

  return result;
}

void sub_1FD4C(uint64_t a1)
{
  sub_1FE84(319);
  if (v1 <= 0x3F)
  {
    sub_B6600();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1FE84(uint64_t a1)
{
  if (!qword_EF1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE00, &unk_BDA40);
    v1 = sub_B7BE0();
    if (!v2)
    {
      atomic_store(v1, &qword_EF1E8);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1FEFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1FF44(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2002C(uint64_t *a1, int a2)
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

uint64_t sub_20074(uint64_t result, int a2, int a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = (*(*(v7 - 8) + 48))(a1, a2, v7);
  if (v8 >= 2)
  {
    return v8 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v8 = (a2 + 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, a3, v9);
}

uint64_t sub_20224(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2027C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t a6)
{
  sub_202E0(319, a4, a5, a6);
  v7 = v6;
  if (v8 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v7;
}

void sub_202E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20330(0, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20330(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_B6960();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20390(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_203D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FindMyAppCore22ContactPickerViewModelC12DependenciesV18ReachabilityResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

void *sub_2045C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_20498(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_204F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FindMyAppCore22ContactPickerViewModelC15RecipientStatusO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_20590(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_205D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_20620(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactPickerViewModel.RecipientStatus.InvalidReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContactPickerViewModel.RecipientStatus.InvalidReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_20814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_208D8(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_20910(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_B6370() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2184C;

  return sub_11F58(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_20A70(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_20AD4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_20AE8(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_20AFC(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_20AFC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_20B1C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_20B30(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_20B30(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_20BEC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_C5D8(v1, v2);
  return sub_C618(v4, v5);
}

uint64_t objectdestroy_80Tm()
{
  v1 = sub_B6370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_20DA4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_B6370() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2184C;

  return sub_128FC(a1, v7, v8, v9, v1 + v6, v10);
}

unint64_t sub_20EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF540, &qword_BE110);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C8, &qword_BDFF8);
    v7 = sub_B7D60();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_A310(v9, v5, &qword_EF540, &qword_BE110);
      result = sub_17ED8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_B6370();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 32 * v13;
      v17 = *(v8 + 2);
      v18 = v8[24];
      *v16 = *v8;
      *(v16 + 16) = v17;
      *(v16 + 24) = v18;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_210E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E8, &qword_BE018);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF500, &qword_BE040);
    v7 = sub_B7D60();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_A310(v9, v5, &qword_EF4E8, &qword_BE018);
      result = sub_17ED8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_B6370();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_212D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21318(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_21324(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2184C;

  return sub_166D0(a1, a2, v6, v7, v8);
}

uint64_t sub_213E8()
{
  v1 = sub_B6370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_214B4(uint64_t a1)
{
  v4 = *(sub_B6370() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_F248;

  return sub_173BC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_215B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E8, &qword_BE018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_216F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_F248;

  return sub_F19C(v2, v3, v4);
}

uint64_t sub_21884(double a1)
{
  v2 = sub_B7170();
  __chkstk_darwin(v2);
  *&v6[1] = a1;
  (*(v4 + 104))(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Font.TextStyle.headline(_:));
  sub_275B4();
  return sub_B6AA0();
}

uint64_t sub_21974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_B6DE0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF548, &qword_BE148);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_27FF8(v2 + *(a1 + 84), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_B6BE0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_B7B50();
    v14 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t ListRowTemplate.init(imageViewBuilder:titleViewBuilder:subtitleViewBuilder:detailViewBuilder:controlsBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  sub_21884(38.0);
  v33[0] = a12;
  v33[1] = a13;
  v33[2] = a14;
  v34 = a15;
  v35 = a16;
  v23 = type metadata accessor for ListRowTemplate(0, v33);
  v24 = v23[21];
  *(a9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF548, &qword_BE148);
  result = swift_storeEnumTagMultiPayload();
  v26 = (a9 + v23[22]);
  *v26 = a1;
  v26[1] = a2;
  v27 = (a9 + v23[23]);
  *v27 = a3;
  v27[1] = a4;
  v28 = (a9 + v23[24]);
  *v28 = a5;
  v28[1] = a6;
  v29 = (a9 + v23[25]);
  *v29 = a7;
  v29[1] = a8;
  v30 = (a9 + v23[26]);
  *v30 = a10;
  v30[1] = a11;
  return result;
}

uint64_t ListRowTemplate.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v27 = sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  v28 = sub_B6BF0();
  sub_B6BF0();
  v29 = sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  v30 = sub_B7BE0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  v21 = &protocol conformance descriptor for HStack<A>;
  swift_getWitnessTable();
  sub_B7660();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  v3 = sub_B6F10();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_B6BF0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  sub_22374(a1, v5);
  sub_B7750();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v25 = WitnessTable;
  v26 = v14;
  v18 = swift_getWitnessTable();
  sub_B7420();
  (*(v20 + 8))(v5, v3);
  v23 = v18;
  v24 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v15 = *(v7 + 16);
  v15(v12, v10, v6);
  v16 = *(v7 + 8);
  v16(v10, v6);
  v15(v22, v12, v6);
  return (v16)(v12, v6);
}

uint64_t sub_22374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_B6BF0();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  v4 = sub_B6BF0();
  sub_B6BF0();
  v5 = sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  v6 = sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  swift_getWitnessTable();
  sub_B7660();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  v8 = sub_B7660();
  v46 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v43 - v11;
  v53 = v3;
  v54 = v4;
  v55 = v5;
  v56 = v6;
  v57 = v7;
  swift_getTupleTypeMetadata();
  sub_B77B0();
  swift_getWitnessTable();
  v12 = sub_B7690();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v43 = &v43 - v17;
  v18 = sub_B6BE0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_B6F10();
  v48 = *(v22 - 8);
  v49 = v22;
  __chkstk_darwin(v22);
  v47 = &v43 - v23;
  v24 = a1;
  sub_21974(a1, v21);
  LOBYTE(a1) = sub_B6BD0();
  (*(v19 + 8))(v21, v18);
  if (a1)
  {
    sub_22B7C(v24);
    WitnessTable = swift_getWitnessTable();
    v26 = *(v13 + 16);
    v27 = v43;
    v26(v43, v16, v12);
    v28 = *(v13 + 8);
    v28(v16, v12);
    v26(v16, v27, v12);
    v29 = swift_getWitnessTable();
    v30 = v47;
    sub_22D7C(v16, v12, v8, WitnessTable, v29);
    v28(v16, v12);
    v28(v27, v12);
  }

  else
  {
    v31 = v45;
    sub_22E74(v24);
    v32 = swift_getWitnessTable();
    v33 = v46;
    v34 = *(v46 + 16);
    v35 = v44;
    v34(v44, v31, v8);
    v36 = *(v33 + 8);
    v36(v31, v8);
    v34(v31, v35, v8);
    v37 = swift_getWitnessTable();
    v30 = v47;
    sub_2318C(v31, v12, v8, v37, v32);
    v36(v31, v8);
    v36(v35, v8);
  }

  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v51 = v38;
  v52 = v39;
  v40 = v49;
  swift_getWitnessTable();
  v41 = v48;
  (*(v48 + 16))(v50, v30, v40);
  return (*(v41 + 8))(v30, v40);
}

uint64_t sub_22B7C(uint64_t a1)
{
  sub_B6EB0();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  sub_B6BF0();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata();
  sub_B77B0();
  swift_getWitnessTable();
  return sub_B7680();
}

uint64_t sub_22D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_B6EF0();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_B6F00();
}

uint64_t sub_22E74(uint64_t a1)
{
  sub_B6E20();
  sub_B6BF0();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  swift_getWitnessTable();
  sub_B7660();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  return sub_B7650();
}

uint64_t sub_2318C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_B6EF0();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_B6F00();
}

uint64_t sub_23284@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v69 = a8;
  v70 = a7;
  v63 = a6;
  v62 = a1;
  v64 = a9;
  v67 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v66 = a3;
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  v68 = a4;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  swift_getWitnessTable();
  sub_B7660();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata2();
  v57 = sub_B77B0();
  WitnessTable = swift_getWitnessTable();
  v61 = sub_B7690();
  v59 = *(v61 - 8);
  v14 = __chkstk_darwin(v61);
  v56 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = &v46 - v16;
  v17 = sub_B6BF0();
  v53 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v54 = sub_B6BF0();
  v20 = *(v54 - 8);
  v21 = __chkstk_darwin(v54);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v46 - v24;
  sub_B7A60();
  v55 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v51 = a2;
  v74 = a2;
  v75 = v66;
  v76 = v68;
  v77 = a5;
  v52 = a5;
  v26 = v63;
  v78 = v63;
  v79 = v70;
  v80 = v69;
  v81 = v67;
  v27 = type metadata accessor for ListRowTemplate(0, &v74);
  v28 = v62;
  sub_23AB8(v27);
  sub_B7100();
  v73[4] = v26;
  v73[5] = &protocol witness table for _FrameLayout;
  v29 = swift_getWitnessTable();
  sub_B7440();
  (*(v53 + 8))(v19, v17);
  v73[2] = v29;
  v73[3] = &protocol witness table for _PaddingLayout;
  v30 = v54;
  v49 = swift_getWitnessTable();
  v48 = *(v20 + 16);
  v65 = v25;
  v47 = v23;
  v48(v25, v23, v30);
  v50 = *(v20 + 8);
  v53 = v20 + 8;
  v50(v23, v30);
  v31 = sub_B6EB0();
  __chkstk_darwin(v31);
  v32 = v66;
  *(&v46 - 10) = v51;
  *(&v46 - 9) = v32;
  v33 = v52;
  *(&v46 - 8) = v68;
  *(&v46 - 7) = v33;
  v35 = v69;
  v34 = v70;
  *(&v46 - 6) = v26;
  *(&v46 - 5) = v34;
  v36 = v67;
  *(&v46 - 4) = v35;
  *(&v46 - 3) = v36;
  *(&v46 - 2) = v28;
  v37 = v56;
  sub_B7680();
  v38 = v61;
  v70 = swift_getWitnessTable();
  v39 = v59;
  v40 = *(v59 + 16);
  v41 = v60;
  v40(v60, v37, v38);
  v42 = *(v39 + 8);
  v42(v37, v38);
  v43 = v47;
  v48(v47, v65, v30);
  v74 = v43;
  v40(v37, v41, v38);
  v75 = v37;
  v73[0] = v30;
  v73[1] = v38;
  v71 = v49;
  v72 = v70;
  sub_2563C(&v74, 2uLL, v73);
  v42(v41, v38);
  v44 = v50;
  v50(v65, v30);
  v42(v37, v38);
  v44(v43, v30);
}

uint64_t sub_23AB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + *(v4 + 88)))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  sub_B6AC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  sub_B6AC0();
  sub_B7760();
  sub_B7410();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23C1C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v48 = a8;
  v55 = a7;
  v53 = a6;
  v45 = a2;
  v54 = a1;
  v52 = a9;
  v46 = a10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF568, &qword_BE160);
  v13 = __chkstk_darwin(v50);
  v51 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = &v37 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  v47 = a4;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  v16 = a5;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  swift_getWitnessTable();
  v42 = sub_B7660();
  v17 = *(v42 - 8);
  v18 = __chkstk_darwin(v42);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v43 = &v37 - v21;
  sub_B7A60();
  v44 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = sub_B6E20();
  __chkstk_darwin(v22);
  v23 = v45;
  *(&v37 - 10) = v45;
  *(&v37 - 9) = a3;
  v39 = a3;
  v24 = v47;
  *(&v37 - 8) = v47;
  *(&v37 - 7) = v16;
  v38 = v16;
  v25 = v55;
  *(&v37 - 6) = v53;
  *(&v37 - 5) = v25;
  v26 = v48;
  v27 = v46;
  *(&v37 - 4) = v48;
  *(&v37 - 3) = v27;
  *(&v37 - 2) = v54;
  sub_B7650();
  v28 = v42;
  WitnessTable = swift_getWitnessTable();
  v29 = *(v17 + 16);
  v30 = v43;
  v29(v43, v20, v28);
  v41 = *(v17 + 8);
  v41(v20, v28);
  v59 = v23;
  v60 = v39;
  v61 = v24;
  v62 = v38;
  v63 = v53;
  v64 = v55;
  v65 = v26;
  v66 = v27;
  v31 = type metadata accessor for ListRowTemplate(0, &v59);
  v32 = v49;
  sub_26048(v31, v49);
  v29(v20, v30, v28);
  v59 = v20;
  v33 = v51;
  sub_27B8C(v32, v51);
  v60 = v33;
  v58[0] = v28;
  v58[1] = v50;
  v56 = WitnessTable;
  v57 = sub_27BFC();
  sub_2563C(&v59, 2uLL, v58);
  sub_A194(v32, &qword_EF568, &qword_BE160);
  v34 = v30;
  v35 = v41;
  v41(v34, v28);
  sub_A194(v33, &qword_EF568, &qword_BE160);
  v35(v20, v28);
}

uint64_t sub_241F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v35 = a7;
  v36 = a8;
  v33 = a1;
  v34 = a6;
  v29 = a2;
  v37 = a9;
  v31 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v30 = a3;
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  v32 = a4;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  v13 = a5;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  v14 = sub_B7660();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v28 - v19;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = sub_B6E30();
  __chkstk_darwin(v21);
  v22 = v30;
  *(&v28 - 10) = v29;
  *(&v28 - 9) = v22;
  *(&v28 - 8) = v32;
  *(&v28 - 7) = v13;
  v23 = v35;
  *(&v28 - 6) = v34;
  *(&v28 - 5) = v23;
  v24 = v31;
  *(&v28 - 4) = v36;
  *(&v28 - 3) = v24;
  *(&v28 - 2) = v33;
  sub_B7650();
  swift_getWitnessTable();
  v25 = *(v15 + 16);
  v25(v20, v18, v14);
  v26 = *(v15 + 8);
  v26(v18, v14);
  v25(v37, v20, v14);
  v26(v20, v14);
}

uint64_t sub_245E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v59 = a8;
  v57 = a7;
  v61 = a6;
  v51 = a2;
  v56 = a1;
  v60 = a9;
  v52 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  v50 = sub_B77B0();
  v54 = sub_B7BE0();
  v58 = *(v54 - 8);
  v13 = __chkstk_darwin(v54);
  v55 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v53 = &v42 - v15;
  sub_B6BF0();
  sub_B6BF0();
  v16 = a4;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  v17 = sub_B77B0();
  WitnessTable = swift_getWitnessTable();
  v47 = v17;
  v46 = WitnessTable;
  v49 = sub_B7690();
  v63 = *(v49 - 8);
  v19 = __chkstk_darwin(v49);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v62 = &v42 - v22;
  sub_B7A60();
  v48 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_B6EB0();
  __chkstk_darwin(v23);
  v24 = v51;
  *(&v42 - 10) = v51;
  *(&v42 - 9) = a3;
  *(&v42 - 8) = a4;
  *(&v42 - 7) = a5;
  v43 = a5;
  v42 = a3;
  v25 = v56;
  v26 = v57;
  *(&v42 - 6) = v61;
  *(&v42 - 5) = v26;
  v27 = v59;
  v28 = v52;
  *(&v42 - 4) = v59;
  *(&v42 - 3) = v28;
  *(&v42 - 2) = v25;
  v44 = v21;
  sub_B7680();
  v29 = v49;
  v46 = swift_getWitnessTable();
  v30 = v63;
  v45 = *(v63 + 16);
  v45(v62, v21, v29);
  v31 = *(v30 + 8);
  v63 = v30 + 8;
  v47 = v31;
  v31(v21, v29);
  v67 = v24;
  v68 = v42;
  v69 = v16;
  v70 = v43;
  v71 = v61;
  v72 = v26;
  v73 = v27;
  v74 = v28;
  v32 = type metadata accessor for ListRowTemplate(0, &v67);
  v33 = v55;
  sub_2580C(1, v32, v55);
  v66[2] = swift_getWitnessTable();
  v34 = v54;
  v61 = swift_getWitnessTable();
  v35 = v58;
  v36 = *(v58 + 16);
  v37 = v53;
  v36(v53, v33, v34);
  v38 = *(v35 + 8);
  v38(v33, v34);
  v39 = v44;
  v45(v44, v62, v29);
  v67 = v39;
  v36(v33, v37, v34);
  v68 = v33;
  v66[0] = v29;
  v66[1] = v34;
  v64 = v46;
  v65 = v61;
  sub_2563C(&v67, 2uLL, v66);
  v38(v37, v34);
  v40 = v47;
  v47(v62, v29);
  v38(v33, v34);
  v40(v39, v29);
}

uint64_t sub_24C24@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, void (*a4)(void, void)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v42 = a7;
  v41 = a4;
  v39 = a1;
  v49 = a8;
  v40 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v13 = sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  v44 = v13;
  v48 = sub_B6BF0();
  v46 = *(v48 - 8);
  v14 = __chkstk_darwin(v48);
  v45 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v37 - v16;
  sub_B6BF0();
  v17 = sub_B6BF0();
  v51 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v50 = &v37 - v21;
  sub_B7A60();
  v43 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v55 = v39;
  v56 = a2;
  v57 = a3;
  v58 = v41;
  v59 = a5;
  v60 = a6;
  v22 = v42;
  v61 = v42;
  v62 = v40;
  v39 = type metadata accessor for ListRowTemplate(0, &v55);
  sub_251BC(v39, v20);
  v23 = sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v54[8] = a6;
  v54[9] = v23;
  WitnessTable = swift_getWitnessTable();
  v25 = sub_A8CC(&qword_EF628, &qword_EF558, &qword_C2150, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v54[6] = WitnessTable;
  v54[7] = v25;
  v40 = swift_getWitnessTable();
  v26 = v22;
  v27 = v51;
  v38 = *(v51 + 16);
  v37 = v20;
  v38(v50, v20, v17);
  v41 = *(v27 + 8);
  v51 = v27 + 8;
  v41(v20, v17);
  v28 = v45;
  sub_253FC(v39, v45);
  v54[4] = v26;
  v54[5] = v23;
  v54[2] = swift_getWitnessTable();
  v54[3] = v25;
  v29 = v48;
  v44 = swift_getWitnessTable();
  v30 = v46;
  v31 = *(v46 + 16);
  v32 = v47;
  v31(v47, v28, v29);
  v33 = *(v30 + 8);
  v33(v28, v29);
  v34 = v37;
  v38(v37, v50, v17);
  v55 = v34;
  v31(v28, v32, v29);
  v56 = v28;
  v54[0] = v17;
  v54[1] = v29;
  v52 = v40;
  v53 = v44;
  sub_2563C(&v55, 2uLL, v54);
  v33(v32, v29);
  v35 = v41;
  v41(v50, v17);
  v33(v28, v29);
  v35(v34, v17);
}

uint64_t sub_251BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v8 = sub_B6BF0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v16 - v11;
  (*(v2 + *(a1 + 92)))(v10);
  sub_B7160();
  v13 = *(a1 + 56);
  sub_B73E0();

  (*(v5 + 8))(v7, v4);
  v17 = sub_B6F80();
  v14 = sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v16[1] = v13;
  v16[2] = v14;
  swift_getWitnessTable();
  sub_B72C0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_253FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v8 = sub_B6BF0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v16 - v11;
  (*(v2 + *(a1 + 96)))(v10);
  sub_B7110();
  v13 = *(a1 + 64);
  sub_B73E0();

  (*(v5 + 8))(v7, v4);
  v17 = sub_B6FA0();
  v14 = sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v16[1] = v13;
  v16[2] = v14;
  swift_getWitnessTable();
  sub_B72C0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2563C(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_B77C0();
}

uint64_t sub_2580C@<X0>(int a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v71 = a1;
  v74 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  v6 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v7 = sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  v8 = sub_B6BF0();
  v67 = v5;
  swift_getTupleTypeMetadata2();
  v9 = sub_B77B0();
  v72 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v66 = &v54[-v11];
  v64 = v7;
  v59 = *(v7 - 8);
  v12 = __chkstk_darwin(v10);
  v58 = &v54[-v13];
  v61 = v8;
  v65 = *(v8 - 8);
  v14 = __chkstk_darwin(v12);
  v62 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v63 = &v54[-v16];
  v17 = sub_B7BE0();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v54[-v20];
  v22 = *(v6 - 8);
  __chkstk_darwin(v19);
  v60 = &v54[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = v9;
  v24 = sub_B7BE0();
  v68 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v69 = &v54[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v70 = &v54[-v28];
  v29 = a2;
  (*(v3 + *(a2 + 100)))(v27);
  if ((*(v22 + 48))(v21, 1, v6) == 1)
  {
    (*(v18 + 8))(v21, v17);
    v30 = v69;
    (*(v72 + 56))(v69, 1, 1, v73);
  }

  else
  {
    v57 = v22;
    v31 = *(v22 + 32);
    v32 = v60;
    v56 = v6;
    v31(v60, v21, v6);
    v55 = v71 & 1;
    sub_B7110();
    v33 = *(v29 + 72);
    v34 = v58;
    sub_B73E0();

    LODWORD(v81[0]) = sub_B6FA0();
    v35 = sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v81[4] = v33;
    v81[5] = v35;
    v36 = v64;
    WitnessTable = swift_getWitnessTable();
    v38 = v62;
    sub_B72C0();
    (*(v59 + 8))(v34, v36);
    v39 = sub_A8CC(&qword_EF628, &qword_EF558, &qword_C2150, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    v81[2] = WitnessTable;
    v81[3] = v39;
    v40 = v61;
    v64 = swift_getWitnessTable();
    v41 = v65;
    v42 = *(v65 + 16);
    v43 = v63;
    v42(v63, v38, v40);
    v44 = *(v41 + 8);
    v44(v38, v40);
    v78 = 0;
    v79 = v55;
    v80 = (v71 & 1) == 0;
    v81[0] = &v78;
    v42(v38, v43, v40);
    v81[1] = v38;
    v77[0] = v67;
    v77[1] = v40;
    v75 = sub_27EC4();
    v76 = v64;
    v45 = v66;
    sub_2563C(v81, 2uLL, v77);
    v44(v43, v40);
    (*(v57 + 8))(v32, v56);
    v44(v38, v40);
    v46 = v72;
    v30 = v69;
    v47 = v45;
    v48 = v73;
    (*(v72 + 32))(v69, v47, v73);
    (*(v46 + 56))(v30, 0, 1, v48);
  }

  swift_getWitnessTable();
  v49 = v68;
  v50 = *(v68 + 16);
  v51 = v70;
  v50(v70, v30, v24);
  v52 = *(v49 + 8);
  v52(v30, v24);
  v81[6] = swift_getWitnessTable();
  swift_getWitnessTable();
  v50(v74, v51, v24);
  return (v52)(v51, v24);
}

uint64_t sub_26048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_B6E90();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_B6ED0();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B67C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF638, &qword_BE1F0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF658, &qword_BE1F8);
  v34 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v27 - v17;
  if (*((*(v32 + *(a1 + 104)))(v16) + 16))
  {
    sub_B67B0();
    sub_B6EC0();
    sub_27E74(&qword_EF648, &type metadata accessor for DynamicControlsStack, &protocol conformance descriptor for DynamicControlsStack);
    sub_27E74(&qword_EEFC0, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
    sub_B7240();
    (*(v28 + 8))(v7, v5);
    (*(v9 + 8))(v11, v8);
    KeyPath = swift_getKeyPath();
    v20 = &v14[*(v12 + 36)];
    *v20 = KeyPath;
    v20[8] = 1;
    v21 = v29;
    sub_B6E80();
    sub_27D0C();
    sub_27E74(&qword_EF650, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
    v22 = v31;
    sub_B7250();
    (*(v30 + 8))(v21, v22);
    sub_A194(v14, &qword_EF638, &qword_BE1F0);
    v23 = v33;
    (*(v34 + 32))(v33, v18, v15);
    return (*(v34 + 56))(v23, 0, 1, v15);
  }

  else
  {

    v25 = v33;
    v26 = *(v34 + 56);

    return v26(v25, 1, 1, v15);
  }
}

uint64_t sub_2651C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, char *a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v100 = a8;
  v86 = a7;
  WitnessTable = a6;
  v89 = a1;
  v92 = a9;
  v83 = a10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF568, &qword_BE160);
  v14 = __chkstk_darwin(v91);
  v93 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v102 = &v71 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v84 = a5;
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  v88 = sub_B77B0();
  v98 = sub_B7BE0();
  v90 = *(v98 - 8);
  v17 = __chkstk_darwin(v98);
  v97 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v101 = &v71 - v19;
  v81 = a4;
  v85 = sub_B6BF0();
  v95 = sub_B6BF0();
  v108 = *(v95 - 8);
  v20 = __chkstk_darwin(v95);
  v99 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v107 = &v71 - v22;
  v23 = a3;
  v80 = sub_B6BF0();
  v103 = sub_B6BF0();
  v106 = *(v103 - 8);
  v24 = __chkstk_darwin(v103);
  v104 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v105 = &v71 - v26;
  v27 = a2;
  v28 = sub_B6BF0();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v71 - v33;
  sub_B7A60();
  v87 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v115 = v27;
  v116 = v23;
  v117 = v81;
  v118 = v84;
  v35 = WitnessTable;
  v36 = v86;
  v119 = WitnessTable;
  v120 = v86;
  v121 = v100;
  v122 = v83;
  v37 = type metadata accessor for ListRowTemplate(0, &v115);
  sub_23AB8(v37);
  v114[14] = v35;
  v114[15] = &protocol witness table for _FrameLayout;
  v78 = v28;
  WitnessTable = swift_getWitnessTable();
  v38 = *(v29 + 16);
  v79 = v29 + 16;
  v81 = v38;
  v96 = v34;
  v94 = v32;
  v38(v34, v32, v28);
  v39 = *(v29 + 8);
  v83 = v29 + 8;
  v84 = v39;
  (v39)(v32, v28);
  v40 = v104;
  sub_251BC(v37, v104);
  v41 = sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v114[12] = v36;
  v114[13] = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_A8CC(&qword_EF628, &qword_EF558, &qword_C2150, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v114[10] = v42;
  v114[11] = v43;
  v44 = v103;
  v80 = swift_getWitnessTable();
  v45 = v106;
  v46 = *(v106 + 16);
  v76 = v106 + 16;
  v77 = v46;
  v46(v105, v40, v44);
  v47 = *(v45 + 8);
  v106 = v45 + 8;
  v86 = v47;
  v47(v40, v44);
  v48 = v99;
  v73 = v37;
  sub_253FC(v37, v99);
  v114[8] = v100;
  v114[9] = v41;
  v114[6] = swift_getWitnessTable();
  v114[7] = v43;
  v49 = v95;
  v85 = swift_getWitnessTable();
  v50 = v108;
  v51 = *(v108 + 16);
  v74 = v108 + 16;
  v75 = v51;
  v51(v107, v48, v49);
  v52 = *(v50 + 8);
  v108 = v50 + 8;
  v100 = v52;
  v52(v48, v49);
  v53 = v97;
  sub_2580C(0, v37, v97);
  v114[5] = swift_getWitnessTable();
  v54 = v98;
  v88 = swift_getWitnessTable();
  v55 = v90;
  v72 = *(v90 + 16);
  v56 = v101;
  v72(v101, v53, v54);
  v90 = *(v55 + 8);
  (v90)(v53, v54);
  sub_26048(v73, v102);
  v57 = v94;
  v58 = v78;
  v81(v94, v96, v78);
  v115 = v57;
  v59 = v104;
  v60 = v103;
  v77(v104, v105, v103);
  v116 = v59;
  v75(v48, v107, v49);
  v117 = v48;
  v72(v53, v56, v54);
  v118 = v53;
  v61 = v102;
  v62 = v93;
  sub_27B8C(v102, v93);
  v119 = v62;
  v114[0] = v58;
  v63 = v60;
  v114[1] = v60;
  v114[2] = v49;
  v114[3] = v54;
  v114[4] = v91;
  v109 = WitnessTable;
  v110 = v80;
  v111 = v85;
  v112 = v88;
  v113 = sub_27BFC();
  sub_2563C(&v115, 5uLL, v114);
  sub_A194(v61, &qword_EF568, &qword_BE160);
  v64 = v54;
  v65 = v90;
  (v90)(v101, v64);
  v66 = v100;
  v100(v107, v49);
  v67 = v63;
  v68 = v86;
  v86(v105, v67);
  v69 = v84;
  (v84)(v96, v58);
  sub_A194(v62, &qword_EF568, &qword_BE160);
  v65(v97, v98);
  v66(v99, v95);
  v68(v104, v103);
  v69(v94, v58);
}

uint64_t sub_27124(uint64_t a1)
{
  v2 = sub_B6BE0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_B6D10();
}

void sub_27244(uint64_t a1)
{
  sub_27558(319);
  if (v1 <= 0x3F)
  {
    sub_27608(319);
    if (v2 <= 0x3F)
    {
      sub_27660();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_27300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_EF578, &qword_BE1C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 84);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 88));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_27438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_EF578, &qword_BE1C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 88)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 84);
  }

  return v11(v12, a2, a2, v10);
}

void sub_27558(uint64_t a1)
{
  if (!qword_EF600)
  {
    sub_275B4();
    v1 = sub_B6AD0();
    if (!v2)
    {
      atomic_store(v1, &qword_EF600);
    }
  }
}

unint64_t sub_275B4()
{
  result = qword_EF608;
  if (!qword_EF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF608);
  }

  return result;
}

void sub_27608(uint64_t a1)
{
  if (!qword_EF610)
  {
    sub_B6BE0();
    v1 = sub_B6A50();
    if (!v2)
    {
      atomic_store(v1, &qword_EF610);
    }
  }
}

unint64_t sub_27660()
{
  result = qword_EF618;
  if (!qword_EF618)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_EF618);
  }

  return result;
}

uint64_t sub_276B0(void *a1)
{
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  sub_B6BF0();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  swift_getWitnessTable();
  sub_B7660();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  sub_B6F10();
  sub_B6BF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_27B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF568, &qword_BE160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27BFC()
{
  result = qword_EF630;
  if (!qword_EF630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF638, &qword_BE1F0);
    sub_B6E90();
    sub_27D0C();
    sub_27E74(&qword_EF650, &type metadata accessor for BorderedButtonStyle, &protocol conformance descriptor for BorderedButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF630);
  }

  return result;
}

unint64_t sub_27D0C()
{
  result = qword_EF640;
  if (!qword_EF640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF638, &qword_BE1F0);
    sub_B67C0();
    sub_B6ED0();
    sub_27E74(&qword_EF648, &type metadata accessor for DynamicControlsStack, &protocol conformance descriptor for DynamicControlsStack);
    sub_27E74(&qword_EEFC0, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_EEFD8, &qword_EEFE0, &qword_BD750, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF640);
  }

  return result;
}

uint64_t sub_27E74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27EC4()
{
  result = qword_EF660;
  if (!qword_EF660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF660);
  }

  return result;
}

uint64_t sub_27FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF548, &qword_BE148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ManagementSectionViewTemplate.body.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_B63C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];

  sub_B63B0();
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  v19[3] = &type metadata for SolariumFeatureFlag;
  v19[4] = sub_28360();
  v10 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (v10)
  {
    v11 = 0;
    v12 = 26.0;
  }

  else
  {
    if (qword_EEAE0 != -1)
    {
      swift_once();
    }

    v11 = *(&xmmword_FAE50 + 1);
    v12 = *&xmmword_FAE50;
  }

  v13 = type metadata accessor for DetailsSectionTemplate(0);
  v14 = &a1[v13[8]];
  *v14 = v12;
  *(v14 + 1) = v11;
  v15 = &a1[v13[5]];
  *v15 = v8;
  *(v15 + 1) = v7;
  result = (*(v4 + 32))(&a1[v13[6]], v6, v3);
  *&a1[v13[7]] = v9;
  v17 = &a1[v13[9]];
  *v17 = 0;
  *(v17 + 1) = 0;
  return result;
}

uint64_t sub_28294(uint64_t a1)
{
  v2 = sub_B6A40();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_B6CD0();
}

unint64_t sub_28360()
{
  result = qword_EF670;
  if (!qword_EF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF670);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_283E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2842C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_28480()
{
  result = qword_EF678;
  if (!qword_EF678)
  {
    type metadata accessor for DetailsSectionTemplate(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF678);
  }

  return result;
}

id sub_284D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_B64C0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v21[-v10];
  __chkstk_darwin(v9);
  v13 = &v21[-v12];
  v14 = sub_B78E0();
  v15 = sub_B78E0();
  v16 = [v3 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    return 0;
  }

  sub_B64A0();

  (*(v5 + 32))(v13, v11, v4);
  sub_20A70(0, &qword_EF978, CAPackage_ptr);
  (*(v5 + 16))(v8, v13, v4);
  v17 = sub_B7900();
  v20 = sub_2A9D8(v8, v17, v18, 0);
  (*(v5 + 8))(v13, v4);
  result = v20;
  if (!v20)
  {
    return 0;
  }

  return result;
}

void sub_28718(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    return;
  }

  v4 = *(v2 + 24);
  if (!v4)
  {
    return;
  }

  v17 = v3;
  v5 = [v4 rootLayer];
  if (v5)
  {
    v6 = v5;
    v7 = sub_B78E0();
    v8 = [v6 stateWithName:v7];

    if (!v8)
    {
      v9 = v17;
      v17 = v6;
LABEL_13:

      goto LABEL_14;
    }

    v9 = v6;
    v10 = [v17 stateOfLayer:v9];
    if (v10)
    {
      v11 = v10;
      sub_20A70(0, &qword_EF970, CAState_ptr);
      v12 = v8;
      v13 = sub_B7BB0();

      if (v13)
      {
        v15 = v9;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v16 = v8;
    }

    LODWORD(v14) = 1.0;
    [v17 setState:v8 ofLayer:v9 transitionSpeed:v14];
    v12 = v17;
    v15 = v8;
    v17 = v9;
    goto LABEL_12;
  }

LABEL_14:
}

void sub_288A8()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = [v1 rootLayer];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(CAStateController) initWithLayer:v2];
      v5 = v0[2];
      v0[2] = v4;

      v6 = v0[3];
      if (!v6 || (v7 = [v6 rootLayer]) == 0 || (v8 = v7, v9 = objc_msgSend(v7, "states"), v8, !v9) || (v10 = sub_B79E0(), v9, v11 = sub_28A5C(v10), , !v11))
      {

        v11 = &_swiftEmptyArrayStorage;
      }

      if (v11 >> 62)
      {
        if (sub_B7D30())
        {
          goto LABEL_10;
        }
      }

      else if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_10:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = sub_B7C80();
        }

        else
        {
          if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return;
          }

          v12 = *(v11 + 32);
        }

        v13 = v12;

        goto LABEL_17;
      }

      v13 = 0;
LABEL_17:
      v16 = v0[4];
      v0[4] = v13;
      v15 = v13;
      sub_28B68(v16);

      v14 = v16;
      goto LABEL_18;
    }
  }

  v14 = v0[2];
  v0[2] = 0;
LABEL_18:
}

void *sub_28A5C(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_B7CC0();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_20814(i, v5);
    sub_20A70(0, &qword_EF970, CAState_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_B7CA0();
    sub_B7CD0();
    sub_B7CE0();
    sub_B7CB0();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_28B68(void *a1)
{
  v2 = v1;
  v4 = v2[4];
  if (v4)
  {
    if (a1)
    {
      sub_20A70(0, &qword_EF970, CAState_ptr);
      v5 = v4;
      v6 = a1;
      v7 = sub_B7BB0();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v2[2];
  if (v8)
  {
    v9 = v2[4];
    if (v9)
    {
      v10 = v2[3];
      if (v10)
      {
        v11 = v9;
        v15 = v8;
        v12 = [v10 rootLayer];
        if (v12)
        {
          v14 = v12;
          LODWORD(v13) = 1.0;
          [v15 setState:v11 ofLayer:v12 transitionSpeed:v13];

          v15 = v14;
        }
      }
    }
  }
}

uint64_t sub_28CA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_28D10@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ViewState();
  result = sub_B69D0();
  *a2 = result;
  return result;
}

double sub_28D50()
{
  type metadata accessor for AnimatedViewState();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_28D84()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 40);
  v19 = *(v0 + 8);
  v20 = *(v0 + 32);
  type metadata accessor for AnimatedViewState();
  sub_2AC3C(&qword_EF948, type metadata accessor for AnimatedViewState, &unk_BE488);

  v4 = sub_B6A60();
  v5 = *(v0 + 48);
  type metadata accessor for ViewState();
  sub_2AC3C(&qword_EF950, type metadata accessor for ViewState, &unk_BE488);

  v6 = sub_B6B90();
  v8 = v7;
  if (!*(v4 + 24))
  {
    v9 = sub_284D8(v2, v19);
    v10 = *(v4 + 24);
    *(v4 + 24) = v9;
    v11 = v9;

    sub_288A8();
  }

  v12 = swift_allocObject();
  v13 = *(v1 + 48);
  v12[3] = *(v1 + 32);
  v12[4] = v13;
  *(v12 + 73) = *(v1 + 57);
  v14 = *(v1 + 16);
  v12[1] = *v1;
  v12[2] = v14;
  *&v24 = v20;
  *(&v24 + 1) = v3;
  LOBYTE(v25) = v5;
  *(&v25 + 1) = v6;
  *&v26 = v8;
  *(&v26 + 1) = sub_2A82C;
  v27 = v12;
  v28 = 0;
  v23 = *(v1 + 24);
  v15 = swift_allocObject();
  v16 = *(v1 + 48);
  v15[3] = *(v1 + 32);
  v15[4] = v16;
  *(v15 + 73) = *(v1 + 57);
  v17 = *(v1 + 16);
  v15[1] = *v1;
  v15[2] = v17;
  sub_2A8C0(v1, v21);
  sub_2A8C0(v1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF958, &qword_BE4C0);
  sub_2A8F8();
  sub_B7480();

  v21[2] = v26;
  v21[3] = v27;
  v22 = v28;
  v21[0] = v24;
  v21[1] = v25;
  return sub_A194(v21, &qword_EF958, &qword_BE4C0);
}

uint64_t sub_29020(uint64_t a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 24))
  {
    type metadata accessor for AnimatedViewState();
    sub_2AC3C(&qword_EF948, type metadata accessor for AnimatedViewState, &unk_BE488);
    sub_B6A60();
    sub_295B4();
  }
}

void sub_29184()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + 24);
  v34 = *(v0 + 32);
  if (!v2)
  {
    v9 = v1;
LABEL_9:

    v8 = &_swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v3 = v1;
  v4 = [v2 rootLayer];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 states];

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = sub_B79E0();

  v8 = sub_28A5C(v7);

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = sub_294A4(v34, v8);
  v12 = v11;

  v13 = v34;
  if ((v12 & 1) == 0)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = *(v0 + 24);
      if (v15 && (v16 = [v15 rootLayer]) != 0 && (v17 = v16, v18 = objc_msgSend(v16, "states"), v17, v18) && (v19 = sub_B79E0(), v18, v20 = sub_28A5C(v19), , v20))
      {
        v21 = v20;
      }

      else
      {

        v21 = &_swiftEmptyArrayStorage;
      }

      if (!(v21 >> 62))
      {
        v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));

        if (v22)
        {
          goto LABEL_20;
        }

        goto LABEL_37;
      }
    }

    v22 = sub_B7D30();

    if (v22)
    {
LABEL_20:
      if (v14 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_41;
      }

      v23 = v14 % v22;
      v24 = *(v0 + 24);
      if (!v24 || (v25 = [v24 rootLayer]) == 0 || (v26 = v25, v27 = objc_msgSend(v25, "states"), v26, !v27) || (v28 = sub_B79E0(), v27, v29 = sub_28A5C(v28), , !v29))
      {

        v29 = &_swiftEmptyArrayStorage;
      }

      if ((v29 & 0xC000000000000001) == 0)
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v23 < *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
        {
          v30 = *(v29 + 8 * v23 + 32);
LABEL_31:
          v31 = v30;

          v32 = *(v0 + 32);
          *(v0 + 32) = v31;
          v33 = v31;
          sub_28B68(v32);

          sub_295B4();
          v13 = v33;
          goto LABEL_32;
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

LABEL_38:
      v30 = sub_B7C80();
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_32:
}

unint64_t sub_294A4(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_B7D30();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_B7C80();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_20A70(0, &qword_EF970, CAState_ptr);
    v8 = sub_B7BB0();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_295B4()
{
  v1 = sub_B7800();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_B7820();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_B77F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_B7840();
  v12 = __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v18 = &v38 - v17;
  v19 = *(v0 + 32);
  if (!v19)
  {
    return;
  }

  v39 = v16;
  v40 = v4;
  v42 = v1;
  v43 = v15;
  v41 = v2;
  v20 = *(v0 + 24);
  v46 = v19;
  if (!v20)
  {
    v27 = v19;
LABEL_8:

    v26 = &_swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v21 = v19;
  v22 = [v20 rootLayer];
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  v24 = [v22 states];

  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = sub_B79E0();

  v26 = sub_28A5C(v25);

  if (!v26)
  {
    goto LABEL_8;
  }

LABEL_9:
  v28 = sub_294A4(v46, v26);
  v30 = v29;

  if (v30)
  {
    v31 = v46;
  }

  else
  {
    if (v28)
    {
      v32 = 2500;
    }

    else
    {
      v32 = 500;
    }

    sub_20A70(0, &qword_EF980, OS_dispatch_queue_ptr);
    v38 = sub_B7B80();
    sub_B7830();
    *v10 = v32;
    (*(v8 + 104))(v10, enum case for DispatchTimeInterval.milliseconds(_:), v7);
    sub_B7850();
    (*(v8 + 8))(v10, v7);
    v39 = *(v39 + 8);
    (v39)(v14, v43);
    v33 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2AC1C;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29C58;
    aBlock[3] = &block_descriptor;
    v34 = _Block_copy(aBlock);

    sub_B7810();
    v47 = &_swiftEmptyArrayStorage;
    sub_2AC3C(&qword_EF988, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF990, &qword_BE4C8);
    sub_A8CC(&qword_EF998, &qword_EF990, &qword_BE4C8, &protocol conformance descriptor for [A]);
    v35 = v45;
    v36 = v42;
    sub_B7C20();
    v37 = v38;
    sub_B7B70();

    _Block_release(v34);
    (*(v41 + 8))(v35, v36);
    (*(v44 + 8))(v6, v40);
    (v39)(v18, v43);
  }
}

uint64_t sub_29B8C(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29184();
  }
}

uint64_t sub_29C58(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_29CA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF9A0, &qword_BE558);
  __chkstk_darwin(v1);
  v3 = &v13[-v2];
  type metadata accessor for CAPackageViewLayer();
  v4 = *v0;
  v15 = *(v0 + 24);
  v16 = v4;
  v5 = swift_allocObject();
  v6 = v0[1];
  *(v5 + 16) = *v0;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 4);
  sub_A310(&v16, &v14, &qword_EF9A8, &qword_BE560);
  sub_A310(&v15, &v14, &qword_EF9B0, &qword_BE568);
  sub_B6B00();
  v7 = swift_allocObject();
  v8 = v0[1];
  *(v7 + 16) = *v0;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v0 + 4);
  v9 = &v3[*(v1 + 36)];
  *v9 = sub_2ADC4;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  v14 = v16;
  v10 = swift_allocObject();
  v11 = v0[1];
  *(v10 + 16) = *v0;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v0 + 4);
  sub_A310(&v16, v13, &qword_EF9A8, &qword_BE560);
  sub_A310(&v16, v13, &qword_EF9A8, &qword_BE560);
  sub_A310(&v15, v13, &qword_EF9B0, &qword_BE568);
  sub_A310(&v16, v13, &qword_EF9A8, &qword_BE560);
  sub_A310(&v15, v13, &qword_EF9B0, &qword_BE568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF9A8, &qword_BE560);
  sub_2AE44();
  sub_2AEFC();
  sub_B7480();

  sub_A194(&v16, &qword_EF9A8, &qword_BE560);
  return sub_A194(v3, &qword_EF9A0, &qword_BE558);
}

void sub_29FC4(_BYTE *a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(*(a2 + 32) + 24);
  if (v4 && (v5 = [v4 rootLayer]) != 0)
  {
    v6 = v5;
    v7 = v5;
    sub_2A1F4(v6);
    a1[OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_fitToHeight] = *(a2 + 16);
    [a1 layoutSublayers];
  }

  else
  {
  }
}

uint64_t sub_2A100(uint64_t *a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1[1];
  if (v3)
  {
    sub_28718(*a1, v3);
  }
}

void sub_2A1F4(void *a1)
{
  v2 = OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer:v5];
  }
}

void sub_2A28C()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for CAPackageViewLayer();
  objc_msgSendSuper2(&v33, "layoutSublayers");
  v1 = *&v0[OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_packageLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v34.origin.x = v4;
    v34.origin.y = v6;
    v34.size.width = v8;
    v34.size.height = v10;
    Width = CGRectGetWidth(v34);
    rect = v10;
    v35.origin.x = v4;
    v35.origin.y = v6;
    v35.size.width = v8;
    v35.size.height = v10;
    Height = CGRectGetHeight(v35);
    v36.origin.x = v12;
    v36.origin.y = v14;
    v36.size.width = v16;
    v36.size.height = v18;
    v19 = CGRectGetWidth(v36);
    v37.origin.x = v12;
    v37.origin.y = v14;
    v37.size.width = v16;
    v37.size.height = v18;
    v20 = CGRectGetHeight(v37);
    if ((v0[OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_fitToHeight] & 1) != 0 || Width / Height >= v19 / v20)
    {
      v40.origin.x = v4;
      v40.origin.y = v6;
      v40.size.width = v8;
      v40.size.height = rect;
      v21 = CGRectGetHeight(v40);
      v41.origin.x = v12;
      v41.origin.y = v14;
      v41.size.width = v16;
      v41.size.height = v18;
      v22 = CGRectGetHeight(v41);
    }

    else
    {
      v38.origin.x = v4;
      v38.origin.y = v6;
      v38.size.width = v8;
      v38.size.height = rect;
      v21 = CGRectGetWidth(v38);
      v39.origin.x = v12;
      v39.origin.y = v14;
      v39.size.width = v16;
      v39.size.height = v18;
      v22 = CGRectGetWidth(v39);
    }

    CGAffineTransformMakeScale(&v31, v21 / v22, v21 / v22);
    m21 = v31.m21;
    m22 = v31.m22;
    v29 = *&v31.m13;
    v30 = *&v31.m11;
    [v2 setGeometryFlipped:1];
    *&m.a = v30;
    *&m.c = v29;
    m.tx = m21;
    m.ty = m22;
    CATransform3DMakeAffineTransform(&v31, &m);
    [v2 setTransform:&v31];
    [v0 bounds];
    MidX = CGRectGetMidX(v42);
    [v0 bounds];
    [v2 setPosition:{MidX, CGRectGetMidY(v43)}];
  }
}

id sub_2A6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2A74C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2A794(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm()
{

  sub_2A824(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 89, 7);
}

unint64_t sub_2A8F8()
{
  result = qword_EF960;
  if (!qword_EF960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF958, &qword_BE4C0);
    sub_2A984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF960);
  }

  return result;
}

unint64_t sub_2A984()
{
  result = qword_EF968;
  if (!qword_EF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF968);
  }

  return result;
}

id sub_2A9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_B6480(__stack_chk_guard);
  v7 = v6;
  v8 = sub_B78E0();

  if (a4)
  {
    v9.super.isa = sub_B7860().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v18 = 0;
  v10 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v7 type:v8 options:v9.super.isa error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = sub_B64C0();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a1, v12);
  }

  else
  {
    v15 = v18;
    sub_B6440();

    swift_willThrow();
    v16 = sub_B64C0();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return v10;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2ABE4(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2AC3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2AC84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2ACCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2AD24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF958, &qword_BE4C0);
  sub_2A8F8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_58Tm()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_2AE44()
{
  result = qword_EF9B8;
  if (!qword_EF9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF9A0, &qword_BE558);
    sub_A8CC(&qword_EF9C0, &qword_EF9C8, &qword_BE570, &protocol conformance descriptor for _CALayerView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9B8);
  }

  return result;
}

unint64_t sub_2AEFC()
{
  result = qword_EF9D0;
  if (!qword_EF9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF9A8, &qword_BE560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9D0);
  }

  return result;
}

uint64_t sub_2AF78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF9A0, &qword_BE558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF9A8, &qword_BE560);
  sub_2AE44();
  sub_2AEFC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2B050()
{
  result = qword_EF9D8;
  if (!qword_EF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9D8);
  }

  return result;
}

unint64_t sub_2B0A8()
{
  result = qword_EF9E0;
  if (!qword_EF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9E0);
  }

  return result;
}

unint64_t sub_2B100()
{
  result = qword_EF9E8;
  if (!qword_EF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9E8);
  }

  return result;
}

Swift::Int sub_2B154()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(v1);
  return sub_B7EE0();
}

Swift::Int sub_2B1C8()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(v1);
  return sub_B7EE0();
}

unint64_t sub_2B210()
{
  result = qword_EF9F0;
  if (!qword_EF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LostDevice.Capabilities(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LostDevice.Capabilities(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2B30C()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_EFA90);
  __swift_project_value_buffer(v0, qword_EFA90);
  type metadata accessor for DeviceManagementModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.deviceManagement.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEA98 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_EFA90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *DeviceManagementSectionView.init(viewModel:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for DeviceManagementSectionViewModel(0);
  result = sub_B75B0();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

char *DeviceManagementSectionView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - v4;
  v6 = *v1;
  v7 = v1[1];
  if (qword_EEA98 != -1)
  {
    swift_once();
  }

  v8 = sub_B62F0();
  v9 = __swift_project_value_buffer(v8, qword_EFA90);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v5, v9, v8);
  (*(v10 + 56))(v5, 0, 1, v8);
  v11 = sub_B78D0();
  v13 = v12;
  sub_2B630(v5);
  v15[0] = v6;
  v15[1] = v7;
  result = sub_2B698();
  *a1 = v11;
  a1[1] = v13;
  a1[2] = result;
  return result;
}

uint64_t sub_2B630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_2B698()
{
  v1 = sub_B65A0();
  v72 = *(v1 - 8);
  v73 = v1;
  __chkstk_darwin(v1);
  v71 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v65 - v4;
  v6 = *v0;
  v7 = v0[1];
  *&v80[0] = *v0;
  *(&v80[0] + 1) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFAB0, &qword_BE880);
  sub_B75C0();
  v9 = v74;
  swift_getKeyPath();
  *&v80[0] = v9;
  v10 = sub_2C2D0();
  sub_B65C0();

  v11 = *(v9 + 16);

  v69 = v10;
  v70 = v8;
  if (v11)
  {
    if (qword_EEA98 != -1)
    {
      swift_once();
    }

    v15 = sub_B62F0();
    v16 = __swift_project_value_buffer(v15, qword_EFA90);
    v17 = *(v15 - 8);
    (*(v17 + 16))(v5, v16, v15);
    (*(v17 + 56))(v5, 0, 1, v15);
    v18 = sub_B78D0();
    v20 = v19;
    sub_2B630(v5);
    *(&v80[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v80[2] = sub_28360();
    LOBYTE(v15) = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v80);
    if (v15)
    {
      v21 = 1;
    }

    else
    {
      v21 = 3;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = v6;
    *(v22 + 24) = v7;
    *(&v80[7] + 8) = 0u;
    *(&v80[8] + 8) = 0u;
    *(&v80[9] + 1) = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v68 = v7;

    v67 = v6;

    v23 = v71;
    sub_B6590();
    v24 = sub_B6560();
    v26 = v25;
    (*(v72 + 8))(v23, v73);
    memset(&v80[11], 0, 96);
    *&v80[0] = v24;
    *(&v80[0] + 1) = v26;
    *&v80[1] = v18;
    *(&v80[1] + 1) = v20;
    LOBYTE(v80[2]) = v21;
    *(&v80[2] + 1) = 0;
    *&v80[3] = 0;
    BYTE8(v80[3]) = 0;
    v80[4] = 0uLL;
    LOBYTE(v80[5]) = 1;
    *(&v80[5] + 1) = sub_2C444;
    *&v80[6] = v22;
  }

  else
  {
    *&v80[0] = v6;
    *(&v80[0] + 1) = v7;
    sub_B75C0();
    v12 = v74;
    swift_getKeyPath();
    *&v80[0] = v12;
    sub_B65C0();

    v13 = *(v12 + 16);

    if ((v13 & 2) == 0)
    {
      v14 = &_swiftEmptyArrayStorage;
      goto LABEL_20;
    }

    *&v80[0] = v6;
    *(&v80[0] + 1) = v7;
    sub_B75C0();
    v27 = v74;
    swift_getKeyPath();
    *&v80[0] = v27;
    sub_B65C0();

    swift_beginAccess();

    if (qword_EEA98 != -1)
    {
      swift_once();
    }

    v28 = sub_B62F0();
    v29 = __swift_project_value_buffer(v28, qword_EFA90);
    v30 = *(v28 - 8);
    (*(v30 + 16))(v5, v29, v28);
    (*(v30 + 56))(v5, 0, 1, v28);
    v31 = sub_B78D0();
    v65 = v32;
    v66 = v31;

    sub_2B630(v5);
    *&v80[0] = v6;
    *(&v80[0] + 1) = v7;
    v68 = v7;
    sub_B75C0();
    v33 = v74;
    swift_getKeyPath();
    *&v80[0] = v33;
    sub_B65C0();

    swift_beginAccess();
    v34 = *(v33 + 24);

    v35 = 0;
    if ((v34 & 1) == 0)
    {
      *(&v80[1] + 1) = &type metadata for SolariumFeatureFlag;
      *&v80[2] = sub_28360();
      v36 = sub_B6610();
      __swift_destroy_boxed_opaque_existential_0(v80);
      if (v36)
      {
        v35 = 1;
      }

      else
      {
        v35 = 3;
      }
    }

    v37 = v68;
    *&v80[0] = v6;
    *(&v80[0] + 1) = v68;
    sub_B75C0();
    v38 = v74;
    swift_getKeyPath();
    *&v80[0] = v38;
    sub_B65C0();

    swift_beginAccess();
    v39 = *(v38 + 24);

    v40 = swift_allocObject();
    *(v40 + 16) = v6;
    *(v40 + 24) = v37;
    *(&v80[7] + 8) = 0u;
    *(&v80[8] + 8) = 0u;
    *(&v80[9] + 1) = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;

    v67 = v6;

    v41 = v71;
    sub_B6590();
    v42 = sub_B6560();
    v44 = v43;
    (*(v72 + 8))(v41, v73);
    memset(&v80[11], 0, 96);
    *&v80[0] = v42;
    *(&v80[0] + 1) = v44;
    *&v80[1] = v66;
    *(&v80[1] + 1) = v65;
    LOBYTE(v80[2]) = v35;
    *(&v80[2] + 1) = 0;
    *&v80[3] = 0;
    BYTE8(v80[3]) = 0;
    v80[4] = 0uLL;
    LOBYTE(v80[5]) = (v39 & 1) == 0;
    *(&v80[5] + 1) = sub_2C3D8;
    *&v80[6] = v40;
  }

  *(&v80[6] + 1) = 0;
  *&v80[7] = 0;
  v80[10] = 0uLL;
  sub_2C360(&v74, &v80[11]);
  v14 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
  v46 = *(v14 + 2);
  v45 = *(v14 + 3);
  if (v46 >= v45 >> 1)
  {
    v14 = sub_5358C((v45 > 1), v46 + 1, 1, v14);
  }

  *(v14 + 2) = v46 + 1;
  memcpy(&v14[272 * v46 + 32], v80, 0x110uLL);
  v6 = v67;
  v7 = v68;
LABEL_20:
  if (qword_EEA98 != -1)
  {
    swift_once();
  }

  v47 = sub_B62F0();
  v48 = __swift_project_value_buffer(v47, qword_EFA90);
  v49 = *(v47 - 8);
  (*(v49 + 16))(v5, v48, v47);
  (*(v49 + 56))(v5, 0, 1, v47);
  v68 = sub_B78D0();
  v51 = v50;
  sub_2B630(v5);
  *(&v80[1] + 1) = &type metadata for SolariumFeatureFlag;
  *&v80[2] = sub_28360();
  LOBYTE(v47) = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v80);
  if (v47)
  {
    v52 = 1;
  }

  else
  {
    v52 = 3;
  }

  *&v80[0] = v6;
  *(&v80[0] + 1) = v7;
  sub_B75C0();
  v53 = v7;
  v54 = v74;
  swift_getKeyPath();
  *&v80[0] = v54;
  sub_B65C0();

  v55 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled;
  swift_beginAccess();
  v56 = *(v54 + v55);

  v57 = swift_allocObject();
  *(v57 + 16) = v6;
  *(v57 + 24) = v53;
  *(&v80[7] + 8) = 0u;
  *(&v80[8] + 8) = 0u;
  *(&v80[9] + 1) = 0;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;

  v58 = v71;
  sub_B6590();
  v59 = sub_B6560();
  v61 = v60;
  (*(v72 + 8))(v58, v73);
  *&v80[0] = v59;
  *(&v80[0] + 1) = v61;
  *&v80[1] = v68;
  *(&v80[1] + 1) = v51;
  LOBYTE(v80[2]) = v52;
  *(&v80[2] + 1) = 0;
  *&v80[3] = 0;
  BYTE8(v80[3]) = 0;
  v80[4] = 0uLL;
  LOBYTE(v80[5]) = v56;
  *(&v80[5] + 1) = sub_2C334;
  v80[6] = v57;
  *&v80[7] = 0;
  memset(&v80[10], 0, 112);
  sub_2C360(&v74, &v80[11]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_5358C(0, *(v14 + 2) + 1, 1, v14);
  }

  v63 = *(v14 + 2);
  v62 = *(v14 + 3);
  if (v63 >= v62 >> 1)
  {
    v14 = sub_5358C((v62 > 1), v63 + 1, 1, v14);
  }

  *(v14 + 2) = v63 + 1;
  memcpy(&v14[272 * v63 + 32], v80, 0x110uLL);
  return v14;
}

uint64_t sub_2C188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFAB0, &qword_BE880);
  sub_B75C0();
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  v6 = (v10 + *a5);
  swift_beginAccess();
  v7 = *v6;

  v7(v8);
}

unint64_t sub_2C274()
{
  result = qword_EFAA8;
  if (!qword_EFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFAA8);
  }

  return result;
}

unint64_t sub_2C2D0()
{
  result = qword_EFAB8;
  if (!qword_EFAB8)
  {
    type metadata accessor for DeviceManagementSectionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFAB8);
  }

  return result;
}

uint64_t sub_2C360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFAC0, &qword_BEEB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2C490@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  *a1 = *(v1 + 16);
  return result;
}

uint64_t DeviceManagementSectionViewModel.isCancelling.getter()
{
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t DeviceManagementSectionViewModel.isRemoveButtonEnabled.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_2C2D0();
  sub_B65C0();

  v1 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_2C654(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_2C6EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2C764(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65B0();
}

uint64_t sub_2C800@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t DeviceManagementSectionViewModel.isCancelling.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 24) == v2)
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2C2D0();
    sub_B65B0();
  }

  return result;
}

uint64_t (*DeviceManagementSectionViewModel.isCancelling.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2C2D0();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_2CAB8;
}

uint64_t sub_2CAC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t DeviceManagementSectionViewModel.isRemoveButtonEnabled.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2C2D0();
    sub_B65B0();
  }

  return result;
}

uint64_t (*DeviceManagementSectionViewModel.isRemoveButtonEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2C2D0();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_2CD94;
}

uint64_t DeviceManagementSectionViewModel.__allocating_init(managedDevice:isCancelling:isRemoveButtonEnabled:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = swift_allocObject();
  DeviceManagementSectionViewModel.init(managedDevice:isCancelling:isRemoveButtonEnabled:)(a1, v4, v3);
  return v6;
}

uint64_t DeviceManagementSectionViewModel.init(managedDevice:isCancelling:isRemoveButtonEnabled:)(uint64_t *a1, char a2, char a3)
{
  v6 = *a1;
  sub_B69B0();
  v7 = (v3 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onRemoveOrRepairDevice);
  *v7 = ItemContactInfoSetupIntroductionViewModel.bind();
  v7[1] = 0;
  v8 = (v3 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onEraseDevice);
  *v8 = ItemContactInfoSetupIntroductionViewModel.bind();
  v8[1] = 0;
  v9 = (v3 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onCancelEraseDevice);
  *v9 = ItemContactInfoSetupIntroductionViewModel.bind();
  v9[1] = 0;
  sub_B65F0();
  *(v3 + 16) = v6;
  *(v3 + 24) = a2;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled) = a3;
  return v3;
}

uint64_t sub_2CF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65B0();
}

uint64_t (*DeviceManagementSectionViewModel.onRemoveOrRepairDevice.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2C2D0();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_2D17C;
}

uint64_t type metadata accessor for DeviceManagementSectionViewModel(uint64_t a1)
{
  result = qword_EFB20;
  if (!qword_EFB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*DeviceManagementSectionViewModel.onEraseDevice.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2C2D0();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_2D38C;
}

uint64_t sub_2D3C8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  v10 = (v9 + *a3);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  *a6 = a5;
  a6[1] = v13;
}

uint64_t sub_2D4D0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  swift_getKeyPath();
  sub_2C2D0();

  sub_B65B0();
}

uint64_t sub_2D5E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_2D634()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_2D6E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

uint64_t (*DeviceManagementSectionViewModel.onCancelEraseDevice.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2C2D0();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_2D890;
}

void sub_2D89C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_B65D0();

  free(v3);
}

Swift::Void __swiftcall DeviceManagementSectionViewModel.updateProperties(with:)(FindMyAppCore::ManagedDevice with)
{
  v1 = sub_B69A0();
  v2 = sub_B7B60();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Updating General section for device", v3, 2u);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_2C2D0();
  sub_B65B0();
}

uint64_t DeviceManagementSectionViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DeviceManagementSectionViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_2DC6C(uint64_t a1)
{
  result = sub_B69C0();
  if (v2 <= 0x3F)
  {
    result = sub_B6600();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2DD8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t DeviceLostModeStatusProvider.init(stream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFBE0, &unk_BEB00);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2DF38(uint64_t a1)
{
  result = sub_B6550();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2DFB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFBE0, &unk_BEB00);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2E03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFBE0, &unk_BEB00);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2E0D8(uint64_t a1)
{
  sub_2E144(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2E144(uint64_t a1)
{
  if (!qword_EFCF8)
  {
    type metadata accessor for DeviceLostModeReportingState(255);
    v1 = sub_B7AB0();
    if (!v2)
    {
      atomic_store(v1, &qword_EFCF8);
    }
  }
}

FindMyAppCore::ManagedPerson __swiftcall ManagedPerson.init(firstName:properties:isFavorite:)(FindMyAppCore::ManagedPerson firstName, FindMyAppCore::ManagedPerson::Properties properties, Swift::Bool isFavorite)
{
  v4 = *properties.rawValue;
  *v3 = firstName.firstName;
  *(v3 + 16) = v4;
  *(v3 + 24) = isFavorite;
  firstName.properties = properties;
  firstName.isFavorite = isFavorite;
  return firstName;
}

unint64_t sub_2E1B4()
{
  result = qword_EFD28;
  if (!qword_EFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD28);
  }

  return result;
}

unint64_t sub_2E20C()
{
  result = qword_EFD30;
  if (!qword_EFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD30);
  }

  return result;
}

unint64_t sub_2E264()
{
  result = qword_EFD38;
  if (!qword_EFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD38);
  }

  return result;
}

unint64_t sub_2E2BC()
{
  result = qword_EFD40;
  if (!qword_EFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD40);
  }

  return result;
}

uint64_t sub_2E310(uint64_t a1, int a2)
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

uint64_t sub_2E358(uint64_t result, int a2, int a3)
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

uint64_t DeviceLostModeManagementSectionView.lostModeTitle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v1 - 8);
  v3 = v18 - v2;
  v5 = *v0;
  v4 = v0[1];
  if (qword_EEAA0 != -1)
  {
    swift_once();
  }

  v6 = sub_B62F0();
  v18[0] = __swift_project_value_buffer(v6, qword_EFFC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(v3, v18[0], v6);
  v9 = *(v7 + 56);
  v9(v3, 0, 1, v6);
  v10 = sub_B78D0();
  v18[1] = v11;
  v18[2] = v10;
  sub_2B630(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_BDA30;
  v18[4] = v5;
  v18[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();

  v8(v3, v18[0], v6);
  v9(v3, 0, 1, v6);
  sub_B78D0();

  sub_2B630(v3);
  v13 = sub_B7920();
  v15 = v14;

  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_305FC();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = sub_B7910();

  return v16;
}

uint64_t sub_2E67C()
{
  v1 = sub_B64E0();
  v52 = *(v1 - 8);
  v53 = v1;
  __chkstk_darwin(v1);
  v49 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_B6500();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v48 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_B6550();
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  v10 = type metadata accessor for DeviceLostModeReportingState(0);
  __chkstk_darwin(v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  v14 = v0[1];
  v59 = *v0;
  v60 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v15 = v57;
  swift_getKeyPath();
  v59 = v15;
  sub_30920(&qword_EFD70, type metadata accessor for DeviceLostModeManagementViewModel, &protocol conformance descriptor for DeviceLostModeManagementViewModel);
  sub_B65C0();

  v16 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_30968(v15 + v16, v12);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v57 = v13;
    v58 = v14;
    sub_B75C0();
    v20 = *(v56 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice + 24);

    if (v20 == 1)
    {
      if (qword_EEAA0 == -1)
      {
        goto LABEL_10;
      }
    }

    else if (qword_EEAA0 == -1)
    {
LABEL_10:
      v21 = sub_B62F0();
      v22 = __swift_project_value_buffer(v21, qword_EFFC0);
      v23 = *(v21 - 8);
      (*(v23 + 16))(v9, v22, v21);
      (*(v23 + 56))(v9, 0, 1, v21);
      v24 = sub_B78D0();
      sub_2B630(v9);
      return v24;
    }

    swift_once();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    v18 = v55;
    if (EnumCaseMultiPayload == 1)
    {
      v19 = v54;
      (*(v5 + 32))(v54, v12, v55);
      if (qword_EEAA0 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v19 = v54;
      (*(v5 + 32))(v54, v12, v55);
      if (qword_EEAA0 == -1)
      {
LABEL_15:
        v38 = sub_B62F0();
        v39 = __swift_project_value_buffer(v38, qword_EFFC0);
        v40 = *(v38 - 8);
        (*(v40 + 16))(v9, v39, v38);
        (*(v40 + 56))(v9, 0, 1, v38);
        sub_B78D0();
        sub_2B630(v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_BDA30;
        v42 = v48;
        sub_B64F0();
        v43 = v49;
        sub_B64D0();
        v44 = sub_B6530();
        v46 = v45;
        (*(v52 + 8))(v43, v53);
        (*(v50 + 8))(v42, v51);
        *(v41 + 56) = &type metadata for String;
        *(v41 + 64) = sub_305FC();
        *(v41 + 32) = v44;
        *(v41 + 40) = v46;
        v24 = sub_B7910();

        (*(v5 + 8))(v19, v18);
        return v24;
      }
    }

    swift_once();
    goto LABEL_15;
  }

  v25 = v5;
  v26 = *(v5 + 32);
  v28 = v54;
  v27 = v55;
  v26(v54, v12, v55);
  if (qword_EEAA0 != -1)
  {
    swift_once();
  }

  v29 = sub_B62F0();
  v30 = __swift_project_value_buffer(v29, qword_EFFC0);
  v31 = *(v29 - 8);
  (*(v31 + 16))(v9, v30, v29);
  (*(v31 + 56))(v9, 0, 1, v29);
  sub_B78D0();
  sub_2B630(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_BDA30;
  v33 = v48;
  sub_B64F0();
  v34 = v49;
  sub_B64D0();
  v35 = sub_B6530();
  v37 = v36;
  (*(v52 + 8))(v34, v53);
  (*(v50 + 8))(v33, v51);
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_305FC();
  *(v32 + 32) = v35;
  *(v32 + 40) = v37;
  v24 = sub_B7910();

  (*(v25 + 8))(v28, v27);
  return v24;
}

void *DeviceLostModeManagementSectionView.init(viewModel:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for DeviceLostModeManagementViewModel(0);
  result = sub_B75B0();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t DeviceLostModeManagementSectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_B63C0();
  v55 = *(v2 - 8);
  v56 = v2;
  __chkstk_darwin(v2);
  v50 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v53 = type metadata accessor for DetailsSectionTemplate(0);
  v7 = __chkstk_darwin(v53);
  v49 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v54 = &v43 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD60, &qword_BED88);
  __chkstk_darwin(v52);
  v51 = &v43 - v10;
  v12 = *v1;
  v11 = v1[1];
  if (qword_EEAA0 != -1)
  {
    swift_once();
  }

  v13 = sub_B62F0();
  v14 = __swift_project_value_buffer(v13, qword_EFFC0);
  v15 = *(v13 - 8);
  v45 = *(v15 + 16);
  v46 = v14;
  v45(v6, v14, v13);
  v44 = *(v15 + 56);
  v44(v6, 0, 1, v13);
  v16 = sub_B78D0();
  v47 = v17;
  v48 = v16;
  sub_2B630(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_BDA30;
  v58 = v12;
  v59 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v19 = v12;

  v45(v6, v46, v13);
  v44(v6, 0, 1, v13);
  v20 = v11;
  sub_B78D0();

  sub_2B630(v6);
  v21 = sub_B7920();
  v23 = v22;

  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_305FC();
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  v24 = sub_B7910();
  v26 = v25;

  v27 = v50;
  sub_B6380();
  v58 = v12;
  v59 = v20;
  v28 = sub_2F67C();
  KeyPath = swift_getKeyPath();
  v30 = v49;
  *v49 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  v60 = &type metadata for SolariumFeatureFlag;
  v61 = sub_28360();
  v31 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v58);
  v32 = v27;
  if (v31)
  {
    v33 = xmmword_BED70;
  }

  else
  {
    if (qword_EEAE0 != -1)
    {
      swift_once();
      v32 = v27;
    }

    v33 = xmmword_FAE50;
  }

  v34 = v53;
  *(v30 + *(v53 + 32)) = v33;
  v35 = (v30 + v34[5]);
  *v35 = v24;
  v35[1] = v26;
  (*(v55 + 32))(v30 + v34[6], v32, v56);
  *(v30 + v34[7]) = v28;
  v36 = (v30 + v34[9]);
  *v36 = 0;
  v36[1] = 0;
  v37 = v54;
  sub_30658(v30, v54);
  v38 = swift_allocObject();
  *(v38 + 16) = v19;
  *(v38 + 24) = v20;
  v39 = v37;
  v40 = v51;
  sub_30658(v39, v51);
  v41 = (v40 + *(v52 + 36));
  *v41 = sub_306C0;
  v41[1] = v38;
  v41[2] = 0;
  v41[3] = 0;
  sub_306C8(v40, v57);
}

char *sub_2F67C()
{
  v1 = sub_B65A0();
  v41 = *(v1 - 8);
  v42 = v1;
  __chkstk_darwin(v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DeviceLostModeReportingState(0);
  __chkstk_darwin(v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = *v0;
  v11 = v0[1];
  *&v46[0] = *v0;
  *(&v46[0] + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v12 = *(v45[0] + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice + 16);

  if ((v12 & 1) == 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  *&v46[0] = v10;
  *(&v46[0] + 1) = v11;
  sub_B75C0();
  v14 = *(v45[0] + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice + 24);

  if (v14 == 1)
  {
    v40 = "_LOST_MODE_TITLE";
    if (qword_EEAA0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v40 = "gementSectionView.swift";
  if (qword_EEAA0 != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_7:
  v15 = sub_B62F0();
  v16 = __swift_project_value_buffer(v15, qword_EFFC0);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v9, v16, v15);
  (*(v17 + 56))(v9, 0, 1, v15);
  v18 = sub_B78D0();
  v40 = v19;
  sub_2B630(v9);
  v45[18] = v10;
  v45[19] = v11;
  v20 = sub_2E67C();
  v38 = v21;
  v39 = v20;
  *&v46[0] = v10;
  *(&v46[0] + 1) = v11;
  sub_B75C0();
  v22 = v45[0];
  swift_getKeyPath();
  *&v46[0] = v22;
  sub_30920(&qword_EFD70, type metadata accessor for DeviceLostModeManagementViewModel, &protocol conformance descriptor for DeviceLostModeManagementViewModel);
  sub_B65C0();

  v23 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_30968(v22 + v23, v6);

  if (swift_getEnumCaseMultiPayload() >= 3)
  {
    v24 = 0;
  }

  else
  {
    sub_309CC(v6);
    v24 = 2;
  }

  v45[13] = v10;
  v45[14] = v11;
  v25 = sub_2FE44();
  v26 = swift_allocObject();
  *(v26 + 16) = v10;
  *(v26 + 24) = v11;
  *(&v46[7] + 8) = 0u;
  *(&v46[8] + 8) = 0u;
  *(&v46[9] + 1) = 0;
  memset(v45, 0, 96);
  v43 = v10;
  v44 = v11;

  v27 = sub_3027C();
  v29 = v28;
  sub_B6590();
  v30 = sub_B6560();
  v32 = v31;
  (*(v41 + 8))(v3, v42);
  *&v46[0] = v30;
  *(&v46[0] + 1) = v32;
  *&v46[1] = v18;
  *(&v46[1] + 1) = v40;
  LOBYTE(v46[2]) = 0;
  *(&v46[2] + 1) = v39;
  *&v46[3] = v38;
  BYTE8(v46[3]) = v24;
  v46[4] = 0uLL;
  LOBYTE(v46[5]) = v25 & 1;
  *(&v46[5] + 1) = sub_30A28;
  *&v46[6] = v26;
  *(&v46[6] + 1) = v27;
  *&v46[7] = v29;
  memset(&v46[10], 0, 112);
  sub_2C360(v45, &v46[11]);
  v33 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_5358C((v34 > 1), v35 + 1, 1, v33);
  }

  *(v33 + 2) = v35 + 1;
  v36 = v33;
  memcpy(&v33[272 * v35 + 32], v46, 0x110uLL);
  return v36;
}

uint64_t sub_2FC78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12[2] = a1;
  v12[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v7 = v12[1];
  v8 = sub_B7A80();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  v9 = sub_B7A50();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v7;
  sub_30A3C(0, 0, v6, &unk_BEE80, v10);
}

uint64_t sub_2FE44()
{
  v1 = type metadata accessor for DeviceLostModeReportingState(0);
  __chkstk_darwin(v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[1];
  v10[0] = *v0;
  v10[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v5 = v10[3];
  swift_getKeyPath();
  v10[0] = v5;
  sub_30920(&qword_EFD70, type metadata accessor for DeviceLostModeManagementViewModel, &protocol conformance descriptor for DeviceLostModeManagementViewModel);
  sub_B65C0();

  v6 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_30968(v5 + v6, v3);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload != 4)
    {
      return 0;
    }
  }

  else
  {
    sub_309CC(v3);
  }

  return 1;
}

uint64_t sub_2FFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DeviceLostModeReportingState(0);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v25 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v8 = v21;
  swift_getKeyPath();
  v24 = v8;
  sub_30920(&qword_EFD70, type metadata accessor for DeviceLostModeManagementViewModel, &protocol conformance descriptor for DeviceLostModeManagementViewModel);
  sub_B65C0();

  v9 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_30968(v8 + v9, v7);

  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result != 3 && result == 4)
    {
      v21 = a2;
      v22 = a3;
      sub_B75C0();
      v16 = v23;
      swift_getKeyPath();
      v21 = v16;
      sub_B65C0();

      v17 = (v16 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
      swift_beginAccess();
      v18 = *v17;

      v18(v19);
    }
  }

  else
  {
    v21 = a2;
    v22 = a3;
    sub_B75C0();
    v11 = v23;
    swift_getKeyPath();
    v21 = v11;
    sub_B65C0();

    v12 = (v11 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
    swift_beginAccess();
    v13 = *v12;

    v13(v14);

    return sub_309CC(v7);
  }

  return result;
}

uint64_t sub_3027C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v1 - 8);
  v3 = v15 - v2;
  v4 = type metadata accessor for DeviceLostModeReportingState(0);
  __chkstk_darwin(v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[1];
  v15[0] = *v0;
  v15[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v8 = v15[3];
  swift_getKeyPath();
  v15[0] = v8;
  sub_30920(&qword_EFD70, type metadata accessor for DeviceLostModeManagementViewModel, &protocol conformance descriptor for DeviceLostModeManagementViewModel);
  sub_B65C0();

  v9 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_30968(v8 + v9, v6);

  if (swift_getEnumCaseMultiPayload() < 3)
  {
    sub_309CC(v6);
    if (qword_EEAA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_EEAA0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v10 = sub_B62F0();
  v11 = __swift_project_value_buffer(v10, qword_EFFC0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v3, v11, v10);
  (*(v12 + 56))(v3, 0, 1, v10);
  v13 = sub_B78D0();
  sub_2B630(v3);
  return v13;
}

unint64_t sub_305FC()
{
  result = qword_EFD58;
  if (!qword_EFD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD58);
  }

  return result;
}

uint64_t sub_30658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsSectionTemplate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_306C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD60, &qword_BED88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_30768()
{
  result = qword_EFD68;
  if (!qword_EFD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EFD60, &qword_BED88);
    sub_30920(&qword_EF678, type metadata accessor for DetailsSectionTemplate, &protocol conformance descriptor for DetailsSectionTemplate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD68);
  }

  return result;
}

uint64_t sub_30824()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_30864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_31AAC(a1, v4, v5, v6);
}

uint64_t sub_30920(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_30968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceLostModeReportingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_309CC(uint64_t a1)
{
  v2 = type metadata accessor for DeviceLostModeReportingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_30A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_326B0(a3, v25 - v10);
  v12 = sub_B7A80();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_32720(v11);
  }

  else
  {
    sub_B7A70();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_B7A00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_B7940() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_32720(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_32720(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_30CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_326B0(a3, v25 - v10);
  v12 = sub_B7A80();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_32720(v11);
  }

  else
  {
    sub_B7A70();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_B7A00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_B7940() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFE60, &qword_BEFA0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_32720(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_32720(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFE60, &qword_BEFA0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_30FD0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_32264();
  sub_B65C0();

  v3 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  return sub_32ED0(v5 + v3, a1, type metadata accessor for DeviceLostModeReportingState);
}

Swift::Void __swiftcall DeviceLostModeManagementViewModel.startObservingUpdates()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_B7A80();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_B7A60();

  v6 = sub_B7A50();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_30A3C(0, 0, v4, &unk_BEE80, v7);
}

uint64_t sub_311A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_32264();
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  return sub_32ED0(v3 + v4, a2, type metadata accessor for DeviceLostModeReportingState);
}

uint64_t sub_3124C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DeviceLostModeReportingState(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_32ED0(a1, v6, type metadata accessor for DeviceLostModeReportingState);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_32264();
  sub_B65B0();

  return sub_323F8(v6, type metadata accessor for DeviceLostModeReportingState);
}

uint64_t sub_3136C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_32E6C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t DeviceLostModeManagementViewModel.lostModePresentationBlock.getter()
{
  swift_getKeyPath();
  sub_32264();
  sub_B65C0();

  v1 = (v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_31478@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_32264();
  sub_B65C0();

  v4 = (v3 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a2 = sub_2DDCC;
  a2[1] = v7;
}

uint64_t sub_31540(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  swift_getKeyPath();
  sub_32264();

  sub_B65B0();
}

uint64_t DeviceLostModeManagementViewModel.lostModePresentationBlock.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_32264();
  sub_B65B0();
}

uint64_t sub_316D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t (*DeviceLostModeManagementViewModel.lostModePresentationBlock.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_32264();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_31860;
}

void sub_31860(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_B65D0();

  free(v1);
}

uint64_t DeviceLostModeManagementViewModel.__allocating_init(lostDevice:dependencies:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v9 = *a1;
  v5 = *(a1 + 2);
  LOBYTE(a1) = *(a1 + 24);
  sub_B65F0();
  v6 = v4 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice;
  *v6 = v9;
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  sub_32DE0(a2, v4 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_dependencies, type metadata accessor for DeviceLostModeManagementViewModel.Dependencies);
  type metadata accessor for DeviceLostModeReportingState(0);
  swift_storeEnumTagMultiPayload();
  v7 = (v4 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
  *v7 = ItemContactInfoSetupIntroductionViewModel.bind();
  v7[1] = 0;
  return v4;
}