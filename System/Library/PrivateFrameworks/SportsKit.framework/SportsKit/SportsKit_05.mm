uint64_t sub_26B6927B0(unint64_t a1)
{
  v3 = sub_26B6B8B04();
  v4 = sub_26B6B8B04();
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_26B693484(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26B6939CC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_26B69285C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B693524(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409038, &unk_26B6F8D00);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_26B692974(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B692998(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for SportingEventPlay();
      result = sub_26B6E9C94();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26B6929F4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26B63F508(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  result = sub_26B6EA554();
  if (result >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = (v2 + 32);
      while (2)
      {
        v13 = *(v2 + 32 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          if (*(v13 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
          {
            __break(1u);
LABEL_16:
            __break(1u);
            return result;
          }

          v16 = *v15;
          v17 = *v15 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
          if (*(v17 + 8))
          {
            goto LABEL_16;
          }

          if (*(v13 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) >= *v17)
          {
            break;
          }

          *v15 = v13;
          v15[1] = v16;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
        if (v11 != v4)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = (v4 >> 1);
    v8 = sub_26B692998(v4 >> 1);
    v19[0] = v9;
    v19[1] = v7;
    sub_26B692B3C(v19, v21, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_26B6EA204();
}

void sub_26B692B3C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v105 = MEMORY[0x277D84F90];
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5 + 1;
      if (v5 + 1 < v4)
      {
        v8 = *a3;
        v9 = *(*a3 + 8 * v7) + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v9 + 8))
        {
          goto LABEL_163;
        }

        v10 = *(v8 + 8 * v5) + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v10 + 8))
        {
          goto LABEL_164;
        }

        v11 = *v9;
        v12 = *v10;
        v13 = v8 + 8 * v5;
        v14 = 8 * v5;
        v15 = (v13 + 16);
        v16 = v5 + 2;
        while (1)
        {
          v17 = v16;
          if (v7 + 1 >= v4)
          {
            break;
          }

          v18 = *v15 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
          if (*(v18 + 8))
          {
            goto LABEL_159;
          }

          v19 = *(v15 - 1) + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
          if (*(v19 + 8))
          {
            goto LABEL_160;
          }

          v20 = (v11 < v12) ^ (*v18 >= *v19);
          ++v15;
          ++v7;
          v16 = v17 + 1;
          if ((v20 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v7 = v4;
LABEL_13:
        if (v11 < v12)
        {
          if (v7 < v5)
          {
            goto LABEL_152;
          }

          if (v5 < v7)
          {
            if (v4 >= v17)
            {
              v4 = v17;
            }

            v21 = 8 * v4 - 8;
            v22 = v7;
            v23 = v5;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_161;
                }

                v25 = *(v24 + v14);
                *(v24 + v14) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 8;
              v14 += 8;
            }

            while (v23 < v22);
            v4 = a3[1];
          }
        }
      }

      if (v7 < v4)
      {
        if (__OFSUB__(v7, v5))
        {
          goto LABEL_147;
        }

        if (v7 - v5 < a4)
        {
          if (__OFADD__(v5, a4))
          {
            goto LABEL_153;
          }

          if (v5 + a4 < v4)
          {
            v4 = v5 + a4;
          }

          if (v4 < v5)
          {
            goto LABEL_154;
          }

          if (v7 != v4)
          {
            v26 = *a3;
            v27 = *a3 + 8 * v7 - 8;
            v28 = v5 - v7;
            do
            {
              v29 = *(v26 + 8 * v7);
              v30 = v28;
              v31 = v27;
              do
              {
                if (*(v29 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
                {
                  goto LABEL_155;
                }

                v32 = *v31;
                v33 = *v31 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
                if (*(v33 + 8))
                {
                  goto LABEL_156;
                }

                if (*(v29 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) >= *v33)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_157;
                }

                *v31 = v29;
                v31[1] = v32;
                --v31;
                v82 = __CFADD__(v30++, 1);
              }

              while (!v82);
              ++v7;
              v27 += 8;
              --v28;
            }

            while (v7 != v4);
            v7 = v4;
          }
        }
      }

      if (v7 < v5)
      {
        goto LABEL_146;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B63A97C(0, *(v6 + 16) + 1, 1, v6);
        v6 = v94;
      }

      v35 = *(v6 + 16);
      v34 = *(v6 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        sub_26B63A97C(v34 > 1, v35 + 1, 1, v6);
        v6 = v95;
      }

      *(v6 + 16) = v36;
      v37 = v6 + 32;
      v38 = (v6 + 32 + 16 * v35);
      *v38 = v5;
      v38[1] = v7;
      v98 = v7;
      v39 = *result;
      if (!*result)
      {
        goto LABEL_162;
      }

      if (v35)
      {
        break;
      }

LABEL_127:
      v4 = a3[1];
      v5 = v98;
      if (v98 >= v4)
      {
        v105 = v6;
        goto LABEL_129;
      }
    }

    v99 = v6 + 32;
    v100 = v6;
    while (1)
    {
      v40 = v36 - 1;
      v41 = (v37 + 16 * (v36 - 1));
      v42 = (v6 + 16 * v36);
      if (v36 >= 4)
      {
        break;
      }

      if (v36 == 3)
      {
        v43 = *(v6 + 32);
        v44 = *(v6 + 40);
        v53 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        v46 = v53;
LABEL_63:
        if (v46)
        {
          goto LABEL_137;
        }

        v58 = *v42;
        v57 = v42[1];
        v59 = __OFSUB__(v57, v58);
        v60 = v57 - v58;
        v61 = v59;
        if (v59)
        {
          goto LABEL_140;
        }

        v62 = v41[1];
        v63 = v62 - *v41;
        if (__OFSUB__(v62, *v41))
        {
          goto LABEL_143;
        }

        if (__OFADD__(v60, v63))
        {
          goto LABEL_144;
        }

        if (v60 + v63 >= v45)
        {
          if (v45 < v63)
          {
            v40 = v36 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_77;
      }

      v64 = *v42;
      v65 = v42[1];
      v53 = __OFSUB__(v65, v64);
      v60 = v65 - v64;
      v61 = v53;
LABEL_77:
      if (v61)
      {
        goto LABEL_139;
      }

      v67 = *v41;
      v66 = v41[1];
      v53 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v53)
      {
        goto LABEL_142;
      }

      if (v68 < v60)
      {
        goto LABEL_127;
      }

LABEL_84:
      if (v40 - 1 >= v36)
      {
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
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
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
        return;
      }

      v72 = *a3;
      if (!*a3)
      {
        goto LABEL_158;
      }

      v103 = (v37 + 16 * (v40 - 1));
      v104 = v40;
      v73 = *v103;
      v102 = (v37 + 16 * v40);
      v74 = v102[1];
      v75 = (v72 + 8 * *v103);
      v76 = (v72 + 8 * *v102);
      v77 = (v72 + 8 * v74);
      v78 = 8 * *v102 - 8 * *v103;
      v79 = 8 * v74 - 8 * *v102;
      if (v78 >> 3 < v79 >> 3)
      {
        sub_26B63E4F8((v72 + 8 * v73), v78 >> 3, v39);
        v80 = &v39[v78];
        v81 = v39;
        while (1)
        {
          v82 = v81 >= v80 || v76 >= v77;
          if (v82)
          {
            v76 = v75;
            goto LABEL_117;
          }

          v83 = *v76;
          v84 = *v76 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
          if (*(v84 + 8))
          {
            goto LABEL_148;
          }

          v85 = *v81 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
          if (*(v85 + 8))
          {
            goto LABEL_150;
          }

          if (*v84 >= *v85)
          {
            break;
          }

          v86 = v75 == v76;
          v76 += 8;
          if (!v86)
          {
            goto LABEL_99;
          }

LABEL_100:
          v75 += 8;
        }

        v83 = *v81;
        v86 = v75 == v81;
        v81 += 8;
        if (v86)
        {
          goto LABEL_100;
        }

LABEL_99:
        *v75 = v83;
        goto LABEL_100;
      }

      sub_26B63E4F8((v72 + 8 * *v102), v79 >> 3, v39);
      v80 = &v39[v79];
LABEL_102:
      v87 = v76 - 8;
      for (v77 -= 8; v80 > v39 && v75 < v76; v77 -= 8)
      {
        v89 = *(v80 - 1);
        if (*(v89 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
        {
          goto LABEL_149;
        }

        v90 = *v87 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v90 + 8))
        {
          goto LABEL_151;
        }

        if (*(v89 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) < *v90)
        {
          v86 = v77 + 8 == v76;
          v76 -= 8;
          if (!v86)
          {
            *v77 = *v87;
            v76 = v87;
          }

          goto LABEL_102;
        }

        if (v80 != v77 + 8)
        {
          *v77 = v89;
        }

        v80 -= 8;
      }

      v81 = v39;
LABEL_117:
      v91 = (v80 - v81) / 8;
      v92 = v76 != v81 || v76 >= &v81[8 * v91];
      v6 = v100;
      if (v92)
      {
        memmove(v76, v81, 8 * v91);
      }

      if (v74 < v73)
      {
        goto LABEL_132;
      }

      v93 = *(v100 + 16);
      if (v104 > v93)
      {
        goto LABEL_133;
      }

      *v103 = v73;
      v103[1] = v74;
      if (v104 >= v93)
      {
        goto LABEL_134;
      }

      v36 = v93 - 1;
      sub_26B63F530((v102 + 2), v93 - 1 - v104, v102);
      *(v100 + 16) = v93 - 1;
      v37 = v99;
      if (v93 <= 2)
      {
        goto LABEL_127;
      }
    }

    v47 = v37 + 16 * v36;
    v48 = *(v47 - 64);
    v49 = *(v47 - 56);
    v53 = __OFSUB__(v49, v48);
    v50 = v49 - v48;
    if (v53)
    {
      goto LABEL_135;
    }

    v52 = *(v47 - 48);
    v51 = *(v47 - 40);
    v53 = __OFSUB__(v51, v52);
    v45 = v51 - v52;
    v46 = v53;
    if (v53)
    {
      goto LABEL_136;
    }

    v54 = v42[1];
    v55 = v54 - *v42;
    if (__OFSUB__(v54, *v42))
    {
      goto LABEL_138;
    }

    v53 = __OFADD__(v45, v55);
    v56 = v45 + v55;
    if (v53)
    {
      goto LABEL_141;
    }

    if (v56 >= v50)
    {
      v70 = *v41;
      v69 = v41[1];
      v53 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v53)
      {
        goto LABEL_145;
      }

      if (v45 < v71)
      {
        v40 = v36 - 2;
      }

      goto LABEL_84;
    }

    goto LABEL_63;
  }

LABEL_129:
  if (!*result)
  {
    goto LABEL_165;
  }

  sub_26B6931D0(&v105, *result, a3);
}

uint64_t sub_26B6931D0(char **a1, char *a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_2:
  for (*a1 = v4; ; v4 = *a1)
  {
    v6 = *(v4 + 2);
    if (v6 < 2)
    {
      break;
    }

    v7 = *a3;
    if (!*a3)
    {
      goto LABEL_55;
    }

    v8 = *&v4[16 * v6];
    v9 = (v7 + 8 * v8);
    v10 = 8 * *&v4[16 * v6 + 16];
    v11 = (v7 + v10);
    v12 = 8 * *&v4[16 * v6 + 24];
    v32 = *&v4[16 * v6 + 24];
    v13 = (v7 + v12);
    v33 = v8;
    v14 = v10 - 8 * v8;
    v15 = v12 - v10;
    if (v14 >> 3 < (v12 - v10) >> 3)
    {
      result = sub_26B63E4F8((v7 + 8 * v8), v14 >> 3, a2);
      v16 = &a2[v14];
      v17 = a2;
      while (1)
      {
        if (v17 >= v16 || v11 >= v13)
        {
          v11 = v9;
          goto LABEL_36;
        }

        v19 = *v11;
        v20 = *v11 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v20 + 8))
        {
          goto LABEL_53;
        }

        v21 = *v17 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v21 + 8))
        {
          __break(1u);
          goto LABEL_52;
        }

        if (*v20 >= *v21)
        {
          break;
        }

        v22 = v9 == v11;
        v11 += 8;
        if (!v22)
        {
          goto LABEL_18;
        }

LABEL_19:
        v9 += 8;
      }

      v19 = *v17;
      v22 = v9 == v17;
      v17 += 8;
      if (v22)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v9 = v19;
      goto LABEL_19;
    }

    result = sub_26B63E4F8((v7 + v10), v15 >> 3, a2);
    v16 = &a2[v15];
LABEL_21:
    v23 = v11 - 8;
    for (v13 -= 8; v16 > a2 && v9 < v11; v13 -= 8)
    {
      v25 = *(v16 - 1);
      if (*(v25 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return result;
      }

      v26 = *v23 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
      if (*(v26 + 8))
      {
        goto LABEL_54;
      }

      if (*(v25 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) < *v26)
      {
        v22 = v13 + 8 == v11;
        v11 -= 8;
        if (!v22)
        {
          *v13 = *v23;
          v11 = v23;
        }

        goto LABEL_21;
      }

      if (v16 != v13 + 8)
      {
        *v13 = v25;
      }

      v16 -= 8;
    }

    v17 = a2;
LABEL_36:
    v27 = (v16 - v17) / 8;
    if (v11 != v17 || v11 >= &v17[8 * v27])
    {
      memmove(v11, v17, 8 * v27);
    }

    if (v32 < v33)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      result = sub_26B63F2BC(v4);
      v4 = result;
      goto LABEL_2;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_26B63F2BC(v4);
    }

    if ((v6 - 2) >= *(v4 + 2))
    {
      goto LABEL_49;
    }

    v29 = &v4[16 * v6];
    *v29 = v33;
    *(v29 + 1) = v32;
    *a1 = v4;
    result = sub_26B63F230(v6 - 1);
  }

  return 1;
}

uint64_t sub_26B693484(uint64_t a1, char a2)
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

  sub_26B6EA324();
LABEL_9:
  result = sub_26B6EA184();
  *v2 = result;
  return result;
}

void sub_26B693524(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_26B63AC9C(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

void (*sub_26B69358C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_26B692968(a3);
  sub_26B692974(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D67DB30](a2, a3);
  }

  *a1 = v7;
  return sub_26B693618;
}

uint64_t sub_26B693620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26B6936A8()
{
  result = qword_28040A498;
  if (!qword_28040A498)
  {
    sub_26B67826C(255, &qword_2810CDBA8, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A498);
  }

  return result;
}

void *sub_26B69373C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_26B6EA324();
    if (v4)
    {
      v5 = v4;
      v2 = sub_26B6E3B94(v4, 0);
      sub_26B6939CC((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t type metadata accessor for PlaysStore(uint64_t a1)
{
  result = qword_2810CE6A8;
  if (!qword_2810CE6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B693824(uint64_t a1)
{
  result = sub_26B6E93B4();
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

uint64_t sub_26B6939CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_26B6EA324();
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
    result = sub_26B6B8B04();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for SportingEventPlay();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_26B689EC8(&qword_28040A4A8, &qword_280409E40, &qword_26B6F3670, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E40, &qword_26B6F3670);
          v9 = sub_26B69358C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
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

unint64_t sub_26B693B54()
{
  result = qword_28040A4B0;
  if (!qword_28040A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4B0);
  }

  return result;
}

unint64_t sub_26B693BA8()
{
  result = qword_28040A4C0;
  if (!qword_28040A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4C0);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_5Tm()
{

  OUTLINED_FUNCTION_20_5();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

_BYTE *storeEnumTagSinglePayload for PlaysStore.PlayStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B693D94()
{
  result = qword_28040A4C8;
  if (!qword_28040A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_10(unint64_t *a1)
{
  v4 = MEMORY[0x277CBCD90];

  return sub_26B689EC8(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_9_7(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CBCD60];

  return sub_26B689EC8(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_33_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_34_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return sub_26B645A94(v0, v1);
}

SportsKit::Sport __swiftcall Sport.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B6E9A84();
  v5 = v4;

  v6 = v3 == 0x6C6C616265736162 && v5 == 0xE800000000000000;
  if (v6 || (OUTLINED_FUNCTION_2_10(0x6C6C616265736162) & 1) != 0 || (v3 == 0xD000000000000020 ? (v7 = 0x800000026B6FC3A0 == v5) : (v7 = 0), v7 || (OUTLINED_FUNCTION_2_10(0xD000000000000020) & 1) != 0))
  {

    v9 = 0;
  }

  else
  {
    v10 = v3 == 0x616274656B736162 && v5 == 0xEA00000000006C6CLL;
    if (v10 || (OUTLINED_FUNCTION_2_10(0x616274656B736162) & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v12 = v11 == v5) : (v12 = 0), v12 || (OUTLINED_FUNCTION_0_11() & 1) != 0))
    {

      v9 = 1;
    }

    else
    {
      v13 = v3 == 0x6C6C6162746F6F66 && v5 == 0xE800000000000000;
      if (v13 || (OUTLINED_FUNCTION_2_10(0x6C6C6162746F6F66) & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v15 = v14 == v5) : (v15 = 0), v15 || (OUTLINED_FUNCTION_0_11() & 1) != 0))
      {

        v9 = 2;
      }

      else
      {
        v16 = v3 == 0x79656B636F68 && v5 == 0xE600000000000000;
        if (v16 || (OUTLINED_FUNCTION_2_10(0x79656B636F68) & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v18 = v17 == v5) : (v18 = 0), v18 || (OUTLINED_FUNCTION_0_11() & 1) != 0))
        {

          v9 = 3;
        }

        else
        {
          v19 = v3 == 0x7962677572 && v5 == 0xE500000000000000;
          if (v19 || (OUTLINED_FUNCTION_2_10(0x7962677572) & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v21 = v20 == v5) : (v21 = 0), v21 || (OUTLINED_FUNCTION_0_11() & 1) != 0))
          {

            v9 = 4;
          }

          else
          {
            v22 = v3 == 0x726563636F73 && v5 == 0xE600000000000000;
            if (v22 || (OUTLINED_FUNCTION_2_10(0x726563636F73) & 1) != 0 || (v3 == 0xD000000000000020 ? (v23 = 0x800000026B6FC490 == v5) : (v23 = 0), v23 || (OUTLINED_FUNCTION_2_10(0xD000000000000020) & 1) != 0))
            {

              v9 = 5;
            }

            else
            {
              v24 = v3 == 0x6C6C616274666F73 && v5 == 0xE800000000000000;
              if (v24 || (OUTLINED_FUNCTION_2_10(0x6C6C616274666F73) & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v26 = v25 == v5) : (v26 = 0), v26 || (OUTLINED_FUNCTION_0_11() & 1) != 0))
              {

                v9 = 6;
              }

              else
              {
                v27 = v3 == 0x73696E6E6574 && v5 == 0xE600000000000000;
                if (v27 || (OUTLINED_FUNCTION_2_10(0x73696E6E6574) & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v29 = v28 == v5) : (v29 = 0), v29))
                {

                  v9 = 7;
                }

                else
                {
                  v30 = OUTLINED_FUNCTION_0_11();

                  if (v30)
                  {
                    v9 = 7;
                  }

                  else
                  {
                    v9 = 8;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *v2 = v9;
  return result;
}

uint64_t Sport.rawValue.getter()
{
  result = 0x6C6C616265736162;
  switch(*v0)
  {
    case 1:
      result = 0x616274656B736162;
      break;
    case 2:
      v2 = 1953460070;
      goto LABEL_9;
    case 3:
      result = 0x79656B636F68;
      break;
    case 4:
      result = 0x7962677572;
      break;
    case 5:
      result = 0x726563636F73;
      break;
    case 6:
      v2 = 1952870259;
LABEL_9:
      result = v2 | 0x6C6C616200000000;
      break;
    case 7:
      result = 0x73696E6E6574;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26B694480()
{
  result = qword_28040A4D0;
  if (!qword_28040A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4D0);
  }

  return result;
}

uint64_t sub_26B6944EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Sport.init(rawValue:)(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_26B69452C@<X0>(uint64_t *a1@<X8>)
{
  result = Sport.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Sport(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B6946EC()
{
  result = qword_28040A4D8;
  if (!qword_28040A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return sub_26B6EA5D4();
}

uint64_t OUTLINED_FUNCTION_2_10(uint64_t a1)
{

  return sub_26B6EA5D4();
}

uint64_t sub_26B6947A8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_95_0(a1);
  OUTLINED_FUNCTION_249(v1);
  return sub_26B6EA744();
}

uint64_t sub_26B6947DC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_95_0(a1);
  OUTLINED_FUNCTION_221(v1);
  return sub_26B6EA744();
}

uint64_t sub_26B694830(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_95_0(a1);
  MEMORY[0x26D67E0E0](v1 + 101);
  return sub_26B6EA744();
}

uint64_t sub_26B694944(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_95_0(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_220(v4, v5, v6);

  return sub_26B6EA744();
}

uint64_t sub_26B6949BC(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_95_0(a1);
  if (v1)
  {
    v2 = 200;
  }

  else
  {
    v2 = 56;
  }

  MEMORY[0x26D67E0E0](v2);
  return sub_26B6EA744();
}

uint64_t sub_26B694A2C(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_95_0(a1);
  a2(v5, a1);
  return sub_26B6EA744();
}

uint64_t sub_26B694A7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_226(a1, a2);
  MEMORY[0x26D67E0E0](v2 + 101);
  return sub_26B6EA744();
}

uint64_t sub_26B694ADC(uint64_t a1)
{
  sub_26B6EA714();
  OUTLINED_FUNCTION_252();
  return sub_26B6EA744();
}

uint64_t sub_26B694B18(uint64_t a1)
{
  v1 = sub_26B6EA714();
  OUTLINED_FUNCTION_221(v1);
  return sub_26B6EA744();
}

uint64_t sub_26B694B58(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_226(a1, a2);
  if (v2)
  {
    v3 = 200;
  }

  else
  {
    v3 = 56;
  }

  MEMORY[0x26D67E0E0](v3);
  return sub_26B6EA744();
}

uint64_t sub_26B694BA0(uint64_t a1, char a2)
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B694C1C(uint64_t a1)
{
  v1 = sub_26B6EA714();
  OUTLINED_FUNCTION_249(v1);
  return sub_26B6EA744();
}

uint64_t sub_26B694C54(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_226(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x65757161704FLL;
    }

    else
    {
      v5 = 0x656E696C74754FLL;
    }
  }

  else
  {
    v5 = 0x6574696857;
  }

  OUTLINED_FUNCTION_253(v3, v5, v4);

  return sub_26B6EA744();
}

uint64_t sub_26B694CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_26B6EA714();
  v5 = a3(a2);
  OUTLINED_FUNCTION_220(v5, v6, v7);

  return sub_26B6EA744();
}

uint64_t sub_26B694D30(uint64_t a1, char a2)
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B694DB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_226(a1, a2);
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B694E04(uint64_t a1, char a2)
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B694EB4(uint64_t a1, char a2)
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B694F5C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_226(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 1936943469;
    }

    else
    {
      v5 = 1818324839;
    }
  }

  else
  {
    v5 = 0x7974706D65;
  }

  OUTLINED_FUNCTION_253(v3, v5, v4);

  return sub_26B6EA744();
}

uint64_t sub_26B694FD8(uint64_t a1, char a2)
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B695084(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_226(a1, a2);
  MEMORY[0x26D67E0E0](v2 & 1);
  return sub_26B6EA744();
}

uint64_t sub_26B6950C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_226(a1, a2);
  MEMORY[0x26D67E0E0](v2);
  return sub_26B6EA744();
}

uint64_t sub_26B6950FC(uint64_t a1, char a2)
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B695160(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_226(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }
  }

  else
  {
    v5 = 0x59535F4B434F4C43;
  }

  OUTLINED_FUNCTION_253(v3, v5, v4);

  return sub_26B6EA744();
}

uint64_t sub_26B6951F8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_226(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x6C50794279616C70;
    }

    else
    {
      v5 = 0x536B636F6C437674;
    }
  }

  else
  {
    v5 = 0x746174536576696CLL;
  }

  OUTLINED_FUNCTION_253(v3, v5, v4);

  return sub_26B6EA744();
}

uint64_t sub_26B6952D0(uint64_t a1, char a2)
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B69539C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_26B6EA714();
  a3(v6, a2);
  return sub_26B6EA744();
}

BOOL sub_26B6953F4(char a1, char a2)
{
  if ((a1 - 1) > 3u)
  {
    v2 = 0x8000000000000000;
  }

  else
  {
    v2 = qword_26B6F82A8[(a1 - 1)];
  }

  if ((a2 - 1) > 3u)
  {
    v3 = 0x8000000000000000;
  }

  else
  {
    v3 = qword_26B6F82A8[(a2 - 1)];
  }

  return v2 >= v3;
}

id SportingEventLocalizedDisplayName.__allocating_init(text:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC9SportsKit33SportingEventLocalizedDisplayName_text];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SportingEventLocalizedDisplayName.init(text:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC9SportsKit33SportingEventLocalizedDisplayName_text];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SportingEventLocalizedDisplayName();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_26B695574(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B695600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B695574(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B69562C(uint64_t a1)
{
  v2 = sub_26B6957B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B695668(uint64_t a1)
{
  v2 = sub_26B6957B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6956C8(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_104_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A4E8, &qword_26B6F35C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6957B0();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit33SportingEventLocalizedDisplayName_text);
  OUTLINED_FUNCTION_177();
  sub_26B6EA4F4();
  v2 = OUTLINED_FUNCTION_38_2();
  v3(v2);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B6957B0()
{
  result = qword_28040A4F0;
  if (!qword_28040A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4F0);
  }

  return result;
}

void SportingEventLocalizedDisplayName.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventLocalizedDisplayName.init(from:)();
}

void SportingEventLocalizedDisplayName.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A4F8, &qword_26B6F35C8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v4 = sub_26B6957B0();
  OUTLINED_FUNCTION_31_4(&type metadata for SportingEventLocalizedDisplayName.CodingKeys, v5, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for SportingEventLocalizedDisplayName();
    v7 = OUTLINED_FUNCTION_106_1();
    OUTLINED_FUNCTION_225(v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
    v6 = sub_26B6EA424();
    OUTLINED_FUNCTION_237(v6, v9, OBJC_IVAR____TtC9SportsKit33SportingEventLocalizedDisplayName_text);
    v12.receiver = v2;
    v12.super_class = type metadata accessor for SportingEventLocalizedDisplayName();
    objc_msgSendSuper2(&v12, sel_init);
    v10 = OUTLINED_FUNCTION_13_3();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B695974(uint64_t *a1@<X8>)
{
  SportingEventLocalizedDisplayName.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6959D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7472617473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B695A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6959D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B695A8C(uint64_t a1)
{
  v2 = sub_26B695C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B695AC8(uint64_t a1)
{
  v2 = sub_26B695C38();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B695B40(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A508, &qword_26B6F35D0);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B695C38();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_177();
  sub_26B6EA514();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B695C38()
{
  result = qword_28040A510;
  if (!qword_28040A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A510);
  }

  return result;
}

void SportingEventDuration.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventDuration.init(from:)();
}

void SportingEventDuration.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A518, &qword_26B6F35D8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v4 = sub_26B695C38();
  OUTLINED_FUNCTION_31_4(&type metadata for SportingEventDuration.CodingKeys, v5, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    v6 = type metadata accessor for SportingEventDuration();
    OUTLINED_FUNCTION_102_0(v6);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
    sub_26B6EA444();
    *&v2[OBJC_IVAR____TtC9SportsKit21SportingEventDuration_start] = v7;
    v10.receiver = v2;
    v10.super_class = type metadata accessor for SportingEventDuration();
    objc_msgSendSuper2(&v10, sel_init);
    v8 = OUTLINED_FUNCTION_13_3();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B695DF8(uint64_t *a1@<X8>)
{
  SportingEventDuration.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B695E54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B695EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B695E54(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B695F14(uint64_t a1)
{
  v2 = sub_26B6960EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B695F50(uint64_t a1)
{
  v2 = sub_26B6960EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B695FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_185();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A528, &qword_26B6F35E0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6960EC();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  type metadata accessor for SportingEventDuration();
  OUTLINED_FUNCTION_131_0();
  sub_26B6B25CC(v17, v18, v19, &protocol conformance descriptor for SportingEventDuration);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_234();
  sub_26B6EA534();
  v20 = OUTLINED_FUNCTION_85_1();
  v21(v20);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B6960EC()
{
  result = qword_2810CE2B0;
  if (!qword_2810CE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE2B0);
  }

  return result;
}

void SportingEventSchedule.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventSchedule.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventSchedule.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_65_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A538, &qword_26B6F35E8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v14 = sub_26B6960EC();
  OUTLINED_FUNCTION_12_7(&type metadata for SportingEventSchedule.CodingKeys, v15, v14);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    v19 = type metadata accessor for SportingEventSchedule();
    OUTLINED_FUNCTION_102_0(v19);
  }

  else
  {
    type metadata accessor for SportingEventDuration();
    OUTLINED_FUNCTION_131_0();
    sub_26B6B25CC(v16, v17, v18, &protocol conformance descriptor for SportingEventDuration);
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v12[OBJC_IVAR____TtC9SportsKit21SportingEventSchedule_duration] = a10;
    v22.receiver = v12;
    v22.super_class = type metadata accessor for SportingEventSchedule();
    objc_msgSendSuper2(&v22, sel_init);
    v20 = OUTLINED_FUNCTION_10_8();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_37();
}

void sub_26B6962DC(uint64_t *a1@<X8>)
{
  SportingEventSchedule.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B696358(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6963F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B696358(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B696424(uint64_t a1)
{
  v2 = sub_26B6965CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B696460(uint64_t a1)
{
  v2 = sub_26B6965CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6964E4(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_104_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A550, &qword_26B6F35F0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6965CC();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit18SportingEventSport_canonicalId);
  OUTLINED_FUNCTION_177();
  sub_26B6EA4F4();
  v2 = OUTLINED_FUNCTION_38_2();
  v3(v2);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B6965CC()
{
  result = qword_28040A558;
  if (!qword_28040A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A558);
  }

  return result;
}

void SportingEventSport.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventSport.init(from:)();
}

void SportingEventSport.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A560, &qword_26B6F35F8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v4 = sub_26B6965CC();
  OUTLINED_FUNCTION_31_4(&type metadata for SportingEventSport.CodingKeys, v5, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for SportingEventSport();
    v7 = OUTLINED_FUNCTION_106_1();
    OUTLINED_FUNCTION_225(v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
    v6 = sub_26B6EA424();
    OUTLINED_FUNCTION_237(v6, v9, OBJC_IVAR____TtC9SportsKit18SportingEventSport_canonicalId);
    v12.receiver = v2;
    v12.super_class = type metadata accessor for SportingEventSport();
    objc_msgSendSuper2(&v12, sel_init);
    v10 = OUTLINED_FUNCTION_13_3();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B696790(uint64_t *a1@<X8>)
{
  SportingEventSport.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B696824(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000026B6FCA10 == a2;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74726F7073 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26B69693C(char a1)
{
  if (!a1)
  {
    return 0x6163696E6F6E6163;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x74726F7073;
}

uint64_t sub_26B6969A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B696824(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6969CC(uint64_t a1)
{
  v2 = sub_26B696C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B696A08(uint64_t a1)
{
  v2 = sub_26B696C54();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B696AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A580, &unk_26B6F3600);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v18 = sub_26B696C54();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEventLeague.CodingKeys, v19, v18);
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit19SportingEventLeague_canonicalId);
  OUTLINED_FUNCTION_63_2();
  sub_26B6EA4F4();
  if (!v16)
  {
    OUTLINED_FUNCTION_84_1(OBJC_IVAR____TtC9SportsKit19SportingEventLeague_localizedDisplayName);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A260, &qword_26B6F25D0);
    sub_26B696CA8();
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_12_9();
    sub_26B6EA534();
    OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit19SportingEventLeague_sport);
    type metadata accessor for SportingEventSport();
    OUTLINED_FUNCTION_126_0();
    sub_26B6B25CC(v20, v21, v22, &protocol conformance descriptor for SportingEventSport);
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_12_9();
    sub_26B6EA534();
  }

  v23 = OUTLINED_FUNCTION_21_2();
  v24(v23);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B696C54()
{
  result = qword_2810CE3D8;
  if (!qword_2810CE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE3D8);
  }

  return result;
}

unint64_t sub_26B696CA8()
{
  result = qword_2810CDC08;
  if (!qword_2810CDC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A260, &qword_26B6F25D0);
    sub_26B6B25CC(&qword_2810CDD90, v1, type metadata accessor for SportingEventLocalizedDisplayName, &protocol conformance descriptor for SportingEventLocalizedDisplayName);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC08);
  }

  return result;
}

void SportingEventLeague.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventLeague.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventLeague.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_125();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A590, &qword_26B6F3610);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  v14 = sub_26B696C54();
  OUTLINED_FUNCTION_31_4(&type metadata for SportingEventLeague.CodingKeys, v15, v14);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    type metadata accessor for SportingEventLeague();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_80_1();
    v16 = sub_26B6EA424();
    v17 = &v10[OBJC_IVAR____TtC9SportsKit19SportingEventLeague_canonicalId];
    *v17 = v16;
    v17[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A260, &qword_26B6F25D0);
    OUTLINED_FUNCTION_36_4();
    sub_26B685420();
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_88_1();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit19SportingEventLeague_localizedDisplayName] = a10;
    type metadata accessor for SportingEventSport();
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_126_0();
    sub_26B6B25CC(v19, v20, v21, &protocol conformance descriptor for SportingEventSport);
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_160();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit19SportingEventLeague_sport] = a10;
    v24.receiver = v10;
    v24.super_class = type metadata accessor for SportingEventLeague();
    objc_msgSendSuper2(&v24, sel_init);
    v22 = OUTLINED_FUNCTION_13_3();
    v23(v22);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B696FD0(uint64_t *a1@<X8>)
{
  SportingEventLeague.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B697058()
{
  OUTLINED_FUNCTION_103_1();
  sub_26B6EA394();
  OUTLINED_FUNCTION_250();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B6970A0(char a1)
{
  if (a1)
  {
    return 0x736772612D636F6CLL;
  }

  else
  {
    return 0x79656B2D636F6CLL;
  }
}

uint64_t sub_26B6970FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B697058();
  *a1 = result;
  return result;
}

uint64_t sub_26B69712C()
{
  v1 = OUTLINED_FUNCTION_229();
  result = sub_26B6970A0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26B69715C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B697058();
  *a1 = result;
  return result;
}

uint64_t sub_26B697184(uint64_t a1)
{
  v2 = sub_26B6973A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6971C0(uint64_t a1)
{
  v2 = sub_26B6973A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B697280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A5B0, &unk_26B6F3618);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v16 = sub_26B6973A4();
  OUTLINED_FUNCTION_39_3(&unk_287C2EBE8, v17, v16);
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit22SportingEventAlertText_key);
  OUTLINED_FUNCTION_63_2();
  sub_26B6EA4F4();
  if (!v14)
  {
    OUTLINED_FUNCTION_99_1(OBJC_IVAR____TtC9SportsKit22SportingEventAlertText_arguments);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
    sub_26B6973F8();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA4E4();
  }

  v18 = OUTLINED_FUNCTION_21_2();
  v19(v18);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B6973A4()
{
  result = qword_28040A5B8;
  if (!qword_28040A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A5B8);
  }

  return result;
}

unint64_t sub_26B6973F8()
{
  result = qword_280409BF0;
  if (!qword_280409BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409BE8, &qword_26B6F00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409BF0);
  }

  return result;
}

void SportingEventAlertText.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventAlertText.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventAlertText.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_64_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A5C0, &qword_26B6F3628);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  v14 = sub_26B6973A4();
  OUTLINED_FUNCTION_12_7(&unk_287C2EBE8, v15, v14);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    type metadata accessor for SportingEventAlertText();
    v17 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_215(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_52_1();
    v16 = sub_26B6EA424();
    v19 = &v10[OBJC_IVAR____TtC9SportsKit22SportingEventAlertText_key];
    *v19 = v16;
    v19[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
    OUTLINED_FUNCTION_36_4();
    sub_26B6858E8();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA414();
    *&v10[OBJC_IVAR____TtC9SportsKit22SportingEventAlertText_arguments] = a10;
    v23.receiver = v10;
    v23.super_class = type metadata accessor for SportingEventAlertText();
    objc_msgSendSuper2(&v23, sel_init);
    v21 = OUTLINED_FUNCTION_10_8();
    v22(v21);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B697650(uint64_t *a1@<X8>)
{
  SportingEventAlertText.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6976E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2036625250 && a2 == 0xE400000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x646E756F73 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26B6977EC(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 2036625250;
  }

  return 0x646E756F73;
}

uint64_t sub_26B69783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6976E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B697864(uint64_t a1)
{
  v2 = sub_26B697AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6978A0(uint64_t a1)
{
  v2 = sub_26B697AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B697974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A5E0, &qword_26B6F3630);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v18 = sub_26B697AE0();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEventAlert.CodingKeys, v19, v18);
  OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit18SportingEventAlert_title);
  type metadata accessor for SportingEventAlertText();
  OUTLINED_FUNCTION_123_0();
  sub_26B6B25CC(v20, v21, v22, &protocol conformance descriptor for SportingEventAlertText);
  OUTLINED_FUNCTION_15_6();
  sub_26B6EA534();
  if (!v16)
  {
    OUTLINED_FUNCTION_84_1(OBJC_IVAR____TtC9SportsKit18SportingEventAlert_body);
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit18SportingEventAlert_sound);
    OUTLINED_FUNCTION_63_2();
    sub_26B6EA4A4();
  }

  v23 = OUTLINED_FUNCTION_21_2();
  v24(v23);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B697AE0()
{
  result = qword_28040A5E8;
  if (!qword_28040A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A5E8);
  }

  return result;
}

void SportingEventAlert.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventAlert.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventAlert.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_64_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A5F8, &qword_26B6F3638);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  v14 = sub_26B697AE0();
  OUTLINED_FUNCTION_12_7(&type metadata for SportingEventAlert.CodingKeys, v15, v14);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    type metadata accessor for SportingEventAlert();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SportingEventAlertText();
    v25 = 0;
    OUTLINED_FUNCTION_123_0();
    sub_26B6B25CC(v16, v17, v18, &protocol conformance descriptor for SportingEventAlertText);
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA464();
    v23 = OBJC_IVAR____TtC9SportsKit18SportingEventAlert_title;
    *&v10[OBJC_IVAR____TtC9SportsKit18SportingEventAlert_title] = a10;
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit18SportingEventAlert_body] = a10;
    OUTLINED_FUNCTION_172(2);
    v19 = sub_26B6EA3D4();
    OUTLINED_FUNCTION_70(v19, v20, OBJC_IVAR____TtC9SportsKit18SportingEventAlert_sound);
    v24.receiver = v10;
    v24.super_class = type metadata accessor for SportingEventAlert();
    objc_msgSendSuper2(&v24, sel_init, v23);
    v21 = OUTLINED_FUNCTION_10_8();
    v22(v21);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B697DAC(uint64_t *a1@<X8>)
{
  SportingEventAlert.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B697E14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B697ED8(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x7472656C61;
  }
}

uint64_t sub_26B697F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B697E14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B697F3C(uint64_t a1)
{
  v2 = sub_26B698168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B697F78(uint64_t a1)
{
  v2 = sub_26B698168();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B697FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A618, &qword_26B6F3640);
  OUTLINED_FUNCTION_5_10();
  v20 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B698168();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  type metadata accessor for SportingEventAlert();
  OUTLINED_FUNCTION_120_0();
  sub_26B6B25CC(v22, v23, v24, &protocol conformance descriptor for SportingEventAlert);
  OUTLINED_FUNCTION_110_1();
  sub_26B6EA534();
  if (!v17)
  {
    sub_26B6EA524();
  }

  (*(v20 + 8))(v18, v16);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B698168()
{
  result = qword_28040A620;
  if (!qword_28040A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A620);
  }

  return result;
}

void SportingEventAlertUpdate.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventAlertUpdate.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventAlertUpdate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_64_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A630, &qword_26B6F3648);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  v14 = sub_26B698168();
  OUTLINED_FUNCTION_12_7(&type metadata for SportingEventAlertUpdate.CodingKeys, v15, v14);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    type metadata accessor for SportingEventAlertUpdate();
    v19 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_225(v19, v20);
  }

  else
  {
    type metadata accessor for SportingEventAlert();
    v24 = 0;
    OUTLINED_FUNCTION_120_0();
    sub_26B6B25CC(v16, v17, v18, &protocol conformance descriptor for SportingEventAlert);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit24SportingEventAlertUpdate_alert] = a10;
    OUTLINED_FUNCTION_172(1);
    OUTLINED_FUNCTION_52_1();
    *&v10[OBJC_IVAR____TtC9SportsKit24SportingEventAlertUpdate_version] = sub_26B6EA454();
    v23.receiver = v10;
    v23.super_class = type metadata accessor for SportingEventAlertUpdate();
    objc_msgSendSuper2(&v23, sel_init);
    v21 = OUTLINED_FUNCTION_10_8();
    v22(v21);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6983A8(uint64_t *a1@<X8>)
{
  SportingEventAlertUpdate.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_26B698450(unsigned __int8 *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version);
  v3 = *(v1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version + 8);
  v4 = HIBYTE(v3) & 0xF;
  v5 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {

    v24 = OUTLINED_FUNCTION_22_0();
    sub_26B6AD130(v24, v25, 10);

    return;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    if (v2 == 43)
    {
      if (!v4)
      {
LABEL_76:
        __break(1u);
        return;
      }

      if (v4 != 1)
      {
        OUTLINED_FUNCTION_143();
        do
        {
          OUTLINED_FUNCTION_49_1();
          if (!v10 & v9)
          {
            break;
          }

          OUTLINED_FUNCTION_56_2();
          if (!v10)
          {
            break;
          }

          if (__OFADD__(v18, v17))
          {
            break;
          }

          OUTLINED_FUNCTION_138_0();
        }

        while (!v10);
      }
    }

    else if (v2 == 45)
    {
      if (!v4)
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v4 != 1)
      {
        OUTLINED_FUNCTION_143();
        do
        {
          OUTLINED_FUNCTION_49_1();
          if (!v10 & v9)
          {
            break;
          }

          OUTLINED_FUNCTION_56_2();
          if (!v10)
          {
            break;
          }

          if (__OFSUB__(v14, v13))
          {
            break;
          }

          OUTLINED_FUNCTION_138_0();
        }

        while (!v10);
      }
    }

    else if (v4)
    {
      do
      {
        OUTLINED_FUNCTION_49_1();
        if (!v10 & v9)
        {
          break;
        }

        OUTLINED_FUNCTION_56_2();
        if (!v10)
        {
          break;
        }

        if (__OFADD__(v23, v22))
        {
          break;
        }

        OUTLINED_FUNCTION_138_0();
      }

      while (!v10);
    }
  }

  else
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      OUTLINED_FUNCTION_22_0();
      v7 = sub_26B6EA1E4();
    }

    v8 = *v7;
    if (v8 == 43)
    {
      if (v5 < 1)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (v5 != 1 && v7)
      {
        OUTLINED_FUNCTION_227();
        do
        {
          OUTLINED_FUNCTION_49_1();
          if (!v10 & v9)
          {
            break;
          }

          OUTLINED_FUNCTION_56_2();
          if (!v10)
          {
            break;
          }

          if (__OFADD__(v16, v15))
          {
            break;
          }

          OUTLINED_FUNCTION_138_0();
        }

        while (!v10);
      }
    }

    else
    {
      if (v8 == 45)
      {
        if (v5 >= 1)
        {
          if (v5 != 1 && v7)
          {
            OUTLINED_FUNCTION_227();
            do
            {
              OUTLINED_FUNCTION_49_1();
              if (!v10 & v9)
              {
                break;
              }

              OUTLINED_FUNCTION_56_2();
              if (!v10)
              {
                break;
              }

              if (__OFSUB__(v12, v11))
              {
                break;
              }

              OUTLINED_FUNCTION_138_0();
            }

            while (!v10);
          }

          return;
        }

        __break(1u);
        goto LABEL_74;
      }

      if (v5)
      {
        v19 = 0;
        if (v7)
        {
          do
          {
            v20 = *v7 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              break;
            }

            ++v7;
            --v5;
          }

          while (v5);
        }
      }
    }
  }
}

unint64_t sub_26B6986BC(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_143();
            while (1)
            {
              OUTLINED_FUNCTION_49_1();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_60_2();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_138_0();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_81:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_49_1();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_60_2();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_138_0();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_143();
          while (1)
          {
            OUTLINED_FUNCTION_49_1();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_60_2();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_138_0();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_26B6EA1E4();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_227();
              while (1)
              {
                OUTLINED_FUNCTION_49_1();
                if (!v9 & v8)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_60_2();
                if (!v9)
                {
                  goto LABEL_70;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_138_0();
                if (v9)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_70;
        }

        goto LABEL_80;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_70;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_70;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_70;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_70:
        v7 = 0;
        v12 = 1;
        goto LABEL_71;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_227();
            while (1)
            {
              OUTLINED_FUNCTION_49_1();
              if (!v9 & v8)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_60_2();
              if (!v9)
              {
                goto LABEL_70;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_138_0();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_61:
          v12 = 0;
LABEL_71:
          v23 = v12;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v7 = sub_26B6AD130(result, a2, 10);
  v23 = v24;
LABEL_72:

  if (v23)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_26B6989C4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_26B698A24(v1);
}

void *sub_26B6989F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage);
  v2 = v1;
  return v1;
}

uint64_t sub_26B698A30(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_26B698A90(v1);
}

void *sub_26B698A60()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament);
  v2 = v1;
  return v1;
}

uint64_t sub_26B698A9C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_26B698AFC(v1);
}

void *sub_26B698ACC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule);
  v2 = v1;
  return v1;
}

uint64_t sub_26B698B08(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_26B698B68(v1);
}

void *sub_26B698B38()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__league);
  v2 = v1;
  return v1;
}

uint64_t sub_26B698C14()
{
  v1 = sub_26B6E9074();
  MEMORY[0x28223BE20](v1 - 8);
  sub_26B6E90D4();
  swift_allocObject();
  sub_26B6E90C4();
  sub_26B6E9064();
  sub_26B6E9084();
  v31 = v0;
  type metadata accessor for SportingEvent();
  sub_26B6B25CC(&qword_2810CE660, v2, type metadata accessor for SportingEvent, &protocol conformance descriptor for SportingEvent);
  v3 = sub_26B6E90B4();
  v5 = v4;
  sub_26B645A3C(v3, v4);
  v6 = OUTLINED_FUNCTION_6_0();
  v8 = sub_26B6ADC5C(v6, v7);
  if (v9)
  {
    v10 = v8;
    v11 = OUTLINED_FUNCTION_6_0();
    sub_26B645A94(v11, v12);
LABEL_9:

    v24 = OUTLINED_FUNCTION_6_0();
    sub_26B645A94(v24, v25);
    return v10;
  }

  v29 = v3;
  v30 = v5;
  v13 = OUTLINED_FUNCTION_6_0();
  sub_26B645A3C(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409308, &unk_26B6F3650);
  if (!swift_dynamicCast())
  {
    v20 = OUTLINED_FUNCTION_6_0();
    sub_26B645A94(v20, v21);
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_26B6413B4(v27, &qword_280409310, &qword_26B6ED010);
LABEL_8:
    v22 = OUTLINED_FUNCTION_6_0();
    v10 = sub_26B6AD08C(v22, v23);
    goto LABEL_9;
  }

  sub_26B645C80(v27, &v31);
  __swift_project_boxed_opaque_existential_1(&v31, v32);
  v15 = sub_26B6EA374();
  v16 = OUTLINED_FUNCTION_6_0();
  sub_26B645A94(v16, v17);
  if ((v15 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v31);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(&v31, v32);
  sub_26B6EA364();

  v18 = OUTLINED_FUNCTION_6_0();
  sub_26B645A94(v18, v19);
  v10 = *&v27[0];
  __swift_destroy_boxed_opaque_existential_1(&v31);
  return v10;
}

id SportingEvent.__allocating_init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_150();
  v15 = objc_allocWithZone(v14);
  OUTLINED_FUNCTION_153();
  return SportingEvent.init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(v16, v17, v18, v19, v20, v21, v22, a8, a9, a10, a11, a12, a13, a14);
}

id SportingEvent.init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v15 = *a5;
  v16 = OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage] = 0;
  v17 = OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament] = 0;
  v18 = OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule] = 0;
  v19 = OBJC_IVAR____TtC9SportsKit13SportingEvent__league;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__league] = 0;
  v20 = OBJC_IVAR____TtC9SportsKit13SportingEvent__localizedShortName;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__localizedShortName] = 0;
  v21 = OBJC_IVAR____TtC9SportsKit13SportingEvent__alertUpdates;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__alertUpdates] = 0;
  v22 = &v14[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId];
  *v22 = a1;
  v22[1] = a2;
  v23 = &v14[OBJC_IVAR____TtC9SportsKit13SportingEvent_version];
  *v23 = a3;
  v23[1] = a4;
  v14[OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus] = v15;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors] = a6;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent_clock] = a7;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__plays] = a8;
  *&v14[v16] = a10;
  *&v14[v17] = a9;
  v24 = *&v14[v18];
  *&v14[v18] = a11;
  v25 = a7;
  v26 = a10;
  v27 = a9;
  v28 = a11;

  v29 = *&v14[v19];
  *&v14[v19] = a12;
  v30 = a12;

  *&v14[v20] = a13;

  *&v14[v21] = a14;

  v33.receiver = v14;
  v33.super_class = type metadata accessor for SportingEvent();
  v31 = objc_msgSendSuper2(&v33, sel_init);

  return v31;
}

void SportingEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_125();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6A0, &unk_26B6F3660);
  OUTLINED_FUNCTION_4();
  v27 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_61_0();
  v42 = OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage;
  *(v21 + OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage) = 0;
  v43 = OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament;
  *(v21 + OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament) = 0;
  v44 = OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule;
  *(v21 + OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule) = 0;
  v45 = OBJC_IVAR____TtC9SportsKit13SportingEvent__league;
  *(v21 + OBJC_IVAR____TtC9SportsKit13SportingEvent__league) = 0;
  v46 = OBJC_IVAR____TtC9SportsKit13SportingEvent__localizedShortName;
  *(v21 + OBJC_IVAR____TtC9SportsKit13SportingEvent__localizedShortName) = 0;
  *(v21 + OBJC_IVAR____TtC9SportsKit13SportingEvent__alertUpdates) = 0;
  OUTLINED_FUNCTION_21_3();
  sub_26B6ADE28();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);

    OUTLINED_FUNCTION_197();

    type metadata accessor for SportingEvent();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_105_1();
    v29 = sub_26B6EA424();
    v30 = &v20[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId];
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v48) = 1;
    OUTLINED_FUNCTION_105_1();
    v32 = sub_26B6EA424();
    OUTLINED_FUNCTION_70(v32, v33, OBJC_IVAR____TtC9SportsKit13SportingEvent_version);
    OUTLINED_FUNCTION_146();
    sub_26B6ADE7C();
    sub_26B6EA464();
    v20[OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6A8, &qword_26B6F94F0);
    OUTLINED_FUNCTION_176();
    sub_26B6ADED0();
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_53_1();
    sub_26B6EA464();
    *&v20[OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors] = v48;
    type metadata accessor for SportingEventCurrentClock();
    OUTLINED_FUNCTION_175();
    OUTLINED_FUNCTION_132_0();
    sub_26B6B25CC(v34, v35, v36, &protocol conformance descriptor for SportingEventCurrentClock);
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_53_1();
    sub_26B6EA464();
    *&v20[OBJC_IVAR____TtC9SportsKit13SportingEvent_clock] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E40, &qword_26B6F3670);
    sub_26B6ADFCC();
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_53_1();
    sub_26B6EA464();
    *&v20[OBJC_IVAR____TtC9SportsKit13SportingEvent__plays] = v48;
    type metadata accessor for SportingEventCoverage();
    sub_26B6B25CC(&qword_2810CE2D0, v37, type metadata accessor for SportingEventCoverage, &protocol conformance descriptor for SportingEventCoverage);
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA464();
    OUTLINED_FUNCTION_224(v48);
    type metadata accessor for SportingTournament();
    sub_26B6B25CC(&qword_2810CE3E8, v38, type metadata accessor for SportingTournament, &protocol conformance descriptor for SportingTournament);
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA464();
    OUTLINED_FUNCTION_224(v48);
    type metadata accessor for SportingEventSchedule();
    sub_26B6B25CC(&qword_2810CE290, v39, type metadata accessor for SportingEventSchedule, &protocol conformance descriptor for SportingEventSchedule);
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA464();
    OUTLINED_FUNCTION_224(v48);
    type metadata accessor for SportingEventLeague();
    sub_26B6B25CC(&qword_2810CE3B8, v40, type metadata accessor for SportingEventLeague, &protocol conformance descriptor for SportingEventLeague);
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA464();
    OUTLINED_FUNCTION_224(v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A260, &qword_26B6F25D0);
    sub_26B685420();
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA464();
    *&v20[v46] = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6B0, &qword_26B6F3678);
    sub_26B6AE0EC();
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA414();
    (*(v27 + 8))(v24, v25);
    OUTLINED_FUNCTION_197();
    *&v20[v41] = v48;

    v47.receiver = v20;
    v47.super_class = type metadata accessor for SportingEvent();
    objc_msgSendSuper2(&v47, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_37();
}

id SportingEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26B699860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73736572676F7270 && a2 == 0xEE00737574617453;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74697465706D6F63 && a2 == 0xEB0000000073726FLL;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6B636F6C63 && a2 == 0xE500000000000000;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7379616C70 && a2 == 0xE500000000000000;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6567617265766F63 && a2 == 0xE800000000000000;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656D616E72756F74 && a2 == 0xEA0000000000746ELL;
                if (v12 || (sub_26B6EA5D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
                  if (v13 || (sub_26B6EA5D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65756761656CLL && a2 == 0xE600000000000000;
                    if (v14 || (sub_26B6EA5D4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x800000026B6FD410 == a2;
                      if (v15 || (sub_26B6EA5D4() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x6470557472656C61 && a2 == 0xEC00000073657461)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_26B6EA5D4();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_26B699C18(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x73736572676F7270;
      break;
    case 3:
      result = 0x74697465706D6F63;
      break;
    case 4:
      result = 0x6B636F6C63;
      break;
    case 5:
      result = 0x7379616C70;
      break;
    case 6:
      result = 0x6567617265766F63;
      break;
    case 7:
      result = 0x656D616E72756F74;
      break;
    case 8:
      result = 0x656C756465686373;
      break;
    case 9:
      result = 0x65756761656CLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6470557472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B699D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B699860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B699DAC(uint64_t a1)
{
  v2 = sub_26B6ADE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B699DE8(uint64_t a1)
{
  v2 = sub_26B6ADE28();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B699F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_100_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6C8, &qword_26B6F3680);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v18 = sub_26B6ADE28();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEvent.CodingKeys, v19, v18);
  OUTLINED_FUNCTION_105(OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId);
  OUTLINED_FUNCTION_35_1();
  sub_26B6EA4F4();
  if (!v16)
  {
    OUTLINED_FUNCTION_105(OBJC_IVAR____TtC9SportsKit13SportingEvent_version);
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_146();
    sub_26B6AE1A0();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors);
    OUTLINED_FUNCTION_176();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6D0, &qword_26B6F3688);
    sub_26B6AE1F4();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent_clock);
    OUTLINED_FUNCTION_175();
    type metadata accessor for SportingEventCurrentClock();
    OUTLINED_FUNCTION_132_0();
    sub_26B6B25CC(v20, v21, v22, &protocol conformance descriptor for SportingEventCurrentClock);
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6D8, &qword_26B6F3690);
    sub_26B6AE32C();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6E0, &qword_26B6F3698);
    sub_26B6AE464();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6F0, &qword_26B6F36A8);
    sub_26B6AE59C();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A700, &qword_26B6F36B8);
    sub_26B6AE6D4();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__league);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A710, &qword_26B6F36C8);
    sub_26B6AE80C();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__localizedShortName);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A720, &qword_26B6F36D8);
    sub_26B6AE944();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__alertUpdates);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A730, &qword_26B6F36E8);
    sub_26B6AEA4C();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
  }

  v23 = OUTLINED_FUNCTION_21_2();
  v24(v23);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_26B69A2D4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 384))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_26B69A3A8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_26B6E99F4();

  return v5;
}

uint64_t sub_26B69A418()
{
  OUTLINED_FUNCTION_52_0();
  v3 = sub_26B6EA564();
  MEMORY[0x26D67D4D0](46, 0xE100000000000000);
  OUTLINED_FUNCTION_52_0();
  v0 = sub_26B6EA564();
  MEMORY[0x26D67D4D0](v0);

  MEMORY[0x26D67D4D0](46, 0xE100000000000000);
  OUTLINED_FUNCTION_52_0();
  v1 = sub_26B6EA564();
  MEMORY[0x26D67D4D0](v1);

  return v3;
}

uint64_t sub_26B69A504(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26B69A62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69A504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69A654(uint64_t a1)
{
  v2 = sub_26B6AEC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69A690(uint64_t a1)
{
  v2 = sub_26B6AEC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69A6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A778, &qword_26B6F36F8);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v18 = sub_26B6AEC2C();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEventVersion.CodingKeys, v19, v18);
  OUTLINED_FUNCTION_69_1();
  sub_26B6EA524();
  if (!v16)
  {
    OUTLINED_FUNCTION_69_1();
    sub_26B6EA524();
    OUTLINED_FUNCTION_69_1();
    sub_26B6EA524();
  }

  v20 = OUTLINED_FUNCTION_21_2();
  v21(v20);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventVersion.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_65_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A788, &qword_26B6F3700);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v27 = sub_26B6AEC2C();
  OUTLINED_FUNCTION_12_7(&type metadata for SportingEventVersion.CodingKeys, v28, v27);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    type metadata accessor for SportingEventVersion();
    v29 = OUTLINED_FUNCTION_106_1();
    OUTLINED_FUNCTION_215(v29, v30);
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    *&v25[OBJC_IVAR____TtC9SportsKit20SportingEventVersion_major] = sub_26B6EA454();
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_52_1();
    *&v25[OBJC_IVAR____TtC9SportsKit20SportingEventVersion_minor] = sub_26B6EA454();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_52_1();
    *&v25[OBJC_IVAR____TtC9SportsKit20SportingEventVersion_patch] = sub_26B6EA454();
    v33.receiver = v25;
    v33.super_class = type metadata accessor for SportingEventVersion();
    objc_msgSendSuper2(&v33, sel_init);
    v31 = OUTLINED_FUNCTION_10_8();
    v32(v31);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B69A9D4@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventVersion.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SportingEventCoverageLastUpdateScope.rawValue.getter()
{
  if (*v0)
  {
    return 0x746E657645;
  }

  else
  {
    return 0x6B636F6C43;
  }
}

uint64_t sub_26B69AA8C@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCoverageLastUpdateScope.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

void SportingEventCoverageLastUpdate.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventCoverageLastUpdate.init(from:)(v1);
}

void SportingEventCoverageLastUpdate.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7A0, &unk_26B6F3708);
  OUTLINED_FUNCTION_4();
  v12 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_61_0();
  v7 = OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__scope;
  *(v2 + OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__scope) = 2;
  OUTLINED_FUNCTION_145(OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp);
  OUTLINED_FUNCTION_39(a1);
  sub_26B6AEC80();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SportingEventCoverageLastUpdate();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_26B6AECF8();
    OUTLINED_FUNCTION_105_1();
    sub_26B6EA464();
    *(v2 + v7) = v15;
    OUTLINED_FUNCTION_36_4();
    sub_26B6EA444();
    v9 = v8;
    v10 = OUTLINED_FUNCTION_171();
    v11(v10, v12);
    *v1 = v9;
    *(v1 + 8) = 0;
    v13.receiver = 0;
    v13.super_class = type metadata accessor for SportingEventCoverageLastUpdate();
    objc_msgSendSuper2(&v13, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_238();
}

uint64_t sub_26B69AE88(uint64_t a1)
{
  sub_26B68A2A0(a1, v19);
  if (!v20)
  {
    sub_26B6413B4(v19, &qword_2804092A0, &qword_26B6F2850);
    return 0;
  }

  Update = type metadata accessor for SportingEventCoverageLastUpdate();
  OUTLINED_FUNCTION_38_3(Update, v3, v4, Update, v5, v6, v7, v8, v16, v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v1 + OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__scope);
  v10 = v18[OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__scope];
  if (v9 == 2)
  {
    if (v10 != 2)
    {
LABEL_11:

      return 0;
    }
  }

  else if (v10 == 2 || (sub_26B646420(v9 & 1, v10 & 1) & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(v1 + OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp);
  v12 = *(v1 + OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp + 8);
  v13 = *&v18[OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp];
  v14 = v18[OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp + 8];

  if ((v12 & 1) == 0)
  {
    return (v11 == v13) & ~v14;
  }

  return v14;
}

uint64_t sub_26B69AFDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65706F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B69B0A8(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x65706F6373;
  }
}

uint64_t sub_26B69B0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69AFDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69B110(uint64_t a1)
{
  v2 = sub_26B6AEC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69B14C(uint64_t a1)
{
  v2 = sub_26B6AEC80();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69B1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7A8, &qword_26B6F3718);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v17 = sub_26B6AEC80();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEventCoverageLastUpdate.CodingKeys, v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7B0, &qword_26B6F3720);
  sub_26B6AED4C();
  OUTLINED_FUNCTION_12_9();
  sub_26B6EA534();
  if (!v14)
  {
    OUTLINED_FUNCTION_25_5((v15 + OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp));
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7C0, &qword_26B6F3730);
    sub_26B6AEEA8();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v19 = OUTLINED_FUNCTION_21_2();
  v20(v19);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void sub_26B69B2F0(uint64_t *a1@<X8>)
{
  SportingEventCoverageLastUpdate.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B69B340(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_26B69B3A0(v1);
}

void *sub_26B69B370()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion);
  v2 = v1;
  return v1;
}

uint64_t sub_26B69B3AC(uint64_t a1)
{
  sub_26B68A2A0(a1, v20);
  if (!v21)
  {
    sub_26B6413B4(v20, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_7;
  }

  v3 = type metadata accessor for SportingEventCoverage();
  OUTLINED_FUNCTION_38_3(v3, v4, v5, v3, v6, v7, v8, v9, v17, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  v10 = *(v1 + OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion);
  v11 = *&v19[OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion];
  if (!v10)
  {
    v16 = v11;

    if (!v11)
    {
      v14 = 1;
      return v14 & 1;
    }

    goto LABEL_7;
  }

  if (!v11)
  {

    goto LABEL_7;
  }

  type metadata accessor for SportingEventCoverageIngestion();
  v12 = v11;
  v13 = v10;
  OUTLINED_FUNCTION_211();
  v14 = sub_26B6E9FA4();

  return v14 & 1;
}

uint64_t sub_26B69B4BC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_26B6EA084();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_26B6413B4(v10, &qword_2804092A0, &qword_26B6F2850);
  return v8 & 1;
}

uint64_t sub_26B69B58C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69747365676E69 && a2 == 0xE90000000000006ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B69B62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69B58C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B69B658(uint64_t a1)
{
  v2 = sub_26B6AEFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69B694(uint64_t a1)
{
  v2 = sub_26B6AEFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69B6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_104_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7D8, &qword_26B6F3740);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6AEFCC();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7E0, &qword_26B6F3748);
  sub_26B6AF020();
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_177();
  sub_26B6EA534();
  v17 = OUTLINED_FUNCTION_38_2();
  v18(v17);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

void SportingEventCoverage.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventCoverage.init(from:)();
}

void SportingEventCoverage.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A298, &qword_26B6F2608);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26_1();
  v6 = OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion;
  *&v0[OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion] = 0;
  OUTLINED_FUNCTION_3_7();
  v7 = sub_26B6AEFCC();
  OUTLINED_FUNCTION_31_4(&type metadata for SportingEventCoverage.CodingKeys, v8, v7);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);

    type metadata accessor for SportingEventCoverage();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_88_1();
    v9 = sub_26B67FA60();
    v10 = *&v0[v6];
    *&v0[v6] = v9;

    v13.receiver = v0;
    v13.super_class = type metadata accessor for SportingEventCoverage();
    objc_msgSendSuper2(&v13, sel_init);
    v11 = OUTLINED_FUNCTION_232();
    v12(v11, v4);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B69B99C(uint64_t *a1@<X8>)
{
  SportingEventCoverage.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_26B69BAC0()
{
  OUTLINED_FUNCTION_103_1();
  sub_26B6EA394();
  OUTLINED_FUNCTION_250();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26B69BB00(char a1)
{
  if (!a1)
  {
    return 0x6567617265766F63;
  }

  if (a1 == 1)
  {
    return 0x616470557473616CLL;
  }

  return 1953718636;
}

unint64_t sub_26B69BB88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B69BAC0();
  *a1 = result;
  return result;
}

uint64_t sub_26B69BBB8()
{
  v1 = OUTLINED_FUNCTION_229();
  result = sub_26B69BB00(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_26B69BBE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B69BAC0();
  *a1 = result;
  return result;
}

uint64_t sub_26B69BC1C(uint64_t a1)
{
  v2 = sub_26B6AF158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69BC58(uint64_t a1)
{
  v2 = sub_26B6AF158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B69BC94(uint64_t a1)
{
  sub_26B68A2A0(a1, v23);
  if (!v24)
  {
    sub_26B6413B4(v23, &qword_2804092A0, &qword_26B6F2850);
    return 0;
  }

  v2 = type metadata accessor for SportingEventCoverageIngestion();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v20, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v9 = *&v22[OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates];
  if (*(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates))
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    sub_26B637204(v10, v9);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v9)
  {
    goto LABEL_16;
  }

  v9 = *&v22[OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates];
  if (*(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates))
  {
    if (v9)
    {

      sub_26B63721C(v13, v9);
      v15 = v14;

      if (v15)
      {
        goto LABEL_12;
      }

LABEL_16:

      return 0;
    }

LABEL_14:

    return v9;
  }

  if (v9)
  {
    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last);
  v17 = *(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last + 8);
  v18 = *&v22[OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last];
  v9 = v22[OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last + 8];

  if ((v17 & 1) == 0)
  {
    return (v16 == v18) & ~v9;
  }

  return v9;
}

void sub_26B69BEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A808, &qword_26B6F3760);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v19 = sub_26B6AF158();
  OUTLINED_FUNCTION_39_3(&unk_287C2E7F8, v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A810, &qword_26B6F3768);
  sub_26B6AF1AC();
  OUTLINED_FUNCTION_3_12();
  sub_26B6EA534();
  if (!v17)
  {
    OUTLINED_FUNCTION_99_1(OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A820, &qword_26B6F3780);
    sub_26B6AF38C();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_25_5((v16 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last));
    OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7C0, &qword_26B6F3730);
    sub_26B6AEEA8();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
  }

  v21 = OUTLINED_FUNCTION_21_2();
  v22(v21);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventCoverageIngestion.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventCoverageIngestion.init(from:)();
}

void SportingEventCoverageIngestion.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_125();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A280, &unk_26B6F25F0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26_1();
  *(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates) = 0;
  v17 = OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates;
  *(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates) = 0;
  v6 = v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last;
  *v6 = 0;
  *(v6 + 8) = 1;
  OUTLINED_FUNCTION_21_3();
  v7 = sub_26B6AF158();
  OUTLINED_FUNCTION_31_4(&unk_287C2E7F8, v8, v7);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);

    type metadata accessor for SportingEventCoverageIngestion();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_88_1();
    v10 = sub_26B67FB30(v9);
    OUTLINED_FUNCTION_94_1(v10);
    OUTLINED_FUNCTION_88_1();
    *&v0[v17] = sub_26B67FC10(v11);

    OUTLINED_FUNCTION_88_1();
    v13 = sub_26B67FC4C(v12);
    OUTLINED_FUNCTION_187(v13, v14);
    v18.receiver = v0;
    v18.super_class = type metadata accessor for SportingEventCoverageIngestion();
    objc_msgSendSuper2(&v18, sel_init);
    v15 = OUTLINED_FUNCTION_112_0();
    v16(v15, v4);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B69C280(uint64_t *a1@<X8>)
{
  SportingEventCoverageIngestion.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SportingEventCoverageIngestionUpdate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A840, &qword_26B6F37A0);
  OUTLINED_FUNCTION_4();
  v35 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18_0();
  v29 = &v23[OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__coverageUpdateType];
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode;
  v23[OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode] = 2;
  OUTLINED_FUNCTION_39(v26);
  sub_26B6AF548();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);

    type metadata accessor for SportingEventCoverageIngestionUpdate();
    OUTLINED_FUNCTION_106_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = sub_26B6EA424();
    OUTLINED_FUNCTION_178(v31, v32);
    sub_26B6AF59C();
    OUTLINED_FUNCTION_105_1();
    sub_26B6EA464();
    v33 = OUTLINED_FUNCTION_171();
    v34(v33, v35);
    v23[v30] = 0;
    v36.receiver = v23;
    v36.super_class = type metadata accessor for SportingEventCoverageIngestionUpdate();
    objc_msgSendSuper2(&v36, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B69C5D0(uint64_t a1)
{
  sub_26B68A2A0(a1, v23);
  if (!v24)
  {
    sub_26B6413B4(v23, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_17;
  }

  v2 = type metadata accessor for SportingEventCoverageIngestionUpdate();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v20, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v18 = 0;
    return v18 & 1;
  }

  OUTLINED_FUNCTION_142_0();
  v11 = *&v22[v10 + 8];
  if (v12)
  {
    if (!v11)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_44_2(v9);
    v15 = v15 && v13 == v14;
    if (!v15 && (sub_26B6EA5D4() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v11)
  {
LABEL_16:

    goto LABEL_17;
  }

  v16 = *(v1 + OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode);
  v17 = v22[OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode];
  if (v16 != 2)
  {
    if (v17 != 2)
    {
      v18 = sub_26B647CD8(v16 & 1, v17 & 1);

      return v18 & 1;
    }

    goto LABEL_16;
  }

  v18 = v17 == 2;
  return v18 & 1;
}

uint64_t sub_26B69C72C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000026B6FD430 == a2;
  if (v3 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B69C804(char a1)
{
  if (a1)
  {
    return 0x6F43737574617473;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_26B69C84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69C72C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69C874(uint64_t a1)
{
  v2 = sub_26B6AF548();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69C8B0(uint64_t a1)
{
  v2 = sub_26B6AF548();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69C910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A858, &qword_26B6F37A8);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v16 = sub_26B6AF548();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEventCoverageIngestionUpdate.CodingKeys, v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
  sub_26B6839E8();
  OUTLINED_FUNCTION_2_11();
  sub_26B6EA534();
  if (!v14)
  {
    OUTLINED_FUNCTION_193(OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode);
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A860, &qword_26B6F37C0);
    sub_26B6AF5F0();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v18 = OUTLINED_FUNCTION_21_2();
  v19(v18);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_26B69CA54@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCoverageIngestionUpdate.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t IngestionError.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000015;
  }
}

unint64_t sub_26B69CB1C@<X0>(unint64_t *a1@<X8>)
{
  result = IngestionError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void SportingEventProgressStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_247();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_18_2();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  OUTLINED_FUNCTION_22_2();
  sub_26B6EA764();
  if (v22)
  {
    OUTLINED_FUNCTION_95_1();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&a10, a13);
    OUTLINED_FUNCTION_22_2();
    sub_26B6EA5E4();
    OUTLINED_FUNCTION_242();
    v29 = v28 | 0x6E776F6E6B0000;
    if (v30)
    {
      v26 = v29;
      v27 = 0xE700000000000000;
    }

    SportingEventProgressStatus.init(rawValue:)(*&v26);
    OUTLINED_FUNCTION_33_6(&a10);
  }

  OUTLINED_FUNCTION_246();
}

SportsKit::SportingEventProgressStatus_optional __swiftcall SportingEventProgressStatus.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 10;
  if (v2 < 0xA)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SportingEventProgressStatus.rawValue.getter()
{
  result = 0x656D6147657250;
  switch(*v0)
  {
    case 1:
      result = 0x6572676F72506E49;
      break;
    case 2:
      result = 0x6B61657242;
      break;
    case 3:
      result = 0x6C616E6946;
      break;
    case 4:
      result = 0x656E6F7074736F50;
      break;
    case 5:
      result = 0x65646E6570737553;
      break;
    case 6:
      result = 0x656C6C65636E6143;
      break;
    case 7:
      result = 0x646579616C6544;
      break;
    case 8:
      result = 0x74696566726F46;
      break;
    case 9:
      result = OUTLINED_FUNCTION_12_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B69CE20@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventProgressStatus.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B69CF24()
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!v1)
  {
    v3 = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t SportingEventCompetitorQualifier.rawValue.getter()
{
  if (*v0)
  {
    return 2036430657;
  }

  else
  {
    return 1701670728;
  }
}

uint64_t sub_26B69CFCC@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCompetitorQualifier.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

id SportingEventCompetitorContainer.__allocating_init(competitor:score:isActive:winOutcome:ordinal:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6)
{
  v10 = a3;
  v13 = objc_allocWithZone(v6);
  return SportingEventCompetitorContainer.init(competitor:score:isActive:winOutcome:ordinal:)(a1, a2, v10, a4, a5, a6 & 1);
}

id SportingEventCompetitorContainer.init(competitor:score:isActive:winOutcome:ordinal:)(uint64_t a1, uint64_t a2, char a3, _BYTE *a4, uint64_t a5, char a6)
{
  v7 = OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive;
  v6[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive] = 2;
  v8 = OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome;
  v6[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome] = 4;
  v9 = &v6[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal];
  *v9 = 0;
  v9[8] = 1;
  *&v6[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_competitor] = a1;
  *&v6[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score] = a2;
  v6[v7] = a3;
  v6[v8] = *a4;
  *v9 = a5;
  v9[8] = a6 & 1;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for SportingEventCompetitorContainer();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_26B69D2C8(uint64_t a1)
{
  v2 = v1;
  sub_26B68A2A0(a1, v26);
  if (!v27)
  {
    sub_26B6413B4(v26, &qword_2804092A0, &qword_26B6F2850);
    return 0;
  }

  v3 = type metadata accessor for SportingEventCompetitorContainer();
  OUTLINED_FUNCTION_38_3(v3, v4, v5, v3, v6, v7, v8, v9, v23, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_26B68A378();
  v10 = *&v25[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_competitor];
  OUTLINED_FUNCTION_52_0();
  v11 = sub_26B6E9FA4();

  if ((v11 & 1) == 0)
  {
    goto LABEL_18;
  }

  v12 = *&v25[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score];
  OUTLINED_FUNCTION_52_0();
  v13 = sub_26B6E9FA4();

  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = *(v2 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive);
  v15 = v25[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive];
  if (v14 == 2)
  {
    if (v15 != 2)
    {
LABEL_18:

      return 0;
    }
  }

  else if (v15 == 2 || ((v15 ^ v14) & 1) != 0)
  {
    goto LABEL_18;
  }

  v16 = *(v2 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome);
  v17 = v25[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome];
  if (v16 == 4)
  {
    if (v17 != 4)
    {
      goto LABEL_18;
    }
  }

  else if (v17 == 4 || (sub_26B646688(v16, v17) & 1) == 0)
  {
    goto LABEL_18;
  }

  v18 = *(v2 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal);
  v19 = *(v2 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal + 8);
  v20 = *&v25[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal];
  v21 = v25[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal + 8];

  if ((v19 & 1) == 0)
  {
    return (v18 == v20) & ~v21;
  }

  return v21;
}

void sub_26B69D478(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(*(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score) + OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries);
  v4 = sub_26B6542CC();

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_26;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D67DB30](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = (*&v6[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType] + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name);
    v9 = *v8;
    v10 = v8[1];
    v11 = 0xE500000000000000;
    v12 = 0x65726F6353;
    switch(v2)
    {
      case 1:
        v11 = 0xE400000000000000;
        v12 = 1936618834;
        break;
      case 2:
        v11 = 0xE400000000000000;
        v12 = 1937008968;
        break;
      case 3:
        v11 = 0xE600000000000000;
        v12 = 0x73726F727245;
        break;
      case 4:
        v11 = 0xE700000000000000;
        v12 = 0x73656B69727453;
        break;
      case 5:
        v13 = 1819042114;
        goto LABEL_16;
      case 6:
        v12 = 1937012047;
        v11 = 0xE400000000000000;
        break;
      case 7:
        v11 = 0xE800000000000000;
        OUTLINED_FUNCTION_90();
        break;
      case 8:
        v13 = 1818324807;
LABEL_16:
        v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
        break;
      default:
        break;
    }

    if (v9 == v12 && v10 == v11)
    {

LABEL_26:

      return;
    }

    v15 = sub_26B6EA5D4();

    if (v15)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_26B69D6AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74697465706D6F63 && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6576697463417369 && a2 == 0xE800000000000000;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F6374754F6E6977 && a2 == 0xEA0000000000656DLL;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6C616E6964726FLL && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_26B6EA5D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26B69D854(char a1)
{
  result = 0x74697465706D6F63;
  switch(a1)
  {
    case 1:
      result = 0x65726F6373;
      break;
    case 2:
      result = 0x6576697463417369;
      break;
    case 3:
      result = 0x6F6374754F6E6977;
      break;
    case 4:
      result = 0x6C616E6964726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B69D900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69D6AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69D928(uint64_t a1)
{
  v2 = sub_26B6AF74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69D964(uint64_t a1)
{
  v2 = sub_26B6AF74C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69DA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8C0, &unk_26B6F37D0);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v19 = sub_26B6AF74C();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEventCompetitorContainer.CodingKeys, v20, v19);
  type metadata accessor for SportingEventCompetitor();
  OUTLINED_FUNCTION_130_0();
  sub_26B6B25CC(v21, v22, v23, &protocol conformance descriptor for SportingEventCompetitor);
  OUTLINED_FUNCTION_3_12();
  sub_26B6EA534();
  if (!v17)
  {
    OUTLINED_FUNCTION_99_1(OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score);
    type metadata accessor for SportingEventCompetitorScore();
    OUTLINED_FUNCTION_129_0();
    sub_26B6B25CC(v24, v25, v26, &protocol conformance descriptor for SportingEventCompetitorScore);
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_193(OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive);
    OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3D0, &qword_26B6F28A0);
    sub_26B68C890();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_193(OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome);
    OUTLINED_FUNCTION_176();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8C8, &qword_26B6F37E8);
    sub_26B6AF7E8();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_25_5((v16 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal));
    OUTLINED_FUNCTION_175();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8D8, &qword_26B6F37F8);
    sub_26B6AF944();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
  }

  v27 = OUTLINED_FUNCTION_21_2();
  v28(v27);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventCompetitorContainer.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventCompetitorContainer.init(from:)();
}

void SportingEventCompetitorContainer.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A278, &qword_26B6F25E8);
  OUTLINED_FUNCTION_4();
  v22 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  v6 = OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive;
  v0[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive] = 2;
  v7 = OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome;
  v0[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome] = 4;
  v8 = &v0[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal];
  *v8 = 0;
  v8[8] = 1;
  OUTLINED_FUNCTION_39(v3);
  v9 = sub_26B6AF74C();
  OUTLINED_FUNCTION_55_1(&type metadata for SportingEventCompetitorContainer.CodingKeys, v10, v9);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for SportingEventCompetitorContainer();
    OUTLINED_FUNCTION_106_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SportingEventCompetitor();
    OUTLINED_FUNCTION_130_0();
    sub_26B6B25CC(v11, v12, v13, &protocol conformance descriptor for SportingEventCompetitor);
    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_160();
    sub_26B6EA464();
    *&v0[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_competitor] = v23;
    type metadata accessor for SportingEventCompetitorScore();
    OUTLINED_FUNCTION_129_0();
    sub_26B6B25CC(v14, v15, v16, &protocol conformance descriptor for SportingEventCompetitorScore);
    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_88_1();
    sub_26B6EA464();
    *&v0[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score] = v23;
    v0[v6] = sub_26B67FC84(2);
    OUTLINED_FUNCTION_198(3);
    if (sub_26B6EA484())
    {
      OUTLINED_FUNCTION_200();
      OUTLINED_FUNCTION_80_1();
      sub_26B6EA3C4();
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_213();
      sub_26B6812CC();
      OUTLINED_FUNCTION_199();
    }

    else
    {
      v17 = 4;
    }

    v0[v7] = v17;
    OUTLINED_FUNCTION_88_1();
    *v8 = sub_26B67FD10(v18);
    v8[8] = v19 & 1;
    v24.receiver = v0;
    v24.super_class = type metadata accessor for SportingEventCompetitorContainer();
    objc_msgSendSuper2(&v24, sel_init);
    v20 = OUTLINED_FUNCTION_112_0();
    v21(v20, v22);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B69DFC4(uint64_t *a1@<X8>)
{
  SportingEventCompetitorContainer.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SportingEventCompetitor.__allocating_init(canonicalId:members:metadata:statistics:abbreviation:localizedDisplayName:images:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  OUTLINED_FUNCTION_150();
  v10 = objc_allocWithZone(v9);
  OUTLINED_FUNCTION_153();
  SportingEventCompetitor.init(canonicalId:members:metadata:statistics:abbreviation:localizedDisplayName:images:qualifier:)(v11, v12, v13, v14, v15, v16, v17, a8, a9, v18, a8, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
}

void SportingEventCompetitor.init(canonicalId:members:metadata:statistics:abbreviation:localizedDisplayName:images:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  OUTLINED_FUNCTION_132();
  a20 = v24;
  a21 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = a22;
  v32 = a23;
  v34 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members;
  *&v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members] = 0;
  v35 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata;
  *&v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata] = 0;
  v36 = *v32;
  v37 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics;
  *&v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics] = 0;
  v38 = &v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__abbreviation];
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName;
  *&v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName] = 0;
  v40 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images;
  *&v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images] = 0;
  v41 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier;
  v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier] = 2;
  v42 = &v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor_canonicalId];
  *v42 = v43;
  v42[1] = v44;
  *&v23[v34] = v45;
  *&v23[v35] = v46;
  *&v23[v37] = v47;

  *v38 = v31;
  v38[1] = v29;

  *&v23[v39] = v27;

  *&v23[v40] = v33;

  v23[v41] = v36;
  v48 = type metadata accessor for SportingEventCompetitor();
  a9.receiver = v23;
  a9.super_class = v48;
  objc_msgSendSuper2(&a9, sel_init);
  OUTLINED_FUNCTION_131();
}

void sub_26B69E3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v33;
  a28 = v34;
  sub_26B68A2A0(v35, &a13);
  if (!a16)
  {
    sub_26B6413B4(&a13, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_120;
  }

  v36 = type metadata accessor for SportingEventCompetitor();
  if ((OUTLINED_FUNCTION_98_0(v36, v37, v38, v36) & 1) == 0)
  {
LABEL_120:
    OUTLINED_FUNCTION_165();
    return;
  }

  v39 = a12;
  v40 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members);
  if (v40)
  {
    v41 = *&a12[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members];
    if (v41)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v90)
      {
        goto LABEL_119;
      }

      v96 = v29;
      v101 = a12;
      if ((v28 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_43_2();

        OUTLINED_FUNCTION_144();
        while (1)
        {
          OUTLINED_FUNCTION_124_0();
          if (v90)
          {

            v29 = v96;
            v39 = a12;
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_122_0();
          if (v42)
          {
            break;
          }

          if (a11)
          {
            v49 = OUTLINED_FUNCTION_92_1();
            v44 = MEMORY[0x26D67DB30](v49);
          }

          else
          {
            OUTLINED_FUNCTION_121_0();
            if (v43)
            {
              goto LABEL_123;
            }

            v44 = *(v40 + 8 * v31);
          }

          v45 = v44;
          if (v32)
          {
            v50 = OUTLINED_FUNCTION_111();
            v46 = MEMORY[0x26D67DB30](v50);
          }

          else
          {
            OUTLINED_FUNCTION_156();
            if (v43)
            {
              goto LABEL_124;
            }

            v46 = *(v41 + 8 * v31);
          }

          v47 = v46;
          type metadata accessor for SportingEventParticipant();
          v48 = OUTLINED_FUNCTION_93_1();

          ++v31;
          if ((v48 & 1) == 0)
          {
LABEL_98:

            goto LABEL_120;
          }
        }

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
      }

      __break(1u);
      goto LABEL_138;
    }
  }

LABEL_23:
  v51 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata);
  if (v51)
  {
    v52 = *&v39[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata];
    if (v52)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v90)
      {
        goto LABEL_119;
      }

      v97 = v29;
      v101 = v39;
      if (v28 < 0)
      {
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      OUTLINED_FUNCTION_43_2();

      OUTLINED_FUNCTION_144();
      while (1)
      {
        OUTLINED_FUNCTION_124_0();
        if (v90)
        {
          break;
        }

        OUTLINED_FUNCTION_122_0();
        if (v42)
        {
          goto LABEL_125;
        }

        if (a11)
        {
          v58 = OUTLINED_FUNCTION_92_1();
          v53 = MEMORY[0x26D67DB30](v58);
        }

        else
        {
          OUTLINED_FUNCTION_121_0();
          if (v43)
          {
            goto LABEL_126;
          }

          v53 = *(v51 + 8 * v31);
        }

        v54 = v53;
        if (v32)
        {
          v59 = OUTLINED_FUNCTION_111();
          v55 = MEMORY[0x26D67DB30](v59);
        }

        else
        {
          OUTLINED_FUNCTION_156();
          if (v43)
          {
            goto LABEL_127;
          }

          v55 = *(v52 + 8 * v31);
        }

        v56 = v55;
        type metadata accessor for SportingEventMetadata();
        v57 = OUTLINED_FUNCTION_93_1();

        ++v31;
        if ((v57 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      v29 = v97;
      v39 = v101;
    }
  }

  v60 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics);
  if (v60)
  {
    v61 = *&v39[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics];
    if (v61)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v90)
      {
        goto LABEL_119;
      }

      v98 = v29;
      v101 = v39;
      if (v28 < 0)
      {
        goto LABEL_139;
      }

      OUTLINED_FUNCTION_43_2();

      OUTLINED_FUNCTION_144();
      while (1)
      {
        OUTLINED_FUNCTION_124_0();
        if (v90)
        {
          break;
        }

        OUTLINED_FUNCTION_122_0();
        if (v42)
        {
          goto LABEL_128;
        }

        if (a11)
        {
          v67 = OUTLINED_FUNCTION_92_1();
          v62 = MEMORY[0x26D67DB30](v67);
        }

        else
        {
          OUTLINED_FUNCTION_121_0();
          if (v43)
          {
            goto LABEL_129;
          }

          v62 = *(v60 + 8 * v31);
        }

        v63 = v62;
        if (v32)
        {
          v68 = OUTLINED_FUNCTION_111();
          v64 = MEMORY[0x26D67DB30](v68);
        }

        else
        {
          OUTLINED_FUNCTION_156();
          if (v43)
          {
            goto LABEL_130;
          }

          v64 = *(v61 + 8 * v31);
        }

        v65 = v64;
        type metadata accessor for SportingEventCompetitorStatistic();
        v66 = OUTLINED_FUNCTION_93_1();

        ++v31;
        if ((v66 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      v29 = v98;
      v39 = v101;
    }
  }

  v69 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName);
  if (v69)
  {
    v70 = *&v39[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName];
    if (v70)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v90)
      {
        goto LABEL_119;
      }

      v99 = v29;
      v101 = v39;
      if (v28 < 0)
      {
        goto LABEL_140;
      }

      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_216();

      OUTLINED_FUNCTION_144();
      while (1)
      {
        OUTLINED_FUNCTION_124_0();
        if (v90)
        {
          break;
        }

        OUTLINED_FUNCTION_122_0();
        if (v42)
        {
          goto LABEL_131;
        }

        if (a11)
        {
          v75 = OUTLINED_FUNCTION_92_1();
          v71 = MEMORY[0x26D67DB30](v75);
        }

        else
        {
          OUTLINED_FUNCTION_121_0();
          if (v43)
          {
            goto LABEL_132;
          }

          v71 = *(v69 + 8 * v31);
        }

        v72 = v71;
        if (v30)
        {
          v76 = OUTLINED_FUNCTION_111();
          v73 = MEMORY[0x26D67DB30](v76);
        }

        else
        {
          if (v29 >= *(v32 + 16))
          {
            goto LABEL_133;
          }

          v73 = *(v70 + 8 * v31);
        }

        v74 = v73;
        type metadata accessor for SportingEventLocalizedDisplayName();
        v29 = OUTLINED_FUNCTION_93_1();

        ++v31;
        if ((v29 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      v29 = v99;
      v39 = v101;
    }
  }

  v77 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images);
  if (!v77 || (v78 = *&v39[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images]) == 0)
  {
LABEL_100:
    OUTLINED_FUNCTION_47_2();
    if (v87)
    {
      if (!v85)
      {
        goto LABEL_119;
      }

      OUTLINED_FUNCTION_44_2(v86);
      v90 = v90 && v88 == v89;
      if (!v90 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    else if (v85)
    {
LABEL_119:

      goto LABEL_120;
    }

    v91 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier);
    v92 = v39[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier];
    if (v91 == 2)
    {
      if (v92 != 2)
      {
        goto LABEL_119;
      }
    }

    else if (v92 == 2 || (sub_26B646A7C(v91 & 1, v92 & 1) & 1) == 0)
    {
      goto LABEL_119;
    }

    OUTLINED_FUNCTION_228();
    if (!v90 || v93 != v94)
    {
      sub_26B6EA5D4();
    }

    goto LABEL_119;
  }

  OUTLINED_FUNCTION_26_7();
  if (!v90)
  {
    goto LABEL_119;
  }

  v100 = v29;
  v101 = v39;
  if ((v28 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_216();

    OUTLINED_FUNCTION_144();
    while (1)
    {
      OUTLINED_FUNCTION_124_0();
      if (v90)
      {
        break;
      }

      OUTLINED_FUNCTION_122_0();
      if (v42)
      {
        goto LABEL_134;
      }

      if (a11)
      {
        v83 = OUTLINED_FUNCTION_92_1();
        v79 = MEMORY[0x26D67DB30](v83);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        if (v43)
        {
          goto LABEL_135;
        }

        v79 = *(v77 + 8 * v31);
      }

      v80 = v79;
      if (v30)
      {
        v84 = OUTLINED_FUNCTION_111();
        v81 = MEMORY[0x26D67DB30](v84);
      }

      else
      {
        if (v29 >= *(v32 + 16))
        {
          goto LABEL_136;
        }

        v81 = *(v78 + 8 * v31);
      }

      v82 = v81;
      type metadata accessor for SportingEventImage();
      v29 = OUTLINED_FUNCTION_93_1();

      ++v31;
      if ((v29 & 1) == 0)
      {
        goto LABEL_98;
      }
    }

    v29 = v100;
    v39 = v101;
    goto LABEL_100;
  }

LABEL_141:
  __break(1u);
}

void sub_26B69E988()
{
  OUTLINED_FUNCTION_132();
  v2 = *(v0 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics);
  if (v2)
  {
    v3 = *v1;
    v4 = sub_26B6542CC();
    OUTLINED_FUNCTION_245();
    v15 = v5;
    v16 = v6;

    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        goto LABEL_27;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D67DB30](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v8 = *(v2 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v10 = (*&v8[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorStatistic_statisticType] + OBJC_IVAR____TtC9SportsKit36SportingEventCompetitorStatisticType_name);
      v11 = 0xE700000000000000;
      v12 = 0x73747369737341;
      switch(v3)
      {
        case 1:
          v12 = 0xD000000000000015;
          v11 = v15;
          break;
        case 2:
          v11 = 0xE600000000000000;
          v12 = 0x736573736150;
          break;
        case 3:
          v12 = 0xD000000000000015;
          v11 = v16;
          break;
        case 4:
          v11 = 0xE800000000000000;
          v12 = 0x73646E756F626552;
          break;
        case 5:
          v11 = 0xE500000000000000;
          v12 = 0x73746F6853;
          break;
        case 6:
          v11 = 0xEA00000000006C61;
          v12 = 0x6F473A73746F6853;
          break;
        case 7:
          v11 = 0xE900000000000073;
          v12 = 0x7265766F6E727554;
          break;
        default:
          break;
      }

      if (*v10 == v12 && v10[1] == v11)
      {

LABEL_26:

        goto LABEL_27;
      }

      v14 = sub_26B6EA5D4();

      if (v14)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_27:
    OUTLINED_FUNCTION_131();
  }
}

uint64_t sub_26B69EBDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737265626D656DLL && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974736974617473 && a2 == 0xEA00000000007363;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6169766572626261 && a2 == 0xEC0000006E6F6974;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000026B6FCA10 == a2;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x736567616D69 && a2 == 0xE600000000000000;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656966696C617571 && a2 == 0xE900000000000072)
              {

                return 7;
              }

              else
              {
                v13 = sub_26B6EA5D4();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26B69EE70(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 0x737265626D656DLL;
      break;
    case 2:
      result = 0x617461646174656DLL;
      break;
    case 3:
      result = 0x6974736974617473;
      break;
    case 4:
      result = 0x6169766572626261;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x736567616D69;
      break;
    case 7:
      result = 0x656966696C617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B69EF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69EBDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69EF9C(uint64_t a1)
{
  v2 = sub_26B6AFAB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69EFD8(uint64_t a1)
{
  v2 = sub_26B6AFAB0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_100_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A928, &qword_26B6F3810);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v16 = sub_26B6AFAB0();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEventCompetitor.CodingKeys, v17, v16);
  OUTLINED_FUNCTION_105(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor_canonicalId);
  OUTLINED_FUNCTION_35_1();
  sub_26B6EA4F4();
  if (!v14)
  {
    OUTLINED_FUNCTION_205(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members);
    OUTLINED_FUNCTION_87_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A930, &qword_26B6F3818);
    sub_26B6AFB04();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    OUTLINED_FUNCTION_205(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata);
    OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A940, &qword_26B6F3830);
    sub_26B6AFCC0();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    OUTLINED_FUNCTION_205(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics);
    OUTLINED_FUNCTION_176();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A950, &qword_26B6F3848);
    sub_26B6AFE7C();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    OUTLINED_FUNCTION_175();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
    sub_26B6839E8();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    OUTLINED_FUNCTION_205(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A720, &qword_26B6F36D8);
    sub_26B6AE944();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    OUTLINED_FUNCTION_205(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A960, &qword_26B6F3860);
    sub_26B6B003C();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A970, &qword_26B6F3878);
    sub_26B6B01F8();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
  }

  v18 = OUTLINED_FUNCTION_21_2();
  v19(v18);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_190();
}

void SportingEventCompetitor.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventCompetitor.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

void SportingEventCompetitor.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_38();
  v15 = v13;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A258, &qword_26B6F25C8);
  OUTLINED_FUNCTION_4();
  v36 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_16_0();
  *&v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members] = 0;
  *&v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata] = 0;
  v37 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics;
  *&v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics] = 0;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__abbreviation);
  v38 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName;
  *&v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName] = 0;
  v21 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images;
  *&v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images] = 0;
  v22 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier;
  v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier] = 2;
  OUTLINED_FUNCTION_39(v17);
  v23 = sub_26B6AFAB0();
  OUTLINED_FUNCTION_48_1(&type metadata for SportingEventCompetitor.CodingKeys, v24, v23);
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);

    type metadata accessor for SportingEventCompetitor();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    OUTLINED_FUNCTION_35_1();
    v25 = sub_26B6EA424();
    OUTLINED_FUNCTION_70(v25, v26, OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor_canonicalId);
    OUTLINED_FUNCTION_35_1();
    v28 = sub_26B67FE00(v27);
    OUTLINED_FUNCTION_94_1(v28);
    OUTLINED_FUNCTION_35_1();
    v30 = sub_26B67FE28(v29);
    OUTLINED_FUNCTION_94_1(v30);
    OUTLINED_FUNCTION_35_1();
    *&v15[v37] = sub_26B67FE64(v31);

    v32 = sub_26B67FEA0(4);
    OUTLINED_FUNCTION_178(v32, v33);
    *&v15[v38] = sub_26B67FEC8(5);

    *&v15[v21] = sub_26B67FF04(6);

    OUTLINED_FUNCTION_198(7);
    if (sub_26B6EA484())
    {
      sub_26B6EA3C4();
      sub_26B642140(v40, &v39);
      sub_26B681414();
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      a13 = 2;
    }

    v15[v22] = a13;
    v35 = type metadata accessor for SportingEventCompetitor();
    v41.receiver = v15;
    v41.super_class = v35;
    objc_msgSendSuper2(&v41, sel_init);
    (*(v36 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B69F78C(uint64_t *a1@<X8>)
{
  SportingEventCompetitor.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id SportingEventMetadata.__allocating_init(metadataType:value:)()
{
  OUTLINED_FUNCTION_248();
  v0 = OUTLINED_FUNCTION_240();
  return SportingEventMetadata.init(metadataType:value:)(v0, v1, v2);
}

id SportingEventMetadata.init(metadataType:value:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_metadataType] = *a1;
  v4 = &v3[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_value];
  *v4 = a2;
  v4[1] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SportingEventMetadata();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_26B69F898(uint64_t a1)
{
  sub_26B68A2A0(a1, v17);
  if (!v18)
  {
    sub_26B6413B4(v17, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_10;
  }

  v2 = type metadata accessor for SportingEventMetadata();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v14, v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  OUTLINED_FUNCTION_194(OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_value);
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_26B6EA5D4() & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = sub_26B6472BC(*(v1 + OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_metadataType), v16[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_metadataType]);

  return v12 & 1;
}

uint64_t sub_26B69F9B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xEC00000065707954;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B69FA78(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_26B69FABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69F9B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69FAE4(uint64_t a1)
{
  v2 = sub_26B6B0354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69FB20(uint64_t a1)
{
  v2 = sub_26B6B0354();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69FB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A990, &qword_26B6F3890);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v18 = sub_26B6B0354();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEventMetadata.CodingKeys, v19, v18);
  sub_26B6B03A8();
  OUTLINED_FUNCTION_69_1();
  sub_26B6EA534();
  if (!v16)
  {
    OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_value);
    OUTLINED_FUNCTION_63_2();
    sub_26B6EA4F4();
  }

  v20 = OUTLINED_FUNCTION_21_2();
  v21(v20);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_65_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A9A8, &qword_26B6F3898);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v27 = sub_26B6B0354();
  OUTLINED_FUNCTION_12_7(&type metadata for SportingEventMetadata.CodingKeys, v28, v27);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    type metadata accessor for SportingEventMetadata();
    v30 = OUTLINED_FUNCTION_106_1();
    OUTLINED_FUNCTION_215(v30, v31);
  }

  else
  {
    sub_26B6B03FC();
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA464();
    v25[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_metadataType] = a13;
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_52_1();
    v29 = sub_26B6EA424();
    OUTLINED_FUNCTION_237(v29, v32, OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_value);
    v35.receiver = v25;
    v35.super_class = type metadata accessor for SportingEventMetadata();
    objc_msgSendSuper2(&v35, sel_init);
    v33 = OUTLINED_FUNCTION_10_8();
    v34(v33);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B69FE5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_223(1701667182);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B69FED4@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventMetadata.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26B69FF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69FE5C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B69FF50(uint64_t a1)
{
  v2 = sub_26B6B0450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69FF8C(uint64_t a1)
{
  v2 = sub_26B6B0450();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventMetadataType.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A9B8, &qword_26B6F38A0);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_7();
  sub_26B6B0450();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v1)
  {
    OUTLINED_FUNCTION_105_1();
    sub_26B6EA424();
    v8 = sub_26B6EA394();

    if (v8 >= 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8;
    }

    (*(v6 + 8))(v3, v4);
    *v2 = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_37();
}

unint64_t SportingEventMetadataType.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F72676B636142;
  }
}

SportsKit::SportingEventMetadataType_optional __swiftcall SportingEventMetadataType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void SportingEventMetadataType.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A9C8, &qword_26B6F38A8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_26B6B0450();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_234();
  sub_26B6EA4F4();
  v3 = OUTLINED_FUNCTION_85_1();
  v4(v3);

  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B6A0360@<X0>(unint64_t *a1@<X8>)
{
  result = SportingEventMetadataType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26B6A05EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v33;
  a28 = v34;
  sub_26B68A2A0(v35, &a13);
  if (!a16)
  {
    sub_26B6413B4(&a13, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_116;
  }

  v36 = type metadata accessor for SportingEventParticipant();
  if ((OUTLINED_FUNCTION_98_0(v36, v37, v38, v36) & 1) == 0)
  {
LABEL_116:
    OUTLINED_FUNCTION_165();
    return;
  }

  v39 = a12;
  v40 = *(v29 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata);
  if (v40)
  {
    v41 = *&a12[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata];
    if (v41)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v71)
      {
        goto LABEL_115;
      }

      v103 = v29;
      v105 = a12;
      if ((v28 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_43_2();

        OUTLINED_FUNCTION_144();
        while (1)
        {
          OUTLINED_FUNCTION_124_0();
          if (v71)
          {

            v29 = v103;
            v39 = a12;
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_122_0();
          if (v42)
          {
            break;
          }

          if (a11)
          {
            v48 = OUTLINED_FUNCTION_92_1();
            v44 = MEMORY[0x26D67DB30](v48);
          }

          else
          {
            OUTLINED_FUNCTION_121_0();
            if (v43)
            {
              goto LABEL_120;
            }

            v44 = *(v40 + 8 * v31);
          }

          v39 = v44;
          if (v32)
          {
            v49 = OUTLINED_FUNCTION_111();
            v45 = MEMORY[0x26D67DB30](v49);
          }

          else
          {
            OUTLINED_FUNCTION_156();
            if (v43)
            {
              goto LABEL_121;
            }

            v45 = *(v41 + 8 * v31);
          }

          v46 = v45;
          type metadata accessor for SportingEventParticipantMetadata();
          v47 = OUTLINED_FUNCTION_93_1();

          ++v31;
          if ((v47 & 1) == 0)
          {
LABEL_60:

            goto LABEL_61;
          }
        }

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

      goto LABEL_130;
    }
  }

LABEL_23:
  v50 = *(v29 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics);
  if (v50)
  {
    v51 = *&v39[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics];
    if (v51)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v71)
      {
        goto LABEL_115;
      }

      v104 = v29;
      v105 = v39;
      if (v28 < 0)
      {
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_43_2();

      OUTLINED_FUNCTION_144();
      while (1)
      {
        OUTLINED_FUNCTION_124_0();
        if (v71)
        {
          break;
        }

        OUTLINED_FUNCTION_122_0();
        if (v42)
        {
          goto LABEL_122;
        }

        if (a11)
        {
          v56 = OUTLINED_FUNCTION_92_1();
          v52 = MEMORY[0x26D67DB30](v56);
        }

        else
        {
          OUTLINED_FUNCTION_121_0();
          if (v43)
          {
            goto LABEL_123;
          }

          v52 = *(v50 + 8 * v31);
        }

        v39 = v52;
        if (v32)
        {
          v57 = OUTLINED_FUNCTION_111();
          v53 = MEMORY[0x26D67DB30](v57);
        }

        else
        {
          OUTLINED_FUNCTION_156();
          if (v43)
          {
            goto LABEL_124;
          }

          v53 = *(v51 + 8 * v31);
        }

        v54 = v53;
        type metadata accessor for SportingEventParticipantStatistic();
        v55 = OUTLINED_FUNCTION_93_1();

        ++v31;
        if ((v55 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      v29 = v104;
      v39 = v105;
    }
  }

  v58 = *(v29 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__images);
  if (!v58 || (v59 = *&v39[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__images]) == 0)
  {
LABEL_63:
    OUTLINED_FUNCTION_47_2();
    if (v68)
    {
      if (!v66)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_44_2(v67);
      v71 = v71 && v69 == v70;
      if (!v71 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_115;
      }
    }

    else if (v66)
    {
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_47_2();
    if (v74)
    {
      if (!v72)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_44_2(v73);
      v77 = v71 && v75 == v76;
      if (!v77 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_115;
      }
    }

    else if (v72)
    {
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_47_2();
    if (v80)
    {
      if (!v78)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_44_2(v79);
      v83 = v71 && v81 == v82;
      if (!v83 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_115;
      }
    }

    else if (v78)
    {
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_47_2();
    if (v86)
    {
      if (!v84)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_44_2(v85);
      v89 = v71 && v87 == v88;
      if (!v89 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_115;
      }
    }

    else if (v84)
    {
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_47_2();
    if (v92)
    {
      if (!v90)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_44_2(v91);
      v95 = v71 && v93 == v94;
      if (!v95 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_115;
      }

LABEL_106:
      OUTLINED_FUNCTION_142_0();
      v98 = *&v39[v97 + 8];
      if (!v99)
      {

        if (v98)
        {
LABEL_61:
        }

        goto LABEL_116;
      }

      if (!v98)
      {
        goto LABEL_115;
      }

      v100 = OUTLINED_FUNCTION_44_2(v96);
      if (!v71 || v101 != v98)
      {
        OUTLINED_FUNCTION_223(v100);
        goto LABEL_115;
      }

LABEL_125:

      goto LABEL_116;
    }

    if (!v90)
    {
      goto LABEL_106;
    }

LABEL_115:

    goto LABEL_116;
  }

  OUTLINED_FUNCTION_26_7();
  if (!v71)
  {
    goto LABEL_115;
  }

  v105 = v39;
  if ((v28 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_216();

    OUTLINED_FUNCTION_144();
    while (1)
    {
      OUTLINED_FUNCTION_124_0();
      if (v71)
      {

        v39 = v105;
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_122_0();
      if (v42)
      {
        break;
      }

      if (a11)
      {
        v64 = OUTLINED_FUNCTION_92_1();
        v60 = MEMORY[0x26D67DB30](v64);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        if (v43)
        {
          goto LABEL_128;
        }

        v60 = *(v58 + 8 * v31);
      }

      v61 = v60;
      if (v30)
      {
        v65 = OUTLINED_FUNCTION_111();
        v62 = MEMORY[0x26D67DB30](v65);
      }

      else
      {
        if (v29 >= *(v32 + 16))
        {
          goto LABEL_129;
        }

        v62 = *(v59 + 8 * v31);
      }

      v63 = v62;
      type metadata accessor for SportingEventImage();
      v29 = OUTLINED_FUNCTION_93_1();

      ++v31;
      if ((v29 & 1) == 0)
      {
        goto LABEL_60;
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
  }

  __break(1u);
}

void sub_26B6A0A90()
{
  OUTLINED_FUNCTION_132();
  v2 = *(v0 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics);
  if (v2)
  {
    v3 = *v1;
    v4 = sub_26B6542CC();
    OUTLINED_FUNCTION_245();
    v15 = v5;
    v16 = v6;

    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        goto LABEL_25;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D67DB30](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v2 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v10 = (*&v8[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_statisticType] + OBJC_IVAR____TtC9SportsKit37SportingEventParticipantStatisticType_name);
      v11 = 0xEE00676E69747461;
      v12 = 0x423A737461427441;
      switch(v3)
      {
        case 1:
          v12 = 0x7461423A73746948;
          v11 = 0xEC000000676E6974;
          break;
        case 2:
          v12 = 0x503A736573736F4CLL;
          v11 = 0xEF676E6968637469;
          break;
        case 3:
          v12 = 0xD000000000000014;
          v11 = v15;
          break;
        case 4:
          v12 = 0xD00000000000001CLL;
          v11 = v16;
          break;
        case 5:
          v12 = 0x7469503A736E6957;
          v11 = 0xED0000676E696863;
          break;
        default:
          break;
      }

      if (*v10 == v12 && v10[1] == v11)
      {

LABEL_24:

        goto LABEL_25;
      }

      v14 = sub_26B6EA5D4();

      if (v14)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_131();
  }
}

uint64_t sub_26B6A0CE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D6172676F6E6F6DLL && a2 == 0xE800000000000000;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6974736974617473 && a2 == 0xEA00000000007363;
                if (v12 || (sub_26B6EA5D4() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_26B6EA5D4();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_26B6A0FB8(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      v3 = 0x4E7473726966;
      goto LABEL_5;
    case 3:
      result = 0x656D614E7473616CLL;
      break;
    case 4:
      v3 = 0x72676F6E6F6DLL;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
      break;
    case 5:
      result = 0x6E6F697469736F70;
      break;
    case 6:
      result = 0x617461646174656DLL;
      break;
    case 7:
      result = 0x6974736974617473;
      break;
    case 8:
      result = 0x736567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6A10CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A0CE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A10F4(uint64_t a1)
{
  v2 = sub_26B6B04C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A1130(uint64_t a1)
{
  v2 = sub_26B6B04C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A123C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_100_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AA18, &qword_26B6F38B0);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v16 = sub_26B6B04C8();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEventParticipant.CodingKeys, v17, v16);
  OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__canonicalId);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
  sub_26B6839E8();
  OUTLINED_FUNCTION_15_6();
  sub_26B6EA534();
  if (!v14)
  {
    OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__displayName);
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__firstName);
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__lastName);
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__monogram);
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__position);
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata);
    OUTLINED_FUNCTION_204();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AA28, &qword_26B6F38B8);
    sub_26B6B051C();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics);
    OUTLINED_FUNCTION_233();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AA58, &qword_26B6F38D0);
    sub_26B6B06D8();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__images);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A960, &qword_26B6F3860);
    sub_26B6B003C();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v18 = OUTLINED_FUNCTION_21_2();
  v19(v18);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_190();
}

void SportingEventParticipant.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventParticipant.init(from:)();
}

void SportingEventParticipant.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A200, &qword_26B6F25A8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = v42 - v6;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__canonicalId);
  v9 = v8;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__displayName);
  v43 = v10;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__firstName);
  v45 = v11;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__lastName);
  v52 = v12;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__monogram);
  v44 = v13;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__position);
  v50 = v14;
  v49 = OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata;
  *&v2[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata] = 0;
  v48 = OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics;
  *&v2[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics] = 0;
  v46 = v4;
  v47 = OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__images;
  *&v2[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__images] = 0;
  OUTLINED_FUNCTION_39(v4);
  v15 = sub_26B6B04C8();
  v42[1] = v7;
  OUTLINED_FUNCTION_55_1(&type metadata for SportingEventParticipant.CodingKeys, v16, v15);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v46);

    OUTLINED_FUNCTION_197();

    type metadata accessor for SportingEventParticipant();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_210();
    *v9 = sub_26B67FF2C(v17);
    v9[1] = v18;

    v19 = sub_26B67FF2C(1);
    v20 = v43;
    *v43 = v19;
    v20[1] = v21;

    v22 = sub_26B67FF2C(2);
    v23 = v45;
    *v45 = v22;
    v23[1] = v24;

    *v52 = sub_26B67FF2C(3);
    v52[1] = v25;

    v26 = sub_26B67FF2C(4);
    v27 = v44;
    *v44 = v26;
    v27[1] = v28;

    OUTLINED_FUNCTION_210();
    v30 = sub_26B67FF2C(v29);
    v31 = v50;
    *v50 = v30;
    v31[1] = v32;

    OUTLINED_FUNCTION_210();
    v34 = sub_26B67FF54(v33);
    OUTLINED_FUNCTION_94_1(v34);
    OUTLINED_FUNCTION_210();
    v36 = sub_26B67FF90(v35);
    OUTLINED_FUNCTION_94_1(v36);
    OUTLINED_FUNCTION_210();
    v38 = sub_26B67FFCC(v37);
    OUTLINED_FUNCTION_94_1(v38);
    v39 = type metadata accessor for SportingEventParticipant();
    v51.receiver = v2;
    v51.super_class = v39;
    objc_msgSendSuper2(&v51, sel_init);
    v40 = OUTLINED_FUNCTION_183();
    v41(v40);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A1914(uint64_t *a1@<X8>)
{
  SportingEventParticipant.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6A199C(uint64_t a1)
{
  sub_26B68A2A0(a1, v16);
  if (!v17)
  {
    sub_26B6413B4(v16, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_10;
  }

  v2 = type metadata accessor for SportingEventParticipantMetadata();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v13, v14);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v11 = 0;
    return v11 & 1;
  }

  v9 = *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value) == *&v15[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value] && *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value + 8) == *&v15[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value + 8];
  if (!v9 && (sub_26B6EA5D4() & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_26B68A378();
  v10 = *&v15[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_metadataType];
  OUTLINED_FUNCTION_92_1();
  v11 = sub_26B6E9FA4();

  return v11 & 1;
}

uint64_t sub_26B6A1AE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xEC00000065707954)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6A1BAC(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_26B6A1BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A1AE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A1C18(uint64_t a1)
{
  v2 = sub_26B6B0898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A1C54(uint64_t a1)
{
  v2 = sub_26B6B0898();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A1CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AA98, &qword_26B6F38F0);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v16 = sub_26B6B0898();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEventParticipantMetadata.CodingKeys, v17, v16);
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value);
  OUTLINED_FUNCTION_63_2();
  sub_26B6EA4F4();
  if (!v14)
  {
    OUTLINED_FUNCTION_99_1(OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_metadataType);
    type metadata accessor for SportingEventParticipantMetadataType();
    OUTLINED_FUNCTION_134();
    sub_26B6B25CC(v18, v19, v20, &protocol conformance descriptor for SportingEventParticipantMetadataType);
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v21 = OUTLINED_FUNCTION_21_2();
  v22(v21);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventParticipantMetadata.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventParticipantMetadata.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventParticipantMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_64_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAB0, &qword_26B6F38F8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  v14 = sub_26B6B0898();
  OUTLINED_FUNCTION_12_7(&type metadata for SportingEventParticipantMetadata.CodingKeys, v15, v14);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    type metadata accessor for SportingEventParticipantMetadata();
    v17 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_215(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_52_1();
    v16 = sub_26B6EA424();
    v19 = &v10[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value];
    *v19 = v16;
    v19[1] = v20;
    type metadata accessor for SportingEventParticipantMetadataType();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_134();
    sub_26B6B25CC(v21, v22, v23, &protocol conformance descriptor for SportingEventParticipantMetadataType);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_metadataType] = a10;
    v26.receiver = v10;
    v26.super_class = type metadata accessor for SportingEventParticipantMetadata();
    objc_msgSendSuper2(&v26, sel_init);
    v24 = OUTLINED_FUNCTION_10_8();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A2010(uint64_t *a1@<X8>)
{
  SportingEventParticipantMetadata.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6A208C(uint64_t a1)
{
  sub_26B68A2A0(a1, v16);
  if (!v17)
  {
    sub_26B6413B4(v16, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_9;
  }

  v1 = type metadata accessor for SportingEventParticipantMetadataType();
  OUTLINED_FUNCTION_38_3(v1, v2, v3, v1, v4, v5, v6, v7, v13, v14);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

  OUTLINED_FUNCTION_194(OBJC_IVAR____TtC9SportsKit36SportingEventParticipantMetadataType_name);
  v10 = v10 && v8 == v9;
  if (v10)
  {

    v11 = 1;
  }

  else
  {
    v11 = sub_26B6EA5D4();
  }

  return v11 & 1;
}

uint64_t sub_26B6A2190(uint64_t a1)
{
  v2 = sub_26B6B0910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A21CC(uint64_t a1)
{
  v2 = sub_26B6B0910();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A222C(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_104_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAC8, &qword_26B6F3900);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B0910();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit36SportingEventParticipantMetadataType_name);
  OUTLINED_FUNCTION_177();
  sub_26B6EA4F4();
  v2 = OUTLINED_FUNCTION_38_2();
  v3(v2);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

void SportingEventParticipantMetadataType.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventParticipantMetadataType.init(from:)();
}

void SportingEventParticipantMetadataType.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAD8, &qword_26B6F3908);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v4 = sub_26B6B0910();
  OUTLINED_FUNCTION_31_4(&type metadata for SportingEventParticipantMetadataType.CodingKeys, v5, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for SportingEventParticipantMetadataType();
    v7 = OUTLINED_FUNCTION_106_1();
    OUTLINED_FUNCTION_225(v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
    v6 = sub_26B6EA424();
    OUTLINED_FUNCTION_237(v6, v9, OBJC_IVAR____TtC9SportsKit36SportingEventParticipantMetadataType_name);
    v12.receiver = v2;
    v12.super_class = type metadata accessor for SportingEventParticipantMetadataType();
    objc_msgSendSuper2(&v12, sel_init);
    v10 = OUTLINED_FUNCTION_13_3();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A2484(uint64_t *a1@<X8>)
{
  SportingEventParticipantMetadataType.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id SportingEventCompetitorScore.__allocating_init(scoreEntries:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SportingEventCompetitorScore.init(scoreEntries:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SportingEventCompetitorScore();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_26B6A2570(uint64_t a1)
{
  sub_26B68A2A0(a1, v25);
  if (v26)
  {
    v2 = type metadata accessor for SportingEventCompetitorScore();
    OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v22, v23);
    if (swift_dynamicCast())
    {
      v9 = *(v1 + OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries);
      v10 = sub_26B651134(v9);
      v11 = OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries;
      if (v10 == sub_26B651134(*&v24[OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries]))
      {
        v12 = sub_26B651134(v9);
        if ((v12 & 0x8000000000000000) == 0)
        {
          v13 = -v12;
          v14 = 4;
          while (1)
          {
            if (v13 + v14 == 4)
            {

              return;
            }

            v15 = v14 - 4;
            if (__OFADD__(v14 - 4, 1))
            {
              break;
            }

            if ((v9 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x26D67DB30](v14 - 4, v9);
            }

            else
            {
              if (v15 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v16 = *(v9 + 8 * v14);
            }

            v17 = v16;
            v18 = *&v24[v11];
            if ((v18 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x26D67DB30](v14 - 4);
            }

            else
            {
              if (v15 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_24;
              }

              v19 = *(v18 + 8 * v14);
            }

            v20 = v19;
            type metadata accessor for SportingEventCompetitorScoreEntry();
            OUTLINED_FUNCTION_52_0();
            v21 = sub_26B6E9FA4();

            ++v14;
            if ((v21 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
        }

        __break(1u);
      }

      else
      {
LABEL_19:
      }
    }
  }

  else
  {
    sub_26B6413B4(v25, &qword_2804092A0, &qword_26B6F2850);
  }
}

uint64_t sub_26B6A2760(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E4565726F6373 && a2 == 0xEC00000073656972)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6A2800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A2760(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B6A282C(uint64_t a1)
{
  v2 = sub_26B6B0988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A2868(uint64_t a1)
{
  v2 = sub_26B6B0988();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A28CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_104_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAE0, &qword_26B6F3910);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B0988();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAE8, &qword_26B6F3918);
  sub_26B6B09DC();
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_177();
  sub_26B6EA534();
  v17 = OUTLINED_FUNCTION_38_2();
  v18(v17);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

void SportingEventCompetitorScore.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventCompetitorScore.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventCompetitorScore.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_65_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAF0, &qword_26B6F3920);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  v14 = sub_26B6B0988();
  OUTLINED_FUNCTION_12_7(&type metadata for SportingEventCompetitorScore.CodingKeys, v15, v14);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    v16 = type metadata accessor for SportingEventCompetitorScore();
    OUTLINED_FUNCTION_102_0(v16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAE8, &qword_26B6F3918);
    sub_26B6B0A90();
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v12[OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries] = a10;
    v19.receiver = v12;
    v19.super_class = type metadata accessor for SportingEventCompetitorScore();
    objc_msgSendSuper2(&v19, sel_init);
    v17 = OUTLINED_FUNCTION_10_8();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A2B60(uint64_t *a1@<X8>)
{
  SportingEventCompetitorScore.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SportingEventCompetitorWinOutcome.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_247();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_18_2();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  OUTLINED_FUNCTION_22_2();
  sub_26B6EA764();
  if (v22)
  {
    OUTLINED_FUNCTION_95_1();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&a10, a13);
    OUTLINED_FUNCTION_22_2();
    sub_26B6EA5E4();
    sub_26B6EA394();

    OUTLINED_FUNCTION_33_6(&a10);
  }

  OUTLINED_FUNCTION_246();
}

SportsKit::SportingEventCompetitorWinOutcome_optional __swiftcall SportingEventCompetitorWinOutcome.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SportingEventCompetitorWinOutcome.rawValue.getter()
{
  result = 7235927;
  switch(*v0)
  {
    case 1:
      result = 1936944972;
      break;
    case 2:
      result = 6646100;
      break;
    case 3:
      result = OUTLINED_FUNCTION_12_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6A2D30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_223(0x65756C6176) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736974617473 && a2 == 0xED00006570795463)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_223(0x6974736974617473);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6A2E70@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCompetitorWinOutcome.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B6A2F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A2D30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A2F28(uint64_t a1)
{
  v2 = sub_26B6B0B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A2F64(uint64_t a1)
{
  v2 = sub_26B6B0B44();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventCompetitorScoreEntry.valueContainer.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_valueContainer + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_valueContainer);
  *(a1 + 8) = v2;
}

id SportingEventCompetitorScoreEntry.init(value:statisticType:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value] = a1;
  v3 = &v2[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_valueContainer];
  *v3 = a1;
  v3[8] = 0;
  *&v2[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SportingEventCompetitorScoreEntry();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_26B6A307C(uint64_t a1)
{
  sub_26B68A2A0(a1, v15);
  if (!v16)
  {
    sub_26B6413B4(v15, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_7;
  }

  v2 = type metadata accessor for SportingEventCompetitorScoreEntry();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v12, v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    return v10 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value) != *&v14[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value])
  {

    goto LABEL_7;
  }

  sub_26B68A378();
  v9 = *&v14[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType];
  OUTLINED_FUNCTION_92_1();
  v10 = sub_26B6E9FA4();

  return v10 & 1;
}

void SportingEventCompetitorScoreEntry.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventCompetitorScoreEntry.init(from:)();
}

void SportingEventCompetitorScoreEntry.init(from:)()
{
  OUTLINED_FUNCTION_64_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB08, &qword_26B6F3928);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  v4 = sub_26B6B0B44();
  OUTLINED_FUNCTION_12_7(&unk_287C2E258, v5, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    type metadata accessor for SportingEventCompetitorScoreEntry();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SportingEventCompetitorScoreStatisticType();
    v13 = 1;
    OUTLINED_FUNCTION_128_0();
    sub_26B6B25CC(v6, 255, v7, &protocol conformance descriptor for SportingEventCompetitorScoreStatisticType);
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v0[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType] = v14;
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_52_1();
    v8 = sub_26B6EA454();
    v9 = OUTLINED_FUNCTION_10_8();
    v10(v9);
    *&v0[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value] = v8;
    v11 = &v0[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_valueContainer];
    *&v0[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_valueContainer] = v8;
    v11[8] = 0;
    v12.receiver = v0;
    v12.super_class = type metadata accessor for SportingEventCompetitorScoreEntry();
    objc_msgSendSuper2(&v12, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v2);
  }
}

void sub_26B6A3538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB10, &qword_26B6F3930);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v16 = sub_26B6B0B44();
  OUTLINED_FUNCTION_39_3(&unk_287C2E258, v17, v16);
  OUTLINED_FUNCTION_69_1();
  sub_26B6EA524();
  if (!v14)
  {
    OUTLINED_FUNCTION_99_1(OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType);
    type metadata accessor for SportingEventCompetitorScoreStatisticType();
    OUTLINED_FUNCTION_128_0();
    sub_26B6B25CC(v18, 255, v19, &protocol conformance descriptor for SportingEventCompetitorScoreStatisticType);
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v20 = OUTLINED_FUNCTION_21_2();
  v21(v20);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void sub_26B6A3674(uint64_t *a1@<X8>)
{
  SportingEventCompetitorScoreEntry.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6A36D0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_26B6A3730(v1);
}

void *sub_26B6A3700()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total);
  v2 = v1;
  return v1;
}

id SportingEventCurrentClock.__allocating_init(current:total:periods:)()
{
  OUTLINED_FUNCTION_248();
  v0 = OUTLINED_FUNCTION_240();
  return SportingEventCurrentClock.init(current:total:periods:)(v0, v1, v2);
}

id SportingEventCurrentClock.init(current:total:periods:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total;
  *&v3[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total] = 0;
  v5 = OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods;
  *&v3[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods] = 0;
  *&v3[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current] = a1;
  *&v3[v4] = a2;
  *&v3[v5] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for SportingEventCurrentClock();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_26B6A3810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v30;
  a28 = v31;
  v32 = v28;
  sub_26B68A2A0(v33, &a13);
  if (!a16)
  {
    sub_26B6413B4(&a13, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_29;
  }

  v34 = type metadata accessor for SportingEventCurrentClock();
  if ((OUTLINED_FUNCTION_98_0(v34, v35, v36, v34) & 1) == 0)
  {
LABEL_29:
    OUTLINED_FUNCTION_165();
    return;
  }

  v37 = a12;
  v38 = *(v28 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods);
  v39 = *&a12[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods];
  if (!v38)
  {
    if (v39)
    {
LABEL_28:

      goto LABEL_29;
    }

LABEL_24:
    sub_26B68A378();
    v52 = *&v37[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current];
    OUTLINED_FUNCTION_52_0();
    v53 = sub_26B6E9FA4();

    if ((v53 & 1) == 0)
    {
      goto LABEL_28;
    }

    v54 = *(v32 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total);
    v55 = *&v37[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total];
    if (!v54)
    {
      v58 = v55;

      if (v55)
      {
      }

      goto LABEL_29;
    }

    if (!v55)
    {
      goto LABEL_28;
    }

    type metadata accessor for SportingEventClock();
    v56 = v55;
    v57 = v54;
    OUTLINED_FUNCTION_211();
    sub_26B6E9FA4();

    goto LABEL_29;
  }

  if (!v39)
  {
    goto LABEL_28;
  }

  v40 = sub_26B651134(*(v28 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods));
  if (v40 != sub_26B651134(v39))
  {
    goto LABEL_28;
  }

  if ((v40 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_189();

    v41 = 4;
    while (1)
    {
      OUTLINED_FUNCTION_124_0();
      if (v42)
      {

        v37 = a12;
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_122_0();
      if (v43)
      {
        break;
      }

      if (a11)
      {
        v50 = OUTLINED_FUNCTION_111();
        v45 = MEMORY[0x26D67DB30](v50);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        if (v44)
        {
          goto LABEL_34;
        }

        v45 = *(v38 + 8 * v41);
      }

      v46 = v45;
      if (v29)
      {
        v51 = OUTLINED_FUNCTION_92_1();
        v47 = MEMORY[0x26D67DB30](v51);
      }

      else
      {
        OUTLINED_FUNCTION_156();
        if (v44)
        {
          goto LABEL_35;
        }

        v47 = *(v39 + 8 * v41);
      }

      v48 = v47;
      type metadata accessor for SportingEventClockTimeContainer();
      v49 = OUTLINED_FUNCTION_93_1();

      ++v41;
      if ((v49 & 1) == 0)
      {

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26B6A3A98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61746F74 && a2 == 0xE500000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73646F69726570 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26B6A3BA4(char a1)
{
  if (!a1)
  {
    return 0x746E6572727563;
  }

  if (a1 == 1)
  {
    return 0x6C61746F74;
  }

  return 0x73646F69726570;
}

uint64_t sub_26B6A3C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A3A98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A3C28(uint64_t a1)
{
  v2 = sub_26B6B0BE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A3C64(uint64_t a1)
{
  v2 = sub_26B6B0BE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A3D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB30, &qword_26B6F3938);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  v18 = sub_26B6B0BE0();
  OUTLINED_FUNCTION_39_3(&type metadata for SportingEventCurrentClock.CodingKeys, v19, v18);
  OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current);
  type metadata accessor for SportingEventClock();
  OUTLINED_FUNCTION_45_2();
  sub_26B6B25CC(v20, v21, v22, &protocol conformance descriptor for SportingEventClock);
  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_12_9();
  sub_26B6EA534();
  if (!v16)
  {
    OUTLINED_FUNCTION_84_1(OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB38, &qword_26B6F3940);
    sub_26B6B0C34();
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_12_9();
    sub_26B6EA534();
    OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB48, &qword_26B6F3950);
    sub_26B6B0D6C();
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_12_9();
    sub_26B6EA534();
  }

  v23 = OUTLINED_FUNCTION_21_2();
  v24(v23);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventCurrentClock.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventCurrentClock.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventCurrentClock.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_64_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1F0, &qword_26B6F2598);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26_1();
  v30 = OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total;
  *(v11 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total) = 0;
  *(v11 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods) = 0;
  OUTLINED_FUNCTION_21_3();
  v16 = sub_26B6B0BE0();
  OUTLINED_FUNCTION_12_7(&type metadata for SportingEventCurrentClock.CodingKeys, v17, v16);
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);

    OUTLINED_FUNCTION_197();

    type metadata accessor for SportingEventCurrentClock();
    v21 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_215(v21, v22);
  }

  else
  {
    type metadata accessor for SportingEventClock();
    v32 = 0;
    OUTLINED_FUNCTION_45_2();
    sub_26B6B25CC(v18, v19, v20, &protocol conformance descriptor for SportingEventClock);
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current] = a10;
    OUTLINED_FUNCTION_20_4();
    v24 = sub_26B67FFF4(v23);
    v25 = *&v10[v30];
    *&v10[v30] = v24;

    OUTLINED_FUNCTION_20_4();
    v27 = sub_26B68001C(v26);
    OUTLINED_FUNCTION_94_1(v27);
    v31.receiver = v10;
    v31.super_class = type metadata accessor for SportingEventCurrentClock();
    objc_msgSendSuper2(&v31, sel_init);
    v28 = OUTLINED_FUNCTION_112_0();
    v29(v28, v14);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A4104(uint64_t *a1@<X8>)
{
  SportingEventCurrentClock.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SportingEventCurrentClock.announcedAdditionalMinutesAndSeconds(for:)()
{
  OUTLINED_FUNCTION_132();
  v3 = *(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods);
  if (!v3)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v17 = 1;
    goto LABEL_16;
  }

  v4 = v1;
  v23 = v2;
  v5 = sub_26B6542CC();

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
LABEL_12:

      v13 = 0;
      v14 = 0;
LABEL_13:
      v15 = 0;
      v16 = 1;
      v17 = 1;
      goto LABEL_14;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D67DB30](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v9 = *&v7[OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__period];
    if (v9)
    {
      type metadata accessor for SportingEventClockPeriod();
      v10 = v9;
      v11 = v4;
      v12 = sub_26B6E9FA4();

      if (v12)
      {
        break;
      }
    }
  }

  v14 = *&v8[OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__clockTimes];

  if (!v14)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v18 = sub_26B6542CC();
  v19 = 0;
  while (2)
  {
    if (v18 == v19)
    {
      goto LABEL_12;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D67DB30](v19, v14);
    }

    else
    {
      if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v20 = *(v14 + 8 * v19 + 32);
    }

    v21 = v20;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_39;
    }

    switch(v20[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__clockType])
    {
      case 2:

        goto LABEL_31;
      case 5:
        OUTLINED_FUNCTION_12_0();
        goto LABEL_26;
      case 6:
        goto LABEL_27;
      default:
LABEL_26:
        v22 = sub_26B6EA5D4();

        if ((v22 & 1) == 0)
        {
LABEL_27:

          ++v19;
          continue;
        }

LABEL_31:

        v14 = *&v21[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__minutes];
        v16 = v21[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__minutes + 8];
        v15 = *&v21[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__seconds];
        v17 = v21[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__seconds + 8];
        if ((v16 & 1) != 0 || v14 <= 0)
        {
          v13 = (v15 > 0) & ~v17;
        }

        else
        {
          v13 = 1;
        }

LABEL_14:
        v2 = v23;
LABEL_16:
        *v2 = v13;
        *(v2 + 8) = v14;
        *(v2 + 16) = v16;
        *(v2 + 24) = v15;
        *(v2 + 32) = v17;
        OUTLINED_FUNCTION_131();
        return;
    }
  }
}

uint64_t sub_26B6A4464(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_26B6A44C4(v1);
}

void *sub_26B6A4494()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__period);
  v2 = v1;
  return v1;
}

void sub_26B6A4514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v31;
  a28 = v32;
  sub_26B68A2A0(v33, &a13);
  if (!a16)
  {
    sub_26B6413B4(&a13, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_23;
  }

  v34 = type metadata accessor for SportingEventClockTimeContainer();
  if ((OUTLINED_FUNCTION_98_0(v34, v35, v36, v34) & 1) == 0)
  {
LABEL_23:
    OUTLINED_FUNCTION_165();
    return;
  }

  v37 = a12;
  v38 = *(v28 + OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__clockTimes);
  v39 = *&a12[OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__clockTimes];
  if (!v38)
  {
    if (!v39)
    {
LABEL_25:
      v51 = *(v28 + OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__period);
      v52 = *&v37[OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__period];
      if (!v51)
      {
        v55 = v52;

        if (v52)
        {
        }

        goto LABEL_23;
      }

      if (v52)
      {
        type metadata accessor for SportingEventClockPeriod();
        v53 = v52;
        v54 = v51;
        OUTLINED_FUNCTION_211();
        sub_26B6E9FA4();

        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  if (!v39 || (v40 = sub_26B651134(*(v28 + OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__clockTimes)), v40 != sub_26B651134(v39)))
  {
LABEL_22:

    goto LABEL_23;
  }

  v56 = v28;
  if ((v40 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_189();

    OUTLINED_FUNCTION_144();
    while (1)
    {
      OUTLINED_FUNCTION_124_0();
      if (v41)
      {

        v28 = v56;
        v37 = a12;
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_122_0();
      if (v42)
      {
        break;
      }

      if (a11)
      {
        v49 = OUTLINED_FUNCTION_111();
        v44 = MEMORY[0x26D67DB30](v49);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        if (v43)
        {
          goto LABEL_32;
        }

        v44 = *(v38 + v29);
      }

      v45 = v44;
      if (v30)
      {
        v50 = OUTLINED_FUNCTION_92_1();
        v46 = MEMORY[0x26D67DB30](v50);
      }

      else
      {
        OUTLINED_FUNCTION_156();
        if (v43)
        {
          goto LABEL_33;
        }

        v46 = *(v39 + 8 * v29);
      }

      v47 = v46;
      type metadata accessor for SportingEventClockTime();
      v48 = OUTLINED_FUNCTION_93_1();

      ++v29;
      if ((v48 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
}