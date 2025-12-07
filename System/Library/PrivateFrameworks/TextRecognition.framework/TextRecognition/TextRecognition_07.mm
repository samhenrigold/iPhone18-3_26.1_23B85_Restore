char *sub_1B41604A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A60, &qword_1B42AC508);
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

unint64_t sub_1B4160594(char a1)
{
  sub_1B41622F0();
  v1 = sub_1B429FB28();
  return sub_1B4161728(a1, v1);
}

void sub_1B41605FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856D0, &qword_1B42AEAB0);
  v33 = v4;
  v6 = sub_1B42A05D8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v33 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1B41622F0();
      v23 = sub_1B429FB28();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1B4160890(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_1B4161970(v7, v4, v2);
      MEMORY[0x1B8C74FA0](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1B41617F0(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_1B41609F0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4162344(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1B4160A5C(v4);
  *a1 = v2;
}

void sub_1B4160A5C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B42A0638();
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
        v5 = sub_1B429FE28();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1B4160C90(v7, v8, a1, v4);
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
    sub_1B4160B54(0, v2, 1, a1);
  }
}

uint64_t sub_1B4160B54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = result - a3;
    v7 = (*a4 + a3);
LABEL_5:
    v8 = *(v5 + v4);
    v9 = v7;
    v12 = v6;
    while (1)
    {
      v14[1] = v8;
      CRLocale.script.getter(v14);
      v13[3] = v14[0];
      v13[2] = 0;
      sub_1B410D624();
      result = sub_1B429FB58();
      if ((result & 1) == 0)
      {
        v13[1] = v8;
        CRLocale.script.getter(v13);
        result = sub_1B429FB58();
        if ((result & 1) == 0)
        {
LABEL_4:
          ++v4;
          v6 = v12 - 1;
          ++v7;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v5)
      {
        break;
      }

      v8 = *v9;
      *v9 = *(v9 - 1);
      *--v9 = v8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1B4160C90(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v10 = v9;
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    v4 = a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_104;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &type metadata for CRScript;
  while (1)
  {
    v11 = v8;
    v12 = (v8 + 1);
    if (v8 + 1 >= v7)
    {
      v15 = a3;
      goto LABEL_32;
    }

    v83 = v8;
    v86 = (v8 + 1);
    v13 = *a3;
    v4 = v12[*a3];
    v90 = v12[*a3];
    CRLocale.script.getter(&v89);
    sub_1B410D624();
    if (sub_1B429FB58())
    {
      v14 = 1;
    }

    else
    {
      v90 = v4;
      CRLocale.script.getter(&v89);
      v14 = sub_1B429FB58();
    }

    if (v6)
    {
      goto LABEL_112;
    }

    v80 = v9;
    v16 = (v83 + 2);
    v9 = (v83 + 2);
    if (v83 + 2 < v7)
    {
      while (1)
      {
        v9 = v16;
        v4 = v16[v13];
        v90 = v16[v13];
        CRLocale.script.getter(&v89);
        if (sub_1B429FB58())
        {
          if ((v14 & 1) == 0)
          {
            v12 = v9;
            v15 = a3;
            goto LABEL_31;
          }
        }

        else
        {
          v90 = v4;
          CRLocale.script.getter(&v89);
          if ((v14 ^ sub_1B429FB58()))
          {
            v86 = v9 - 1;
            v15 = a3;
            if ((v14 & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_19:
            v11 = v83;
            if (v9 >= v83)
            {
              if (v83 <= v86)
              {
                v17 = v9 - 1;
                v18 = v83;
                do
                {
                  if (v18 != v17)
                  {
                    v21 = *v15;
                    if (!*v15)
                    {
                      goto LABEL_137;
                    }

                    v19 = v18[v21];
                    v18[v21] = v17[v21];
                    v17[v21] = v19;
                  }
                }

                while (++v18 < v17--);
              }

              v12 = v9;
              v9 = v80;
              goto LABEL_32;
            }

LABEL_133:
            __break(1u);
LABEL_134:
            v10 = sub_1B40E05F0(v10);
LABEL_104:
            v74 = *(v10 + 2);
            if (v74 >= 2)
            {
              do
              {
                v75 = *v4;
                if (!*v4)
                {
                  goto LABEL_138;
                }

                v4 = *&v10[16 * v74];
                v76 = *&v10[16 * v74 + 24];
                sub_1B41613DC((v75 + v4), (v75 + *&v10[16 * v74 + 16]), (v75 + v76), v9);
                if (v6)
                {
                  break;
                }

                if (v76 < v4)
                {
                  goto LABEL_127;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v10 = sub_1B40E05F0(v10);
                }

                if (v74 - 2 >= *(v10 + 2))
                {
                  goto LABEL_128;
                }

                v77 = &v10[16 * v74];
                *v77 = v4;
                *(v77 + 1) = v76;
                sub_1B40E0564(v74 - 1);
                v74 = *(v10 + 2);
                v4 = a3;
              }

              while (v74 > 1);
            }

LABEL_112:

            return;
          }
        }

        v16 = v9 + 1;
        if (v7 == v9 + 1)
        {
          v86 = v9;
          v9 = v7;
          break;
        }
      }
    }

    v15 = a3;
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_30:
    v12 = v9;
LABEL_31:
    v9 = v80;
    v11 = v83;
LABEL_32:
    v22 = v15[1];
    if (v12 < v22)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_130;
      }

      if (&v12[-v11] < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_131;
        }

        if (v11 + a4 < v22)
        {
          v22 = v11 + a4;
        }

        if (v22 < v11)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v12 != v22)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v12 < v11)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1B40DDD00(0, *(v9 + 2) + 1, 1, v9);
    }

    v4 = *(v9 + 2);
    v29 = *(v9 + 3);
    v30 = v4 + 1;
    if (v4 >= v29 >> 1)
    {
      v9 = sub_1B40DDD00((v29 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v30;
    v31 = &v9[16 * v4];
    *(v31 + 4) = v11;
    *(v31 + 5) = v12;
    v32 = *a1;
    if (!*a1)
    {
      goto LABEL_139;
    }

    v88 = v12;
    if (v4)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v9 + 4);
          v35 = *(v9 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_70:
          if (v37)
          {
            goto LABEL_118;
          }

          v50 = &v9[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_121;
          }

          v56 = &v9[16 * v33 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_125;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v60 = &v9[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_84:
        if (v55)
        {
          goto LABEL_120;
        }

        v63 = &v9[16 * v33];
        v65 = *(v63 + 4);
        v64 = *(v63 + 5);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_123;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_91:
        v4 = v33 - 1;
        if (v33 - 1 >= v30)
        {
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
          goto LABEL_132;
        }

        if (!*v15)
        {
          goto LABEL_136;
        }

        v71 = *&v9[16 * v4 + 32];
        v72 = *&v9[16 * v33 + 40];
        sub_1B41613DC((*v15 + v71), (*v15 + *&v9[16 * v33 + 32]), (*v15 + v72), v32);
        if (v6)
        {
          goto LABEL_112;
        }

        if (v72 < v71)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B40E05F0(v9);
        }

        if (v4 >= *(v9 + 2))
        {
          goto LABEL_115;
        }

        v73 = &v9[16 * v4];
        *(v73 + 4) = v71;
        *(v73 + 5) = v72;
        sub_1B40E0564(v33);
        v30 = *(v9 + 2);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }
      }

      v38 = &v9[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_116;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_117;
      }

      v45 = &v9[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_119;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_122;
      }

      if (v49 >= v41)
      {
        v67 = &v9[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_126;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v7 = v15[1];
    v8 = v88;
    if (v88 >= v7)
    {
      goto LABEL_102;
    }
  }

  v81 = v9;
  v78 = v6;
  v23 = *v15;
  v4 = v11 - v12;
  v24 = &v12[v23];
  v85 = v22;
LABEL_42:
  v87 = v12;
  v25 = v12[v23];
  v26 = v24;
  v27 = v4;
  while (1)
  {
    v90 = v25;
    CRLocale.script.getter(&v89);
    sub_1B410D624();
    if ((sub_1B429FB58() & 1) == 0)
    {
      v90 = v25;
      CRLocale.script.getter(&v89);
      if ((sub_1B429FB58() & 1) == 0)
      {
LABEL_41:
        v12 = v87 + 1;
        --v4;
        ++v24;
        if (v87 + 1 != v85)
        {
          goto LABEL_42;
        }

        v12 = v85;
        v6 = v78;
        v15 = a3;
        v9 = v81;
        goto LABEL_50;
      }
    }

    if (!v23)
    {
      break;
    }

    v25 = *v26;
    *v26 = *(v26 - 1);
    *--v26 = v25;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

uint64_t sub_1B41613DC(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src >= a3 - a2)
  {
    if (__dst != a2 || __dst >= a3)
    {
      memmove(__dst, a2, a3 - a2);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      while (1)
      {
        v23 = v6;
        --v5;
        v16 = v10;
        while (1)
        {
          v17 = v10;
          v18 = v5 + 1;
          v20 = *--v16;
          v19 = v20;
          v25 = v20;
          CRLocale.script.getter(&v24);
          sub_1B410D624();
          if (sub_1B429FB58())
          {
            break;
          }

          v25 = v19;
          CRLocale.script.getter(&v24);
          if (sub_1B429FB58())
          {
            break;
          }

          if (v18 < v17 || v5 >= v17)
          {
            *v5 = *v16;
          }

          --v5;
          v10 = v16;
          if (v16 <= v4)
          {
            v10 = v16;
            v6 = v23;
            if (v23 == v4)
            {
              goto LABEL_47;
            }

            goto LABEL_48;
          }
        }

        v21 = v23 - 1;
        if (v18 < v23 || v5 >= v23)
        {
          *v5 = *v21;
        }

        v10 = v17;
        if (v17 > v4)
        {
          v6 = v23 - 1;
          if (v21 > v7)
          {
            continue;
          }
        }

        v6 = v23 - 1;
        if (v21 == v4)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      }
    }

LABEL_46:
    if (v6 != v4)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (__dst != __src || __dst >= a2)
  {
    memmove(__dst, __src, v8);
  }

  v10 = &v4[v8];
  if (v8 < 1)
  {
    v6 = v7;
    goto LABEL_46;
  }

  if (v6 >= v5)
  {
    v6 = v7;
    if (v7 == v4)
    {
      goto LABEL_47;
    }

LABEL_48:
    memmove(v6, v4, v10 - v4);
    return 1;
  }

  do
  {
    v11 = v10;
    v12 = *v6;
    v25 = *v6;
    CRLocale.script.getter(&v24);
    sub_1B410D624();
    if (sub_1B429FB58() & 1) != 0 || (v25 = v12, CRLocale.script.getter(&v24), (sub_1B429FB58()))
    {
      v13 = v6 + 1;
      v14 = v6;
      if (v7 < v6 || v7 >= v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v15 = v4 + 1;
      v14 = v4;
      v13 = v6;
      if (v7 < v4)
      {
        ++v4;
LABEL_16:
        *v7 = *v14;
        goto LABEL_17;
      }

      ++v4;
      if (v7 >= v15)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    ++v7;
    v10 = v11;
    if (v4 >= v11)
    {
      break;
    }

    v6 = v13;
  }

  while (v13 < v5);
  v6 = v7;
  if (v7 != v4)
  {
    goto LABEL_48;
  }

LABEL_47:
  if (v6 >= v10)
  {
    goto LABEL_48;
  }

  return 1;
}

unint64_t sub_1B4161728(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1B413EC3C();
    do
    {
      if (sub_1B429FB58())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1B41617F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v21[1] = *(*(a3 + 48) + v13);
    v15 = v14;
    CRLocale.script.getter(v21);
    sub_1B410D624();
    v16 = sub_1B429FB58();

    if (v16)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1B41619E8(a1, a2, v20, a3);
        return;
      }
    }
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
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1B4161970(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1B41617F0(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1B41619E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856D0, &qword_1B42AEAB0);
  result = sub_1B42A05F8();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v27 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 56) + 8 * v16);
    v29 = *(*(v4 + 48) + v16);
    sub_1B41622F0();
    v28 = v17;
    result = sub_1B429FB28();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v29;
    *(*(v9 + 56) + 8 * v21) = v28;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v10 = v27;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v27 = (v15 - 1) & v15;
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

uint64_t sub_1B4161C30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B42A0388() + 1) & ~v5;
    sub_1B41622F0();
    do
    {
      result = sub_1B429FB28();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 >= v8 && v3 >= v9)
        {
LABEL_15:
          v12 = *(a2 + 48);
          v13 = (v12 + v3);
          v14 = (v12 + v6);
          if (v3 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

      else if (v9 >= v8 || v3 >= v9)
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

void sub_1B4161DCC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B4160594(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1B41605FC(v14, a3 & 1);
      v9 = sub_1B4160594(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1B42A06E8();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1B4161F14();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

void sub_1B4161F14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8856D0, &qword_1B42AEAB0);
  v2 = *v0;
  v3 = sub_1B42A05C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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
}

void *sub_1B4162070(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1B416216C()
{
  result = qword_1ED95E0A8;
  if (!qword_1ED95E0A8)
  {
    sub_1B40E27B4(255, &qword_1ED95E6C0, off_1E7BC1070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E0A8);
  }

  return result;
}

uint64_t sub_1B4162258(uint64_t *a1, int a2)
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

uint64_t sub_1B41622A4(uint64_t result, int a2, int a3)
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

unint64_t sub_1B41622F0()
{
  result = qword_1ED95E118[0];
  if (!qword_1ED95E118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED95E118);
  }

  return result;
}

uint64_t sub_1B4162378(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = sub_1B42A0518();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B8C72CD0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            swift_unknownObjectRelease();
            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v7;
        a1(&v13, &v14);
        if (v3)
        {
          goto LABEL_16;
        }

        v9 = swift_unknownObjectRelease();
        if (v13)
        {
          MEMORY[0x1B8C72680](v9);
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B429FE08();
          }

          sub_1B429FE38();
          v11 = v15;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t CREngineAccurate._documentOutputRegionResult(_:imageSize:)(uint64_t a1, __n128 a2, double a3)
{
  *(v4 + 104) = v3;
  *(v4 + 88) = a2.n128_u64[0];
  *(v4 + 96) = a3;
  *(v4 + 80) = a1;
  v5 = sub_1B429F9B8();
  *(v4 + 112) = v5;
  *(v4 + 120) = *(v5 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v6 = sub_1B429F9E8();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4162664, 0, 0);
}

uint64_t sub_1B4162664(__n128 a1)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[18];
  v5 = sub_1B410F8A0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_1B410F994();
  v7 = *v6;
  v8 = *(v6 + 16);
  sub_1B429F9A8();
  v9 = sub_1B429F9C8();
  v10 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v8)
  {
LABEL_5:
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_68:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v1 + 9);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_9:
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = sub_1B429F998();
  _os_signpost_emit_with_name_impl(&dword_1B40D2000, v9, v10, v13, v7, "", v12, 2u);
  MEMORY[0x1B8C74FA0](v12, -1, -1);
LABEL_10:

  v15 = v1[19];
  v14 = v1[20];
  v17 = v1[17];
  v16 = v1[18];
  v18 = v1[15];
  v19 = v1[14];
  v20 = v1[10];
  (*(v18 + 16))(v1[16], v17, v19);
  sub_1B429FA28();
  swift_allocObject();
  v74 = v1;
  v1[21] = sub_1B429FA18();
  (*(v18 + 8))(v17, v19);
  v21 = (*(v15 + 8))(v14, v16);
  v22 = (*(*v20 + 112))(v21);
  v23 = v22;
  v24 = v22 & 0xFFFFFFFFFFFFFF8;
  v25 = v22 >> 62;
  if (v22 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B42A0518())
  {
    v27 = v23 & 0xC000000000000001;
    v28 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v29 = 0;
      do
      {
        v30 = v29;
        while (1)
        {
          if (v27)
          {
            v31 = MEMORY[0x1B8C72CD0](v30, v23);
          }

          else
          {
            if (v30 >= *(v24 + 16))
            {
              goto LABEL_62;
            }

            v31 = *(v23 + 8 * v30 + 32);
          }

          v32 = v31;
          v29 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (v33)
          {
            break;
          }

          ++v30;
          if (v29 == i)
          {
            goto LABEL_28;
          }
        }

        v34 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1B4163CE8(0, v28[2] + 1, 1, v28, &qword_1EB885730, &qword_1B42AEB10, &qword_1EB885738, &qword_1B42AEB18);
        }

        v35 = v28;
        v36 = v28[2];
        v37 = v35;
        v38 = v35[3];
        if (v36 >= v38 >> 1)
        {
          v37 = sub_1B4163CE8((v38 > 1), v36 + 1, 1, v35, &qword_1EB885730, &qword_1B42AEB10, &qword_1EB885738, &qword_1B42AEB18);
        }

        v37[2] = v36 + 1;
        v39 = &v37[2 * v36];
        v28 = v37;
        v39[4] = v30;
        v39[5] = v34;
      }

      while (v29 != i);
    }

LABEL_28:
    v73 = v28;
    v40 = v25 ? sub_1B42A0518() : *(v24 + 16);
    v41 = MEMORY[0x1E69E7CC0];
    v74[22] = MEMORY[0x1E69E7CC0];
    if (!v40)
    {
      break;
    }

    v42 = MEMORY[0x1E69E7CC0];
    v43 = 0;
    while (1)
    {
      if (v27)
      {
        v44 = MEMORY[0x1B8C72CD0](v43, v23);
      }

      else
      {
        if (v43 >= *(v24 + 16))
        {
          goto LABEL_64;
        }

        v44 = *(v23 + 8 * v43 + 32);
      }

      v45 = v44;
      v25 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        ++v43;
        if (v25 == v40)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B41646FC(0, *(v42 + 16) + 1, 1);
        }

        v47 = *(v42 + 16);
        v46 = *(v42 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1B41646FC((v46 > 1), v47 + 1, 1);
        }

        *(v42 + 16) = v47 + 1;
        v48 = v42 + 16 * v47;
        *(v48 + 32) = v43;
        *(v48 + 40) = v45;
        v74[22] = v42;
        v41 = MEMORY[0x1E69E7CC0];
        if (v25 == v40)
        {
          goto LABEL_48;
        }

        ++v43;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  v42 = v41;
LABEL_48:
  v72 = v42;

  v49 = v74;
  v74[5] = v41;
  v74[6] = v41;
  v50 = v73[2];
  if (v50)
  {
    v51 = (v73 + 5);
    do
    {
      v52 = v49[13];
      v53 = *(v51 - 1);
      v54 = *v51;
      v55 = [v54 cells];
      sub_1B40E27B4(0, &qword_1ED95DF50, off_1E7BC1078);
      v56 = sub_1B429FDF8();

      sub_1B41648B8(v56, v52, v49 + 5, v53);

      v57 = [v54 boundingQuad];
      v58 = [v54 rowQuads];
      if (!v58)
      {
        sub_1B40E27B4(0, &qword_1ED95E6D0, off_1E7BC0FF8);
        sub_1B429FDF8();
        v58 = sub_1B429FDE8();
      }

      v59 = [v54 columnQuads];
      if (!v59)
      {
        sub_1B40E27B4(0, &qword_1ED95E6D0, off_1E7BC0FF8);
        sub_1B429FDF8();
        v59 = sub_1B429FDE8();
      }

      v60 = objc_allocWithZone(CRTableOutputRegion);
      sub_1B40E27B4(0, &unk_1ED95E080, off_1E7BC1080);
      v61 = sub_1B429FDE8();

      v62 = [v60 initWithCells:v61 quad:v57 rowQuads:v58 colQuads:v59];

      v63 = v62;
      v49 = v74;
      MEMORY[0x1B8C72680]();
      if (*((v49[6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B429FE08();
      }

      sub_1B429FE38();

      v51 += 2;
      --v50;
    }

    while (v50);
    v41 = v74[6];
  }

  v49[23] = v41;
  v64 = v49[13];
  v65 = v49[10];

  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  v67 = v49[5];
  v49[24] = v66;
  v49[25] = v67;
  v49[8] = v67;
  v68 = swift_allocObject();
  v68[2] = 0;
  v68[3] = 0;
  v68[4] = v64;
  v68[5] = v65;
  v68[6] = v66;
  v69 = swift_allocObject();
  v49[26] = v69;
  v69[2] = 0;
  v69[3] = 0;
  v69[4] = &unk_1B42AEAC8;
  v69[5] = v68;
  sub_1B429FEC8();
  sub_1B4105D4C();
  v70 = swift_allocError();
  v49[27] = v70;

  sub_1B429FAD8();
  v71 = swift_task_alloc();
  v49[28] = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8856F0, &qword_1B42AEAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8856F8, &qword_1B42AEAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885700, &qword_1B42AEAF0);
  *v71 = v49;
  v71[1] = sub_1B4162F68;

  return _sSa15TextRecognitions8SendableRzlE26cappedConcurrencyMapReduce4into3map6reduce9didCancel18maxConcurrentTasksqd_0_qd_0__qd__xYaYbKYAcyqd_0_z_qd__tKXEs5Error_pSitYaKsABRd__r0_lF((v49 + 7), (v49 + 8), &unk_1B42AEAD8, v69, sub_1B4163BEC, 0, v70, 8);
}

uint64_t sub_1B4162F68()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {

    v3 = sub_1B41633D0;
  }

  else
  {
    v4 = *(v2 + 216);

    v3 = sub_1B41630D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B41630D0()
{
  v19 = v0;
  v1 = *(v0 + 29);
  v2 = *(v0 + 7);

  v18 = v2;

  sub_1B4163E1C(&v18);
  if (v1)
  {
  }

  else
  {

    v3 = v18;
    v4 = *(v18 + 16);
    if (v4)
    {
      v18 = MEMORY[0x1E69E7CC0];
      sub_1B42A0488();
      v5 = 40;
      do
      {
        v6 = *(v3 + v5);
        sub_1B42A0458();
        sub_1B42A0498();
        sub_1B42A04A8();
        sub_1B42A0468();
        v5 += 16;
        --v4;
      }

      while (v4);
    }

    v7 = *(v0 + 24);
    v8 = *(v0 + 21);
    v10 = v0[11];
    v9 = v0[12];
    v11 = *(v0 + 10);
    v12 = objc_opt_self();
    sub_1B40E27B4(0, &qword_1ED95EE70, off_1E7BC1008);
    v13 = sub_1B429FDE8();

    swift_beginAccess();
    v14 = [v12 documentWithRegions:v13 title:*(v7 + 16) confidence:2 imageSize:{v10, v9}];

    sub_1B40E27B4(0, &unk_1ED95E690, off_1E7BC1090);
    v15 = v14;
    v16 = sub_1B429FDE8();

    [v15 setTableRegions_];

    [v15 collectMetadataForNumFilteredRegions_];

    sub_1B4163488(v8);

    v17 = *(v0 + 1);

    v17(v15);
  }
}

uint64_t sub_1B41633D0()
{
  v1 = *(v0 + 168);

  sub_1B4163488(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4163488(uint64_t a1)
{
  v1 = sub_1B429F9F8();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B429F9B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B429F9E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B410F8A0();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_1B410F994();
  v28 = *v12;
  v13 = *(v12 + 16);
  v14 = sub_1B429F9C8();
  sub_1B429FA08();
  v24 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }

  v23 = v4;
  if ((v13 & 1) == 0)
  {
    if (v28)
    {
      v16 = v27;
LABEL_9:

      sub_1B429FA38();

      v18 = v25;
      v17 = v26;
      if ((*(v25 + 88))(v16, v26) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v16, v17);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v14, v24, v21, v28, v19, v20, 2u);
      MEMORY[0x1B8C74FA0](v20, -1, -1);
      v4 = v23;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v28 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    v16 = v27;
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B41637FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a2;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4163824, 0, 0);
}

uint64_t sub_1B4163824()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[9] + 16;
  swift_beginAccess();
  v5 = [v2 subregions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
  v6 = sub_1B429FDF8();

  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = v1;
  v7[4] = v4;
  sub_1B4162378(sub_1B4165114, v7, v6);

  v8 = objc_opt_self();
  sub_1B40E27B4(0, &qword_1ED95EE70, off_1E7BC1008);
  v9 = sub_1B429FDE8();

  v10 = CREngineAccurate.confidenceThresholdProvider.getter();
  v11 = [(CRBlockOutputRegion *)v8 blockWithGroupRegion:v2 children:v9 confidenceThresholdProvider:v10 canWrapToNextBlock:1];
  swift_endAccess();
  swift_unknownObjectRelease();

  v12 = v0[1];
  v13 = v0[5];

  return v12(v13, v11);
}

uint64_t sub_1B41639CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a1;
  v6 = *a2;
  v7 = a2[1];
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1B4163ACC;

  return v10(v6, v7);
}

uint64_t sub_1B4163ACC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  v5[1] = a2;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1B4163BEC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  v5 = a2[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B4163CE8(0, v4[2] + 1, 1, v4, &unk_1EB885718, &qword_1B42AEB00, &unk_1EB885708, &qword_1B42AEAF8);
    v4 = result;
  }

  v8 = v4[2];
  v7 = v4[3];
  if (v8 >= v7 >> 1)
  {
    result = sub_1B4163CE8((v7 > 1), v8 + 1, 1, v4, &unk_1EB885718, &qword_1B42AEB00, &unk_1EB885708, &qword_1B42AEAF8);
    v4 = result;
  }

  v4[2] = v8 + 1;
  v9 = &v4[2 * v8];
  v9[4] = v3;
  v9[5] = v5;
  *a1 = v4;
  return result;
}

void *sub_1B4163CE8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_1B4163E1C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4164870(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  v4 = sub_1B42A0638();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885708, &qword_1B42AEAF8);
      v7 = sub_1B429FE28();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1B4163F70(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1B4163F70(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1B40E05F0(v8);
    }

    v82 = v8 + 16;
    v83 = *(v8 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v8[16 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1B41644F8((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B40DDD00(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v36 = *(v8 + 3);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      v8 = sub_1B40DDD00((v36 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v37;
    v38 = v8 + 32;
    v39 = &v8[16 * v5 + 32];
    *v39 = v9;
    *(v39 + 1) = v7;
    v91 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 4);
          v41 = *(v8 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[16 * v37];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v38[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v8[16 * v37];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v38[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = &v38[16 * v5 - 16];
        v78 = *v77;
        v79 = &v38[16 * v5];
        v80 = *(v79 + 1);
        sub_1B41644F8((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *(v8 + 2);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        memmove(&v38[16 * v5], v79 + 16, 16 * (v81 - 1 - v5));
        *(v8 + 2) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[16 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[16 * v37];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v38[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1B41644F8(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
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
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void *sub_1B41646FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B416473C(a1, a2, a3, *v3, &qword_1EB885728, &qword_1B42AEB08, &qword_1EB8856F0, &qword_1B42AEAE0);
  *v3 = result;
  return result;
}

void *sub_1B416473C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1B41648B8(unint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v4 = a1;
  v47 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_45:
    v42 = v4 & 0xFFFFFFFFFFFFFF8;
    v44 = sub_1B42A0518();
  }

  else
  {
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v43 = v4 & 0xC000000000000001;
  v41 = v4 + 32;
  v37 = MEMORY[0x1E69E7CC0];
  v38 = v4;
LABEL_4:
  if (v5 != v44)
  {
    if (v43)
    {
      v6 = MEMORY[0x1B8C72CD0](v5, v4);
      v7 = __OFADD__(v5++, 1);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v5 >= *(v42 + 16))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v6 = *(v41 + 8 * v5);
      v7 = __OFADD__(v5++, 1);
      if (!v7)
      {
LABEL_8:
        v45 = v6;
        v8 = [v6 subregions];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
        v9 = sub_1B429FDF8();

        v46 = MEMORY[0x1E69E7CC0];
        if (v9 >> 62)
        {
          v10 = sub_1B42A0518();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v10)
        {
          goto LABEL_28;
        }

        v4 = 0;
        while (1)
        {
          v11 = v4;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1B8C72CD0](v11, v9);
              v4 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                goto LABEL_41;
              }
            }

            else
            {
              if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_42;
              }

              swift_unknownObjectRetain();
              v4 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
LABEL_41:
                __break(1u);
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }
            }

            objc_opt_self();
            v16 = swift_dynamicCastObjCClass();
            if (!v16)
            {
              break;
            }

            v12 = v16;
            swift_unknownObjectRetain_n();
            v13 = CREngineAccurate.confidenceThresholdProvider.getter();
            v14 = [objc_opt_self() outputRegionFromTextRegion:v12 confidenceThresholdProvider:v13 injectSpaceCharacter:{objc_msgSend(v12, sel_whitespaceInjected) ^ 1}];
            swift_unknownObjectRelease_n();
            v15 = swift_unknownObjectRelease();
            if (v14)
            {
              goto LABEL_25;
            }

LABEL_14:
            ++v11;
            if (v4 == v10)
            {
              goto LABEL_28;
            }
          }

          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (!v17)
          {
            break;
          }

          v18 = [objc_opt_self() lineWithDetectedRegion_];
          v15 = swift_unknownObjectRelease();
LABEL_25:
          MEMORY[0x1B8C72680](v15);
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B429FE08();
          }

          sub_1B429FE38();
          if (v4 == v10)
          {
LABEL_28:

            v19 = objc_opt_self();
            sub_1B40E27B4(0, &qword_1ED95EE70, off_1E7BC1008);
            v20 = sub_1B429FDE8();

            v21 = CREngineAccurate.confidenceThresholdProvider.getter();
            v22 = [(CRBlockOutputRegion *)v19 blockWithGroupRegion:v45 children:v20 confidenceThresholdProvider:v21 canWrapToNextBlock:0];

            swift_unknownObjectRelease();
            v23 = *a3;
            v24 = v22;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a3 = v23;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v23 = sub_1B4163CE8(0, v23[2] + 1, 1, v23, &unk_1EB885718, &qword_1B42AEB00, &unk_1EB885708, &qword_1B42AEAF8);
              *a3 = v23;
            }

            v4 = v38;
            v27 = v23[2];
            v26 = v23[3];
            if (v27 >= v26 >> 1)
            {
              v23 = sub_1B4163CE8((v26 > 1), v27 + 1, 1, v23, &unk_1EB885718, &qword_1B42AEB00, &unk_1EB885708, &qword_1B42AEAF8);
              *a3 = v23;
            }

            v23[2] = v27 + 1;
            v28 = &v23[2 * v27];
            v28[4] = a4;
            v28[5] = v24;
            v29 = [v45 boundingQuad];
            v30 = [v45 rows];
            v32 = v31;
            v33 = [v45 columns];
            v35 = [objc_allocWithZone(CRTableCellOutputRegion) initWithBlock:v24 quad:v29 rowRange:v30 colRange:{v32, v33, v34}];

            if (v35)
            {
              MEMORY[0x1B8C72680]();
              if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1B429FE08();
              }

              sub_1B429FE38();
              v37 = v47;
            }

            goto LABEL_4;
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_14;
      }
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  return v37;
}

uint64_t sub_1B4164E74(uint64_t a1, uint64_t a2)
{
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4164F34;

  return sub_1B41637FC(a1, a2, v10, v11, v6, v7, v8);
}

uint64_t sub_1B4164F34(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1B4165038(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B40E17D0;

  return sub_1B41639CC(a1, a2, v6, v7, v8);
}

void sub_1B4165114(void *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectRetain_n();
    v8 = CREngineAccurate.confidenceThresholdProvider.getter();
    v9 = [objc_opt_self() outputRegionFromTextRegion:v7 confidenceThresholdProvider:v8 injectSpaceCharacter:{objc_msgSend(v7, sel_whitespaceInjected) ^ 1}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v4)
    {
      v10 = *(*v4 + 136);
      swift_unknownObjectRetain();

      v12 = v10(v11);

      swift_unknownObjectRelease_n();
      if (v12)
      {

        if (v7 == v12)
        {
          v13 = *v5;
          *v5 = v9;
          v14 = v9;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v9 = [objc_opt_self() lineWithDetectedRegion_];
    }

    else
    {
      v9 = 0;
    }
  }

  *a2 = v9;
}

uint64_t CRNeuralTextRecognizer.featureProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CRNeuralTextRecognizer_featureProvider;
  swift_beginAccess();
  return sub_1B40E6464(v1 + v3, a1, &qword_1EB885768, &qword_1B42AEB20);
}

uint64_t CRNeuralTextRecognizer.featureProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRNeuralTextRecognizer_featureProvider;
  swift_beginAccess();
  sub_1B4165574(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1B4165574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885768, &qword_1B42AEB20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4165718(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

char *CRNeuralTextRecognizer.init(forLocale:imageReaderOptions:owner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v22 - v8;
  v10 = objc_opt_self();
  v11 = sub_1B429FB88();

  sub_1B40D6404(a3);

  v12 = sub_1B429FAE8();

  v22[0] = 0;
  v13 = [v10 cachedConfigurationWithLocale:v11 imageReaderOptions:v12 error:v22];

  v14 = v22[0];
  if (v13)
  {
    sub_1B40E6464(a4, v9, &unk_1EB884870, &qword_1B42AC0A0);
    v15 = sub_1B429F6D8();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 48))(v9, 1, v15);
    v18 = v14;
    v19 = 0;
    if (v17 != 1)
    {
      v19 = sub_1B429F6A8();
      (*(v16 + 8))(v9, v15);
    }

    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:v13 owner:v19];

    sub_1B4165BBC();
    sub_1B40E26E8(a4, &unk_1EB884870, &qword_1B42AC0A0);
    if (v4)
    {
    }
  }

  else
  {
    v20 = v22[0];
    sub_1B429F598();

    swift_willThrow();
    sub_1B40E26E8(a4, &unk_1EB884870, &qword_1B42AC0A0);
  }

  return v9;
}

id sub_1B4165BBC()
{
  v1 = v0;
  v2 = sub_1B429F6D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10 + 16;
  objc_sync_enter(v1);
  v12 = [v1 configuration];
  v13 = [v12 revision];

  v14 = [v1 configuration];
  v15 = [v1 owner];
  if (v15)
  {
    v16 = v15;
    sub_1B429F6B8();

    (*(v3 + 32))(v11, v5, v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v11, 1, 1, v2);
  }

  v17 = [v14 locale];
  v18 = sub_1B429FB98();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  CRLocale.init(rawValue:)(v21);
  if (LOBYTE(v36[0]) == 30)
  {
    sub_1B40DF594();
    swift_allocError();
    *v22 = 1;
    *(v22 + 4) = 1;
    swift_willThrow();
LABEL_8:
    sub_1B40E26E8(v11, &unk_1EB884870, &qword_1B42AC0A0);

    [v1 _unloadResources];
    swift_willThrow();
    return objc_sync_exit(v1);
  }

  v23 = v37;
  sub_1B416BEF0(v13, v36);
  if (v23)
  {
    goto LABEL_8;
  }

  sub_1B40E6464(v11, v8, &unk_1EB884870, &qword_1B42AC0A0);
  objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = v14;
  v26 = sub_1B40E66B4(v24, v8);

  sub_1B40E26E8(v11, &unk_1EB884870, &qword_1B42AC0A0);
  v27 = OBJC_IVAR___CRNeuralTextRecognizer_model;
  swift_beginAccess();
  *&v1[v27] = v26;
  swift_unknownObjectRelease();
  CRNeuralTextRecognizer._featureProvider()(v36);
  v28 = OBJC_IVAR___CRNeuralTextRecognizer_featureProvider;
  swift_beginAccess();
  sub_1B4165574(v36, &v1[v28]);
  swift_endAccess();
  v29 = [v1 configuration];
  v30 = [v29 revision];

  result = [v1 configuration];
  v31 = *&v1[v27];
  if (v31)
  {
    v32 = result;
    swift_unknownObjectRetain();
    v33 = sub_1B416C3B4(v30, v32, v31);

    swift_unknownObjectRelease();
    v34 = OBJC_IVAR___CRNeuralTextRecognizer_textDecoder;
    swift_beginAccess();
    *&v1[v34] = v33;
    swift_unknownObjectRelease();
    return objc_sync_exit(v1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B41660D8()
{
  v1[21] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885780, &qword_1B42AC0B0);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B41661A4, 0, 0);
}

uint64_t sub_1B41661A4()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___CRNeuralTextRecognizer_model;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[25] = v3;
  if (v3)
  {
    v5 = v0[23];
    v4 = v0[24];
    v6 = v0[22];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
    v0[2] = v0;
    v0[3] = sub_1B4166428;
    swift_continuation_init();
    v0[17] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884880, &qword_1B42AC0B8);
    sub_1B429FE88();
    (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1B40D6B68;
    v0[13] = &block_descriptor_8;
    [v11 preheatWithCompletionHandler_];
    (*(v5 + 8))(boxed_opaque_existential_0, v6);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1B40DF594();
    swift_allocError();
    *v8 = 5;
    *(v8 + 4) = 1;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1B4166428()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1B41665A4;
  }

  else
  {
    v2 = sub_1B4166538;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4166538()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B41665A4(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1B4166624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[24] = a5;
  v6[25] = v5;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885790, &qword_1B42AEB38);
  v6[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885798, &qword_1B42AEB40);
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4166730, 0, 0);
}

uint64_t sub_1B4166730()
{
  v1 = *(v0 + 160);
  v2 = [*(v0 + 200) configuration];
  v3 = [v2 colorSpace];

  v4 = [v1 imageByConvertingToColorSpace_];
  *(v0 + 240) = v4;
  if (!v4)
  {
    sub_1B40DF594();
    swift_allocError();
    *v32 = 3;
    *(v32 + 4) = 1;
    swift_willThrow();
    goto LABEL_21;
  }

  v5 = v4;
  v6 = *(v0 + 200);
  *(v0 + 144) = 0;
  v7 = [v6 configuration];
  v8 = [v7 locale];

  if (!v8)
  {
    sub_1B429FB98();
    v8 = sub_1B429FB88();
  }

  v9 = objc_opt_self();
  v10 = [v9 languageIsLatin_];

  if (v10)
  {
    goto LABEL_29;
  }

  v11 = [*(v0 + 200) configuration];
  v12 = [v11 locale];

  if (!v12)
  {
    sub_1B429FB98();
    v12 = sub_1B429FB88();
  }

  v13 = [v9 languageIsCyrillic_];

  if (v13)
  {
LABEL_29:
    v14 = [*(v0 + 200) configuration];
    v15 = [v14 revision];

    if (v15 >= 3)
    {
      v16 = [*(v0 + 200) configuration];
      v17 = [v16 decodeWithLM];

      if (v17)
      {
        v18 = *(v0 + 200);
        v19 = OBJC_IVAR___CRNeuralTextRecognizer_textDecoder;
        swift_beginAccess();
        v20 = *(v18 + v19);
        if (v20 && (*(v0 + 152) = v20, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885810, &qword_1B42AEB78), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885818, &qword_1B42AEB80), (swift_dynamicCast() & 1) != 0))
        {
          v21 = *(v0 + 80);
          if (v21)
          {
            v22 = *(v0 + 88);
            __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
            v23 = (*(v22 + 8))(v21, v22);
            __swift_destroy_boxed_opaque_existential_0((v0 + 56));
LABEL_26:
            *(v0 + 144) = v23;
            goto LABEL_15;
          }
        }

        else
        {
          *(v0 + 88) = 0;
          *(v0 + 72) = 0u;
          *(v0 + 56) = 0u;
        }

        sub_1B40E26E8(v0 + 56, &qword_1EB8857A8, &unk_1B42AEB68);
        v23 = 0;
        goto LABEL_26;
      }
    }
  }

  v23 = 0;
LABEL_15:
  *(v0 + 248) = v23;
  v24 = *(v0 + 200) + OBJC_IVAR___CRNeuralTextRecognizer_featureProvider;
  swift_beginAccess();
  if (*(v24 + 24))
  {
    sub_1B40E33EC(v24, v0 + 16);
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v25);
    v38 = (*(v26 + 64) + **(v26 + 64));
    v27 = swift_task_alloc();
    *(v0 + 256) = v27;
    *v27 = v0;
    v27[1] = sub_1B4166C98;
    v28 = *(v0 + 208);
    v29 = *(v0 + 168);
    v30 = *(v0 + 176);

    return v38(v28, v5, v29, v30, v25, v26);
  }

  v33 = *(v0 + 208);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8857A0, &qword_1B42AEB48);
  (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  v35 = *(v0 + 240);
  sub_1B40E26E8(*(v0 + 208), &qword_1EB885790, &qword_1B42AEB38);
  sub_1B40DF594();
  swift_allocError();
  *v36 = 5;
  *(v36 + 4) = 1;
  swift_willThrow();

LABEL_21:

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1B4166C98(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = sub_1B416728C;
  }

  else
  {
    *(v4 + 272) = a1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8857A0, &qword_1B42AEB48);
    *(v4 + 280) = v6;
    *(v4 + 328) = *(v6 + 48);
    v5 = sub_1B4166DDC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4166DDC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 208);
  *(v2 + *(v0 + 328)) = *(v0 + 272);
  v3 = *(v1 - 8);
  (*(v3 + 56))(v2, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((*(v3 + 48))(v2, 1, v1) == 1)
  {
    v4 = *(v0 + 240);
    sub_1B40E26E8(*(v0 + 208), &qword_1EB885790, &qword_1B42AEB38);
    sub_1B40DF594();
    swift_allocError();
    *v5 = 5;
    *(v5 + 4) = 1;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 232);
    v9 = *(v0 + 240);
    v10 = *(v0 + 200);
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(*(v0 + 208) + *(*(v0 + 280) + 48));
    (*(*(v0 + 224) + 32))(v8);
    v14 = [objc_opt_self() progressWithTotalUnitCount_];
    *(v0 + 288) = v14;
    [v9 size];
    v16 = v15;
    v18 = v17;
    v19 = swift_task_alloc();
    *(v0 + 296) = v19;
    v19[2] = v8;
    v19[3] = v10;
    v19[4] = v0 + 144;
    v19[5] = v16;
    v19[6] = v18;
    v19[7] = v14;
    v19[8] = v12;
    v19[9] = v11;
    v20 = swift_task_alloc();
    *(v0 + 304) = v20;
    *v20 = v0;
    v20[1] = sub_1B41670A4;

    return sub_1B416AB64(&unk_1B42AEB58, v19);
  }
}

uint64_t sub_1B41670A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = sub_1B4167314;
  }

  else
  {
    *(v4 + 320) = a1;

    v5 = sub_1B41671D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B41671D4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);

  (*(v4 + 8))(v1, v3);

  v5 = *(v0 + 8);
  v6 = *(v0 + 320);

  return v5(v6);
}

uint64_t sub_1B416728C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4167314()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B41673D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  *(v9 + 64) = a5;
  *(v9 + 48) = a8;
  *(v9 + 56) = a9;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4167400, 0, 0);
}

uint64_t sub_1B4167400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 80);
  v21 = *(v9 + 64);
  v12 = *(v9 + 48);
  v11 = *(v9 + 56);
  v13 = *(v9 + 40);
  v14 = swift_task_alloc();
  *(v9 + 88) = v14;
  *(v14 + 16) = *(v9 + 24);
  *(v14 + 32) = v13;
  *(v14 + 40) = v12;
  *(v14 + 48) = v11;
  *(v14 + 56) = v21;
  *(v14 + 72) = v10;
  v15 = sub_1B40E27B4(0, &unk_1ED95E6A0, off_1E7BC1040);
  v16 = swift_task_alloc();
  *(v9 + 96) = v16;
  *v16 = v9;
  v16[1] = sub_1B4167540;
  v17 = *(v9 + 16);
  v18 = MEMORY[0x1E69E7CA8] + 8;
  v19 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v17, v18, v15, 0, 0, &unk_1B42AEB98, v14, v19, a9);
}

uint64_t sub_1B4167540()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B416767C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B416767C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B41676E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *(v10 + 232) = a7;
  *(v10 + 240) = a8;
  *(v10 + 224) = a6;
  *(v10 + 208) = a9;
  *(v10 + 216) = a10;
  *(v10 + 192) = a4;
  *(v10 + 200) = a5;
  *(v10 + 176) = a2;
  *(v10 + 184) = a3;
  *(v10 + 168) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70, &qword_1B42ACAB0);
  *(v10 + 248) = swift_task_alloc();
  *(v10 + 256) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885840, &qword_1B42AEBA0);
  *(v10 + 264) = v11;
  *(v10 + 272) = *(v11 - 8);
  *(v10 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4167804, 0, 0);
}

uint64_t sub_1B4167804()
{
  v0[36] = [objc_allocWithZone(CRMutableRecognitionResult) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885798, &qword_1B42AEB40);
  sub_1B429FF38();
  v0[37] = OBJC_IVAR___CRNeuralTextRecognizer_textDecoder;
  v0[38] = 0;
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_1B41678F8;
  v2 = v0[33];

  return MEMORY[0x1EEE6D9C8](v0 + 17, 0, 0, v2);
}

uint64_t sub_1B41678F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B41679F4, 0, 0);
}

uint64_t sub_1B41679F4(__n128 a1)
{
  v2 = *(v1 + 136);
  *(v1 + 320) = v2;
  *(v1 + 145) = *(v1 + 144);
  if (v2)
  {
    v3 = *(v1 + 304);
    sub_1B429FF98();
    if (v3)
    {
      v4 = *(v1 + 288);
      (*(*(v1 + 272) + 8))(*(v1 + 280), *(v1 + 264));

      v5 = *(v1 + 8);

      return v5();
    }

    else
    {
      v8 = *(v1 + 192);
      *(v1 + 344) = [v8 inferenceStats];
      v9 = sub_1B410F964();
      v10 = *v9;
      v11 = v9[1];
      v12 = *(v9 + 16);
      v13 = swift_task_alloc();
      *(v1 + 352) = v13;
      *(v13 + 16) = v8;
      *(v13 + 24) = v2;
      v14 = swift_task_alloc();
      *(v1 + 360) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884908, &qword_1B42AC0F8);
      *v14 = v1;
      v14[1] = sub_1B4167D84;

      return sub_1B40FFD6C(v1 + 152, v10, v11, v12, &unk_1B42AEBB8, v13, v15);
    }
  }

  else
  {
    (*(*(v1 + 272) + 8))(*(v1 + 280), *(v1 + 264), a1);
    v7 = swift_task_alloc();
    *(v1 + 328) = v7;
    *v7 = v1;
    v7[1] = sub_1B4167C70;

    return sub_1B416A610(0, 0);
  }
}

uint64_t sub_1B4167C70()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1B4169554;
  }

  else
  {
    v2 = sub_1B4169430;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4167D84()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_1B41694B0;
  }

  else
  {
    v3 = sub_1B4167EF0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4167EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 200);
  v6 = *(v4 + 152);
  *(v4 + 376) = v6;
  v7 = *v5;
  *(v4 + 384) = *v5;
  if (v7)
  {
    if (v6 >> 62)
    {
      v20 = v7;
      v8 = sub_1B42A0518();
      v7 = v20;
      *(v4 + 392) = v8;
      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v4 + 392) = v8;
      if (v8)
      {
LABEL_4:
        if (v8 >= 1)
        {

          swift_beginAccess();
          v9 = 0;
          while (1)
          {
            *(v4 + 400) = v9;
            v10 = *(v4 + 376);
            if ((v10 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1B8C72CD0]();
            }

            else
            {
              v11 = *(v10 + 8 * v9 + 32);
              swift_unknownObjectRetain();
            }

            *(v4 + 408) = v11;
            v12 = *(*(v4 + 192) + *(v4 + 296));
            if (v12)
            {
              *(v4 + 160) = v12;
              swift_unknownObjectRetain();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885810, &qword_1B42AEB78);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885818, &qword_1B42AEB80);
              if (swift_dynamicCast())
              {
                v13 = *(v4 + 40);
                if (v13)
                {
                  v14 = *(v4 + 384);
                  v15 = *(v4 + 48);
                  __swift_project_boxed_opaque_existential_0((v4 + 16), *(v4 + 40));
                  v52 = (*(v15 + 16) + **(v15 + 16));
                  v16 = swift_task_alloc();
                  *(v4 + 416) = v16;
                  *v16 = v4;
                  v16[1] = sub_1B41686C0;
                  v17.n128_u64[0] = *(v4 + 208);
                  v18.n128_u64[0] = *(v4 + 216);

                  return v52(v14, v11, v13, v15, v17, v18);
                }
              }

              else
              {
                *(v4 + 48) = 0;
                *(v4 + 16) = 0u;
                *(v4 + 32) = 0u;
              }

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
              *(v4 + 48) = 0;
              *(v4 + 16) = 0u;
              *(v4 + 32) = 0u;
            }

            sub_1B40E26E8(v4 + 16, &qword_1EB8857A8, &unk_1B42AEB68);
            v9 = *(v4 + 400) + 1;
            if (v9 == *(v4 + 392))
            {
              goto LABEL_22;
            }
          }
        }

        __break(1u);
        return MEMORY[0x1EEE6D9C8](v7, a2, a3, a4);
      }
    }

LABEL_22:
    if (*(v4 + 145))
    {
      v53 = (*(**(v4 + 384) + 136) + **(**(v4 + 384) + 136));
      v21 = swift_task_alloc();
      *(v4 + 424) = v21;
      *v21 = v4;
      v21[1] = sub_1B4168F20;

      return v53();
    }

    v6 = *(v4 + 376);
  }

  v22 = *(v4 + 288);
  v23 = *(v4 + 256);
  v25 = *(v4 + 232);
  v24 = *(v4 + 240);
  v26 = *(v4 + 224);
  v28 = *(v4 + 208);
  v27 = *(v4 + 216);
  v29 = *(v4 + 192);
  v54 = *(v4 + 176);
  v30 = sub_1B429FEE8();
  v51 = *(v30 - 8);
  (*(v51 + 56))(v23, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v32 = v31 + 2;
  v31[3] = 0;
  v31[4] = v29;
  v31[5] = v6;
  v31[6] = v28;
  v31[7] = v27;
  v31[8] = v22;
  v31[9] = v26;
  v31[10] = v25;
  v31[11] = v24;
  v33 = *v54;
  v34 = v29;
  v35 = v22;
  v36 = v26;
  sub_1B40D5FF0(v25, v24);
  if (swift_taskGroup_addPending())
  {
    v37 = *(v4 + 248);
    sub_1B40E6464(*(v4 + 256), v37, &unk_1EB884C70, &qword_1B42ACAB0);
    v38 = (*(v51 + 48))(v37, 1, v30);
    v39 = *(v4 + 248);
    if (v38 == 1)
    {
      sub_1B40E26E8(*(v4 + 248), &unk_1EB884C70, &qword_1B42ACAB0);
      if (*v32)
      {
LABEL_30:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v40 = sub_1B429FE78();
        v42 = v41;
        swift_unknownObjectRelease();
        goto LABEL_36;
      }
    }

    else
    {
      sub_1B429FED8();
      (*(v51 + 8))(v39, v30);
      if (*v32)
      {
        goto LABEL_30;
      }
    }

    v40 = 0;
    v42 = 0;
LABEL_36:

    if (v42 | v40)
    {
      v48 = v4 + 56;
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      *(v4 + 72) = v40;
      *(v4 + 80) = v42;
    }

    else
    {
      v48 = 0;
    }

    v49 = *(v4 + 256);
    *(v4 + 88) = 1;
    *(v4 + 96) = v48;
    *(v4 + 104) = v33;
    swift_task_create();

    sub_1B40E26E8(v49, &unk_1EB884C70, &qword_1B42ACAB0);
    *(v4 + 304) = *(v4 + 368);
    v50 = swift_task_alloc();
    *(v4 + 312) = v50;
    *v50 = v4;
    v50[1] = sub_1B41678F8;
    a4 = *(v4 + 264);
    v7 = v4 + 136;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x1EEE6D9C8](v7, a2, a3, a4);
  }

  v43 = *(v4 + 280);
  v44 = *(v4 + 288);
  v45 = *(v4 + 264);
  v46 = *(v4 + 272);
  sub_1B40E26E8(*(v4 + 256), &unk_1EB884C70, &qword_1B42ACAB0);

  sub_1B429FEC8();
  sub_1B4105D4C();
  swift_allocError();
  sub_1B429FAD8();
  swift_willThrow();

  (*(v46 + 8))(v43, v45);

  v47 = *(v4 + 8);

  return v47();
}

uint64_t sub_1B41686C0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B41687BC, 0, 0);
}

uint64_t sub_1B41687BC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 400) + 1;
  if (v1 == *(v0 + 392))
  {
LABEL_2:
    if (*(v0 + 145))
    {
      v45 = (*(**(v0 + 384) + 136) + **(**(v0 + 384) + 136));
      v2 = swift_task_alloc();
      *(v0 + 424) = v2;
      *v2 = v0;
      v2[1] = sub_1B4168F20;

      return v45();
    }

    v46 = *(v0 + 376);
    v8 = *(v0 + 288);
    v9 = *(v0 + 256);
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    v12 = *(v0 + 224);
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = *(v0 + 192);
    v16 = *(v0 + 176);
    v17 = sub_1B429FEE8();
    v44 = *(v17 - 8);
    (*(v44 + 56))(v9, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v19 = v18 + 2;
    v18[3] = 0;
    v18[4] = v15;
    v18[5] = v46;
    v18[6] = v14;
    v18[7] = v13;
    v18[8] = v8;
    v18[9] = v12;
    v18[10] = v11;
    v18[11] = v10;
    v20 = *v16;
    v21 = v15;
    v22 = v8;
    v23 = v12;
    sub_1B40D5FF0(v11, v10);
    if ((swift_taskGroup_addPending() & 1) == 0)
    {
      v30 = *(v0 + 280);
      v31 = *(v0 + 288);
      v32 = *(v0 + 264);
      v33 = *(v0 + 272);
      sub_1B40E26E8(*(v0 + 256), &unk_1EB884C70, &qword_1B42ACAB0);

      sub_1B429FEC8();
      sub_1B4105D4C();
      swift_allocError();
      sub_1B429FAD8();
      swift_willThrow();

      (*(v33 + 8))(v30, v32);

      v34 = *(v0 + 8);

      return v34();
    }

    v24 = *(v0 + 248);
    sub_1B40E6464(*(v0 + 256), v24, &unk_1EB884C70, &qword_1B42ACAB0);
    v25 = (*(v44 + 48))(v24, 1, v17);
    v26 = *(v0 + 248);
    if (v25 == 1)
    {
      sub_1B40E26E8(*(v0 + 248), &unk_1EB884C70, &qword_1B42ACAB0);
      if (*v19)
      {
LABEL_21:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v27 = sub_1B429FE78();
        v29 = v28;
        swift_unknownObjectRelease();
LABEL_30:

        if (v29 | v27)
        {
          v40 = v0 + 56;
          *(v0 + 56) = 0;
          *(v0 + 64) = 0;
          *(v0 + 72) = v27;
          *(v0 + 80) = v29;
        }

        else
        {
          v40 = 0;
        }

        v41 = *(v0 + 256);
        *(v0 + 88) = 1;
        *(v0 + 96) = v40;
        *(v0 + 104) = v20;
        swift_task_create();

        sub_1B40E26E8(v41, &unk_1EB884C70, &qword_1B42ACAB0);
        *(v0 + 304) = *(v0 + 368);
        v42 = swift_task_alloc();
        *(v0 + 312) = v42;
        *v42 = v0;
        v42[1] = sub_1B41678F8;
        v43 = *(v0 + 264);

        return MEMORY[0x1EEE6D9C8](v0 + 136, 0, 0, v43);
      }
    }

    else
    {
      sub_1B429FED8();
      (*(v44 + 8))(v26, v17);
      if (*v19)
      {
        goto LABEL_21;
      }
    }

    v27 = 0;
    v29 = 0;
    goto LABEL_30;
  }

  while (1)
  {
    *(v0 + 400) = v1;
    v4 = *(v0 + 376);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B8C72CD0]();
    }

    else
    {
      v5 = *(v4 + 8 * v1 + 32);
      swift_unknownObjectRetain();
    }

    *(v0 + 408) = v5;
    v6 = *(*(v0 + 192) + *(v0 + 296));
    if (v6)
    {
      break;
    }

    swift_unknownObjectRelease();
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_8:
    sub_1B40E26E8(v0 + 16, &qword_1EB8857A8, &unk_1B42AEB68);
    v1 = *(v0 + 400) + 1;
    if (v1 == *(v0 + 392))
    {
      goto LABEL_2;
    }
  }

  *(v0 + 160) = v6;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885810, &qword_1B42AEB78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885818, &qword_1B42AEB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_17;
  }

  v7 = *(v0 + 40);
  if (!v7)
  {
LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v35 = *(v0 + 384);
  v36 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v47 = (*(v36 + 16) + **(v36 + 16));
  v37 = swift_task_alloc();
  *(v0 + 416) = v37;
  *v37 = v0;
  v37[1] = sub_1B41686C0;
  v38.n128_u64[0] = *(v0 + 208);
  v39.n128_u64[0] = *(v0 + 216);

  return v47(v35, v5, v7, v36, v38, v39);
}

uint64_t sub_1B4168F20()
{

  return MEMORY[0x1EEE6DFA0](sub_1B416901C, 0, 0);
}

uint64_t sub_1B416901C()
{

  v34 = v0[47];
  v1 = v0[36];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v9 = v0[22];
  v10 = sub_1B429FEE8();
  v33 = *(v10 - 8);
  (*(v33 + 56))(v2, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v12 = v11 + 2;
  v11[3] = 0;
  v11[4] = v8;
  v11[5] = v34;
  v11[6] = v7;
  v11[7] = v6;
  v11[8] = v1;
  v11[9] = v5;
  v11[10] = v4;
  v11[11] = v3;
  v13 = *v9;
  v14 = v8;
  v15 = v1;
  v16 = v5;
  sub_1B40D5FF0(v4, v3);
  if (swift_taskGroup_addPending())
  {
    v17 = v0[31];
    sub_1B40E6464(v0[32], v17, &unk_1EB884C70, &qword_1B42ACAB0);
    v18 = (*(v33 + 48))(v17, 1, v10);
    v19 = v0[31];
    if (v18 == 1)
    {
      sub_1B40E26E8(v0[31], &unk_1EB884C70, &qword_1B42ACAB0);
      if (*v12)
      {
LABEL_4:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = sub_1B429FE78();
        v22 = v21;
        swift_unknownObjectRelease();
LABEL_10:

        if (v22 | v20)
        {
          v29 = v0 + 7;
          v0[7] = 0;
          v0[8] = 0;
          v0[9] = v20;
          v0[10] = v22;
        }

        else
        {
          v29 = 0;
        }

        v30 = v0[32];
        v0[11] = 1;
        v0[12] = v29;
        v0[13] = v13;
        swift_task_create();

        sub_1B40E26E8(v30, &unk_1EB884C70, &qword_1B42ACAB0);
        v0[38] = v0[46];
        v31 = swift_task_alloc();
        v0[39] = v31;
        *v31 = v0;
        v31[1] = sub_1B41678F8;
        v32 = v0[33];

        return MEMORY[0x1EEE6D9C8](v0 + 17, 0, 0, v32);
      }
    }

    else
    {
      sub_1B429FED8();
      (*(v33 + 8))(v19, v10);
      if (*v12)
      {
        goto LABEL_4;
      }
    }

    v20 = 0;
    v22 = 0;
    goto LABEL_10;
  }

  v23 = v0[35];
  v24 = v0[36];
  v25 = v0[33];
  v26 = v0[34];
  sub_1B40E26E8(v0[32], &unk_1EB884C70, &qword_1B42ACAB0);

  sub_1B429FEC8();
  sub_1B4105D4C();
  swift_allocError();
  sub_1B429FAD8();
  swift_willThrow();

  (*(v26 + 8))(v23, v25);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1B4169430()
{
  **(v0 + 168) = *(v0 + 288);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B41694B0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B4169554()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B41695DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4169600, 0, 0);
}

uint64_t sub_1B4169600()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[5] = *sub_1B40E75F0();
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = v2;

  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884908, &qword_1B42AC0F8);
  *v5 = v0;
  v5[1] = sub_1B4169720;
  v7 = v0[2];

  return sub_1B40E7640(v7, sub_1B416CC3C, v3, v6);
}

uint64_t sub_1B4169720()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4169868, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4169868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B41698D4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 64) = a10;
  *(v10 + 72) = v12;
  *(v10 + 48) = a8;
  *(v10 + 56) = a9;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 16) = a6;
  *(v10 + 24) = a7;
  return MEMORY[0x1EEE6DFA0](sub_1B4169908, 0, 0);
}

uint64_t sub_1B4169908(__n128 a1)
{
  sub_1B429FF98();
  v2 = v1[3].i64[0];
  v4 = v1[2].i64[0];
  v3 = v1[2].i64[1];
  v13 = v1[1];
  v1[5].i64[0] = [v1[1].i64[0] decodingStats];
  v5 = sub_1B410F970();
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  v1[5].i64[1] = v9;
  v9[1] = vextq_s8(v13, v13, 8uLL);
  v9[2].i64[0] = v4;
  v9[2].i64[1] = v3;
  v9[3].i64[0] = v2;
  v10 = swift_task_alloc();
  v1[6].i64[0] = v10;
  *v10 = v1;
  v10[1] = sub_1B4169A98;

  return sub_1B40FFD6C(v10, v6, v7, v8, &unk_1B42AEBD8, v9, v11);
}

uint64_t sub_1B4169A98()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1B4169C68;
  }

  else
  {

    v3 = sub_1B4169BBC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

char *sub_1B4169BBC()
{
  result = [*(v0 + 56) completedUnitCount];
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 64);
    [*(v0 + 56) setCompletedUnitCount_];
    if (v2)
    {
      v3 = *(v0 + 64);
      [*(v0 + 56) fractionCompleted];
      v3(0);
    }

    v4 = *(v0 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1B4169C68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4169CD4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 160) = a6;
  *(v6 + 144) = a1;
  *(v6 + 152) = a2;
  *(v6 + 128) = a4;
  *(v6 + 136) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B4169CFC, 0, 0);
}

void sub_1B4169CFC()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
    v2 = sub_1B42A0518();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = OBJC_IVAR___CRNeuralTextRecognizer_textDecoder;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  swift_beginAccess();
  if (v2)
  {
    v4 = *(v0 + 128);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B8C72CD0](0);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(v4 + 32);
      swift_unknownObjectRetain();
    }

    *(v0 + 184) = v5;
    *(v0 + 192) = 1;
    v6 = *(*(v0 + 136) + *(v0 + 176));
    if (v6 && (*(v0 + 120) = v6, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885810, &qword_1B42AEB78), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885850, &qword_1B42AEBE8), (swift_dynamicCast() & 1) != 0))
    {
      if (*(v0 + 80))
      {
        sub_1B40D5F90((v0 + 56), v0 + 16);
        v7 = *(v0 + 40);
        v8 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_0((v0 + 16), v7);
        v14 = (*(v8 + 8) + **(v8 + 8));
        v9 = swift_task_alloc();
        *(v0 + 200) = v9;
        *v9 = v0;
        v9[1] = sub_1B4169FEC;
        v10.n128_u64[0] = *(v0 + 144);
        v11.n128_u64[0] = *(v0 + 152);

        v14(v5, v7, v8, v10, v11);
        return;
      }
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    sub_1B40E26E8(v0 + 56, &qword_1EB885848, &qword_1B42AEBE0);
    sub_1B40DF594();
    swift_allocError();
    *v12 = 5;
    *(v12 + 4) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    v13 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 8);
  }

  v13();
}

uint64_t sub_1B4169FEC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1B416A5A4;
  }

  else
  {
    v2 = sub_1B416A100;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B416A100()
{
  v1 = [*(v0 + 184) textFeatureInfo];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855B0, &qword_1B42AE570);
  v2 = sub_1B429FDF8();

  v3 = sub_1B40DD3D4(v2);

  if (v3)
  {
    if (v3 >> 62)
    {
      v4 = sub_1B42A0518();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
LABEL_35:
          __break(1u);
          return;
        }

        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x1B8C72CD0](i, v3);
          }

          else
          {
            v6 = *(v3 + 8 * i + 32);
          }

          v8 = v6;
          v9 = [(CRFeatureSequenceRecognitionInfo *)v6 recognizedTextRegion];
          if (v9)
          {
            v10 = v9;
            v11 = *(v0 + 160);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90, &qword_1B42AC360);
            v12 = swift_allocObject();
            *(v12 + 16) = xmmword_1B42AC090;
            *(v12 + 32) = v10;
            sub_1B40E27B4(0, &qword_1ED95E670, off_1E7BC1048);
            v13 = v10;
            v14 = sub_1B429FDE8();

            v15 = [v8 lineRegion];
            [v11 addRecognizedRegions:v14 detectedRegion:v15];

            v8 = v15;
          }
        }
      }
    }
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v16 = *(v0 + 192);
  if (v16 == *(v0 + 168))
  {
    v17 = *(v0 + 8);
LABEL_29:

    v17();
    return;
  }

  v18 = *(v0 + 128);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1B8C72CD0](*(v0 + 192));
  }

  else
  {
    if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v19 = *(v18 + 8 * v16 + 32);
    swift_unknownObjectRetain();
  }

  *(v0 + 184) = v19;
  *(v0 + 192) = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v20 = *(*(v0 + 136) + *(v0 + 176));
  if (!v20 || (*(v0 + 120) = v20, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885810, &qword_1B42AEB78), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885850, &qword_1B42AEBE8), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_28;
  }

  if (!*(v0 + 80))
  {
LABEL_28:
    sub_1B40E26E8(v0 + 56, &qword_1EB885848, &qword_1B42AEBE0);
    sub_1B40DF594();
    swift_allocError();
    *v26 = 5;
    *(v26 + 4) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    v17 = *(v0 + 8);
    goto LABEL_29;
  }

  sub_1B40D5F90((v0 + 56), v0 + 16);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v21);
  v27 = (*(v22 + 8) + **(v22 + 8));
  v23 = swift_task_alloc();
  *(v0 + 200) = v23;
  *v23 = v0;
  v23[1] = sub_1B4169FEC;
  v24.n128_u64[0] = *(v0 + 144);
  v25.n128_u64[0] = *(v0 + 152);

  v27(v19, v21, v22, v24, v25);
}

uint64_t sub_1B416A5A4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B416A610(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1B429FE78();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B416A6A4, v4, v6);
}

uint64_t sub_1B416A6A4()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884880, &qword_1B42AC0B8);
  if (sub_1B429FFD8())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885860, &qword_1B42AEBF0);
    *v3 = v0;
    v3[1] = sub_1B416A7DC;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return MEMORY[0x1EEE6DAC8](v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_1B416A7DC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1B416AA28;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1B416A8F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B416A8F8()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_1B429FFD8())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885860, &qword_1B42AEBF0);
  *v4 = v0;
  v4[1] = sub_1B416A7DC;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v7, v6, v5);
}

uint64_t sub_1B416AA28()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_1B429FFD8())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885860, &qword_1B42AEBF0);
    *v4 = v0;
    v4[1] = sub_1B416A7DC;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v7, v6, v5);
  }
}

uint64_t sub_1B416AB64(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B416AB88, 0, 0);
}

char *sub_1B416AB88()
{
  v1 = *(v0 + 64);
  objc_sync_enter(v1);
  v2 = OBJC_IVAR___CRNeuralTextRecognizer_model;
  *(v0 + 72) = OBJC_IVAR___CRNeuralTextRecognizer_model;
  swift_beginAccess();
  if (!*&v1[v2])
  {
    sub_1B4165BBC();
    result = [*(v0 + 64) resourceUsers];
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    [*(v0 + 64) setResourceUsers_];
  }

  v3 = *(v0 + 48);
  objc_sync_exit(*(v0 + 64));
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1B416AD40;

  return v6(v0 + 40);
}

uint64_t sub_1B416AD40()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B416AF48;
  }

  else
  {
    v2 = sub_1B416AE54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

char *sub_1B416AE54()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  objc_sync_enter(v2);
  if (!*&v2[v1])
  {
    result = [*(v0 + 64) resourceUsers];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    v4 = *(v0 + 64);
    [v4 setResourceUsers_];
    if (![v4 resourceUsers])
    {
      v5 = *(v0 + 64);
      v6 = [v5 unloadResourcesWhenNotInUse];
      v7 = &selRef__unloadResources;
      if (!v6)
      {
        v7 = &selRef__releaseIntermediateResources;
      }

      [v5 *v7];
    }
  }

  objc_sync_exit(*(v0 + 64));
  v8 = *(v0 + 40);
  v9 = *(v0 + 8);

  return v9(v8);
}

void *sub_1B416AF60(uint64_t a1)
{
  v3 = v2;
  v4 = a1;
  v5 = [objc_opt_self() supportedLanguagesForVersion_];
  if (!v5)
  {
    sub_1B40DF594();
    swift_allocError();
    *v30 = 4;
    *(v30 + 4) = 1;
    swift_willThrow();
    return v1;
  }

  v6 = v5;
  v7 = sub_1B429FDF8();

  v8 = *(v7 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC8];
  }

  v9 = 0;
  v10 = (v7 + 40);
  v1 = MEMORY[0x1E69E7CC8];
  v32 = v7;
  v33 = v4;
  while (v9 < *(v7 + 16))
  {
    v12 = *(v10 - 1);
    v11 = *v10;
    swift_bridgeObjectRetain_n();
    v13._countAndFlagsBits = v12;
    v13._object = v11;
    CRLocale.init(rawValue:)(v13);
    if (v36 == 30)
    {
    }

    else
    {
      v35 = v36;
      v14 = sub_1B416BEF0(v4, &v35);
      if (!v3)
      {
        v15 = v8;
        v34 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = sub_1B40F0030(v12, v11);
        v19 = v1[2];
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_26;
        }

        v23 = v18;
        if (v1[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_15;
          }

          v26 = v17;
          sub_1B416BAEC();
          v17 = v26;
          v8 = v15;
          if ((v23 & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_16:
          v25 = v17;

          *(v1[7] + 8 * v25) = v34;
        }

        else
        {
          sub_1B416B84C(v22, isUniquelyReferenced_nonNull_native);
          v17 = sub_1B40F0030(v12, v11);
          if ((v23 & 1) != (v24 & 1))
          {
            goto LABEL_28;
          }

LABEL_15:
          v8 = v15;
          if (v23)
          {
            goto LABEL_16;
          }

LABEL_18:
          v1[(v17 >> 6) + 8] |= 1 << v17;
          v27 = (v1[6] + 16 * v17);
          *v27 = v12;
          v27[1] = v11;
          *(v1[7] + 8 * v17) = v34;
          v28 = v1[2];
          v21 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v21)
          {
            goto LABEL_27;
          }

          v1[2] = v29;
        }

        v7 = v32;
        v4 = v33;
        goto LABEL_5;
      }

      v3 = 0;
    }

LABEL_5:
    ++v9;
    v10 += 2;
    if (v8 == v9)
    {

      return v1;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1B42A06E8();
  __break(1u);
  return result;
}

uint64_t CRNeuralTextRecognizer._featureProvider()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v2 configuration];
  v5 = [v4 revision];

  if (v5 <= 3)
  {
    v8 = OBJC_IVAR___CRNeuralTextRecognizer_model;
    swift_beginAccess();
    if (*&v2[v8])
    {
      swift_unknownObjectRetain_n();
      nullsub_1();
      v10 = v9;
      v11 = [v2 configuration];
      v15 = &type metadata for CRTextRecognizerModelCRTextRecognizerModelInputProviderFacade;
      v16 = &off_1F2BB1530;
      *&v14 = v10;
      a1[3] = &type metadata for CRRecognizerBatchedByWidthsFeatureProvider;
      a1[4] = &protocol witness table for CRRecognizerBatchedByWidthsFeatureProvider;
      v12 = swift_allocObject();
      *a1 = v12;
      swift_unknownObjectRetain();
      CRRecognizerBatchedByWidthsFeatureProvider.init(configuration:inputProvider:)(v11, &v14, (v12 + 16));
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    sub_1B40DF594();
    swift_allocError();
    v7 = 5;
  }

  else
  {
    sub_1B40DF594();
    swift_allocError();
    v7 = 4;
  }

  *v6 = v7;
  *(v6 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_1B416B3E8()
{
  objc_sync_enter(v0);
  v1 = OBJC_IVAR___CRNeuralTextRecognizer_model;
  swift_beginAccess();
  *&v0[v1] = 0;
  swift_unknownObjectRelease();
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v2 = OBJC_IVAR___CRNeuralTextRecognizer_featureProvider;
  swift_beginAccess();
  sub_1B4165574(v5, &v0[v2]);
  swift_endAccess();
  v3 = OBJC_IVAR___CRNeuralTextRecognizer_textDecoder;
  swift_beginAccess();
  *&v0[v3] = 0;
  swift_unknownObjectRelease();
  return objc_sync_exit(v0);
}

uint64_t sub_1B416B4F0()
{
  objc_sync_enter(v0);
  v1 = OBJC_IVAR___CRNeuralTextRecognizer_model;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    [v2 releaseIntermediateBuffers];
  }

  v3 = OBJC_IVAR___CRNeuralTextRecognizer_textDecoder;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4 && ([v4 respondsToSelector_] & 1) != 0)
  {
    [v4 releaseUnusedResources];
  }

  return objc_sync_exit(v0);
}

void __swiftcall CRNeuralTextRecognizer.init()(CRNeuralTextRecognizer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t sub_1B416B734(uint64_t a1)
{
  v2 = sub_1B42A0248();

  return sub_1B416B778(a1, v2);
}

unint64_t sub_1B416B778(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B42A0258();

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

void sub_1B416B84C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885838, &qword_1B42AEB88);
  v35 = v4;
  v6 = sub_1B42A05D8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1B42A0778();
      sub_1B429FC48();
      v25 = sub_1B42A07A8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1B416BAEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885838, &qword_1B42AEB88);
  v2 = *v0;
  v3 = sub_1B42A05C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
}

id sub_1B416BC54(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v3[OBJC_IVAR___CRNeuralTextRecognizer_unloadResourcesWhenNotInUse] = 0;
  v9 = OBJC_IVAR___CRNeuralTextRecognizer_owner;
  *&v3[OBJC_IVAR___CRNeuralTextRecognizer_owner] = 0;
  *&v3[OBJC_IVAR___CRNeuralTextRecognizer_resourceUsers] = 0;
  v10 = &v3[OBJC_IVAR___CRNeuralTextRecognizer_featureProvider];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v3[OBJC_IVAR___CRNeuralTextRecognizer_model] = 0;
  *&v3[OBJC_IVAR___CRNeuralTextRecognizer_textDecoder] = 0;
  v11 = objc_allocWithZone(CRPerformanceStatistics);
  v12 = sub_1B429FB88();
  v13 = [v11 initWithName:v12 measureRecentPeak:0];

  *&v3[OBJC_IVAR___CRNeuralTextRecognizer_inferenceStats] = v13;
  v14 = objc_allocWithZone(CRPerformanceStatistics);
  v15 = sub_1B429FB88();
  v16 = [v14 initWithName:v15 measureRecentPeak:0];

  *&v3[OBJC_IVAR___CRNeuralTextRecognizer_decodingStats] = v16;
  *&v3[OBJC_IVAR___CRNeuralTextRecognizer_configuration] = a1;
  sub_1B40E6464(a2, v8, &unk_1EB884870, &qword_1B42AC0A0);
  v17 = sub_1B429F6D8();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v8, 1, v17);
  v20 = a1;
  v21 = 0;
  if (v19 != 1)
  {
    v21 = sub_1B429F6A8();
    (*(v18 + 8))(v8, v17);
  }

  v22 = *&v3[v9];
  *&v3[v9] = v21;

  v25.receiver = v3;
  v25.super_class = CRNeuralTextRecognizer;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  sub_1B40E26E8(a2, &unk_1EB884870, &qword_1B42AC0A0);
  return v23;
}

uint64_t sub_1B416BEF0(uint64_t a1, char *a2)
{
  v4 = sub_1B429FA68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  v11 = *a2;
  switch(a1)
  {
    case 3:
      v24[1] = *a2;
      CRLocale.script.getter(v24);
      if (v24[0] > 3u)
      {
        if (v24[0] == 4)
        {
          return type metadata accessor for CRTextRecognizerModelKoreanV3();
        }

        if (v24[0] == 5)
        {
          return type metadata accessor for CRTextRecognizerModelThaiV3();
        }

        return type metadata accessor for CRTextRecognizerModelArabicV3();
      }

      if (v24[0] < 2u)
      {
        return type metadata accessor for CRTextRecognizerModelLatinCyrillicV3();
      }

      if (v24[0] != 2)
      {
        return type metadata accessor for CRTextRecognizerModelJapaneseV3();
      }

      return type metadata accessor for CRTextRecognizerModelChineseV3();
    case 2:
      v16 = sub_1B41253CC();
      (*(v5 + 16))(v7, v16, v4);
      v17 = sub_1B429FA48();
      v18 = sub_1B42A0148();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1B40D2000, v17, v18, "Unexpected attempt to load V2 recognizer", v19, 2u);
        MEMORY[0x1B8C74FA0](v19, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      v23[1] = v11;
      CRLocale.script.getter(v23);
      if (v23[0] != 2)
      {
        return type metadata accessor for CRTextRecognizerModelLatinCyrillicV3();
      }

      return type metadata accessor for CRTextRecognizerModelChineseV3();
    case 1:
      v12 = sub_1B41253CC();
      (*(v5 + 16))(v10, v12, v4);
      v13 = sub_1B429FA48();
      v14 = sub_1B42A0148();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1B40D2000, v13, v14, "Unexpected attempt to load V1 recognizer", v15, 2u);
        MEMORY[0x1B8C74FA0](v15, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
      return type metadata accessor for CRTextRecognizerModelLatinCyrillicV3();
  }

  sub_1B40DF594();
  swift_allocError();
  *v21 = 4;
  *(v21 + 4) = 1;
  return swift_willThrow();
}

id sub_1B416C220(uint64_t a1, id a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  *&v8 = MEMORY[0x1EEE9AC00](v7 - 8).n128_u64[0];
  v10 = &v19 - v9;
  v11 = [a2 locale];
  v12 = sub_1B429FB98();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  CRLocale.init(rawValue:)(v15);
  if (v21 == 30)
  {
    sub_1B40DF594();
    swift_allocError();
    *v16 = 1;
    *(v16 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    v20 = v21;
    sub_1B416BEF0(a1, &v20);
    if (!v3)
    {
      sub_1B40E6464(a3, v10, &unk_1EB884870, &qword_1B42AC0A0);
      objc_allocWithZone(swift_getObjCClassFromMetadata());
      v17 = a2;
      a2 = sub_1B40E66B4(v17, v10);
    }
  }

  return a2;
}

id sub_1B416C3B4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_1B429FA68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) < 2)
  {
    v11 = sub_1B41253CC();
    (*(v8 + 16))(v10, v11, v7);
    v12 = sub_1B429FA48();
    v13 = sub_1B42A0148();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v19[1] = v3;
      v15 = v14;
      *v14 = 134217984;
      *(v14 + 4) = a1;
      _os_log_impl(&dword_1B40D2000, v12, v13, "Unexpected attempt to load V%ld decoder", v14, 0xCu);
      MEMORY[0x1B8C74FA0](v15, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    goto LABEL_6;
  }

  if (a1 == 3)
  {
LABEL_6:
    type metadata accessor for CRCTCTextDecoderV3();
    v16 = a2;
    swift_unknownObjectRetain();
    return CRCTCTextDecoderV3.__allocating_init(configuration:model:)(v16, a3);
  }

  sub_1B40DF594();
  swift_allocError();
  *v18 = 4;
  *(v18 + 4) = 1;
  return swift_willThrow();
}

id sub_1B416C5C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 configuration];
  [v6 decodeWithLM];

  if (!a2)
  {
LABEL_12:
    v23 = [v3 configuration];
    v24 = [v23 confidenceThresholds];

    return v24;
  }

  result = confidenceThresholds();
  if (result)
  {
    v8 = result;
    sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885870, &qword_1B42AD788);
    sub_1B4124600();
    v9 = sub_1B429FAF8();

    v10 = [v3 configuration];
    [v10 revision];

    v11 = sub_1B42A0068();
    v12 = v11;
    if (*(v9 + 16) && (v13 = sub_1B416B734(v11), (v14 & 1) != 0) && (v15 = *(*(v9 + 56) + 8 * v13), , , v12, v16 = sub_1B429FE68(), v12 = v16, *(v15 + 16)) && (v17 = sub_1B416B734(v16), (v18 & 1) != 0))
    {
      v19 = *(*(v15 + 56) + 8 * v17);

      if (*(v19 + 16))
      {
        v20 = sub_1B40F0030(a1, a2);
        if (v21)
        {
          v22 = *(*(v19 + 56) + 8 * v20);

          return v22;
        }
      }
    }

    else
    {
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B416C808(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B40E6828;

  return sub_1B41673D0(a1, v4, v5, v6, v9, v10, v11, v7, v8);
}

uint64_t sub_1B416C908(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = v2[6];
  v11 = *(v2 + 7);
  v12 = *(v2 + 8);
  v13 = *(v2 + 9);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1B40E6828;

  return sub_1B41676E0(a1, a2, v6, v7, v8, v11, v12, v13, v9, v10);
}

uint64_t sub_1B416C9FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B40E17D0;

  return sub_1B41695DC(a1, v5, v4);
}

uint64_t sub_1B416CAA8()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[6];
  v5 = v0[7];
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = *(v0 + 10);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B40E6828;

  return sub_1B41698D4(v4, v5, v9, v10, v11, v2, v3, v6, v7, v8);
}

uint64_t sub_1B416CB80()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B40E6828;

  return sub_1B4169CD4(v4, v5, v7, v2, v3, v6);
}

uint64_t sub_1B416CC3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR___CRNeuralTextRecognizer_model;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884950, &qword_1B42AC368);
    v6 = sub_1B429FDE8();
    v11 = 0;
    v7 = [v5 predictFromInputs:v6 error:&v11];

    if (v11)
    {
      v11;

      swift_willThrow();
      return swift_unknownObjectRelease();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884958, &qword_1B42AC370);
      v10 = sub_1B429FDF8();

      result = swift_unknownObjectRelease();
      *a1 = v10;
    }
  }

  else
  {
    sub_1B40DF594();
    swift_allocError();
    *v9 = 5;
    *(v9 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_1B416D638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1B416DE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  std::vector<+[CRFormParser horizontalClustersFromFields:]::ClusteredLine>::~vector[abi:ne200100]((v22 + 48));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__15(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1B416F1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(a14);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(a17);

  _Unwind_Resume(a1);
}

id CRCastAsClass<CROutputRegion>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id CRCastAsClass<CRFormFieldOutputRegion>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B4170A64(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, id);
  _Block_object_dispose(va, 8);

  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__125(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B417105C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7BC1B40, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B4171230(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(*a1);
    std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::vector<std::tuple<double,CRFormFieldLabelPosition,CROutputRegion * {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id CROSLogForCategory(int a1)
{
  if (CROSLogForCategory_onceToken != -1)
  {
    dispatch_once(&CROSLogForCategory_onceToken, &__block_literal_global_0);
  }

  v2 = CROSLogForCategory_logObjects[a1];

  return v2;
}

void __CROSLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.TextRecognition", "General");
  v1 = CROSLogForCategory_logObjects[0];
  CROSLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.TextRecognition", "Tracking");
  v3 = qword_1ED9603E8;
  qword_1ED9603E8 = v2;

  v4 = os_log_create("com.apple.TextRecognition", "Detection");
  v5 = qword_1ED9603F0;
  qword_1ED9603F0 = v4;

  v6 = os_log_create("com.apple.TextRecognition", "Recognition");
  v7 = qword_1ED9603F8;
  qword_1ED9603F8 = v6;

  v8 = os_log_create("com.apple.TextRecognition", "Layout");
  v9 = qword_1ED960400;
  qword_1ED960400 = v8;

  v10 = os_log_create("com.apple.TextRecognition", "TSR");
  v11 = qword_1ED960408;
  qword_1ED960408 = v10;

  v12 = os_log_create("com.apple.TextRecognition", "Form");
  v13 = qword_1ED960410;
  qword_1ED960410 = v12;

  v14 = os_log_create("com.apple.TextRecognition", "DD");
  v15 = qword_1ED960418;
  qword_1ED960418 = v14;

  v16 = os_log_create("com.apple.TextRecognition", "CameraReader");
  v17 = qword_1ED960420;
  qword_1ED960420 = v16;
}

void sub_1B4171E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B4172560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51)
{
  std::__tree<CRCHuint128>::destroy(v56, *v54);
  std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::destroy(v55, *v52);
  CRCHSymbolMap::~CRCHSymbolMap((v57 + 96));
  v60 = *(v53 + 112);
  if (v60)
  {
    *(v53 + 120) = v60;
    operator delete(v60);
  }

  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&a43);
  std::__tree<CRCHuint128>::destroy(a10, *v58);
  v61 = *v57;
  if (*v57)
  {
    *(v53 + 48) = v61;
    operator delete(v61);
  }

  if (*(v53 + 31) < 0)
  {
    operator delete(*v51);
  }

  MEMORY[0x1B8C73EF0](v53, 0x10F2C40A9BC773BLL);
  _Unwind_Resume(a1);
}

void NetworkEdge::NetworkEdge(NetworkEdge *this, const NetworkEdge *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  *(this + 40) = *(a2 + 40);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
}

uint64_t *std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B417277C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void CRCHSymbolMap::CRCHSymbolMap(CRCHSymbolMap *this)
{
  *this = &unk_1F2BAFC88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  std::string::basic_string[abi:ne200100]<0>(v4, ",");
  std::string::basic_string[abi:ne200100]<0>(__p, "#");
  CRCHSymbolMap::store(this, v4);
  CRCHSymbolMap::store(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1B4172930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(v20, *v21);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

unint64_t CRCHSymbolMap::store(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v3 = a1 + 8;
  if (a1 + 40 == std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::find<std::string>(a1 + 32, a2))
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3);
    v9 = a2;
    *(std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3 + 24, a2, &std::piecewise_construct, &v9, &v8) + 56) = v6;
    std::vector<std::string>::push_back[abi:ne200100](v3, a2);
  }

  else
  {
    v9 = a2;
    return *(std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3 + 24, a2, &std::piecewise_construct, &v9, &v8) + 56);
  }

  return v6;
}

uint64_t CRCHSymbolMap::store(uint64_t a1, const void **a2, uint64_t a3)
{
  v8 = a2;
  if (a1 + 40 != std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::find<std::string>(a1 + 32, a2))
  {
    return *(std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 32, a2, &std::piecewise_construct, &v8, &v7) + 56);
  }

  *(std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 32, a2, &std::piecewise_construct, &v8, &v7) + 56) = a3;
  std::vector<std::string>::push_back[abi:ne200100](a1 + 8, a2);
  return a3;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_1B4172E78(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__tree<CRCHuint128>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<CRCHuint128>::destroy(a1, *a2);
    std::__tree<CRCHuint128>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::destroy(a1, a2[1]);
    std::__tree<CRCHuint128>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void CRCHSymbolMap::~CRCHSymbolMap(char **this)
{
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy((this + 4), this[5]);
  v2 = (this + 1);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<NetworkEdge>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<NetworkEdge>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void CRCHNetwork::~CRCHNetwork(CRCHNetwork *this)
{
  std::__tree<CRCHuint128>::destroy(this + 224, *(this + 29));
  std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::destroy(this + 200, *(this + 26));
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(this + 168, *(this + 22));
  v4 = (this + 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v4 = (this + 88);
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__tree<CRCHuint128>::destroy(this + 64, *(this + 9));
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

BOOL pathForResource(const char *a1, const char *a2, UInt8 *a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = strdup(a1);
  __lasts = 0;
  v6 = strtok_r(v5, ".", &__lasts);
  v7 = *MEMORY[0x1E695E480];
  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v6, 0x8000100u);
  if (!__lasts)
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = CFStringCreateWithCString(v7, __lasts, 0x8000100u);
  if (a2)
  {
LABEL_4:
    a2 = CFStringCreateWithCString(v7, a2, 0x8000100u);
  }

LABEL_5:
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.TextRecognition");
  v11 = CFBundleCopyResourceURL(BundleWithIdentifier, v8, v9, a2);
  v12 = CFURLGetFileSystemRepresentation(v11, 1u, a3, 1024) != 0;
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  free(v5);
  return v12;
}

uint64_t firstMatchingResourceForLocale(NSLocale *a1, NSString *a2, NSString *a3, UInt8 *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = rankedCandidateIdentifiersForLocale(a1);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v15;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v15 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v14 + 1) + 8 * v11);
    if (pathForResource([[[(NSString *)a2 stringByAppendingString:v12] stringByAppendingPathExtension:a3] UTF8String], 0, a4))
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

void *rankedCandidateIdentifiersForLocale(NSLocale *a1)
{
  v2 = [(NSString *)[(NSLocale *)a1 languageCode] lowercaseString];
  v3 = [(NSString *)[(NSLocale *)a1 scriptCode] capitalizedString];
  v4 = [(NSString *)[(NSLocale *)a1 countryCode] uppercaseString];
  v5 = [MEMORY[0x1E695DF70] array];
  if (v2)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v7 == 1 && v4 != 0)
  {
    [v5 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@_%@", v2, v3, v4)}];
  }

  if (v2 && v4)
  {
    [v5 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@_%@", v2, v4)}];
  }

  if (v7)
  {
    [v5 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@", v2, v3)}];
LABEL_18:
    [v5 addObject:v2];
    return v5;
  }

  if (v2)
  {
    goto LABEL_18;
  }

  return v5;
}

void *NSStringFromUInt32Ptr(unsigned int *a1, uint64_t a2, _NSRange a3)
{
  if (!a1)
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  v7 = [MEMORY[0x1E696AD60] string];
  if (a2 && length)
  {
    v8 = 0;
    do
    {
      v9 = a1[v8];
      if (v9 == 1)
      {
        ++location;
      }

      else if (location <= v8 && location + length > v8)
      {
        if ((v9 - 0x10000) >> 20)
        {
          v10 = a1[v8];
          v11 = 1;
        }

        else
        {
          v10 = ((v9 - 0x10000) >> 10) | 0xFFFFD800;
          v13[1] = v9 & 0x3FF | 0xDC00;
          v11 = 2;
        }

        v13[0] = v10;
        [v7 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCharacters:length:", v13, v11)}];
      }

      ++v8;
    }

    while (a2 != v8);
  }

  return v7;
}

uint64_t CH_unicodeToNSString(int a1)
{
  if ((a1 - 0x10000) >> 20)
  {
    v2 = 1;
    LOWORD(v1) = a1;
  }

  else
  {
    v1 = ((a1 - 0x10000) >> 10) | 0xFFFFD800;
    v4[1] = a1 & 0x3FF | 0xDC00;
    v2 = 2;
  }

  v4[0] = v1;
  return [MEMORY[0x1E696AEC0] stringWithCharacters:v4 length:v2];
}

uint64_t characterCount(NSString *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(NSString *)a1 length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___Z14characterCountP8NSString_block_invoke;
  v5[3] = &unk_1E7BC1FB8;
  v5[4] = &v6;
  [(NSString *)a1 enumerateSubstringsInRange:0 options:v2 usingBlock:2, v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1B4173B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B4174D18(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B4176A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id CRCastAsClass<CRFormTextFieldOutputRegion>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B4179614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B41799CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B417A844(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B417ADF4(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_1B417B008(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B417B410(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B417B6B0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1B417CDE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CRLanguageCorrection;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1B417EB84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7BC1B48, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t std::__function::__value_func<void ()(std::vector<unsigned long> const&,double,double,double,double,double,double)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::vector<CRCHLatticePath>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        CRCHLatticePath::~CRCHLatticePath((v4 - 448));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void CRCHLatticePath::~CRCHLatticePath(CRCHLatticePath *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    free(v3);
    *(this + 1) = 0;
  }

  v4 = *(this + 28);
  if (v4)
  {
    CFRelease(v4);
    *(this + 28) = 0;
  }

  v5 = *(this + 27);
  if (v5)
  {
    CFRelease(v5);
    *(this + 27) = 0;
  }

  v6 = *(this + 51);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 48);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 45);
  if (v8)
  {
    *(this + 46) = v8;
    operator delete(v8);
  }

  v9 = *(this + 42);
  if (v9)
  {
    *(this + 43) = v9;
    operator delete(v9);
  }

  v10 = *(this + 39);
  if (v10)
  {
    *(this + 40) = v10;
    operator delete(v10);
  }

  v11 = *(this + 36);
  if (v11)
  {
    *(this + 37) = v11;
    operator delete(v11);
  }

  v12 = *(this + 31);
  if (v12)
  {
    *(this + 32) = v12;
    operator delete(v12);
  }

  v13 = *(this + 11);
  if (v13)
  {
    *(this + 12) = v13;
    operator delete(v13);
  }

  v14 = *(this + 8);
  if (v14)
  {
    *(this + 9) = v14;
    operator delete(v14);
  }
}

uint64_t *std::vector<double>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1B417F21C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[CRLanguageCorrection correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:]::$_1 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *result;
  v7 = *(a6 + 8 * *result);
  v8 = *a2;
  v9 = *(a6 + 8 * *a2);
  v10 = *a3;
  v11 = *(a6 + 8 * *a3);
  if (v7 >= v9)
  {
    if (v9 >= v11)
    {
      v8 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v8;
      v12 = *result;
      if (*(a6 + 8 * *result) < *(a6 + 8 * *a2))
      {
        *result = *a2;
        *a2 = v12;
        v8 = *a3;
      }
    }
  }

  else
  {
    if (v9 < v11)
    {
      *result = v10;
LABEL_9:
      *a3 = v6;
      v8 = v6;
      goto LABEL_11;
    }

    *result = v8;
    *a2 = v6;
    v8 = *a3;
    if (v7 < *(a6 + 8 * *a3))
    {
      *a2 = v8;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 8 * v8) < *(a6 + 8 * *a4))
  {
    *a3 = *a4;
    *a4 = v8;
    v13 = *a2;
    if (*(a6 + 8 * *a2) < *(a6 + 8 * *a3))
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *result;
      if (*(a6 + 8 * *result) < *(a6 + 8 * *a2))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  v15 = *a4;
  if (*(a6 + 8 * *a4) < *(a6 + 8 * *a5))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(a6 + 8 * *a3) < *(a6 + 8 * *a4))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(a6 + 8 * *a2) < *(a6 + 8 * *a3))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(a6 + 8 * *result) < *(a6 + 8 * *a2))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRLanguageCorrection correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:]::$_1 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a3;
      v7 = *a1;
      v8 = a1[1];
      v9 = *(*a3 + 8 * *a1);
      v10 = *(*a3 + 8 * v8);
      v11 = *(a2 - 1);
      v12 = *(*a3 + 8 * v11);
      if (v9 >= v10)
      {
        if (v10 < v12)
        {
          a1[1] = v11;
          *(a2 - 1) = v8;
          v35 = *a1;
          v36 = a1[1];
          if (*(v6 + 8 * *a1) < *(v6 + 8 * v36))
          {
            *a1 = v36;
            a1[1] = v35;
          }
        }

        return 1;
      }

      if (v10 >= v12)
      {
        *a1 = v8;
        a1[1] = v7;
        v53 = *(a2 - 1);
        if (v9 >= *(v6 + 8 * v53))
        {
          return 1;
        }

        a1[1] = v53;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v7;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[CRLanguageCorrection correctTextFeature:inImage:withTextPieces:withMaxWidthPerRegion:withMedianCharSpacing:withBreakpoints:segmenter:options:numCharCandidates:downscaleSpaceRatio:latticePresetIdx:latticeResults:]::$_1 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a1;
    v28 = *a3;
    v29 = *(*a3 + 8 * *a1);
    v30 = *(*a3 + 8 * v24);
    v31 = *(*a3 + 8 * v26);
    if (v29 >= v30)
    {
      if (v30 >= v31)
      {
LABEL_41:
        v24 = v26;
        goto LABEL_42;
      }

      *v23 = v26;
      *v25 = v24;
      v32 = a1;
      v33 = a1 + 1;
      v34 = v24;
      if (v29 >= v31)
      {
LABEL_42:
        v47 = *(a2 - 1);
        if (*(v28 + 8 * v24) < *(v28 + 8 * v47))
        {
          *v25 = v47;
          *(a2 - 1) = v24;
          v48 = *v23;
          v49 = *(v28 + 8 * *v23);
          v50 = *v25;
          v51 = *(v28 + 8 * *v25);
          if (v49 < v51)
          {
            a1[1] = v50;
            a1[2] = v48;
            v52 = *a1;
            if (*(v28 + 8 * *a1) < v51)
            {
              *a1 = v50;
              a1[1] = v52;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      v34 = *a1;
      if (v30 >= v31)
      {
        *a1 = v24;
        a1[1] = v27;
        v32 = a1 + 1;
        v33 = a1 + 2;
        v34 = v27;
        if (v29 >= v31)
        {
          goto LABEL_41;
        }
      }
    }

    *v32 = v26;
    *v33 = v27;
    v24 = v34;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *a1;
    v5 = *(a2 - 1);
    if (*(*a3 + 8 * *a1) < *(*a3 + 8 * v5))
    {
      *a1 = v5;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a1;
  v17 = *a3;
  v18 = *(*a3 + 8 * *a1);
  v19 = *(*a3 + 8 * v15);
  v20 = *(*a3 + 8 * v13);
  if (v18 < v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v19 >= v20)
    {
      *a1 = v15;
      a1[1] = v16;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v18 >= v20)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v21 = v13;
    *v22 = v16;
    goto LABEL_27;
  }

  if (v19 < v20)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v18 < v20)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v14;
    v41 = *(v17 + 8 * *v14);
    v42 = *v37;
    v43 = *(v17 + 8 * *v37);
    if (v41 < v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v40;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v40 = *(a1 + v44 - 16);
        v44 -= 8;
        if (*(v17 + 8 * v40) >= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_35;
        }
      }

      v46 = a1;
LABEL_35:
      *v46 = v42;
      if (++v38 == 8)
      {
        break;
      }
    }

    v14 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

void sub_1B4180BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v46 - 208), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B418144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v58 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B4181FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B4182B9C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CRTextRecognizerModelEspressoInput;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B4183CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *__copy_helper_block_ea8_64c59_ZTSNSt3__16vectorI17espresso_buffer_tNS_9allocatorIS1_EEEE88c70_ZTSNSt3__16vectorIU8__strongU13block_pointerFvvENS_9allocatorIS3_EEEE(void *a1, uint64_t a2)
{
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  std::vector<espresso_buffer_t>::__init_with_size[abi:ne200100]<espresso_buffer_t*,espresso_buffer_t*>(a1 + 8, *(a2 + 64), *(a2 + 72), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  return std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__init_with_size[abi:ne200100]<void({block_pointer} {__strong}*)(void),void({block_pointer} {__strong}*)(void)>(a1 + 11, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
}

void sub_1B4183D80(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_64c59_ZTSNSt3__16vectorI17espresso_buffer_tNS_9allocatorIS1_EEEE88c70_ZTSNSt3__16vectorIU8__strongU13block_pointerFvvENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v3 = (a1 + 88);
  std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;

    operator delete(v2);
  }
}

void sub_1B4184118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = CRTextSequenceRecognizerModelEspresso;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B4184850(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1B4184B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<espresso_buffer_t>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<espresso_buffer_t>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<espresso_buffer_t>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<espresso_buffer_t>::__init_with_size[abi:ne200100]<espresso_buffer_t*,espresso_buffer_t*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<espresso_buffer_t>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B4185154(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__init_with_size[abi:ne200100]<void({block_pointer} {__strong}*)(void),void({block_pointer} {__strong}*)(void)>(uint64_t *result, const void **a2, const void **a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B4186C48(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void CRImageBuffer::CRImageBuffer(CRImageBuffer *this, size_t count, size_t size, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(this + 2) = a5;
  *(this + 3) = a6;
  *this = 0;
  *(this + 1) = a4;
  if (count)
  {
    *this = malloc_type_calloc(count, size, 0xB0BD58F2uLL);
  }
}

{
  *(this + 2) = a5;
  *(this + 3) = a6;
  *this = 0;
  *(this + 1) = a4;
  if (count)
  {
    *this = malloc_type_calloc(count, size, 0xB0BD58F2uLL);
  }
}

void CRImageBuffer::~CRImageBuffer(void **this)
{
  v1 = *this;
  if (v1)
  {
    free(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    free(v1);
  }
}

void RectangleFinder::RectangleFinder(RectangleFinder *this)
{
  *(this + 10) = 0x340200000;
  *(this + 22) = 1080033280;
}

{
  *(this + 10) = 0x340200000;
  *(this + 22) = 1080033280;
}

uint64_t RectangleFinder::PrintLabels(RectangleFinder *this, int **a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v8 = a2;
      for (j = a3; j; --j)
      {
        v10 = *v8++;
        printf("%3d ", *(v10 + 4 * i));
      }

      result = putchar(10);
    }
  }

  return result;
}

unint64_t RectangleFinder::FindNextContourPixelPosition(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int *a6, int a7)
{
  v7 = *a6;
  v8 = HIDWORD(a5);
  v9 = 8;
  while (1)
  {
    v10 = v7 & 7;
    if (v7 <= 0)
    {
      v10 = -(-v7 & 7);
    }

    v11 = neighborColumnOffset[v10] + a5;
    v12 = neighborRowOffset[v10] + SHIDWORD(a5);
    if (v11 >= a3 || v12 >= a4)
    {
LABEL_12:
      *a6 = 0;
      v15 = a5;
      return v15 | (v8 << 32);
    }

    if (*(a1 + v12 * a3 + v11) != a7)
    {
      break;
    }

    v14 = *(a2 + 8 * v11);
    if (!*(v14 + 4 * v12))
    {
      *(v14 + 4 * v12) = -1;
    }

    ++v7;
    if (!--v9)
    {
      goto LABEL_12;
    }
  }

  v8 = v12;
  v15 = v11;
  *a6 = (v10 + 4 - ((v10 + 4 + (((v10 + 4) >> 12) & 7)) & 0xF8));
  return v15 | (v8 << 32);
}

void RectangleFinder::TraceSingleContour(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, unint64_t *a9@<X8>)
{
  v17 = HIDWORD(a5);
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  if ((a6 - 1) >= 2)
  {
    v18 = 7;
  }

  else
  {
    v18 = 3;
  }

  v41 = v18;
  NextContourPixelPosition = RectangleFinder::FindNextContourPixelPosition(a1, a2, a3, a4, a5, &v41, a8);
  v20 = NextContourPixelPosition;
  v40 = NextContourPixelPosition;
  if (NextContourPixelPosition == a5 && HIDWORD(NextContourPixelPosition) == v17)
  {
    *(*(a2 + 8 * a5) + 4 * (a5 >> 32)) = a7;
    std::vector<PixelPosition>::push_back[abi:ne200100](a9, &v40);
  }

  else
  {
    v38 = HIDWORD(NextContourPixelPosition);
    v36 = a6;
    *(*(a2 + 8 * NextContourPixelPosition) + 4 * (NextContourPixelPosition >> 32)) = a7;
    v21 = (v41 + 2) & 7;
    if (v41 + 2 <= 0)
    {
      v21 = -(-(v41 + 2) & 7);
    }

    v41 = v21;
    v22 = RectangleFinder::FindNextContourPixelPosition(a1, a2, a3, a4, NextContourPixelPosition, &v41, a8);
    v39 = v22;
    v23 = v22;
    if (v22 < a3)
    {
      v24 = 0;
      do
      {
        if (v22 >> 32 >= a4)
        {
          break;
        }

        *(*(a2 + 8 * v23) + 4 * (v22 >> 32)) = a7;
        std::vector<PixelPosition>::push_back[abi:ne200100](a9, &v39);
        if (v24)
        {
          v25 = HIDWORD(v39);
          if (v39 == v20 && HIDWORD(v39) == v38)
          {
            break;
          }
        }

        else
        {
          v25 = HIDWORD(v39);
        }

        v24 = v39 == a5 && v25 == v17;
        v28 = (v41 + 2) & 7;
        if (v41 + 2 <= 0)
        {
          v28 = -(-(v41 + 2) & 7);
        }

        v41 = v28;
        v22 = RectangleFinder::FindNextContourPixelPosition(a1, a2, a3, a4, v39, &v41, a8);
        v39 = v22;
        v23 = v22;
      }

      while (v22 < a3);
    }

    if (v36)
    {
      v29 = *a9;
      v30 = a9[1];
      v31 = (v30 - 8);
      if (*a9 != v30 && v31 > v29)
      {
        v33 = v29 + 8;
        do
        {
          v34 = *(v33 - 8);
          *(v33 - 8) = *v31;
          *v31-- = v34;
          v35 = v33 >= v31;
          v33 += 8;
        }

        while (!v35);
      }
    }
  }
}

void sub_1B4187BF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PixelPosition>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void RectangleFinder::TraceAllContours(const vImage_Buffer *a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v73 = 0uLL;
  v74 = 0;
  height = a1->height;
  width = a1->width;
  data = a1->data;
  v7 = malloc_type_calloc(width, 8uLL, 0x10040436913F5uLL);
  v8 = v7;
  v50 = width;
  if (width)
  {
    v9 = width;
    v10 = v7;
    do
    {
      *v10++ = malloc_type_calloc(height, 4uLL, 0x100004052888210uLL);
      --v9;
    }

    while (v9);
    v11 = data;
    v12 = width;
    do
    {
      *v11 = a2;
      v11[(height - 1) * width] = a2;
      ++v11;
      --v12;
    }

    while (v12);
  }

  v48 = a3;
  if (height >= 2)
  {
    v13 = height - 1;
    v14 = &data[width];
    do
    {
      *v14 = a2;
      *(v14 - 1) = a2;
      v14 += width;
      --v13;
    }

    while (v13);
  }

  v70 = 0;
  v71 = 0;
  v72 = 0;
  v52 = height - 1;
  if (height - 1 >= 2)
  {
    v15 = 0;
    v51 = width - 1;
    v16 = width - 2;
    v17 = (v8 + 1);
    v49 = data + 1;
    v18 = &data[width + 1];
    v19 = 1;
    v55 = 2;
    v60 = 0x100000001;
    v59 = 1;
    v53 = width - 2;
    while (1)
    {
      v54 = v15;
      if (v51 >= 2)
      {
        break;
      }

LABEL_48:
      ++v19;
      ++v55;
      v15 = v54 + 1;
      v60 += 0x100000000;
      v18 += width;
      if (v19 == v52)
      {
        goto LABEL_49;
      }
    }

    v20 = 0;
    v21 = 0;
    v22 = &v49[width * v55];
    v56 = &v49[width * v15];
    v58 = v22;
    while (1)
    {
      if (v18[v20] != a2)
      {
        v23 = *&v17[8 * v20];
        if (*(v23 + 4 * v19))
        {
          v24 = 0;
          v25 = 2;
        }

        else if (v56[v20] == a2)
        {
          *(v23 + 4 * v19) = v59;
          RectangleFinder::TraceSingleContour(data, v8, width, height, v60 + v20, 0, v59, a2, v68);
          if (v73)
          {
            *(&v73 + 1) = v73;
            operator delete(v73);
          }

          v26 = height;
          v73 = *v68;
          v74 = v69;
          std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](&v75, &v73);
          v27 = v71;
          if (v71 >= v72)
          {
            v29 = v70;
            v30 = v71 - v70;
            v31 = (v71 - v70) >> 2;
            v32 = v31 + 1;
            if ((v31 + 1) >> 62)
            {
              std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
            }

            v33 = v72 - v70;
            if ((v72 - v70) >> 1 > v32)
            {
              v32 = v33 >> 1;
            }

            v34 = v33 >= 0x7FFFFFFFFFFFFFFCLL;
            v35 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v34)
            {
              v35 = v32;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v70, v35);
            }

            *(4 * v31) = (*(&v73 + 1) - v73) >> 3;
            v28 = 4 * v31 + 4;
            memcpy(0, v29, v30);
            v36 = v70;
            v70 = 0;
            v71 = v28;
            v72 = 0;
            if (v36)
            {
              operator delete(v36);
            }

            width = v50;
            v17 = (v8 + 1);
          }

          else
          {
            *v71 = (*(&v73 + 1) - v73) >> 3;
            v28 = (v27 + 4);
          }

          v22 = v58;
          v71 = v28;
          ++v59;
          v23 = *&v17[8 * v20];
          if (*(v23 + 4 * v19))
          {
            v24 = 0;
            v25 = 2;
            height = v26;
          }

          else
          {
            height = v26;
            if (v56[v20] == a2)
            {
              v16 = v53;
LABEL_46:
              v40 = *(*(v8 + (v21 >> 29)) + 4 * v19);
              *(v23 + 4 * v19) = v40;
              ++v70[v40 - 1];
              goto LABEL_47;
            }

            v25 = 1;
            v24 = 1;
          }

          v16 = v53;
        }

        else
        {
          v25 = 1;
          v24 = 1;
        }

        if (v22[v20] == a2)
        {
          v37 = (v23 + 4 * v19);
          if (v24)
          {
            v38 = *(*(v8 + (v21 >> 29)) + 4 * v19);
            *v37 = v38;
            ++v70[v38 - 1];
          }

          if (v37[1] != -1)
          {
            v39 = *v37;
            RectangleFinder::TraceSingleContour(data, v8, width, height, v60 + v20, v25, *v37, a2, v68);
            if (v73)
            {
              *(&v73 + 1) = v73;
              operator delete(v73);
            }

            v73 = *v68;
            v74 = v69;
            std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](&v75, &v73);
            v70[v39 - 1] += (*(&v73 + 1) - v73) >> 3;
            v17 = (v8 + 1);
            v22 = v58;
          }

          goto LABEL_47;
        }

        if (v24)
        {
          goto LABEL_46;
        }
      }

LABEL_47:
      v21 += 0x100000000;
      if (v16 == ++v20)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_49:
  *v48 = 0;
  v48[1] = 0;
  v48[2] = 0;
  v41 = v75;
  if (v76 != v75)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      v68[0] = 0;
      v68[1] = 0;
      v69 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(&v65, *(v41 + v42), *(v41 + v42 + 8), (*(v41 + v42 + 8) - *(v41 + v42)) >> 3);
      v44 = v65;
      v45 = v66 - v65;
      if (v45 >= 3)
      {
        if (v70[*(v8[v65->i32[0]] + 4 * v65->i32[1]) - 1] < 100)
        {
          goto LABEL_63;
        }

        v62 = 0;
        v63 = 0;
        __p = 0;
        std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(&__p, v65, v66, v45);
        RectangleFinder::generateConvexHull(&__p, v64);
        if (__p)
        {
          v62 = __p;
          operator delete(__p);
        }

        PolygonApproximateContourC(&v65, v68, 30.0);
        if ((v68[1] - v68[0]) == 40)
        {
          std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](v48, v68);
        }

        PolygonApproximateContourC(v64, v68, 30.0);
        if ((v68[1] - v68[0]) == 40)
        {
          std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](v48, v68);
        }

        if (v64[0])
        {
          v64[1] = v64[0];
          operator delete(v64[0]);
        }

        v44 = v65;
      }

      if (v44)
      {
LABEL_63:
        v66 = v44;
        operator delete(v44);
      }

      if (v68[0])
      {
        v68[1] = v68[0];
        operator delete(v68[0]);
      }

      ++v43;
      v41 = v75;
      v42 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 3) > v43);
  }

  if (width)
  {
    v46 = v8;
    do
    {
      v47 = *v46++;
      free(v47);
      --width;
    }

    while (width);
  }

  free(v8);
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v73)
  {
    *(&v73 + 1) = v73;
    operator delete(v73);
  }

  *&v73 = &v75;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&v73);
}

void sub_1B4188340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  v36 = *(v34 - 144);
  if (v36)
  {
    *(v34 - 136) = v36;
    operator delete(v36);
  }

  *(v34 - 144) = v34 - 112;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100]((v34 - 144));
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<PixelPosition>>::__emplace_back_slow_path<std::vector<PixelPosition> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<PixelPosition>>::__construct_one_at_end[abi:ne200100]<std::vector<PixelPosition> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

void RectangleFinder::generateConvexHull(int32x2_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = v4 - v3;
  v7 = v4 - v3;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  __p = 0;
  v59 = 0;
  v60 = 0;
  if (v7 >= 4)
  {
    v9 = 126 - 2 * __clz(v7);
    if (v4 == v3)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *,false>(v3, v4, &v61, v10, 1);
    std::vector<PixelPosition>::push_back[abi:ne200100](a2, *a1);
    std::vector<PixelPosition>::push_back[abi:ne200100](a2, &(*a1)[1]);
    std::vector<PixelPosition>::push_back[abi:ne200100](&__p, (&(*a1)[-1] + v6));
    std::vector<PixelPosition>::push_back[abi:ne200100](&__p, (&(*a1)[-2] + v6));
    for (i = 2; i != v7; ++i)
    {
      std::vector<PixelPosition>::push_back[abi:ne200100](a2, &(*a1)[i]);
      v12 = *a2;
      v13 = a2[1];
      v14 = &v13[-*a2];
      if (v14 >= 0x11)
      {
        v15 = (v12 + v14);
        v16 = *(v15 - 2);
        v17 = *(v15 - 1);
        for (j = v13 - 8; ; j -= 8)
        {
          v20 = *(v15 - 4);
          v19 = *(v15 - 3);
          v22 = *(v15 - 6);
          v21 = *(v15 - 5);
          v23 = (v17 - v21) * (v20 - v22) + (v19 - v21) * (v22 - v16);
          if (v23)
          {
            if (v23 > 0)
            {
              break;
            }
          }

          else
          {
            if (v19 < v21)
            {
              v21 = v19;
            }

            if (v21 < v17)
            {
              break;
            }
          }

          if (j != v13)
          {
            memmove(j - 8, j, 8uLL);
            v12 = *a2;
          }

          a2[1] = j;
          if (&j[-v12] < 0x11)
          {
            break;
          }

          v13 = j;
          v15 = v13;
        }
      }
    }

    if ((v6 >> 3) <= 2)
    {
      v26 = __p;
      v25 = v59;
    }

    else
    {
      v24 = (v7 - 3);
      do
      {
        std::vector<PixelPosition>::push_back[abi:ne200100](&__p, &(*a1)[v24]);
        v26 = __p;
        v25 = v59;
        if ((v59 - __p) >= 0x11)
        {
          v27 = v59;
          v28 = *(v59 - 2);
          v29 = *(v59 - 1);
          for (k = v59 - 8; ; k -= 8)
          {
            v32 = *(v27 - 4);
            v31 = *(v27 - 3);
            v34 = *(v27 - 6);
            v33 = *(v27 - 5);
            v35 = (v29 - v33) * (v32 - v34) + (v31 - v33) * (v34 - v28);
            if (v35)
            {
              if (v35 > 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if (v31 < v33)
              {
                v33 = v31;
              }

              if (v33 < v29)
              {
                goto LABEL_34;
              }
            }

            if (k != v25)
            {
              memmove(k - 8, k, 8uLL);
              v26 = __p;
            }

            v59 = k;
            if ((k - v26) < 0x11)
            {
              break;
            }

            v25 = k;
            v27 = v25;
          }

          v25 = k;
        }

LABEL_34:
        ;
      }

      while (v24-- > 0);
    }

    v37 = v26;
    v38 = v25 - (v26 + 8);
    if (v25 != v26 + 8)
    {
      memmove(v26, v26 + 8, v25 - (v26 + 8));
      v37 = __p;
    }

    v39 = &v26[v38];
    v59 = &v26[v38];
    v40 = &v26[v38] - v37;
    if (v40 >> 3 >= 1)
    {
      v42 = a2[1];
      v41 = a2[2];
      if (v41 - v42 >= v40)
      {
        if (v37 != v39)
        {
          memmove(a2[1], v37, v40);
        }

        a2[1] = &v42[v40];
      }

      else
      {
        v43 = *a2;
        v44 = &v42[-*a2];
        v45 = (v40 >> 3) + (v44 >> 3);
        if (v45 >> 61)
        {
          std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
        }

        v46 = v41 - v43;
        v47 = (v41 - v43) >> 2;
        if (v47 > v45)
        {
          v45 = v47;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF8)
        {
          v48 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v45;
        }

        if (v48)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2, v48);
        }

        v49 = 8 * (v44 >> 3);
        v50 = (v49 + v40);
        v51 = v49;
        do
        {
          v52 = *v37;
          v37 += 8;
          *v51++ = v52;
          v40 -= 8;
        }

        while (v40);
        memcpy(v50, v42, a2[1] - v42);
        v53 = *a2;
        v54 = &v50[a2[1] - v42];
        a2[1] = v42;
        v55 = v42 - v53;
        v56 = (v49 - (v42 - v53));
        memcpy(v56, v53, v55);
        v57 = *a2;
        *a2 = v56;
        a2[1] = v54;
        a2[2] = 0;
        if (v57)
        {
          operator delete(v57);
        }
      }
    }

    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }
  }
}