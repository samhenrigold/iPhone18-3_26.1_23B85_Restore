uint64_t sub_2531C75B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2531C75FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2531C80E8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2531C7668(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2531C7668(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2531DAF24();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2531DA8E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2531C7830(v7, v8, a1, v4);
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
    return sub_2531C7760(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2531C7760(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_2531DB144(), (result & 1) == 0))
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

uint64_t sub_2531C7830(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
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
      result = sub_2531C80C0(v8);
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
        sub_2531C7E0C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x277D84F90];
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
        result = sub_2531DB144();
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
            result = sub_2531DB144();
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
      result = sub_25316A1C4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_25316A1C4((v39 > 1), v40 + 1, 1, v8);
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
        sub_2531C7E0C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2531C80C0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2531C8034(v44);
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
    if (v37 || (result = sub_2531DB144(), (result & 1) == 0))
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

uint64_t sub_2531C7E0C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_2531DB144() & 1) != 0)
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
      if (!v21 && (sub_2531DB144() & 1) != 0)
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

uint64_t sub_2531C8034(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2531C80C0(v3);
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

uint64_t NWConnectionReceived.data.getter()
{
  v1 = *v0;
  sub_2531AC91C(*v0, *(v0 + 8));
  return v1;
}

uint64_t NWConnectionReceived.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2531AC968(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t NWConnectionReceived.contentContext.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t NWConnectionReceived.init(data:contentContext:isComplete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = sub_2531AC968(0, 0xF000000000000000);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t static NWAsyncConnection.wrapping<A>(connection:on:logger:requestID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2531C8294, 0, 0);
}

uint64_t sub_2531C8294()
{
  v1 = v0;
  v2 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DF50, &qword_2531E8A58);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  v14 = *(v0 + 56);
  swift_defaultActor_initialize();
  *(v3 + 112) = sub_2531B5608(MEMORY[0x277D84F90]);
  *(v3 + 120) = 0;
  *(v3 + 128) = -1;
  v4 = swift_task_alloc();
  v1[11] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v14;

  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_2531C83E0;
  v8 = v1[2];
  v7 = v1 + 2;
  v6 = v8;
  v9 = v7[3];
  v10 = v7[4];
  v11 = v7[1];
  v12 = v7[2];

  return sub_2531C86F8(v6, v11, v12, v9, v10, v3, v7, &unk_2531E8A68);
}

uint64_t sub_2531C83E0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2531C857C;
  }

  else
  {
    v2 = sub_2531C8510;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2531C8510()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531C857C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531C85E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v11 = (a5 + *a5);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_253170628;

  return v11(a1, a2, a3);
}

uint64_t sub_2531C86F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v27;
  v8[13] = v28;
  v8[10] = a8;
  v8[11] = v26;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  if (v27 == 1)
  {
    TupleTypeMetadata = *(v28 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v10 = swift_task_alloc();
    if (v27)
    {
      v11 = 0;
      v12 = v28 & 0xFFFFFFFFFFFFFFFELL;
      if (v27 < 4)
      {
        goto LABEL_9;
      }

      if (v10 - v12 < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = (v10 + 16);
      v15 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v27)
      {
LABEL_9:
        v17 = v27 - v11;
        v18 = 8 * v11;
        v19 = (v10 + 8 * v11);
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19++ = v21;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v8[14] = TupleTypeMetadata;
  v8[15] = *(TupleTypeMetadata - 8);
  v8[16] = swift_task_alloc();
  v8[17] = type metadata accessor for NWAsyncConnection.Inbound(0);
  v8[18] = swift_task_alloc();
  v22 = sub_2531DA204();
  v8[19] = v22;
  v8[20] = *(v22 - 8);
  v8[21] = swift_task_alloc();
  v23 = sub_2531DA274();
  v8[22] = v23;
  v8[23] = *(v23 - 8);
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531C897C, 0, 0);
}

uint64_t sub_2531C897C()
{
  v35 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[7];
  v5 = v0[8];
  v7 = *(v0[23] + 16);
  v7(v1, v0[6], v0[22]);
  (*(v4 + 16))(v2, v6, v3);
  type metadata accessor for NWConnectionWrapper(0);
  swift_allocObject();

  v9 = sub_2531CFC84(v8, v5, v1, v2);
  v0[25] = v9;

  v0[26] = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;

  v10 = sub_2531DA254();
  v11 = sub_2531DAA74();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_253196608(*(v9 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v9 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v34);
    _os_log_impl(&dword_253166000, v10, v11, "%s start", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x259BFFA80](v13, -1, -1);
    MEMORY[0x259BFFA80](v12, -1, -1);
  }

  v14 = v0[22];
  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[12];
  v18 = v0[6];
  sub_2531DA364();
  v7(v15 + *(v16 + 20), v18, v14);
  v19 = *(v16 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DF98, &qword_2531E8D90);
  v20 = swift_allocObject();
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  *(v15 + v19) = v20;
  *v15 = v9;
  v0[2] = v9;
  v21 = swift_task_alloc();
  v0[27] = v21;
  if (v17)
  {
    v22 = 0;
    v23 = v0[13] & 0xFFFFFFFFFFFFFFFELL;
    v24 = 32;
    do
    {
      v27 = v0[12];
      if (v27 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(v0[14] + v24);
      }

      v26 = v0[16] + v25;
      (*(*(*(v23 + 8 * v22) - 8) + 16))(v26, *(v0[9] + 8 * v22));
      *(v21 + 8 * v22++) = v26;
      v24 += 16;
    }

    while (v22 != v27);
  }

  v28 = v0[10];

  v33 = (v28 + *v28);
  v29 = swift_task_alloc();
  v0[28] = v29;
  *v29 = v0;
  v29[1] = sub_2531C8D28;
  v30 = v0[18];
  v31 = v0[3];

  return (v33)(v31, v30, v0 + 2, v21);
}

uint64_t sub_2531C8D28()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_2531C8FF4;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v3 = sub_2531C8E54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2531C8E54()
{
  v9 = v0;
  sub_2531CB5BC(v0[18]);

  v1 = sub_2531DA254();
  v2 = sub_2531DAA94();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[25];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_253196608(*(v3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v8);
    _os_log_impl(&dword_253166000, v1, v2, "%s cancel", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x259BFFA80](v5, -1, -1);
    MEMORY[0x259BFFA80](v4, -1, -1);
  }

  sub_2531DA374();

  v6 = v0[1];

  return v6();
}

uint64_t sub_2531C8FF4()
{
  v12 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_2531CB5BC(v0[18]);
  (*(v2 + 8))(v1, v3);

  v4 = sub_2531DA254();
  v5 = sub_2531DAA94();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_253196608(*(v6 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v6 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v11);
    _os_log_impl(&dword_253166000, v4, v5, "%s cancel", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x259BFFA80](v8, -1, -1);
    MEMORY[0x259BFFA80](v7, -1, -1);
  }

  sub_2531DA374();

  v9 = v0[1];

  return v9();
}

uint64_t NWAsyncConnection.connect<A>(parameters:endpoint:activity:on:logger:requestID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v12;
  v8[11] = v13;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_2531DA2B4();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531C928C, 0, 0);
}

uint64_t sub_2531C928C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 32), *(v0 + 96));
  sub_2531DA394();
  swift_allocObject();

  v3 = sub_2531DA334();
  *(v0 + 120) = v3;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v10;
  *(v4 + 48) = v9;
  *(v4 + 64) = v2;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_2531C93D4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return sub_2531C96BC(v7, v6, &unk_2531E8A88, v4);
}

uint64_t sub_2531C93D4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2531C955C;
  }

  else
  {

    v2 = sub_2531C94F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2531C94F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531C955C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531C95D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_253170628;

  return static NWAsyncConnection.wrapping<A>(connection:on:logger:requestID:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_2531C96BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_2531DA294();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531C9784, 0, 0);
}

uint64_t sub_2531C9784()
{
  v1 = v0[4];
  sub_2531DA2F4();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_2531C9884;
  v3 = v0[2];

  return v5(v3);
}

uint64_t sub_2531C9884()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2531C9A58;
  }

  else
  {
    v2 = sub_2531C9998;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2531C9998()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v2 + 104))(v1, *MEMORY[0x277CD8AC8], v3);
  sub_2531DA2A4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2531C9A58()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v2 + 104))(v1, *MEMORY[0x277CD8AC0], v3);
  sub_2531DA2A4();
  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t NWAsyncConnection.connect<A>(parameters:endpoint:on:logger:requestID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = sub_2531DA2B4();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531C9C00, 0, 0);
}

uint64_t sub_2531C9C00()
{
  (*(v0[12] + 16))(v0[13], v0[4], v0[11]);
  sub_2531DA394();
  swift_allocObject();

  v1 = sub_2531DA334();
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_2531C9D04;
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[2];

  return static NWAsyncConnection.wrapping<A>(connection:on:logger:requestID:_:)(v9, v1, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_2531C9D04()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2531C9E84;
  }

  else
  {
    v2 = sub_2531C9E18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2531C9E18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531C9E84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NWAsyncConnection.Outbound.write(content:contentContext:isComplete:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v6;
  return MEMORY[0x2822009F8](sub_2531C9F1C, 0, 0);
}

uint64_t sub_2531C9F1C()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2531CA034;
  v6 = *(v0 + 40);
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v5, &unk_2531E8AA8, v4, sub_2531CAE88, v6, 0, 0, v7);
}

uint64_t sub_2531CA034()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2531867B8;
  }

  else
  {

    v2 = sub_2531CA150;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t NWAsyncConnection.Inbound.makeAsyncIterator()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v4 = *&v1[*(v3 + 24)];
  os_unfair_lock_lock((v4 + 20));
  if (*(v4 + 16) == 1)
  {
    result = sub_2531DAD34();
    __break(1u);
  }

  else
  {
    *(v4 + 16) = 1;
    os_unfair_lock_unlock((v4 + 20));
    v5 = *v1;
    v6 = *(v3 + 20);
    v7 = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
    v8 = v7[5];
    v9 = sub_2531DA274();
    (*(*(v9 - 8) + 16))(&a1[v8], &v1[v6], v9);
    *&a1[v7[6]] = 0;
    a1[v7[7]] = 0;
    *a1 = v5;
  }

  return result;
}

uint64_t NWAsyncConnection.Inbound.AsyncIterator.next()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_2531DA274();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531CA36C, 0, 0);
}

uint64_t sub_2531CA36C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
  v6 = *(v5 + 20);
  v27 = *(v3 + 16);
  v28 = v4;
  v27(v1, v4 + v6, v2);
  v7 = sub_2531DA254();
  v8 = sub_2531DAA74();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_253166000, v7, v8, "Waiting for data on NW connection", v9, 2u);
    MEMORY[0x259BFFA80](v9, -1, -1);
  }

  v10 = *(v0 + 88);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);

  v14 = *(v12 + 8);
  v14(v10, v11);
  v15 = *(v5 + 28);
  *(v0 + 44) = v15;
  if (*(v13 + v15) == 1)
  {
    v27(*(v0 + 80), v28 + v6, *(v0 + 64));
    v16 = sub_2531DA254();
    v17 = sub_2531DAA84();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_253166000, v16, v17, "Continuing iteration on NW connection that previously completed", v18, 2u);
      MEMORY[0x259BFFA80](v18, -1, -1);
    }

    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = *(v0 + 48);

    v14(v19, v20);
    *v21 = 0;
    v21[1] = 0;
    v22 = *(v0 + 48);
    *(v22 + 16) = 1;
    *(v22 + 24) = 0;

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = **(v0 + 56);
    v26 = swift_task_alloc();
    *(v0 + 96) = v26;
    *v26 = v0;
    v26[1] = sub_2531CA664;

    return MEMORY[0x282200830](v0 + 16, &unk_2531E8AB8, v25, sub_2531CAFA4, v25, 0, 0, &type metadata for NWConnectionReceived);
  }
}

uint64_t sub_2531CA664()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2531CA81C;
  }

  else
  {
    v2 = sub_2531CA778;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2531CA778()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (v4 == 1)
  {
    *(*(v0 + 56) + *(v0 + 44)) = 1;
  }

  **(v0 + 48) = v2;
  v5 = *(v0 + 48);
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2531CA81C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531CA888(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_253170160;

  return NWAsyncConnection.Inbound.AsyncIterator.next()(a1);
}

uint64_t sub_2531CA920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_2531CA9C0;

  return NWAsyncConnection.Inbound.AsyncIterator.next()(a1);
}

uint64_t sub_2531CA9C0()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    if (v2[3])
    {
      swift_getObjectType();
      v3 = sub_2531DA944();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x2822009F8](sub_2531CAB30, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_2531CAB30()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_2531CABD0@<X0>(char *a1@<X8>)
{
  NWAsyncConnection.Inbound.makeAsyncIterator()(a1);

  return sub_2531CB5BC(v1);
}

uint64_t sub_2531CABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 24);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_253170160;

  return sub_2531C85E8(a1, a2, a3, a4, v10);
}

uint64_t sub_2531CACE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_253170628;

  return sub_2531C95D4(a1, v5, v6, v7, v8, v9, v10, v4);
}

uint64_t sub_2531CADC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_253170628;

  return sub_2531CD4C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2531CAED0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2531CAF08(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_253170628;

  return sub_2531CE2C4(a1, v1);
}

uint64_t sub_2531CB054(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2531CB09C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2531CB0F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void sub_2531CB250(uint64_t a1)
{
  type metadata accessor for NWConnectionWrapper(319);
  if (v1 <= 0x3F)
  {
    sub_2531DA274();
    if (v2 <= 0x3F)
    {
      sub_2531CB2EC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2531CB2EC()
{
  if (!qword_27F58DF78)
  {
    v0 = sub_2531DA244();
    if (!v1)
    {
      atomic_store(v0, &qword_27F58DF78);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2531DA274();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2531DA274();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2531CB4B4(uint64_t a1)
{
  type metadata accessor for NWConnectionWrapper(319);
  if (v1 <= 0x3F)
  {
    sub_2531DA274();
    if (v2 <= 0x3F)
    {
      sub_2531CB558(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2531CB558(uint64_t a1)
{
  if (!qword_27F58DF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D758, &qword_2531E4FB0);
    v1 = sub_2531DAAF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F58DF90);
    }
  }
}

uint64_t sub_2531CB5BC(uint64_t a1)
{
  v2 = type metadata accessor for NWAsyncConnection.Inbound(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2531CB618(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - v5;
  v7 = sub_2531DA204();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D890, &unk_2531E8E90);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  swift_beginAccess();
  if (*(v1 + 128) == 255)
  {
    v62 = v10;
    swift_beginAccess();
    v53 = v1;
    v17 = *(v1 + 112);
    v18 = *(v17 + 64);
    v55 = v17 + 64;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v8;
    v22 = v20 & v18;
    v54 = (v19 + 63) >> 6;
    v58 = v4 + 16;
    v59 = v21 + 16;
    v57 = v21 + 32;
    v23 = (v4 + 32);
    v66 = v4;
    v67 = v17;
    v63 = v21;
    v68 = (v21 + 8);
    v69 = (v4 + 8);

    v24 = 0;
    v25 = v7;
    v70 = v7;
    v64 = v6;
    v65 = v3;
    v26 = v14;
    v27 = v23;
    v60 = v16;
    v61 = v26;
    v56 = v23;
    v71 = a1;
    if (v22)
    {
      while (1)
      {
        v28 = v24;
LABEL_13:
        v31 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v32 = v31 | (v28 << 6);
        v33 = v67;
        v35 = v62;
        v34 = v63;
        (*(v63 + 16))(v62, *(v67 + 48) + *(v63 + 72) * v32, v25);
        v36 = *(v33 + 56);
        v37 = v25;
        v3 = v65;
        v38 = v66;
        v6 = v64;
        (*(v66 + 16))(v64, v36 + *(v66 + 72) * v32, v65);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D898, &qword_2531E50A0);
        v40 = *(v39 + 48);
        v41 = *(v34 + 32);
        v26 = v61;
        v41(v61, v35, v37);
        v27 = v56;
        (*(v38 + 32))(v26 + v40, v6, v3);
        (*(*(v39 - 8) + 56))(v26, 0, 1, v39);
        v30 = v28;
        v16 = v60;
LABEL_14:
        sub_2531D0274(v26, v16, &qword_27F58D890, &unk_2531E8E90);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D898, &qword_2531E50A0);
        v43 = (*(*(v42 - 8) + 48))(v16, 1, v42);
        v44 = v71;
        if (v43 == 1)
        {
          break;
        }

        (*v27)(v6, &v16[*(v42 + 48)], v3);
        v72 = v44;
        v45 = v44;
        sub_2531DA964();
        (*v69)(v6, v3);
        v25 = v70;
        (*v68)(v16, v70);
        v24 = v30;
        if (!v22)
        {
          goto LABEL_6;
        }
      }

      v47 = sub_2531B5608(MEMORY[0x277D84F90]);
      v48 = v53;
      *(v53 + 112) = v47;

      v49 = *(v48 + 120);
      *(v48 + 120) = v44;
      v50 = *(v48 + 128);
      *(v48 + 128) = 1;
      v51 = v44;
      sub_2531886A8(v49, v50);
    }

    else
    {
LABEL_6:
      if (v54 <= v24 + 1)
      {
        v29 = v24 + 1;
      }

      else
      {
        v29 = v54;
      }

      v30 = v29 - 1;
      while (1)
      {
        v28 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v28 >= v54)
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D898, &qword_2531E50A0);
          (*(*(v46 - 8) + 56))(v26, 1, 1, v46);
          v22 = 0;
          goto LABEL_14;
        }

        v22 = *(v55 + 8 * v28);
        ++v24;
        if (v22)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_2531CBBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2531CBBE8, a4, 0);
}

uint64_t sub_2531CBBE8()
{
  sub_2531CB618(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_2531CBC48(uint64_t a1)
{
  v2 = type metadata accessor for NWConnectionWrapper.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v163 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v164 = (&v160 - v5);
  v6 = sub_2531DA4F4();
  v7 = *(v6 - 8);
  v171 = v6;
  v172 = v7;
  MEMORY[0x28223BE20](v6);
  v165 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E030, &qword_2531E8E58);
  MEMORY[0x28223BE20](v169);
  v173 = &v160 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E038, &qword_2531E8E60);
  MEMORY[0x28223BE20](v10 - 8);
  v168 = &v160 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E040, &unk_2531E8E68);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v166 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v170 = &v160 - v16;
  MEMORY[0x28223BE20](v15);
  v175 = &v160 - v17;
  v18 = sub_2531DA524();
  v178 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v160 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v167 = &v160 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v174 = (&v160 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v160 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v160 - v28;
  v30 = sub_2531DA354();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v161 = &v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v162 = &v160 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v160 - v36;
  v38 = *(v31 + 16);
  v38(&v160 - v36, a1, v30);
  v39 = (*(v31 + 88))(v37, v30);
  v40 = *MEMORY[0x277CD8DE8];
  v176 = v18;
  if (v39 == v40)
  {
    (*(v31 + 96))(v37, v30);
    v41 = v178;
    (*(v178 + 32))(v29, v37, v18);
    v42 = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;
    v43 = *(v41 + 16);
    v43(v27, v29, v18);
    v44 = v177;

    v167 = v42;
    v45 = sub_2531DA254();
    v46 = sub_2531DAA84();

    v47 = v29;
    if (os_log_type_enabled(v45, v46))
    {
      v48 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v179[0] = v174;
      *v48 = 136315394;
      *(v48 + 4) = sub_253196608(*(v44 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v44 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v179);
      *(v48 + 12) = 2112;
      sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      v43(v49, v27, v18);
      v50 = _swift_stdlib_bridgeErrorToNSError();
      v51 = *(v178 + 8);
      v51(v27, v18);
      *(v48 + 14) = v50;
      v52 = v164;
      *v164 = v50;
      _os_log_impl(&dword_253166000, v45, v46, "%s state changed to waiting error=%@", v48, 0x16u);
      sub_2531AC3F8(v52, &qword_27F58D2E8, &unk_2531E8370);
      MEMORY[0x259BFFA80](v52, -1, -1);
      v53 = v174;
      __swift_destroy_boxed_opaque_existential_1(v174);
      MEMORY[0x259BFFA80](v53, -1, -1);
      MEMORY[0x259BFFA80](v48, -1, -1);
    }

    else
    {

      v51 = *(v178 + 8);
      v51(v27, v18);
    }

    v71 = (v44 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((v44 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock));
    v72 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8) + 28);
    v174 = v47;
    sub_2531CF174(v72, v47, v44, v179);
    os_unfair_lock_unlock(v71);
    v73 = v175;
    if (LOBYTE(v179[0]) != 1)
    {
      goto LABEL_39;
    }

    v74 = v168;
    v164 = *(v44 + 16);
    sub_2531DA2D4();
    v75 = sub_2531DA514();
    v76 = *(v75 - 8);
    if ((*(v76 + 48))(v74, 1, v75) == 1)
    {
      sub_2531AC3F8(v74, &qword_27F58E038, &qword_2531E8E60);
      v77 = 1;
    }

    else
    {
      sub_2531DA504();
      (*(v76 + 8))(v74, v75);
      v77 = 0;
    }

    v89 = v172;
    v88 = v173;
    v90 = *(v172 + 56);
    v91 = v171;
    v90(v73, v77, 1, v171);
    v92 = v170;
    (*(v89 + 104))(v170, *MEMORY[0x277CD8F68], v91);
    v90(v92, 0, 1, v91);
    v93 = *(v169 + 48);
    sub_2531B5834(v73, v88, &qword_27F58E040, &unk_2531E8E68);
    v94 = v91;
    sub_2531B5834(v92, v88 + v93, &qword_27F58E040, &unk_2531E8E68);
    v95 = *(v89 + 48);
    if (v95(v88, 1, v91) == 1)
    {
      sub_2531AC3F8(v92, &qword_27F58E040, &unk_2531E8E68);
      v96 = v173;
      sub_2531AC3F8(v73, &qword_27F58E040, &unk_2531E8E68);
      if (v95(v96 + v93, 1, v91) == 1)
      {
        sub_2531AC3F8(v96, &qword_27F58E040, &unk_2531E8E68);
        v97 = v177;
LABEL_36:

        v117 = sub_2531DA254();
        v118 = sub_2531DAA94();

        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v179[0] = v120;
          *v119 = 136315138;
          *(v119 + 4) = sub_253196608(*(v97 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v97 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v179);
          _os_log_impl(&dword_253166000, v117, v118, "%s cancel", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v120);
          MEMORY[0x259BFFA80](v120, -1, -1);
          MEMORY[0x259BFFA80](v119, -1, -1);
        }

        sub_2531DA374();
        sub_2531DA324();
        goto LABEL_39;
      }
    }

    else
    {
      v99 = v166;
      sub_2531B5834(v88, v166, &qword_27F58E040, &unk_2531E8E68);
      if (v95(v88 + v93, 1, v91) != 1)
      {
        v112 = v172;
        v113 = v88 + v93;
        v114 = v165;
        (*(v172 + 32))(v165, v113, v91);
        sub_2531D022C(&qword_27F58E048, MEMORY[0x277CD8F80], MEMORY[0x277CD8F88]);
        v115 = sub_2531DA6B4();
        v116 = *(v112 + 8);
        v116(v114, v94);
        sub_2531AC3F8(v92, &qword_27F58E040, &unk_2531E8E68);
        sub_2531AC3F8(v73, &qword_27F58E040, &unk_2531E8E68);
        v116(v166, v94);
        sub_2531AC3F8(v88, &qword_27F58E040, &unk_2531E8E68);
        v97 = v177;
        if (v115)
        {
          goto LABEL_36;
        }

LABEL_39:
        v51(v174, v176);
        return;
      }

      sub_2531AC3F8(v92, &qword_27F58E040, &unk_2531E8E68);
      v96 = v173;
      sub_2531AC3F8(v73, &qword_27F58E040, &unk_2531E8E68);
      (*(v172 + 8))(v99, v91);
    }

    sub_2531AC3F8(v96, &qword_27F58E030, &qword_2531E8E58);
    goto LABEL_39;
  }

  if (v39 == *MEMORY[0x277CD8DE0])
  {
    (*(v31 + 96))(v37, v30);
    v54 = v178;
    v55 = v174;
    v56 = v176;
    (*(v178 + 32))(v174, v37, v176);
    v57 = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;
    v58 = *(v54 + 16);
    v59 = v167;
    v58(v167, v55, v56);
    v60 = v177;

    v61 = sub_2531DA254();
    v62 = sub_2531DAA84();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v175 = v57;
      v64 = v63;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v179[0] = v66;
      *v64 = 136315394;
      *(v64 + 4) = sub_253196608(*(v177 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v177 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v179);
      *(v64 + 12) = 2112;
      sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      v58(v67, v59, v176);
      v68 = _swift_stdlib_bridgeErrorToNSError();
      v69 = *(v54 + 8);
      v69(v59, v176);
      *(v64 + 14) = v68;
      *v65 = v68;
      v56 = v176;
      _os_log_impl(&dword_253166000, v61, v62, "%s state changed to failed error=%@", v64, 0x16u);
      sub_2531AC3F8(v65, &qword_27F58D2E8, &unk_2531E8370);
      v70 = v65;
      v60 = v177;
      MEMORY[0x259BFFA80](v70, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x259BFFA80](v66, -1, -1);
      MEMORY[0x259BFFA80](v64, -1, -1);
    }

    else
    {

      v69 = *(v54 + 8);
      v69(v59, v56);
    }

    v84 = sub_2531DA254();
    v85 = sub_2531DAA94();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v179[0] = v87;
      *v86 = 136315138;
      *(v86 + 4) = sub_253196608(*(v60 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v60 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v179);
      _os_log_impl(&dword_253166000, v84, v85, "%s cancel", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x259BFFA80](v87, -1, -1);
      MEMORY[0x259BFFA80](v86, -1, -1);
    }

    sub_2531DA374();
    sub_2531DA324();
    v69(v174, v56);
    return;
  }

  if (v39 == *MEMORY[0x277CD8DD8])
  {
    v78 = v177;

    v79 = sub_2531DA254();
    v80 = sub_2531DAA74();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v179[0] = v82;
      *v81 = 136315138;
      *(v81 + 4) = sub_253196608(*(v78 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v78 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v179);
      v83 = "%s state changed to setup";
LABEL_25:
      _os_log_impl(&dword_253166000, v79, v80, v83, v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x259BFFA80](v82, -1, -1);
      MEMORY[0x259BFFA80](v81, -1, -1);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (v39 == *MEMORY[0x277CD8DF8])
  {
    v98 = v177;

    v79 = sub_2531DA254();
    v80 = sub_2531DAA74();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v179[0] = v82;
      *v81 = 136315138;
      *(v81 + 4) = sub_253196608(*(v98 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v98 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v179);
      v83 = "%s state changed to preparing";
      goto LABEL_25;
    }

LABEL_26:

    return;
  }

  if (v39 != *MEMORY[0x277CD8DD0])
  {
    if (v39 != *MEMORY[0x277CD8DF0])
    {
      v134 = v162;
      v38(v162, a1, v30);
      v135 = v177;

      v136 = sub_2531DA254();
      v137 = sub_2531DAA84();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        LODWORD(v176) = v137;
        v139 = v138;
        v178 = swift_slowAlloc();
        v179[0] = v178;
        *v139 = 136315394;
        *(v139 + 4) = sub_253196608(*(v135 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v135 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v179);
        *(v139 + 12) = 2082;
        v38(v161, v134, v30);
        v140 = sub_2531DA6F4();
        v141 = v134;
        v142 = v140;
        v144 = v143;
        v145 = *(v31 + 8);
        v145(v141, v30);
        v146 = sub_253196608(v142, v144, v179);

        *(v139 + 14) = v146;
        _os_log_impl(&dword_253166000, v136, v176, "%s state change to unexpected state=%{public}s", v139, 0x16u);
        v147 = v178;
        swift_arrayDestroy();
        MEMORY[0x259BFFA80](v147, -1, -1);
        MEMORY[0x259BFFA80](v139, -1, -1);
      }

      else
      {

        v145 = *(v31 + 8);
        v145(v134, v30);
      }

      v145(v37, v30);
      return;
    }

    v121 = v177;

    v122 = sub_2531DA254();
    v123 = sub_2531DAA74();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v179[0] = v125;
      *v124 = 136315138;
      *(v124 + 4) = sub_253196608(*(v121 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v121 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v179);
      _os_log_impl(&dword_253166000, v122, v123, "%s state changed to cancelled", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v125);
      MEMORY[0x259BFFA80](v125, -1, -1);
      MEMORY[0x259BFFA80](v124, -1, -1);
    }

    v126 = v176;
    v127 = v178;
    v128 = (v121 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((v121 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock));
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8);
    v130 = v163;
    sub_2531CFAE4(v128 + *(v129 + 28), v163);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
    v132 = (*(*(v131 - 8) + 48))(v130, 2, v131);
    if (v132)
    {
      if (v132 != 1)
      {
        os_unfair_lock_unlock(v128);
LABEL_56:
        v158 = *(v121 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_readyEvent);
        if (!v158)
        {
          return;
        }

        v159 = sub_2531DA9B4();
        v109 = v164;
        (*(*(v159 - 8) + 56))(v164, 1, 1, v159);
        v110 = swift_allocObject();
        v110[2] = 0;
        v110[3] = 0;
        v110[4] = v158;

        v111 = &unk_2531E5000;
        goto LABEL_58;
      }

      sub_2531DA994();
      sub_2531D022C(&qword_27F58D8A0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v133 = swift_allocError();
      sub_2531DA5F4();
    }

    else
    {
      v148 = *(v127 + 32);
      v149 = v160;
      v148(v160, v130, v126);
      sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v133 = swift_allocError();
      v148(v150, v149, v126);
    }

    os_unfair_lock_unlock(v128);
    if (v133)
    {
      v151 = *(v121 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_readyEvent);
      if (!v151)
      {

        return;
      }

      v152 = sub_2531DA9B4();
      v153 = v164;
      (*(*(v152 - 8) + 56))(v164, 1, 1, v152);
      v154 = swift_allocObject();
      v154[2] = 0;
      v154[3] = 0;
      v154[4] = v151;
      v154[5] = v133;

      v155 = &unk_2531E8E80;
      v156 = v153;
      v157 = v154;
LABEL_59:
      sub_253187030(0, 0, v156, v155, v157);

      return;
    }

    goto LABEL_56;
  }

  v100 = v177;

  v101 = sub_2531DA254();
  v102 = sub_2531DAA74();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v179[0] = v104;
    *v103 = 136315138;
    *(v103 + 4) = sub_253196608(*(v100 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v100 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), v179);
    _os_log_impl(&dword_253166000, v101, v102, "%s state changed to ready", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x259BFFA80](v104, -1, -1);
    MEMORY[0x259BFFA80](v103, -1, -1);
  }

  v105 = (v100 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
  os_unfair_lock_lock((v100 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock));
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8);
  sub_2531CF4EC(v105 + *(v106 + 28), v100);
  os_unfair_lock_unlock(v105);
  v107 = *(v100 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_readyEvent);
  if (v107)
  {
    v108 = sub_2531DA9B4();
    v109 = v164;
    (*(*(v108 - 8) + 56))(v164, 1, 1, v108);
    v110 = swift_allocObject();
    v110[2] = 0;
    v110[3] = 0;
    v110[4] = v107;

    v111 = &unk_2531E8E88;
LABEL_58:
    v155 = v111;
    v156 = v109;
    v157 = v110;
    goto LABEL_59;
  }
}

uint64_t sub_2531CD4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2531CD4E8, 0, 0);
}

uint64_t sub_2531CD4E8()
{
  v38 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  *(v0 + 48) = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;
  sub_2531AC91C(v2, v1);

  v3 = sub_2531DA254();
  v4 = sub_2531DAA74();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = *(v0 + 16);
    v8 = -1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315906;
    v11 = sub_253196608(*(v7 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v7 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v37);
    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    v18 = *(v0 + 32);
    if (v6 >> 60 == 15)
    {
LABEL_3:
      v19 = *(v0 + 80);
      v20 = *(v0 + 24);
      *(v9 + 14) = v8;
      sub_2531AC968(v20, v18);
      *(v9 + 22) = 2080;
      v21 = sub_2531DA304();
      v23 = sub_253196608(v21, v22, &v37);

      *(v9 + 24) = v23;
      *(v9 + 32) = 1024;
      *(v9 + 34) = v19;
      _os_log_impl(&dword_253166000, v3, v4, "%s send content.count=%ld context=%s isComplete=%{BOOL}d", v9, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x259BFFA80](v10, -1, -1);
      MEMORY[0x259BFFA80](v9, -1, -1);
      goto LABEL_5;
    }

    v28 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v28 != 2)
      {
        v8 = 0;
        goto LABEL_3;
      }

      v29 = *(*(v0 + 24) + 16);
      v30 = *(*(v0 + 24) + 24);
      v8 = v30 - v29;
      if (!__OFSUB__(v30, v29))
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    else if (!v28)
    {
      v8 = BYTE6(v18);
      goto LABEL_3;
    }

    v31 = *(v0 + 24);
    v32 = *(v0 + 28);
    v33 = __OFSUB__(v32, v31);
    v34 = v32 - v31;
    if (v33)
    {
      __break(1u);
      return MEMORY[0x2822008A0](v11, v18, v12, v13, v14, v15, v16, v17);
    }

    v8 = v34;
    goto LABEL_3;
  }

  sub_2531AC968(*(v0 + 24), *(v0 + 32));
LABEL_5:

  v24 = *(v0 + 80);
  v26 = *(v0 + 32);
  v25 = *(v0 + 40);
  v36 = *(v0 + 16);
  v27 = swift_task_alloc();
  *(v0 + 56) = v27;
  *(v27 + 16) = v36;
  *(v27 + 32) = v26;
  *(v27 + 40) = v25;
  *(v27 + 48) = v24;
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_2531CD7DC;
  v15 = sub_2531CFBF4;
  v14 = 0x80000002531DD9C0;
  v17 = MEMORY[0x277D84F78] + 8;
  v18 = 0;
  v12 = 0;
  v13 = 0xD000000000000029;
  v16 = v27;

  return MEMORY[0x2822008A0](v11, v18, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_2531CD7DC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2531CDA40;
  }

  else
  {

    v2 = sub_2531CD8F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2531CD8F8()
{
  v9 = v0;

  v1 = sub_2531DA254();
  v2 = sub_2531DAA74();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 16);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_253196608(*(v3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v8);
    _os_log_impl(&dword_253166000, v1, v2, "%s send finished", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x259BFFA80](v5, -1, -1);
    MEMORY[0x259BFFA80](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2531CDA40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531CDAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v20 = a6;
  v19[3] = a4;
  v19[4] = a5;
  v19[2] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v12 = sub_2531DA314();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19[1] = *(a2 + 16);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v9 + 32))(v17 + v16, v11, v8);
  *v15 = sub_2531CFC04;
  v15[1] = v17;
  (*(v13 + 104))(v15, *MEMORY[0x277CD8DB0], v12);

  sub_2531DA344();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_2531CDCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWConnectionWrapper.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E008, &unk_2531E8E20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_2531DA524();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v51 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  sub_2531B5834(a1, v10, &qword_27F58E008, &unk_2531E8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2531AC3F8(v10, &qword_27F58E008, &unk_2531E8E20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
    return sub_2531DA974();
  }

  else
  {
    v49 = a3;
    v46 = *(v12 + 32);
    v46(v19, v10, v11);
    v21 = v19;
    v22 = *(v12 + 16);
    v47 = v21;
    v22(v17);

    v23 = sub_2531DA254();
    v24 = sub_2531DAA84();

    v25 = os_log_type_enabled(v23, v24);
    v48 = v22;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v45 = v12 + 32;
      v27 = v26;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v44;
      *v27 = 136315394;
      *(v27 + 4) = sub_253196608(*(a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v52);
      *(v27 + 12) = 2112;
      sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      (v22)(v28, v17, v11);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = *(v12 + 8);
      v30(v17, v11);
      *(v27 + 14) = v29;
      v31 = v43;
      *v43 = v29;
      _os_log_impl(&dword_253166000, v23, v24, "%s send failed error=%@", v27, 0x16u);
      sub_2531AC3F8(v31, &qword_27F58D2E8, &unk_2531E8370);
      MEMORY[0x259BFFA80](v31, -1, -1);
      v32 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x259BFFA80](v32, -1, -1);
      MEMORY[0x259BFFA80](v27, -1, -1);
    }

    else
    {

      v30 = *(v12 + 8);
      v30(v17, v11);
    }

    v33 = v51;
    v34 = (a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock((a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock));
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8);
    v36 = v50;
    sub_2531CFAE4(v34 + *(v35 + 28), v50);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
    v38 = (*(*(v37 - 8) + 48))(v36, 2, v37);
    v39 = v47;
    if (v38)
    {
      v40 = v48;
      (v48)(v33, v47, v11);
    }

    else
    {
      v46(v33, v36, v11);
      v40 = v48;
    }

    os_unfair_lock_unlock(v34);
    sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v41 = swift_allocError();
    v40(v42, v33, v11);
    v52 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
    sub_2531DA964();
    v30(v33, v11);
    return (v30)(v39, v11);
  }
}

uint64_t sub_2531CE2C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for NWConnectionWrapper.State(0);
  v2[4] = swift_task_alloc();
  v3 = sub_2531DA524();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E000, &qword_2531E8E18);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E008, &unk_2531E8E20);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531CE454, 0, 0);
}

uint64_t sub_2531CE454()
{
  v12 = v0;
  v0[15] = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;

  v1 = sub_2531DA254();
  v2 = sub_2531DAA74();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_253196608(*(v3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v11);
    _os_log_impl(&dword_253166000, v1, v2, "%s receive", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x259BFFA80](v5, -1, -1);
    MEMORY[0x259BFFA80](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_2531CE610;
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[3];

  return MEMORY[0x2822007B8](v7, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_2531CFADC, v9, v8);
}

uint64_t sub_2531CE610()
{

  return MEMORY[0x2822009F8](sub_2531CE70C, 0, 0);
}

unint64_t sub_2531CE70C()
{
  v59 = v0;
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[10];
  v4 = *v3;
  v5 = *(v3 + 8);
  v56 = *(v3 + 16);
  v54 = *(v3 + 24);
  sub_2531D0274(v3 + *(v0[9] + 80), v1, &qword_27F58E008, &unk_2531E8E20);
  sub_2531B5834(v1, v2, &qword_27F58E008, &unk_2531E8E20);

  sub_2531AC91C(v4, v5);
  v6 = sub_2531DA254();
  v7 = sub_2531DAA74();

  v57 = v4;
  v55 = v5;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[3];
    v9 = -1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v58 = v12;
    *v10 = 136315906;
    result = sub_253196608(*(v8 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(v8 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v58);
    *(v10 + 4) = result;
    *(v10 + 12) = 2048;
    if (v5 >> 60 == 15)
    {
LABEL_3:
      v53 = v12;
      v15 = v0[12];
      v14 = v0[13];
      v16 = v4;
      v17 = v5;
      v19 = v0[5];
      v18 = v0[6];
      *(v10 + 14) = v9;
      sub_2531AC968(v16, v17);
      *(v10 + 22) = 1024;
      *(v10 + 24) = v54;
      *(v10 + 28) = 2112;
      sub_2531B5834(v14, v15, &qword_27F58E008, &unk_2531E8E20);
      v20 = (*(v18 + 48))(v15, 1, v19);
      v22 = v0[12];
      v21 = v0[13];
      if (v20 == 1)
      {
        sub_2531AC3F8(v0[12], &qword_27F58E008, &unk_2531E8E20);
        sub_2531AC3F8(v21, &qword_27F58E008, &unk_2531E8E20);
        v23 = 0;
      }

      else
      {
        v27 = v0[5];
        v26 = v0[6];
        sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
        swift_allocError();
        (*(v26 + 32))(v28, v22, v27);
        v23 = _swift_stdlib_bridgeErrorToNSError();
        sub_2531AC3F8(v21, &qword_27F58E008, &unk_2531E8E20);
      }

      *(v10 + 30) = v23;
      *v11 = v23;
      _os_log_impl(&dword_253166000, v6, v7, "%s receive finished data.count=%ld isComplete=%{BOOL}d error=%@", v10, 0x26u);
      sub_2531AC3F8(v11, &qword_27F58D2E8, &unk_2531E8370);
      MEMORY[0x259BFFA80](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x259BFFA80](v53, -1, -1);
      MEMORY[0x259BFFA80](v10, -1, -1);

      v5 = v55;
      goto LABEL_11;
    }

    v25 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v25 != 2)
      {
        v9 = 0;
        goto LABEL_3;
      }

      v52 = *(v4 + 16);
      v51 = *(v4 + 24);
      v9 = v51 - v52;
      if (!__OFSUB__(v51, v52))
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    else if (!v25)
    {
      v9 = BYTE6(v5);
      goto LABEL_3;
    }

    if (__OFSUB__(HIDWORD(v4), v4))
    {
      __break(1u);
      return result;
    }

    v9 = HIDWORD(v4) - v4;
    goto LABEL_3;
  }

  v24 = v0[13];
  sub_2531AC968(v4, v5);

  sub_2531AC3F8(v24, &qword_27F58E008, &unk_2531E8E20);
LABEL_11:
  v29 = v0[11];
  v30 = v0[5];
  v31 = v0[6];
  sub_2531B5834(v0[14], v29, &qword_27F58E008, &unk_2531E8E20);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v32 = v0[11];
    v33 = v0[2];
    sub_2531AC3F8(v0[14], &qword_27F58E008, &unk_2531E8E20);
    sub_2531AC3F8(v32, &qword_27F58E008, &unk_2531E8E20);
    sub_2531AC968(0, 0xF000000000000000);
    *v33 = v57;
    *(v33 + 8) = v5;
    *(v33 + 16) = v56;
    *(v33 + 24) = v54;

    v34 = v0[1];
  }

  else
  {
    v36 = v0 + 4;
    v35 = v0[4];
    v37 = v0[3];
    v38 = *(v0[6] + 32);
    v38(v0[8], v0[11], v0[5]);
    v39 = (v37 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
    os_unfair_lock_lock(v39);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8);
    sub_2531CFAE4(v39 + *(v40 + 28), v35);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
    v42 = (*(*(v41 - 8) + 48))(v35, 2, v41);
    v43 = v0[6];
    if (v42)
    {
      v38 = *(v43 + 16);
      v36 = v0 + 8;
    }

    v44 = *v36;
    v45 = v0[14];
    v46 = v0[7];
    v47 = v0[8];
    v48 = v0[5];
    v38(v46, v44, v48);
    os_unfair_lock_unlock(v39);
    sub_2531D022C(&qword_27F58E010, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    swift_allocError();
    (*(v43 + 16))(v49, v46, v48);
    swift_willThrow();

    sub_2531AC968(v57, v55);
    v50 = *(v43 + 8);
    v50(v46, v48);
    v50(v47, v48);
    sub_2531AC3F8(v45, &qword_27F58E008, &unk_2531E8E20);

    v34 = v0[1];
  }

  return v34();
}

uint64_t sub_2531CEE04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E018, &qword_2531E8E30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_2531DA384();
}

uint64_t sub_2531CEF58(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E000, &qword_2531E8E18);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  v14 = *(v11 + 88);
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  v13[24] = a4;
  sub_2531B5834(a5, &v13[v14], &qword_27F58E008, &unk_2531E8E20);
  sub_2531AC91C(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E018, &qword_2531E8E30);
  return sub_2531DA974();
}

uint64_t sub_2531CF060(uint64_t a1, const char *a2, ...)
{

  v4 = sub_2531DA254();
  v5 = sub_2531DAA94();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_253196608(*(a1 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(a1 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v9);
    _os_log_impl(&dword_253166000, v4, v5, a2, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x259BFFA80](v7, -1, -1);
    MEMORY[0x259BFFA80](v6, -1, -1);
  }

  return sub_2531DA2E4();
}

void sub_2531CF174(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for NWConnectionWrapper.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531CFAE4(a1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 2, v11);
  if (v13)
  {
    if (v13 == 1)
    {
      sub_2531CFA80(a1);
      v14 = sub_2531DA524();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      (*(v12 + 56))(a1, 0, 2, v11);
      *a4 = 1;
    }

    else
    {

      v20 = sub_2531DA254();
      v21 = sub_2531DAA84();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_253196608(*(a3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(a3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v25);
        _os_log_impl(&dword_253166000, v20, v21, "%s Unexpected transition from 'connected' -> 'waiting' state? Ignoring.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x259BFFA80](v23, -1, -1);
        MEMORY[0x259BFFA80](v22, -1, -1);
      }

      *a4 = 0;
    }
  }

  else
  {

    v15 = sub_2531DA254();
    v16 = sub_2531DAA84();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_253196608(*(a3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(a3 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v25);
      _os_log_impl(&dword_253166000, v15, v16, "%s Unexpected transition from 'waiting' -> 'waiting' state again? Ignoring.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x259BFFA80](v18, -1, -1);
      MEMORY[0x259BFFA80](v17, -1, -1);
    }

    *a4 = 1;
    v19 = sub_2531DA524();
    (*(*(v19 - 8) + 8))(v10, v19);
  }
}

void sub_2531CF4EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWConnectionWrapper.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531CFAE4(a1, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 2, v7);
  if (!v9)
  {
    sub_2531CFA80(a1);
    v10 = sub_2531DA524();
    (*(*(v10 - 8) + 8))(v6, v10);
    goto LABEL_5;
  }

  if (v9 == 1)
  {
    sub_2531CFA80(a1);
LABEL_5:
    (*(v8 + 56))(a1, 2, 2, v7);
    return;
  }

  v11 = sub_2531DA254();
  v12 = sub_2531DAA84();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_253196608(*(a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix), *(a2 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix + 8), &v16);
    _os_log_impl(&dword_253166000, v11, v12, "%s Unexpected transition from 'ready' -> 'connected' state? Ignoring.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x259BFFA80](v14, -1, -1);
    MEMORY[0x259BFFA80](v13, -1, -1);
  }
}

uint64_t sub_2531CF734()
{

  v1 = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;
  v2 = sub_2531DA274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = v0 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8);
  sub_2531CFA80(v3 + *(v4 + 28));

  return swift_deallocClassInstance();
}

void sub_2531CF850(uint64_t a1)
{
  sub_2531DA274();
  if (v1 <= 0x3F)
  {
    sub_2531CF940(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2531CF940(uint64_t a1)
{
  if (!qword_27F58DFD0)
  {
    type metadata accessor for NWConnectionWrapper.State(255);
    v1 = sub_2531DA224();
    if (!v2)
    {
      atomic_store(v1, &qword_27F58DFD0);
    }
  }
}

uint64_t sub_2531CF9E0(uint64_t a1)
{
  sub_2531CFA38();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_2531CFA38()
{
  if (!qword_27F58DFF8)
  {
    v0 = sub_2531DA524();
    if (!v1)
    {
      atomic_store(v0, &qword_27F58DFF8);
    }
  }
}

uint64_t sub_2531CFA80(uint64_t a1)
{
  v2 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2531CFAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2531CFB48(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E018, &qword_2531E8E30);

  return sub_2531CEF58(a1, a2, a3, a4, a5);
}

uint64_t sub_2531CFC04(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2531CDCD8(a1, v4, v5);
}

uint64_t sub_2531CFC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a2;
  v9 = type metadata accessor for NWConnectionWrapper.State(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v5 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_stateLock);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
  (*(*(v13 - 8) + 56))(v11, 1, 2, v13);
  *v12 = 0;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8) + 28);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E020, &unk_2531E8E48);
  bzero(v12 + v14, *(*(v15 - 8) + 64));
  sub_2531D00C4(v11, v12 + v14);
  *(v5 + 16) = a1;
  v16 = OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logger;
  v17 = sub_2531DA274();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v5 + v16, a3, v17);
  v39[0] = 0;
  v39[1] = 0xE000000000000000;

  sub_2531DABC4();

  strcpy(v39, "[NWConnection:");
  HIBYTE(v39[1]) = -18;
  v19 = sub_2531DA204();
  sub_2531D022C(&qword_27F58E028, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v20 = sub_2531DAF34();
  MEMORY[0x259BFE570](v20);

  MEMORY[0x259BFE570](46, 0xE100000000000000);
  v38 = sub_2531DA2C4();
  v21 = sub_2531DAF34();
  MEMORY[0x259BFE570](v21);

  MEMORY[0x259BFE570](93, 0xE100000000000000);
  v22 = v39[1];
  v23 = (v5 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_logPrefix);
  *v23 = v39[0];
  v23[1] = v22;

  v24 = sub_2531DA254();
  v25 = sub_2531DAA74();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = a3;
    v36 = a4;
    v28 = v27;
    v39[0] = v27;
    *v26 = 136315138;
    v29 = v17;
    v30 = *v23;
    v31 = v23[1];

    v32 = sub_253196608(v30, v31, v39);

    *(v26 + 4) = v32;
    v17 = v29;
    _os_log_impl(&dword_253166000, v24, v25, "%s wrap", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v33 = v28;
    a3 = v35;
    a4 = v36;
    MEMORY[0x259BFFA80](v33, -1, -1);
    MEMORY[0x259BFFA80](v26, -1, -1);
  }

  *(v5 + OBJC_IVAR____TtC23HomeKitDaemonFoundation19NWConnectionWrapper_readyEvent) = v37;

  swift_retain_n();
  sub_2531DA324();

  (*(*(v19 - 8) + 8))(a4, v19);
  (*(v18 + 8))(a3, v17);
  return v5;
}

uint64_t sub_2531D00C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWConnectionWrapper.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2531D012C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_253170160;

  return sub_2531CBBC8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2531D022C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2531D0274(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s7Network12NWParametersC23HomeKitDaemonFoundationE30makeClientConnectionParametersyAcD23SPAKE2PlusConfigurationVFZ_0()
{
  sub_2531DA464();
  swift_allocObject();
  v0 = sub_2531DA454();
  sub_2531DA444();
  sub_2531DA424();
  sub_2531DA494();
  nw_swift_tls_record_create_options();
  v1 = MEMORY[0x259BFE2F0]();
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v4 = SPAKE2PlusConfiguration.makeClientIdentity()();
      v5 = sub_2531DA474();
      sec_protocol_options_set_local_identity(v5, v4);
      swift_unknownObjectRelease();
      sub_2531DA414();

      v6 = MEMORY[0x259BFE230](v3, v0);
      sub_2531DA3A4();
      sub_2531DA3E4();
      nw_parameters_set_indefinite();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v6;
    }
  }

  result = sub_2531DAD34();
  __break(1u);
  return result;
}

uint64_t _s7Network12NWParametersC23HomeKitDaemonFoundationE28makeServerListenerParametersyAcD23SPAKE2PlusConfigurationVFZ_0()
{
  sub_2531DA464();
  swift_allocObject();
  v0 = sub_2531DA454();
  sub_2531DA434();
  sub_2531DA494();
  nw_swift_tls_record_create_options();
  v1 = MEMORY[0x259BFE2F0]();
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v4 = SPAKE2PlusConfiguration.makeServerIdentity()();
      v5 = sub_2531DA474();
      sec_protocol_options_set_local_identity(v5, v4);
      swift_unknownObjectRelease();
      sub_2531DA414();

      v6 = MEMORY[0x259BFE230](v3, v0);
      sub_2531DA3D4();

      swift_unknownObjectRelease();
      return v6;
    }
  }

  result = sub_2531DAD34();
  __break(1u);
  return result;
}

uint64_t _s7Network12NWParametersC23HomeKitDaemonFoundationE30makeClientConnectionParametersyAcD19TLSPSKConfigurationVFZ_0(uint64_t *a1)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v2 = sub_2531DA5E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  sub_2531DA464();
  swift_allocObject();
  v12 = sub_2531DA454();
  sub_2531DA434();
  sub_2531DA444();
  sub_2531DA424();
  sub_2531DA494();
  swift_allocObject();
  v13 = sub_2531DA484();
  v14 = sub_2531DA474();
  v15 = v10 >> 62;
  v34 = v14;
  if ((v10 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v36, 0, 14);
      goto LABEL_14;
    }

    v32 = v2;
    v16 = *(v11 + 16);
    v31 = *(v11 + 24);
    v17 = sub_2531DA044();
    v33 = v3;
    if (v17 && __OFSUB__(v16, sub_2531DA074()))
    {
      goto LABEL_35;
    }

    if (!__OFSUB__(v31, v16))
    {
      sub_2531DA064();
      sub_2531DA5D4();
      v2 = v32;
      v3 = v33;
      goto LABEL_15;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v15)
  {
    v36[0] = v11;
    LOWORD(v36[1]) = v10;
    BYTE2(v36[1]) = BYTE2(v10);
    BYTE3(v36[1]) = BYTE3(v10);
    BYTE4(v36[1]) = BYTE4(v10);
    BYTE5(v36[1]) = BYTE5(v10);
LABEL_14:
    sub_2531DA5D4();
    goto LABEL_15;
  }

  v32 = v2;
  v33 = v3;
  if (v11 >> 32 < v11)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (sub_2531DA044() && __OFSUB__(v11, sub_2531DA074()))
  {
    goto LABEL_37;
  }

  v3 = v33;
  sub_2531DA064();
  sub_2531DA5D4();
  v2 = v32;
LABEL_15:
  v18 = sub_2531DA5C4();
  v21 = *(v3 + 8);
  v20 = v3 + 8;
  v19 = v21;
  v21(v7, v2);
  v22 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v22)
    {
      v36[0] = v8;
      LOWORD(v36[1]) = v9;
      BYTE2(v36[1]) = BYTE2(v9);
      BYTE3(v36[1]) = BYTE3(v9);
      BYTE4(v36[1]) = BYTE4(v9);
      BYTE5(v36[1]) = BYTE5(v9);
LABEL_28:
      v26 = v35;
      goto LABEL_29;
    }

    v33 = v20;
    if (v8 >> 32 >= v8)
    {
      if (!sub_2531DA044() || !__OFSUB__(v8, sub_2531DA074()))
      {
        sub_2531DA064();
        v26 = v35;
LABEL_29:
        sub_2531DA5D4();
        goto LABEL_30;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_33;
  }

  if (v22 != 2)
  {
    memset(v36, 0, 14);
    goto LABEL_28;
  }

  v32 = v2;
  v24 = *(v8 + 16);
  v23 = *(v8 + 24);
  v25 = sub_2531DA044();
  v33 = v20;
  if (v25 && __OFSUB__(v24, sub_2531DA074()))
  {
    goto LABEL_36;
  }

  if (__OFSUB__(v23, v24))
  {
    goto LABEL_34;
  }

  sub_2531DA064();
  v26 = v35;
  sub_2531DA5D4();
  v2 = v32;
LABEL_30:
  v27 = sub_2531DA5C4();
  v19(v26, v2);
  sec_protocol_options_add_pre_shared_key(v34, v18, v27);

  swift_unknownObjectRelease();
  v28 = sub_2531DA474();
  sec_protocol_options_set_min_tls_protocol_version(v28, tls_protocol_version_TLSv12);
  swift_unknownObjectRelease();
  sub_2531DA414();

  v29 = MEMORY[0x259BFE230](v13, v12);
  sub_2531DA3A4();

  return v29;
}

uint64_t _s7Network12NWParametersC23HomeKitDaemonFoundationE28makeServerListenerParametersyAcD19TLSPSKConfigurationVFZ_0(uint64_t *a1)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v2 = sub_2531DA5E4();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  sub_2531DA464();
  swift_allocObject();
  v13 = sub_2531DA454();
  sub_2531DA434();
  sub_2531DA494();
  swift_allocObject();
  v14 = sub_2531DA484();
  v15 = sub_2531DA474();
  v16 = v11 >> 62;
  v31 = v15;
  if ((v11 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v34, 0, 14);
      goto LABEL_14;
    }

    v30 = v13;
    v17 = *(v12 + 16);
    v18 = *(v12 + 24);
    if (sub_2531DA044() && __OFSUB__(v17, sub_2531DA074()))
    {
      goto LABEL_35;
    }

    if (!__OFSUB__(v18, v17))
    {
      sub_2531DA064();
      sub_2531DA5D4();
      v13 = v30;
      goto LABEL_15;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v16)
  {
    v30 = v13;
    if (v12 >> 32 >= v12)
    {
      if (sub_2531DA044() && __OFSUB__(v12, sub_2531DA074()))
      {
        goto LABEL_37;
      }

      v13 = v30;
      sub_2531DA064();
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_33;
  }

  v34[0] = v12;
  LOWORD(v34[1]) = v11;
  BYTE2(v34[1]) = BYTE2(v11);
  BYTE3(v34[1]) = BYTE3(v11);
  BYTE4(v34[1]) = BYTE4(v11);
  BYTE5(v34[1]) = BYTE5(v11);
LABEL_14:
  sub_2531DA5D4();
LABEL_15:
  v19 = sub_2531DA5C4();
  v20 = v32;
  v21 = v33 + 8;
  v22 = *(v33 + 8);
  v22(v8, v32);
  v23 = v10 >> 62;
  v33 = v21;
  if ((v10 >> 62) > 1)
  {
    if (v23 != 2)
    {
      memset(v34, 0, 14);
      goto LABEL_30;
    }

    v24 = *(v9 + 16);
    v9 = *(v9 + 24);
    if (sub_2531DA044() && __OFSUB__(v24, sub_2531DA074()))
    {
      goto LABEL_36;
    }

    if (!__OFSUB__(v9, v24))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v23)
  {
    v34[0] = v9;
    LOWORD(v34[1]) = v10;
    BYTE2(v34[1]) = BYTE2(v10);
    BYTE3(v34[1]) = BYTE3(v10);
    BYTE4(v34[1]) = BYTE4(v10);
    BYTE5(v34[1]) = BYTE5(v10);
LABEL_30:
    sub_2531DA5D4();
    goto LABEL_31;
  }

  v30 = v13;
  if (v9 >> 32 < v9)
  {
    goto LABEL_34;
  }

  if (sub_2531DA044() && __OFSUB__(v9, sub_2531DA074()))
  {
LABEL_38:
    __break(1u);
  }

  v13 = v30;
LABEL_28:
  sub_2531DA064();
  sub_2531DA5D4();
  v20 = v32;
LABEL_31:
  v25 = sub_2531DA5C4();
  v22(v6, v20);
  sec_protocol_options_add_pre_shared_key(v31, v19, v25);

  swift_unknownObjectRelease();
  v26 = sub_2531DA474();
  sec_protocol_options_set_min_tls_protocol_version(v26, tls_protocol_version_TLSv12);
  swift_unknownObjectRelease();
  sub_2531DA414();

  v27 = MEMORY[0x259BFE230](v14, v13);
  sub_2531DA3D4();

  return v27;
}

uint64_t SPAKE2PlusConfiguration.makeClientIdentity()()
{
  v55[2] = *MEMORY[0x277D85DE8];
  v1 = sub_2531DA5E4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v53 = &v48 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v13 = *v0;
  v14 = v0[1];
  v15 = v0[2];
  v16 = v0[3];
  v17 = v0[4];
  v52 = v0[5];
  v18 = v0[6];
  v54 = v0[7];
  v19 = v14 >> 62;
  v49 = v18;
  v50 = v17;
  if ((v14 >> 62) > 1)
  {
    if (v19 != 2)
    {
      memset(v55, 0, 14);
      goto LABEL_14;
    }

    v48 = v2;
    v51 = v1;
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (sub_2531DA044() && __OFSUB__(v20, sub_2531DA074()))
    {
      goto LABEL_67;
    }

    if (!__OFSUB__(v21, v20))
    {
      sub_2531DA064();
      sub_2531DA5D4();
      v1 = v51;
      v2 = v48;
      goto LABEL_15;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (!v19)
  {
    v55[0] = v13;
    LOWORD(v55[1]) = v14;
    BYTE2(v55[1]) = BYTE2(v14);
    BYTE3(v55[1]) = BYTE3(v14);
    BYTE4(v55[1]) = BYTE4(v14);
    BYTE5(v55[1]) = BYTE5(v14);
LABEL_14:
    sub_2531DA5D4();
    goto LABEL_15;
  }

  v48 = v5;
  v22 = v2;
  v51 = v1;
  v23 = v13;
  if (v13 >> 32 < v13)
  {
    __break(1u);
    goto LABEL_61;
  }

  if (sub_2531DA044() && __OFSUB__(v23, sub_2531DA074()))
  {
    goto LABEL_69;
  }

  v2 = v22;
  sub_2531DA064();
  sub_2531DA5D4();
  v1 = v51;
  v5 = v48;
LABEL_15:
  v24 = sub_2531DA5C4();
  v25 = *(v2 + 1);
  v25(v12, v1);
  v26 = v16 >> 62;
  v51 = v24;
  if ((v16 >> 62) <= 1)
  {
    if (!v26)
    {
      v55[0] = v15;
      LOWORD(v55[1]) = v16;
      BYTE2(v55[1]) = BYTE2(v16);
      BYTE3(v55[1]) = BYTE3(v16);
      BYTE4(v55[1]) = BYTE4(v16);
      BYTE5(v55[1]) = BYTE5(v16);
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (v26 == 2)
  {
    v28 = *(v15 + 16);
    v27 = *(v15 + 24);
    if (sub_2531DA044() && __OFSUB__(v28, sub_2531DA074()))
    {
      goto LABEL_68;
    }

    v29 = __OFSUB__(v27, v28);
    v15 = v27 - v28;
    if (!v29)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_24:
    if (v15 >> 32 >= v15)
    {
      if (sub_2531DA044() && __OFSUB__(v15, sub_2531DA074()))
      {
        goto LABEL_71;
      }

LABEL_27:
      sub_2531DA064();
      goto LABEL_29;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  memset(v55, 0, 14);
LABEL_29:
  sub_2531DA5D4();
  v30 = sub_2531DA5C4();
  v25(v10, v1);
  v31 = v53;
  v32 = v52 >> 62;
  if ((v52 >> 62) > 1)
  {
    if (v32 != 2)
    {
      memset(v55, 0, 14);
      goto LABEL_42;
    }

    v48 = v30;
    v33 = *(v50 + 16);
    v34 = *(v50 + 24);
    if (sub_2531DA044() && __OFSUB__(v33, sub_2531DA074()))
    {
      goto LABEL_70;
    }

    if (!__OFSUB__(v34, v33))
    {
      sub_2531DA064();
      sub_2531DA5D4();
      v30 = v48;
      goto LABEL_43;
    }

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
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!v32)
  {
    v55[0] = v50;
    LODWORD(v55[1]) = v52;
    WORD2(v55[1]) = WORD2(v52);
LABEL_42:
    sub_2531DA5D4();
    goto LABEL_43;
  }

  v48 = v25;
  v35 = v30;
  v36 = v50;
  if (v50 >> 32 < v50)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (sub_2531DA044() && __OFSUB__(v36, sub_2531DA074()))
  {
    goto LABEL_73;
  }

  v30 = v35;
  sub_2531DA064();
  sub_2531DA5D4();
  v25 = v48;
LABEL_43:
  v37 = sub_2531DA5C4();
  v25(v31, v1);
  v38 = v54 >> 62;
  if ((v54 >> 62) > 1)
  {
    if (v38 != 2)
    {
      memset(v55, 0, 14);
      goto LABEL_57;
    }

    v48 = v30;
    v39 = v5;
    v40 = *(v49 + 16);
    v41 = *(v49 + 24);
    if (sub_2531DA044() && __OFSUB__(v40, sub_2531DA074()))
    {
      goto LABEL_72;
    }

    if (!__OFSUB__(v41, v40))
    {
      sub_2531DA064();
      v5 = v39;
LABEL_55:
      sub_2531DA5D4();
      v30 = v48;
      goto LABEL_58;
    }

    goto LABEL_66;
  }

  if (v38)
  {
    v42 = v5;
    v43 = v49;
    if (v49 >> 32 >= v49)
    {
      v48 = v30;
      if (!sub_2531DA044() || !__OFSUB__(v43, sub_2531DA074()))
      {
        v5 = v42;
        sub_2531DA064();
        goto LABEL_55;
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    goto LABEL_65;
  }

  v55[0] = v49;
  LODWORD(v55[1]) = v54;
  WORD2(v55[1]) = WORD2(v54);
LABEL_57:
  sub_2531DA5D4();
LABEL_58:
  v44 = sub_2531DA5C4();
  v25(v5, v1);
  v45 = v51;
  client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

  if (!client_SPAKE2PLUSV1_identity)
  {
    goto LABEL_75;
  }

  return client_SPAKE2PLUSV1_identity;
}

uint64_t SPAKE2PlusConfiguration.makeServerIdentity()()
{
  v87[2] = *MEMORY[0x277D85DE8];
  v1 = sub_2531DA5E4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v77 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v80 = &v69 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v74 = &v69 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v69 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v69 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v69 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v69 - v18;
  v20 = *v0;
  v21 = v0[1];
  v22 = v0[3];
  v83 = v0[2];
  v84 = v22;
  v23 = v0[5];
  v81 = v0[4];
  v82 = v23;
  v24 = v0[6];
  v79 = v0[7];
  v25 = v21 >> 62;
  v85 = v17;
  v76 = v21 >> 62;
  v71 = v24;
  if ((v21 >> 62) > 1)
  {
    if (v25 != 2)
    {
      memset(v87, 0, 14);
      goto LABEL_15;
    }

    v26 = *(v20 + 16);
    v27 = *(v20 + 24);
    if (sub_2531DA044() && __OFSUB__(v26, sub_2531DA074()))
    {
      goto LABEL_119;
    }

    if (!__OFSUB__(v27, v26))
    {
LABEL_13:
      sub_2531DA064();
      sub_2531DA5D4();
      v1 = v85;
      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    if (v20 >> 32 < v20)
    {
      __break(1u);
      goto LABEL_109;
    }

    if (sub_2531DA044() && __OFSUB__(v20, sub_2531DA074()))
    {
      goto LABEL_121;
    }

    goto LABEL_13;
  }

  if (v25)
  {
    goto LABEL_10;
  }

  v87[0] = v20;
  LOWORD(v87[1]) = v21;
  BYTE2(v87[1]) = BYTE2(v21);
  BYTE3(v87[1]) = BYTE3(v21);
  BYTE4(v87[1]) = BYTE4(v21);
  BYTE5(v87[1]) = BYTE5(v21);
LABEL_15:
  sub_2531DA5D4();
LABEL_16:
  v28 = sub_2531DA5C4();
  v29 = *(v2 + 8);
  v86 = v2 + 8;
  v29(v19, v1);
  v30 = v84 >> 62;
  v73 = v84 >> 62;
  v75 = v28;
  if ((v84 >> 62) > 1)
  {
    v31 = v82;
    if (v30 != 2)
    {
      memset(v87, 0, 14);
      goto LABEL_30;
    }

    v32 = *(v83 + 16);
    v33 = *(v83 + 24);
    if (sub_2531DA044() && __OFSUB__(v32, sub_2531DA074()))
    {
      goto LABEL_120;
    }

    if (!__OFSUB__(v33, v32))
    {
LABEL_28:
      sub_2531DA064();
      sub_2531DA5D4();
      v1 = v85;
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_25;
  }

  v31 = v82;
  if (v30)
  {
LABEL_25:
    v34 = v83;
    if (v83 >> 32 >= v83)
    {
      if (sub_2531DA044() && __OFSUB__(v34, sub_2531DA074()))
      {
        goto LABEL_123;
      }

      goto LABEL_28;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v87[0] = v83;
  LODWORD(v87[1]) = v84;
  WORD2(v87[1]) = WORD2(v84);
LABEL_30:
  sub_2531DA5D4();
LABEL_31:
  v35 = sub_2531DA5C4();
  v29(v16, v1);
  v36 = v31 >> 62;
  v72 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v36 != 2)
    {
      memset(v87, 0, 14);
      goto LABEL_45;
    }

    v37 = *(v81 + 16);
    v38 = *(v81 + 24);
    if (sub_2531DA044() && __OFSUB__(v37, sub_2531DA074()))
    {
      goto LABEL_122;
    }

    if (!__OFSUB__(v38, v37))
    {
LABEL_43:
      sub_2531DA064();
      sub_2531DA5D4();
      v1 = v85;
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (v36)
  {
LABEL_40:
    v39 = v81;
    if (v81 >> 32 >= v81)
    {
      if (sub_2531DA044() && __OFSUB__(v39, sub_2531DA074()))
      {
        goto LABEL_125;
      }

      goto LABEL_43;
    }

LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v87[0] = v81;
  LOWORD(v87[1]) = v31;
  BYTE2(v87[1]) = BYTE2(v31);
  BYTE3(v87[1]) = BYTE3(v31);
  BYTE4(v87[1]) = BYTE4(v31);
  BYTE5(v87[1]) = BYTE5(v31);
LABEL_45:
  sub_2531DA5D4();
LABEL_46:
  v40 = sub_2531DA5C4();
  v29(v13, v1);
  v41 = v79 >> 62;
  if ((v79 >> 62) > 1)
  {
    if (v41 != 2)
    {
      memset(v87, 0, 14);
      v42 = v78;
      goto LABEL_59;
    }

    v70 = v35;
    v43 = *(v71 + 16);
    v44 = *(v71 + 24);
    if (sub_2531DA044() && __OFSUB__(v43, sub_2531DA074()))
    {
      goto LABEL_124;
    }

    if (!__OFSUB__(v44, v43))
    {
      sub_2531DA064();
      v42 = v78;
      sub_2531DA5D4();
      v1 = v85;
      v35 = v70;
      goto LABEL_60;
    }

LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v42 = v78;
  if (!v41)
  {
    v87[0] = v71;
    LODWORD(v87[1]) = v79;
    WORD2(v87[1]) = WORD2(v79);
LABEL_59:
    sub_2531DA5D4();
    goto LABEL_60;
  }

  v45 = v71;
  if (v71 >> 32 < v71)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v71 = v20;
  if (sub_2531DA044() && __OFSUB__(v45, sub_2531DA074()))
  {
    goto LABEL_127;
  }

  sub_2531DA064();
  v42 = v78;
  sub_2531DA5D4();
  v1 = v85;
  v20 = v71;
LABEL_60:
  v46 = sub_2531DA5C4();
  v29(v42, v1);
  v47 = v75;
  client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

  if (!client_SPAKE2PLUSV1_identity)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v49 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
  if (!v49)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v50 = v49;
  v51 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
  if (!v51)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
  }

  v52 = v51;
  if (v76 > 1)
  {
    if (v76 != 2)
    {
      memset(v87, 0, 14);
      goto LABEL_76;
    }

    v54 = *(v20 + 16);
    v53 = *(v20 + 24);
    if (sub_2531DA044() && __OFSUB__(v54, sub_2531DA074()))
    {
      goto LABEL_126;
    }

    if (!__OFSUB__(v53, v54))
    {
      sub_2531DA064();
      v55 = v74;
      sub_2531DA5D4();
      v1 = v85;
      goto LABEL_78;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (v76)
  {
    if (v20 >> 32 >= v20)
    {
      if (sub_2531DA044() && __OFSUB__(v20, sub_2531DA074()))
      {
        goto LABEL_129;
      }

      v1 = v85;
      sub_2531DA064();
      v55 = v74;
      goto LABEL_77;
    }

    goto LABEL_113;
  }

  v87[0] = v20;
  LOWORD(v87[1]) = v21;
  BYTE2(v87[1]) = BYTE2(v21);
  BYTE3(v87[1]) = BYTE3(v21);
  BYTE4(v87[1]) = BYTE4(v21);
  BYTE5(v87[1]) = BYTE5(v21);
LABEL_76:
  v55 = v74;
LABEL_77:
  sub_2531DA5D4();
LABEL_78:
  v56 = sub_2531DA5C4();
  v29(v55, v1);
  v57 = v80;
  if (v73 > 1)
  {
    if (v73 != 2)
    {
      memset(v87, 0, 14);
      goto LABEL_91;
    }

    v79 = v56;
    v58 = *(v83 + 16);
    v59 = *(v83 + 24);
    if (sub_2531DA044() && __OFSUB__(v58, sub_2531DA074()))
    {
      goto LABEL_128;
    }

    if (!__OFSUB__(v59, v58))
    {
      sub_2531DA064();
      v57 = v80;
      sub_2531DA5D4();
      v1 = v85;
      v56 = v79;
      goto LABEL_92;
    }

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
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (!v73)
  {
    v87[0] = v83;
    LODWORD(v87[1]) = v84;
    WORD2(v87[1]) = WORD2(v84);
LABEL_91:
    sub_2531DA5D4();
    goto LABEL_92;
  }

  v60 = v83;
  if (v83 >> 32 < v83)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v83 = client_SPAKE2PLUSV1_identity;
  if (sub_2531DA044() && __OFSUB__(v60, sub_2531DA074()))
  {
    goto LABEL_131;
  }

  v1 = v85;
  sub_2531DA064();
  v57 = v80;
  sub_2531DA5D4();
LABEL_92:
  v61 = sub_2531DA5C4();
  v29(v57, v1);
  if (v72 > 1)
  {
    if (v72 != 2)
    {
      memset(v87, 0, 14);
      v62 = v77;
      goto LABEL_105;
    }

    v63 = *(v81 + 16);
    v64 = *(v81 + 24);
    if (sub_2531DA044() && __OFSUB__(v63, sub_2531DA074()))
    {
      goto LABEL_130;
    }

    if (!__OFSUB__(v64, v63))
    {
      sub_2531DA064();
      v62 = v77;
      sub_2531DA5D4();
      v1 = v85;
      goto LABEL_106;
    }

    goto LABEL_118;
  }

  v62 = v77;
  if (v72)
  {
    v65 = v81;
    if (v81 >> 32 >= v81)
    {
      if (!sub_2531DA044() || !__OFSUB__(v65, sub_2531DA074()))
      {
        v1 = v85;
        sub_2531DA064();
        v62 = v77;
        goto LABEL_105;
      }

      goto LABEL_132;
    }

    goto LABEL_117;
  }

  v87[0] = v81;
  LOWORD(v87[1]) = v31;
  BYTE2(v87[1]) = BYTE2(v31);
  BYTE3(v87[1]) = BYTE3(v31);
  BYTE4(v87[1]) = BYTE4(v31);
  BYTE5(v87[1]) = BYTE5(v31);
LABEL_105:
  sub_2531DA5D4();
LABEL_106:
  v66 = sub_2531DA5C4();
  v29(v62, v1);
  server_SPAKE2PLUSV1_identity = sec_identity_create_server_SPAKE2PLUSV1_identity();

  if (!server_SPAKE2PLUSV1_identity)
  {
    goto LABEL_136;
  }

  swift_unknownObjectRelease();

  return server_SPAKE2PLUSV1_identity;
}

uint64_t SPAKE2PlusConfiguration.context.getter()
{
  v1 = *v0;
  sub_25316D050(*v0, *(v0 + 8));
  return v1;
}

uint64_t SPAKE2PlusConfiguration.context.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SPAKE2PlusConfiguration.clientIdentity.getter()
{
  v1 = *(v0 + 16);
  sub_25316D050(v1, *(v0 + 24));
  return v1;
}

uint64_t SPAKE2PlusConfiguration.clientIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SPAKE2PlusConfiguration.serverIdentity.getter()
{
  v1 = *(v0 + 32);
  sub_25316D050(v1, *(v0 + 40));
  return v1;
}

uint64_t SPAKE2PlusConfiguration.serverIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SPAKE2PlusConfiguration.password.getter()
{
  v1 = *(v0 + 48);
  sub_25316D050(v1, *(v0 + 56));
  return v1;
}

uint64_t SPAKE2PlusConfiguration.password.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SPAKE2PlusConfiguration.init(context:clientIdentity:serverIdentity:password:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t SPAKE2PlusConfiguration.hash(into:)(uint64_t a1)
{
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();

  return sub_2531DA164();
}

uint64_t SPAKE2PlusConfiguration.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

uint64_t sub_2531D2B04()
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

uint64_t sub_2531D2BA4(uint64_t a1)
{
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();

  return sub_2531DA164();
}

uint64_t sub_2531D2C2C(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

BOOL _s23HomeKitDaemonFoundation23SPAKE2PlusConfigurationV2eeoiySbAC_ACtFZ_0(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v13 = a1[7];
  v14 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  if (!sub_25317DEF0(*a1, a1[1], *a2, a2[1]) || !sub_25317DEF0(v2, v3, v6, v7) || !sub_25317DEF0(v4, v5, v8, v9))
  {
    return 0;
  }

  return sub_25317DEF0(v14, v13, v10, v11);
}

unint64_t sub_2531D2DB8()
{
  result = qword_27F58E050;
  if (!qword_27F58E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58E050);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2531D2E20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
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

uint64_t sub_2531D2E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t String.authorityComponents.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E058, &qword_2531E9118);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  v7 = sub_2531DA104();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = 0x2F2F3A70747468;
  v14[1] = 0xE700000000000000;
  MEMORY[0x259BFE570](a1, a2);
  sub_2531DA0F4();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2531D30E8(v6);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = sub_2531DA0D4();
    if (v12)
    {
      a1 = v11;
    }

    else
    {
    }

    sub_2531DA0E4();
    (*(v8 + 8))(v10, v7);
  }

  return a1;
}

uint64_t sub_2531D30E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E058, &qword_2531E9118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TLSPSKConfiguration.identity.getter()
{
  v1 = *v0;
  sub_25316D050(*v0, *(v0 + 8));
  return v1;
}

uint64_t TLSPSKConfiguration.identity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t TLSPSKConfiguration.password.getter()
{
  v1 = *(v0 + 16);
  sub_25316D050(v1, *(v0 + 24));
  return v1;
}

uint64_t TLSPSKConfiguration.password.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TLSPSKConfiguration.init(identity:password:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

BOOL static TLSPSKConfiguration.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_25317DEF0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_25317DEF0(v2, v3, v4, v5);
}

uint64_t TLSPSKConfiguration.hash(into:)(uint64_t a1)
{
  sub_2531DA164();

  return sub_2531DA164();
}

uint64_t TLSPSKConfiguration.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

uint64_t sub_2531D33A4()
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

uint64_t sub_2531D340C(uint64_t a1)
{
  sub_2531DA164();

  return sub_2531DA164();
}

uint64_t sub_2531D345C(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DA164();
  return sub_2531DB454();
}

BOOL sub_2531D34C0(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_25317DEF0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_25317DEF0(v2, v3, v4, v5);
}

double static TLSPSKConfiguration.makeTLSConfigurationForHomeInstall(password:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = sub_2531D358C(a1, a2);
  result = 0.0;
  *a3 = xmmword_2531E9130;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  return result;
}

uint64_t sub_2531D358C(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E068, &qword_2531E92C8);
  if (swift_dynamicCast())
  {
    sub_253168604(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_2531DA094();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2531D4294(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_2531DAC54();
  }

  sub_2531D3A9C(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2531D43B4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_2531D3B64(sub_2531D4454, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_2531DA134();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2531D40BC(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2531DA754();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2531DA784();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_2531DAC54();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2531D40BC(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2531DA764();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_2531DA144();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_2531DA144();
    sub_2531AC968(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_2531AC968(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25316D050(*&__src[0], *(&__src[0] + 1));

  sub_25316D308(v32, *(&v32 + 1));
  return v32;
}

uint64_t *sub_2531D3A9C@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_2531D42FC(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_2531DA084();
      swift_allocObject();
      v8 = sub_2531DA034();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_2531DA124();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_2531D3B64(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_25316D308(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25316D308(v7, v6);
    *v4 = xmmword_2531E9130;
    sub_25316D308(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2531DA044() && __OFSUB__(v7, sub_2531DA074()))
      {
LABEL_26:
        __break(1u);
      }

      sub_2531DA084();
      swift_allocObject();
      v14 = sub_2531DA024();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2531D4008(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_25316D308(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_2531E9130;
    sub_25316D308(0, 0xC000000000000000);
    sub_2531DA114();
    result = sub_2531D4008(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_2531D3F08@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2531D42FC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2531D44BC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2531D4538(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2531D3F9C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2531D4008(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2531DA044();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2531DA074();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2531DA064();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_2531D40BC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2531DA794();
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
    v5 = MEMORY[0x259BFE5A0](15, a1 >> 16);
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

uint64_t sub_2531D4138@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_2531DABD4();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
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

unint64_t sub_2531D418C()
{
  result = qword_27F58E060;
  if (!qword_27F58E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58E060);
  }

  return result;
}

uint64_t sub_2531D41E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_2531D4234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2531D4294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E070, &unk_2531E92D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2531D42FC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2531D43B4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2531DA084();
      swift_allocObject();
      sub_2531DA054();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2531DA124();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_2531D4454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2531D3F9C(sub_2531D45BC, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2531D44BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2531DA084();
  swift_allocObject();
  result = sub_2531DA034();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2531DA124();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2531D4538(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2531DA084();
  swift_allocObject();
  result = sub_2531DA034();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t HomeInstall.SocketEncryption.serverNetworkParameters.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      v5 = v0 + 16;
      v3 = *(v0 + 16);
      v4 = *(v5 + 8);
      v6 = sub_2531D358C(0xD000000000000013, 0x80000002531DDAF0);
      v8 = v7;

      v9 = sub_2531D358C(v3, v4);
      v11 = v10;

      *&v23 = v6;
      *(&v23 + 1) = v8;
      *&v24 = v9;
      *(&v24 + 1) = v11;
      *&v25 = sub_2531D358C(v1, v2);
      *(&v25 + 1) = v12;
      v13 = _s7Network12NWParametersC23HomeKitDaemonFoundationE28makeServerListenerParametersyAcD23SPAKE2PlusConfigurationVFZ_0();
      v26 = v23;
      v27 = xmmword_2531E9130;
      v28 = v24;
      v29 = v25;
      sub_2531D5008(&v26);
    }

    else
    {
      sub_2531DA414();
      v13 = sub_2531DA3F4();
    }
  }

  else
  {

    v26 = xmmword_2531E9130;
    *&v27 = sub_2531D358C(v1, v2);
    *(&v27 + 1) = v14;
    v13 = _s7Network12NWParametersC23HomeKitDaemonFoundationE28makeServerListenerParametersyAcD19TLSPSKConfigurationVFZ_0(&v26);
    v15 = v27;
    sub_25316D308(v26, *(&v26 + 1));
    sub_25316D308(v15, *(&v15 + 1));
  }

  sub_2531DA4B4();

  v16 = sub_2531DA4A4();
  v17 = sub_2531DA3C4();

  v18 = &v26;
  v19 = sub_2531DA3B4();
  if (*v20 >> 62 && sub_2531DAD44() < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2531D5180(0, 0, v16, MEMORY[0x277CD8EE8]);

    v19(&v26, 0);

    sub_2531DA4E4();
    v17 = sub_2531DA4D4();
    sub_2531DA3C4();

    v18 = sub_2531DA3B4();
    if (!(*v21 >> 62))
    {
LABEL_8:
      sub_2531D5180(0, 0, v17, MEMORY[0x277CD8EE8]);

      (v18)(&v26, 0);

      sub_2531DA3E4();
      nw_parameters_set_server_mode();
      swift_unknownObjectRelease();
      sub_2531DA3E4();

      nw_parameters_set_attach_protocol_listener();
      swift_unknownObjectRelease();

      return v13;
    }
  }

  result = sub_2531DAD44();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t HomeInstall.SocketEncryption.clientNetworkParameters.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      v5 = v0 + 16;
      v3 = *(v0 + 16);
      v4 = *(v5 + 8);
      v6 = sub_2531D358C(0xD000000000000013, 0x80000002531DDAF0);
      v8 = v7;

      v9 = sub_2531D358C(v3, v4);
      v11 = v10;

      *&v23 = v6;
      *(&v23 + 1) = v8;
      *&v24 = v9;
      *(&v24 + 1) = v11;
      *&v25 = sub_2531D358C(v1, v2);
      *(&v25 + 1) = v12;
      v13 = _s7Network12NWParametersC23HomeKitDaemonFoundationE30makeClientConnectionParametersyAcD23SPAKE2PlusConfigurationVFZ_0();
      v26 = v23;
      v27 = xmmword_2531E9130;
      v28 = v24;
      v29 = v25;
      sub_2531D5008(&v26);
    }

    else
    {
      sub_2531DA414();
      v13 = sub_2531DA3F4();
    }
  }

  else
  {

    v26 = xmmword_2531E9130;
    *&v27 = sub_2531D358C(v1, v2);
    *(&v27 + 1) = v14;
    v13 = _s7Network12NWParametersC23HomeKitDaemonFoundationE30makeClientConnectionParametersyAcD19TLSPSKConfigurationVFZ_0(&v26);
    v15 = v27;
    sub_25316D308(v26, *(&v26 + 1));
    sub_25316D308(v15, *(&v15 + 1));
  }

  sub_2531DA4B4();

  v16 = sub_2531DA4A4();
  v17 = sub_2531DA3C4();

  v18 = &v26;
  v19 = sub_2531DA3B4();
  if (*v20 >> 62 && sub_2531DAD44() < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2531D5180(0, 0, v16, MEMORY[0x277CD8EE8]);

    v19(&v26, 0);

    sub_2531DA4E4();
    v17 = sub_2531DA4D4();
    sub_2531DA3C4();

    v18 = sub_2531DA3B4();
    if (!(*v21 >> 62))
    {
LABEL_8:
      sub_2531D5180(0, 0, v17, MEMORY[0x277CD8EE8]);

      (v18)(&v26, 0);

      return v13;
    }
  }

  result = sub_2531DAD44();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2531D4BD4(uint64_t a1, char a2)
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

  sub_2531DAD44();
LABEL_9:
  result = sub_2531DAC04();
  *v2 = result;
  return result;
}

uint64_t _s23HomeKitDaemonFoundation0A7InstallO16SocketEncryptionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v18 = *a1;
      if (v3 == v8 && v2 == v7)
      {
        sub_2531D5340(v18, v2, v10, v9, 0);
        sub_2531D5340(v3, v2, v5, v4, 0);
        sub_2531D53A4(v3, v2, v5, v4, 0);
        v13 = v3;
        v14 = v2;
        v15 = v10;
        v16 = v9;
        v17 = 0;
        goto LABEL_28;
      }

      v20 = sub_2531DB144();
      sub_2531D5340(v8, v7, v10, v9, 0);
      sub_2531D5340(v3, v2, v5, v4, 0);
      sub_2531D53A4(v3, v2, v5, v4, 0);
      v21 = v8;
      v22 = v7;
      v23 = v10;
      v24 = v9;
      v25 = 0;
LABEL_25:
      sub_2531D53A4(v21, v22, v23, v24, v25);
      return v20 & 1;
    }

    goto LABEL_22;
  }

  if (v6 != 1)
  {
    if (v11 == 2 && (v7 | v8 | v10 | v9) == 0)
    {
      sub_2531D53A4(*a1, v2, v5, v4, 2);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 2;
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v11 != 1)
  {
LABEL_22:
    sub_2531D5340(*a2, a2[1], v10, v9, v11);
    sub_2531D5340(v3, v2, v5, v4, v6);
    sub_2531D53A4(v3, v2, v5, v4, v6);
    v27 = v8;
    v28 = v7;
    v29 = v10;
    v30 = v9;
    v31 = v11;
LABEL_23:
    sub_2531D53A4(v27, v28, v29, v30, v31);
    return 0;
  }

  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (sub_2531DB144() & 1) == 0)
  {
    sub_2531D5340(v8, v7, v10, v9, 1);
    sub_2531D5340(v3, v2, v5, v4, 1);
    sub_2531D53A4(v3, v2, v5, v4, 1);
    v27 = v8;
    v28 = v7;
    v29 = v10;
    v30 = v9;
    v31 = 1;
    goto LABEL_23;
  }

  if (v5 != v10 || v4 != v9)
  {
    v20 = sub_2531DB144();
    sub_2531D5340(v8, v7, v10, v9, 1);
    sub_2531D5340(v3, v2, v5, v4, 1);
    sub_2531D53A4(v3, v2, v5, v4, 1);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 1;
    goto LABEL_25;
  }

  sub_2531D5340(v8, v7, v5, v4, 1);
  sub_2531D5340(v3, v2, v5, v4, 1);
  sub_2531D53A4(v3, v2, v5, v4, 1);
  v13 = v8;
  v14 = v7;
  v15 = v5;
  v16 = v4;
  v17 = 1;
LABEL_28:
  sub_2531D53A4(v13, v14, v15, v16, v17);
  return 1;
}

uint64_t sub_2531D505C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_2531DAD44();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_2531DAD44();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
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
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_2531D5180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_2531DAD44();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  v13 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v15 = sub_2531DAD44();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (!v16)
  {
    sub_2531D4BD4(result, 1);
    return sub_2531D505C(v9, v8, 1, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_23HomeKitDaemonFoundation0A7InstallO16SocketEncryptionO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_2531D5284(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_2531D52CC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2531D5314(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_2531D5340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

void sub_2531D53A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

uint64_t static HomeInstall.jsonEncoder.getter()
{
  v0 = sub_2531D9FE4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531DA014();
  swift_allocObject();
  v4 = sub_2531DA004();
  (*(v1 + 104))(v3, *MEMORY[0x277CC8778], v0);
  sub_2531D9FF4();
  return v4;
}

uint64_t static HomeInstall.jsonDecoder.getter()
{
  v0 = sub_2531D9FA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531D9FD4();
  swift_allocObject();
  v4 = sub_2531D9FC4();
  (*(v1 + 104))(v3, *MEMORY[0x277CC86D0], v0);
  sub_2531D9FB4();
  return v4;
}

double static SPAKE2PlusConfiguration.makeConfigurationForHomeInstall(password:serverIdentity:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2531D358C(0xD000000000000013, 0x80000002531DDAF0);
  v12 = v11;

  v13 = sub_2531D358C(a3, a4);
  v15 = v14;

  v16 = sub_2531D358C(a1, a2);
  *a5 = v10;
  *(a5 + 8) = v12;
  result = 0.0;
  *(a5 + 16) = xmmword_2531E9130;
  *(a5 + 32) = v13;
  *(a5 + 40) = v15;
  *(a5 + 48) = v16;
  *(a5 + 56) = v18;
  return result;
}

uint64_t static MTR.Cluster.BasicInformation.readName(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D99F0;

  return sub_2531D8930(a1, a2);
}

uint64_t static MTR.Cluster.BasicInformation.readModel(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D99F0;

  return sub_2531D8B80(a1, a2);
}

uint64_t static MTR.Cluster.BasicInformation.readManufacturer(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D58C4;

  return sub_2531D8CBC(a1, a2);
}

uint64_t sub_2531D58C4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t static MTR.Cluster.BasicInformation.readFirmwareVersion(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D99F0;

  return sub_2531D8DF8(a1, a2);
}

uint64_t static MTR.Cluster.BasicInformation.readFirmwareVersionNumber(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D5B3C;

  return sub_2531D8F34(a1, a2);
}

uint64_t sub_2531D5B3C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t static MTR.Cluster.BasicInformation.readSerialNumber(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2531D99F0;

  return sub_2531D91A0(a1, a2);
}

uint64_t static MTR.Cluster.BasicInformation.readRequiredAttributes(device:endpoint:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 56) = *a3;
  return MEMORY[0x2822009F8](sub_2531D5D18, 0, 0);
}

uint64_t sub_2531D5D18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E078, &qword_2531E9488);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_2531D5E28;
  v6 = *(v0 + 16);

  return MEMORY[0x282200740](v6, v3);
}

uint64_t sub_2531D5E28()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2531D5F64, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2531D5F64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531D5FC8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 106) = a4;
  *(v4 + 944) = a3;
  *(v4 + 936) = a2;
  *(v4 + 928) = a1;
  v5 = sub_2531DA274();
  *(v4 + 952) = v5;
  *(v4 + 960) = *(v5 - 8);
  *(v4 + 968) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E088, &unk_2531E95C8);
  *(v4 + 976) = v6;
  *(v4 + 984) = *(v6 - 8);
  *(v4 + 992) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  *(v4 + 1000) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531D6134, 0, 0);
}

uint64_t sub_2531D6134()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 106);
  v3 = *(v0 + 944);
  *(v0 + 204) = 1;
  v4 = sub_2531DA9B4();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  sub_25316B6E4(v3, v0 + 680);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  sub_253168604((v0 + 680), v6 + 32);
  *(v6 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E95E0, v6);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  v5(v1, 1, 1, v4);
  sub_25316B6E4(v3, v0 + 720);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  sub_253168604((v0 + 720), v7 + 32);
  *(v7 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E95F0, v7);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  v5(v1, 1, 1, v4);
  sub_25316B6E4(v3, v0 + 760);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  sub_253168604((v0 + 760), v8 + 32);
  *(v8 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E9600, v8);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  v5(v1, 1, 1, v4);
  sub_25316B6E4(v3, v0 + 800);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  sub_253168604((v0 + 800), v9 + 32);
  *(v9 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E9610, v9);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  v5(v1, 1, 1, v4);
  sub_25316B6E4(v3, v0 + 840);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  sub_253168604((v0 + 840), v10 + 32);
  *(v10 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E9620, v10);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  v5(v1, 1, 1, v4);
  sub_25316B6E4(v3, v0 + 880);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  sub_253168604((v0 + 880), v11 + 32);
  *(v11 + 72) = v2;
  sub_2531D6F9C(v1, &unk_2531E9630, v11);
  sub_2531AC3F8(v1, qword_27F58D800, &qword_2531E4FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E078, &qword_2531E9488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
  sub_2531DA9C4();
  *(v0 + 105) = 1;
  *(v0 + 108) = 0;
  *(v0 + 1008) = 0u;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 0u;
  *(v0 + 1056) = 0u;
  *(v0 + 1072) = 0u;
  v12 = swift_task_alloc();
  *(v0 + 1088) = v12;
  *v12 = v0;
  v12[1] = sub_2531D660C;
  v13 = *(v0 + 976);

  return MEMORY[0x2822004E8](v0 + 16, 0, 0, v13, v0 + 920);
}

uint64_t sub_2531D660C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 1040);
    v4 = *(v2 + 1008);
    *(v2 + 592) = *(v2 + 1024);
    *(v2 + 608) = v3;
    v5 = *(v2 + 1072);
    *(v2 + 624) = *(v2 + 1056);
    *(v2 + 640) = v5;
    v6 = *(v2 + 105);
    v7 = *(v2 + 108);
    *(v2 + 204) = v6;
    *(v2 + 656) = v7;
    *(v2 + 660) = v6;
    *(v2 + 664) = v4;
    sub_2531D99B4(v2 + 592);
    v8 = sub_2531D6C7C;
  }

  else
  {
    v8 = sub_2531D6758;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2531D6758()
{
  *(v0 + 185) = *(v0 + 89);
  v1 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v1;
  *(v0 + 176) = *(v0 + 80);
  v2 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v2;
  v3 = *(v0 + 200);
  if (v3 != 255)
  {
    if (v3)
    {
      sub_2531DA264();
      v4 = *(v0 + 160);
      *(v0 + 240) = *(v0 + 144);
      *(v0 + 256) = v4;
      *(v0 + 272) = *(v0 + 176);
      *(v0 + 281) = *(v0 + 185);
      v5 = *(v0 + 128);
      *(v0 + 208) = *(v0 + 112);
      *(v0 + 224) = v5;
      sub_2531B5834(v0 + 208, v0 + 304, &qword_27F58E078, &qword_2531E9488);
      v6 = sub_2531DA254();
      v7 = sub_2531DAA84();
      sub_2531AC3F8(v0 + 112, &qword_27F58E090, &qword_2531E9640);
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = *(v0 + 160);
        *(v0 + 432) = *(v0 + 144);
        *(v0 + 448) = v10;
        *(v0 + 464) = *(v0 + 176);
        *(v0 + 473) = *(v0 + 185);
        v11 = *(v0 + 128);
        *(v0 + 400) = *(v0 + 112);
        *(v0 + 416) = v11;
        sub_2531B5834(v0 + 400, v0 + 496, &qword_27F58E078, &qword_2531E9488);
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v12;
        *v9 = v12;
        _os_log_impl(&dword_253166000, v6, v7, "Task Failed with error %@", v8, 0xCu);
        sub_2531AC3F8(v9, &qword_27F58D2E8, &unk_2531E8370);
        MEMORY[0x259BFFA80](v9, -1, -1);
        MEMORY[0x259BFFA80](v8, -1, -1);
      }

      sub_2531AC3F8(v0 + 112, &qword_27F58E090, &qword_2531E9640);
      (*(*(v0 + 960) + 8))(*(v0 + 968), *(v0 + 952));
LABEL_24:
      v36 = swift_task_alloc();
      *(v0 + 1088) = v36;
      *v36 = v0;
      v36[1] = sub_2531D660C;
      v37 = *(v0 + 976);

      return MEMORY[0x2822004E8](v0 + 16, 0, 0, v37, v0 + 920);
    }

    v45 = *(v0 + 112);
    v23 = *(v0 + 192);
    v39 = *(v0 + 184);
    v24 = *(v0 + 176);
    v25 = *(v0 + 168);
    v41 = *(v0 + 160);
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(v0 + 136);
    v43 = *(v0 + 128);
    v29 = *(v0 + 120);
    v30 = *(v0 + 180);
    v31 = *(v0 + 1032);
    if (v29)
    {

      v31 = v29;
      v32 = *(v0 + 1048);
      if (v28)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v45 = *(v0 + 1024);
      v32 = *(v0 + 1048);
      if (v28)
      {
LABEL_11:

        v32 = v28;
        v33 = *(v0 + 1064);
        if (v26)
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    v43 = *(v0 + 1040);
    v33 = *(v0 + 1064);
    if (v26)
    {
LABEL_12:

      v33 = v26;
      v34 = *(v0 + 1080);
      if (v25)
      {
LABEL_13:

        v34 = v25;
LABEL_18:
        if (v30)
        {
          v24 = *(v0 + 108);
        }

        v35 = v30 & *(v0 + 105);
        if (v23)
        {

          sub_2531AC3F8(v0 + 112, &qword_27F58E090, &qword_2531E9640);
          *(v0 + 1016) = v23;
          *(v0 + 1008) = v39;
        }

        else
        {
          sub_2531AC3F8(v0 + 112, &qword_27F58E090, &qword_2531E9640);
        }

        *(v0 + 105) = v35 & 1;
        *(v0 + 108) = v24;
        *(v0 + 1080) = v34;
        *(v0 + 1072) = v41;
        *(v0 + 1064) = v33;
        *(v0 + 1056) = v27;
        *(v0 + 1048) = v32;
        *(v0 + 1040) = v43;
        *(v0 + 1032) = v31;
        *(v0 + 1024) = v45;
        goto LABEL_24;
      }

LABEL_17:
      v41 = *(v0 + 1072);
      goto LABEL_18;
    }

LABEL_16:
    v27 = *(v0 + 1056);
    v34 = *(v0 + 1080);
    if (v25)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v13 = *(v0 + 108);
  v14 = *(v0 + 1016);
  v15 = *(v0 + 1008);
  v16 = *(v0 + 992);
  v17 = *(v0 + 984);
  v18 = *(v0 + 976);
  v19 = *(v0 + 928);
  *(v0 + 204) = *(v0 + 105);
  v42 = *(v0 + 1056);
  v44 = *(v0 + 1024);
  v38 = *(v0 + 1072);
  v40 = *(v0 + 1040);
  (*(v17 + 8))(v16, v18);
  v20 = *(v0 + 204);
  *v19 = v44;
  *(v19 + 16) = v40;
  *(v19 + 32) = v42;
  *(v19 + 48) = v38;
  *(v19 + 64) = v13;
  *(v19 + 68) = v20;
  *(v19 + 72) = v15;
  *(v19 + 80) = v14;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2531D6C7C()
{
  (*(v0[123] + 8))(v0[124], v0[122]);

  v1 = v0[1];

  return v1();
}

uint64_t MTR.Cluster.BasicInformation.Information.init(name:model:manufacturer:firmwareVersion:firmwareVersionNumber:serialNumber:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, uint64_t a12, uint64_t a13)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13;
  return result;
}

uint64_t sub_2531D6D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 58) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D6E08;

  return sub_2531D8930(a4, (v5 + 58));
}

uint64_t sub_2531D6E08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v7 = sub_2531D99E8;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v7 = sub_2531D6F3C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2531D6F3C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 64) = 0;
  *(v3 + 8) = v2;
  *(v3 + 64) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 68) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  LOBYTE(v2) = *(v0 + 64);
  v4 = *(v0 + 16);
  *v4 = v1;
  *(v4 + 88) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_2531D6F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_2531B5834(a1, v18 - v8, qword_27F58D800, &qword_2531E4FD0);
  v10 = sub_2531DA9B4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2531AC3F8(v9, qword_27F58D800, &qword_2531E4FD0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_2531DA944();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2531DA9A4();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E078, &qword_2531E9488);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_2531D7198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 58) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D7254;

  return sub_2531D8B80(a4, (v5 + 58));
}

uint64_t sub_2531D7254(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v7 = sub_2531D73EC;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v7 = sub_2531D7388;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2531D7388()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 64) = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 64) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 68) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  LOBYTE(v1) = *(v0 + 64);
  v4 = *(v0 + 16);
  *v4 = *(v0 + 32);
  *(v4 + 88) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D73EC()
{
  *(v0 + 56) = 1;
  v1 = *(v0 + 16);
  *v1 = *(v0 + 32);
  *(v1 + 88) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 58) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D74D8;

  return sub_2531D8CBC(a4, (v5 + 58));
}

uint64_t sub_2531D74D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v7 = sub_2531D99E8;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v7 = sub_2531D760C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2531D760C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 64) = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v1;
  *(v3 + 64) = 0;
  *(v3 + 40) = v2;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 68) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  LOBYTE(v1) = *(v0 + 64);
  v4 = *(v0 + 16);
  *v4 = *(v0 + 32);
  *(v4 + 88) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D7670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 58) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D772C;

  return sub_2531D8DF8(a4, (v5 + 58));
}

uint64_t sub_2531D772C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v7 = sub_2531D99E8;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v7 = sub_2531D7860;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2531D7860()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 64) = 0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0;
  *(v3 + 48) = v1;
  *(v3 + 56) = v2;
  *(v3 + 64) = 0;
  *(v3 + 68) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  LOBYTE(v1) = *(v0 + 64);
  v4 = *(v0 + 16);
  *v4 = *(v0 + 32);
  *(v4 + 88) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D78C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 42) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D7984;

  return sub_2531D8F34(a4, (v5 + 42));
}

uint64_t sub_2531D7984(int a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = sub_2531D7B10;
  }

  else
  {
    *(v4 + 44) = a1;
    v5 = sub_2531D7AAC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2531D7AAC()
{
  v1 = *(v0 + 44);
  v2 = *(v0 + 16);
  *(v0 + 48) = 0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  *(v2 + 64) = v1;
  *(v2 + 68) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  LOBYTE(v1) = *(v0 + 48);
  v3 = *(v0 + 16);
  *v3 = *(v0 + 32);
  *(v3 + 88) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D7B10()
{
  *(v0 + 40) = 1;
  v1 = *(v0 + 16);
  *v1 = *(v0 + 32);
  *(v1 + 88) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_2531D7B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 58) = a5;
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_2531D7BFC;

  return sub_2531D91A0(a4, (v5 + 58));
}

uint64_t sub_2531D7BFC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v7 = sub_2531D99E8;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v7 = sub_2531D7D30;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2531D7D30()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 64) = 0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 52) = 0u;
  *(v3 + 68) = 1;
  *(v3 + 72) = v1;
  *(v3 + 80) = v2;
  LOBYTE(v1) = *(v0 + 64);
  v4 = *(v0 + 16);
  *v4 = *(v0 + 32);
  *(v4 + 88) = v1;
  return (*(v0 + 8))();
}

uint64_t *MTR.Cluster.BasicInformation.Information.merge(with:)(uint64_t *result)
{
  v2 = result[1];
  v3 = result[3];
  v16 = result[2];
  v17 = result[4];
  v4 = result[5];
  v5 = result[6];
  v6 = result[7];
  v7 = *(result + 16);
  v8 = *(result + 68);
  v10 = result[9];
  v9 = result[10];
  if (v2)
  {
    v14 = result[6];
    v15 = result[10];
    v11 = *result;
    v12 = *(result + 68);
    v13 = *(result + 16);

    v7 = v13;
    v8 = v12;

    *v1 = v11;
    *(v1 + 8) = v2;
    v5 = v14;
    v9 = v15;
  }

  if (v3)
  {

    *(v1 + 16) = v16;
    *(v1 + 24) = v3;
  }

  if (v4)
  {

    *(v1 + 32) = v17;
    *(v1 + 40) = v4;
  }

  if (v6)
  {

    *(v1 + 48) = v5;
    *(v1 + 56) = v6;
  }

  if ((v8 & 1) == 0)
  {
    *(v1 + 64) = v7;
    *(v1 + 68) = 0;
  }

  if (v9)
  {

    *(v1 + 72) = v10;
    *(v1 + 80) = v9;
  }

  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MTR.Cluster.BasicInformation.Information.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.model.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MTR.Cluster.BasicInformation.Information.model.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.manufacturer.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MTR.Cluster.BasicInformation.Information.manufacturer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.firmwareVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MTR.Cluster.BasicInformation.Information.firmwareVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.firmwareVersionNumber.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.serialNumber.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t MTR.Cluster.BasicInformation.Information.serialNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t MTR.Cluster.BasicInformation.Information.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[7];
  v20 = v0[6];
  v8 = v0[10];
  v21 = v0[9];

  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000017, 0x80000002531DDB10);
  if (v1)
  {
    v9 = v2;
  }

  else
  {
    v9 = 45;
  }

  if (!v1)
  {
    v1 = 0xE100000000000000;
  }

  MEMORY[0x259BFE570](v9, v1);

  MEMORY[0x259BFE570](0x3A6C65646F6D202CLL, 0xE900000000000020);
  if (v3)
  {
    v10 = v4;
  }

  else
  {
    v10 = 45;
  }

  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0xE100000000000000;
  }

  MEMORY[0x259BFE570](v10, v11);

  MEMORY[0x259BFE570](0xD000000000000010, 0x80000002531DDB30);
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = 45;
  }

  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0xE100000000000000;
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0xD000000000000013, 0x80000002531DDB50);
  if (v7)
  {
    v14 = v20;
  }

  else
  {
    v14 = 45;
  }

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0xE100000000000000;
  }

  MEMORY[0x259BFE570](v14, v15);

  MEMORY[0x259BFE570](47, 0xE100000000000000);
  v16 = sub_2531DAF34();
  MEMORY[0x259BFE570](v16);

  MEMORY[0x259BFE570](0xD000000000000010, 0x80000002531DDB70);
  if (v8)
  {
    v17 = v21;
  }

  else
  {
    v17 = 45;
  }

  if (v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = 0xE100000000000000;
  }

  MEMORY[0x259BFE570](v17, v18);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t MTR.Cluster.BasicInformation.Information.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  v5 = *(v1 + 68);
  v6 = *(v1 + 80);
  if (*(v1 + 8))
  {
    sub_2531DB414();
    sub_2531DA734();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_2531DB414();
    if (v2)
    {
LABEL_3:
      sub_2531DB414();
      sub_2531DA734();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_2531DB414();
  if (v3)
  {
LABEL_4:
    sub_2531DB414();
    sub_2531DA734();
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_2531DB414();
  if (v4)
  {
LABEL_5:
    sub_2531DB414();
    sub_2531DA734();
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_2531DB414();
    sub_2531DB434();
    if (v6)
    {
      goto LABEL_7;
    }

    return sub_2531DB414();
  }

LABEL_13:
  sub_2531DB414();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_2531DB414();
  if (!v6)
  {
    return sub_2531DB414();
  }

LABEL_7:
  sub_2531DB414();

  return sub_2531DA734();
}

uint64_t MTR.Cluster.BasicInformation.Information.hashValue.getter()
{
  sub_2531DB3F4();
  MTR.Cluster.BasicInformation.Information.hash(into:)(v1);
  return sub_2531DB454();
}

uint64_t sub_2531D8600()
{
  sub_2531DB3F4();
  MTR.Cluster.BasicInformation.Information.hash(into:)(v1);
  return sub_2531DB454();
}

uint64_t sub_2531D8644(uint64_t a1)
{
  sub_2531DB3F4();
  MTR.Cluster.BasicInformation.Information.hash(into:)(v2);
  return sub_2531DB454();
}

BOOL _s23HomeKitDaemonFoundation3MTRO7ClusterO16BasicInformationO0H0V2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = *(a1 + 16);
  v11 = *(a1 + 68);
  v12 = a1[9];
  v13 = a1[10];
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v17 = *(a2 + 24);
  v16 = *(a2 + 32);
  v19 = *(a2 + 40);
  v18 = *(a2 + 48);
  v20 = *(a2 + 56);
  v21 = *(a2 + 64);
  v22 = *(a2 + 68);
  v24 = *(a2 + 72);
  v23 = *(a2 + 80);
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v59 = *(a2 + 32);
      v61 = *(a2 + 40);
      v56 = *(a2 + 68);
      v53 = *(a1 + 68);
      v51 = *(a1 + 16);
      v49 = *(a2 + 80);
      v50 = *(a2 + 72);
      v47 = *(a2 + 16);
      v48 = a1[10];
      v25 = a1[9];
      v63 = a1[6];
      v26 = a1[7];
      v27 = *(a2 + 56);
      v28 = *(a2 + 48);
      v29 = a1[5];
      v30 = a1[4];
      v31 = a1[2];
      v32 = sub_2531DB144();
      v4 = v31;
      v16 = v59;
      v19 = v61;
      v5 = v30;
      v8 = v29;
      v18 = v28;
      v20 = v27;
      v9 = v26;
      v7 = v63;
      v12 = v25;
      v15 = v47;
      v13 = v48;
      v23 = v49;
      v24 = v50;
      v10 = v51;
      v11 = v53;
      v22 = v56;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v15 || v6 != v17)
    {
      v57 = v20;
      v60 = v16;
      v52 = v8;
      v54 = v12;
      v62 = v19;
      v64 = v7;
      v33 = v9;
      v34 = v18;
      v35 = v5;
      v36 = sub_2531DB144();
      v16 = v60;
      v19 = v62;
      v5 = v35;
      v8 = v52;
      v12 = v54;
      v18 = v34;
      v20 = v57;
      v9 = v33;
      v7 = v64;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v8)
  {
    if (!v19)
    {
      return 0;
    }

    if (v5 != v16 || v8 != v19)
    {
      v58 = v22;
      v55 = v12;
      v37 = v7;
      v38 = v9;
      v39 = v20;
      v40 = v18;
      v41 = sub_2531DB144();
      v18 = v40;
      v20 = v39;
      v9 = v38;
      v7 = v37;
      v12 = v55;
      v22 = v58;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v9)
  {
    if (!v20)
    {
      return 0;
    }

    if (v7 != v18 || v9 != v20)
    {
      v42 = v22;
      v43 = v12;
      v44 = sub_2531DB144();
      v12 = v43;
      v22 = v42;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v11)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v21)
    {
      v45 = v22;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  if (v13)
  {
    return v23 && (v12 == v24 && v13 == v23 || (sub_2531DB144() & 1) != 0);
  }

  return !v23;
}

uint64_t sub_2531D8930(uint64_t a1, _WORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 92) = *a2;
  return MEMORY[0x2822009F8](sub_2531D8958, 0, 0);
}

uint64_t sub_2531D8958()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 56);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 80) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 84) = 0x500000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_2531D8A6C;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83808];
  v8 = MEMORY[0x277D837D0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 80, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D8A6C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2531D99E4;
  }

  else
  {
    v2 = sub_2531D99EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2531D8B80(uint64_t a1, _WORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 92) = *a2;
  return MEMORY[0x2822009F8](sub_2531D8BA8, 0, 0);
}

uint64_t sub_2531D8BA8()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 56);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 80) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 84) = 0x300000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_2531D8A6C;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83808];
  v8 = MEMORY[0x277D837D0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 80, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D8CBC(uint64_t a1, _WORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 92) = *a2;
  return MEMORY[0x2822009F8](sub_2531D8CE4, 0, 0);
}

uint64_t sub_2531D8CE4()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 56);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 80) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 84) = 0x100000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_25317508C;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83808];
  v8 = MEMORY[0x277D837D0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 80, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D8DF8(uint64_t a1, _WORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 92) = *a2;
  return MEMORY[0x2822009F8](sub_2531D8E20, 0, 0);
}

uint64_t sub_2531D8E20()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 56);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 80) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 84) = 0xA00000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_2531D8A6C;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83808];
  v8 = MEMORY[0x277D837D0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 80, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D8F34(uint64_t a1, _WORD *a2)
{
  *(v2 + 40) = a1;
  *(v2 + 80) = *a2;
  return MEMORY[0x2822009F8](sub_2531D8F5C, 0, 0);
}

uint64_t sub_2531D8F5C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 64) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 68) = 0x900000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2531D9070;
  v6 = MEMORY[0x277D84CC0];
  v7 = MEMORY[0x277D84CF0];
  v8 = MEMORY[0x277D84CC0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 76, v0 + 64, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D9070()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2531748A0;
  }

  else
  {
    v2 = sub_2531D9184;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2531D91A0(uint64_t a1, _WORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 92) = *a2;
  return MEMORY[0x2822009F8](sub_2531D91C8, 0, 0);
}

uint64_t sub_2531D91C8()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 56);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 80) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 84) = 0xF00000028;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_2531D8A6C;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D83808];
  v8 = MEMORY[0x277D837D0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 80, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531D92DC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_253170628;

  return sub_2531D5FC8(a1, a2, v6, v7);
}

unint64_t sub_2531D9398()
{
  result = qword_27F58E080;
  if (!qword_27F58E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58E080);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2531D9420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t sub_2531D947C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2531D94F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170628;

  return sub_2531D6D4C(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_2531D95B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170160;

  return sub_2531D7198(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_2531D9674(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170628;

  return sub_2531D741C(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_2531D9734(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170628;

  return sub_2531D7670(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_2531D97F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170628;

  return sub_2531D78C8(a1, v4, v5, v1 + 32, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_2531D98F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170628;

  return sub_2531D7B40(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_2531D9A14()
{
  v0 = sub_2531DA274();
  __swift_allocate_value_buffer(v0, qword_27F59A2A8);
  __swift_project_value_buffer(v0, qword_27F59A2A8);
  sub_2531DA6D4();
  return sub_2531DA264();
}

void static MTR.accessGrant(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 subjectID];
  if (v4)
  {
    v5 = v4;
    MTR.Node.ID.init(rawValue:)([v4 unsignedLongLongValue], &v10);
    v6 = v10;
    v7 = v11;
    v8 = [a1 grantedPrivilege];

    v9 = v7 | (v8 << 8);
  }

  else
  {
    v6 = [a1 grantedPrivilege];
    v9 = 128;
  }

  *a2 = v6;
  *(a2 + 8) = v9;
}

uint64_t MTR.AccessGrant.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      MEMORY[0x259BFF230](1);
      sub_2531DB424();
    }

    else
    {
      MEMORY[0x259BFF230](2);
    }
  }

  else
  {
    MEMORY[0x259BFF230](0);
    if (v2 <= 2u)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          v1 = v1 | 0xFFFFFFFE00000000;
        }

        else
        {
          v6 = v1 | 0xFF00;
          if (BYTE2(v1) != 1)
          {
            v6 = 0;
          }

          if (BYTE2(v1))
          {
            v7 = v6;
          }

          else
          {
            v7 = v1;
          }

          v1 = *&v7 | 0xFFFFFFFFFFFF0000;
        }
      }
    }

    else
    {
      if (v2 == 5)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      v4 = v1 | 0xFFFFFFFB00000000;
      if (v2 != 3)
      {
        v4 = v1 | 0xFFFFFFFD00000000;
      }

      if (v2 <= 4u)
      {
        v1 = v4;
      }

      else
      {
        v1 = v3;
      }
    }

    MEMORY[0x259BFF270](v1);
  }

  return sub_2531DB414();
}

uint64_t MTR.AccessGrant.hashValue.getter()
{
  sub_2531DB3F4();
  MTR.AccessGrant.hash(into:)();
  return sub_2531DB454();
}

uint64_t sub_2531D9CB0()
{
  sub_2531DB3F4();
  MTR.AccessGrant.hash(into:)();
  return sub_2531DB454();
}

uint64_t sub_2531D9D08(uint64_t a1)
{
  sub_2531DB3F4();
  MTR.AccessGrant.hash(into:)();
  return sub_2531DB454();
}

BOOL _s23HomeKitDaemonFoundation3MTRO11AccessGrantO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v4 >> 6)
  {
    if (v4 >> 6 == 1)
    {
      if ((v6 & 0xC0) != 0x40)
      {
        return 0;
      }

      v7 = v3;
      v8 = *a2;
      v9 = v3 | 0xFF00;
      if (BYTE2(v3) != 1)
      {
        v9 = 0;
      }

      if (BYTE2(v3))
      {
        v7 = v9;
      }

      if (BYTE2(v5))
      {
        if (BYTE2(v5) != 1)
        {
          if (!v7)
          {
            return BYTE3(v3) == BYTE3(v5);
          }

          return 0;
        }

        v8 |= 0xFF00u;
      }

      if (v7 == v8)
      {
        return BYTE3(v3) == BYTE3(v5);
      }

      return 0;
    }

    return (v6 & 0xC0) == 0x80 && v3 == v5;
  }

  else
  {
    if ((v6 & 0xC0) != 0)
    {
      return 0;
    }

    return sub_253198C54(v3, v4, v5, v6) && (v6 ^ v4) < 0x100;
  }
}

unint64_t sub_2531D9E50()
{
  result = qword_27F58E098;
  if (!qword_27F58E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58E098);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s11AccessGrantOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 10))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 8) >> 1) & 0x1C | (*(a1 + 8) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s11AccessGrantOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 8) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 8 * ((((-a2 >> 2) & 7) - 8 * a2) & 0x1F);
    }
  }

  return result;
}