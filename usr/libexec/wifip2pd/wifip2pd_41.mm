uint64_t sub_100335A9C()
{

  v1 = OBJC_IVAR____TtC12wifip2pdCore17NANMulticastPeers_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100335B68(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

unint64_t sub_100335C24()
{
  result = qword_100596C68;
  if (!qword_100596C68)
  {
    v3 = type metadata accessor for MulticastPeer(255);
    result = swift_getWitnessTable(aE_3, v3, v0, v1);
    atomic_store(result, &qword_100596C68);
  }

  return result;
}

uint64_t (*sub_100335C7C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100335CFC;
  }

  __break(1u);
  return result;
}

uint64_t sub_100335D04(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100315F8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 64) >= *(*v14 + 64))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for MulticastPeer(0);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18[1] = v7;
    sub_100335E54(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100335E54(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_124:
    v4 = *v102;
    if (*v102)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 64);
    v10 = *(*(*a3 + 8 * v6) + 64);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 64);
      v14 = (v9 < v10) ^ (v13 >= v12);
      ++v11;
      v12 = v13;
    }

    while ((v14 & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(v24 + 64) >= *(*v26 + 64))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10011707C(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_10011707C((v29 > 1), v30 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v31;
    v32 = &v7[16 * v30];
    *(v32 + 4) = v6;
    *(v32 + 5) = v8;
    v104 = v8;
    v33 = *v102;
    if (!*v102)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = *(v7 + 4);
      v36 = *(v7 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[16 * v31];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[16 * v31];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = *&v7[16 * v34 + 32];
    v74 = *&v7[16 * v34 + 40];
    v107 = *&v7[16 * v34 + 16];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = &v33[v80];
      v83 = v80 < 1;
      v4 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v77 + 64) >= *(*v85 + 64))
        {
          break;
        }

        v89 = v75 == v77;
        v77 += 8;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        v75 += 8;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85;
      v85 += 8;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = &v33[v81];
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      v4 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      v4 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 8;
        v79 -= 8;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 8;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (*(v94 + 64) < *(*v90 + 64))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          v79 -= 8;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        v77 -= 8;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= &v85[v95 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10016AD7C(v4);
    }

    if (v86 > *(v4 + 2))
    {
      goto LABEL_137;
    }

    v96 = &v4[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    result = sub_10016ACF0(v86);
    v7 = v4;
    v31 = *(v4 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
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
  result = sub_10016AD7C(v7);
  v7 = result;
LABEL_126:
  v97 = *(v7 + 2);
  if (v97 < 2)
  {
  }

  while (*a3)
  {
    v98 = *&v7[16 * v97];
    v99 = *&v7[16 * v97 + 24];
    sub_1003365B8((*a3 + 8 * v98), (*a3 + 8 * *&v7[16 * v97 + 16]), (*a3 + 8 * v99), v4);
    if (v103)
    {
    }

    if (v99 < v98)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10016AD7C(v7);
    }

    if (v97 - 2 >= *(v7 + 2))
    {
      goto LABEL_151;
    }

    v100 = &v7[16 * v97];
    *v100 = v98;
    *(v100 + 1) = v99;
    result = sub_10016ACF0(v97 - 1);
    v97 = *(v7 + 2);
    if (v97 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_1003365B8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*(*v6 + 64) < *(*v4 + 64))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 64) < *(*v17 + 64))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_1003367BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10036777C(v3, 0);
  sub_100336850((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100336850(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100336A18();
          for (i = 0; i != v6; ++i)
          {
            sub_10005DC58(&qword_100596C70, &qword_1004B1158);
            v9 = sub_100335C7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MulticastPeer(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1003369D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return *(a1 + 64) < *(a2 + 64);
  }

  else
  {
    return v2 < v3;
  }
}

unint64_t sub_100336A18()
{
  result = qword_100596C78;
  if (!qword_100596C78)
  {
    v3 = sub_10005DD04(&qword_100596C70, &qword_1004B1158);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100596C78);
  }

  return result;
}

void sub_100336A90(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      if (v3 <= 0x3F)
      {
        sub_10033DF30(319);
        if (v4 <= 0x3F)
        {
          sub_100353CE0(319, &qword_100596D98, type metadata accessor for PriorityRadioConstraint);
          if (v5 <= 0x3F)
          {
            sub_10033DF94(319);
            if (v6 <= 0x3F)
            {
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void *sub_100336D5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100367868(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      v6 = static NANPMK.zero.getter();
      v8 = v7;
      sub_100017554(0, 0xF000000000000000);
      sub_10000AB0C(v6, v8);
      sub_10005D67C(0, 0xF000000000000000);
      sub_1000124C8(v6, v8);
      sub_100017554(0, 0xF000000000000000);

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_100367868((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[7 * v10];
      *(v11 + 32) = v4;
      v11[5] = v6;
      v11[6] = v8;
      *(v11 + 7) = xmmword_100483C50;
      v11[9] = 0;
      v11[10] = 0;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void sub_100336EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100367888(0, v1, 0);
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v4 = *i;
      v6 = HIBYTE(*i) & 0xF;
      if ((*i & 0x2000000000000000) == 0)
      {
        v6 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (!v6)
      {
        break;
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v8 >= v7 >> 1)
      {
        sub_100367888((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v5;
      v9[5] = v4;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_100336F90(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v27 = _swiftEmptyArrayStorage;
  sub_100367868(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v22[0] = *(i - 1);
    v22[1] = v10;

    (a1)(&v23, v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v27 = v6;
    v16 = v6[2];
    v15 = v6[3];
    if (v16 >= v15 >> 1)
    {
      v20 = v25;
      v21 = v24;
      v19 = v26;
      sub_100367868((v15 > 1), v16 + 1, 1);
      v14 = v19;
      v13 = v20;
      v12 = v21;
      v6 = v27;
    }

    v6[2] = v16 + 1;
    v17 = &v6[7 * v16];
    *(v17 + 32) = v11;
    *(v17 + 5) = v12;
    *(v17 + 7) = v13;
    *(v17 + 9) = v14;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1003370E4(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_100367828(0, v2 & ~(v2 >> 63), 0);
    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_10036A344(v34, v35, v36, v1);
        v13 = v12;
        v14 = [v12 unsignedLongLongValue];

        v15 = v32;
        v37 = v32;
        v17 = v32[2];
        v16 = v32[3];
        if (v17 >= v16 >> 1)
        {
          sub_100367828((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        v15[2] = v17 + 1;
        v15[v17 + 4] = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          sub_10005DC58(&qword_100599480, &qword_1004B17D0);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_10002BEB8(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_10002BEB8(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_10002BEB8(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1003374A0(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), const char *a3)
{
  v6 = *v3;
  swift_beginAccess();
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  v9 = a2(255, v7, v8);

  v12[0] = v7;
  v12[1] = v9;
  v12[2] = v8;
  v12[3] = swift_getWitnessTable(a3, v9);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v12);
  v10 = Dictionary.count.getter();

  return v10;
}

uint64_t sub_100337594()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = _s17InitiatorInstanceCMa(255, v2, v3, v4);

  v8[0] = v2;
  v8[1] = v5;
  v8[2] = v3;
  v8[3] = swift_getWitnessTable(byte_1004B0F14, v5);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v8);
  sub_10020CB70();
  v6 = Dictionary.count.getter();

  return v6;
}

void *sub_100337688(unint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink(0, v4, v5, v6);
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  v7 = v14;
  swift_endAccess();
  if (v14)
  {
    v9 = swift_unownedRetainStrong();
    sub_10036C960(v9);
  }

  else
  {
    type metadata accessor for NANDeviceLink(0, v4, v5, v8);
    v10 = swift_unownedRetainStrong();
    v7 = sub_10037456C(v10, a1 & 0xFFFFFFFFFFFFLL, v11, v12);

    swift_unownedRetain();
    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  return v7;
}

uint64_t sub_10033787C(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v6 = _s17InitiatorInstanceCMa_0(255, v3, v4, v5);
  v8 = _s17ResponderInstanceCMa_0(255, v3, v4, v7);
  type metadata accessor for Either(0, v6, v8, v9);
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  if (v13 == 255)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (v13)
    {
      v10 = *(v12 + qword_10059BC60);
      sub_1002CB018(v12, v13);
      return v10;
    }

    sub_1002CB018(v12, v13);
  }

  return 0;
}

void sub_1003379B8(unint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v7 = _s17InitiatorInstanceCMa_0(255, v4, v5, v6);
  v9 = _s17ResponderInstanceCMa_0(255, v4, v5, v8);
  type metadata accessor for Either(0, v7, v9, v10);
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  swift_endAccess();
  if (v26 == 255)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27[0] = v20;
      *v19 = 136315138;
      v21 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v23 = sub_100002320(v21, v22, v27);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to find pairing session for %s", v19, 0xCu);
      sub_100002A00(v20);
    }
  }

  else
  {
    sub_1002CB018(v25, v26);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v13 = 136315138;
      v14 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v16 = sub_100002320(v14, v15, v27);

      *(v13 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "Removing pairing session for %s", v13, 0xCu);
      sub_100002A00(v24);
    }

    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();
    sub_1002CB018(v25, v26);
  }
}

uint64_t sub_100337D4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10005DC58(&unk_100596870, &unk_1004B0F60);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_100016290(a1, &unk_100596870, &unk_1004B0F60);
    v13 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046AA20();
        v17 = v21;
      }

      sub_10036D640(*(v17 + 56) + *(v9 + 72) * v15, v7, type metadata accessor for NANInternetSharingStatistics.Requester);
      sub_1004685B4(v15, v17);
      *v3 = v17;
      (*(v9 + 56))(v7, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    return sub_100016290(v7, &unk_100596870, &unk_1004B0F60);
  }

  else
  {
    sub_10036D640(a1, v12, type metadata accessor for NANInternetSharingStatistics.Requester);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_1003E16CC(v12, a2 & 0xFFFFFFFFFFFFFFLL, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_100337FA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = type metadata accessor for NANAttribute(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_100016290(a1, &unk_100595C00, &qword_10048F790);
    v13 = sub_1003E08F4(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046BF70();
        v17 = v21;
      }

      sub_10036D640(*(v17 + 56) + *(v9 + 72) * v15, v7, type metadata accessor for NANAttribute);
      sub_100468A9C(v15, v17);
      *v3 = v17;
      (*(v9 + 56))(v7, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    return sub_100016290(v7, &unk_100595C00, &qword_10048F790);
  }

  else
  {
    sub_10036D640(a1, v12, type metadata accessor for NANAttribute);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1003E1F6C(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1003381F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10005DC58(&qword_100597420, &qword_1004B16B8);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = type metadata accessor for NANPeer(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_100016290(a1, &qword_100597420, &qword_1004B16B8);
    v13 = sub_100041DE8(a2 & 0xFFFFFFFFFFFFLL);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046C304();
        v17 = v21;
      }

      sub_10036D640(*(v17 + 56) + *(v9 + 72) * v15, v7, type metadata accessor for NANPeer);
      sub_100468C74(v15, v17);
      *v3 = v17;
      (*(v9 + 56))(v7, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    return sub_100016290(v7, &qword_100597420, &qword_1004B16B8);
  }

  else
  {
    sub_10036D640(a1, v12, type metadata accessor for NANPeer);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_1003E20C0(v12, a2 & 0xFFFFFFFFFFFFLL, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_100338448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10005DC58(&unk_100597460, &qword_1004AFD18);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_100016290(a1, &unk_100597460, &qword_1004AFD18);
    v13 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046C560();
        v17 = v21;
      }

      sub_10036D640(*(v17 + 56) + *(v9 + 72) * v15, v7, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      sub_100468C8C(v15, v17);
      *v3 = v17;
      (*(v9 + 56))(v7, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    return sub_100016290(v7, &unk_100597460, &qword_1004AFD18);
  }

  else
  {
    sub_10036D640(a1, v12, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_1003E2264(v12, a2 & 0xFFFFFFFFFFFFFFLL, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_10033869C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10005DC58(qword_100597590, &qword_1004B1878);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = type metadata accessor for BrowseEndpoints(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_100016290(a1, qword_100597590, &qword_1004B1878);
    v13 = sub_100085268(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10046DB78();
        v17 = v21;
      }

      sub_10036D640(*(v17 + 56) + *(v9 + 72) * v15, v7, type metadata accessor for BrowseEndpoints);
      sub_100469BC8(v15, v17);
      *v3 = v17;
      (*(v9 + 56))(v7, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    return sub_100016290(v7, qword_100597590, &qword_1004B1878);
  }

  else
  {
    sub_10036D640(a1, v12, type metadata accessor for BrowseEndpoints);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1003E24E8(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1003388F0(uint64_t a1, uint64_t a2)
{
  sub_10005DC58(&qword_100597588, &qword_1004B1870);
  __chkstk_darwin();
  v6 = &v15 - v5;
  type metadata accessor for ListenInBoundConnection(0);
  v7 = __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v7) == 1)
  {
    sub_100016290(a1, &qword_100597588, &qword_1004B1870);
    sub_100420B28(a2, v6);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(a2, v11);
    return sub_100016290(v6, &qword_100597588, &qword_1004B1870);
  }

  else
  {
    sub_10036D640(a1, v9, type metadata accessor for ListenInBoundConnection);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1003E293C(v9, a2, isUniquelyReferenced_nonNull_native);
    v14 = type metadata accessor for UUID();
    result = (*(*(v14 - 8) + 8))(a2, v14);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100338B10(uint64_t a1, uint64_t a2)
{
  sub_10005DC58(&qword_100597580, &qword_1004B1868);
  __chkstk_darwin();
  v6 = &v15 - v5;
  type metadata accessor for ConnectedEndpoints(0);
  v7 = __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v7) == 1)
  {
    sub_100016290(a1, &qword_100597580, &qword_1004B1868);
    sub_100420D90(a2, v6);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(a2, v11);
    return sub_100016290(v6, &qword_100597580, &qword_1004B1868);
  }

  else
  {
    sub_10036D640(a1, v9, type metadata accessor for ConnectedEndpoints);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1003E2B10(v9, a2, isUniquelyReferenced_nonNull_native);
    v14 = type metadata accessor for UUID();
    result = (*(*(v14 - 8) + 8))(a2, v14);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100338D30(uint64_t a1, uint64_t a2)
{
  sub_10005DC58(&qword_100597578, &qword_1004B1860);
  __chkstk_darwin();
  v6 = &v15 - v5;
  type metadata accessor for ConnectedSession(0);
  v7 = __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v7) == 1)
  {
    sub_100016290(a1, &qword_100597578, &qword_1004B1860);
    sub_100420B7C(a2, v6);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(a2, v11);
    return sub_100016290(v6, &qword_100597578, &qword_1004B1860);
  }

  else
  {
    sub_10036D640(a1, v9, type metadata accessor for ConnectedSession);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1003E2CE4(v9, a2, isUniquelyReferenced_nonNull_native);
    v14 = type metadata accessor for UUID();
    result = (*(*(v14 - 8) + 8))(a2, v14);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100339090(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t (*a4)(unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    result = a3(a1, a2, isUniquelyReferenced_nonNull_native);
    *v5 = v18;
  }

  else
  {
    result = sub_100085268(a2);
    if (v14)
    {
      v15 = result;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v19 = *v6;
      if (!v16)
      {
        a5();
        v17 = v19;
      }

      result = a4(v15, v17);
      *v6 = v17;
    }
  }

  return result;
}

double sub_100339170(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_100355F78(a1, KeyPath, 0);

  return result;
}

__n128 sub_1003391F8(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1003A7184(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1003A7184((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[56 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  *(v6 + 10) = *(a1 + 48);
  *(v6 + 3) = v8;
  *(v6 + 4) = v9;
  *(v6 + 2) = result;
  *v1 = v3;
  return result;
}

uint64_t sub_1003392B0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v24 = a5;
  v25 = a2;
  v27 = a4;
  v26 = a1;
  v23 = *(a3 - 8);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v6, v17);
  v21 = 1;
  if ((*(v14 + 48))(v19, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v19, v13);
    v26(v16, v11);
    (*(v14 + 8))(v16, v13);
    if (v7)
    {
      return (*(v23 + 32))(v24, v11, a3);
    }

    v21 = 0;
  }

  return (*(*(v27 - 8) + 56))(a6, v21, 1);
}

uint64_t sub_100339558(uint64_t result, int a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = 0;
  v7 = result + 40;
  v8 = _swiftEmptyArrayStorage;
  v27 = result + 40;
  do
  {
    v9 = (v7 + 16 * v6);
    for (i = v6; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      v11 = *(v9 - 1);
      v12 = *v9;
      sub_10000AB0C(v11, *v9);
      sub_10000AB0C(v11, v12);
      v13 = NANPMK.init(pmk:)(v11, v12);
      if (v14 >> 60 != 15)
      {
        break;
      }

      result = sub_1000124C8(v11, v12);
      v9 += 2;
      if (v6 == v4)
      {
        return v8;
      }
    }

    v26 = a2;
    v15 = v3;
    v16 = v13;
    v17 = v14;
    sub_100017554(0, 0xF000000000000000);
    sub_10000AB0C(v16, v17);
    sub_10005D67C(0, 0xF000000000000000);
    v18 = v16;
    v19 = v16;
    v20 = v17;
    sub_1000124C8(v19, v17);
    sub_100017554(0, 0xF000000000000000);

    sub_1000124C8(v11, v12);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003A7184(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v22 = *(v8 + 2);
    v21 = *(v8 + 3);
    v3 = v15;
    if (v22 >= v21 >> 1)
    {
      result = sub_1003A7184((v21 > 1), v22 + 1, 1, v8);
      v24 = v20;
      v8 = result;
      v23 = v18;
    }

    else
    {
      v23 = v18;
      v24 = v20;
    }

    a2 = v26;
    v7 = v27;
    *(v8 + 2) = v22 + 1;
    v25 = &v8[56 * v22];
    v25[32] = v26;
    *(v25 + 5) = v23;
    *(v25 + 6) = v24;
    *(v25 + 56) = xmmword_100483C50;
    *(v25 + 9) = 0;
    *(v25 + 10) = 0;
  }

  while (v6 != v4);
  return v8;
}

void sub_10033975C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v9 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v13 = &v26 - v12;
  v14 = *(v6 + *(v9 + 304));
  swift_unownedRetainStrong();
  v15 = *(*v14 + 96);
  swift_beginAccess();
  v16 = v14 + v15;
  v17 = a1;
  (*(v11 + 16))(v13, v16, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 240))(a1, a2 & 0xFFFFFFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  v19 = v28;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v22 = 136315650;
    v23 = WiFiAddress.description.getter(v26 & 0xFFFFFFFFFFFFLL);
    v25 = sub_100002320(v23, v24, v29);

    *(v22 + 4) = v25;
    *(v22 + 12) = 256;
    *(v22 + 14) = v17;
    *(v22 + 15) = 2080;
    *(v22 + 17) = sub_100002320(v27, v19, v29);
    _os_log_impl(&_mh_execute_header, v20, v21, "Terminated datapath request from %s[%hhu] because %s", v22, 0x19u);
    swift_arrayDestroy();
  }
}

char *sub_100339C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a4;
  v11 = *v5;
  v12 = *(*v5 + 80);
  v13 = *(*v5 + 88);
  v14 = _s17ResponderInstanceCMa(0, v12, v13, a4);
  v15 = *(v6 + *(v11 + 304));
  swift_unownedRetainStrong();
  sub_1002CB130(a1, v20);

  v16 = sub_1002CAE30(v15, v20, a2, a3, v7, 0);

  swift_unknownObjectWeakAssign();
  v17 = v16;
  WitnessTable = swift_getWitnessTable(aM_9, v14);
  sub_10036B958(v17, 0, v12, v14, v13, WitnessTable);
  swift_beginAccess();
  v20[0] = v12;
  v20[1] = v14;
  v20[2] = v13;
  v20[3] = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(255, v20);
  sub_10020CB70();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  sub_10033B1B0();
  return v17;
}

uint64_t sub_100339E54()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v36 = AssociatedTypeWitness;
  __chkstk_darwin();
  v8 = &v35 - v7;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v35 - v11;
  v13 = qword_100596C90;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v16 = _s17InitiatorInstanceCMa(0, v4, v3, v15);

  WitnessTable = swift_getWitnessTable(byte_1004B0F38, v16);
  LOBYTE(v16) = sub_10034A334(v14, v4, v16, v3, WitnessTable);

  if (v16)
  {
    v19 = v1 + *(*v1 + 312);
    if (*v19)
    {
      return result;
    }

    v20 = 1;
  }

  else
  {
    v21 = qword_100596C98;
    swift_beginAccess();
    v22 = *(v1 + v21);
    v24 = _s17ResponderInstanceCMa(0, v4, v3, v23);

    v25 = swift_getWitnessTable(aQ_10, v24);
    v20 = sub_10034A334(v22, v4, v24, v3, v25);

    v19 = v1 + *(*v1 + 312);
    if ((v20 & 1) == *v19)
    {
      return result;
    }
  }

  v26 = v20 & 1;
  *v19 = v20 & 1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "NAN realtime mode has changed to %{BOOL}d", v29, 8u);
  }

  v30 = *(v1 + *(*v1 + 304));
  swift_unownedRetainStrong();
  v31 = *(v30 + *(*v30 + 504));

  [v31 setNANRealTimeEnabled:v26];

  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v32 = sub_10047575C(&off_100572F08);
  sub_1003EED68(v26, v32);

  swift_unownedRetainStrong();
  (*(v10 + 16))(v12, v30 + *(*v30 + 112), v9);

  (*(AssociatedConformanceWitness + 152))(v9, AssociatedConformanceWitness);
  (*(v10 + 8))(v12, v9);
  v33 = v36;
  v34 = swift_getAssociatedConformanceWitness();
  (*(v34 + 8))(v26, v33, v34);
  return (*(v35 + 8))(v8, v33);
}

void *sub_10033A38C(unint64_t a1, char a2, char a3, uint64_t a4)
{
  LOWORD(v33) = a1;
  BYTE2(v33) = BYTE2(a1);
  BYTE3(v33) = BYTE3(a1);
  BYTE4(v33) = BYTE4(a1);
  BYTE5(v33) = BYTE5(a1);
  v6 = *v4;
  swift_beginAccess();
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  v10 = _s17InitiatorInstanceCMa_0(255, v7, v8, v9);
  v12 = _s17ResponderInstanceCMa_0(255, v7, v8, v11);
  type metadata accessor for Either(0, v10, v12, v13);
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  if (v36 == 255)
  {
    swift_endAccess();
    swift_beginAccess();
    v29 = v7;
    v30 = _s8InstanceCMa_0(255, v7, v8, v15);
    v31 = v8;
    WitnessTable = swift_getWitnessTable("]\r\n", v30);
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v29);
    Dictionary.subscript.getter();
    v16 = v33;
    if (v33)
    {
      v17 = v34;
      v18 = v33;
      swift_endAccess();
      sub_100058BA4(v16, v17);
      v19 = &v18[qword_10059B890];
      swift_beginAccess();
      v21 = *(v19 + 1);
      v20 = *(v19 + 2);

      v16 = NANServiceName.description.getter(v21, v20);
      v23 = v22;
    }

    else
    {
      swift_endAccess();
      v23 = 0xE000000000000000;
    }

    v24 = *(v4 + *(*v4 + 304));
    swift_unownedRetainStrong();
    sub_100012400(a4, &v29, &qword_1005968A0, &unk_100499050);
    v14 = sub_1004405F4(v24, a1 & 0xFFFFFFFFFFFFLL, a2, v16, v23, a3, a4, 1, 0, 0);

    v33 = v14;
    LOBYTE(v34) = 1;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    swift_retain_n();
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  else
  {
    v14 = v35;
    swift_endAccess();
  }

  return v14;
}

uint64_t sub_10033A730(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a2 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = NANAttribute.PairingBootstrapping.Method.init(apiValue:advertise:)([v6 integerValue], 0, 1);

      if ((v9 & 0x10000) != 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      a1 = v10 | a1;
      if (v8 == i)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return a1;
}

void sub_10033A838(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v23 = a1;
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  v19 = v8;
  v20 = _s8InstanceCMa_0(255, v8, v9, v10);
  v21 = v9;
  WitnessTable = swift_getWitnessTable("]\r\n", v20);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v19);
  Dictionary.subscript.getter();
  v11 = v24;
  if (v24)
  {
    v12 = v25;
    v13 = v24;
    swift_endAccess();
    sub_100058BA4(v11, v12);
    sub_1002F9804(a3, a2 & 0xFFFFFFFFFFFFLL, v16, v14, v15);
  }

  else
  {
    swift_endAccess();
    v13 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v13, v17, "Did not find a service to notify multicast receiver error", v18, 2u);
    }
  }
}

void sub_10033A9F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  swift_beginAccess();
  v24 = a1;
  v10 = *(v9 + 80);
  v11 = *(v9 + 88);
  v20 = v10;
  v21 = _s8InstanceCMa_0(255, v10, v11, v12);
  v22 = v11;
  WitnessTable = swift_getWitnessTable("]\r\n", v21);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v20);
  Dictionary.subscript.getter();
  v13 = v25;
  if (v25)
  {
    v14 = v26;
    v15 = v25;
    swift_endAccess();
    sub_100058BA4(v13, v14);
    sub_1002F9888(v17, a3, a4, a2 & 0xFFFFFFFFFFFFLL, v16);
  }

  else
  {
    swift_endAccess();
    v15 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, v18, "Did not find a service to notify receiving data blob", v19, 2u);
    }
  }
}

uint64_t sub_10033ABB0()
{
  v1 = *v0;
  v11 = sub_10033C204();
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  type metadata accessor for NANDeviceLink(255, v9, v10, v2);
  v3 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v3);
  v6 = sub_10002B84C(sub_10036D618, &v8, v3, &type metadata for WiFiAddress, &type metadata for Never, WitnessTable, &protocol witness table for Never, v5);

  return v6;
}

uint64_t sub_10033ACA4(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_100596C90;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v9 = _s17InitiatorInstanceCMa(0, v6, v7, v8);

  WitnessTable = swift_getWitnessTable(byte_1004B0F38, v9);
  LOBYTE(v9) = sub_100349A14(v5, a1 & 0xFFFFFFFFFFFFLL, v6, v9, v7, WitnessTable);

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v12 = qword_100596C98;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v15 = _s17ResponderInstanceCMa(0, v6, v7, v14);

    v16 = swift_getWitnessTable(aQ_10, v15);
    v11 = sub_100349A14(v13, a1 & 0xFFFFFFFFFFFFLL, v6, v15, v7, v16);
  }

  return v11 & 1;
}

void *sub_10033AE2C(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    return sub_10033AE70(&v3, v2);
  }

  return result;
}

uint64_t sub_10033AE70(id *a1, uint64_t a2)
{
  v3 = *a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_10033AF04(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v21 = v2 & 0xFFFFFFFFFFFFFF8;
    v22 = v2 & 0xC000000000000001;
    v5 = &qword_1004818C0;
    v20 = v2;
    while (1)
    {
      if (v22)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v21 + 16))
        {
          goto LABEL_14;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      memset(v26, 0, sizeof(v26));
      v10 = *&v7[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
      sub_100012400(v26, v24, &qword_10058BA80, v5);
      v11 = v25;
      if (v25)
      {
        sub_100029B34(v24, v25);
        v23 = &v20;
        v12 = i;
        v13 = *(v11 - 8);
        v14 = __chkstk_darwin();
        v16 = v10;
        v17 = v5;
        v18 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 16))(v18, v14);
        v6 = _bridgeAnythingToObjectiveC<A>(_:)();
        v19 = v18;
        v5 = v17;
        v10 = v16;
        (*(v13 + 8))(v19, v11);
        i = v12;
        v2 = v20;
        sub_100002A00(v24);
      }

      else
      {
        v6 = 0;
      }

      [v10 setExportedObject:{v6, v20}];
      swift_unknownObjectRelease();
      sub_100016290(v26, &qword_10058BA80, v5);

      ++v4;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_10033B1B0()
{
  v1 = v0;
  v2 = *v0;
  v55 = type metadata accessor for DispatchTime();
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v53 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  v56 = sub_100019F94();

  v4 = swift_unownedRetainStrong();
  v8 = sub_10040CAE8(v4, v5, v6, v7);

  v9 = qword_100596C88;
  swift_beginAccess();
  v10 = *(v8 + v9);

  v60[0] = v10;
  v11 = *(v2 + 80);
  v57 = v11;
  v12 = *(v2 + 88);
  v58 = v12;
  v14 = _s8InstanceCMa_0(255, v11, v12, v13);
  WitnessTable = swift_getWitnessTable("]\r\n", v14);
  v61 = v11;
  v62 = v14;
  v63 = v12;
  v64 = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(255, &v61);
  v16 = type metadata accessor for Dictionary();
  swift_getWitnessTable(&protocol conformance descriptor for [A : B], v16);
  LOBYTE(v14) = Sequence.contains(where:)();

  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v18 = swift_unownedRetainStrong();
    v22 = sub_10040CAE8(v18, v19, v20, v21);

    v23 = qword_100596C80;
    swift_beginAccess();
    v24 = *(v22 + v23);

    v59[0] = v24;
    __chkstk_darwin();
    v52[-2] = v11;
    v52[-1] = v12;
    v26 = _s8InstanceCMa(255, v11, v12, v25);
    v27 = swift_getWitnessTable(byte_1004B2574, v26);
    v61 = v11;
    v62 = v26;
    v63 = v12;
    v64 = v27;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(255, &v61);
    v28 = type metadata accessor for Dictionary();
    swift_getWitnessTable(&protocol conformance descriptor for [A : B], v28);
    v17 = Sequence.contains(where:)();
  }

  swift_beginAccess();
  v30 = _s17InitiatorInstanceCMa(255, v11, v12, v29);

  v31 = swift_getWitnessTable(byte_1004B0F14, v30);
  v61 = v11;
  v62 = v30;
  v63 = v12;
  v64 = v31;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v61);
  sub_10020CB70();
  v32 = Dictionary.isEmpty.getter();

  if (v32)
  {
    swift_beginAccess();
    v34 = _s17ResponderInstanceCMa(255, v11, v12, v33);

    v35 = swift_getWitnessTable(aM_9, v34);
    v61 = v11;
    v62 = v34;
    v63 = v12;
    v64 = v35;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v61);
    v36 = Dictionary.isEmpty.getter();

    if (!(v17 & 1 | ((v36 & 1) == 0)))
    {
      swift_beginAccess();
      type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink(0, v11, v12, v37);
      sub_1002CAFC4();
      v52[0] = 0;
      NANBitmap.Channel.operatingClass.getter();
      v52[1] = v52;
      v61 = v38;
      __chkstk_darwin();
      v52[-2] = v11;
      v52[-1] = v12;
      v39 = type metadata accessor for Dictionary.Values();

      swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v39);
      Sequence.forEach(_:)();

      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.removeAll(keepingCapacity:)(0);
      swift_endAccess();
    }
  }

  swift_unownedRetainStrong();
  v40 = sub_10033BA90() > 0;
  sub_10040E940(v40);

  sub_100344084();
  sub_1003448A8();
  sub_1003452CC();
  sub_10033D51C();
  sub_100339E54();
  sub_10034BFA8();
  sub_10034D228();
  sub_1003544B0();
  sub_1003547A0();
  swift_unownedRetainStrong();
  v41 = sub_100019F94();

  if (v56)
  {
    v42 = 0x64656C62616E65;
  }

  else
  {
    v42 = 0x64656C6261736964;
  }

  if (v56)
  {
    v43 = 0xE700000000000000;
  }

  else
  {
    v43 = 0xE800000000000000;
  }

  if (v41)
  {
    v44 = 0x64656C62616E65;
  }

  else
  {
    v44 = 0x64656C6261736964;
  }

  if (v41)
  {
    v45 = 0xE700000000000000;
  }

  else
  {
    v45 = 0xE800000000000000;
  }

  if (v42 == v44 && v43 == v45)
  {
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
      v48 = *NANDiscoveryWindowIndex.first.unsafeMutableAddressor();
      v49 = *(v1 + qword_100596CA8);
      *(v1 + qword_100596CA8) = v48;
      sub_10033C370(v49);
      type metadata accessor for P2PTimer(0);
      v50 = v53;
      variable initialization expression of AWDLPeer.lastUpdated();
      v51 = qword_100596CD0;
      swift_beginAccess();
      (*(v54 + 40))(v1 + v51, v50, v55);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t (*sub_10033B994(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10033B9F8;
}

uint64_t sub_10033B9F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_10033B1B0();
  }

  return result;
}

uint64_t sub_10033BA38(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return sub_10033B1B0();
}

uint64_t sub_10033BA90()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = _s8InstanceCMa(255, v2, v3, v4);

  v23 = v2;
  v24 = v5;
  v25 = v3;
  WitnessTable = swift_getWitnessTable(byte_1004B2574, v5);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v23);
  v6 = Dictionary.count.getter();

  swift_beginAccess();
  v8 = _s8InstanceCMa_0(255, v2, v3, v7);

  v9 = swift_getWitnessTable("]\r\n", v8);
  v23 = v2;
  v24 = v8;
  v25 = v3;
  WitnessTable = v9;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v23);
  v10 = Dictionary.count.getter();

  v12 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_beginAccess();
  v14 = _s17InitiatorInstanceCMa(255, v2, v3, v13);

  v15 = swift_getWitnessTable(byte_1004B0F14, v14);
  v23 = v2;
  v24 = v14;
  v25 = v3;
  WitnessTable = v15;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v23);
  sub_10020CB70();
  v16 = Dictionary.count.getter();

  v17 = __OFADD__(v12, v16);
  v18 = v12 + v16;
  if (v17)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  swift_beginAccess();
  v20 = _s17ResponderInstanceCMa(255, v2, v3, v19);

  v21 = swift_getWitnessTable(aM_9, v20);
  v23 = v2;
  v24 = v20;
  v25 = v3;
  WitnessTable = v21;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v23);
  v22 = Dictionary.count.getter();

  result = v18 + v22;
  if (__OFADD__(v18, v22))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_10033BD70(void *a1)
{
  v1 = *a1 + qword_10059BAE8;
  swift_beginAccess();
  v2 = type metadata accessor for NANSubscribe.Configuration(0);
  if (*(v1 + *(v2 + 88)) <= 1u && *(v1 + *(v2 + 88)))
  {
    v3 = 1;
LABEL_9:

    return v3 & 1;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v4 & 1) == 0)
  {
    if (*(v1 + *(v2 + 88)) == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_9;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_10033BF54(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v19 = v4;
  v20 = _s8InstanceCMa(255, v4, v5, v6);
  v21 = v5;
  WitnessTable = swift_getWitnessTable(byte_1004B2574, v20);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v19);
  NANBitmap.Channel.operatingClass.getter();
  v19 = v7;
  v17 = v4;
  v18 = v5;
  v8 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v8);
  LOBYTE(v3) = Sequence.contains(where:)();

  if (v3)
  {
    v9 = 1;
  }

  else
  {
    swift_beginAccess();
    v11 = _s8InstanceCMa_0(255, v4, v5, v10);
    v12 = swift_getWitnessTable("]\r\n", v11);
    v19 = v4;
    v20 = v11;
    v21 = v5;
    WitnessTable = v12;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v19);
    NANBitmap.Channel.operatingClass.getter();
    v16[1] = v16;
    v19 = v13;
    __chkstk_darwin();
    v14 = type metadata accessor for Dictionary.Values();

    swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v14);
    v9 = Sequence.contains(where:)();
  }

  return v9 & 1;
}

uint64_t sub_10033C204()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink(0, v2, v3, v4);
  sub_1002CAFC4();
  NANBitmap.Channel.operatingClass.getter();
  v13[6] = v5;
  v13[2] = v2;
  v13[3] = v3;
  v6 = type metadata accessor for Dictionary.Values();
  v8 = type metadata accessor for NANDeviceLink(0, v2, v3, v7);

  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v6);
  v11 = sub_10002B84C(sub_10036D5EC, v13, v6, v8, &type metadata for Never, WitnessTable, &protocol witness table for Never, v10);

  return v11;
}

void sub_10033C370(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = *v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v37 = *(v4 - 8);
  __chkstk_darwin();
  v38 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v7 = (&v36 - v6);
  __chkstk_darwin();
  v40 = (&v36 - v8);
  v9 = v3[11];
  v10 = v3[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = &v36 - v13;
  v15 = *(v2 + v3[38]);
  swift_unownedRetainStrong();
  v16 = sub_100019F94();

  if (v16)
  {
    swift_unownedRetainStrong();
    v17 = *(*v15 + 96);
    swift_beginAccess();
    (*(v12 + 16))(v14, v15 + v17, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = (*(AssociatedConformanceWitness + 512))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v12 + 8))(v14, AssociatedTypeWitness);
    if ((v19 & 1) == 0)
    {
      v20 = qword_100596CA8;
      if (*(v2 + qword_100596CA8) != v39 || !*(v2 + qword_100596CB0))
      {
        sub_10034ABD0();
        sub_1003544B0();
        v21 = *(v2 + v20);
        if (v21 == 15)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_17;
          }
        }

        v23 = *NANTimeUnit.discoveryWindowInterval.unsafeMutableAddressor();
        if (v23 >> 54)
        {
          __break(1u);
        }

        else
        {
          v39 = v22;
          v24 = v23 << 10;
          if ((v24 & 0x8000000000000000) == 0)
          {
            *v7 = v24;
            v25 = v37;
            v26 = v37[13];
            v26(v7, enum case for DispatchTimeInterval.microseconds(_:), v4);
            v27 = v26;
            v36 = v26;
            v28 = v38;
            *v38 = 12;
            v29 = enum case for DispatchTimeInterval.milliseconds(_:);
            v27(v28, enum case for DispatchTimeInterval.milliseconds(_:), v4);
            static DispatchTimeInterval.+ infix(_:_:)(v28, v40);
            v30 = v25[1];
            v30(v28, v4);
            v30(v7, v4);
            v37 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
            *v7 = 2;
            v31 = v36;
            v36(v7, v29, v4);
            v32 = swift_allocObject();
            swift_weakInit();
            v33 = swift_allocObject();
            v33[2] = v10;
            v33[3] = v9;
            v34 = v39;
            v33[4] = v32;
            v33[5] = v34;
            v31(v28, enum case for DispatchTimeInterval.never(_:), v4);
            type metadata accessor for P2PTimer(0);
            swift_allocObject();
            v35 = v37;
            *(v2 + qword_100596CB0) = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v40, v35, v28, v7, sub_10036AAFC, v33);

            return;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
      }
    }
  }

  else
  {
    *(v2 + qword_100596CB0) = 0;
  }
}

double sub_10033C88C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10033C8EC(a2);
  }

  return result;
}

void sub_10033C8EC(uint64_t a1)
{
  if (*(v1 + qword_100596CA8) != a1)
  {
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v4, v5, "Missed DW start event for DW index: %ld", v6, 0xCu);
    }

    v1 = v3;
  }

  v7 = *(v1 + qword_100596CA8);
  *(v1 + qword_100596CA8) = a1;

  sub_10033C370(v7);
}

uint64_t sub_10033C9D8(uint64_t a1)
{
  v12 = a1;
  v2 = *v1;
  sub_10005DC58(&qword_100597428, &unk_1004B16C0);
  __chkstk_darwin();
  v4 = &v12 - v3;
  v5 = *(v2 + 256);
  swift_beginAccess();
  sub_100012400(v1 + v5, v4, &qword_100597428, &unk_1004B16C0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_10005DC58(&qword_100596D90, &qword_1004B11E8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_10036CA8C();
  v10 = sub_10000CADC(&unk_100597440, &qword_100596D90, &qword_1004B11E8, byte_1004B05A8);
  RadioResourceControls.update<A>(from:to:)(v12, v4, AssociatedTypeWitness, v7, AssociatedConformanceWitness, &off_100576220, v9, v10);
  return sub_100016290(v4, &qword_100597428, &unk_1004B16C0);
}

uint64_t sub_10033CC18(uint64_t a1)
{
  sub_10005DC58(&qword_100597428, &unk_1004B16C0);
  __chkstk_darwin();
  v4 = &v7[-v3];
  v5 = *(*v1 + 256);
  swift_beginAccess();
  sub_100012400(v1 + v5, v4, &qword_100597428, &unk_1004B16C0);
  swift_beginAccess();
  sub_10036D434(a1, v1 + v5, &qword_100597428, &unk_1004B16C0);
  swift_endAccess();
  sub_10033C9D8(v4);
  sub_100016290(a1, &qword_100597428, &unk_1004B16C0);
  return sub_100016290(v4, &qword_100597428, &unk_1004B16C0);
}

uint64_t sub_10033CD38(uint64_t a1)
{
  v3 = *v1;
  sub_10005DC58(&unk_100597390, &unk_1004B1680);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = *(v3 + 264);
  swift_beginAccess();
  sub_100012400(v1 + v6, v5, &unk_100597390, &unk_1004B1680);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PriorityRadioConstraint(0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_10036D49C(&qword_1005973A0, type metadata accessor for PriorityRadioConstraint, byte_1004B0618);
  v11 = sub_10036D49C(&qword_1005973A8, type metadata accessor for PriorityRadioConstraint, byte_1004B0658);
  RadioResourceControls.update<A>(from:to:)(a1, v5, AssociatedTypeWitness, v8, AssociatedConformanceWitness, &off_100576230, v10, v11);
  return sub_100016290(v5, &unk_100597390, &unk_1004B1680);
}

uint64_t sub_10033CF90(uint64_t a1)
{
  sub_10005DC58(&unk_100597390, &unk_1004B1680);
  __chkstk_darwin();
  v4 = &v7[-v3];
  v5 = *(*v1 + 264);
  swift_beginAccess();
  sub_100012400(v1 + v5, v4, &unk_100597390, &unk_1004B1680);
  swift_beginAccess();
  sub_10036D434(a1, v1 + v5, &unk_100597390, &unk_1004B1680);
  swift_endAccess();
  sub_10033CD38(v4);
  sub_100016290(a1, &unk_100597390, &unk_1004B1680);
  return sub_100016290(v4, &unk_100597390, &unk_1004B1680);
}

double sub_10033D0B0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_10005DC58(&qword_1005973B8, &qword_1004B1698);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v17 = *(v4 + 248);
  sub_100012400(a1, &v17 - v7, &qword_1005973B0, &qword_1004B1690);
  v9 = sub_10005DC58(&qword_1005973B0, &qword_1004B1690);
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = v2 + *(*v2 + 272);
  swift_beginAccess();
  sub_100012400(v11, v6, &qword_1005973B0, &qword_1004B1690);
  v10(v6, 0, 1, v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_10036C644();
  v15 = sub_10000CADC(&qword_1005973D8, &qword_1005973B0, &qword_1004B1690, byte_1004B05A8);
  RadioResourceControls.update<A>(from:to:)(v8, v6, AssociatedTypeWitness, v9, AssociatedConformanceWitness, &off_100576220, v14, v15);
  sub_100016290(v6, &qword_1005973B8, &qword_1004B1698);
  sub_100016290(v8, &qword_1005973B8, &qword_1004B1698);
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  sub_1003F0580(*(v11 + *(v9 + 36)));

  return result;
}

uint64_t sub_10033D3FC(uint64_t a1)
{
  sub_10005DC58(&qword_1005973B0, &qword_1004B1690);
  __chkstk_darwin();
  v4 = &v7[-v3];
  v5 = *(*v1 + 272);
  swift_beginAccess();
  sub_100012400(v1 + v5, v4, &qword_1005973B0, &qword_1004B1690);
  swift_beginAccess();
  sub_10036D434(a1, v1 + v5, &qword_1005973B0, &qword_1004B1690);
  swift_endAccess();
  sub_10033D0B0(v4);
  sub_100016290(a1, &qword_1005973B0, &qword_1004B1690);
  return sub_100016290(v4, &qword_1005973B0, &qword_1004B1690);
}

uint64_t sub_10033D51C()
{
  v1 = v0;
  v2 = *v0;
  sub_10005DC58(&unk_100597390, &unk_1004B1680);
  __chkstk_darwin();
  v4 = v49 - v3;
  v5 = NANAttribute.DataCluster.empty.unsafeMutableAddressor();
  v54 = *v5;
  v53 = *v5;
  swift_beginAccess();
  sub_1002785A4(&v54, &v50);
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v9 = _s8InstanceCMa_0(255, v6, v7, v8);

  WitnessTable = swift_getWitnessTable("]\r\n", v9);
  *&v50 = v6;
  *(&v50 + 1) = v9;
  v51 = v7;
  v52 = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v50);
  LOBYTE(v7) = Dictionary.isEmpty.getter();

  if ((v7 & 1) != 0 && sub_100349C0C() < 1)
  {
    v36 = type metadata accessor for PriorityRadioConstraint(0);
    (*(*(v36 - 8) + 56))(v4, 1, 1, v36);
  }

  else
  {
    swift_unownedRetainStrong();
    v11 = sub_10002AF00();

    if ((v11 & 0xFF00000000) == 0x300000000 || (static Channel.isValid(channel:on:with:)() & 1) == 0)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Setting default NAN NDC to 2.4GHz", v22, 2u);
      }

      sub_10005DC58(&qword_100598790, &qword_1004ABAE0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100480F40;
      v24 = *NANMapID.primary.unsafeMutableAddressor();
      v25 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v26 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(2, *v25, *v25, *v25);
      v29 = TimeBitmap.nanBitmap.getter(v26, v27, v28);
      *(v23 + 32) = v24;
      *(v23 + 40) = v29;
      *(v23 + 48) = v30;
      *(v23 + 56) = v31;
      sub_10027A12C(&v54);
      *(&v53 + 1) = v23;
      v32 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
      v50 = *v32;
      v51 = v32[2];
      UUID.init()();
      v33 = type metadata accessor for PriorityRadioConstraint(0);
      v34 = v33;
      v4[v33[5]] = 5;
      v35 = &v4[v33[6]];
      *v35 = 0;
      v35[8] = 2;
    }

    else
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Setting default NAN NDC to 5GHz", v14, 2u);
      }

      sub_10005DC58(&qword_100598790, &qword_1004ABAE0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100480F40;
      swift_unownedRetainStrong();
      v16 = WiFiInterface.capabilities.getter();

      v17 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
      v49[1] = v16;
      *&v50 = v17;
      sub_1000C2A14();

      v18 = dispatch thunk of SetAlgebra.isSuperset(of:)();

      if (v18)
      {
        v19 = NANMapID.secondary.unsafeMutableAddressor();
      }

      else
      {
        v19 = NANMapID.primary.unsafeMutableAddressor();
      }

      v37 = *v19;
      v38 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v39 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v38, 2, *v38, *v38);
      v42 = TimeBitmap.nanBitmap.getter(v39, v40, v41);
      *(v15 + 32) = v37;
      *(v15 + 40) = v42;
      *(v15 + 48) = v43;
      *(v15 + 56) = v44;
      sub_10027A12C(&v54);
      *(&v53 + 1) = v15;
      v45 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
      v50 = *v45;
      v51 = v45[2];
      UUID.init()();
      v33 = type metadata accessor for PriorityRadioConstraint(0);
      v34 = v33;
      v4[v33[5]] = 5;
      v46 = &v4[v33[6]];
      *v46 = 1;
      v46[8] = 2;
    }

    v47 = &v4[v33[7]];
    *v47 = v50;
    *(v47 + 2) = v51;
    (*(*(v33 - 1) + 56))(v4, 0, 1, v34);
  }

  sub_10033CF90(v4);
  sub_10035132C(v1, &v53);
  v50 = v53;
  return sub_10027A12C(&v50);
}

char *sub_10033DA6C()
{
  v1 = v0;
  v2 = *v0;
  *&v0[qword_100596CB8] = 0;

  sub_10033C204();
  type metadata accessor for NANDeviceLink(255, *(v2 + 80), *(v2 + 88), v3);
  v4 = type metadata accessor for Array();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v4);
  Sequence.forEach(_:)();

  v5 = qword_10059B9C0;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(&v1[v5], v6);

  v7 = qword_100596CC8;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(*(v8 - 8) + 8);
  v9(&v1[v7], v8);
  v9(&v1[qword_100596CD0], v8);
  v9(&v1[qword_100596CD8], v8);

  v10 = *(*v1 + 248);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v1[v10], AssociatedTypeWitness);
  sub_100016290(&v1[*(*v1 + 256)], &qword_100597428, &unk_1004B16C0);
  sub_100016290(&v1[*(*v1 + 264)], &unk_100597390, &unk_1004B1680);
  sub_100016290(&v1[*(*v1 + 272)], &qword_1005973B0, &qword_1004B1690);

  swift_unownedRelease();
  return v1;
}

uint64_t sub_10033DEC0()
{
  sub_10033DA6C();

  return swift_deallocClassInstance();
}

void sub_10033DF30(uint64_t a1)
{
  if (!qword_100596D88)
  {
    sub_10005DD04(&qword_100596D90, &qword_1004B11E8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100596D88);
    }
  }
}

void sub_10033DF94(uint64_t a1)
{
  if (!qword_100596DA0)
  {
    v2 = sub_10005DD04(&qword_100596DA8, &qword_1004B11F0);
    v3 = sub_10033E004();
    v5 = type metadata accessor for RadioConstraint(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100596DA0);
    }
  }
}

unint64_t sub_10033E004()
{
  result = qword_100596DB0;
  if (!qword_100596DB0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10005DD04(&qword_100596DA8, &qword_1004B11F0);
    v4[0] = &protocol witness table for NANQualityOfService;
    result = swift_getWitnessTable(protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100596DB0);
  }

  return result;
}

uint64_t sub_10033E080(uint64_t a1)
{
  result = type metadata accessor for DispatchTime();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10033E130(uint64_t a1)
{
  v764 = a1;
  v760 = *v1;
  v2 = v760;
  v3 = type metadata accessor for DispatchTime();
  v755 = *(v3 - 8);
  v756 = v3;
  __chkstk_darwin();
  v754 = &v703 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v761 = *(v2 + 88);
  v763 = v1;
  v5 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v744 = *(AssociatedTypeWitness - 8);
  v745 = AssociatedTypeWitness;
  __chkstk_darwin();
  v743 = &v703 - v7;
  v762 = v5;
  v8 = swift_getAssociatedTypeWitness();
  v758 = *(v8 - 8);
  v759 = v8;
  __chkstk_darwin();
  v753 = &v703 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v757 = &v703 - v10;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v725 = &v703 - v11;
  type metadata accessor for NANIdentityKey(0);
  __chkstk_darwin();
  v737 = &v703 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v734 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v730 = *(v734 - 8);
  __chkstk_darwin();
  v735 = &v703 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v736 = &v703 - v14;
  __chkstk_darwin();
  v732 = &v703 - v15;
  v16 = swift_checkMetadataState();
  v747 = *(v16 - 8);
  v748 = v16;
  __chkstk_darwin();
  v746 = &v703 - v17;
  sub_10005DC58(&unk_1005985B0, &unk_1004939A0);
  __chkstk_darwin();
  v731 = &v703 - v18;
  v728 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
  __chkstk_darwin();
  v727 = &v703 - v19;
  v738 = type metadata accessor for UUID();
  v733 = *(v738 - 8);
  __chkstk_darwin();
  v726 = &v703 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v729 = &v703 - v21;
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v742 = &v703 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v739 = (&v703 - v23);
  __chkstk_darwin();
  v741 = &v703 - v24;
  __chkstk_darwin();
  v740 = &v703 - v25;
  v752 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v724 = &v703 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v751 = &v703 - v27;
  __chkstk_darwin();
  v750 = &v703 - v28;
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v30 = &v703 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v703 - v31;
  __chkstk_darwin();
  v34 = &v703 - v33;
  __chkstk_darwin();
  v36 = &v703 - v35;
  v37 = type metadata accessor for DispatchPredicate();
  v38 = *(v37 - 8);
  __chkstk_darwin();
  v40 = (&v703 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v42 = *v41;
  *v40 = *v41;
  (*(v38 + 104))(v40, enum case for DispatchPredicate.onQueue(_:), v37);
  v43 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  (*(v38 + 8))(v40, v37);
  if (v42)
  {
    v44 = v764;
    sub_10036D334(v764, v36, type metadata accessor for DriverEvent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v46 = v36;
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (!EnumCaseMultiPayload)
        {
          sub_10036D334(v36, v34, type metadata accessor for DriverEvent);
          memcpy(v777, v34, 0x16AuLL);
          memcpy(v778, v34, 0x16AuLL);
          switch(sub_100185198(v778))
          {
            case 2u:
              NANBitmap.Channel.operatingClass.getter();
              v47 = v44;
              v49 = *v48;
              v759 = *(v48 + 1);
              v50 = *(v48 + 1);
              LODWORD(v760) = v48[1];
              v51 = v763;
              swift_beginAccess();
              LOBYTE(v783) = v49;
              v53 = v761;
              v52 = v762;
              v55 = _s8InstanceCMa(255, v762, v761, v54);
              WitnessTable = swift_getWitnessTable(byte_1004B2574, v55);
              *&v776[0] = v52;
              *(&v776[0] + 1) = v55;
              *&v776[1] = v53;
              *(&v776[1] + 1) = WitnessTable;
              type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v776);
              Dictionary.subscript.getter();
              v57 = v776[0];
              swift_endAccess();
              sub_100343820(v57, *(&v57 + 1), v51, v47, v55, WitnessTable);
              sub_100058BA4(v57, *(&v57 + 1));
              swift_unownedRetainStrong();
              v58 = v50 | (v759 << 16);
              v59 = v750;
              sub_10040CD68(v58, v750);
              v60 = sub_10040D118(v776, v760);
              v62 = v61;
              v63 = type metadata accessor for NANPeer.Service(0);
              if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
              {
                v64 = *(v62 + 120);
                v65 = *(v62 + 128);
                v66 = *(v62 + 136);
                *(v62 + 128) = 0;
                *(v62 + 136) = 0;
                *(v62 + 120) = 0;
                v67 = *(v62 + 144);
                *(v62 + 144) = -1;
                sub_1002E9A28(v64, v65, v66, v67);
              }

              (v60)(v776, 0);
              sub_10040E430(v59, v58);
              sub_1001854F8(v777);
              goto LABEL_14;
            case 3u:
              v760 = v36;
              NANBitmap.Channel.operatingClass.getter();
              v156 = v44;
              v158 = *v157;
              v159 = *(v157 + 1);
              v160 = *(v157 + 1);
              LODWORD(v759) = v157[1];
              v161 = v763;
              swift_beginAccess();
              LOBYTE(v783) = v158;
              v162 = v761;
              v163 = v762;
              v165 = _s8InstanceCMa_0(255, v762, v761, v164);
              v166 = swift_getWitnessTable("]\r\n", v165);
              *&v776[0] = v163;
              *(&v776[0] + 1) = v165;
              *&v776[1] = v162;
              *(&v776[1] + 1) = v166;
              type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v776);
              Dictionary.subscript.getter();
              v167 = v776[0];
              swift_endAccess();
              sub_100343820(v167, *(&v167 + 1), v161, v156, v165, v166);
              sub_100058BA4(v167, *(&v167 + 1));
              swift_unownedRetainStrong();
              v168 = v751;
              sub_10040CD68(v160 | (v159 << 16), v751);
              v169 = sub_10040D118(v776, v759);
              v171 = v170;
              v172 = type metadata accessor for NANPeer.Service(0);
              if (!(*(*(v172 - 8) + 48))(v171, 1, v172))
              {
                v173 = *(v171 + 120);
                v174 = *(v171 + 128);
                v175 = *(v171 + 136);
                *(v171 + 128) = 0;
                *(v171 + 136) = 0;
                *(v171 + 120) = 0;
                v176 = *(v171 + 144);
                *(v171 + 144) = -1;
                sub_1002E9A28(v173, v174, v175, v176);
              }

              (v169)(v776, 0);
              sub_10040E430(v168, v160 | (v159 << 16));
              sub_1001854F8(v777);
              goto LABEL_81;
            case 4u:
            case 8u:
              NANBitmap.Channel.operatingClass.getter();
              v152 = *v221 | (*(v221 + 2) << 16) | (*(v221 + 3) << 24);
              goto LABEL_36;
            case 5u:
              v760 = v36;
              NANBitmap.Channel.operatingClass.getter();
              v195 = *v194;
              v748 = v194[1];
              v754 = v194[2];
              v753 = v194[3];
              v755 = v194[4];
              v756 = v194[5];
              v757 = v194[6];
              v758 = v194[7];
              v196 = v194[8];
              v197 = v194[9];
              v198 = v194[10];
              v199 = v194[11];
              v200 = v194[12];
              v201 = v194[13];
              v747 = *(v194 + 2);
              swift_beginAccess();
              v759 = v195;
              LOBYTE(v780) = v195;
              v751 = v197;
              v752 = v196;
              BYTE1(v780) = v196;
              BYTE2(v780) = v197;
              AssociatedConformanceWitness = v199;
              v750 = v198;
              BYTE3(v780) = v198;
              BYTE4(v780) = v199;
              BYTE5(v780) = v200;
              BYTE6(v780) = v201;
              v202 = v761;
              v203 = v762;
              v205 = _s17ResponderInstanceCMa(255, v762, v761, v204);
              v206 = swift_getWitnessTable(aM_9, v205);
              *&v776[0] = v203;
              *(&v776[0] + 1) = v205;
              *&v776[1] = v202;
              *(&v776[1] + 1) = v206;
              type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v776);
              sub_10020CB70();
              Dictionary.subscript.getter();
              v207 = v783;
              if (v783)
              {
                v208 = *(&v783 + 1);
                swift_endAccess();
                sub_1001854F8(v777);
                v209 = v207;

                sub_100343820(v207, v208, v763, v764, v205, v206);
                sub_100058BA4(v207, v208);
LABEL_90:

                sub_100344084();
                sub_1003448A8();
                sub_10033D51C();
                goto LABEL_119;
              }

              v745 = v201;
              v746 = v200;
              swift_endAccess();
              v345 = v763;
              swift_beginAccess();
              v346 = v748;
              LOBYTE(v780) = v748;
              v348 = _s8InstanceCMa_0(255, v203, v202, v347);
              v349 = swift_getWitnessTable("]\r\n", v348);
              *&v776[0] = v203;
              *(&v776[0] + 1) = v348;
              *&v776[1] = v202;
              *(&v776[1] + 1) = v349;
              type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v776);
              Dictionary.subscript.getter();
              v350 = v783;
              if (v783)
              {
                v351 = *(&v783 + 1);
                swift_endAccess();
                v209 = v350;

                sub_100343820(v350, v351, v345, v764, v348, v349);
                sub_100058BA4(v350, v351);
                sub_1003454C0(v759 | (v346 << 8) | (v754 << 16) | (v753 << 24) | (v755 << 32) | (v756 << 40) | (v757 << 48) | (v758 << 56), v752 | (v751 << 8) | (v750 << 16) | (AssociatedConformanceWitness << 24) | (v746 << 32) | (v745 << 40));
                sub_1001854F8(v777);
                goto LABEL_90;
              }

              swift_endAccess();
              *&v776[0] = 0;
              *(&v776[0] + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(18);

              *&v776[0] = 0xD000000000000010;
              *(&v776[0] + 1) = 0x80000001004BFF80;
              LOBYTE(v785) = v346;
              v399._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v399);

              sub_10033975C(v759, v752 | (v751 << 8) | (v750 << 16) | (AssociatedConformanceWitness << 24) | (v746 << 32) | (v745 << 40), v754 | (v753 << 8) | (v755 << 16) | (v756 << 24) | (v757 << 32) | (v758 << 40), *&v776[0], *(&v776[0] + 1));

              goto LABEL_118;
            case 6u:
              NANBitmap.Channel.operatingClass.getter();
              v151 = v150;
              sub_1001854F8(v777);
              v152 = *v151 | (v151[2] << 8) | (v151[3] << 16) | (*(v151 + 1) << 24);
LABEL_36:
              sub_100343A1C(v152, v763, v44);
              goto LABEL_120;
            case 7u:
              NANBitmap.Channel.operatingClass.getter();
              v178 = *v177;
              v179 = v177[2];
              v180 = v44;
              v181 = v177[3];
              v182 = *(v177 + 1);
              sub_1001854F8(v777);
              sub_100343A1C(v178 | (v179 << 8) | (v181 << 16) | (v182 << 24), v763, v180);
              goto LABEL_120;
            case 9u:
              NANBitmap.Channel.operatingClass.getter();
              v223 = *v222;
              v224 = v222[1];
              v225 = v222[2];
              v226 = v222[3];
              v227 = v222[4];
              v228 = v222[5];
              v229 = v222[6] << 48;
              v230 = 0x100000000000000;
              if (!v222[7])
              {
                v230 = 0;
              }

              v231 = v763;
              sub_100345B68((v230 | v223) & 0xFFFF0000000000FFLL | (v222[1] << 8) | (v222[2] << 16) & 0xFFFF000000FFFFFFLL | (v222[3] << 24) | (v222[4] << 32) & 0xFFFF00FFFFFFFFFFLL | (v222[5] << 40) | v229);
              sub_100343A1C(v223 | (v224 << 8) | (v225 << 16) | (v226 << 24) | (v227 << 32) | (v228 << 40) | v229, v231, v764);
              goto LABEL_120;
            case 0xAu:
              v760 = v36;
              NANBitmap.Channel.operatingClass.getter();
              v288 = v287;
              v289 = *v287;
              v290 = v287[8];
              v291 = v287[9];
              v292 = v287[10];
              v293 = v287[11];
              v754 = v287[12];
              v294 = v287[13];
              swift_beginAccess();
              v758 = v290;
              v759 = v289;
              LOBYTE(v780) = v289;
              BYTE1(v780) = v290;
              v756 = v292;
              v757 = v291;
              BYTE2(v780) = v291;
              BYTE3(v780) = v292;
              v755 = v293;
              BYTE4(v780) = v293;
              v295 = v754;
              BYTE5(v780) = v754;
              BYTE6(v780) = v294;
              v296 = v761;
              v297 = v762;
              v299 = _s17InitiatorInstanceCMa(255, v762, v761, v298);
              v300 = swift_getWitnessTable(byte_1004B0F14, v299);
              *&v776[0] = v297;
              *(&v776[0] + 1) = v299;
              *&v776[1] = v296;
              *(&v776[1] + 1) = v300;
              type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v776);
              sub_10020CB70();
              Dictionary.subscript.getter();
              v301 = v783;
              swift_endAccess();
              if (v301)
              {
                v302 = v294;
                v303 = v295;
                v305 = v755;
                v304 = v756;
                v307 = v757;
                v306 = v758;
                v308 = v759;
                v310 = *(&v301 + 1);
                v309 = v301;
              }

              else
              {
                swift_beginAccess();
                LOBYTE(v780) = v759;
                BYTE1(v780) = v758;
                BYTE2(v780) = v757;
                BYTE3(v780) = v756;
                BYTE4(v780) = v755;
                BYTE5(v780) = v295;
                BYTE6(v780) = v294;
                v353 = _s17ResponderInstanceCMa(255, v297, v296, v352);
                v354 = swift_getWitnessTable(aM_9, v353);
                *&v776[0] = v297;
                *(&v776[0] + 1) = v353;
                *&v776[1] = v296;
                *(&v776[1] + 1) = v354;
                type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v776);
                Dictionary.subscript.getter();
                v355 = v783;
                swift_endAccess();
                if (!v355)
                {
                  v764 = *(v288 + 1);
                  v762 = *(v288 + 1);
                  *&v776[0] = 0;
                  *(&v776[0] + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(19);

                  *&v776[0] = 0xD000000000000011;
                  *(&v776[0] + 1) = 0x80000001004BFF60;
                  v401 = v758;
                  v400 = v759;
                  v402 = v756;
                  v403 = v757;
                  v404 = v295;
                  v405 = v755;
                  v406._countAndFlagsBits = NANPeerServiceIdentifier.description.getter(v759 | (v758 << 8) | (v757 << 16) | (v756 << 24) | (v755 << 32) | (v404 << 40) | (v294 << 48));
                  String.append(_:)(v406);

                  sub_10033975C(v400, (v402 << 16) | (v403 << 8) | (v405 << 24) | (v404 << 32) | (v294 << 40) | v401, v762 | (v764 << 16), *&v776[0], *(&v776[0] + 1));

                  goto LABEL_119;
                }

                v302 = v294;
                v303 = v295;
                v305 = v755;
                v304 = v756;
                v307 = v757;
                v306 = v758;
                v308 = v759;
                v310 = *(&v355 + 1);
                v309 = v355;
              }

              sub_100058BA4(v309, v310);
              sub_100343A1C(v308 | (v306 << 8) | (v307 << 16) | (v304 << 24) | (v305 << 32) | (v303 << 40) | (v302 << 48), v763, v764);
              goto LABEL_119;
            case 0xBu:
              NANBitmap.Channel.operatingClass.getter();
              v279 = *v278;
              v144 = v763;
              swift_beginAccess();
              LOBYTE(v783) = v279;
              v145 = v761;
              v146 = v762;
              v148 = _s8InstanceCMa(255, v762, v761, v280);
              v149 = swift_getWitnessTable(byte_1004B2574, v148);
              goto LABEL_57;
            case 0xCu:
              NANBitmap.Channel.operatingClass.getter();
              v143 = *v142;
              v144 = v763;
              swift_beginAccess();
              LOBYTE(v783) = v143;
              v145 = v761;
              v146 = v762;
              v148 = _s8InstanceCMa_0(255, v762, v761, v147);
              v149 = swift_getWitnessTable("]\r\n", v148);
LABEL_57:
              v281 = v44;
              v282 = v149;
              *&v776[0] = v146;
              *(&v776[0] + 1) = v148;
              *&v776[1] = v145;
              *(&v776[1] + 1) = v149;
              type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v776);
              Dictionary.subscript.getter();
              v283 = v776[0];
              swift_endAccess();
              sub_100343820(v283, *(&v283 + 1), v144, v281, v148, v282);
              sub_100058BA4(v283, *(&v283 + 1));
              sub_10036EEBC(v281, v284, v285, v286);
              goto LABEL_120;
            case 0xDu:
              NANBitmap.Channel.operatingClass.getter();
              v184 = *v183;
              v185 = v763;
              swift_beginAccess();
              LOBYTE(v780) = v184;
              v187 = v761;
              v186 = v762;
              v189 = _s8InstanceCMa(255, v762, v761, v188);
              v190 = swift_getWitnessTable(byte_1004B2574, v189);
              *&v776[0] = v186;
              *(&v776[0] + 1) = v189;
              *&v776[1] = v187;
              *(&v776[1] + 1) = v190;
              type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v776);
              Dictionary.subscript.getter();
              v191 = v783;
              if (v783)
              {
                v192 = *(&v783 + 1);
                swift_endAccess();
                sub_1001854F8(v777);
                v193 = v191;

                sub_100343820(v191, v192, v185, v764, v189, v190);
                sub_100058BA4(v191, v192);
              }

              else
              {
                swift_endAccess();
                sub_1001854F8(v777);
              }

              swift_beginAccess();
              LOBYTE(v780) = v184;
              v338 = v762;
              v340 = _s8InstanceCMa_0(255, v762, v187, v339);
              v341 = swift_getWitnessTable("]\r\n", v340);
              *&v776[0] = v338;
              *(&v776[0] + 1) = v340;
              *&v776[1] = v187;
              *(&v776[1] + 1) = v341;
              type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v776);
              Dictionary.subscript.getter();
              v342 = v783;
              if (v783)
              {
                v343 = *(&v783 + 1);
                swift_endAccess();
                v344 = v342;

                sub_100343820(v342, v343, v185, v764, v340, v341);
                sub_100058BA4(v342, v343);
              }

              else
              {
                swift_endAccess();
              }

              goto LABEL_120;
            case 0xEu:
              NANBitmap.Channel.operatingClass.getter();
              sub_10036EEBC(v44, v153, v154, v155);
              goto LABEL_120;
            case 0x10u:
              NANBitmap.Channel.operatingClass.getter();
              v128 = *(v126 + 2);
              v127 = *(v126 + 3);
              v130 = *(v126 + 4);
              v129 = *(v126 + 5);
              v131 = *(v126 + 48);
              if (v131 > 1)
              {
                if (v131 != 2)
                {
                  v375 = Logger.logObject.getter();
                  v376 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v375, v376))
                  {
                    v377 = swift_slowAlloc();
                    *v377 = 0;
                    _os_log_impl(&_mh_execute_header, v375, v376, "Unable to handle received out of band frame because the frame type (unparsed) is unsupported", v377, 2u);
                  }

                  v133 = Logger.logObject.getter();
                  v378 = static os_log_type_t.info.getter();
                  if (!os_log_type_enabled(v133, v378))
                  {
                    goto LABEL_103;
                  }

                  v379 = swift_slowAlloc();
                  *v379 = 16777472;
                  v379[4] = byte_1004B18AA[v128];
                  _os_log_impl(&_mh_execute_header, v133, v378, "Unparsed: %hhu", v379, 5u);
LABEL_102:

LABEL_103:

LABEL_113:
                  sub_1001854F8(v777);
                  goto LABEL_120;
                }

                v334 = *(v126 + 1);
                v335 = *(v126 + 5);
                v336 = *v126;
                memcpy(v776, v777, 0x16AuLL);
                NANBitmap.Channel.operatingClass.getter();
                sub_10018526C(v337, &v785);
                sub_100345DD4(v128, v127, v130, v335, (v336 | (v334 << 16)));
LABEL_112:
                sub_1001854F8(v777);
                goto LABEL_113;
              }

              v764 = *(v126 + 2);
              if (!v131)
              {
                memcpy(v776, v777, 0x16AuLL);
                NANBitmap.Channel.operatingClass.getter();
                sub_10018526C(v132, &v785);
                v133 = Logger.logObject.getter();
                v134 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v133, v134))
                {
                  v135 = swift_slowAlloc();
                  v136 = swift_slowAlloc();
                  v137 = v130;
                  v138 = v136;
                  *&v783 = v136;
                  *v135 = 136315138;
                  *&v785 = v764;
                  DWORD2(v785) = v127;
                  *&v786 = v137;
                  v139 = String.init<A>(describing:)();
                  v141 = sub_100002320(v139, v140, &v783);

                  *(v135 + 4) = v141;
                  _os_log_impl(&_mh_execute_header, v133, v134, "Unable to handle received out of band frame because the frame type %s is unsupported", v135, 0xCu);
                  sub_100002A00(v138);

                  goto LABEL_102;
                }

                goto LABEL_112;
              }

              v356 = *v126;
              v357 = *(v126 + 1);
              v759 = *(v126 + 2);
              v760 = v46;
              v358 = *(v126 + 3);
              v359 = *(v126 + 4);
              v360 = *(v126 + 5);
              v361 = v763 + qword_10059B9C8;
              swift_beginAccess();
              v753 = v361;
              v754 = v356;
              LOBYTE(v783) = v356;
              v755 = v359;
              v756 = v357;
              BYTE1(v783) = v357;
              BYTE2(v783) = v759;
              BYTE3(v783) = v358;
              BYTE4(v783) = v359;
              v757 = v360;
              v758 = v127;
              BYTE5(v783) = v360;
              sub_100143FBC(v764, v127, v130, v129);
              v362 = v762;
              v37 = v130;
              v363 = v761;
              v32 = v129;
              v365 = _s17InitiatorInstanceCMa_0(255, v762, v761, v364);
              v367 = _s17ResponderInstanceCMa_0(255, v362, v363, v366);
              v369 = type metadata accessor for Either(0, v365, v367, v368);
              v40 = sub_1002CAFC4();
              Dictionary.subscript.getter();
              v370 = BYTE8(v785);
              if (BYTE8(v785) != 255)
              {
                v371 = v785;
                swift_endAccess();
                v372 = Logger.logObject.getter();
                v373 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v372, v373))
                {
                  v374 = swift_slowAlloc();
                  *v374 = 0;
                  _os_log_impl(&_mh_execute_header, v372, v373, "pairing auth: Existing pairing instance found ", v374, 2u);
                }

                sub_100428B7C(v764, v758, v37, v32, v371, v370 & 1);
                sub_1001854F8(v777);
                sub_1001854F8(v777);
                sub_1002CB018(v371, v370);
                goto LABEL_119;
              }

              v745 = v367;
              v750 = v369;
              v751 = v358;
              swift_endAccess();
              if (((v37 & 0x1000000000000000) != 0) | (2 * v32))
              {
                goto LABEL_115;
              }

              goto LABEL_122;
            case 0x11u:
              v760 = v36;
              NANBitmap.Channel.operatingClass.getter();
              v233 = *v232;
              v234 = qword_100596CA8;
              if (*(v763 + qword_100596CA8) != *v232)
              {
                v764 = *(v232 + 16);
                v235 = *(v232 + 29);
                v236 = *(v232 + 28);
                v237 = *(v232 + 24);
                v238 = *(v763 + *(*v763 + 304));
                swift_unownedRetainStrong();
                v239 = sub_100019B10();
                v240 = v763;
                v241 = v239;

                if (static InfraAssociationStartEvent.__derived_struct_equals(_:_:)((v235 << 40) | (v236 << 32) | v237, v241 & 0xFFFFFFFFFFFFLL))
                {
                  v242 = *(v240 + qword_100596CA8);
                  *(v240 + qword_100596CA8) = v233;
                  sub_10033C370(v242);
                  v243 = v763;
                  swift_unownedRetainStrong();
                  v244 = *(v238 + *(*v238 + 696));

                  if (v244 != 5 && (*(v243 + v234) & 1) == 0)
                  {
                    swift_retain_n();
                    v245 = Logger.logObject.getter();
                    v246 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v245, v246))
                    {
                      v247 = swift_slowAlloc();
                      v762 = swift_slowAlloc();
                      *&v776[0] = v762;
                      *v247 = 136315906;
                      v248 = NANDiscoveryWindowIndex.description.getter(*(v763 + v234));
                      v250 = sub_100002320(v248, v249, v776);

                      *(v247 + 4) = v250;
                      *(v247 + 12) = 2080;
                      swift_unownedRetainStrong();
                      v251 = WiFiInterface.macAddress.getter();

                      v252 = WiFiAddress.description.getter(v251 & 0xFFFFFFFFFFFFLL);
                      v254 = v253;

                      v255 = sub_100002320(v252, v254, v776);

                      *(v247 + 14) = v255;
                      *(v247 + 22) = 2080;
                      switch(v244)
                      {
                        case 2:
                          v256 = 0xE900000000000063;
                          v257 = 0x6974616D6F747541;
                          break;
                        case 3:
                          v256 = 0xED00007265747361;
                          v257 = 0x4D20726F68636E41;
                          break;
                        case 4:
                          v256 = 0xE600000000000000;
                          v257 = 0x72657473614DLL;
                          break;
                        default:
                          if (v244)
                          {
                            v256 = 0xEF636E7953207265;
                            v257 = 0x7473614D206E6F4ELL;
                          }

                          else
                          {
                            v256 = 0x80000001004B9D70;
                            v257 = 0xD000000000000013;
                          }

                          break;
                      }

                      v442 = v764;
                      v443 = sub_100002320(v257, v256, v776);

                      *(v247 + 24) = v443;
                      *(v247 + 32) = 2080;
                      v444 = NANTimeSynchronizationFunction.description.getter(v442);
                      v446 = sub_100002320(v444, v445, v776);

                      *(v247 + 34) = v446;
                      _os_log_impl(&_mh_execute_header, v245, v246, "DWStart: DW%s Self MAC: %s, Role %s TSF: %s", v247, 0x2Au);
                      swift_arrayDestroy();
                    }

                    else
                    {
                    }
                  }
                }
              }

              goto LABEL_119;
            case 0x14u:
              NANBitmap.Channel.operatingClass.getter();
              v259 = *v258;
              v260 = *(v763 + *(*v763 + 304));
              swift_unownedRetainStrong();
              v261 = *(*v260 + 96);
              swift_beginAccess();
              v263 = v757;
              v262 = v758;
              v264 = v759;
              (*(v758 + 16))(v757, v260 + v261, v759);

              v265 = swift_getAssociatedConformanceWitness();
              LOBYTE(v261) = (*(v265 + 512))(v264, v265);
              (*(v262 + 1))(v263, v264);
              if ((v261 & 1) == 0)
              {
                goto LABEL_113;
              }

              swift_unownedRetainStrong();
              v266 = *(v259 + 16);
              if (v266)
              {
                v763 = v260;
                v760 = v46;
                *&v785 = _swiftEmptyArrayStorage;
                v764 = v259;
                sub_100367908(0, v266, 0);
                v267 = v764;
                v268 = 0;
                v269 = v785;
                v270 = *(v785 + 16);
                v271 = v270;
                do
                {
                  v272 = *(v267 + v268 + 32);
                  v273 = *(v267 + v268 + 36);
                  v274 = *(v267 + v268 + 37);
                  *&v785 = v269;
                  v275 = v269[3];
                  v276 = v270 + 1;
                  if (v270 >= v275 >> 1)
                  {
                    sub_100367908((v275 > 1), v270 + 1, 1);
                    v267 = v764;
                    v269 = v785;
                  }

                  v269[2] = v276;
                  v277 = &v269[v271 + v268 / 8];
                  *(v277 + 8) = v272;
                  *(v277 + 36) = v273;
                  *(v277 + 37) = v274;
                  *(v277 + 38) = 2;
                  v268 += 8;
                  v270 = v276;
                  --v266;
                }

                while (v266);
                sub_1001854F8(v777);
                v46 = v760;
                v260 = v763;
              }

              else
              {
                sub_1001854F8(v777);
                v269 = _swiftEmptyArrayStorage;
              }

              if (v269[2])
              {
                sub_10005DC58(&qword_100595318, &qword_1004AF220);
                v380 = static _DictionaryStorage.allocate(capacity:)();
              }

              else
              {
                v380 = &_swiftEmptyDictionarySingleton;
              }

              *&v785 = v380;
              sub_10036C0A8(v269, 1, &v785);

              sub_10040E580(v785);

              swift_unownedRetainStrong();
              v381 = sub_10040E5FC();

              v382 = sub_100367BB4(v381, sub_1003682B0, sub_1003682B0);

              v383 = v382[2];

              LODWORD(v764) = v383 == 1;
              swift_unownedRetainStrong();
              v384 = sub_10040E5FC();

              v385 = sub_100367BB4(v384, sub_1003681C4, sub_1003681C4);

              v386 = v385[2];

              swift_unownedRetainStrong();
              v387 = sub_10040E5FC();

              v388 = sub_100367BB4(v387, sub_1003680D4, sub_1003680D4);

              v389 = v388[2];

              swift_unownedRetainStrong();
              v390 = sub_10040E5FC();

              v391 = sub_100367BB4(v390, sub_100367F9C, sub_100367F9C);

              v392 = v391[2];

              swift_unownedRetainStrong();
              v393 = v746;
              v394 = v747;
              v395 = v748;
              (*(v747 + 16))(v746, v260 + *(*v260 + 112), v748);

              v396 = v743;
              (*(AssociatedConformanceWitness + 152))(v395, AssociatedConformanceWitness);
              (*(v394 + 8))(v393, v395);
              v397 = v745;
              v398 = swift_getAssociatedConformanceWitness();
              (*(v398 + 16))(v764, v386, v389, v392, v397, v398);
              v744[1](v396, v397);
              goto LABEL_120;
            case 0x16u:
              v760 = v36;
              NANBitmap.Channel.operatingClass.getter();
              v776[4] = v311[4];
              v776[5] = v311[5];
              v776[6] = v311[6];
              v776[7] = v311[7];
              v776[0] = *v311;
              v776[1] = v311[1];
              v776[2] = v311[2];
              v776[3] = v311[3];
              v312 = qword_100596C88;
              v313 = v763;
              swift_beginAccess();
              v314 = *(v313 + v312);
              v315 = v314 + 64;
              v316 = 1 << *(v314 + 32);
              v317 = -1;
              if (v316 < 64)
              {
                v317 = ~(-1 << v316);
              }

              v318 = v317 & *(v314 + 64);
              v319 = (v316 + 63) >> 6;

              v320 = 0;
              v764 = v314;
              while (2)
              {
                if (v318)
                {
                  goto LABEL_68;
                }

LABEL_64:
                v321 = v320 + 1;
                if (!__OFADD__(v320, 1))
                {
                  if (v321 < v319)
                  {
                    v318 = *(v315 + 8 * v321);
                    ++v320;
                    if (v318)
                    {
                      v320 = v321;
LABEL_68:
                      v322 = __clz(__rbit64(v318));
                      v318 &= v318 - 1;
                      v323 = (*(v314 + 56) + ((v320 << 10) | (16 * v322)));
                      if (*(*v323 + qword_10059B8B0))
                      {
                        v36 = *v323;

                        sub_10031AC04(v776);

                        v314 = v764;
                      }

                      continue;
                    }

                    goto LABEL_64;
                  }

                  v324 = qword_100596C80;
                  swift_beginAccess();
                  v325 = *(v313 + v324);
                  v36 = (v325 + 64);
                  v326 = 1 << *(v325 + 32);
                  v327 = -1;
                  if (v326 < 64)
                  {
                    v327 = ~(-1 << v326);
                  }

                  v328 = v327 & *(v325 + 64);
                  v329 = (v326 + 63) >> 6;

                  v318 = 0;
                  while (1)
                  {
                    if (!v328)
                    {
                      do
                      {
                        v330 = v318 + 1;
                        if (__OFADD__(v318, 1))
                        {
                          goto LABEL_127;
                        }

                        if (v330 >= v329)
                        {
                          sub_1001854F8(v777);
                          goto LABEL_81;
                        }

                        v328 = *&v36[8 * v330];
                        ++v318;
                      }

                      while (!v328);
                      v318 = v330;
                    }

                    v331 = __clz(__rbit64(v328));
                    v328 &= v328 - 1;
                    v332 = (*(v325 + 56) + ((v318 << 10) | (16 * v331)));
                    if (*(*v332 + qword_10059BAF8))
                    {
                      v333 = *v332;

                      sub_10042587C(v776);
                    }
                  }
                }

                break;
              }

              __break(1u);
LABEL_127:
              __break(1u);
              goto LABEL_128;
            default:
              sub_1001854F8(v777);
              break;
          }
        }

LABEL_32:
        v210 = v30;
        sub_10036D334(v44, v30, type metadata accessor for DriverEvent);
        v211 = Logger.logObject.getter();
        v212 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v211, v212))
        {
          v213 = swift_slowAlloc();
          v778[0] = swift_slowAlloc();
          *v213 = 136315394;
          v214 = _typeName(_:qualified:)();
          v216 = sub_100002320(v214, v215, v778);

          *(v213 + 4) = v216;
          *(v213 + 12) = 2080;
          v217 = DriverEvent.shortDescription.getter();
          v219 = v218;
          sub_10036D24C(v210, type metadata accessor for DriverEvent);
          v220 = sub_100002320(v217, v219, v778);

          *(v213 + 14) = v220;
          _os_log_impl(&_mh_execute_header, v211, v212, "%s unable to handle event: %s", v213, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_10036D24C(v30, type metadata accessor for DriverEvent);
        }

        goto LABEL_120;
      }

      sub_10036D334(v36, v32, type metadata accessor for DriverEvent);
      v68 = *v32;
      if (v68 != 2)
      {
        if (v68 == 1)
        {
          v76 = v763;
          swift_beginAccess();
          v77 = v762;
          v78 = v761;
          v80 = _s8InstanceCMa(255, v762, v761, v79);
          v81 = swift_getWitnessTable(byte_1004B2574, v80);
          v778[0] = v77;
          v778[1] = v80;
          v778[2] = v78;
          v778[3] = v81;
          type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v778);
          NANBitmap.Channel.operatingClass.getter();
          v760 = v46;
          v778[0] = v82;
          __chkstk_darwin();
          v83 = type metadata accessor for Dictionary.Values();

          v752 = &protocol conformance descriptor for [A : B].Values;
          swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v83);
          Sequence.forEach(_:)();

          swift_beginAccess();
          v84 = v761;
          v85 = v762;
          v87 = _s8InstanceCMa_0(255, v762, v761, v86);
          v88 = swift_getWitnessTable("]\r\n", v87);
          v778[0] = v85;
          v778[1] = v87;
          v778[2] = v84;
          v778[3] = v88;
          type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v778);
          NANBitmap.Channel.operatingClass.getter();
          v751 = &v703;
          v778[0] = v89;
          __chkstk_darwin();
          v90 = v764;
          v702 = v76;
          v91 = type metadata accessor for Dictionary.Values();

          swift_getWitnessTable(v752, v91);
          Sequence.forEach(_:)();

          sub_10036EEBC(v90, v92, v93, v94);
          v751 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
          v752 = swift_allocBox();
          v96 = v95;
          v97 = *(v702 + *(*v702 + 304));
          swift_unownedRetainStrong();
          v98 = *(*v97 + 96);
          swift_beginAccess();
          v99 = v758;
          v100 = v759;
          AssociatedConformanceWitness = *(v758 + 16);
          v101 = v97 + v98;
          v102 = v757;
          (AssociatedConformanceWitness)(v757, v101, v759);

          v103 = swift_getAssociatedConformanceWitness();
          LODWORD(v750) = (*(v103 + 32))(v100, v103);
          v104 = *(v99 + 1);
          v104(v102, v100);
          swift_unownedRetainStrong();
          v105 = *(*v97 + 96);
          swift_beginAccess();
          v106 = v97 + v105;
          v107 = v753;
          (AssociatedConformanceWitness)(v753, v106, v100);

          LOBYTE(v103) = (*(v103 + 24))(v100, v103);
          v104(v107, v100);
          LODWORD(v99) = *NANAttribute.CustomDeviceInformation.Flags.triggeredWatchdogReset.unsafeMutableAddressor();
          NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v96 + *(v751 + 28));
          *v96 = v750;
          *(v96 + 1) = v103;
          *(v96 + 4) = v99;
          v108 = swift_allocObject();
          *(v108 + 16) = &_swiftEmptySetSingleton;
          v109 = qword_100596C90;
          swift_beginAccess();
          v110 = *(v702 + v109);
          v112 = v761;
          v111 = v762;
          v114 = _s17InitiatorInstanceCMa(0, v762, v761, v113);

          v115 = swift_getWitnessTable(byte_1004B0F38, v114);
          v116 = v752;
          v117 = v764;
          sub_1003487A8(v110, v108, v752, v702, v764, v114, v115);

          v118 = qword_100596C98;
          swift_beginAccess();
          v119 = *(v702 + v118);
          v120 = v112;
          v46 = v760;
          v122 = _s17ResponderInstanceCMa(0, v111, v120, v121);

          v123 = swift_getWitnessTable(aQ_10, v122);
          sub_1003487A8(v119, v108, v116, v702, v117, v122, v123);

          swift_unownedRetainStrong();
          sub_10040E6EC(sub_1003491A8, 0);

          type metadata accessor for P2PTimer(0);
          v124 = v754;
          variable initialization expression of AWDLPeer.lastUpdated();
          v125 = qword_100596CC8;
          swift_beginAccess();
          (*(v755 + 40))(v702 + v125, v124, v756);
          swift_endAccess();
          sub_100344084();
          sub_1003448A8();
          sub_10033D51C();

LABEL_14:

          goto LABEL_120;
        }

        if (*v32)
        {
          goto LABEL_32;
        }
      }
    }

    swift_beginAccess();
    v69 = v762;
    v70 = v761;
    v72 = _s8InstanceCMa_0(255, v762, v761, v71);
    v73 = swift_getWitnessTable("]\r\n", v72);
    v778[0] = v69;
    v778[1] = v72;
    v778[2] = v70;
    v778[3] = v73;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v778);
    NANBitmap.Channel.operatingClass.getter();
    v778[0] = v74;
    __chkstk_darwin();
    v75 = type metadata accessor for Dictionary.Values();

    swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v75);
    Sequence.forEach(_:)();

    goto LABEL_120;
  }

  __break(1u);
LABEL_122:
  v36 = v37;
  v723 = v40;
  v743 = v32;
  *&v783 = v764;
  memcpy(v776, v777, 0x16AuLL);
  NANBitmap.Channel.operatingClass.getter();
  sub_10018526C(v410, &v785);
  v411 = sub_10005DC58(&unk_100597510, &qword_100495350);
  v318 = sub_10000CADC(&qword_10059A6E0, &unk_100597510, &qword_100495350, &protocol conformance descriptor for [A]);
  v412 = Collection<>.nanIE.getter(v411, v318);
  if (!v412)
  {
LABEL_128:
    sub_1001854F8(v777);
    v420 = 0;
LABEL_156:
    v419 = v741;
    v418 = v742;
    goto LABEL_157;
  }

  v413 = v412;
  v744 = v37;
  sub_1001854F8(v777);
  v414 = v740;
  Array<A>.retrieve(attribute:)(34, v413, v740);

  v415 = type metadata accessor for NANAttribute(0);
  v416 = *(v415 - 8);
  v417 = (*(v416 + 48))(v414, 1, v415);
  v419 = v741;
  v418 = v742;
  if (v417 != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 30)
    {
      sub_10036D24C(v414, type metadata accessor for NANAttribute);
      goto LABEL_148;
    }

    v722 = v416;
    v421 = *(v414 + 8);
    if (*(v421 + 16) == 1)
    {
      v422 = *(v421 + 32);
      v423 = *(v421 + 33);

      swift_beginAccess();
      LODWORD(v720) = v423;
      v779 = v423;
      v424 = v761;
      v425 = v762;
      v427 = _s8InstanceCMa_0(255, v762, v761, v426);
      v428 = swift_getWitnessTable("]\r\n", v427);
      *&v785 = v425;
      *(&v785 + 1) = v427;
      *&v786 = v424;
      *(&v786 + 1) = v428;
      type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v785);
      Dictionary.subscript.getter();
      v429 = v780;
      if (v780)
      {
        v430 = v781;
        v431 = v780;
        swift_endAccess();
        sub_100058BA4(v429, v430);
        v721 = v431;
        v432 = &v431[qword_10059B890];
        swift_beginAccess();
        v719 = type metadata accessor for NANPublish.Configuration(0);
        v433 = v432;
        LODWORD(v432) = *&v432[*(v719 + 100)];
        v717 = NANAttribute.PairingBootstrapping.Method.bootstrapHandshakeSkipped.unsafeMutableAddressor();
        if ((*v717 & ~v432) == 0)
        {
          v434 = *&v433[*(v719 + 84) + 16];
          v435 = *(v434 + 16);

          v436 = 0;
          v740 = 0;
          v437 = _swiftEmptyArrayStorage;
          v718 = 32;
LABEL_134:
          v438 = v718 + 56 * v436;
          while (v435 != v436)
          {
            if (v436 >= *(v434 + 16))
            {
              __break(1u);
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
LABEL_370:
              __break(1u);
LABEL_371:
              __break(1u);
LABEL_372:
              __break(1u);

              __break(1u);
              return;
            }

            ++v436;
            v439 = *(v434 + v438);
            v438 += 56;
            if (v439 == v422)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v437 = sub_1003A79E0(0, *(v437 + 2) + 1, 1, v437);
              }

              v441 = *(v437 + 2);
              v440 = *(v437 + 3);
              v716 = v441 + 1;
              if (v441 >= v440 >> 1)
              {
                v437 = sub_1003A79E0((v440 > 1), v716, 1, v437);
              }

              *(v437 + 2) = v716;
              v437[v441 + 32] = v422;
              goto LABEL_134;
            }
          }

          v771 = v437;
          v578 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
          v579 = sub_10000CADC(&qword_100595C30, &unk_100597490, &qword_1004B17B0, &protocol conformance descriptor for [A]);
          v580 = Collection<>.strongestSupportedPairingKeySuite.getter(v578, v579);
          if (v580 != 8)
          {
            v604 = v580;

            v605 = *(v433 + 1);
            v606 = *(v433 + 2);

            v607 = NANServiceName.description.getter(v605, v606);
            v761 = v608;
            v762 = v607;

            v609 = *(v763 + *(*v763 + 304));
            swift_unownedRetainStrong();
            v791 = 0;
            v789 = 0u;
            v790 = 0u;
            v787 = 0u;
            v788 = 0u;
            v785 = 0u;
            v786 = 0u;
            v610 = *&v721[qword_10059B8C8];
            v611 = (v759 << 16) | (v756 << 8) | (v751 << 24) | (v755 << 32) | (v757 << 40);

            v613 = v754;
            v614 = sub_1004405F4(v609, v611 | v754, v720, v762, v761, v604, &v785, 0, v610, v612);

            v620 = sub_1002EBB84(v619, v615, v616, v617, v618);
            v763 = v614;
            *(v614 + qword_10059BC80) = v620;
            swift_unknownObjectRelease();
            v762 = *v433;
            *&v783 = -60;
            v621 = sub_100086E78();
            v622 = RSSI.init<A>(_:)(&v783, &type metadata for Int, v621);
            sub_10005DC58(&unk_100597530, &qword_100482F50);
            v623 = (*(v722 + 80) + 32) & ~*(v722 + 80);
            v624 = swift_allocObject();
            *(v624 + 16) = xmmword_100480F40;
            v625 = (v624 + v623);
            v626 = v717;
            static NANAttribute.PairingBootstrapping.request(dialogToken:method:)(0, *v717, &v783);
            v627 = v784[0];
            *v625 = v783;
            v625[1] = v627;
            *(v625 + 26) = *(v784 + 10);
            swift_storeEnumTagMultiPayload();
            LOWORD(v780) = v762;
            BYTE2(v780) = v613;
            LOBYTE(v625) = v756;
            BYTE3(v780) = v756;
            BYTE4(v780) = v759;
            BYTE5(v780) = v751;
            BYTE6(v780) = v755;
            HIBYTE(v780) = v757;
            v781 = v622;
            v782 = v624;
            v628 = v433[*(v719 + 104)];
            v629 = v433[*(v719 + 124)];
            v630 = v759;
            v631 = v751;
            v632 = v755;
            v633 = v757;
            v634 = v624;
            v635 = v763;
            sub_1004356C8((v613 << 16) | (v756 << 24) | (v759 << 32) | (v751 << 40) | (v755 << 48) | (v757 << 56) | v762, v622, v634, *v626, v628, 1, v629 & 1);
            sub_1003011F8(&v780);
            v774 = v635;
            v775 = 1;
            v765 = v613;
            v766 = v625;
            v767 = v630;
            v768 = v631;
            v769 = v632;
            v770 = v633;
            swift_beginAccess();
            type metadata accessor for Dictionary();

            Dictionary.subscript.setter();
            swift_endAccess();
            sub_100438ED8(v764, v758, v744, v743);
            sub_1001854F8(v777);
            sub_1001854F8(v777);

            goto LABEL_81;
          }

          v420 = v740;
          goto LABEL_155;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
    }

    v420 = 0;
LABEL_155:
    v36 = v744;
    goto LABEL_156;
  }

  sub_100016290(v414, &unk_100595C00, &qword_10048F790);
LABEL_148:
  v420 = 0;
  v36 = v744;
LABEL_157:
  v447 = v764;
  *&v785 = v764;
  sub_100185558(v777, v776);
  v448 = sub_10005DC58(&unk_100597510, &qword_100495350);
  v449 = Collection<>.nanIE.getter(v448, v318);
  if (!v449)
  {
    sub_1001854F8(v777);
    goto LABEL_168;
  }

  v450 = v449;
  sub_1001854F8(v777);

  Array<A>.retrieve(attribute:)(34, v450, v419);

  v451 = type metadata accessor for NANAttribute(0);
  v452 = *(*(v451 - 8) + 48);
  if (v452(v419, 1, v451) == 1)
  {

    sub_100016290(v419, &unk_100595C00, &qword_10048F790);
    v447 = v764;
LABEL_168:
    *&v785 = v447;
    sub_100185558(v777, v776);
    v455 = sub_10005DC58(&unk_100597510, &qword_100495350);
    v456 = Collection<>.nanIE.getter(v455, v318);
    if (!v456)
    {
      sub_1001854F8(v777);
      goto LABEL_115;
    }

    v457 = v456;
    sub_1001854F8(v777);
    Array<A>.retrieve(attribute:)(34, v457, v418);

    v458 = type metadata accessor for NANAttribute(0);
    if ((*(*(v458 - 8) + 48))(v418, 1, v458) == 1)
    {
      sub_100016290(v418, &unk_100595C00, &qword_10048F790);
LABEL_115:
      v407 = Logger.logObject.getter();
      v408 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v407, v408))
      {
        v409 = swift_slowAlloc();
        *v409 = 0;
        _os_log_impl(&_mh_execute_header, v407, v408, "pairing auth: Unable to handle received authentication frame because no pairing session was found or could be formed", v409, 2u);
      }

      sub_1001854F8(v777);
LABEL_118:
      sub_1001854F8(v777);
      goto LABEL_119;
    }

    if (swift_getEnumCaseMultiPayload() != 30)
    {
      sub_10036D24C(v418, type metadata accessor for NANAttribute);
      goto LABEL_115;
    }

    v744 = v36;
    v740 = v420;
    v459 = *(v418 + 8);
    if (*(v459 + 16) != 1)
    {

      goto LABEL_115;
    }

    v460 = *(v459 + 32);
    v461 = *(v459 + 33);

    swift_beginAccess();
    LODWORD(v752) = v461;
    LOBYTE(v772) = v461;
    v462 = v761;
    v463 = v762;
    v465 = _s8InstanceCMa_0(255, v762, v761, v464);
    v466 = swift_getWitnessTable("]\r\n", v465);
    *&v776[0] = v463;
    *(&v776[0] + 1) = v465;
    *&v776[1] = v462;
    *(&v776[1] + 1) = v466;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v776);
    Dictionary.subscript.getter();
    v467 = v783;
    if (!v783)
    {
      swift_endAccess();
      goto LABEL_115;
    }

    v468 = *(&v783 + 1);
    v469 = v783;
    swift_endAccess();
    sub_100058BA4(v467, v468);
    v36 = v469;
    v470 = &v469[qword_10059B890];
    swift_beginAccess();
    v471 = *&v470[*(type metadata accessor for NANPublish.Configuration(0) + 84) + 16];
    v472 = *(v471 + 16);

    v473 = 0;
    v474 = _swiftEmptyArrayStorage;
    v762 = 32;
LABEL_176:
    v475 = v762 + 56 * v473;
    while (v472 != v473)
    {
      if (v473 >= *(v471 + 16))
      {
        __break(1u);
        goto LABEL_351;
      }

      ++v473;
      v476 = *(v471 + v475);
      v475 += 56;
      if (v476 == v460)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v474 = sub_1003A79E0(0, *(v474 + 16) + 1, 1, v474);
        }

        v478 = *(v474 + 16);
        v477 = *(v474 + 24);
        v761 = v478 + 1;
        if (v478 >= v477 >> 1)
        {
          v474 = sub_1003A79E0((v477 > 1), v761, 1, v474);
        }

        *(v474 + 16) = v761;
        *(v474 + v478 + 32) = v460;
        goto LABEL_176;
      }
    }

    *&v776[0] = v474;
    v479 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
    v480 = sub_10000CADC(&qword_100595C30, &unk_100597490, &qword_1004B17B0, &protocol conformance descriptor for [A]);
    LODWORD(v762) = Collection<>.strongestSupportedPairingKeySuite.getter(v479, v480);
    if (v762 == 8)
    {

      goto LABEL_115;
    }

    sub_1001854F8(v777);

    v581 = Logger.logObject.getter();
    v582 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v581, v582))
    {
      v583 = swift_slowAlloc();
      *v583 = 0;
      _os_log_impl(&_mh_execute_header, v581, v582, "pairing auth: No existing or cached pairing session was found, forming a new responder instance", v583, 2u);
    }

    v584 = *(v470 + 1);
    v585 = *(v470 + 2);

    v586 = NANServiceName.description.getter(v584, v585);
    v761 = v587;

    v588 = *(v763 + *(*v763 + 304));
    swift_unownedRetainStrong();
    memset(v776, 0, 104);
    AssociatedConformanceWitness = v36;
    v589 = *&v36[qword_10059B8C8];
    v590 = v754;
    v591 = v755;
    v592 = v756;
    v593 = v759;
    v594 = v751;
    v595 = v754 | (v756 << 8) | (v759 << 16) | (v751 << 24) | (v755 << 32) | (v757 << 40);

    v597 = sub_1004405F4(v588, v595, v752, v586, v761, v762, v776, 0, v589, v596);

    v599 = AssociatedConformanceWitness;
    *(v597 + qword_10059BC80) = sub_1002EBB84(v603, v598, v600, v601, v602);
    swift_unknownObjectRelease();
    v772 = v597;
    v773 = 1;
    LOBYTE(v774) = v590;
    BYTE1(v774) = v592;
    BYTE2(v774) = v593;
    BYTE3(v774) = v594;
    BYTE4(v774) = v591;
    BYTE5(v774) = v757;
    swift_beginAccess();
    type metadata accessor for Dictionary();

    Dictionary.subscript.setter();
    swift_endAccess();
    sub_100438ED8(v764, v758, v744, v743);
    sub_1001854F8(v777);

LABEL_81:

    goto LABEL_119;
  }

  if (swift_getEnumCaseMultiPayload() != 30)
  {

    sub_10036D24C(v419, type metadata accessor for NANAttribute);
    v447 = v764;
    goto LABEL_168;
  }

  v744 = v318;
  v740 = v420;
  v453 = *(v419 + 8);
  if (*(v453 + 16) != 1)
  {

    goto LABEL_167;
  }

  LODWORD(v741) = *(v453 + 32);
  LODWORD(v716) = *(v453 + 33);

  v454 = v739;
  Array<A>.retrieve(attribute:)(43, v450, v739);

  if (v452(v454, 1, v451) == 1)
  {
    sub_100016290(v739, &unk_100595C00, &qword_10048F790);
    goto LABEL_167;
  }

  if (swift_getEnumCaseMultiPayload() != 38)
  {
    sub_10036D24C(v739, type metadata accessor for NANAttribute);
    goto LABEL_167;
  }

  v482 = *v739;
  v481 = v739[1];
  v484 = v739[2];
  v483 = v739[3];
  v485 = *(v763 + *(*v763 + 304));
  swift_unownedRetainStrong();
  v487 = v746;
  v486 = v747;
  v488 = v748;
  (*(v747 + 16))(v746, v485 + *(*v485 + 112), v748);
  v704 = v485;

  (*(AssociatedConformanceWitness + 128))(v488);
  (*(v486 + 8))(v487, v488);
  v489 = LongTermPairingKeyStore.getPairedPeersWithIDs()();

  v490 = 1 << *(v489 + 32);
  v492 = v489 + 64;
  v491 = *(v489 + 64);
  v712 = (v490 + 63) >> 6;
  if (v490 < 64)
  {
    v493 = ~(-1 << v490);
  }

  else
  {
    v493 = -1;
  }

  v494 = v493 & v491;
  v717 = (v733 + 16);
  v718 = v754 | (v756 << 8) | (v759 << 16) | (v751 << 24) | (v755 << 32) | (v757 << 40);
  if (v482)
  {
    v495 = 0;
  }

  else
  {
    v495 = v481 == 0xC000000000000000;
  }

  v496 = !v495;
  v713 = v496;
  v746 = v481 >> 62;
  v739 = v482;
  v497 = __OFSUB__(HIDWORD(v482), v482);
  v708 = v497;
  v707 = HIDWORD(v482) - v482;
  v722 = v481;
  v711 = BYTE6(v481);
  if (v484)
  {
    v498 = 0;
  }

  else
  {
    v498 = v483 == 0xC000000000000000;
  }

  v499 = !v498;
  v710 = v499;
  v714 = v483;
  v715 = v484;
  v500 = __OFSUB__(HIDWORD(v484), v484);
  v706 = v500;
  v705 = HIDWORD(v484) - v484;
  v709 = BYTE6(v483);
  v719 = v733 + 8;
  v720 = v483 >> 62;
  v721 = v489;

  v501 = 0;
  if (!v494)
  {
LABEL_212:
    while (1)
    {
      v502 = v501 + 1;
      if (__OFADD__(v501, 1))
      {
        goto LABEL_355;
      }

      if (v502 >= v712)
      {

        (*(v730 + 56))(v731, 1, 1, v734);
        goto LABEL_329;
      }

      v494 = *(v492 + 8 * v502);
      ++v501;
      if (v494)
      {
        v501 = v502;
        goto LABEL_216;
      }
    }
  }

  while (1)
  {
LABEL_216:
    v503 = __clz(__rbit64(v494)) | (v501 << 6);
    v504 = v721;
    v505 = v732;
    (*(v733 + 16))(v732, *(v721 + 6) + *(v733 + 72) * v503, v738);
    v506 = *(v504 + 7);
    v507 = v506 + *(*(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8) + 72) * v503;
    v508 = v734;
    sub_10036D334(v507, v505 + *(v734 + 48), type metadata accessor for NANPairedDeviceSharedAssociation);
    v509 = v736;
    sub_10001CEA8(v505, v736, &unk_100597500, &unk_1004939B0);
    v510 = v735;
    sub_100012400(v509, v735, &unk_100597500, &unk_1004939B0);
    v511 = *(v508 + 48);
    sub_10036D334(v510 + v511, v737, type metadata accessor for NANIdentityKey);
    sub_10036D24C(v510 + v511, type metadata accessor for NANPairedDeviceSharedAssociation);
    v512 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(v718, v739, v722);
    v747 = v513;
    v748 = v512;
    v474 = v514;
    AssociatedConformanceWitness = v515;
    v516 = v515 >> 62;
    if (v515 >> 62 == 3)
    {
      if (v748)
      {
        v517 = 0;
      }

      else
      {
        v517 = AssociatedConformanceWitness == 0xC000000000000000;
      }

      v519 = !v517 || v746 < 3;
      if (((v519 | v713) & 1) == 0)
      {
        goto LABEL_267;
      }

LABEL_235:
      v520 = 0;
      goto LABEL_238;
    }

    if (v516 > 1)
    {
      if (v516 != 2)
      {
        goto LABEL_235;
      }

      v522 = *(v748 + 16);
      v521 = *(v748 + 24);
      v523 = __OFSUB__(v521, v522);
      v520 = v521 - v522;
      if (v523)
      {
        goto LABEL_362;
      }
    }

    else if (v516)
    {
      LODWORD(v520) = HIDWORD(v748) - v748;
      if (__OFSUB__(HIDWORD(v748), v748))
      {
        goto LABEL_361;
      }

      v520 = v520;
    }

    else
    {
      v520 = BYTE6(AssociatedConformanceWitness);
    }

LABEL_238:
    if (v746 > 1)
    {
      if (v746 != 2)
      {
        if (v520)
        {
          goto LABEL_299;
        }

        goto LABEL_267;
      }

      v526 = v739[2];
      v525 = v739[3];
      v523 = __OFSUB__(v525, v526);
      v524 = v525 - v526;
      if (v523)
      {
        goto LABEL_358;
      }
    }

    else
    {
      v524 = v711;
      if (v746)
      {
        v524 = v707;
        if (v708)
        {
          goto LABEL_357;
        }
      }
    }

    if (v520 != v524)
    {
      goto LABEL_299;
    }

    if (v520 < 1)
    {
      goto LABEL_267;
    }

    if (v516 > 1)
    {
      if (v516 != 2)
      {
        *(v776 + 6) = 0;
        *&v776[0] = 0;
        v540 = v739;
        v541 = v722;
        sub_10000AB0C(v739, v722);
        v542 = v740;
        sub_100031E04(v776, v540, v541, &v785);
        v740 = v542;
        v530 = v540;
        v531 = v541;
LABEL_263:
        sub_1000124C8(v530, v531);
        if ((v785 & 1) == 0)
        {
          goto LABEL_299;
        }

        goto LABEL_267;
      }

      v533 = *(v748 + 16);
      v532 = *(v748 + 24);
      sub_10000AB0C(v739, v722);
      v534 = __DataStorage._bytes.getter();
      if (v534)
      {
        v535 = __DataStorage._offset.getter();
        if (__OFSUB__(v533, v535))
        {
          goto LABEL_371;
        }

        v534 += v533 - v535;
      }

      if (__OFSUB__(v532, v533))
      {
        goto LABEL_368;
      }
    }

    else
    {
      if (!v516)
      {
        *&v776[0] = v748;
        DWORD2(v776[0]) = AssociatedConformanceWitness;
        WORD6(v776[0]) = WORD2(AssociatedConformanceWitness);
        v527 = v739;
        v528 = v722;
        sub_10000AB0C(v739, v722);
        v529 = v740;
        sub_100031E04(v776, v527, v528, &v785);
        v740 = v529;
        v530 = v527;
        v531 = v528;
        goto LABEL_263;
      }

      v536 = v748;
      if (v748 >> 32 < v748)
      {
        goto LABEL_367;
      }

      sub_10000AB0C(v739, v722);
      v537 = __DataStorage._bytes.getter();
      if (v537)
      {
        v538 = v537;
        v539 = __DataStorage._offset.getter();
        if (__OFSUB__(v536, v539))
        {
          goto LABEL_372;
        }

        v534 = v536 - v539 + v538;
      }

      else
      {
        v534 = 0;
      }
    }

    __DataStorage._length.getter();
    v543 = v534;
    v545 = v739;
    v544 = v740;
    v546 = v722;
    sub_100031E04(v543, v739, v722, v776);
    v740 = v544;
    sub_1000124C8(v545, v546);
    if ((v776[0] & 1) == 0)
    {
      goto LABEL_299;
    }

LABEL_267:
    v547 = v474 >> 62;
    if (v474 >> 62 == 3)
    {
      if (v747)
      {
        v548 = 0;
      }

      else
      {
        v548 = v474 == 0xC000000000000000;
      }

      v550 = !v548 || v720 < 3;
      if (((v550 | v710) & 1) == 0)
      {
        sub_1000124C8(v748, AssociatedConformanceWitness);
        v699 = 0;
        v700 = 0xC000000000000000;
        goto LABEL_352;
      }

LABEL_286:
      v551 = 0;
      goto LABEL_287;
    }

    if (v547 > 1)
    {
      if (v547 != 2)
      {
        goto LABEL_286;
      }

      v553 = *(v747 + 16);
      v552 = *(v747 + 24);
      v523 = __OFSUB__(v552, v553);
      v551 = v552 - v553;
      if (v523)
      {
        goto LABEL_363;
      }
    }

    else if (v547)
    {
      LODWORD(v551) = HIDWORD(v747) - v747;
      if (__OFSUB__(HIDWORD(v747), v747))
      {
        goto LABEL_364;
      }

      v551 = v551;
    }

    else
    {
      v551 = BYTE6(v474);
    }

LABEL_287:
    if (v720 > 1)
    {
      break;
    }

    v554 = v709;
    if (v720)
    {
      v554 = v705;
      if (v706)
      {
        goto LABEL_359;
      }
    }

LABEL_293:
    if (v551 != v554)
    {
      goto LABEL_299;
    }

    if (v551 < 1)
    {
      goto LABEL_351;
    }

    if (v547 > 1)
    {
      if (v547 != 2)
      {
        *(v776 + 6) = 0;
        *&v776[0] = 0;
        v570 = v714;
        v571 = v715;
        sub_10000AB0C(v715, v714);
        v572 = v740;
        sub_100031E04(v776, v571, v570, &v785);
        v740 = v572;
        sub_1000124C8(v571, v570);
        sub_1000124C8(v748, AssociatedConformanceWitness);
        v561 = v747;
        goto LABEL_316;
      }

      v563 = *(v747 + 16);
      v562 = *(v747 + 24);
      sub_10000AB0C(v715, v714);
      v564 = __DataStorage._bytes.getter();
      if (v564)
      {
        v565 = __DataStorage._offset.getter();
        if (__OFSUB__(v563, v565))
        {
          goto LABEL_369;
        }

        v564 += v563 - v565;
      }

      if (__OFSUB__(v562, v563))
      {
        goto LABEL_366;
      }
    }

    else
    {
      if (!v547)
      {
        v557 = v747;
        *&v776[0] = v747;
        WORD4(v776[0]) = v474;
        BYTE10(v776[0]) = BYTE2(v474);
        BYTE11(v776[0]) = BYTE3(v474);
        BYTE12(v776[0]) = BYTE4(v474);
        BYTE13(v776[0]) = BYTE5(v474);
        v558 = v714;
        v559 = v715;
        sub_10000AB0C(v715, v714);
        v560 = v740;
        sub_100031E04(v776, v559, v558, &v785);
        v740 = v560;
        sub_1000124C8(v559, v558);
        sub_1000124C8(v748, AssociatedConformanceWitness);
        v561 = v557;
LABEL_316:
        sub_1000124C8(v561, v474);
        v573 = v785;
        goto LABEL_319;
      }

      v566 = v747;
      if (v747 >> 32 < v747)
      {
        goto LABEL_365;
      }

      sub_10000AB0C(v715, v714);
      v567 = __DataStorage._bytes.getter();
      if (v567)
      {
        v568 = v567;
        v569 = __DataStorage._offset.getter();
        if (__OFSUB__(v566, v569))
        {
          goto LABEL_370;
        }

        v564 = v566 - v569 + v568;
      }

      else
      {
        v564 = 0;
      }
    }

    __DataStorage._length.getter();
    v574 = v564;
    v575 = v714;
    v576 = v715;
    v577 = v740;
    sub_100031E04(v574, v715, v714, v776);
    v740 = v577;
    sub_1000124C8(v576, v575);
    sub_1000124C8(v748, AssociatedConformanceWitness);
    sub_1000124C8(v747, v474);
    v573 = v776[0];
LABEL_319:
    sub_10036D24C(v737, type metadata accessor for NANIdentityKey);
    (*v719)(v735, v738);
    if (v573)
    {
      goto LABEL_353;
    }

LABEL_300:
    v494 &= v494 - 1;
    sub_100016290(v736, &unk_100597500, &unk_1004939B0);
    if (!v494)
    {
      goto LABEL_212;
    }
  }

  if (v720 == 2)
  {
    v556 = *(v715 + 16);
    v555 = *(v715 + 24);
    v523 = __OFSUB__(v555, v556);
    v554 = v555 - v556;
    if (v523)
    {
      goto LABEL_360;
    }

    goto LABEL_293;
  }

  if (v551)
  {
LABEL_299:
    sub_1000124C8(v748, AssociatedConformanceWitness);
    sub_1000124C8(v747, v474);
    sub_10036D24C(v737, type metadata accessor for NANIdentityKey);
    (*v719)(v735, v738);
    goto LABEL_300;
  }

LABEL_351:
  sub_1000124C8(v748, AssociatedConformanceWitness);
  v699 = v747;
  v700 = v474;
LABEL_352:
  sub_1000124C8(v699, v700);
  sub_10036D24C(v737, type metadata accessor for NANIdentityKey);
  (*v719)(v735, v738);
LABEL_353:

  v701 = v731;
  sub_10001CEA8(v736, v731, &unk_100597500, &unk_1004939B0);
  (*(v730 + 56))(v701, 0, 1, v734);
LABEL_329:

  if ((*(v730 + 48))(v731, 1, v734) == 1)
  {
    sub_1000124C8(v739, v722);
    sub_1000124C8(v715, v714);
    sub_100016290(v731, &unk_1005985B0, &unk_1004939A0);
    goto LABEL_167;
  }

  v636 = *(v734 + 48);
  v638 = v727;
  v637 = v728;
  v639 = *(v728 + 48);
  v640 = *(v733 + 32);
  v641 = v731;
  v642 = v738;
  v640(v727, v731, v738);
  sub_10036D640(v641 + v636, &v638[v639], type metadata accessor for NANPairedDeviceSharedAssociation);
  v643 = *(v637 + 48);
  v640(v729, v638, v642);
  sub_10036D24C(&v638[v643], type metadata accessor for NANPairedDeviceSharedAssociation);
  swift_beginAccess();
  LOBYTE(v780) = v716;
  v644 = v761;
  v645 = v762;
  v647 = _s8InstanceCMa_0(255, v762, v761, v646);
  v648 = swift_getWitnessTable("]\r\n", v647);
  *&v776[0] = v645;
  *(&v776[0] + 1) = v647;
  *&v776[1] = v644;
  *(&v776[1] + 1) = v648;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v776);
  Dictionary.subscript.getter();
  v649 = v783;
  if (!v783)
  {
    swift_endAccess();
    sub_1000124C8(v739, v722);
    sub_1000124C8(v715, v714);
    (*v719)(v729, v738);
LABEL_167:
    v420 = v740;
    v447 = v764;
    v418 = v742;
    v318 = v744;
    goto LABEL_168;
  }

  v650 = *(&v783 + 1);
  v651 = v783;
  swift_endAccess();
  sub_100058BA4(v649, v650);
  AssociatedConformanceWitness = v651;
  v652 = v651 + qword_10059B890;
  swift_beginAccess();
  v653 = *(type metadata accessor for NANPublish.Configuration(0) + 84);
  v748 = v652;
  v654 = *(v652 + v653 + 16);
  v655 = *(v654 + 16);

  v656 = 0;
  v657 = _swiftEmptyArrayStorage;
LABEL_334:
  v658 = 56 * v656 + 32;
  while (v655 != v656)
  {
    if (v656 >= *(v654 + 16))
    {
      goto LABEL_356;
    }

    ++v656;
    v659 = *(v654 + v658);
    v658 += 56;
    if (v659 == v741)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v657 = sub_1003A79E0(0, *(v657 + 2) + 1, 1, v657);
      }

      v661 = *(v657 + 2);
      v660 = *(v657 + 3);
      if (v661 >= v660 >> 1)
      {
        v657 = sub_1003A79E0((v660 > 1), v661 + 1, 1, v657);
      }

      *(v657 + 2) = v661 + 1;
      v657[v661 + 32] = v741;
      goto LABEL_334;
    }
  }

  *&v776[0] = v657;
  v662 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
  v663 = sub_10000CADC(&qword_100595C30, &unk_100597490, &qword_1004B17B0, &protocol conformance descriptor for [A]);
  LODWORD(v747) = Collection<>.strongestSupportedPairingKeySuite.getter(v662, v663);
  if (v747 == 8)
  {
    (*v719)(v729, v738);
    sub_1000124C8(v739, v722);
    sub_1000124C8(v715, v714);

    goto LABEL_167;
  }

  swift_unownedRetainStrong();
  v664 = v733;
  v762 = *(v733 + 16);
  v665 = v725;
  v666 = v729;
  v667 = v738;
  (v762)(v725, v729, v738);
  (*(v664 + 56))(v665, 0, 1, v667);
  v668 = v724;
  v669 = v718;
  sub_10040CD68(v718, v724);
  sub_10036C8F0(v665, v668 + *(v752 + 88));
  sub_10040E430(v668, v669);

  (v762)(v726, v666, v667);
  v670 = Logger.logObject.getter();
  v671 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v670, v671))
  {
    v672 = swift_slowAlloc();
    v673 = swift_slowAlloc();
    *&v776[0] = v673;
    *v672 = 136315138;
    sub_10036D49C(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v674 = v726;
    v675 = v738;
    v676 = dispatch thunk of CustomStringConvertible.description.getter();
    v678 = v677;
    v679 = *v719;
    v763 = (v719 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v680 = v674;
    v681 = v679;
    v679(v680, v675);
    v682 = sub_100002320(v676, v678, v776);

    *(v672 + 4) = v682;
    _os_log_impl(&_mh_execute_header, v670, v671, "pairing auth: Cached paired peer UUID:%s was found, forming a new responder instance", v672, 0xCu);
    sub_100002A00(v673);
  }

  else
  {

    v683 = *v719;
    v763 = (v719 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v681 = v683;
    v683(v726, v738);
  }

  v684 = *(v748 + 8);
  v685 = *(v748 + 16);

  v686 = NANServiceName.description.getter(v684, v685);
  v688 = v687;

  v689 = v704;
  swift_unownedRetainStrong();
  memset(v776, 0, 104);
  v690 = AssociatedConformanceWitness;
  v691 = *(AssociatedConformanceWitness + qword_10059B8C8);

  v693 = sub_1004405F4(v689, v718, v716, v686, v688, v747, v776, 0, v691, v692);

  *(v693 + qword_10059BC80) = sub_1002EBB84(v698, v694, v695, v696, v697);
  swift_unknownObjectRelease();
  *&v783 = v693;
  BYTE8(v783) = 1;
  LOBYTE(v772) = v754;
  BYTE1(v772) = v756;
  BYTE2(v772) = v759;
  BYTE3(v772) = v751;
  BYTE4(v772) = v755;
  BYTE5(v772) = v757;
  swift_beginAccess();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();
  sub_100438ED8(v764, v758, v36, v743);

  sub_1000124C8(v739, v722);
  sub_1000124C8(v715, v714);

  sub_1001854F8(v777);
  sub_1001854F8(v777);
  v681(v729, v738);
LABEL_119:
  v46 = v760;
LABEL_120:
  sub_10036D24C(v46, type metadata accessor for DriverEvent);
}

void sub_100343820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for DriverEvent(0);
  v10 = __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(a6 + 88))(a4, a5, a6, v10);
  }

  else
  {
    sub_10036D334(a4, v12, type metadata accessor for DriverEvent);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v17 = DriverEvent.description.getter();
      v19 = v18;
      sub_10036D24C(v12, type metadata accessor for DriverEvent);
      v20 = sub_100002320(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Did not find a service to handle %s", v15, 0xCu);
      sub_100002A00(v16);
    }

    else
    {

      sub_10036D24C(v12, type metadata accessor for DriverEvent);
    }
  }
}

void sub_100343A1C(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v54 = a3;
  v57 = a1;
  v45 = a1 >> 8;
  v46 = a1 >> 16;
  v58 = BYTE2(a1);
  v47 = a1 >> 24;
  v48 = HIDWORD(a1);
  v59 = BYTE3(a1);
  v60 = BYTE4(a1);
  v49 = a1 >> 40;
  v50 = HIWORD(a1);
  v61 = BYTE5(a1);
  v62 = BYTE6(a1);
  v5 = *a2;
  v53 = type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v43 - v7;
  __chkstk_darwin();
  v9 = &v43 - v8;
  swift_beginAccess();
  v10 = *(v5 + 80);
  v11 = *(v5 + 88);
  v13 = _s17InitiatorInstanceCMa(255, v10, v11, v12);
  WitnessTable = swift_getWitnessTable(byte_1004B0F14, v13);
  v56[0] = v10;
  v56[1] = v13;
  v56[2] = v11;
  v56[3] = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v56);
  sub_10020CB70();
  Dictionary.subscript.getter();
  v15 = v63;
  if (v63)
  {
    v16 = v64;
    swift_endAccess();
    v17 = v15;

    v18 = v15;
    v19 = v16;
    v20 = a2;
    v21 = v54;
    v22 = v54;
  }

  else
  {
    v44 = v9;
    v23 = v54;
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v57) = a1;
    HIBYTE(v57) = v45;
    v58 = v46;
    v59 = v47;
    v60 = v48;
    v61 = v49;
    v62 = v50;
    v13 = _s17ResponderInstanceCMa(255, v10, v11, v24);
    WitnessTable = swift_getWitnessTable(aM_9, v13);
    v56[0] = v10;
    v56[1] = v13;
    v56[2] = v11;
    v56[3] = WitnessTable;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v56);
    Dictionary.subscript.getter();
    v15 = v63;
    if (!v63)
    {
      swift_endAccess();
      v31 = v23;
      v32 = v44;
      sub_10036D334(v31, v44, type metadata accessor for DriverEvent);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v33, v34))
      {

        v30 = v32;
        goto LABEL_12;
      }

      v35 = swift_slowAlloc();
      v56[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = NANPeerServiceIdentifier.description.getter(a1 & 0xFFFFFFFFFFFFFFLL);
      v38 = sub_100002320(v36, v37, v56);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v39 = DriverEvent.description.getter();
      v41 = v40;
      sub_10036D24C(v32, type metadata accessor for DriverEvent);
      v42 = sub_100002320(v39, v41, v56);

      *(v35 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "Did not find a datapath[%s] to handle %s", v35, 0x16u);
      swift_arrayDestroy();

      return;
    }

    v16 = v64;
    swift_endAccess();
    v17 = v15;

    v18 = v15;
    v19 = v16;
    v20 = a2;
    v21 = v23;
    v22 = v23;
  }

  sub_100343820(v18, v19, v20, v22, v13, WitnessTable);
  sub_100058BA4(v15, v16);

  sub_100344084();
  sub_1003448A8();
  sub_10033D51C();
  v25 = v52;
  sub_10036D334(v21, v52, type metadata accessor for DriverEvent);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10036D24C(v25, type metadata accessor for DriverEvent);
  }

  else
  {
    memcpy(v55, v25, 0x16AuLL);
    memcpy(v56, v25, 0x16AuLL);
    if (sub_100185198(v56) == 8)
    {
      NANBitmap.Channel.operatingClass.getter();
      sub_10036EEBC(v21, v26, v27, v28);
      sub_100339E54();
LABEL_15:
      sub_1003452CC();
      sub_1003544B0();
      sub_1003547A0();
      return;
    }

    sub_1001854F8(v55);
  }

  v29 = v51;
  sub_10036D334(v21, v51, type metadata accessor for DriverEvent);
  if (swift_getEnumCaseMultiPayload())
  {
    v30 = v29;
LABEL_12:
    sub_10036D24C(v30, type metadata accessor for DriverEvent);
    return;
  }

  memcpy(v55, v29, 0x16AuLL);
  memcpy(v56, v29, 0x16AuLL);
  if (sub_100185198(v56) == 9)
  {
    NANBitmap.Channel.operatingClass.getter();
    sub_10034ABD0();
    goto LABEL_15;
  }

  sub_1001854F8(v55);
}

void sub_100344084()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v59[-v7];
  __chkstk_darwin();
  v10 = &v59[-v9];
  __chkstk_darwin();
  v12 = &v59[-v11];
  swift_unownedRetainStrong();
  v13 = sub_100019F94();

  if (v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v29 = *(v1 + 16);
      *(v1 + 16) = 0;

      sub_100352334(v29);
      return;
    }
  }

  v63 = v8;
  v15 = swift_unownedRetainStrong();
  sub_10040CAE8(v15, v16, v17, v18);

  v19 = sub_10033BF54(sub_10036C9C4, sub_10036CA28);

  if (v19)
  {
    v20 = *(v1 + 16);
    if (v20 != 4)
    {
LABEL_8:
      v24 = 4;
LABEL_9:
      *(v1 + 16) = v24;
LABEL_14:
      sub_100352334(v20);
      return;
    }

    v61 = v2;
    v62 = v6;
    sub_100352A28();
    *v10 = 20;
    v21 = enum case for DispatchTimeInterval.seconds(_:);
    (*(v4 + 104))(v10, enum case for DispatchTimeInterval.seconds(_:), v3);
    v22 = static DispatchTimeInterval.< infix(_:_:)(v12, v10);
    v23 = *(v4 + 8);
    v23(v10, v3);
    v23(v12, v3);
    if (v22)
    {
      LOBYTE(v20) = *(v1 + 16);
      goto LABEL_8;
    }
  }

  else
  {
    v61 = v2;
    v62 = v6;
    v21 = enum case for DispatchTimeInterval.seconds(_:);
  }

  v64 = v1;
  swift_unownedRetainStrong();
  sub_10040ED24();

  *v10 = 5;
  v25 = *(v4 + 104);
  v25(v10, v21, v3);
  v26 = static DispatchTimeInterval.< infix(_:_:)(v12, v10);
  v27 = *(v4 + 8);
  v27(v10, v3);
  v27(v12, v3);
  if (v26 || (swift_unownedRetainStrong(), sub_10040E9C0(v12), , *v10 = 5, v25(v10, v21, v3), v28 = static DispatchTimeInterval.< infix(_:_:)(v12, v10), v27(v10, v3), v27(v12, v3), v28))
  {
    LOBYTE(v20) = *(v64 + 16);
    *(v64 + 16) = 3;
    goto LABEL_14;
  }

  v60 = v21;
  v30 = v25;
  v1 = v64;
  if (*(v64 + 16) == 1)
  {
    sub_100352A28();
    *v10 = 8;
    v30(v10, v60, v3);
    v31 = static DispatchTimeInterval.< infix(_:_:)(v12, v10);
    v27(v10, v3);
    v27(v12, v3);
    if (v31)
    {
      LOBYTE(v20) = *(v1 + 16);
      v24 = 2;
      goto LABEL_9;
    }
  }

  sub_100352A28();
  v32 = *(v1 + 16);
  if (v32 <= 1)
  {
    if (*(v1 + 16))
    {
      v33 = 8;
    }

    else
    {
      v33 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (v32 == 2)
  {
    v33 = 1;
  }

  else if (v32 == 3)
  {
    v33 = 5;
  }

  else
  {
    v33 = 20;
  }

  v34 = v62;
  *v62 = v33;
  v30(v34, v60, v3);
  v35 = v63;
  v36 = static DispatchTimeInterval.< infix(_:_:)(v63, v34);
  v27(v34, v3);
  v27(v35, v3);
  v20 = *(v1 + 16);
  if (v20 == 4)
  {
    if (!v36)
    {
      v37 = swift_unownedRetainStrong();
      sub_10040CAE8(v37, v38, v39, v40);

      swift_beginAccess();
      v41 = *(v61 + 80);
      v42 = *(v61 + 88);
      v44 = _s8InstanceCMa(255, v41, v42, v43);
      WitnessTable = swift_getWitnessTable(byte_1004B2574, v44);
      v65 = v41;
      v66 = v44;
      v67 = v42;
      v68 = WitnessTable;
      type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v65);
      NANBitmap.Channel.operatingClass.getter();
      v47 = v46;

      v62 = v59;
      v65 = v47;
      __chkstk_darwin();
      *&v59[-16] = v41;
      *&v59[-8] = v42;
      v48 = type metadata accessor for Dictionary.Values();
      v63 = &protocol conformance descriptor for [A : B].Values;
      swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v48);
      Sequence.forEach(_:)();

      v49 = swift_unownedRetainStrong();
      sub_10040CAE8(v49, v50, v51, v52);

      swift_beginAccess();
      v54 = _s8InstanceCMa_0(255, v41, v42, v53);
      v55 = swift_getWitnessTable("]\r\n", v54);
      v65 = v41;
      v66 = v54;
      v67 = v42;
      v68 = v55;
      type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v65);
      NANBitmap.Channel.operatingClass.getter();
      v57 = v56;

      v62 = v59;
      v65 = v57;
      __chkstk_darwin();
      *&v59[-16] = v41;
      *&v59[-8] = v42;
      v58 = type metadata accessor for Dictionary.Values();
      swift_getWitnessTable(v63, v58);
      Sequence.forEach(_:)();

      LOBYTE(v20) = *(v1 + 16);
LABEL_35:
      v24 = 1;
      goto LABEL_9;
    }
  }

  else if (!v36)
  {
    goto LABEL_35;
  }
}

void sub_1003448A8()
{
  v1 = v0;
  v2 = *v0;
  v63 = type metadata accessor for DispatchTimeInterval();
  v65 = *(v63 - 8);
  __chkstk_darwin();
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = v55 - v5;
  v61 = sub_10005DC58(&unk_1005973E0, &qword_10048D650);
  __chkstk_darwin();
  v62 = v55 - v6;
  sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
  __chkstk_darwin();
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = v55 - v9;
  __chkstk_darwin();
  v66 = v55 - v10;
  __chkstk_darwin();
  v67 = (v55 - v11);
  v12 = qword_100596C90;
  swift_beginAccess();
  v60 = v12;
  v13 = *(v2 + 80);
  v14 = *(v2 + 88);
  v16 = _s17InitiatorInstanceCMa(255, v13, v14, v15);
  WitnessTable = swift_getWitnessTable(byte_1004B0F14, v16);
  v70 = v13;
  v71 = v16;
  v72 = v14;
  v73 = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v70);
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter();
  v70 = v18;
  v68 = v13;
  v69 = v14;
  v19 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v19);
  LOBYTE(v16) = Sequence.contains(where:)();

  v57 = v4;
  v58 = v8;
  v64 = 0;
  if (v16)
  {
    v20 = 1;
  }

  else
  {
    swift_beginAccess();
    v22 = _s17ResponderInstanceCMa(255, v13, v14, v21);
    v23 = swift_getWitnessTable(aM_9, v22);
    v70 = v13;
    v71 = v22;
    v72 = v14;
    v73 = v23;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v70);
    NANBitmap.Channel.operatingClass.getter();
    v55[1] = v55;
    v70 = v24;
    __chkstk_darwin();
    v55[-2] = v13;
    v55[-1] = v14;
    v25 = type metadata accessor for Dictionary.Values();

    swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v25);
    v26 = v64;
    v20 = Sequence.contains(where:)();
    v64 = v26;
  }

  v27 = Dictionary.isEmpty.getter();

  v28 = v67;
  if (v27 & 1) != 0 && (swift_beginAccess(), v30 = _s17ResponderInstanceCMa(255, v13, v14, v29), , v31 = swift_getWitnessTable(aM_9, v30), v70 = v13, v71 = v30, v72 = v14, v73 = v31, type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v70), LOBYTE(v30) = Dictionary.isEmpty.getter(), , (v30))
  {
    v32 = v65;
    v33 = *(v65 + 56);
    v34 = v63;
    v33(v28, 1, 1, v63);
  }

  else
  {
    v32 = v65;
    v35 = (v65 + 104);
    v36 = (v65 + 56);
    if (v20)
    {
      v37 = 1;
    }

    else
    {
      v37 = 3;
    }

    *v28 = v37;
    v34 = v63;
    (*v35)(v28, enum case for DispatchTimeInterval.seconds(_:), v63);
    v33 = *v36;
    (*v36)(v28, 0, 1, v34);
  }

  v38 = v66;
  v39 = qword_100596CC0;
  v40 = *(v1 + qword_100596CC0);
  if (v40)
  {
    (*(v32 + 16))(v66, v40 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval, v34);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v33(v38, v41, 1, v34);
  v42 = *(v61 + 48);
  v43 = v62;
  sub_100012400(v28, v62, &unk_10059B170, &unk_1004B4D70);
  sub_100012400(v38, v43 + v42, &unk_10059B170, &unk_1004B4D70);
  v44 = v38;
  v45 = *(v32 + 48);
  if (v45(v43, 1, v34) != 1)
  {
    v46 = v59;
    sub_100012400(v43, v59, &unk_10059B170, &unk_1004B4D70);
    if (v45(v43 + v42, 1, v34) != 1)
    {
      v52 = v43 + v42;
      v53 = v56;
      (*(v32 + 32))(v56, v52, v34);
      sub_10036D49C(&qword_1005973F0, &type metadata accessor for DispatchTimeInterval, &protocol conformance descriptor for DispatchTimeInterval);
      LODWORD(v63) = dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = *(v32 + 8);
      v54(v53, v34);
      sub_100016290(v66, &unk_10059B170, &unk_1004B4D70);
      v54(v59, v34);
      v28 = v67;
      sub_100016290(v43, &unk_10059B170, &unk_1004B4D70);
      if (v63)
      {
        goto LABEL_26;
      }

LABEL_20:
      v47 = v58;
      sub_100012400(v28, v58, &unk_10059B170, &unk_1004B4D70);
      if (v45(v47, 1, v34) == 1)
      {
        sub_100016290(v28, &unk_10059B170, &unk_1004B4D70);
        v48 = 0;
      }

      else
      {
        v49 = v65;
        v50 = v57;
        (*(v65 + 32))(v57, v47, v34);
        v51 = v64;
        sub_10034EA78(v50, v1, &v70);
        if (v51)
        {
          (*(v49 + 8))(v50, v34);
          __break(1u);
          return;
        }

        (*(v49 + 8))(v50, v34);
        sub_100016290(v67, &unk_10059B170, &unk_1004B4D70);
        v48 = v70;
      }

      *(v1 + v39) = v48;

      return;
    }

    sub_100016290(v66, &unk_10059B170, &unk_1004B4D70);
    (*(v32 + 8))(v46, v34);
LABEL_19:
    sub_100016290(v43, &unk_1005973E0, &qword_10048D650);
    goto LABEL_20;
  }

  sub_100016290(v44, &unk_10059B170, &unk_1004B4D70);
  if (v45(v43 + v42, 1, v34) != 1)
  {
    goto LABEL_19;
  }

  sub_100016290(v43, &unk_10059B170, &unk_1004B4D70);
LABEL_26:
  sub_100016290(v28, &unk_10059B170, &unk_1004B4D70);
}

double sub_1003452CC()
{
  v1 = v0;
  v2 = sub_10005DC58(&qword_1005973B0, &qword_1004B1690);
  __chkstk_darwin();
  v4 = &v12 - v3;
  if (sub_10034A0AC() < 1)
  {
    v7 = *(sub_10033ABB0() + 16);

    if (v7)
    {
      v6 = 4;
    }

    else
    {
      v6 = 6;
    }

    v5 = v1 + *(*v1 + 272);
    swift_beginAccess();
  }

  else
  {
    v5 = v0 + *(*v0 + 272);
    swift_beginAccess();
    v6 = 5;
  }

  sub_100012400(v5, v4, &qword_1005973B0, &qword_1004B1690);
  v4[*(v2 + 36)] = v6;
  sub_10033D3FC(v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = sub_10034A0AC();

    _os_log_impl(&_mh_execute_header, v8, v9, "realtimeDatapathCount %ld", v10, 0xCu);
  }

  else
  {
  }

  return result;
}

void sub_1003454C0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v52 = a2;
  v56 = a1;
  v4 = *v2;
  v5 = v4[11];
  v6 = v4[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin();
  v53 = &v51 - v11;
  swift_getAssociatedTypeWitness();
  v51 = v5;
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v51 - v14;
  v16 = *(v3 + v4[38]);
  swift_unownedRetainStrong();
  v17 = *(v16 + *(*v16 + 800));
  swift_unownedRetainStrong();

  (*(*v17 + 168))(v18);

  v19 = swift_getAssociatedConformanceWitness();
  v20 = (*(v19 + 8))(v12, v19);
  (*(v13 + 8))(v15, v12);
  v57[0] = *WiFiDriverCapabilities.supportsDynamicSDB.unsafeMutableAddressor();
  v67 = v20;
  sub_1000C2A14();

  LOBYTE(v17) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  if ((v17 & 1) == 0)
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v47, v48))
    {
LABEL_11:

      return;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "dynamicSDBSwitch is disabled because device cap doesn't support dynamicSDB'";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v47, v48, v50, v49, 2u);

    goto LABEL_11;
  }

  v21 = v56;
  if ((sub_10034E8A0(SBYTE1(v56), v3) & 1) == 0)
  {
    return;
  }

  swift_unownedRetainStrong();
  v22 = v53;
  WiFiInterface.preferences.getter();

  v23 = v55;
  v24 = Preferences.dynamicSDBSwitch.getter(v55);
  (*(v54 + 8))(v22, v23);
  if ((v24 & 1) == 0)
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_11;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "dynamicSDBSwitch is disabled. To enable dynamicSDBSwitch, set 'wifip2p Preferences dynamicSDBSwitch=true'";
    goto LABEL_10;
  }

  v25 = v52;
  v26 = v52 >> 40;
  v27 = v21;
  v28 = HIDWORD(v52);
  v29 = v52 >> 24;
  v30 = v52 >> 16;
  v31 = v52 >> 8;
  swift_beginAccess();
  v58 = v27;
  v59 = v25;
  v60 = v31;
  v61 = v30;
  v62 = v29;
  v63 = v28;
  v64 = v26;
  v32 = v51;
  v34 = _s17ResponderInstanceCMa(255, v6, v51, v33);
  WitnessTable = swift_getWitnessTable(aM_9, v34);
  v57[0] = v6;
  v57[1] = v34;
  v57[2] = v32;
  v57[3] = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v57);
  sub_10020CB70();
  Dictionary.subscript.getter();
  v36 = v65;
  if (v65)
  {
    v37 = v66;
    v38 = v65;
    swift_endAccess();
    sub_100058BA4(v36, v37);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57[0] = v42;
      *v41 = 16777730;
      *(v41 + 4) = v56;
      *(v41 + 5) = 2080;
      v43 = WiFiAddress.description.getter(v25 & 0xFFFFFFFFFFFFLL);
      v45 = sub_100002320(v43, v44, v57);

      *(v41 + 7) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "dynamicSDBSwitch for responder %hhu peerAddress %s", v41, 0xFu);
      sub_100002A00(v42);
    }

    v46 = v38;
    sub_1002BF508(1);
  }

  else
  {
    swift_endAccess();
  }
}

void sub_100345B68(unint64_t a1)
{
  v2 = a1;
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = a1 >> 40;
  v8 = *v1;
  v9 = HIWORD(a1);
  swift_beginAccess();
  v27 = v2;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  v31 = v6;
  v32 = v7;
  v33 = v9;
  v10 = *(v8 + 80);
  v11 = *(v8 + 88);
  v23 = v10;
  v24 = _s17ResponderInstanceCMa(255, v10, v11, v12);
  v25 = v11;
  WitnessTable = swift_getWitnessTable(aM_9, v24);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v23);
  sub_10020CB70();
  Dictionary.subscript.getter();
  v13 = v34;
  if (v34)
  {
    v14 = v35;
    v15 = v34;
    swift_endAccess();
    sub_100058BA4(v13, v14);
    if (*(v15 + qword_10059B850))
    {
      v16 = v15;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v13;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "nan dapapath terminated with %@ dynamicSDBSwitch back to normal", v19, 0xCu);
        sub_100016290(v20, &qword_10058B780, &qword_100480AC0);
      }

      v22 = v16;
      sub_1002BF508(0);
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
  }
}

void sub_100345DD4(int a1, NSObject *a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t a1))
{
  v331 = a3;
  v332 = a5;
  v333 = a2;
  v309 = a1;
  v6 = *v5;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v319 = &v288 - v7;
  v325 = type metadata accessor for UUID();
  v327 = *(v325 - 8);
  __chkstk_darwin();
  v310 = &v288 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v312 = &v288 - v9;
  v316 = sub_10005DC58(&qword_10058FF00, &qword_1004939D0);
  __chkstk_darwin();
  v317 = &v288 - v10;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v308 = &v288 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v320 = &v288 - v12;
  __chkstk_darwin();
  v314 = &v288 - v13;
  __chkstk_darwin();
  v313 = &v288 - v14;
  __chkstk_darwin();
  v318 = &v288 - v15;
  __chkstk_darwin();
  v326 = &v288 - v16;
  v328 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v321 = &v288 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = *(v6 + 88);
  v329 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v324 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v311 = &v288 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v315 = &v288 - v19;
  __chkstk_darwin();
  v21 = &v288 - v20;
  v22 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v24 = &v288 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v26 = &v288 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = (&v288 - v27);
  type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v30 = &v288 - v29;
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v32 = &v288 - v31;
  __chkstk_darwin();
  v34 = &v288 - v33;
  __chkstk_darwin();
  if ((v333 & 0xC0000000) != 0)
  {
    v333 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v333, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v335 = v49;
      *v48 = 136315138;
      v50 = WiFiAddress.description.getter(v332 & 0xFFFFFFFFFFFFLL);
      v52 = sub_100002320(v50, v51, &v335);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v333, v47, "Failed to parse the action frame contents from %s as a vendor specific NAN action frame", v48, 0xCu);
      sub_100002A00(v49);
    }

    else
    {
      v76 = v333;
    }

    return;
  }

  v306 = v26;
  v302 = v34;
  v304 = v21;
  v303 = v30;
  v307 = v22;
  v305 = v24;
  v53 = v331;
  if (!*(v331 + 16))
  {
    goto LABEL_22;
  }

  v298 = v42;
  v294 = v41;
  v293 = v40;
  v291 = v39;
  v297 = v38;
  v295 = v37;
  v292 = v36;
  v300 = v46;
  v290 = v45;
  v296 = v44;
  v333 = (&v288 - v43);
  v301 = v35;
  v54 = (*(v330 + 80) + 32) & ~*(v330 + 80);
  sub_10036D334(v331 + v54, v28, type metadata accessor for NANAttribute);
  if (swift_getEnumCaseMultiPayload() == 41)
  {
    v55 = *(v28 + 2);
    v57 = *(v28 + 1);
    v56 = *(v28 + 2);
    v58 = *v28;
    v59 = OUI.apple.unsafeMutableAddressor();
    v60 = static OUI.== infix(_:_:)(v58 | (v55 << 16), *v59 | (*(v59 + 2) << 16));
    v61 = v324;
    if (v60)
    {
      v62 = v57;
      v331 = v56;
      v63 = *(*v5 + 304);
      v299 = v5;
      v64 = *(v5 + v63);
      swift_unownedRetainStrong();
      v65 = v305;
      sub_10040CD68(v332 & 0xFFFFFFFFFFFFLL, v305);

      LODWORD(v330) = sub_1002E172C();
      sub_10036D24C(v65, type metadata accessor for NANPeer);
      swift_unownedRetainStrong();
      v66 = *(*v64 + 96);
      swift_beginAccess();
      v67 = v64 + v66;
      v68 = v304;
      v69 = AssociatedTypeWitness;
      v306 = *(v61 + 16);
      v306(v304, v67, AssociatedTypeWitness);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v289 = *(AssociatedConformanceWitness + 32);
      v71 = v289(v69, AssociatedConformanceWitness);
      v304 = *(v61 + 8);
      v304(v68, v69);
      if (v71 < 4u)
      {
        v72 = 0;
        v73 = v321;
LABEL_9:
        v302 = AssociatedConformanceWitness;
        LODWORD(v321) = v72;
        type metadata accessor for BinaryDecoder();
        v74 = v331;
        sub_10000AB0C(v62, v331);
        sub_10036D49C(&qword_10058CFB8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes, protocol conformance descriptor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v75 = v73;
        static BinaryDecoder.decode<A>(_:data:)(v328, v62, v74, v328);
        sub_1000124C8(v62, v74);
        v330 = 0;
        v126 = *v73;
        *v75 = 0;
        swift_unownedRetainStrong();
        v127 = *(*v64 + 96);
        swift_beginAccess();
        v128 = v64 + v127;
        v129 = v315;
        v306(v315, v128, v69);

        v130 = v289(v69, v302);
        sub_1000124C8(v62, v74);
        v304(v129, v69);
        v131 = v333;
        sub_10036D640(v75, v333 + *(v301 + 7), type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v132 = v131;
        LOBYTE(v131->isa) = v130;
        BYTE1(v131->isa) = 0;
        HIDWORD(v131->isa) = v126;
        v133 = v330;
LABEL_87:
        v5 = v299;
        v79 = v307;
        goto LABEL_17;
      }

      v73 = v321;
      if ((v71 & 0xFC) == 4)
      {
        v72 = (v71 & 3) != 0;
        if ((v330 & v72) == 0)
        {
          goto LABEL_9;
        }
      }

      else if ((v330 & 1) == 0)
      {
        v72 = 1;
        goto LABEL_9;
      }

      type metadata accessor for BinaryDecoder();
      v134 = v331;
      sub_10000AB0C(v62, v331);
      sub_10036D49C(&qword_100597550, type metadata accessor for NANAttribute.CustomDeviceInformation, protocol conformance descriptor for NANAttribute.CustomDeviceInformation);
      v135 = v302;
      v133 = 0;
      static BinaryDecoder.decode<A>(_:data:)(v301, v62, v134, v301);
      sub_1000124C8(v62, v134);
      sub_1000124C8(v62, v134);
      v198 = v135;
      v199 = v333;
      sub_10036D640(v198, v333, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v132 = v199;
      goto LABEL_87;
    }

    sub_1000124C8(v57, v56);
  }

  else
  {
    sub_10036D24C(v28, type metadata accessor for NANAttribute);
  }

  v77 = v306;
  sub_10036D334(v53 + v54, v306, type metadata accessor for NANAttribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v79 = v307;
  if (EnumCaseMultiPayload != 40)
  {
    sub_10036D24C(v77, type metadata accessor for NANAttribute);
LABEL_22:
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v335 = v94;
      *v93 = 136315138;
      v95 = WiFiAddress.description.getter(v332 & 0xFFFFFFFFFFFFLL);
      v97 = sub_100002320(v95, v96, &v335);

      *(v93 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v91, v92, "Failed to parse the action frame attributes from %s as a vendor specific NAN action frame", v93, 0xCu);
      sub_100002A00(v94);
    }

    return;
  }

  sub_10036D640(v77, v32, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v80 = v333;
  sub_10036D640(v32, v333, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v132 = v80;
  v133 = 0;
LABEL_17:
  isa_high = HIDWORD(v132->isa);
  v82 = NANAttribute.CustomDeviceInformation.Flags.triggeredWatchdogReset.unsafeMutableAddressor();
  v83 = v325;
  v84 = v326;
  v85 = v327;
  if ((*v82 & ~isa_high) == 0)
  {
    v299 = v5;
    swift_unownedRetainStrong();
    v86 = v305;
    sub_10040CD68(v332 & 0xFFFFFFFFFFFFLL, v305);

    sub_100012400(v86 + *(v79 + 124), v84, &qword_10058F4D0, &qword_100491AB0);
    sub_10036D24C(v86, type metadata accessor for NANPeer);
    v87 = *(v85 + 48);
    v88 = v87(v84, 1, v83);
    v331 = v87;
    if (v88 == 1)
    {
      v89 = 0;
LABEL_20:
      v90 = v319;
LABEL_59:
      type metadata accessor for P2PTimer(0);
      variable initialization expression of AWDLPeer.lastUpdated();
      v137 = type metadata accessor for DispatchTime();
      (*(*(v137 - 8) + 56))(v90, 0, 1, v137);
      sub_100349238(v90);
      v138 = v300;
      sub_10036D334(v333, v300, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v335 = swift_slowAlloc();
        *v141 = 136315394;
        v142 = WiFiAddress.description.getter(v332 & 0xFFFFFFFFFFFFLL);
        v144 = sub_100002320(v142, v143, &v335);

        *(v141 + 4) = v144;
        *(v141 + 12) = 2080;
        LODWORD(v330) = v89;
        if (v89)
        {
          v145 = 0xE800000000000000;
          v146 = 0x676E69686374616DLL;
          v147 = v323;
          v148 = v329;
          v149 = v300;
        }

        else
        {
          v149 = v300;
          v150 = v295;
          sub_10036D334(v300, v295, type metadata accessor for NANAttribute.CustomDeviceInformation);
          v151 = v150 + *(v301 + 7);
          v152 = v314;
          sub_100012400(v151 + v328[10], v314, &qword_10058F4D0, &qword_100491AB0);
          sub_10036D24C(v151, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
          v153 = (v331)(v152, 1, v325);
          sub_100016290(v152, &qword_10058F4D0, &qword_100491AB0);
          if (v153 == 1)
          {
            v146 = 0x676E697373696DLL;
          }

          else
          {
            v146 = 0x686374616D73696DLL;
          }

          if (v153 == 1)
          {
            v145 = 0xE700000000000000;
          }

          else
          {
            v145 = 0xEB00000000676E69;
          }

          v147 = v323;
          v148 = v329;
        }

        sub_10036D24C(v149, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v154 = sub_100002320(v146, v145, &v335);

        *(v141 + 14) = v154;
        _os_log_impl(&_mh_execute_header, v139, v140, "Received SOS watchdog recovery from %s with %s UUID", v141, 0x16u);
        swift_arrayDestroy();

        v83 = v325;
        v85 = v327;
        LOBYTE(v89) = v330;
      }

      else
      {

        sub_10036D24C(v138, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v147 = v323;
        v148 = v329;
      }

      swift_unownedRetainStrong();
      v155 = v320;
      (*(v85 + 56))(v320, 1, 1, v83);
      v156 = v332;
      v157 = v305;
      sub_10040CD68(v332 & 0xFFFFFFFFFFFFLL, v305);
      sub_10036C8F0(v155, v157 + *(v307 + 124));
      sub_10040E430(v157, v156 & 0xFFFFFFFFFFFFLL);

      v158 = qword_100596C90;
      v159 = v299;
      swift_beginAccess();
      v160 = *(v159 + v158);
      v162 = _s17InitiatorInstanceCMa(0, v148, v147, v161);

      WitnessTable = swift_getWitnessTable(byte_1004B0F38, v162);
      sub_10034934C(v160, v156 & 0xFFFFFFFFFFFFLL, v89 & 1, v148, v162, v147, WitnessTable);

      v164 = qword_100596C98;
      swift_beginAccess();
      v165 = *(v159 + v164);
      v167 = _s17ResponderInstanceCMa(0, v148, v147, v166);

      v168 = swift_getWitnessTable(aQ_10, v167);
      sub_10034934C(v165, v156 & 0xFFFFFFFFFFFFLL, v89 & 1, v148, v167, v147, v168);

      sub_1003448A8();
      sub_10033D51C();
      sub_100016290(v326, &qword_10058F4D0, &qword_100491AB0);
      goto LABEL_72;
    }

    v108 = v298;
    sub_10036D334(v333, v298, type metadata accessor for NANAttribute.CustomDeviceInformation);
    v109 = v108 + *(v301 + 7);
    v110 = v83;
    v111 = v318;
    sub_100012400(v109 + v328[10], v318, &qword_10058F4D0, &qword_100491AB0);
    sub_10036D24C(v109, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v112 = *(v316 + 48);
    v113 = v317;
    sub_100012400(v111, v317, &qword_10058F4D0, &qword_100491AB0);
    sub_100012400(v84, v113 + v112, &qword_10058F4D0, &qword_100491AB0);
    if (v87(v113, 1, v110) == 1)
    {
      sub_100016290(v111, &qword_10058F4D0, &qword_100491AB0);
      v114 = v87((v113 + v112), 1, v110);
      v90 = v319;
      v83 = v110;
      v85 = v327;
      if (v114 == 1)
      {
        sub_100016290(v113, &qword_10058F4D0, &qword_100491AB0);
        v89 = 1;
        goto LABEL_59;
      }
    }

    else
    {
      v136 = v313;
      sub_100012400(v113, v313, &qword_10058F4D0, &qword_100491AB0);
      v83 = v110;
      if (v87((v113 + v112), 1, v110) != 1)
      {
        v85 = v327;
        v194 = v113 + v112;
        v195 = v312;
        (*(v327 + 32))(v312, v194, v83);
        sub_10036D49C(&qword_100597540, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v196 = dispatch thunk of static Equatable.== infix(_:_:)();
        v197 = *(v85 + 8);
        v197(v195, v83);
        sub_100016290(v318, &qword_10058F4D0, &qword_100491AB0);
        v197(v136, v83);
        v89 = v196;
        sub_100016290(v113, &qword_10058F4D0, &qword_100491AB0);
        goto LABEL_20;
      }

      sub_100016290(v318, &qword_10058F4D0, &qword_100491AB0);
      v85 = v327;
      (*(v327 + 8))(v136, v83);
      v90 = v319;
    }

    sub_100016290(v113, &qword_10058FF00, &qword_1004939D0);
    v89 = 0;
    goto LABEL_59;
  }

  v330 = v133;
  v98 = NANAttribute.CustomDeviceInformation.Flags.linkConditionFeedbackRequest.unsafeMutableAddressor();
  v99 = v328;
  if ((*v98 & ~isa_high) == 0)
  {
    v100 = qword_100596C80;
    swift_beginAccess();
    v101 = *(v5 + v100);
    v102 = 1 << *(v101 + 32);
    v103 = -1;
    if (v102 < 64)
    {
      v103 = ~(-1 << v102);
    }

    v99 = v103 & *(v101 + 64);
    v104 = (v102 + 63) >> 6;

    v85 = 0;
    v83 = &qword_10059BAF8;
    while (v99)
    {
LABEL_34:
      v106 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
      v107 = (*(v101 + 56) + ((v85 << 10) | (16 * v106)));
      v5 = *(*v107 + qword_10059BAF8);
      if (v5)
      {
        v84 = *v107;

        sub_100424F8C(v332 & 0xFFFFFFFFFFFFLL);
      }
    }

    while (1)
    {
      v105 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v105 >= v104)
      {
        goto LABEL_113;
      }

      v99 = *(v101 + 64 + 8 * v105);
      ++v85;
      if (v99)
      {
        v85 = v105;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v115 = v333;
  v116 = v303;
  sub_10036D334(v333, v303, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v117 = v116 + *(v301 + 7);
  v118 = *(v117 + *(v99 + 52));

  sub_10036D24C(v117, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if (v118)
  {

    v119 = qword_100596C88;
    swift_beginAccess();
    v120 = *(v5 + v119);
    v121 = 1 << *(v120 + 32);
    v122 = -1;
    if (v121 < 64)
    {
      v122 = ~(-1 << v121);
    }

    v99 = v122 & *(v120 + 64);
    v104 = (v121 + 63) >> 6;

    v85 = 0;
    v83 = &qword_10059B8B0;
    while (v99)
    {
LABEL_51:
      v124 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
      v125 = (*(v120 + 56) + ((v85 << 10) | (16 * v124)));
      v5 = *(*v125 + qword_10059B8B0);
      if (v5)
      {
        v84 = *v125;

        sub_100318C0C(v332 & 0xFFFFFFFFFFFFLL, v333);
      }
    }

    while (1)
    {
      v123 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        goto LABEL_117;
      }

      if (v123 >= v104)
      {
        goto LABEL_113;
      }

      v99 = *(v120 + 64 + 8 * v123);
      ++v85;
      if (v99)
      {
        v85 = v123;
        goto LABEL_51;
      }
    }
  }

  v169 = v294;
  sub_10036D334(v115, v294, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v170 = v169 + *(v301 + 7);
  v171 = *(v170 + *(v99 + 56));

  sub_10036D24C(v170, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if (v171)
  {

    v172 = qword_100596C80;
    swift_beginAccess();
    v173 = *(v5 + v172);
    v176 = *(v173 + 64);
    v175 = v173 + 64;
    v174 = v176;
    v177 = 1 << *(*(v5 + v172) + 32);
    v178 = -1;
    if (v177 < 64)
    {
      v178 = ~(-1 << v177);
    }

    v179 = v178 & v174;
    v180 = (v177 + 63) >> 6;

    v182 = 0;
    v183 = v297;
    v329 = v181;
    while (v179)
    {
LABEL_82:
      v185 = __clz(__rbit64(v179));
      v179 &= v179 - 1;
      v186 = (*(v181 + 56) + ((v182 << 10) | (16 * v185)));
      v187 = *v186;
      if (*(*v186 + qword_10059BAF8))
      {
        v188 = v183;
        sub_10036D334(v333, v183, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v331 = v188 + *(v301 + 7);
        v189 = (v331 + v328[14]);
        v190 = *v189;
        v191 = v189[1];
        v192 = v189[2];

        v193 = v187;

        sub_10036D24C(v331, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        if (!v190)
        {
          goto LABEL_129;
        }

        sub_1004252D0(v332 & 0xFFFFFFFFFFFFLL, v190, v191, v192);

        v183 = v297;
        v181 = v329;
      }
    }

    while (1)
    {
      v184 = v182 + 1;
      if (__OFADD__(v182, 1))
      {
        break;
      }

      if (v184 >= v180)
      {
        goto LABEL_113;
      }

      v179 = *(v175 + 8 * v184);
      ++v182;
      if (v179)
      {
        v182 = v184;
        goto LABEL_82;
      }
    }

    __break(1u);
  }

  else
  {
    v200 = v293;
    sub_10036D334(v115, v293, type metadata accessor for NANAttribute.CustomDeviceInformation);
    v201 = v200 + *(v301 + 7);
    v202 = (v201 + *(v99 + 60));
    v203 = *v202;
    v204 = v202[1];
    sub_10005D67C(*v202, v204);
    sub_10036D24C(v201, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    if (v204 >> 60 == 15)
    {
      v205 = v296;
      sub_10036D334(v115, v296, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v206 = v205 + *(v301 + 7);
      v207 = *(v206 + *(v99 + 44));

      sub_10036D24C(v206, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
      v208 = *(v207 + 16);

      if (!v208)
      {
        v252 = Logger.logObject.getter();
        v253 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v252, v253))
        {
          v254 = swift_slowAlloc();
          v255 = swift_slowAlloc();
          v335 = v255;
          *v254 = 136315138;
          v256 = WiFiAddress.description.getter(v332 & 0xFFFFFFFFFFFFLL);
          v258 = sub_100002320(v256, v257, &v335);

          *(v254 + 4) = v258;
          _os_log_impl(&_mh_execute_header, v252, v253, "No keep alive datapath identifers provided skipping update from %s", v254, 0xCu);
          sub_100002A00(v255);
        }

        goto LABEL_123;
      }

      v299 = v5;
      v5 = v320;
      v209 = v330;
      v210 = v296;
      v104 = v310;
      if (((1 << v309) & 0x6E) != 0)
      {
LABEL_120:
        v332 = type metadata accessor for NANAttribute.CustomDeviceInformation;
        v261 = v333;
        v262 = v210;
        sub_10036D334(v333, v210, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v263 = v301;
        v264 = v262 + *(v301 + 7);
        v265 = *(v264 + *(v99 + 44));

        sub_10036D24C(v264, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v266 = sub_100475AE8(v265);

        __chkstk_darwin();
        v267 = v299;
        *(&v288 - 2) = v299;
        *(&v288 - 1) = v261;
        sub_1004483BC(sub_10036D39C, (&v288 - 4), v266);

        v268 = *(v267 + *(*v267 + 304));
        swift_unownedRetainStrong();
        v269 = *(*v268 + 96);
        swift_beginAccess();
        v270 = v324;
        v271 = v268 + v269;
        v272 = v311;
        v273 = AssociatedTypeWitness;
        (*(v324 + 16))(v311, v271, AssociatedTypeWitness);

        v274 = v292;
        sub_10036D334(v261, v292, v332);
        v275 = v274 + *(v263 + 7);
        v276 = *(v275 + *(v99 + 44));

        sub_10036D24C(v275, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v277 = swift_getAssociatedConformanceWitness();
        (*(v277 + 504))(v276, v273, v277);
        if (!v209)
        {
          (*(v270 + 8))(v272, v273);

          goto LABEL_72;
        }

        (*(v270 + 8))(v272, v273);

        v278 = v290;
        sub_10036D334(v261, v290, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v252 = Logger.logObject.getter();
        v279 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v252, v279))
        {

          sub_10036D24C(v278, type metadata accessor for NANAttribute.CustomDeviceInformation);
          goto LABEL_72;
        }

        v280 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        v334 = v281;
        *v280 = 136315138;
        v282 = v296;
        sub_10036D334(v278, v296, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v283 = v282 + *(v301 + 7);

        sub_10036D24C(v283, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v284 = Array.description.getter();
        v286 = v285;

        sub_10036D24C(v278, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v287 = sub_100002320(v284, v286, &v334);

        *(v280 + 4) = v287;
        _os_log_impl(&_mh_execute_header, v252, v279, "Failed to notify driver of datapath identifiers received in keep alive: %s", v280, 0xCu);
        sub_100002A00(v281);

LABEL_123:

LABEL_72:
        sub_10036D24C(v333, type metadata accessor for NANAttribute.CustomDeviceInformation);
        return;
      }

      v211 = v291;
      sub_10036D334(v333, v291, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v212 = v211 + *(v301 + 7);
      v84 = v308;
      sub_100012400(v212 + *(v99 + 40), v308, &qword_10058F4D0, &qword_100491AB0);
      sub_10036D24C(v212, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
      if ((*(v85 + 48))(v84, 1, v83) == 1)
      {
        sub_100016290(v84, &qword_10058F4D0, &qword_100491AB0);
LABEL_119:
        v210 = v296;
        goto LABEL_120;
      }

LABEL_118:
      (*(v85 + 32))(v104, v84, v83);
      swift_unownedRetainStrong();
      (*(v85 + 16))(v5, v104, v83);
      (*(v85 + 56))(v5, 0, 1, v83);
      v259 = v332;
      v260 = v305;
      sub_10040CD68(v332 & 0xFFFFFFFFFFFFLL, v305);
      sub_10036C8F0(v5, v260 + *(v307 + 124));
      sub_10040E430(v260, v259 & 0xFFFFFFFFFFFFLL);
      v209 = v330;

      (*(v85 + 8))(v104, v83);
      goto LABEL_119;
    }

    sub_100017554(v203, v204);
    v213 = qword_100596C80;
    swift_beginAccess();
    v214 = *(v5 + v213);
    v217 = *(v214 + 64);
    v216 = v214 + 64;
    v215 = v217;
    v218 = 1 << *(*(v5 + v213) + 32);
    v219 = -1;
    if (v218 < 64)
    {
      v219 = ~(-1 << v218);
    }

    v220 = v219 & v215;
    v221 = (v218 + 63) >> 6;
    v331 = *(v5 + v213);

    v222 = 0;
    v299 = v5;
    while (v220)
    {
LABEL_101:
      v224 = __clz(__rbit64(v220));
      v220 &= v220 - 1;
      v225 = (*(v331 + 56) + ((v222 << 10) | (16 * v224)));
      v226 = *v225;
      if (*(*v225 + qword_10059BAF8))
      {
        v227 = v296;
        sub_10036D334(v333, v296, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v228 = v227 + *(v301 + 7);
        v229 = (v228 + v328[15]);
        v230 = *v229;
        v231 = v229[1];
        v232 = v226;

        sub_10005D67C(v230, v231);
        sub_10036D24C(v228, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v233 = v230;
        sub_100426FEC(v332 & 0xFFFFFFFFFFFFLL, v230, v231);
        v5 = v299;

        sub_100017554(v233, v231);
      }
    }

    while (1)
    {
      v223 = v222 + 1;
      if (__OFADD__(v222, 1))
      {
        break;
      }

      if (v223 >= v221)
      {

        v234 = qword_100596C88;
        swift_beginAccess();
        v235 = *(v5 + v234);
        v236 = v235 + 64;
        v237 = 1 << *(v235 + 32);
        v238 = -1;
        if (v237 < 64)
        {
          v238 = ~(-1 << v237);
        }

        v239 = v238 & *(v235 + 64);
        v240 = (v237 + 63) >> 6;

        v241 = 0;
        v331 = v235;
        while (v239)
        {
LABEL_111:
          v243 = __clz(__rbit64(v239));
          v239 &= v239 - 1;
          v244 = (*(v235 + 56) + ((v241 << 10) | (16 * v243)));
          v245 = *v244;
          if (*(*v244 + qword_10059B8B0))
          {
            v246 = v296;
            sub_10036D334(v333, v296, type metadata accessor for NANAttribute.CustomDeviceInformation);
            v247 = v246 + *(v301 + 7);
            v248 = (v247 + v328[15]);
            v249 = *v248;
            v250 = v248[1];
            v251 = v245;

            sub_10005D67C(v249, v250);
            sub_10036D24C(v247, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
            sub_10031C6BC(v332 & 0xFFFFFFFFFFFFLL, v249, v250);
            v235 = v331;

            sub_100017554(v249, v250);
          }
        }

        while (1)
        {
          v242 = v241 + 1;
          if (__OFADD__(v241, 1))
          {
            goto LABEL_128;
          }

          if (v242 >= v240)
          {
LABEL_113:

            goto LABEL_72;
          }

          v239 = *(v236 + 8 * v242);
          ++v241;
          if (v239)
          {
            v241 = v242;
            goto LABEL_111;
          }
        }
      }

      v220 = *(v216 + 8 * v223);
      ++v222;
      if (v220)
      {
        v222 = v223;
        goto LABEL_101;
      }
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
}

void sub_1003486F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void), const char *a5)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a4(0, *(*a2 + 80), *(*a2 + 88));
  WitnessTable = swift_getWitnessTable(a5, v10);
  sub_100343820(v8, v9, a2, a3, v10, WitnessTable);
}

uint64_t sub_1003487A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a4;
  type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  swift_projectBox();
  v10 = *(v9 + 88);
  v11 = *(a7 + 8);
  v15[0] = *(v9 + 80);
  v15[1] = a6;
  v15[2] = v10;
  v15[3] = v11;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v15);
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter();
  v15[0] = v12;
  v13 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v13);
  Sequence.forEach(_:)();
}

void sub_10034890C(uint64_t *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v76 = a5;
  v71 = a3;
  v12 = *a4;
  v69 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v67 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = &v60 - v14;
  v70 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  __chkstk_darwin();
  v61 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(v12 + 88);
  v77 = a4;
  v63 = *(v12 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v62 = &v60 - v16;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v18 = &v60 - v17;
  v19 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin();
  v24 = &v60 - v23;
  v25 = *a1;
  v73 = a1[1];
  v26 = (*(a7 + 24))(a6, a7, v22);
  v75 = a7;
  v72 = v25;
  if (!sub_10036DCD0(a6, a7))
  {
    goto LABEL_4;
  }

  v60 = a6;
  swift_beginAccess();
  v27 = *a2;

  v28 = sub_100447BC4(v26 & 0xFFFFFFFFFFFFLL, v27);

  if (v28)
  {
    a6 = v60;
LABEL_4:
    v29 = v77;
    goto LABEL_15;
  }

  swift_beginAccess();
  sub_10046F438(v78, v26 & 0xFFFFFFFFFFFFLL);
  swift_endAccess();
  v29 = v77;
  v30 = *(v77 + *(*v77 + 304));
  swift_unownedRetainStrong();
  sub_10040CD68(v26 & 0xFFFFFFFFFFFFLL, v24);

  sub_100012400(&v24[*(v19 + 120)], v18, &qword_10058F4D0, &qword_100491AB0);
  sub_10036D24C(v24, type metadata accessor for NANPeer);
  v31 = v71;
  swift_beginAccess();
  v32 = v70;
  sub_10036C8F0(v18, v31 + *(v70 + 28) + *(v69 + 40));
  swift_unownedRetainStrong();
  v69 = v26;
  sub_10040CD68(v26 & 0xFFFFFFFFFFFFLL, v21);

  v33 = sub_1002E172C();
  sub_10036D24C(v21, type metadata accessor for NANPeer);
  if (v33 && (swift_unownedRetainStrong(), v34 = *(*v30 + 96), swift_beginAccess(), v35 = v65, v36 = v62, v37 = AssociatedTypeWitness, (*(v65 + 16))(v62, v30 + v34, AssociatedTypeWitness), , AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), LODWORD(v34) = (*(AssociatedConformanceWitness + 32))(v37, AssociatedConformanceWitness), (*(v35 + 8))(v36, v37), v34 >= 5))
  {
    swift_beginAccess();
    v44 = v61;
    sub_10036D334(v31, v61, type metadata accessor for NANAttribute.CustomDeviceInformation);
    v41 = NANActionFrame.init(customDeviceInformation:)(v44);
    v43 = v45;
  }

  else
  {
    swift_beginAccess();
    v39 = v68;
    sub_10036D334(v31 + *(v32 + 28), v68, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    *v39 = *(v31 + 4);
    v40 = v67;
    sub_10036D334(v39, v67, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v41 = NANActionFrame.init(customAttributes:)(v40);
    v43 = v42;
    sub_10036D24C(v39, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  }

  v46 = v74;
  v47 = swift_unownedRetainStrong();
  sub_10040DD50(v47, v48, v49, v50);

  v79[0] = 0;
  v79[1] = v41;
  v79[2] = v43;
  v79[3] = 0;
  v80 = 2;
  sub_1003A8260(v79, v69 & 0xFFFFFFFFFFFFLL, 1, 0, 0, 0, 1, 3, 3000, NANBitmap.Channel.operatingClass.getter, 0);
  if (v46)
  {
    sub_100048C4C(v41, v43, 0);

    swift_errorRetain();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v81 = v55;
      *v53 = 136315394;
      v56 = WiFiAddress.description.getter(v69 & 0xFFFFFFFFFFFFLL);
      v58 = sub_100002320(v56, v57, &v81);

      *(v53 + 4) = v58;
      v29 = v77;
      *(v53 + 12) = 2112;
      swift_errorRetain();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v59;
      *v54 = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "Failed to transmit SOS watchdog recovery to %s because %@", v53, 0x16u);
      sub_100016290(v54, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v55);
    }

    else
    {
    }
  }

  else
  {
    sub_100048C4C(v41, v43, 0);
  }

  a6 = v60;
LABEL_15:
  sub_100343820(v72, v73, v29, v76, a6, *(v75 + 8));
}

uint64_t sub_1003491A8(uint64_t a1)
{
  v2 = *(type metadata accessor for NANPeer(0) + 120);
  sub_100016290(a1 + v2, &qword_10058F4D0, &qword_100491AB0);
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_100349238(uint64_t a1)
{
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v4 = &v7[-v3];
  v5 = qword_100596E50;
  swift_beginAccess();
  sub_100012400(v1 + v5, v4, &unk_100597330, &unk_100481FA0);
  swift_beginAccess();
  sub_10036D434(a1, v1 + v5, &unk_100597330, &unk_100481FA0);
  swift_endAccess();
  sub_1003530B8(v4);
  sub_100016290(a1, &unk_100597330, &unk_100481FA0);
  return sub_100016290(v4, &unk_100597330, &unk_100481FA0);
}

uint64_t sub_10034934C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a7 + 8);
  v12[0] = a4;
  v12[1] = a5;
  v12[2] = a6;
  v12[3] = v7;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v12);
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter();
  v12[0] = v8;
  v9 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v9);
  v12[0] = Sequence.filter(_:)();
  v10 = type metadata accessor for Array();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v10);
  Sequence.forEach(_:)();
}

uint64_t sub_100349510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  v11 = (*(a7 + 24))(a5, a7, a3, a4);
  if (static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v11 & 0xFFFFFFFFFFFFLL, a2 & 0xFFFFFFFFFFFFLL))
  {
    v12 = !sub_10036DCD0(a5, a7) | v9;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_1003495A4(unsigned __int8 *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v34 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  swift_beginAccess();
  v32 = v5;
  v41 = v4;
  v42 = v5;
  v30 = v7;
  v31 = v6;
  v43 = v6;
  v10 = v9;
  v44 = v7;
  v45 = v34;
  v46 = v8;
  v47 = v9;
  v11 = *(v3 + 80);
  v12 = *(v3 + 88);
  v35 = v11;
  v36 = _s17InitiatorInstanceCMa(255, v11, v12, v13);
  v37 = v12;
  WitnessTable = swift_getWitnessTable(byte_1004B0F14, v36);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v35);
  sub_10020CB70();
  Dictionary.subscript.getter();
  v14 = v39;
  if (v39)
  {
    v15 = v40;
    v16 = v39;
    swift_endAccess();
    sub_100058BA4(v14, v15);
    sub_10032CD0C();
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    v41 = v4;
    v42 = v5;
    v43 = v31;
    v44 = v7;
    v45 = v34;
    v46 = v8;
    v47 = v9;
    v18 = _s17ResponderInstanceCMa(255, v11, v12, v17);
    v19 = swift_getWitnessTable(aM_9, v18);
    v35 = v11;
    v36 = v18;
    v37 = v12;
    WitnessTable = v19;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v35);
    Dictionary.subscript.getter();
    v20 = v39;
    if (v39)
    {
      v21 = v40;
      v22 = v39;
      swift_endAccess();
      sub_100058BA4(v20, v21);
      sub_1002C9500(a3);
    }

    else
    {
      swift_endAccess();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v35 = v26;
        *v25 = 136315138;
        v27 = NANPeerServiceIdentifier.description.getter(v4 | (v32 << 8) | (v31 << 16) | (v30 << 24) | (v34 << 32) | (v8 << 40) | (v10 << 48));
        v29 = sub_100002320(v27, v28, &v35);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "Received a keep alive for a datapath: %s, but datapath not found", v25, 0xCu);
        sub_100002A00(v26);
      }
    }
  }
}

uint64_t sub_100349934(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink(255, *(v2 + 80), *(v2 + 88), v3);
  sub_1002CAFC4();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  return sub_10036C960(v5);
}

uint64_t sub_100349A14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 8);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = v6;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v11);
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter();
  v11[0] = v7;
  v8 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v8);
  v9 = Sequence.contains(where:)();

  return v9 & 1;
}

uint64_t sub_100349B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 24))(a4, a6, a3);
  if (static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v9 & 0xFFFFFFFFFFFFLL, a2 & 0xFFFFFFFFFFFFLL))
  {
    return (*(a6 + 40))(a4, a6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100349C0C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = _s17InitiatorInstanceCMa(255, v2, v3, v4);

  v12 = v2;
  v13 = v5;
  v14 = v3;
  WitnessTable = swift_getWitnessTable(byte_1004B0F14, v5);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v12);
  sub_10020CB70();
  v6 = Dictionary.count.getter();

  swift_beginAccess();
  v8 = _s17ResponderInstanceCMa(255, v2, v3, v7);

  v9 = swift_getWitnessTable(aM_9, v8);
  v12 = v2;
  v13 = v8;
  v14 = v3;
  WitnessTable = v9;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v12);
  v10 = Dictionary.count.getter();

  result = v6 + v10;
  if (__OFADD__(v6, v10))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100349DAC(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  type metadata accessor for NANDiscoveryEngine.UnownedDeviceLink(0, *(v2 + 80), *(v2 + 88), v3);
  sub_1002CAFC4();
  Dictionary.subscript.getter();
  if (v5)
  {
    swift_unownedRetain();
    swift_endAccess();
    sub_10036C960(v5);
    swift_unownedRetainStrong();
    swift_unownedRelease();
  }

  else
  {
    swift_endAccess();
  }

  return v5;
}

id sub_100349E9C(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  v21 = a1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v17 = v4;
  v18 = _s8InstanceCMa(255, v4, v5, v6);
  v19 = v5;
  WitnessTable = swift_getWitnessTable(byte_1004B2574, v18);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v17);
  Dictionary.subscript.getter();
  v7 = v22;
  if (v22)
  {
    v8 = v23;
    v9 = v22;
    swift_endAccess();
    sub_100058BA4(v7, v8);
    v10 = v9[qword_10059BAF0];
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    v21 = a1;
    v12 = _s8InstanceCMa_0(255, v4, v5, v11);
    v13 = swift_getWitnessTable("]\r\n", v12);
    v17 = v4;
    v18 = v12;
    v19 = v5;
    WitnessTable = v13;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v17);
    Dictionary.subscript.getter();
    v10 = v22;
    if (v22)
    {
      v14 = v23;
      v15 = v22;
      swift_endAccess();
      sub_100058BA4(v10, v14);
      v10 = v15[qword_10059B898];
    }

    else
    {
      swift_endAccess();
    }
  }

  return v10;
}

uint64_t sub_10034A0AC()
{
  v1 = *v0;
  v2 = qword_100596C90;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v7 = _s17InitiatorInstanceCMa(0, v4, v5, v6);

  WitnessTable = swift_getWitnessTable(byte_1004B0F38, v7);
  v9 = sub_10034A210(v3, v4, v7, v5, WitnessTable);

  v10 = qword_100596C98;
  swift_beginAccess();
  v11 = *(v0 + v10);
  v13 = _s17ResponderInstanceCMa(0, v4, v5, v12);

  v14 = swift_getWitnessTable(aQ_10, v13);
  v15 = sub_10034A210(v11, v4, v13, v5, v14);

  result = v9 + v15;
  if (__OFADD__(v9, v15))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10034A210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = v5;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v10);
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter();
  v10[0] = v6;
  v7 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v7);
  Sequence.filter(_:)();
  v8 = Array.count.getter();

  return v8;
}

uint64_t sub_10034A334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = v5;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v9);
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter();
  v9[0] = v6;
  v7 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v7);
  LOBYTE(v7) = Sequence.contains(where:)();

  return v7 & 1;
}

void sub_10034A4D4(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v20 = a1;
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  v16 = v8;
  v17 = _s8InstanceCMa(255, v8, v9, v10);
  v18 = v9;
  WitnessTable = swift_getWitnessTable(byte_1004B2574, v17);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v16);
  Dictionary.subscript.getter();
  v11 = v21;
  if (v21)
  {
    v12 = v22;
    v13 = v21;
    swift_endAccess();
    sub_100058BA4(v11, v12);
    sub_100390FDC(a3, a2 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    swift_endAccess();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Did not find a service to notify multicast sender error", v15, 2u);
    }
  }
}

void sub_10034A68C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  swift_beginAccess();
  v22 = a1;
  v10 = *(v9 + 80);
  v11 = *(v9 + 88);
  v18 = v10;
  v19 = _s8InstanceCMa(255, v10, v11, v12);
  v20 = v11;
  WitnessTable = swift_getWitnessTable(byte_1004B2574, v19);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v18);
  Dictionary.subscript.getter();
  v13 = v23;
  if (v23)
  {
    v14 = v24;
    v15 = v23;
    swift_endAccess();
    sub_100058BA4(v13, v14);
    sub_10039106C(a3, a4, a2 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    swift_endAccess();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Did not find a service to notify receiving data blob", v17, 2u);
    }
  }
}

void sub_10034A84C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v7 = *v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v13 = *v12;
  *v11 = *v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v15)
  {
    v40 = a3;
    v16 = HIWORD(a1);
    v17 = a1 >> 40;
    v18 = HIDWORD(a1);
    v19 = a1 >> 24;
    v20 = qword_100596C90;
    swift_beginAccess();
    v37 = *(v4 + v20);
    v38 = a1 >> 8;
    v46 = a1;
    v39 = a1 >> 16;
    v47 = BYTE2(a1);
    v48 = BYTE3(a1);
    v49 = BYTE4(a1);
    v50 = BYTE5(a1);
    v51 = BYTE6(a1);
    v21 = *(v7 + 80);
    v22 = *(v7 + 88);
    v24 = _s17InitiatorInstanceCMa(255, v21, v22, v23);
    WitnessTable = swift_getWitnessTable(byte_1004B0F14, v24);
    v42 = v21;
    v43 = v24;
    v44 = v22;
    v45 = WitnessTable;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v42);
    v37 = sub_10020CB70();
    Dictionary.subscript.getter();
    v26 = v52;
    if (v52)
    {
      v27 = v53;
      v28 = v52;
      v36 = a1 >> 24;
      v16 = v28;
      swift_endAccess();
      sub_100058BA4(v26, v27);
      v29 = v40;
      sub_10032C348(v41, v40);

      LOBYTE(v16) = BYTE6(a1);
      LOBYTE(v17) = BYTE5(a1);
      LOBYTE(v18) = BYTE4(a1);
      LOBYTE(v19) = v36;
    }

    else
    {
      swift_endAccess();
      v29 = v40;
    }

    swift_beginAccess();
    LOBYTE(v46) = a1;
    HIBYTE(v46) = v38;
    v47 = v39;
    v48 = v19;
    v49 = v18;
    v50 = v17;
    v51 = v16;
    v31 = _s17ResponderInstanceCMa(255, v21, v22, v30);
    v32 = swift_getWitnessTable(aM_9, v31);
    v42 = v21;
    v43 = v31;
    v44 = v22;
    v45 = v32;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v42);
    Dictionary.subscript.getter();
    v33 = v52;
    if (v52)
    {
      v34 = v53;
      v35 = v52;
      swift_endAccess();
      sub_100058BA4(v33, v34);
      sub_1002C938C(v41, v29);
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_10034ABD0()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v149 = *(v2 - 8);
  __chkstk_darwin();
  v147 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v142 - v4;
  __chkstk_darwin();
  v148 = &v142 - v5;
  __chkstk_darwin();
  v144 = (&v142 - v6);
  __chkstk_darwin();
  v8 = (&v142 - v7);
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v10 = &v142 - v9;
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v143 = &v142 - v15;
  v16 = *(v1 + 88);
  v150 = *(v1 + 80);
  v153 = v16;
  v152 = type metadata accessor for NANDiscoveryEngine.BeaconScheduler.Reason(0, v150, v16, v17);
  v164 = Array.init()();
  v145 = *NANTimeUnit.defaultDiscoveryBeaconPeriod.unsafeMutableAddressor();
  v151 = v0;
  v18 = *(v0 + qword_100596E60);
  v19 = swift_unownedRetainStrong();
  v23 = sub_10040CAE8(v19, v20, v21, v22);

  v24 = *(v23 + qword_100596CF0);

  v25 = *(v24 + 16);

  if (v25 > 1)
  {
    v26 = v150;
    if (v25 != 2)
    {
      if (v25 != 3)
      {
        v27 = 260;
        goto LABEL_11;
      }

      v145 = *NANTimeUnit.initialDiscoveryBeaconPeriod.unsafeMutableAddressor();
    }

    v27 = 256;
LABEL_11:
    LOWORD(v159) = v27;
    type metadata accessor for Array();
    Array.append(_:)();
LABEL_12:
    v29 = qword_100596E50;
    v30 = v151;
    swift_beginAccess();
    sub_100012400(v30 + v29, v10, &unk_100597330, &unk_100481FA0);
    v31 = v12;
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100016290(v10, &unk_100597330, &unk_100481FA0);
      v32 = v153;
    }

    else
    {
      v33 = *(v12 + 32);
      v34 = v143;
      v33(v143, v10, v11);
      type metadata accessor for P2PTimer(0);
      variable initialization expression of AWDLPeer.lastUpdated();
      DispatchTime.distance(to:)();
      v35 = *(v31 + 8);
      v142 = v31 + 8;
      v35(v14, v11);
      v36 = v144;
      *v144 = 2;
      v37 = v149;
      (*(v149 + 13))(v36, enum case for DispatchTimeInterval.seconds(_:), v2);
      v38 = static DispatchTimeInterval.< infix(_:_:)(v8, v36);
      v39 = *(v37 + 1);
      v39(v36, v2);
      v39(v8, v2);
      if (v38)
      {
        LOWORD(v159) = 257;
        type metadata accessor for Array();
        Array.append(_:)();
      }

      v35(v34, v11);
      v32 = v153;
      v26 = v150;
    }

    v40 = swift_unownedRetainStrong();
    sub_10040CAE8(v40, v41, v42, v43);

    swift_beginAccess();

    v45 = _s17InitiatorInstanceCMa(0, v26, v32, v44);
    WitnessTable = swift_getWitnessTable(byte_1004B0F38, v45);
    v47 = v26;
    v48 = v146;
    sub_100353404(v47, v45, v32, WitnessTable, v146);

    v49 = swift_unownedRetainStrong();
    sub_10040CAE8(v49, v50, v51, v52);

    swift_beginAccess();

    v54 = _s17ResponderInstanceCMa(0, v47, v32, v53);
    v55 = swift_getWitnessTable(aQ_10, v54);
    v56 = v147;
    v57 = v47;
    sub_100353404(v47, v54, v32, v55, v147);

    v58 = static DispatchTimeInterval.< infix(_:_:)(v56, v48);
    v59 = v149;
    v60 = *(v149 + 1);
    v61 = !v58;
    if (v58)
    {
      v62 = v48;
    }

    else
    {
      v62 = v56;
    }

    if (v61)
    {
      v63 = v48;
    }

    else
    {
      v63 = v56;
    }

    v60(v62, v2);
    v64 = v148;
    (*(v59 + 4))(v148, v63, v2);
    *v8 = 256;
    (*(v59 + 13))(v8, enum case for DispatchTimeInterval.milliseconds(_:), v2);
    v65 = static DispatchTimeInterval.< infix(_:_:)(v64, v8);
    v60(v8, v2);
    v60(v64, v2);
    if (v65)
    {
      LOWORD(v159) = 259;
      type metadata accessor for Array();
      Array.append(_:)();
    }

    v66 = swift_unownedRetainStrong();
    sub_10040CAE8(v66, v67, v68, v69);

    v70 = sub_10034A0AC();

    v71 = v57;
    if (v70 >= 1)
    {
      v72 = swift_unownedRetainStrong();
      v76 = sub_10040CAE8(v72, v73, v74, v75);

      v77 = *(v76 + qword_100596CA8);

      if (v77 <= 6 && ((1 << v77) & 0x66) != 0)
      {
        LOWORD(v159) = 258;
        type metadata accessor for Array();
        Array.append(_:)();
      }

      else if ((v77 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
      {
        if (*(v151 + qword_100596E58 + 1) == 1)
        {
          v78 = sub_10036A224(8);
        }

        else
        {
          v78 = *(v151 + qword_100596E58);
        }

        LOWORD(v159) = v78;
        type metadata accessor for Array();
        Array.append(_:)();
        v79 = 0;
LABEL_30:
        v80 = v151 + qword_100596E58;
        *v80 = v78;
        v80[1] = v79;
        swift_unownedRetainStrong();
        v81 = *(v18 + *(*v18 + 696));

        if ((v81 - 2) < 3 || v81 == 5)
        {

          v82 = _swiftEmptyArrayStorage;
        }

        else
        {
          swift_unownedRetainStrong();
          v108 = WiFiInterface.capabilities.getter();

          *&v159 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
          *&v162 = v108;
          sub_1000C2A14();

          v109 = dispatch thunk of SetAlgebra.isSuperset(of:)();

          v110 = v164;
          *&v154 = v164;

          v111 = TimeBitmap.zero.unsafeMutableAddressor();
          v160 = *(v111 + 2);
          v149 = v111;
          v159 = *v111;
          v157 = v159;
          v158 = v160;
          __chkstk_darwin();
          v112 = v153;
          *(&v142 - 4) = v57;
          *(&v142 - 3) = v112;
          LODWORD(v151) = v109;
          *(&v142 - 16) = v109 & 1;
          v113 = type metadata accessor for Array();
          v114 = swift_getWitnessTable(&protocol conformance descriptor for [A], v113);
          v152 = v113;
          v148 = v114;
          Sequence.reduce<A>(into:_:)();

          v115 = v162;
          v116 = v163;
          v117 = *NANMapID.primary.unsafeMutableAddressor();
          v118 = TimeBitmap.nanBitmap.getter(v115, *(&v115 + 1), v116);
          v120 = v119;
          v122 = v121;
          v82 = sub_1003A77C8(0, 1, 1, _swiftEmptyArrayStorage);
          v124 = *(v82 + 2);
          v123 = *(v82 + 3);
          if (v124 >= v123 >> 1)
          {
            v82 = sub_1003A77C8((v123 > 1), v124 + 1, 1, v82);
          }

          *(v82 + 2) = v124 + 1;
          v125 = &v82[32 * v124];
          v125[32] = v117;
          *(v125 + 20) = v118;
          *(v125 + 6) = v120;
          *(v125 + 7) = v122;
          swift_unownedRetainStrong();
          v126 = sub_10002AF00();

          if ((v126 & 0xFF00000000) == 0x300000000)
          {

            v71 = v150;
          }

          else
          {
            v127 = static Channel.isValid(channel:on:with:)();
            v71 = v150;
            if (v127 & 1) != 0 && (v151)
            {
              v156 = v110;
              v162 = *v149;
              v163 = *(v149 + 2);
              v154 = v162;
              v155 = v163;
              __chkstk_darwin();
              *(&v142 - 2) = v71;
              *(&v142 - 1) = v128;
              Sequence.reduce<A>(into:_:)();

              v129 = v157;
              v130 = v158;
              v131 = *NANMapID.secondary.unsafeMutableAddressor();
              v132 = TimeBitmap.nanBitmap.getter(v129, *(&v129 + 1), v130);
              v136 = *(v82 + 2);
              v135 = *(v82 + 3);
              if (v136 >= v135 >> 1)
              {
                v138 = v132;
                v139 = v133;
                v140 = v134;
                v141 = sub_1003A77C8((v135 > 1), v136 + 1, 1, v82);
                v134 = v140;
                v71 = v150;
                v133 = v139;
                v82 = v141;
                v132 = v138;
              }

              *(v82 + 2) = v136 + 1;
              v137 = &v82[32 * v136];
              v137[32] = v131;
              *(v137 + 20) = v132;
              *(v137 + 6) = v133;
              *(v137 + 7) = v134;
            }

            else
            {
            }
          }

          v145 = *NANTimeUnit.zero.unsafeMutableAddressor();
        }

        v83 = swift_unownedRetainStrong();
        v87 = sub_10040CAE8(v83, v84, v85, v86);

        v88 = qword_100596C88;
        swift_beginAccess();
        v89 = *(v87 + v88);

        *&v157 = v89;
        __chkstk_darwin();
        v90 = v153;
        *(&v142 - 2) = v71;
        *(&v142 - 1) = v90;
        v92 = _s8InstanceCMa_0(255, v71, v90, v91);
        v93 = swift_getWitnessTable("]\r\n", v92);
        *&v159 = v71;
        *(&v159 + 1) = v92;
        v160 = v90;
        v161 = v93;
        type metadata accessor for NANDiscoveryEngine.ServiceSession(255, &v159);
        v94 = type metadata accessor for Dictionary();
        swift_getWitnessTable(&protocol conformance descriptor for [A : B], v94);
        LOBYTE(v92) = Sequence.contains(where:)();

        if (v92)
        {

          v95 = NANTimeUnit.multicastSenderDiscoveryBeaconPeriod.unsafeMutableAddressor();
        }

        else
        {
          v96 = swift_unownedRetainStrong();
          v100 = sub_10040CAE8(v96, v97, v98, v99);

          v101 = qword_100596C80;
          swift_beginAccess();
          v102 = *(v100 + v101);

          *&v154 = v102;
          __chkstk_darwin();
          *(&v142 - 2) = v71;
          *(&v142 - 1) = v90;
          v104 = _s8InstanceCMa(255, v71, v90, v103);
          v105 = swift_getWitnessTable(byte_1004B2574, v104);
          *&v159 = v71;
          *(&v159 + 1) = v104;
          v160 = v90;
          v161 = v105;
          type metadata accessor for NANDiscoveryEngine.ServiceSession(255, &v159);
          v106 = type metadata accessor for Dictionary();
          swift_getWitnessTable(&protocol conformance descriptor for [A : B], v106);
          LOBYTE(v104) = Sequence.contains(where:)();

          if ((v104 & 1) == 0)
          {
            v107 = v145;
            goto LABEL_39;
          }

          v95 = NANTimeUnit.multicastReceiverDiscoveryBeaconPeriod.unsafeMutableAddressor();
        }

        v107 = *v95;
        v82 = _swiftEmptyArrayStorage;
LABEL_39:
        swift_unownedRetainStrong();
        sub_10040EE98(v107, v82);

        return result;
      }
    }

    v78 = 0;
    v79 = 1;
    goto LABEL_30;
  }

  v26 = v150;
  if (v25)
  {
    goto LABEL_12;
  }

  swift_unownedRetainStrong();
  sub_10040EE98(0, 0);

  return result;
}

uint64_t sub_10034BBD4(unint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  v4 = _s17InitiatorInstanceCMa(255, v7, v8, v3);

  v9[0] = v7;
  v9[1] = v4;
  v9[2] = v8;
  v9[3] = swift_getWitnessTable(byte_1004B0F14, v4);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v9);
  sub_10020CB70();
  v9[0] = Dictionary.filter(_:)();
  v5 = type metadata accessor for Dictionary();
  swift_getWitnessTable(&protocol conformance descriptor for [A : B], v5);
  Sequence.forEach(_:)();
}

BOOL sub_10034BD9C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *a2 + *((swift_isaMask & **a2) + 0x68);
  swift_beginAccess();
  return static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(v4 + 25) | (*(v4 + 27) << 16), a3 & 0xFFFFFFFFFFFFLL);
}

double sub_10034BE44(uint64_t a1, const char *a2)
{
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  v7 = swift_unownedRetainStrong();
  sub_10040CAE8(v7, v8, v9, v10);

  sub_1003379B8(a1 & 0xFFFFFFFFFFFFLL);

  return result;
}

BOOL sub_10034BF40(uint64_t a1)
{
  if (!*(*(a1 + 8) + qword_10059B8B0))
  {
    return 0;
  }

  v1 = sub_10031A0E8();

  return v1;
}

void sub_10034BFA8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for NANAttribute(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v115 = (&v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = type metadata accessor for DispatchTime();
  v120 = *(v122 - 8);
  __chkstk_darwin();
  v118 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v113 - v7;
  v123 = type metadata accessor for DispatchTimeInterval();
  v121 = *(v123 - 8);
  __chkstk_darwin();
  v119 = (&v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v117 = &v113 - v9;
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v114 = (&v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v125 = &v113 - v11;
  __chkstk_darwin();
  v128 = &v113 - v12;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v127 = &v113 - v13;
  v14 = qword_100596C88;
  swift_beginAccess();
  v130 = v14;
  v15 = *(v2 + 80);
  v16 = *(v2 + 88);
  v18 = _s8InstanceCMa_0(255, v15, v16, v17);
  WitnessTable = swift_getWitnessTable("]\r\n", v18);
  *&v142 = v15;
  *(&v142 + 1) = v18;
  *v143 = v16;
  *&v143[8] = WitnessTable;
  v23 = type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v142);
  NANBitmap.Channel.operatingClass.getter();
  *&v142 = v20;
  LOWORD(v139) = 0;
  v132 = v15;
  v135 = v15;
  v131 = v16;
  v136 = v16;
  v129 = v23;
  v21 = type metadata accessor for Dictionary.Values();

  v22 = swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v21);
  Sequence.reduce<A>(into:_:)();

  LOWORD(v23) = v140;
  LODWORD(v23) = (*NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods.unsafeMutableAddressor() & v23);
  if (!v23 && (sub_10033BF54(sub_10036C520, sub_10036D7D0) & 1) == 0)
  {

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 67109120;
      *(v91 + 4) = sub_10033BF54(sub_10036C520, sub_10036D7D0) & 1;

      _os_log_impl(&_mh_execute_header, v89, v90, "Removing pairing attributes, hasPairingCachingServices %{BOOL}d", v91, 8u);
    }

    else
    {
    }

    swift_unownedRetainStrong();
    swift_unownedRetainStrong();
    v110 = sub_100422D18();

    sub_100367A54(v110);
    v112 = v111;

    sub_10040ECA8(v112);
LABEL_33:

    return;
  }

  v126 = v22;
  v24 = sub_10033BF54(sub_10036C520, sub_10036D7D0);
  v134 = v3;
  v133 = v23;
  if (v24)
  {
    v124 = v4;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Adding NIRA", v27, 2u);
    }

    v113 = v21;

    v28 = *&v1[*(*v1 + 304)];
    swift_unownedRetainStrong();
    sub_10005DC58(&unk_100597340, &unk_1004B1640);
    v29 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    v30 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100480F40;
    v32 = v31 + v30;
    *(v31 + v30) = 43;
    swift_unownedRetainStrong();
    v33 = *(*v28 + 768);
    swift_beginAccess();
    v34 = v127;
    sub_100012400(v28 + v33, v127, &unk_100595C50, &unk_1004AFD20);

    v35 = type metadata accessor for NANIdentityKey(0);
    if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
    {
      __break(1u);
      return;
    }

    v36 = (v32 + *(v29 + 48));
    swift_unownedRetainStrong();
    v37 = WiFiInterface.macAddress.getter();

    v38 = NANIdentityKey.generateIdentityResolutionAttribute(for:)(v37 & 0xFFFFFFFFFFFFLL);
    v39 = v34;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_10036D24C(v39, type metadata accessor for NANIdentityKey);
    *v36 = v38;
    v36[1] = v41;
    v36[2] = v43;
    v36[3] = v45;
    swift_storeEnumTagMultiPayload();
    v46 = sub_1002DE9CC(v31);
    swift_setDeallocating();
    sub_100016290(v32, &qword_1005952A8, &qword_1004AF1A8);
    swift_deallocClassInstance();
    v47 = v28 + *(*v28 + 656);
    swift_beginAccess();
    v23 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v48 = *(v47 + *(v23 + 40));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v140 = v48;
    sub_10036BAF4(v46, sub_10036A2C0, 0, isUniquelyReferenced_nonNull_native, &v140);

    MutableDriverProperty.wrappedValue.setter(&v140, v23);
    swift_endAccess();

    v4 = v124;
    LOWORD(v23) = v133;
  }

  if (v23)
  {
    NANBitmap.Channel.operatingClass.getter();
    *&v142 = v50;
    __chkstk_darwin();
    v51 = v131;
    *(&v113 - 2) = v132;
    *(&v113 - 1) = v51;

    LODWORD(v52) = Sequence.contains(where:)();

    v53 = *&v1[*(*v1 + 304)];
    swift_unownedRetainStrong();
    v54 = sub_100422D18();

    if (*(v54 + 16) && (v55 = sub_1003E08F4(43), (v56 & 1) != 0))
    {
      v57 = *(v4 + 72);
      v58 = v128;
      sub_10036D334(*(v54 + 56) + v57 * v55, v128, type metadata accessor for NANAttribute);

      v59 = *(v4 + 56);
      v60 = v4 + 56;
      v61 = v134;
      v124 = v60;
      v59(v58, 0, 1, v134);
      sub_100016290(v58, &unk_100595C00, &qword_10048F790);
      swift_unownedRetainStrong();
      v62 = sub_100422D18();

      if (*(v62 + 16))
      {
        v63 = sub_1003E08F4(44);
        if (v64)
        {
          v65 = *(v62 + 56);
          v131 = v57;
          v66 = v125;
          sub_10036D334(v65 + v63 * v57, v125, type metadata accessor for NANAttribute);

          v130 = v59;
          v59(v66, 0, 1, v61);
          sub_100016290(v66, &unk_100595C00, &qword_10048F790);
          type metadata accessor for P2PTimer(0);
          v67 = v116;
          variable initialization expression of AWDLPeer.lastUpdated();
          v68 = v120;
          v69 = *(v120 + 16);
          v70 = v118;
          LODWORD(v132) = v52;
          v71 = v122;
          v69(v118, &v1[qword_100596CD8], v122);
          v72 = v117;
          DispatchTime.distance(to:)();
          v73 = *(v68 + 8);
          v73(v70, v71);
          v73(v67, v71);
          v74 = v119;
          *v119 = 900;
          v75 = v121;
          v52 = v123;
          (*(v121 + 104))(v74, enum case for DispatchTimeInterval.seconds(_:), v123);
          LOBYTE(v73) = static DispatchTimeInterval.< infix(_:_:)(v74, v72);
          v76 = *(v75 + 8);
          v76(v74, v52);
          v77 = v52;
          LOBYTE(v52) = v132;
          v76(v72, v77);
          if ((v73 & 1) == 0)
          {
            swift_unownedRetainStrong();
            v78 = sub_100422D18();

            if (*(v78 + 16) && (v79 = sub_1003E08F4(44), (v80 & 1) != 0))
            {
              v81 = v115;
              sub_10036D334(*(v78 + 56) + v79 * v131, v115, type metadata accessor for NANAttribute);

              if (swift_getEnumCaseMultiPayload() == 39)
              {
                *&v141[10] = *(v81 + 26);
                v82 = v81[1];
                v140 = *v81;
                *v141 = v82;
                v83 = v133;
                if (*&v141[24] != v133)
                {
                  swift_unownedRetainStrong();
                  static NANAttribute.PairingBootstrapping.advertising(methods:)(v83, &v142);
                  v84 = *v143;
                  v85 = v114;
                  *v114 = v142;
                  *(v85 + 16) = v84;
                  *(v85 + 26) = *&v143[10];
                  swift_storeEnumTagMultiPayload();
                  v130(v85, 0, 1, v61);
                  v86 = v53 + *(*v53 + 656);
                  swift_beginAccess();
                  v87 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
                  v138 = *(v86 + *(v87 + 40));

                  sub_100337FA0(v85, 44);
                  v137 = v138;
                  MutableDriverProperty.wrappedValue.setter(&v137, v87);
                  swift_endAccess();
                }

                sub_1001440B0(&v140);
              }

              else
              {
                sub_10036D24C(v81, type metadata accessor for NANAttribute);
              }
            }

            else
            {
            }

            return;
          }

          goto LABEL_25;
        }
      }

      v88 = v125;
      v59(v125, 1, 1, v61);
    }

    else
    {

      v88 = v128;
      (*(v4 + 56))(v128, 1, 1, v134);
    }

    sub_100016290(v88, &unk_100595C00, &qword_10048F790);
LABEL_25:
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Adding DCEA and NPBA attributes", v94, 2u);
    }

    swift_unownedRetainStrong();
    sub_10005DC58(&unk_100597340, &unk_1004B1640);
    v95 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    v96 = *(*(v95 - 8) + 72);
    v97 = (*(*(v95 - 8) + 80) + 32) & ~*(*(v95 - 8) + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_100483520;
    v99 = (v98 + v97);
    *v99 = 42;
    v100 = *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor();

    if (v52)
    {
      NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled.unsafeMutableAddressor();
    }

    else
    {
      v101 = sub_10036B9B4(_swiftEmptyArrayStorage);
    }

    v102 = *(v95 + 48);
    *&v142 = v100;
    *&v140 = v101;
    sub_10027B614();
    dispatch thunk of SetAlgebra.formUnion(_:)();
    *&v99[v102] = v142;
    swift_storeEnumTagMultiPayload();
    v103 = &v99[v96 + *(v95 + 48)];
    v99[v96] = 44;
    static NANAttribute.PairingBootstrapping.advertising(methods:)(v133, &v142);
    v104 = *v143;
    *v103 = v142;
    v103[1] = v104;
    *(v103 + 26) = *&v143[10];
    swift_storeEnumTagMultiPayload();
    v105 = sub_1002DE9CC(v98);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v106 = v53 + *(*v53 + 656);
    swift_beginAccess();
    v107 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v108 = *(v106 + *(v107 + 40));

    v109 = swift_isUniquelyReferenced_nonNull_native();
    v139 = v108;
    sub_10036BAF4(v105, sub_10036A2C0, 0, v109, &v139);

    MutableDriverProperty.wrappedValue.setter(&v139, v107);
    swift_endAccess();
    goto LABEL_33;
  }
}

void sub_10034D228()
{
  v1 = v0;
  v2 = *v0;
  v161 = type metadata accessor for NANAttribute(0);
  v159 = *(v161 - 8);
  __chkstk_darwin();
  v4 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v139 - v5;
  v148 = type metadata accessor for DispatchTime();
  v146 = *(v148 - 8);
  __chkstk_darwin();
  v144 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v139 - v7;
  v149 = type metadata accessor for DispatchTimeInterval();
  v147 = *(v149 - 8);
  __chkstk_darwin();
  v145 = (&v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v143 = &v139 - v9;
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v140 = (&v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v150 = &v139 - v11;
  __chkstk_darwin();
  v152 = &v139 - v12;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v151 = &v139 - v13;
  swift_beginAccess();
  v24 = *(v2 + 80);
  v14 = *(v2 + 88);
  v16 = _s8InstanceCMa_0(255, v24, v14, v15);
  WitnessTable = swift_getWitnessTable("]\r\n", v16);
  *&v170 = v24;
  *(&v170 + 1) = v16;
  *v171 = v14;
  *&v171[8] = WitnessTable;
  v18 = type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v170);
  NANBitmap.Channel.operatingClass.getter();
  *&v170 = v19;
  LOWORD(v167) = 0;
  v157 = v24;
  v163 = v24;
  v156 = v14;
  v164 = v14;
  v153 = v18;
  v20 = type metadata accessor for Dictionary.Values();

  v21 = swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v20);
  v155 = v20;
  v154 = v21;
  v22 = 0;
  Sequence.reduce<A>(into:_:)();

  LODWORD(v16) = v168;
  v23 = *NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods.unsafeMutableAddressor();
  LODWORD(v24) = v23 & v16;
  if ((v23 & v16) != 0)
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 33554688;
      *(v27 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "ExistingAdvertiseMethod %hu", v27, 6u);
    }
  }

  else if ((sub_10033BF54(sub_10036C520, sub_10036D7D0) & 1) == 0)
  {

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 67109120;
      *(v96 + 4) = sub_10033BF54(sub_10036C520, sub_10036D7D0) & 1;

      _os_log_impl(&_mh_execute_header, v94, v95, "PairingCustomAttributes: Removing pairing attributes, hasPairingCachingServices %{BOOL}d", v96, 8u);
    }

    else
    {
    }

    swift_unownedRetainStrong();
    swift_unownedRetainStrong();
    v136 = sub_100422D84();

    sub_100367A54(v136);
    v138 = v137;

    sub_10040EC2C(v138);

    return;
  }

  v28 = sub_10033BF54(sub_10036C520, sub_10036D7D0);
  v160 = v1;
  v158 = v24;
  if (v28)
  {
    v162 = 0;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "PairingCustomAttributes: Adding NIRA", v31, 2u);
    }

    v32 = *(v1 + *(*v1 + 304));
    swift_unownedRetainStrong();
    sub_10005DC58(&unk_100597340, &unk_1004B1640);
    v33 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    v34 = (*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100480F40;
    v36 = v35 + v34;
    *(v35 + v34) = 43;
    swift_unownedRetainStrong();
    v37 = *(*v32 + 768);
    swift_beginAccess();
    v38 = v32 + v37;
    v39 = v151;
    sub_100012400(v38, v151, &unk_100595C50, &unk_1004AFD20);

    v40 = type metadata accessor for NANIdentityKey(0);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {
LABEL_55:
      __break(1u);
LABEL_56:

      __break(1u);
      return;
    }

    v41 = (v36 + *(v33 + 48));
    swift_unownedRetainStrong();
    v42 = WiFiInterface.macAddress.getter();

    v43 = NANIdentityKey.generateIdentityResolutionAttribute(for:)(v42 & 0xFFFFFFFFFFFFLL);
    v45 = v44;
    v47 = v46;
    v48 = v39;
    v50 = v49;
    sub_10036D24C(v48, type metadata accessor for NANIdentityKey);
    *v41 = v43;
    v41[1] = v45;
    v41[2] = v47;
    v41[3] = v50;
    swift_storeEnumTagMultiPayload();
    v51 = sub_1002DE9CC(v35);
    swift_setDeallocating();
    sub_100016290(v36, &qword_1005952A8, &qword_1004AF1A8);
    swift_deallocClassInstance();
    v52 = v32 + *(*v32 + 672);
    swift_beginAccess();
    v24 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v53 = *(v52 + *(v24 + 40));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v168 = v53;
    v22 = v162;
    sub_10036BAF4(v51, sub_10036A2C0, 0, isUniquelyReferenced_nonNull_native, &v168);

    MutableDriverProperty.wrappedValue.setter(&v168, v24);
    swift_endAccess();

    v1 = v160;
    LOWORD(v24) = v158;
  }

  v162 = v22;
  if (!v24)
  {
    goto LABEL_34;
  }

  NANBitmap.Channel.operatingClass.getter();
  *&v170 = v55;
  __chkstk_darwin();
  v56 = v156;
  *(&v139 - 2) = v157;
  *(&v139 - 1) = v56;

  v57 = v162;
  LODWORD(v58) = Sequence.contains(where:)();

  v59 = *(v1 + *(*v1 + 304));
  swift_unownedRetainStrong();
  v60 = sub_100422D84();

  v61 = *(v60 + 16);
  v162 = v57;
  if (!v61 || (v62 = sub_1003E08F4(43), (v63 & 1) == 0))
  {

    v93 = v152;
    (*(v159 + 56))(v152, 1, 1, v161);
LABEL_27:
    sub_100016290(v93, &unk_100595C00, &qword_10048F790);
    goto LABEL_28;
  }

  v64 = *(v60 + 56);
  v65 = v159;
  v156 = *(v159 + 72);
  v66 = v152;
  sub_10036D334(v64 + v156 * v62, v152, type metadata accessor for NANAttribute);

  v67 = v65 + 56;
  v157 = *(v65 + 56);
  v157(v66, 0, 1, v161);
  sub_100016290(v66, &unk_100595C00, &qword_10048F790);
  swift_unownedRetainStrong();
  v68 = sub_100422D84();

  if (!*(v68 + 16) || (v69 = sub_1003E08F4(44), (v70 & 1) == 0))
  {

    v93 = v150;
    v157(v150, 1, 1, v161);
    goto LABEL_27;
  }

  v71 = v150;
  sub_10036D334(*(v68 + 56) + v69 * v156, v150, type metadata accessor for NANAttribute);

  v154 = v67;
  v157(v71, 0, 1, v161);
  sub_100016290(v71, &unk_100595C00, &qword_10048F790);
  type metadata accessor for P2PTimer(0);
  v72 = v142;
  variable initialization expression of AWDLPeer.lastUpdated();
  v73 = v146;
  v74 = *(v146 + 16);
  v75 = v144;
  LODWORD(v155) = v58;
  v58 = v148;
  v74(v144, v1 + qword_100596CD8, v148);
  v76 = v143;
  DispatchTime.distance(to:)();
  v77 = *(v73 + 8);
  v77(v75, v58);
  v77(v72, v58);
  v78 = v145;
  *v145 = 900;
  v79 = v147;
  v80 = v149;
  (*(v147 + 104))(v78, enum case for DispatchTimeInterval.seconds(_:), v149);
  LOBYTE(v77) = static DispatchTimeInterval.< infix(_:_:)(v78, v76);
  v81 = *(v79 + 8);
  v81(v78, v80);
  v81(v76, v80);
  LOBYTE(v58) = v155;
  if (v77)
  {
LABEL_28:
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "PairingCustomAttributes: Adding DCEA and NPBA attributes", v99, 2u);
    }

    swift_unownedRetainStrong();
    sub_10005DC58(&unk_100597340, &unk_1004B1640);
    v100 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
    v101 = *(*(v100 - 8) + 72);
    v102 = (*(*(v100 - 8) + 80) + 32) & ~*(*(v100 - 8) + 80);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_100483520;
    v104 = v103 + v102;
    *(v103 + v102) = 42;
    v105 = *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor();

    if (v58)
    {
      NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled.unsafeMutableAddressor();
    }

    else
    {
      v106 = sub_10036B9B4(_swiftEmptyArrayStorage);
    }

    v107 = *(v100 + 48);
    *&v170 = v105;
    *&v168 = v106;
    sub_10027B614();
    dispatch thunk of SetAlgebra.formUnion(_:)();
    *(v104 + v107) = v170;
    swift_storeEnumTagMultiPayload();
    v108 = (v104 + v101 + *(v100 + 48));
    *(v104 + v101) = 44;
    static NANAttribute.PairingBootstrapping.advertising(methods:)(v158, &v170);
    v109 = *v171;
    *v108 = v170;
    v108[1] = v109;
    *(v108 + 26) = *&v171[10];
    swift_storeEnumTagMultiPayload();
    v110 = sub_1002DE9CC(v103);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v111 = v59 + *(*v59 + 672);
    swift_beginAccess();
    v112 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
    v113 = *(v111 + *(v112 + 40));

    v114 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v113;
    v115 = v162;
    sub_10036BAF4(v110, sub_10036A2C0, 0, v114, &v167);
    v162 = v115;

    MutableDriverProperty.wrappedValue.setter(&v167, v112);
    swift_endAccess();

    goto LABEL_34;
  }

  swift_unownedRetainStrong();
  v82 = sub_100422D84();

  if (*(v82 + 16) && (v83 = sub_1003E08F4(44), (v84 & 1) != 0))
  {
    v85 = v141;
    sub_10036D334(*(v82 + 56) + v83 * v156, v141, type metadata accessor for NANAttribute);

    if (swift_getEnumCaseMultiPayload() != 39)
    {
      goto LABEL_53;
    }

    *&v169[10] = *(v85 + 26);
    v86 = *(v85 + 16);
    v168 = *v85;
    *v169 = v86;
    v87 = v158;
    if (*&v169[24] != v158)
    {
      swift_unownedRetainStrong();
      static NANAttribute.PairingBootstrapping.advertising(methods:)(v87, &v170);
      v88 = *v171;
      v89 = v140;
      *v140 = v170;
      *(v89 + 16) = v88;
      *(v89 + 26) = *&v171[10];
      v90 = v161;
      swift_storeEnumTagMultiPayload();
      v157(v89, 0, 1, v90);
      v91 = v59 + *(*v59 + 672);
      swift_beginAccess();
      v92 = sub_10005DC58(&qword_100597358, &qword_1004B1650);
      v166 = *(v91 + *(v92 + 40));

      sub_100337FA0(v89, 44);
      v165 = v166;
      MutableDriverProperty.wrappedValue.setter(&v165, v92);
      swift_endAccess();
    }

    sub_1001440B0(&v168);
  }

  else
  {
  }

  while (1)
  {
LABEL_34:
    swift_unownedRetainStrong();
    v116 = sub_100422D84();

    v117 = *(v116 + 16);
    if (v117)
    {
      v118 = sub_100367708(*(v116 + 16), 0);
      v119 = sub_100315CCC(&v168, v118 + 32, v117, v116);
      v120 = v168;

      sub_1000E290C(v120);
      if (v119 != v117)
      {
        __break(1u);
        goto LABEL_55;
      }
    }

    else
    {
      v118 = _swiftEmptyArrayStorage;
    }

    *&v168 = v118;
    v121 = v162;
    sub_100369940(&v168);
    if (v121)
    {
      goto LABEL_56;
    }

    v122 = v168;
    v123 = *(v168 + 16);
    if (!v123)
    {
      break;
    }

    *&v168 = _swiftEmptyArrayStorage;
    sub_1000C0850(0, v123, 0);
    v124 = 0;
    v85 = v168;
    v125 = v159;
    while (v124 < *(v122 + 16))
    {
      LOBYTE(v167) = *(v122 + v124 + 32);
      sub_100351250(&v167, v4);
      *&v168 = v85;
      v127 = *(v85 + 16);
      v126 = *(v85 + 24);
      if (v127 >= v126 >> 1)
      {
        sub_1000C0850((v126 > 1), v127 + 1, 1);
        v125 = v159;
        v85 = v168;
      }

      ++v124;
      *(v85 + 16) = v127 + 1;
      sub_10036D640(v4, v85 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v127, type metadata accessor for NANAttribute);
      if (v123 == v124)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_53:
    sub_10036D24C(v85, type metadata accessor for NANAttribute);
  }

LABEL_45:

  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *&v168 = v131;
    *v130 = 136315138;
    v132 = Array.description.getter();
    v134 = v133;

    v135 = sub_100002320(v132, v134, &v168);

    *(v130 + 4) = v135;
    _os_log_impl(&_mh_execute_header, v128, v129, "GetPairingAttributes: %s", v130, 0xCu);
    sub_100002A00(v131);
  }

  else
  {
  }
}