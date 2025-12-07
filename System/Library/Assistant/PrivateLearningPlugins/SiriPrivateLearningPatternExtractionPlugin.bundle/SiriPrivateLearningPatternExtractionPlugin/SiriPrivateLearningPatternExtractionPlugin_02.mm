void *sub_20D60(void *result, int64_t a2, char a3, void *a4)
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
    sub_385C(&qword_3A968, &qword_2C728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_385C(&qword_3A970, &qword_2C730);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20E94(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_385C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_385C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_20FC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_385C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_211A4(uint64_t *a1)
{
  v2 = *(type metadata accessor for PatternStoreValue(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1768C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2168C(v6);
  *a1 = v3;
  return result;
}

void sub_2124C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_385C(&qword_3A978, &qword_2C738);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_21334(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_385C(&qword_3A9B8, &qword_2C780);
      v7 = *(sub_385C(&qword_399F0, &qword_2B790) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_385C(&qword_399F0, &qword_2B790);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_214EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_385C(&qword_3A9C8, &qword_2C790);
      v7 = *(type metadata accessor for PatternStoreValue(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for PatternStoreValue(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

Swift::Int sub_2168C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_2AD34(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for PatternStoreValue(0);
        v6 = sub_2A934();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for PatternStoreValue(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_219BC(v8, v9, a1, v4);
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
    return sub_217B8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_217B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PatternStoreValue(0);
  v9 = __chkstk_darwin(v8);
  v37 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v29 - v16;
  v31 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v36 = v18;
    v30 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v34 = v20;
    v35 = a3;
    v32 = v23;
    v33 = v22;
    while (1)
    {
      sub_B7E8(v23, v17);
      sub_B7E8(v20, v13);
      v24 = *(v8 + 20);
      v25 = *&v17[v24];
      v26 = *&v13[v24];
      sub_B904(v13);
      result = sub_B904(v17);
      if (v26 >= v25)
      {
LABEL_4:
        a3 = v35 + 1;
        v20 = v34 + v30;
        v22 = v33 - 1;
        v23 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_B720(v23, v37);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_B720(v27, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_219BC(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v111 = a1;
  v7 = type metadata accessor for PatternStoreValue(0);
  v118 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v114 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v123 = &v107 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v107 - v13;
  result = __chkstk_darwin(v12);
  v17 = &v107 - v16;
  v120 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_99:
    v4 = *v111;
    if (!*v111)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v14 = v122;
    if (result)
    {
LABEL_101:
      v125 = v20;
      v103 = *(v20 + 2);
      if (v103 >= 2)
      {
        while (*v120)
        {
          v104 = *&v20[16 * v103];
          v105 = *&v20[16 * v103 + 24];
          sub_2223C(*v120 + *(v118 + 72) * v104, *v120 + *(v118 + 72) * *&v20[16 * v103 + 16], *v120 + *(v118 + 72) * v105, v4);
          if (v14)
          {
          }

          if (v105 < v104)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_169D0(v20);
          }

          if (v103 - 2 >= *(v20 + 2))
          {
            goto LABEL_125;
          }

          v106 = &v20[16 * v103];
          *v106 = v104;
          *(v106 + 1) = v105;
          v125 = v20;
          result = sub_16944(v103 - 1);
          v20 = v125;
          v103 = *(v125 + 2);
          if (v103 <= 1)
          {
          }
        }

        goto LABEL_135;
      }
    }

LABEL_131:
    result = sub_169D0(v20);
    v20 = result;
    goto LABEL_101;
  }

  v124 = result;
  v109 = a4;
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v115 = v14;
  while (1)
  {
    v21 = v19;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v22 = *v120;
      v23 = *(v118 + 72);
      v4 = *v120 + v23 * (v19 + 1);
      sub_B7E8(v4, v17);
      sub_B7E8(v22 + v23 * v19, v14);
      v24 = *(v124 + 20);
      v25 = *&v17[v24];
      v116 = *&v14[v24];
      v117 = v25;
      sub_B904(v14);
      result = sub_B904(v17);
      v110 = v19;
      v26 = v19 + 2;
      v119 = v23;
      v27 = v22 + v23 * (v19 + 2);
      while (v18 != v26)
      {
        LODWORD(v121) = v116 < v117;
        sub_B7E8(v27, v17);
        v28 = v17;
        v29 = v115;
        sub_B7E8(v4, v115);
        v30 = *(v124 + 20);
        v31 = *(v28 + v30);
        v32 = v18;
        v33 = v20;
        v34 = *(v29 + v30);
        v35 = v29;
        v17 = v28;
        sub_B904(v35);
        result = sub_B904(v28);
        v36 = v34 < v31;
        v20 = v33;
        v18 = v32;
        v37 = !v36;
        ++v26;
        v27 += v119;
        v4 += v119;
        if (((v121 ^ v37) & 1) == 0)
        {
          v18 = v26 - 1;
          break;
        }
      }

      v14 = v115;
      v21 = v110;
      if (v116 < v117)
      {
        if (v18 < v110)
        {
          goto LABEL_128;
        }

        if (v110 < v18)
        {
          v108 = v20;
          v38 = v119 * (v18 - 1);
          v39 = v18 * v119;
          v40 = v18;
          v41 = v110 * v119;
          do
          {
            if (v21 != --v40)
            {
              v121 = v40;
              v4 = *v120;
              if (!*v120)
              {
                goto LABEL_134;
              }

              sub_B720(v4 + v41, v114);
              if (v41 < v38 || v4 + v41 >= v4 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
                v40 = v121;
              }

              else
              {
                v40 = v121;
                if (v41 != v38)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_B720(v114, v4 + v38);
            }

            ++v21;
            v38 -= v119;
            v39 -= v119;
            v41 += v119;
          }

          while (v21 < v40);
          v20 = v108;
          v21 = v110;
        }
      }
    }

    v42 = v120[1];
    if (v18 >= v42)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v18, v21))
    {
      goto LABEL_127;
    }

    if (v18 - v21 >= v109)
    {
LABEL_35:
      v19 = v18;
      if (v18 < v21)
      {
        goto LABEL_126;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v21, v109))
    {
      goto LABEL_129;
    }

    if (v21 + v109 >= v42)
    {
      v43 = v120[1];
    }

    else
    {
      v43 = v21 + v109;
    }

    if (v43 < v21)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v18 == v43)
    {
      goto LABEL_35;
    }

    v108 = v20;
    v90 = v18;
    v91 = *v120;
    v92 = *(v118 + 72);
    v93 = *v120 + v92 * (v90 - 1);
    v94 = -v92;
    v110 = v21;
    v95 = v21 - v90;
    v121 = v90;
    v112 = v92;
    v113 = v43;
    v4 = v91 + v90 * v92;
    v96 = v124;
LABEL_89:
    v116 = v4;
    v117 = v95;
    v97 = v95;
    v119 = v93;
LABEL_90:
    sub_B7E8(v4, v17);
    sub_B7E8(v93, v14);
    v98 = *(v96 + 20);
    v99 = *&v17[v98];
    v100 = *&v14[v98];
    sub_B904(v14);
    result = sub_B904(v17);
    if (v100 < v99)
    {
      break;
    }

    v96 = v124;
LABEL_88:
    v19 = v113;
    v93 = v119 + v112;
    v95 = v117 - 1;
    v4 = v116 + v112;
    if (++v121 != v113)
    {
      goto LABEL_89;
    }

    v20 = v108;
    v21 = v110;
    if (v113 < v110)
    {
      goto LABEL_126;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1F0C8(0, *(v20 + 2) + 1, 1, v20, &qword_3A1A8, &unk_2BC80);
      v20 = result;
    }

    v45 = *(v20 + 2);
    v44 = *(v20 + 3);
    v4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1F0C8((v44 > 1), v45 + 1, 1, v20, &qword_3A1A8, &unk_2BC80);
      v20 = result;
    }

    *(v20 + 2) = v4;
    v46 = &v20[16 * v45];
    *(v46 + 4) = v21;
    *(v46 + 5) = v19;
    v47 = *v111;
    if (!*v111)
    {
      goto LABEL_136;
    }

    if (v45)
    {
      while (2)
      {
        v48 = v4 - 1;
        if (v4 >= 4)
        {
          v53 = &v20[16 * v4 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_113;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_114;
          }

          v60 = &v20[16 * v4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_116;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v64 >= v56)
          {
            v82 = &v20[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_123;
            }

            if (v51 < v85)
            {
              v48 = v4 - 2;
            }
          }

          else
          {
LABEL_55:
            if (v52)
            {
              goto LABEL_115;
            }

            v65 = &v20[16 * v4];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_118;
            }

            v71 = &v20[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_122;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_69;
            }

            if (v51 < v74)
            {
              v48 = v4 - 2;
            }
          }
        }

        else
        {
          if (v4 == 3)
          {
            v49 = *(v20 + 4);
            v50 = *(v20 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_55;
          }

          v75 = &v20[16 * v4];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_69:
          if (v70)
          {
            goto LABEL_117;
          }

          v78 = &v20[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_120;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        v86 = v48 - 1;
        if (v48 - 1 >= v4)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*v120)
        {
          goto LABEL_133;
        }

        v87 = *&v20[16 * v86 + 32];
        v4 = *&v20[16 * v48 + 40];
        v88 = v122;
        sub_2223C(*v120 + *(v118 + 72) * v87, *v120 + *(v118 + 72) * *&v20[16 * v48 + 32], *v120 + *(v118 + 72) * v4, v47);
        v122 = v88;
        if (v88)
        {
        }

        if (v4 < v87)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_169D0(v20);
        }

        if (v86 >= *(v20 + 2))
        {
          goto LABEL_112;
        }

        v89 = &v20[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v4;
        v125 = v20;
        result = sub_16944(v48);
        v20 = v125;
        v4 = *(v125 + 2);
        if (v4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = v120[1];
    if (v19 >= v18)
    {
      goto LABEL_99;
    }
  }

  if (v91)
  {
    v101 = v123;
    sub_B720(v4, v123);
    v96 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_B720(v101, v93);
    v93 += v94;
    v4 += v94;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

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
  return result;
}

uint64_t sub_2223C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for PatternStoreValue(0);
  v9 = __chkstk_darwin(v8);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v55 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v15 = a2;
  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v14 != -1)
  {
    v17 = (a2 - a1) / v14;
    v59 = a1;
    v18 = a4;
    v58 = a4;
    if (v17 < v16 / v14)
    {
      v19 = v17 * v14;
      if (a4 < a1 || a1 + v19 <= a4)
      {
        v20 = v15;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        v20 = v15;
        swift_arrayInitWithTakeBackToFront();
      }

      v15 = v20;
      v18 = a4;
LABEL_17:
      v52 = v18 + v19;
      v57 = v18 + v19;
      if (v19 >= 1 && v15 < a3)
      {
        v51 = a3;
        do
        {
          v25 = v14;
          v26 = v55;
          v27 = v15;
          sub_B7E8(v15, v55);
          v28 = v56;
          sub_B7E8(v18, v56);
          v29 = v8;
          v30 = *(v8 + 20);
          v31 = *(v26 + v30);
          v32 = *(v28 + v30);
          sub_B904(v28);
          sub_B904(v26);
          if (v32 >= v31)
          {
            v54 = v27;
            v14 = v25;
            if (a1 < v18 || a1 >= v18 + v25)
            {
              v8 = v29;
              swift_arrayInitWithTakeFrontToBack();
              v33 = v51;
            }

            else
            {
              v33 = v51;
              v8 = v29;
              if (a1 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v58 = v18 + v25;
            v18 += v25;
            v15 = v54;
          }

          else
          {
            v53 = v18;
            v14 = v25;
            if (a1 < v27 || a1 >= v27 + v25)
            {
              v8 = v29;
              swift_arrayInitWithTakeFrontToBack();
              v15 = v27 + v25;
              v33 = v51;
            }

            else
            {
              v33 = v51;
              v8 = v29;
              if (a1 != v27)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v15 = v27 + v25;
            }

            v18 = v53;
          }

          a1 += v14;
          v59 = a1;
        }

        while (v18 < v52 && v15 < v33);
      }

LABEL_60:
      sub_A3DC(&v59, &v58, &v57);
      return 1;
    }

    v21 = v8;
    v22 = v16 / v14 * v14;
    if (a4 < v15 || v15 + v22 <= a4)
    {
      v23 = v15;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v15)
      {
LABEL_41:
        v34 = v18 + v22;
        if (v22 >= 1)
        {
          v35 = -v14;
          v36 = v18 + v22;
          v53 = v18;
          v49 = v35;
          v50 = a1;
          do
          {
            v48 = v34;
            v37 = v15 + v35;
            v54 = v15 + v35;
            v52 = v15;
            while (1)
            {
              if (v15 <= a1)
              {
                v59 = v15;
                v57 = v48;
                goto LABEL_60;
              }

              v38 = a3;
              v51 = v34;
              a3 += v35;
              v39 = v36 + v35;
              v40 = v55;
              sub_B7E8(v36 + v35, v55);
              v41 = v56;
              sub_B7E8(v37, v56);
              v42 = v21;
              v43 = *(v21 + 20);
              v44 = *(v40 + v43);
              v45 = *(v41 + v43);
              sub_B904(v41);
              sub_B904(v40);
              if (v45 < v44)
              {
                break;
              }

              v34 = v39;
              if (v38 < v36 || a3 >= v36)
              {
                v21 = v42;
                swift_arrayInitWithTakeFrontToBack();
                v35 = v49;
                a1 = v50;
              }

              else
              {
                v21 = v42;
                v35 = v49;
                a1 = v50;
                if (v38 != v36)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v36 = v39;
              v37 = v54;
              v15 = v52;
              if (v39 <= v53)
              {
                goto LABEL_58;
              }
            }

            if (v38 < v52 || a3 >= v52)
            {
              v47 = v54;
              v21 = v42;
              swift_arrayInitWithTakeFrontToBack();
              v15 = v47;
              a1 = v50;
              v34 = v51;
              v35 = v49;
            }

            else
            {
              v21 = v42;
              v15 = v54;
              a1 = v50;
              v34 = v51;
              v35 = v49;
              if (v38 != v52)
              {
                v46 = v54;
                swift_arrayInitWithTakeBackToFront();
                v15 = v46;
              }
            }
          }

          while (v36 > v53);
        }

LABEL_58:
        v59 = v15;
        v57 = v34;
        goto LABEL_60;
      }

      v23 = v15;
      swift_arrayInitWithTakeBackToFront();
    }

    v15 = v23;
    v18 = a4;
    goto LABEL_41;
  }

LABEL_63:
  __break(1u);
  return result;
}

unint64_t sub_22744(uint64_t a1)
{
  v2 = sub_385C(&qword_399F0, &qword_2B790);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_385C(&qword_399E0, &unk_2B780);
    v7 = sub_2AC74();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_BAC4(v9, v5, &qword_399F0, &qword_2B790);
      v11 = *v5;
      result = sub_7A88(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for PatternStoreValue(0);
      result = sub_B720(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_22938(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_22994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  sub_2ADB4(v5);
  if (v5)
  {
    v6 = a2 + 40;
    do
    {

      sub_2A8B4();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  v7 = *(a3 + 16);
  sub_2ADB4(v7);
  if (v7)
  {
    v8 = a3 + 40;
    do
    {

      sub_2A8B4();

      v8 += 16;
      --v7;
    }

    while (v7);
  }
}

Swift::Int sub_22A54()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2ADA4();
  sub_22994(v4, v1, v2);
  return sub_2ADC4();
}

Swift::Int sub_22AA8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_2ADA4();
  sub_22994(v5, v2, v3);
  return sub_2ADC4();
}

uint64_t sub_22AF0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_6E98(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_6E98(v2, v3);
}

uint64_t SiriPrivateLearningPatternExtractionPlugin.__allocating_init()()
{
  v0 = swift_allocObject();
  SiriPrivateLearningPatternExtractionPlugin.init()();
  return v0;
}

void *SiriPrivateLearningPatternExtractionPlugin.init()()
{
  v1 = v0;
  *&v23 = sub_2A3D4();
  *(&v23 + 1) = &protocol witness table for EnvironmentFeatureFlags;
  sub_22EA0(&v22);
  sub_2A3C4();
  sub_192AC(&v22, (v0 + 12));
  v2 = type metadata accessor for PatternLogger();
  v3 = swift_allocObject();
  v1[20] = v2;
  v1[21] = &off_35888;
  v1[17] = v3;
  v4 = sub_2A404();
  swift_allocObject();
  v1[2] = sub_2A3F4();
  v1[5] = v4;
  v1[6] = &protocol witness table for RECTIFITrialStatusResolver;
  sub_19248((v1 + 2), v25);
  sub_2A2A4();
  sub_2A294();
  sub_2A264();

  v20 = v23;
  v5 = v23;
  v6 = sub_17088(&v22, v23);
  *&v24[3] = v20;
  v7 = sub_22EA0(v24);
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  sub_BA2C(&v22);
  sub_2A294();
  sub_2A284();

  sub_2A294();
  sub_2A274();

  sub_2A334();
  swift_allocObject();
  v8 = sub_2A324();
  sub_2A314();
  swift_allocObject();
  v9 = sub_2A304();
  sub_2A374();
  swift_allocObject();
  v10 = sub_2A364();
  v11 = type metadata accessor for ItemSequenceFetcher();
  v12 = swift_allocObject();
  *(v12 + 200) = xmmword_2C7A0;
  *(v12 + 216) = 0x404E000000000000;
  sub_192AC(v24, v12 + 16);
  sub_192AC(&v22, v12 + 56);
  *(v12 + 96) = v8;
  *(v12 + 104) = v9;
  *(v12 + 112) = v10;
  sub_192AC(&v21, v12 + 120);
  sub_192AC(v25, v12 + 160);
  v1[10] = v11;
  v1[11] = &off_355B0;
  v1[7] = v12;
  if (qword_39710 != -1)
  {
    swift_once();
  }

  v14 = qword_3AB08;
  v13 = unk_3AB10;
  sub_19248((v1 + 2), &v22);
  sub_17088(&v22, v23);
  v15 = sub_2A464();
  v17 = v16;
  sub_BA2C(&v22);
  *&v22 = v14;
  *(&v22 + 1) = v13;

  v26._countAndFlagsBits = v15;
  v26._object = v17;
  sub_2A8C4(v26);

  v18 = *(&v22 + 1);
  v1[22] = v22;
  v1[23] = v18;
  return v1;
}

uint64_t *sub_22EA0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t SiriPrivateLearningPatternExtractionPlugin.run(context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2A1A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_385C(&qword_3A9D8, &qword_2C7C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_2A994();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v3;
  (*(v8 + 32))(&v15[v14], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v16 = &v15[(v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v16 = a2;
  *(v16 + 1) = a3;

  sub_23808(0, 0, v12, &unk_2C7D0, v15);
}

uint64_t sub_2310C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = sub_2A184();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_231D0, 0, 0);
}

uint64_t sub_231D0()
{
  sub_17088((v0[8] + 96), *(v0[8] + 120));
  v1 = sub_2A164();
  v0[5] = v1;
  v0[6] = sub_29E38(&qword_3AAF8, &type metadata accessor for SiriPrivateLearningFeatureFlag, &protocol conformance descriptor for SiriPrivateLearningFeatureFlag);
  v2 = sub_22EA0(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for SiriPrivateLearningFeatureFlag.rectifiPatternExtraction(_:), v1);
  v3 = sub_2A394();
  sub_BA2C(v0 + 2);
  if (v3 & 1) != 0 || (sub_17088((v0[8] + 16), *(v0[8] + 40)), (sub_2A484()))
  {
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_233E4;
    v5 = v0[9];

    return sub_2445C(v5);
  }

  else
  {
    v7 = v0[14];
    v8 = v0[10];
    (*(v0[13] + 104))(v7, enum case for PrivateLearningPluginResult.success(_:), v0[12]);
    v8(v7);
    (*(v0[13] + 8))(v0[14], v0[12]);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_233E4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_235B4;
  }

  else
  {
    v2 = sub_234F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_234F8()
{
  v1 = v0[14];
  v2 = v0[10];
  (*(v0[13] + 104))(v1, enum case for PrivateLearningPluginResult.success(_:), v0[12]);
  v2(v1);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_235B4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v0[7] = v0[16];
  swift_errorRetain();
  sub_385C(&qword_3A120, &qword_2C8B0);
  sub_2A874();
  sub_2A174();
  (*(v2 + 104))(v1, enum case for PrivateLearningPluginResult.failure(_:), v3);
  v4(v1);

  (*(v0[13] + 8))(v0[14], v0[12]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_236CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2A1A4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_197EC;

  return sub_2310C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_23808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_385C(&qword_3A9D8, &qword_2C7C0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_29BB8(a3, v25 - v10);
  v12 = sub_2A994();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29C28(v11);
  }

  else
  {
    sub_2A984();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2A964();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2A894() + 32;
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

      sub_29C28(a3);

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

  sub_29C28(a3);
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

void *sub_23AC8(uint64_t a1)
{
  v3 = type metadata accessor for ItemSequenceData(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = 0;
  v73 = 0xE000000000000000;
  v74 = _swiftEmptyArrayStorage;
  sub_17088((v1 + 16), *(v1 + 40));
  sub_2A444();
  v8 = v7;
  sub_17088((v1 + 16), *(v1 + 40));
  sub_2A454();
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = v9;
    v12 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    swift_beginAccess();
    v13 = 0;
    v63 = *(v4 + 72);
    *&v14 = 136315138;
    v56 = v14;
    v62 = _swiftEmptyArrayStorage;
    v61 = _swiftEmptyArrayStorage;
    v57 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage;
    v60 = v6;
    v59 = v10;
    v58 = v12;
    while (1)
    {
      v64 = v13;
      sub_298D0(v12 + v63 * v13, v6, type metadata accessor for ItemSequenceData);
      v17 = *(v6 + 1);
      v18 = *(v17 + 16);
      if (v18)
      {
        break;
      }

LABEL_3:
      sub_29938(v6, type metadata accessor for ItemSequenceData);
      v16 = v64;
LABEL_4:
      v13 = v16 + 1;
      if (v13 == v10)
      {

        return v61;
      }
    }

    v19 = (v17 + 32);
    v67 = v17 + 32;
    while (v8 >= *v19 || *v19 >= 1.0)
    {
      ++v19;
      if (!--v18)
      {
        goto LABEL_3;
      }
    }

    v72 = 0x65636E6575716553;
    v73 = 0xEA00000000000A3ALL;

    v70 = _swiftEmptyArrayStorage;
    v71 = _swiftEmptyArrayStorage;
    v22 = *v6;
    if (v22 >> 62)
    {
      result = sub_2AC34();
      v23 = result;
      if (result)
      {
LABEL_15:
        v24 = 0;
        v65 = v22 & 0xFFFFFFFFFFFFFF8;
        v66 = v22 & 0xC000000000000001;
        v25 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v66)
          {
            result = sub_2AB64();
            v26 = result;
          }

          else
          {
            if (v24 >= *(v65 + 16))
            {
              __break(1u);
LABEL_59:
              __break(1u);
              return result;
            }

            v26 = *(v22 + 8 * v24 + 32);
          }

          v27 = *(v17 + 16);
          if (v24 == v27)
          {
            break;
          }

          if (v24 >= v27)
          {
            goto LABEL_59;
          }

          v28 = *(v67 + 8 * v24);
          if (v28 != -1.0 && v28 < v11)
          {
            break;
          }

          v30 = sub_1BF14();
          v32 = v31;

          v68 = v30;
          v69 = v32;

          v75._countAndFlagsBits = 10;
          v75._object = 0xE100000000000000;
          sub_2A8C4(v75);

          v33 = v68;
          v34 = v69;
          swift_beginAccess();
          v76._countAndFlagsBits = v33;
          v76._object = v34;
          sub_2A8C4(v76);
          swift_endAccess();

          v36 = v26[2];
          v35 = v26[3];
          v37 = v26[4];
          v38 = *(v26 + 20);
          type metadata accessor for PatternItem();
          v39 = swift_allocObject();
          *(v39 + 16) = v36;
          *(v39 + 24) = v35;
          *(v39 + 32) = v37;
          *(v39 + 40) = v38;

          sub_2A904();
          if (*(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v71 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_2A924();
          }

          sub_2A944();
          v25 = v71;

          sub_2A904();
          if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_2A924();
          }

          ++v24;
          sub_2A944();

          v15 = v70;
          if (v23 == v24)
          {
            goto LABEL_33;
          }
        }

LABEL_33:
        if (v25 >> 62)
        {
          goto LABEL_55;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
      if (v23)
      {
        goto LABEL_15;
      }
    }

    v25 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_55:
      v40 = sub_2AC34();
      goto LABEL_35;
    }

LABEL_34:
    v40 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
LABEL_35:
    v6 = v60;
    v16 = v64;
    v41 = v62;
    if (v40)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1F090(0, v41[2] + 1, 1, v41);
      }

      v43 = v41[2];
      v42 = v41[3];
      if (v43 >= v42 >> 1)
      {
        v41 = sub_1F090((v42 > 1), v43 + 1, 1, v41);
      }

      v41[2] = v43 + 1;
      v41[v43 + 4] = v25;
      v44 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1F6F4(0, v44[2] + 1, 1, v44);
      }

      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        v44 = sub_1F6F4((v45 > 1), v46 + 1, 1, v44);
      }

      v44[2] = v46 + 1;
      v44[v46 + 4] = v15;
      v47 = *(v6 + 2);
      sub_2A904();
      if (v74[2] >= v74[3] >> 1)
      {
        sub_2A924();
      }

      sub_2A944();
      v57 = v74;
    }

    else
    {

      v44 = v61;
    }

    if (qword_39720 != -1)
    {
      swift_once();
    }

    v61 = v44;
    v62 = v41;
    v48 = sub_2A804();
    sub_B884(v48, qword_3AB28);
    v49 = sub_2A7E4();
    v50 = sub_2A9E4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v68 = v52;
      *v51 = v56;
      v53 = v72;
      v54 = v73;

      v55 = sub_1FA70(v53, v54, &v68);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_0, v49, v50, "%s", v51, 0xCu);
      sub_BA2C(v52);
    }

    sub_29938(v6, type metadata accessor for ItemSequenceData);
    v10 = v59;
    v12 = v58;
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_4;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_24258(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = a2[2];
      v8 = (v4 + 32);
      do
      {
        v12 = *v8++;
        v11 = v12;
        if (v12 < v7)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_20018(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v10 = _swiftEmptyArrayStorage[2];
          v9 = _swiftEmptyArrayStorage[3];
          if (v10 >= v9 >> 1)
          {
            sub_20018((v9 > 1), v10 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v10 + 1;
          _swiftEmptyArrayStorage[v10 + 4] = v11;
        }

        --v6;
      }

      while (v6);
    }

    v13 = _swiftEmptyArrayStorage[2];
    if (v13)
    {
      v14 = sub_28EB0(v13);
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < _swiftEmptyArrayStorage[2])
      {
        v15 = _swiftEmptyArrayStorage[v14 + 4];

        if ((v15 & 0x8000000000000000) == 0)
        {
          if (v15 < a2[2])
          {
            a2[v15 + 4];
            sub_2A904();
            if (*(*a3 + 16) < *(*a3 + 24) >> 1)
            {
              return sub_2A944();
            }

            goto LABEL_20;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  sub_2A904();
  if (*(*a3 + 16) >= *(*a3 + 24) >> 1)
  {
LABEL_20:
    sub_2A924();
  }

  return sub_2A944();
}

uint64_t sub_2445C(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_2A0E4();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v4 = type metadata accessor for PatternStoreValue(0);
  v2[40] = v4;
  v2[41] = *(v4 - 8);
  v2[42] = swift_task_alloc();
  sub_385C(&qword_3AAD8, &qword_2C868);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v5 = sub_2A754();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v6 = sub_2A1A4();
  v2[48] = v6;
  v2[49] = *(v6 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();

  return _swift_task_switch(sub_24680, 0, 0);
}

uint64_t sub_24680()
{
  v44 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  (*(v3 + 104))(v1, enum case for PrivateLearningPluginRunContext.maintenance(_:), v2);
  v4 = sub_2A194();
  v5 = *(v3 + 8);
  v5(v1, v2);
  if (v4)
  {
    if (qword_39730 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 368);
    v6 = *(v0 + 376);
    v8 = *(v0 + 360);
    v9 = sub_2A784();
    sub_B884(v9, qword_3AB58);
    sub_2A774();
    sub_2A734();
    v10 = sub_19AD4("runPatternExtractionPlugin", 26, 2, v6);
    *(v0 + 416) = v10;
    (*(v7 + 8))(v6, v8);
    if (qword_39720 != -1)
    {
      swift_once();
    }

    v11 = sub_2A804();
    *(v0 + 424) = sub_B884(v11, qword_3AB28);
    v12 = sub_2A7E4();
    v13 = sub_2A9D4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "SiriPrivateLearningPatternExtractionPlugin.run() started", v14, 2u);
    }

    v15 = *(v0 + 288);

    v16 = *(v15 + 176);
    v17 = *(v15 + 184);
    v18 = type metadata accessor for RectifiCoreDataStore(0);
    swift_allocObject();

    v19 = sub_39D8(v16, v17);
    if (v19)
    {
      v20 = *(v0 + 288);
      *(v0 + 152) = v18;
      *(v0 + 160) = &off_353D0;
      *(v0 + 128) = v19;
      sub_192AC((v0 + 128), v0 + 88);
      sub_17088((v20 + 56), *(v20 + 80));
      v21 = swift_task_alloc();
      *(v0 + 432) = v21;
      *v21 = v0;
      v21[1] = sub_24C14;

      return sub_135F0();
    }

    v38 = sub_2A7E4();
    v39 = sub_2A9E4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "RECTIFI on-device store error", v40, 2u);
    }

    sub_26080();
    sub_25DF4(v10);
  }

  else
  {
    if (qword_39720 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 392);
    v23 = *(v0 + 400);
    v25 = *(v0 + 384);
    v26 = *(v0 + 280);
    v27 = sub_2A804();
    sub_B884(v27, qword_3AB28);
    (*(v24 + 16))(v23, v26, v25);
    v28 = sub_2A7E4();
    v29 = sub_2A9D4();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 400);
    v32 = *(v0 + 384);
    if (v30)
    {
      v33 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v33 = 136315138;
      sub_29E38(&qword_3AAE0, &type metadata accessor for PrivateLearningPluginRunContext, &protocol conformance descriptor for PrivateLearningPluginRunContext);
      v34 = sub_2AD44();
      v36 = v35;
      v5(v31, v32);
      v37 = sub_1FA70(v34, v36, &v43);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_0, v28, v29, "SiriPrivateLearningPatternExtractionPlugin.run() is skipped because context is %s", v33, 0xCu);
      sub_BA2C(v42);
    }

    else
    {

      v5(v31, v32);
    }
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_24C14(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = sub_25D0C;
  }

  else
  {
    *(v4 + 448) = a1;
    v5 = sub_24D3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_24D3C()
{
  v123 = v0;
  v1 = v0[36];
  v2 = sub_23AC8(v0[56]);
  v4 = v3;
  v6 = v5;

  v110 = v1;
  sub_17088((v1 + 16), *(v1 + 40));

  v7 = sub_2A474();
  v8 = v0[55];
  v112 = v2;
  if ((v7 & 1) == 0)
  {
    v111 = v4;
    goto LABEL_34;
  }

  v9 = *sub_17088(v0 + 11, v0[14]);
  v0[34] = sub_22744(_swiftEmptyArrayStorage);
  v10 = sub_2A214();
  v11 = swift_task_alloc();
  *(v11 + 16) = v9;
  *(v11 + 24) = v0 + 34;
  *(v11 + 32) = 1;
  sub_2AA24();
  if (v8)
  {

LABEL_81:

    sub_BA2C(v0 + 11);
    v102 = v0[52];
    sub_26080();
    sub_25DF4(v102);

    v99 = v0[1];
    goto LABEL_82;
  }

  v109 = v6;
  v115 = v0[41];
  v119 = v0[40];

  v12 = 0;
  v13 = v0[34];
  v14 = *(v13 + 64);
  v113 = v13 + 64;
  v117 = v13;
  v15 = -1;
  v16 = -1 << *(v117 + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & v14;
  v18 = ((63 - v16) >> 6);
  v19 = &qword_399E8;
  v20 = &qword_2C870;
  v111 = v4;
  while (1)
  {
    if (!v17)
    {
      if (v18 <= v12 + 1)
      {
        v22 = (v12 + 1);
      }

      else
      {
        v22 = v18;
      }

      v23 = &v22[-1].isa + 7;
      while (1)
      {
        v21 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v21 >= v18)
        {
          v42 = v0[43];
          v43 = sub_385C(v19, v20);
          (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
          v17 = 0;
          goto LABEL_18;
        }

        v17 = *(v113 + 8 * v21);
        ++v12;
        if (v17)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_91;
    }

    v21 = v12;
LABEL_17:
    v25 = v0[42];
    v24 = v0[43];
    v26 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v27 = v26 | (v21 << 6);
    v28 = *(*(v117 + 48) + 8 * v27);
    sub_298D0(*(v117 + 56) + *(v115 + 72) * v27, v25, type metadata accessor for PatternStoreValue);
    v29 = sub_385C(v19, v20);
    v30 = v20;
    v31 = v19;
    v32 = v29;
    v33 = *(v29 + 48);
    *v24 = v28;
    sub_B720(v25, v24 + v33);
    v34 = *(*(v32 - 8) + 56);
    v35 = v32;
    v19 = v31;
    v20 = v30;
    v34(v24, 0, 1, v35);

    v23 = v21;
LABEL_18:
    v36 = v0[44];
    sub_2980C(v0[43], v36);
    v37 = sub_385C(v19, v20);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {
      break;
    }

    v38 = v0[44];
    v39 = *v38;
    v40 = v38 + *(v37 + 48);
    v41 = *(v40 + *(v119 + 20));
    sub_29938(v40, type metadata accessor for PatternStoreValue);
    if (v41 < 0)
    {
      goto LABEL_94;
    }

    if (v41)
    {
      v44 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1F090(0, v111[2] + 1, 1, v111);
      }

      v45 = v44[2];
      do
      {
        v46 = v44;
        v47 = v44[3];

        if (v45 >= v47 >> 1)
        {
          v44 = sub_1F090((v47 > 1), v45 + 1, 1, v46);
        }

        else
        {
          v44 = v46;
        }

        v44[2] = v45 + 1;
        v44[v45++ + 4] = v39;
        --v41;
      }

      while (v41);
      v111 = v44;

      v12 = v23;
      v19 = &qword_399E8;
      v20 = &qword_2C870;
    }

    else
    {

      v12 = v23;
    }
  }

  v48 = sub_2A7E4();
  v49 = sub_2A9E4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = v111[2];
    _os_log_impl(&dword_0, v48, v49, "Total sequences after fetching from infrequent on-device store: %ld", v50, 0xCu);
  }

  v8 = 0;
  v6 = v109;
LABEL_34:
  v51 = sub_2A7E4();
  v52 = sub_2A9D4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "Calling RECTIFI Algorithm", v53, 2u);
  }

  sub_17088((v110 + 16), *(v110 + 40));

  sub_2A414();
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_95;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v54 >= 9.22337204e18)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v55 = v54;
  type metadata accessor for ExtractPatternsRectifi();
  inited = swift_initStackObject();
  *(inited + 32) = xmmword_2C7B0;
  *(inited + 48) = 5;
  type metadata accessor for ClosedPatternUtil();
  v57 = swift_allocObject();
  *(inited + 16) = v111;
  *(inited + 24) = v55;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = v57;
  sub_1E14();
  sub_17088((v110 + 16), *(v110 + 40));
  sub_2A424();
  if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_100:
    __break(1u);
    return;
  }

  v59 = sub_1D24(v58, 0);
  v0[32] = v59;
  v60 = *(v59 + 2);
  if (v60)
  {
    v61 = v6;
    v62 = v0[38];
    sub_2023C(0, v60, 0);
    v63 = _swiftEmptyArrayStorage;
    do
    {
      sub_2A0D4();
      v121 = v63;
      v65 = v63[2];
      v64 = v63[3];
      if (v65 >= v64 >> 1)
      {
        sub_2023C((v64 > 1), v65 + 1, 1);
        v63 = v121;
      }

      v66 = v0[39];
      v67 = v0[37];
      v63[2] = v65 + 1;
      (*(v62 + 32))(v63 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v65, v66, v67);
      --v60;
    }

    while (v60);
    v120 = v63;
    v6 = v61;
  }

  else
  {
    v120 = _swiftEmptyArrayStorage;
  }

  v68 = sub_2A7E4();
  v69 = sub_2A9D4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134217984;
    *(v70 + 4) = *(v59 + 2);
    _os_log_impl(&dword_0, v68, v69, "Fetched %ld patterns from RECTIFI", v70, 0xCu);
  }

  v121 = _swiftEmptyArrayStorage;

  sub_28FC4(v71, v6, &v121);
  v107 = v8;

  v108 = v121;
  swift_beginAccess();
  sub_291D0((v0 + 32), v112);
  swift_endAccess();

  v0[30] = 0;
  v0[31] = 0xE000000000000000;
  v72 = v0[32];
  v73 = v120;
  v118 = *(v72 + 16);
  if (v118)
  {
    v116 = v72 + 32;

    swift_beginAccess();
    v74 = 0;
    v114 = v72;
    while (1)
    {
      if (v74 >= *(v72 + 16))
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v75 = *(v116 + 40 * v74);
      v76 = *(v116 + 40 * v74 + 8);
      v121 = 0x636E657571657246;
      v122 = 0xEA00000000002079;
      v0[33] = v75;

      v125._countAndFlagsBits = sub_2AD44();
      sub_2A8C4(v125);

      v126._countAndFlagsBits = 10;
      v126._object = 0xE100000000000000;
      sub_2A8C4(v126);
      v77 = v122;
      v0[30] = v121;
      v0[31] = v77;

      if (v76 >> 62)
      {
        v78 = sub_2AC34();
        if (!v78)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v78 = *(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8));
        if (!v78)
        {
          goto LABEL_64;
        }
      }

      if (v78 < 1)
      {
        goto LABEL_93;
      }

      v79 = 0;
      do
      {
        if ((v76 & 0xC000000000000001) != 0)
        {
          v80 = sub_2AB64();
        }

        else
        {
          v80 = *(v76 + 8 * v79 + 32);
        }

        ++v79;
        v121 = (*(*v80 + 208))();
        v122 = v81;

        v127._countAndFlagsBits = 10;
        v127._object = 0xE100000000000000;
        sub_2A8C4(v127);

        v82 = v121;
        v83 = v122;
        swift_beginAccess();
        v128._countAndFlagsBits = v82;
        v128._object = v83;
        sub_2A8C4(v128);
        swift_endAccess();
      }

      while (v78 != v79);
LABEL_64:

      v84 = sub_2A7E4();
      v85 = sub_2A9E4();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v121 = v87;
        *v86 = 136315138;
        v88 = v0[30];
        v89 = v0[31];

        v90 = sub_1FA70(v88, v89, &v121);

        *(v86 + 4) = v90;
        _os_log_impl(&dword_0, v84, v85, "%s", v86, 0xCu);
        sub_BA2C(v87);
      }

      v72 = v114;
      ++v74;
      v73 = v120;
      if (v74 == v118)
      {

        break;
      }
    }
  }

  sub_1DBD8(v91, v73, v108);

  sub_17088((v110 + 16), *(v110 + 40));
  if (sub_2A474())
  {
    v92 = *(v72 + 16);
    if (v92)
    {
      v121 = _swiftEmptyArrayStorage;

      sub_201FC(0, v92, 0);
      v93 = v121;
      v94 = *(v121 + 16);
      v95 = 40;
      do
      {
        v96 = *(v72 + v95);
        v121 = v93;
        v97 = v93[3];

        if (v94 >= v97 >> 1)
        {
          sub_201FC((v97 > 1), v94 + 1, 1);
          v93 = v121;
        }

        v93[2] = v94 + 1;
        v93[v94 + 4] = v96;
        v95 += 40;
        ++v94;
        --v92;
      }

      while (v92);

      sub_17088(v0 + 11, v0[14]);
      sub_45B4(v93, v120);
      if (v107)
      {

        swift_setDeallocating();

        goto LABEL_81;
      }

      v18 = sub_2A7E4();
      v103 = sub_2A9D4();
      if (os_log_type_enabled(v18, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&dword_0, v18, v103, "Self patterns written to CoreData", v104, 2u);
      }

      goto LABEL_91;
    }

    v100 = v111[2];

    if (v100)
    {
      sub_17088(v0 + 11, v0[14]);

      sub_3FA0(v101);
      if (v107)
      {

        swift_setDeallocating();

        goto LABEL_81;
      }

      v18 = sub_2A7E4();
      v105 = sub_2A9D4();
      if (!os_log_type_enabled(v18, v105))
      {
LABEL_91:

        goto LABEL_75;
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_0, v18, v105, "Incomplete patterns written to CoreData", v106, 2u);
    }
  }

  else
  {
  }

LABEL_75:

  v98 = v0[52];

  sub_BA2C(v0 + 11);
  sub_26080();
  sub_25DF4(v98);

  v99 = v0[1];
LABEL_82:

  v99();
}

uint64_t sub_25D0C()
{
  sub_BA2C(v0 + 11);
  v1 = v0[52];
  sub_26080();
  sub_25DF4(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25DF4(uint64_t a1)
{
  v1 = sub_2A794();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2A754();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39730 != -1)
  {
    swift_once();
  }

  v9 = sub_2A784();
  sub_B884(v9, qword_3AB58);
  v10 = sub_2A774();
  sub_2A7A4();
  v11 = sub_2AA04();
  if (sub_2AA44())
  {

    sub_2A7D4();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_2A744();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v11, v14, "runPatternExtractionPlugin", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_26080()
{
  if (qword_39720 != -1)
  {
    swift_once();
  }

  v0 = sub_2A804();
  sub_B884(v0, qword_3AB28);
  oslog = sub_2A7E4();
  v1 = sub_2A9D4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "SiriPrivateLearningPatternExtractionPlugin.run() ended", v2, 2u);
  }
}

void *SiriPrivateLearningPatternExtractionPlugin.deinit()
{
  sub_BA2C(v0 + 2);
  sub_BA2C(v0 + 7);
  sub_BA2C(v0 + 12);
  sub_BA2C(v0 + 17);

  return v0;
}

uint64_t SiriPrivateLearningPatternExtractionPlugin.__deallocating_deinit()
{
  sub_BA2C(v0 + 2);
  sub_BA2C(v0 + 7);
  sub_BA2C(v0 + 12);
  sub_BA2C(v0 + 17);

  return _swift_deallocClassInstance(v0, 192, 7);
}

uint64_t sub_26200()
{
  type metadata accessor for SiriPrivateLearningPatternExtractionPlugin();
  v0 = swift_allocObject();
  SiriPrivateLearningPatternExtractionPlugin.init()();
  return v0;
}

uint64_t sub_26238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2A1A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_385C(&qword_3A9D8, &qword_2C7C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_2A994();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v3;
  (*(v8 + 32))(&v15[v14], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v16 = &v15[(v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v16 = a2;
  *(v16 + 1) = a3;

  sub_23808(0, 0, v12, &unk_2C890, v15);
}

uint64_t sub_26464@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265F0;

  return v6(a1);
}

uint64_t sub_265F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_266E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_26718(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26738(void *a1, uint64_t a2)
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

    v8 = sub_2AAC4();

    if (v8)
    {

      type metadata accessor for PatternItem();
      swift_dynamicCast();
      result = 0;
      *a1 = v31;
      return result;
    }

    v27 = sub_2AAB4();
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      JUMPOUT(0x26D74);
    }

    v28 = sub_27184(v7, v27 + 1);
    v29 = v28[2];
    if (v28[3] <= v29)
    {
      sub_27298(v29 + 1);
    }

    sub_27954(v30, v28);

    *v3 = v28;
    goto LABEL_68;
  }

  sub_2ADA4();

  sub_2A8B4();

  sub_2ADB4(*(a2 + 40));
  sub_1A884(*(a2 + 41));
  sub_2A8B4();

  v10 = sub_2ADC4();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_63:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v3;

    sub_27A44(v26, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
LABEL_68:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v12);
    v16 = *(v15 + 24) == *(a2 + 24) && *(v15 + 32) == *(a2 + 32);
    if (v16 || (sub_2AD54()) && *(v15 + 40) == *(a2 + 40))
    {
      break;
    }

LABEL_10:
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v17 = *(v15 + 41);
  v18 = 0xE300000000000000;
  v19 = 5395265;
  switch(v17)
  {
    case 1:
      v19 = 5786702;
      break;
    case 2:
      v19 = 4801877;
      break;
    case 3:
      v18 = 0xE800000000000000;
      v19 = 0x505041454E4F4850;
      break;
    case 4:
      v18 = 0xEA00000000005050;
      v19 = 0x414547415353454DLL;
      break;
    case 5:
      v19 = 0x5245444E494D4552;
      v20 = 1096041811;
      goto LABEL_28;
    case 6:
      v19 = 0xD000000000000017;
      v18 = 0x800000000002C990;
      break;
    case 7:
      v19 = 0x4552434D52414C41;
      goto LABEL_26;
    case 8:
      v18 = 0xEE00505041454C47;
      v19 = 0x474F544D52414C41;
      break;
    case 9:
      v19 = 0x4450554D52414C41;
LABEL_26:
      v20 = 1095062593;
LABEL_28:
      v18 = v20 | 0xEE00505000000000;
      break;
    case 10:
      v19 = 0x4145524345544F4ELL;
      goto LABEL_32;
    case 11:
      v19 = 0x454C454445544F4ELL;
LABEL_32:
      v18 = 0xED00005050414554;
      break;
    case 12:
      v18 = 0xE900000000000050;
      v19 = 0x5041594D444E4946;
      break;
    case 13:
      v18 = 0xE700000000000000;
      v19 = 0x4E574F4E4B4E55;
      break;
    default:
      break;
  }

  v21 = 0xE300000000000000;
  v22 = 5395265;
  switch(*(a2 + 41))
  {
    case 1:
      if (v19 == 5786702)
      {
        goto LABEL_59;
      }

      goto LABEL_9;
    case 2:
      if (v19 != 4801877)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 3:
      v21 = 0xE800000000000000;
      if (v19 != 0x505041454E4F4850)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 4:
      v21 = 0xEA00000000005050;
      if (v19 != 0x414547415353454DLL)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 5:
      v23 = 0x5245444E494D4552;
      v24 = 1096041811;
      goto LABEL_51;
    case 6:
      v21 = 0x800000000002C990;
      if (v19 != 0xD000000000000017)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 7:
      v23 = 0x4552434D52414C41;
      goto LABEL_49;
    case 8:
      v21 = 0xEE00505041454C47;
      if (v19 != 0x474F544D52414C41)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 9:
      v23 = 0x4450554D52414C41;
LABEL_49:
      v24 = 1095062593;
LABEL_51:
      v21 = v24 | 0xEE00505000000000;
      if (v19 != v23)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 0xA:
      v22 = 0x4145524345544F4ELL;
      v21 = 0xED00005050414554;
      goto LABEL_58;
    case 0xB:
      v21 = 0xED00005050414554;
      if (v19 != 0x454C454445544F4ELL)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 0xC:
      v21 = 0xE900000000000050;
      if (v19 != 0x5041594D444E4946)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 0xD:
      v21 = 0xE700000000000000;
      if (v19 != 0x4E574F4E4B4E55)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    default:
LABEL_58:
      if (v19 != v22)
      {
        goto LABEL_9;
      }

LABEL_59:
      if (v18 == v21)
      {

        goto LABEL_71;
      }

LABEL_9:
      v14 = sub_2AD54();

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_71:
      *a1 = *(*(v6 + 48) + 8 * v12);

      result = 0;
      break;
  }

  return result;
}

uint64_t sub_26DE4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2ADA4();
  sub_2A8B4();
  v8 = sub_2ADC4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2AD54() & 1) != 0)
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

    sub_28034(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_26F34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_2ADA4();
  sub_22994(v30, a2, a3);
  result = sub_2ADC4();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = result & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_30:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = *v27;

    sub_281B4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v27 = v30[0];
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v29 = ~v9;
  v11 = *(a2 + 16);
  v12 = *(v6 + 48);
  v26 = v6;
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = *v13;
    if (*(*v13 + 16) == v11)
    {
      v15 = v13[1];
      if (v11 && v14 != a2)
      {
        v16 = (v14 + 40);
        v17 = (a2 + 40);
        v18 = v11;
        do
        {
          result = *(v16 - 1);
          if (result != *(v17 - 1) || *v16 != *v17)
          {
            result = sub_2AD54();
            if ((result & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          v16 += 2;
          v17 += 2;
        }

        while (--v18);
      }

      v20 = *(v15 + 16);
      if (v20 == *(a3 + 16))
      {
        break;
      }
    }

LABEL_3:
    v10 = (v10 + 1) & v29;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (v20)
  {
    v21 = v15 == a3;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
LABEL_29:

    *a1 = *(*(v26 + 48) + 16 * v10);

    return 0;
  }

  else
  {
    v22 = (v15 + 40);
    v23 = (a3 + 40);
    while (v20)
    {
      result = *(v22 - 1);
      if (result != *(v23 - 1) || *v22 != *v23)
      {
        result = sub_2AD54();
        if ((result & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v22 += 2;
      v23 += 2;
      if (!--v20)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
    __break(1u);
  }

  return result;
}

void *sub_27184(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_385C(&qword_3A1E0, &qword_2BCB8);
    v2 = sub_2AB04();
    v6 = v2;
    sub_2AAA4();
    if (sub_2AAD4())
    {
      type metadata accessor for PatternItem();
      do
      {
        swift_dynamicCast();
        v3 = *(v2 + 16);
        if (*(v2 + 24) <= v3)
        {
          sub_27298(v3 + 1);
        }

        v2 = v6;
        sub_27954(v5, v6);
      }

      while (sub_2AAD4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_27298(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_385C(&qword_3A1E0, &qword_2BCB8);
  result = sub_2AAF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_27954(*(*(v3 + 48) + 8 * (v12 | (v6 << 6))), v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      ;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v3 + 32);
    if (v15 >= 64)
    {
      bzero((v3 + 56), ((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v15;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_273FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_385C(&qword_3A190, &unk_2C880);
  result = sub_2AAF4();
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
      sub_2ADA4();
      sub_2A8B4();
      result = sub_2ADC4();
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

uint64_t sub_2765C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_385C(&qword_3AAF0, &qword_2C878);
  result = sub_2AAF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
      v30 = *(*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      sub_2ADA4();
      sub_2ADB4(*(v30 + 16));
      v17 = *(v30 + 16);
      if (v17)
      {
        v18 = v30 + 40;
        do
        {

          sub_2A8B4();

          v18 += 16;
          --v17;
        }

        while (v17);
      }

      sub_2ADB4(*(*(&v30 + 1) + 16));
      v19 = *(*(&v30 + 1) + 16);
      if (v19)
      {
        v20 = *(&v30 + 1) + 40;
        do
        {

          sub_2A8B4();

          v20 += 16;
          --v19;
        }

        while (v19);
      }

      result = sub_2ADC4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        v3 = v29;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v3 = v29;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 16 * v13) = v30;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v7, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_27954(uint64_t a1, uint64_t a2)
{
  sub_2ADA4();

  sub_2A8B4();

  sub_2ADB4(*(a1 + 40));
  sub_1A884(*(a1 + 41));
  sub_2A8B4();

  sub_2ADC4();
  result = sub_2AA94();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_27A44(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_27298(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_283FC();
        goto LABEL_64;
      }

      sub_28818(v6 + 1);
    }

    v8 = *v3;
    sub_2ADA4();

    sub_2A8B4();

    sub_2ADB4(*(v5 + 40));
    sub_1A884(*(v5 + 41));
    sub_2A8B4();

    result = sub_2ADC4();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      type metadata accessor for PatternItem();
      do
      {
        v12 = *(*(v8 + 48) + 8 * a2);
        result = *(v12 + 24);
        v13 = result == *(v5 + 24) && *(v12 + 32) == *(v5 + 32);
        if (v13 || (result = sub_2AD54(), (result & 1) != 0))
        {
          if (*(v12 + 40) == *(v5 + 40))
          {
            v14 = *(v12 + 41);
            v15 = 0xE300000000000000;
            v16 = 5395265;
            switch(v14)
            {
              case 1:
                v16 = 5786702;
                break;
              case 2:
                v16 = 4801877;
                break;
              case 3:
                v15 = 0xE800000000000000;
                v16 = 0x505041454E4F4850;
                break;
              case 4:
                v16 = 0x414547415353454DLL;
                v15 = 0xEA00000000005050;
                break;
              case 5:
                v16 = 0x5245444E494D4552;
                v17 = 1096041811;
                goto LABEL_29;
              case 6:
                v16 = 0xD000000000000017;
                v15 = 0x800000000002C990;
                break;
              case 7:
                v16 = 0x4552434D52414C41;
                goto LABEL_27;
              case 8:
                v15 = 0xEE00505041454C47;
                v16 = 0x474F544D52414C41;
                break;
              case 9:
                v16 = 0x4450554D52414C41;
LABEL_27:
                v17 = 1095062593;
LABEL_29:
                v15 = v17 | 0xEE00505000000000;
                break;
              case 10:
                v16 = 0x4145524345544F4ELL;
                goto LABEL_33;
              case 11:
                v16 = 0x454C454445544F4ELL;
LABEL_33:
                v15 = 0xED00005050414554;
                break;
              case 12:
                v16 = 0x5041594D444E4946;
                v15 = 0xE900000000000050;
                break;
              case 13:
                v15 = 0xE700000000000000;
                v16 = 0x4E574F4E4B4E55;
                break;
              default:
                break;
            }

            v18 = 0xE300000000000000;
            v19 = 5395265;
            switch(*(v5 + 41))
            {
              case 1:
                if (v16 != 5786702)
                {
                  goto LABEL_10;
                }

                goto LABEL_60;
              case 2:
                if (v16 == 4801877)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 3:
                v18 = 0xE800000000000000;
                if (v16 == 0x505041454E4F4850)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 4:
                v18 = 0xEA00000000005050;
                if (v16 == 0x414547415353454DLL)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 5:
                v20 = 0x5245444E494D4552;
                v21 = 1096041811;
                goto LABEL_52;
              case 6:
                v18 = 0x800000000002C990;
                if (v16 == 0xD000000000000017)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 7:
                v20 = 0x4552434D52414C41;
                goto LABEL_50;
              case 8:
                v18 = 0xEE00505041454C47;
                if (v16 == 0x474F544D52414C41)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 9:
                v20 = 0x4450554D52414C41;
LABEL_50:
                v21 = 1095062593;
LABEL_52:
                v18 = v21 | 0xEE00505000000000;
                if (v16 == v20)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 0xA:
                v19 = 0x4145524345544F4ELL;
                v18 = 0xED00005050414554;
                goto LABEL_59;
              case 0xB:
                v18 = 0xED00005050414554;
                if (v16 == 0x454C454445544F4ELL)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 0xC:
                v18 = 0xE900000000000050;
                if (v16 == 0x5041594D444E4946)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 0xD:
                v18 = 0xE700000000000000;
                if (v16 == 0x4E574F4E4B4E55)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              default:
LABEL_59:
                if (v16 != v19)
                {
                  goto LABEL_10;
                }

LABEL_60:
                if (v15 == v18)
                {
                  goto LABEL_67;
                }

LABEL_10:
                v11 = sub_2AD54();

                if ((v11 & 1) == 0)
                {
                  break;
                }

                goto LABEL_68;
            }
          }
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_64:
  v22 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + 8 * a2) = v5;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_67:

LABEL_68:
    sub_2AD74();
    __break(1u);
    JUMPOUT(0x27FC4);
  }

  *(v22 + 16) = v25;
  return result;
}

uint64_t sub_28034(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_273FC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2854C();
      goto LABEL_16;
    }

    sub_28944(v8 + 1);
  }

  v10 = *v4;
  sub_2ADA4();
  sub_2A8B4();
  result = sub_2ADC4();
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

      result = sub_2AD54();
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
  result = sub_2AD74();
  __break(1u);
  return result;
}

uint64_t sub_281B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  v35 = result;
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a4)
  {
    sub_2765C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_286A8();
LABEL_36:
      v28 = *v34;
      *(*v34 + 8 * (a3 >> 6) + 56) |= 1 << a3;
      v29 = (*(v28 + 48) + 16 * a3);
      *v29 = v35;
      v29[1] = a2;
      v30 = *(v28 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_39;
      }

      *(v28 + 16) = v32;
      return result;
    }

    sub_28B7C(v8 + 1);
  }

  v10 = *v4;
  sub_2ADA4();
  sub_22994(v36, v7, a2);
  result = sub_2ADC4();
  v11 = v10 + 56;
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_36;
  }

  v13 = ~v12;
  v14 = *(v7 + 16);
  v15 = *(v10 + 48);
  v33 = (v7 + 40);
  while (1)
  {
    v16 = (v15 + 16 * a3);
    v17 = *v16;
    if (*(*v16 + 16) == v14)
    {
      v18 = v16[1];
      if (v14 && v17 != v35)
      {
        v19 = (v17 + 40);
        v20 = v33;
        v21 = v14;
        do
        {
          result = *(v19 - 1);
          if (result != *(v20 - 1) || *v19 != *v20)
          {
            result = sub_2AD54();
            if ((result & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v19 += 2;
          v20 += 2;
        }

        while (--v21);
      }

      v23 = *(v18 + 16);
      if (v23 == *(a2 + 16))
      {
        break;
      }
    }

LABEL_10:
    a3 = (a3 + 1) & v13;
    if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (v23)
  {
    v24 = v18 == a2;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v25 = (v18 + 40);
    v26 = (a2 + 40);
    while (v23)
    {
      if (*(v25 - 1) != *(v26 - 1) || *v25 != *v26)
      {
        result = sub_2AD54();
        if ((result & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v25 += 2;
      v26 += 2;
      if (!--v23)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
    __break(1u);
LABEL_39:
    __break(1u);
  }

LABEL_40:
  result = sub_2AD74();
  __break(1u);
  return result;
}

void *sub_283FC()
{
  v1 = v0;
  sub_385C(&qword_3A1E0, &qword_2BCB8);
  v2 = *v0;
  v3 = sub_2AAE4();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_2854C()
{
  v1 = v0;
  sub_385C(&qword_3A190, &unk_2C880);
  v2 = *v0;
  v3 = sub_2AAE4();
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

void *sub_286A8()
{
  v1 = v0;
  sub_385C(&qword_3AAF0, &qword_2C878);
  v2 = *v0;
  v3 = sub_2AAE4();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

uint64_t sub_28818(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_385C(&qword_3A1E0, &qword_2BCB8);
  result = sub_2AAF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_27954(v13, v5))
    {
      v9 &= v9 - 1;
LABEL_11:
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v6);
      ++v11;
      if (v12)
      {
        v9 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_28944(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_385C(&qword_3A190, &unk_2C880);
  result = sub_2AAF4();
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
      sub_2ADA4();

      sub_2A8B4();
      result = sub_2ADC4();
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

uint64_t sub_28B7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_385C(&qword_3AAF0, &qword_2C878);
  result = sub_2AAF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v29 = (v10 - 1) & v10;
LABEL_15:
      v30 = *(*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      sub_2ADA4();
      sub_2ADB4(*(v30 + 16));
      v17 = *(v30 + 16);
      if (v17)
      {

        v18 = v30 + 40;
        do
        {

          sub_2A8B4();

          v18 += 16;
          --v17;
        }

        while (v17);
      }

      else
      {
      }

      sub_2ADB4(*(*(&v30 + 1) + 16));
      v19 = *(*(&v30 + 1) + 16);
      if (v19)
      {
        v20 = *(&v30 + 1) + 40;
        do
        {

          sub_2A8B4();

          v20 += 16;
          --v19;
        }

        while (v19);
      }

      result = sub_2ADC4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        v3 = v28;
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

        goto LABEL_36;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v3 = v28;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 16 * v13) = v30;
      ++*(v5 + 16);
      v10 = v29;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_34;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v29 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {

LABEL_34:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_28EB0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_28F3C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_2AB64();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_28FBC;
  }

  __break(1u);
  return result;
}

uint64_t sub_28FC4(uint64_t result, void *a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 64); ; i += 40)
    {
      v8 = *i;
      v9 = *(i - 3);
      v10[0] = *(i - 4);
      v10[1] = v9;
      v11 = *(i - 1);
      v12 = v8;

      sub_24258(v10, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_29090(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2A9B4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26DE4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_29128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  sub_2987C(a1, a2, a3);
  result = sub_2A9B4();
  v10 = result;
  if (v4)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_26F34(&v9, v8, v7);

      v6 += 2;
      --v4;
    }

    while (v4);
    return v10;
  }

  return result;
}

unint64_t sub_291D0(unint64_t result, uint64_t a2)
{
  v43 = result;
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_82;
    }

LABEL_3:
    v4 = 0;
    v5 = v2 + 32;
    v45 = v3;
    v46 = v2;
    v44 = v2 + 32;
    do
    {
      if (v4 == v3)
      {
        goto LABEL_79;
      }

      if (v4 >= *(v2 + 16))
      {
        goto LABEL_80;
      }

      v6 = *(v5 + 40 * v4 + 16);
      if (v6)
      {
        v48 = v5 + 40 * v4;
        v49 = v4;
        v7 = *(a2 + 16);

        if (!v7)
        {
          goto LABEL_24;
        }

        v8 = 0;
        while (2)
        {
          v9 = v8;
LABEL_11:
          if (v9 >= v7)
          {
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            result = sub_28E74(v2);
            v2 = result;
            goto LABEL_3;
          }

          v8 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_76;
          }

          v10 = *(v6 + 16);
          v11 = (v6 + 32);
          do
          {
            if (!v10)
            {
              ++v9;
              if (v8 == v7)
              {
                goto LABEL_24;
              }

              goto LABEL_11;
            }

            v12 = *v11++;
            --v10;
          }

          while (v12 != v9);
          v3 = *(a2 + 32 + 8 * v9);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2019C(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v15 = _swiftEmptyArrayStorage[2];
          v14 = _swiftEmptyArrayStorage[3];
          v2 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            sub_2019C((v14 > 1), v15 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v2;
          v16 = &_swiftEmptyArrayStorage[2 * v15];
          v16[4] = v9;
          v16[5] = v3;
          if (v8 != v7)
          {
            continue;
          }

          break;
        }

LABEL_24:

        v3 = _swiftEmptyArrayStorage[2];
        if (v3)
        {
          sub_2015C(0, v3, 0);
          v17 = 5;
          do
          {
            v2 = _swiftEmptyArrayStorage[v17];
            v19 = _swiftEmptyArrayStorage[2];
            v18 = _swiftEmptyArrayStorage[3];

            if (v19 >= v18 >> 1)
            {
              sub_2015C((v18 > 1), v19 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v19 + 1;
            _swiftEmptyArrayStorage[v19 + 4] = v2;
            v17 += 2;
            v3 = (v3 - 1);
          }

          while (v3);
        }

        v51 = _swiftEmptyArrayStorage[2];
        if (v51)
        {
          v20 = 0;
          v50 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v20 >= _swiftEmptyArrayStorage[2])
            {
              goto LABEL_77;
            }

            v21 = _swiftEmptyArrayStorage[v20 + 4];
            if (v21 >> 62)
            {
              v22 = sub_2AC34();
              if (v22)
              {
LABEL_34:
                v3 = (v22 & ~(v22 >> 63));

                sub_201BC(0, v3, 0);
                if (v22 < 0)
                {
                  goto LABEL_78;
                }

                for (i = 0; i != v22; ++i)
                {
                  if ((v21 & 0xC000000000000001) != 0)
                  {
                    v24 = sub_2AB64();
                  }

                  else
                  {
                    v24 = *(v21 + 8 * i + 32);
                  }

                  v25 = *(v24 + 64);

                  v27 = _swiftEmptyArrayStorage[2];
                  v26 = _swiftEmptyArrayStorage[3];
                  v28 = v27 + 1;
                  if (v27 >= v26 >> 1)
                  {
                    result = sub_201BC((v26 > 1), v27 + 1, 1);
                  }

                  _swiftEmptyArrayStorage[2] = v28;
                  _swiftEmptyArrayStorage[v27 + 4] = v25;
                }

LABEL_45:
                v29 = 0;
                v2 = v28 - 1;
                do
                {
                  v30 = _swiftEmptyArrayStorage[2];
                  if (v29 > v30)
                  {
                    v30 = v29;
                  }

                  v31 = v29;
                  while (1)
                  {
                    if (v30 == v31)
                    {
                      __break(1u);
                      goto LABEL_73;
                    }

                    v3 = _swiftEmptyArrayStorage[v31 + 4];
                    if (v3[2])
                    {
                      v32 = v3[5];
                      v33 = v3[4] & 0xFFFFFFFFFFFFLL;
                      if ((v32 & 0x2000000000000000) != 0)
                      {
                        v33 = HIBYTE(v32) & 0xF;
                      }

                      if (v33)
                      {
                        break;
                      }
                    }

                    if (v28 == ++v31)
                    {
                      goto LABEL_60;
                    }
                  }

                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_201BC(0, _swiftEmptyArrayStorage[2] + 1, 1);
                  }

                  v35 = _swiftEmptyArrayStorage[2];
                  v34 = _swiftEmptyArrayStorage[3];
                  if (v35 >= v34 >> 1)
                  {
                    result = sub_201BC((v34 > 1), v35 + 1, 1);
                  }

                  v29 = v31 + 1;
                  _swiftEmptyArrayStorage[2] = v35 + 1;
                  _swiftEmptyArrayStorage[v35 + 4] = v3;
                }

                while (v2 != v31);
                goto LABEL_60;
              }
            }

            else
            {
              v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
              if (v22)
              {
                goto LABEL_34;
              }
            }

            v28 = _swiftEmptyArrayStorage[2];
            if (v28)
            {
              goto LABEL_45;
            }

LABEL_60:
            ++v20;

            v36 = _swiftEmptyArrayStorage[2];
            if (v36 >= 2)
            {
              v3 = _swiftEmptyArrayStorage[4];
              v37 = _swiftEmptyArrayStorage[v36 + 3];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_1F84C(0, *(v50 + 2) + 1, 1, v50);
              }

              v2 = *(v50 + 2);
              v38 = *(v50 + 3);
              if (v2 >= v38 >> 1)
              {
                v50 = sub_1F84C((v38 > 1), v2 + 1, 1, v50);
              }

              *(v50 + 2) = v2 + 1;
              v39 = &v50[16 * v2];
              *(v39 + 4) = v3;
              *(v39 + 5) = v37;
              if (v20 == v51)
              {
                goto LABEL_70;
              }
            }

            else
            {

              if (v20 == v51)
              {
                goto LABEL_70;
              }
            }
          }
        }

        v50 = _swiftEmptyArrayStorage;
LABEL_70:

        v3 = sub_29128(v50, v40, v41);

        v42 = v3[2];

        v2 = v46;
        v4 = v49;
        if (v49 >= *(v46 + 16))
        {
          goto LABEL_81;
        }

        *(v48 + 24) = v42;
        *(v48 + 32) = 0;
        v5 = v44;
        v3 = v45;
      }

      ++v4;
    }

    while (v4 != v3);
LABEL_73:
    *v43 = v2;
  }

  return result;
}

uint64_t sub_2980C(uint64_t a1, uint64_t a2)
{
  v4 = sub_385C(&qword_3AAD8, &qword_2C868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2987C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3AAE8;
  if (!qword_3AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AAE8);
  }

  return result;
}

uint64_t sub_298D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29998()
{
  v1 = sub_2A1A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_29A7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2A1A4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_15C74;

  return sub_2310C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_29BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_385C(&qword_3A9D8, &qword_2C7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29C28(uint64_t a1)
{
  v2 = sub_385C(&qword_3A9D8, &qword_2C7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29C90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_29CC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_197EC;

  return sub_264F8(a1, v4);
}

uint64_t sub_29D80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_15C74;

  return sub_264F8(a1, v4);
}

uint64_t sub_29E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_29E80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29E8C(uint64_t *a1, int a2)
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

uint64_t sub_29ED4(uint64_t result, int a2, int a3)
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

unint64_t sub_29F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3AB00;
  if (!qword_3AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AB00);
  }

  return result;
}