uint64_t sub_1003D1874@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for MobileDocumentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentRequest.documentType.getter();
  v9 = sub_1003CFAF0(a1, v8);
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v9;
  result = (*(v6 + 8))(v8, v5);
  *a2 = v11;
  return result;
}

char *sub_1003D199C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = type metadata accessor for ISO18013ReaderRequest.ElementReference();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MobileDocumentRequestType.isRawDataRequest.getter();
  result = sub_10037A314(a1, v9 & 1);
  if (!v2)
  {
    v21[1] = 0;
    v11 = *(result + 2);
    if (v11)
    {
      v24 = v8;
      v21[0] = a2;
      v25 = _swiftEmptyArrayStorage;
      v12 = result;
      sub_1001734D0(0, v11, 0);
      result = v12;
      v13 = 0;
      v14 = v25;
      v22 = result;
      v23 = v6;
      v21[2] = v6 + 32;
      v15 = result + 56;
      while (v13 < *(result + 2))
      {
        v16 = v5;

        v17 = v24;
        ISO18013ReaderRequest.ElementReference.init(namespace:elementIdentifier:)();
        v25 = v14;
        v19 = v14[2];
        v18 = v14[3];
        if (v19 >= v18 >> 1)
        {
          sub_1001734D0((v18 > 1), v19 + 1, 1);
          v14 = v25;
        }

        ++v13;
        v14[2] = v19 + 1;
        v20 = v14 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19;
        v5 = v16;
        (*(v23 + 32))(v20, v17, v16);
        v15 += 32;
        result = v22;
        if (v11 == v13)
        {

          *v21[0] = v14;
          return result;
        }
      }

      __break(1u);
    }

    else
    {

      *a2 = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

Swift::Int sub_1003D1BD4(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1003BD238(v2);
  }

  v3 = *(v2 + 2);
  v27[0] = (v2 + 32);
  v27[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v21 = v1;
      v22 = v3;
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v24 = v9;
        v25 = v8;
        v11 = *&v2[16 * v9 + 32];
        v23 = v10;
        while (1)
        {
          v12 = *v10;
          v13 = *(v10 + 1);
          v14 = v11;
          sub_10000B8B8(v11, *(&v11 + 1));
          sub_10000B8B8(v12, v13);
          v15 = Data.base64EncodedString(options:)(0);
          v16 = Data.base64EncodedString(options:)(0);
          if (v15._countAndFlagsBits == v16._countAndFlagsBits && v15._object == v16._object)
          {
            break;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_10000B90C(v12, v13);
          result = sub_10000B90C(v14, *(&v14 + 1));
          if (v18)
          {
            v19 = *v10;
            v11 = *(v10 + 1);
            *v10 = v11;
            *(v10 + 1) = v19;
            v10 -= 16;
            if (!__CFADD__(v8++, 1))
            {
              continue;
            }
          }

          goto LABEL_9;
        }

        sub_10000B90C(v12, v13);
        result = sub_10000B90C(v14, *(&v14 + 1));
LABEL_9:
        v9 = v24 + 1;
        v10 = v23 + 16;
        v8 = v25 - 1;
      }

      while (v24 + 1 != v22);
      v1 = v21;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v26[0] = v7 + 4;
    v26[1] = v6;
    sub_1003D1E04(v26, v28, v27, v5);
    v7[2] = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1003D1E04(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v134 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    object = _swiftEmptyArrayStorage;
LABEL_151:
    v4 = *v134;
    if (*v134)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_153;
    }

    goto LABEL_189;
  }

  v6 = 0;
  object = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v150 = v5;
      v143 = v6;
      v10 = *a3;
      v11 = (v6 + 1);
      v12 = (*a3 + 16 * v9);
      v13 = *v12;
      v14 = v12[1];
      v15 = (*a3 + 16 * v8);
      v16 = *v15;
      v17 = v15[1];
      sub_10000B8B8(v13, v14);
      sub_10000B8B8(v16, v17);
      v18 = Data.base64EncodedString(options:)(0);
      v19 = Data.base64EncodedString(options:)(0);
      v20 = v18._countAndFlagsBits == v19._countAndFlagsBits && v18._object == v19._object;
      if (v20)
      {
        __dst = 0;
      }

      else
      {
        __dst = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10000B90C(v16, v17);
      result = sub_10000B90C(v13, v14);
      v21 = v143 + 2;
      v22 = (v10 + 16 * v143 + 24);
      v23 = 16 * v143 + 16;
      v24 = v11;
      v25 = v150;
      do
      {
        v26 = v21;
        v4 = v24;
        v27 = v23;
        if (v21 >= v25)
        {
          break;
        }

        v157 = v21;
        v28 = v22[1];
        v29 = v22[2];
        v30 = *(v22 - 1);
        v31 = *v22;
        sub_10000B8B8(v28, v29);
        sub_10000B8B8(v30, v31);
        v32 = Data.base64EncodedString(options:)(0);
        v33 = Data.base64EncodedString(options:)(0);
        v34 = v32._countAndFlagsBits == v33._countAndFlagsBits && v32._object == v33._object;
        v153 = v34 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10000B90C(v30, v31);
        result = sub_10000B90C(v28, v29);
        v26 = v157;
        v21 = v157 + 1;
        v22 += 2;
        v24 = (v4 + 1);
        v23 = v27 + 16;
        v25 = v150;
      }

      while (((__dst ^ v153) & 1) == 0);
      if (__dst)
      {
        v8 = v143;
        if (v26 < v143)
        {
          goto LABEL_180;
        }

        if (v143 < v26)
        {
          v35 = v143;
          v36 = 16 * v143;
          do
          {
            if (v35 != v4)
            {
              v39 = *a3;
              if (!*a3)
              {
                goto LABEL_186;
              }

              v37 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v27);
              *(v39 + v27) = v37;
            }

            v35 = (v35 + 1);
            v27 -= 16;
            v36 += 16;
            v38 = v35 < v4;
            v4 = (v4 - 1);
          }

          while (v38);
        }

        v9 = v26;
      }

      else
      {
        v9 = v26;
        v8 = v143;
      }
    }

    v40 = a3[1];
    v137 = v9;
    if (v9 < v40)
    {
      v70 = __OFSUB__(v9, v8);
      v41 = v9 - v8;
      if (v70)
      {
        goto LABEL_179;
      }

      if (v41 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_181;
        }

        if (v8 + a4 >= v40)
        {
          v42 = a3[1];
        }

        else
        {
          v42 = v8 + a4;
        }

        if (v42 < v8)
        {
          goto LABEL_182;
        }

        if (v137 != v42)
        {
          v145 = object;
          v158 = *a3;
          v43 = *a3 + 16 * v137 - 16;
          v44 = v8 - v137;
          v45 = v137;
          __dsta = v42;
          do
          {
            v138 = v45;
            v46 = *(v158 + 16 * v45);
            v151 = v44;
            v154 = v43;
            while (1)
            {
              v47 = *v43;
              v48 = *(v43 + 8);
              v49 = *(&v46 + 1);
              v4 = v46;
              sub_10000B8B8(v46, *(&v46 + 1));
              sub_10000B8B8(v47, v48);
              v50 = Data.base64EncodedString(options:)(0);
              v51 = Data.base64EncodedString(options:)(0);
              if (v50._countAndFlagsBits == v51._countAndFlagsBits && v50._object == v51._object)
              {
                break;
              }

              object = _stringCompareWithSmolCheck(_:_:expecting:)();

              sub_10000B90C(v47, v48);
              sub_10000B90C(v4, v49);
              if ((object & 1) == 0)
              {
                goto LABEL_43;
              }

              if (!v158)
              {
                goto LABEL_183;
              }

              v53 = *v43;
              v46 = *(v43 + 16);
              *v43 = v46;
              *(v43 + 16) = v53;
              v43 -= 16;
              if (__CFADD__(v44++, 1))
              {
                goto LABEL_43;
              }
            }

            sub_10000B90C(v47, v48);
            sub_10000B90C(v4, v49);
LABEL_43:
            v45 = v138 + 1;
            v43 = v154 + 16;
            v44 = v151 - 1;
          }

          while ((v138 + 1) != __dsta);
          v137 = __dsta;
          object = v145;
        }
      }
    }

    if (v137 < v8)
    {
      goto LABEL_176;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003BC0AC(0, *(object + 16) + 1, 1, object);
      object = result;
    }

    v56 = *(object + 16);
    v55 = *(object + 24);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      result = sub_1003BC0AC((v55 > 1), v56 + 1, 1, object);
      object = result;
    }

    *(object + 16) = v57;
    v58 = object + 16 * v56;
    *(v58 + 32) = v8;
    *(v58 + 40) = v137;
    __dstb = *v134;
    if (!*v134)
    {
LABEL_187:
      __break(1u);
      goto LABEL_188;
    }

    if (v56)
    {
      break;
    }

LABEL_3:
    v6 = v137;
    v5 = a3[1];
    if (v137 >= v5)
    {
      goto LABEL_151;
    }
  }

  while (1)
  {
    v59 = v57 - 1;
    if (v57 >= 4)
    {
      v64 = object + 32 + 16 * v57;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_165;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_166;
      }

      v71 = (object + 16 * v57);
      v73 = *v71;
      v72 = v71[1];
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_168;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_171;
      }

      if (v75 >= v67)
      {
        v93 = (object + 32 + 16 * v59);
        v95 = *v93;
        v94 = v93[1];
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_175;
        }

        if (v62 < v96)
        {
          v59 = v57 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    if (v57 == 3)
    {
      v60 = *(object + 32);
      v61 = *(object + 40);
      v70 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      v63 = v70;
LABEL_75:
      if (v63)
      {
        goto LABEL_167;
      }

      v76 = (object + 16 * v57);
      v78 = *v76;
      v77 = v76[1];
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_170;
      }

      v82 = (object + 32 + 16 * v59);
      v84 = *v82;
      v83 = v82[1];
      v70 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v70)
      {
        goto LABEL_173;
      }

      if (__OFADD__(v80, v85))
      {
        goto LABEL_174;
      }

      if (v80 + v85 >= v62)
      {
        if (v62 < v85)
        {
          v59 = v57 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_89;
    }

    v86 = (object + 16 * v57);
    v88 = *v86;
    v87 = v86[1];
    v70 = __OFSUB__(v87, v88);
    v80 = v87 - v88;
    v81 = v70;
LABEL_89:
    if (v81)
    {
      goto LABEL_169;
    }

    v89 = object + 16 * v59;
    v91 = *(v89 + 32);
    v90 = *(v89 + 40);
    v70 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if (v70)
    {
      goto LABEL_172;
    }

    if (v92 < v80)
    {
      goto LABEL_3;
    }

LABEL_96:
    if (v59 - 1 >= v57)
    {
      break;
    }

    v97 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    v144 = v59;
    v146 = object;
    v140 = v59 - 1;
    v98 = *(object + 32 + 16 * (v59 - 1));
    v99 = *(object + 32 + 16 * v59);
    v141 = *(object + 32 + 16 * v59 + 8);
    v142 = v98;
    v100 = 16 * v98;
    object = v97 + 16 * v98;
    v101 = 16 * v99;
    v102 = (v97 + 16 * v99);
    v103 = (v97 + 16 * v141);
    v104 = 16 * v99 - 16 * v98;
    v105 = 16 * v141 - 16 * v99;
    v106 = __dstb;
    if (v104 >= v105)
    {
      if (v102 != __dstb || v103 <= __dstb)
      {
        memmove(__dstb, (v97 + 16 * v99), 16 * v141 - 16 * v99);
      }

      v159 = (__dstb + v105);
      if (v105 < 1 || v101 <= v100)
      {
        v116 = v102;
      }

      else
      {
        v152 = object;
        do
        {
          v156 = v102;
          v136 = v102 - 2;
          v103 -= 2;
          v117 = v159;
          while (1)
          {
            v118 = *(v117 - 2);
            v119 = *(v117 - 1);
            v117 -= 2;
            v120 = *(v156 - 2);
            v121 = *(v156 - 1);
            sub_10000B8B8(v118, v119);
            sub_10000B8B8(v120, v121);
            v122 = Data.base64EncodedString(options:)(0);
            object = v122._object;
            v123 = Data.base64EncodedString(options:)(0);
            v124 = v122._countAndFlagsBits == v123._countAndFlagsBits && v122._object == v123._object;
            v125 = v124 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_10000B90C(v120, v121);
            sub_10000B90C(v118, v119);
            v126 = v103 + 2;
            if (v125)
            {
              break;
            }

            if (v126 != v159)
            {
              *v103 = *v117;
            }

            v103 -= 2;
            v159 = v117;
            if (v117 <= __dstb)
            {
              v159 = v117;
              v106 = __dstb;
              v116 = v156;
              goto LABEL_141;
            }
          }

          v106 = __dstb;
          v116 = v136;
          if (v126 != v156)
          {
            *v103 = *v136;
          }

          object = v152;
          if (v159 <= __dstb)
          {
            break;
          }

          v102 = v136;
        }

        while (v152 < v136);
      }
    }

    else
    {
      if (object != __dstb || v102 <= __dstb)
      {
        memmove(__dstb, (v97 + 16 * v98), 16 * v99 - 16 * v98);
      }

      v159 = (__dstb + v104);
      if (v104 >= 1 && 16 * v141 > v101)
      {
        while (1)
        {
          v108 = *v102;
          v107 = v102[1];
          v155 = v102;
          v110 = *v106;
          v109 = v106[1];
          sub_10000B8B8(*v102, v107);
          sub_10000B8B8(v110, v109);
          v111 = Data.base64EncodedString(options:)(0);
          v112 = Data.base64EncodedString(options:)(0);
          if (v111._countAndFlagsBits == v112._countAndFlagsBits && v111._object == v112._object)
          {
            break;
          }

          v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_10000B90C(v110, v109);
          sub_10000B90C(v108, v107);
          if ((v114 & 1) == 0)
          {
            goto LABEL_112;
          }

          v115 = v155;
          v102 = v155 + 2;
          if (object != v155)
          {
            goto LABEL_113;
          }

LABEL_114:
          object += 16;
          if (v106 >= v159 || v102 >= v103)
          {
            goto LABEL_116;
          }
        }

        sub_10000B90C(v110, v109);
        sub_10000B90C(v108, v107);
LABEL_112:
        v115 = v106;
        v20 = object == v106;
        v106 += 2;
        v102 = v155;
        if (v20)
        {
          goto LABEL_114;
        }

LABEL_113:
        *object = *v115;
        goto LABEL_114;
      }

LABEL_116:
      v116 = object;
    }

LABEL_141:
    if (v116 != v106 || v116 >= (v106 + ((v159 - v106 + (v159 - v106 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
    {
      memmove(v116, v106, 16 * ((v159 - v106) / 16));
    }

    v4 = v141;
    v127 = v146;
    if (v141 < v142)
    {
      goto LABEL_163;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_1003BBEA4(v146);
    }

    if (v144 > *(v127 + 2))
    {
      goto LABEL_164;
    }

    v128 = &v127[16 * v140];
    *(v128 + 4) = v142;
    *(v128 + 5) = v141;
    result = sub_1003BBE18(v144);
    object = v127;
    v57 = *(v127 + 2);
    if (v57 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_183:
  __break(1u);
LABEL_184:
  result = sub_1003BBEA4(object);
  object = result;
LABEL_153:
  v129 = *(object + 16);
  if (v129 < 2)
  {
  }

  while (*a3)
  {
    v130 = *(object + 16 * v129);
    v131 = *(object + 16 * (v129 - 1) + 40);
    sub_1003D2948((*a3 + 16 * v130), (*a3 + 16 * *(object + 16 * (v129 - 1) + 32)), (*a3 + 16 * v131), v4);
    if (v135)
    {
    }

    if (v131 < v130)
    {
      goto LABEL_177;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      object = sub_1003BBEA4(object);
    }

    if (v129 - 2 >= *(object + 16))
    {
      goto LABEL_178;
    }

    v132 = (object + 16 * v129);
    *v132 = v130;
    v132[1] = v131;
    result = sub_1003BBE18(v129 - 1);
    v129 = *(object + 16);
    if (v129 <= 1)
    {
    }
  }

LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
  return result;
}

uint64_t sub_1003D2948(char *__dst, char *__src, char *a3, uint64_t *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __src - __dst;
  v7 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 4;
  v9 = a3 - __src;
  v10 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 4;
  if (v8 < v10 >> 4)
  {
    v12 = a4;
    v13 = __dst;
    if (a4 != __dst || &__dst[16 * v8] <= a4)
    {
      memmove(a4, __dst, 16 * v8);
    }

    v42 = &v12[2 * v8];
    if (v6 < 16)
    {
LABEL_10:
      v5 = v13;
      goto LABEL_48;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v38 = v13;
      v40 = v5;
      v16 = *v5;
      v17 = v5[1];
      v18 = *v12;
      v19 = v12[1];
      sub_10000B8B8(v16, v17);
      sub_10000B8B8(v18, v19);
      v20 = Data.base64EncodedString(options:)(0);
      v21 = Data.base64EncodedString(options:)(0);
      v22 = v20._countAndFlagsBits == v21._countAndFlagsBits && v20._object == v21._object;
      if (v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000B90C(v18, v19);
      sub_10000B90C(v16, v17);
      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }

      v14 = v38;
      v15 = v40;
      v5 = v40 + 2;
      if (v38 != v40)
      {
        goto LABEL_12;
      }

LABEL_13:
      v13 = (v14 + 2);
      if (v12 >= v42)
      {
        goto LABEL_10;
      }
    }

    sub_10000B90C(v18, v19);
    sub_10000B90C(v16, v17);
LABEL_22:
    v15 = v12;
    v14 = v38;
    v5 = v40;
    v22 = v38 == v12;
    v12 += 2;
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v14 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v11] <= a4)
  {
    v24 = a4;
    memmove(a4, __src, 16 * v11);
    a4 = v24;
  }

  v42 = &a4[2 * v11];
  v12 = a4;
  if (v9 >= 16 && v5 > __dst)
  {
    v37 = a4;
LABEL_31:
    v36 = v5 - 2;
    v4 -= 16;
    v25 = v42;
    v41 = v5;
    do
    {
      v26 = *(v25 - 2);
      v27 = *(v25 - 1);
      v25 -= 2;
      v28 = *(v5 - 2);
      v29 = *(v5 - 1);
      sub_10000B8B8(v26, v27);
      sub_10000B8B8(v28, v29);
      v30 = Data.base64EncodedString(options:)(0);
      v31 = Data.base64EncodedString(options:)(0);
      if (v30._countAndFlagsBits == v31._countAndFlagsBits && v30._object == v31._object)
      {
        v33 = 0;
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10000B90C(v28, v29);
      sub_10000B90C(v26, v27);
      v34 = (v4 + 16);
      if (v33)
      {
        if (v34 != v41)
        {
          *v4 = *v36;
        }

        v12 = v37;
        if (v42 <= v37 || (v5 = v36, v36 <= __dst))
        {
          v5 = v36;
          goto LABEL_48;
        }

        goto LABEL_31;
      }

      v5 = v41;
      if (v34 != v42)
      {
        *v4 = *v25;
      }

      v4 -= 16;
      v42 = v25;
    }

    while (v25 > v37);
    v42 = v25;
    v12 = v37;
  }

LABEL_48:
  if (v5 != v12 || v5 >= (v12 + ((v42 - v12 + (v42 - v12 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v5, v12, 16 * ((v42 - v12) / 16));
  }

  return 1;
}

void *sub_1003D2D04(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1003D3750(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1003D2E74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a1;
  v51 = sub_100007224(&qword_100842BD8, &qword_1006E0120);
  v4 = __chkstk_darwin(v51);
  v50 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v38 - v6;
  v48 = type metadata accessor for MobileDocumentElementRequestInfo();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48);
  v57 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for MobileDocumentElement();
  result = __chkstk_darwin(v56);
  v54 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v52 = a3;
  v13 = *(a3 + 64);
  v42 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v40 = 0;
  v41 = (v14 + 63) >> 6;
  v46 = v7 + 2;
  v47 = v10 + 2;
  v58 = v7;
  v55 = v10;
  v44 = v10 + 1;
  v45 = v7 + 1;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v53 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v12 << 6);
    v21 = v52;
    v22 = v54;
    v23 = v55[2];
    v23(v54, v52[6] + v55[9] * v20, v56);
    v24 = v21[7];
    v25 = v58[9];
    v43 = v20;
    v26 = v58[2];
    v27 = v57;
    v28 = v48;
    v26(v57, v24 + v25 * v20, v48);
    v29 = v49;
    v30 = v22;
    v31 = v56;
    v23(v49, v30, v56);
    v32 = v51;
    v26((v29 + *(v51 + 48)), v27, v28);
    v33 = v50;
    sub_10000BBC4(v29, v50, &qword_100842BD8, &qword_1006E0120);
    v34 = *(v32 + 48);
    LOBYTE(v32) = MobileDocumentElementRequestInfo.isRetaining.getter();
    sub_1003D536C(v29);
    v35 = v58[1];
    v35(v33 + v34, v28);
    v36 = v55[1];
    v36(v33, v31);
    v35(v57, v28);
    result = (v36)(v54, v31);
    v16 = v53;
    if ((v32 & 1) == 0)
    {
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_1003D4024(v39, v38, v40, v52);
      }
    }
  }

  v18 = v12;
  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= v41)
    {
      return sub_1003D4024(v39, v38, v40, v52);
    }

    v19 = *(v42 + 8 * v12);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v53 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D3290(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a1;
  v51 = sub_100007224(&qword_100842BD8, &qword_1006E0120);
  v4 = __chkstk_darwin(v51);
  v50 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v38 - v6;
  v48 = type metadata accessor for MobileDocumentElementRequestInfo();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48);
  v57 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for MobileDocumentElement();
  result = __chkstk_darwin(v56);
  v54 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v52 = a3;
  v13 = *(a3 + 64);
  v42 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v40 = 0;
  v41 = (v14 + 63) >> 6;
  v46 = v7 + 2;
  v47 = v10 + 2;
  v58 = v7;
  v55 = v10;
  v44 = v10 + 1;
  v45 = v7 + 1;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v53 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v12 << 6);
    v21 = v52;
    v22 = v54;
    v23 = v55[2];
    v23(v54, v52[6] + v55[9] * v20, v56);
    v24 = v21[7];
    v25 = v58[9];
    v43 = v20;
    v26 = v58[2];
    v27 = v57;
    v28 = v48;
    v26(v57, v24 + v25 * v20, v48);
    v29 = v49;
    v30 = v22;
    v31 = v56;
    v23(v49, v30, v56);
    v32 = v51;
    v26((v29 + *(v51 + 48)), v27, v28);
    v33 = v50;
    sub_10000BBC4(v29, v50, &qword_100842BD8, &qword_1006E0120);
    v34 = *(v32 + 48);
    LOBYTE(v32) = MobileDocumentElementRequestInfo.isRetaining.getter();
    sub_1003D536C(v29);
    v35 = v58[1];
    v35(v33 + v34, v28);
    v36 = v55[1];
    v36(v33, v31);
    v35(v57, v28);
    result = (v36)(v54, v31);
    v16 = v53;
    if (v32)
    {
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_1003D4024(v39, v38, v40, v52);
      }
    }
  }

  v18 = v12;
  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= v41)
    {
      return sub_1003D4024(v39, v38, v40, v52);
    }

    v19 = *(v42 + 8 * v12);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v53 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003D36AC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1003D4D00(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1003D3750(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

Swift::Int sub_1003D37D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100007224(&qword_100842BE8, &qword_1006E0138);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_10000BBC4(v17 + 32 * v16, v35, &unk_100845ED0, &qword_1006DA1D0);
    v33 = v35[0];
    v34 = v35[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    v30 = (*(v9 + 56) + 32 * v24);
    *v30 = v33;
    v30[1] = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1003D3A34(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = type metadata accessor for IQCType();
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

  sub_100007224(&qword_100834918, &qword_1006C0120);
  result = static _DictionaryStorage.allocate(capacity:)();
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
    v43 = *(a4[7] + 8 * v22);
    v26 = *(v24 + 32);
    v10 = v18;
    v26(v18, v25, v17);
    v13 = v39;
    sub_1003D53D4(&qword_100834900, &type metadata accessor for IQCType, &protocol conformance descriptor for IQCType);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
    *(*(v13 + 56) + 8 * v30) = v43;
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

Swift::Int sub_1003D3DCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100007224(&qword_100849420, &qword_1006DA510);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
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
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1003D4024(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = type metadata accessor for MobileDocumentElementRequestInfo();
  v54 = *(v58 - 8);
  v8 = __chkstk_darwin(v58);
  v57 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = v44 - v10;
  v11 = type metadata accessor for MobileDocumentElement();
  v53 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v56 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = v44 - v14;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100007224(&qword_100842BE0, &unk_1006E0128);
  result = static _DictionaryStorage.allocate(capacity:)();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_1003D53D4(&qword_10083BCC8, &type metadata accessor for MobileDocumentElement, &protocol conformance descriptor for MobileDocumentElement);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_26:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
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

Swift::Int sub_1003D44C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100007224(&qword_100834838, &unk_1006DA640);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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
      v10 = (v15 - 1) & v15;
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

unint64_t sub_1003D470C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100007224(&qword_10083BCE0, &qword_1006DA200);
  result = static _SetStorage.allocate(capacity:)();
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
  v22 = result + 56;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v23 = (v10 - 1) & v10;
LABEL_16:
    v15 = v4;
    v16 = (*(v4 + 48) + 24 * (v12 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    Hasher.init(_seed:)();
    sub_10000B8B8(v17, v18);

    Data.hash(into:)();
    sub_1003D4B28(v24, v19);
    Hasher._finalize()();
    result = _HashTable.nextHole(atOrAfter:)();
    *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v20 = (*(v6 + 48) + 24 * result);
    *v20 = v17;
    v20[1] = v18;
    v20[2] = v19;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    v4 = v15;
    v10 = v23;
    if (!v5)
    {
LABEL_18:

      return v6;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_18;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v23 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int sub_1003D4904(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100007224(&qword_10083BC70, &unk_1006E0140);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1003D4B28(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void *sub_1003D4CCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1003CFAF0(a1, *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t *sub_1003D4D00(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v30 = result;
  v33 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_13:
    v17 = v14 | (v8 << 6);
    v18 = (*(v7 + 48) + 24 * v17);
    v19 = v18[2];
    if (*(v19 + 16))
    {
      v32 = v17;
      v35 = v12;
      v20 = *v18;
      v21 = v18[1];
      Hasher.init(_seed:)();
      v34 = v20;
      sub_10000B8B8(v20, v21);

      String.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v19 + 32);
      v24 = v22 & ~v23;
      if ((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(v19 + 48) + 16 * v24);
          v27 = *v26 == a4 && v26[1] == a5;
          if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_10000B90C(v34, v21);

        v7 = a3;
        *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        v28 = __OFADD__(v33++, 1);
        v12 = v35;
        if (v28)
        {
          __break(1u);
LABEL_26:

          return sub_1003D470C(v30, a2, v33, v7);
        }
      }

      else
      {
LABEL_5:
        sub_10000B90C(v34, v21);

        v7 = a3;
        v12 = v35;
      }
    }
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
      goto LABEL_26;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003D4F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v36[0] = v4;
    v36[1] = v36;
    v37 = v10;
    __chkstk_darwin(v12);
    v38 = v36 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v11);
    v41 = 0;
    v10 = 0;
    v13 = v7 + 56;
    v14 = 1 << *(v7 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v39 = v7;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = v18 | (v10 << 6);
      v22 = (*(v7 + 48) + 24 * v21);
      v23 = v22[2];
      if (*(v23 + 16))
      {
        v40 = v21;
        v44 = v16;
        v24 = *v22;
        v4 = v22[1];
        Hasher.init(_seed:)();
        v42 = v4;
        v43 = v24;
        sub_10000B8B8(v24, v4);

        String.hash(into:)();
        v25 = Hasher._finalize()();
        v11 = v23 + 56;
        v26 = -1 << *(v23 + 32);
        v27 = v25 & ~v26;
        if ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v4 = ~v26;
          while (1)
          {
            v28 = (*(v23 + 48) + 16 * v27);
            v29 = *v28 == a2 && v28[1] == a3;
            if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v27 = (v27 + 1) & v4;
            if (((*(v11 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          sub_10000B90C(v43, v42);

          v7 = v39;
          *&v38[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
          v30 = __OFADD__(v41++, 1);
          v16 = v44;
          if (v30)
          {
            __break(1u);
LABEL_27:
            v31 = sub_1003D470C(v38, v37, v41, v7);

            return v31;
          }
        }

        else
        {
LABEL_6:
          sub_10000B90C(v43, v42);

          v7 = v39;
          v16 = v44;
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_27;
      }

      v20 = *(v13 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = v7;
  v34 = swift_slowAlloc();

  v35 = sub_1003D36AC(v34, v10, v33, a2, a3);

  return v35;
}

void *sub_1003D52CC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = *a1;
  v9[1] = *(v3 + 16);
  result = sub_1003CEDDC(sub_1003D5334, v9, v7);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1003D536C(uint64_t a1)
{
  v2 = sub_100007224(&qword_100842BD8, &qword_1006E0120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003D53D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003D541C(uint64_t *a1, int a2)
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

uint64_t sub_1003D5464(uint64_t result, int a2, int a3)
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

unint64_t sub_1003D54C0()
{
  result = qword_100842BF0;
  if (!qword_100842BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842BF0);
  }

  return result;
}

uint64_t sub_1003D5518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003D5668, 0, 0);
}

uint64_t sub_1003D5668()
{
  v7 = v0[5];
  static DaemonSignposts.MobileDocumentReader.startReadDocument.getter();
  DIPSignpost.init(_:)();
  v6 = (*(v7 + 32) + **(v7 + 32));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1003D57A0;
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];

  return v6(v4, v3, v2);
}

uint64_t sub_1003D57A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v5 = sub_1003D5B8C;
  }

  else
  {
    v5 = sub_1003D58B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003D58B8()
{
  v1 = v0[17];
  type metadata accessor for CBORDecoder();
  swift_allocObject();
  CBORDecoder.init()();
  sub_100007224(&qword_100841BE0, &qword_1006DEB08);
  sub_1003D6CEC();
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();

  v2 = v0[15];
  v3 = v0[16];
  if (v1)
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.documentReaderCannotDecodeSessionTranscript(_:), v0[7]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003D6A18(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v2, v3);
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    sub_10000B90C(v0[15], v0[16]);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v9 + 8))(v8, v10);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003D5B8C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003D5C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for ISO18013ReaderRequest();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003D5E48, 0, 0);
}

uint64_t sub_1003D5E48(uint64_t a1)
{
  v55 = v1;
  v2 = v1[16];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[3];
  defaultLogger()();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  log = v7;
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[21];
  v12 = v1[17];
  v11 = v1[18];
  v13 = v1[16];
  if (v9)
  {
    v50 = v1[17];
    v47 = v8;
    v14 = v1[14];
    v15 = v1[15];
    v16 = v1[13];
    v48 = v1[21];
    v17 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v54[0] = v46;
    *v17 = 136315138;
    v6(v15, v13, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v14 + 8))(v13, v16);
    v21 = sub_100141FE4(v18, v20, v54);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, log, v47, "SecureTransactionServiceManaging sending iso18013 request %s", v17, 0xCu);
    sub_10000BB78(v46);

    v22 = *(v11 + 8);
    v22(v48, v50);
  }

  else
  {
    v23 = v1[13];
    v24 = v1[14];

    (*(v24 + 8))(v13, v23);
    v22 = *(v11 + 8);
    v22(v10, v12);
  }

  v1[22] = v22;
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  CBOREncoder.init()();
  sub_1003D6A18(&qword_100842BF8, &type metadata accessor for ISO18013ReaderRequest, &protocol conformance descriptor for ISO18013ReaderRequest);
  v25 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v27 = v26;
  v1[23] = v25;
  v1[24] = v26;

  defaultLogger()();
  sub_10000B8B8(v25, v27);
  swift_unknownObjectRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  sub_10000B90C(v25, v27);
  v30 = os_log_type_enabled(v28, v29);
  v31 = v1[20];
  v32 = v1[17];
  if (v30)
  {
    v51 = v1[17];
    v33 = swift_slowAlloc();
    v49 = v31;
    v34 = swift_slowAlloc();
    v54[0] = v34;
    *v33 = 136315138;
    v35 = sub_1003D6A70();
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v35 = 0x3E6C696E3CLL;
      v37 = 0xE500000000000000;
    }

    v38 = sub_100141FE4(v35, v37, v54);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "SecureTransactionServiceManaging sending request %s", v33, 0xCu);
    sub_10000BB78(v34);

    v39 = v51;
    v40 = v49;
  }

  else
  {

    v40 = v31;
    v39 = v32;
  }

  v22(v40, v39);
  loga = (*(v1[5] + 40) + **(v1[5] + 40));
  v41 = swift_task_alloc();
  v1[25] = v41;
  *v41 = v1;
  v41[1] = sub_1003D64C4;
  v42 = v1[12];
  v43 = v1[5];
  v44 = v1[4];

  return (loga)(v42, v25, v27, v44, v43);
}

uint64_t sub_1003D64C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {
    v7 = sub_1003D6770;
  }

  else
  {
    *(v6 + 216) = a2;
    *(v6 + 224) = a1;
    v7 = sub_1003D65F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003D65F8()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v14 = *(v0 + 176);
  v5 = *(v0 + 152);
  v13 = *(v0 + 136);
  v6 = *(v0 + 48);
  v12 = *(v0 + 32);
  (*(*(v0 + 88) + 32))(*(v0 + 16), *(v0 + 96), *(v0 + 80));
  defaultLogger()();
  v7 = swift_task_alloc();
  *(v7 + 16) = v12;
  *(v7 + 32) = v6;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  Logger.sensitive(_:)();
  sub_10000B90C(v4, v3);

  v14(v5, v13);

  v8 = *(v0 + 8);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);

  return v8(v9, v10);
}

uint64_t sub_1003D6770()
{
  sub_10000B90C(v0[23], v0[24]);
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.documentReaderCannotBuildRequest(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003D6A18(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003D6950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _StringGuts.grow(_:)(54);
  v5._object = 0x8000000100714CD0;
  v5._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v5);
  v6 = sub_1003D6A70();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0x3E6C696E3CLL;
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v6);

  return 0;
}

uint64_t sub_1003D6A18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003D6A70()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0);
  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = [v1 decodeFromData:isa];

  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CBOR.readableString.getter();

  return v5;
}

unint64_t sub_1003D6CEC()
{
  result = qword_100842C00;
  if (!qword_100842C00)
  {
    sub_10000B870(&qword_100841BE0, &qword_1006DEB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842C00);
  }

  return result;
}

void *sub_1003D6D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10017340C(0, v1, 0);
    v3 = a1 + 56;
    do
    {

      sub_100007224(&qword_10083C0A0, &unk_1006DA5C0);
      sub_100007224(&qword_100838820, &unk_1006DB6B0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10017340C((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[4 * v5];
      v6[4] = v8;
      v6[5] = v9;
      v6[6] = v10;
      v6[7] = v11;
      v3 += 32;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003D6E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001735D8(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      sub_100007224(&qword_100845FC0, &qword_1006E6500);
      sub_100007224(qword_100842CC8, &qword_1006E02D0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1001735D8((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1003D6FB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1001735F8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for StoredUploadAsset();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1001735F8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10001F348(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for StoredUploadAsset();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1001735F8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10001F348(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D71AC(uint64_t (**a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{

  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *a1 = sub_1003DC440;
  a1[1] = v6;
}

uint64_t sub_1003D7220(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 192) = a4;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderSession.State();
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1003D735C, 0, 0);
}

uint64_t sub_1003D735C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 192);
  v5 = *(*(v0 + 32) + 16);
  *(v0 + 104) = v5;
  os_unfair_lock_lock((v5 + 32));
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1003DA174;
  *(v9 + 24) = v8;
  *(v5 + 16) = sub_1003DA19C;
  *(v5 + 24) = v9;

  os_unfair_lock_unlock((v5 + 32));
  v10 = enum case for MobileDocumentReaderSession.State.ready(_:);
  v11 = *(v2 + 104);
  *(v0 + 112) = v11;
  *(v0 + 120) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v1, v10, v3);
  v7(v1);

  v12 = *(v2 + 8);
  *(v0 + 128) = v12;
  *(v0 + 136) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v3);
  if (v4 == 1)
  {
    static Clock<>.continuous.getter();
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_1003D786C;
LABEL_3:
    v14 = 3000000000000000000;
LABEL_6:

    return sub_1003DA1A4(v14, 0, 0, 0, 1);
  }

  v37 = *(v0 + 128);
  v15 = *(v0 + 112);
  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  v18 = *(v0 + 80);
  v19 = *(v0 + 192);
  os_unfair_lock_lock((v17 + 32));
  v21 = *(v17 + 16);
  v20 = *(v17 + 24);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1003DC45C;
  *(v23 + 24) = v22;
  *(v17 + 16) = sub_1003DC440;
  *(v17 + 24) = v23;

  os_unfair_lock_unlock((v17 + 32));
  v15(v16, enum case for MobileDocumentReaderSession.State.connecting(_:), v18);
  v21(v16);

  v37(v16, v18);
  if (v19 == 1)
  {
    static Clock<>.continuous.getter();
    v24 = swift_task_alloc();
    *(v0 + 160) = v24;
    *v24 = v0;
    v24[1] = sub_1003D7E10;
    v14 = 1000000000000000000;
    goto LABEL_6;
  }

  v38 = *(v0 + 128);
  v26 = *(v0 + 112);
  v27 = *(v0 + 96);
  v28 = *(v0 + 104);
  v29 = *(v0 + 80);
  v30 = *(v0 + 192);
  os_unfair_lock_lock((v28 + 32));
  v32 = *(v28 + 16);
  v31 = *(v28 + 24);
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v31;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1003DC45C;
  *(v34 + 24) = v33;
  *(v28 + 16) = sub_1003DC440;
  *(v28 + 24) = v34;

  os_unfair_lock_unlock((v28 + 32));
  v26(v27, enum case for MobileDocumentReaderSession.State.awaitingApproval(_:), v29);
  v32(v27);

  v38(v27, v29);
  if (v30 == 1)
  {
    static Clock<>.continuous.getter();
    v35 = swift_task_alloc();
    *(v0 + 176) = v35;
    *v35 = v0;
    v35[1] = sub_1003D8268;
    goto LABEL_3;
  }

  sub_1003D8514(*(v0 + 24), *(v0 + 16));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1003D786C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003D7D84;
  }

  else
  {
    v5 = sub_1003D79DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003D79DC()
{
  v24 = *(v0 + 128);
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 192);
  os_unfair_lock_lock((v3 + 32));
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1003DC45C;
  *(v9 + 24) = v8;
  *(v3 + 16) = sub_1003DC440;
  *(v3 + 24) = v9;

  os_unfair_lock_unlock((v3 + 32));
  v1(v2, enum case for MobileDocumentReaderSession.State.connecting(_:), v4);
  v7(v2);

  v24(v2, v4);
  if (v5 == 1)
  {
    static Clock<>.continuous.getter();
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_1003D7E10;
    v11 = 1000000000000000000;
LABEL_5:

    return sub_1003DA1A4(v11, 0, 0, 0, 1);
  }

  v25 = *(v0 + 128);
  v12 = *(v0 + 112);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = *(v0 + 80);
  v16 = *(v0 + 192);
  os_unfair_lock_lock((v14 + 32));
  v18 = *(v14 + 16);
  v17 = *(v14 + 24);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1003DC45C;
  *(v20 + 24) = v19;
  *(v14 + 16) = sub_1003DC440;
  *(v14 + 24) = v20;

  os_unfair_lock_unlock((v14 + 32));
  v12(v13, enum case for MobileDocumentReaderSession.State.awaitingApproval(_:), v15);
  v18(v13);

  v25(v13, v15);
  if (v16 == 1)
  {
    static Clock<>.continuous.getter();
    v21 = swift_task_alloc();
    *(v0 + 176) = v21;
    *v21 = v0;
    v21[1] = sub_1003D8268;
    v11 = 3000000000000000000;
    goto LABEL_5;
  }

  sub_1003D8514(*(v0 + 24), *(v0 + 16));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1003D7D84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D7E10()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003D81DC;
  }

  else
  {
    v5 = sub_1003D7F80;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003D7F80()
{
  v13 = *(v0 + 128);
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 192);
  os_unfair_lock_lock((v3 + 32));
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1003DC45C;
  *(v9 + 24) = v8;
  *(v3 + 16) = sub_1003DC440;
  *(v3 + 24) = v9;

  os_unfair_lock_unlock((v3 + 32));
  v1(v2, enum case for MobileDocumentReaderSession.State.awaitingApproval(_:), v4);
  v7(v2);

  v13(v2, v4);
  if (v5 == 1)
  {
    static Clock<>.continuous.getter();
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_1003D8268;

    return sub_1003DA1A4(3000000000000000000, 0, 0, 0, 1);
  }

  else
  {
    sub_1003D8514(*(v0 + 24), *(v0 + 16));

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1003D81DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D8268()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003D8488;
  }

  else
  {
    v5 = sub_1003D83D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003D83D8()
{
  sub_1003D8514(v0[3], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003D8488()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D8514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for DIPError.Code();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v92 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_1008426E8, &qword_1006DF768);
  __chkstk_darwin(v5 - 8);
  v72 = &v70 - v6;
  v7 = sub_100007224(&qword_1008426F0, &qword_1006DF770);
  __chkstk_darwin(v7 - 8);
  v74 = &v70 - v8;
  v71 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v75 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for MobileDocumentRequestType.Storage();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v84 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for MobileDocumentIssuer();
  v11 = *(v82 - 8);
  __chkstk_darwin(v82);
  v85 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ISO18013Response();
  v83 = *(v13 - 8);
  __chkstk_darwin(v13);
  v86 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DeveloperTestDocumentResponseBuilder();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v89 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v16 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v70 - v17;
  v94 = sub_100007224(&qword_100842CB8, &unk_1006E02C0);
  __chkstk_darwin(v94);
  v93 = &v70 - v18;
  v19 = type metadata accessor for MobileDocumentType();
  v97 = *(v19 - 8);
  v98 = v19;
  __chkstk_darwin(v19);
  v102 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MobileDocumentRequestType();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v77 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v70 - v25;
  MobileDocumentReaderRequest.documentRequestType.getter();
  v27 = MobileDocumentRequestType.requestedElements.getter();
  v28 = *(v22 + 8);
  v79 = v21;
  v78 = v22 + 8;
  v76 = v28;
  v28(v26, v21);
  v29 = *(v27 + 16);
  if (!v29)
  {

    v30 = _swiftEmptyArrayStorage;
LABEL_5:
    v105 = v30;
    v34 = v103;
    sub_1003DA65C(&v105);
    if (v34)
    {
    }

    if (!v105[2])
    {

      (*(v90 + 104))(v92, enum case for DIPError.Code.documentReaderEmptyRequest(_:), v91);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003DC304(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v68 = 57;
      strcpy(v67, "response(for:)");
      v67[15] = -18;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    v100 = v13;
    v101 = a1;
    v99 = v11;
    v35 = v95;
    sub_1003DC278(v105 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v95);

    v36 = *(v35 + *(v96 + 48));
    v37 = v94;
    v38 = *(v94 + 48);
    v39 = *(v97 + 32);
    v40 = v93;
    v41 = v98;
    v39(v93, v35, v98);
    *&v40[v38] = v36;
    v42 = *&v40[*(v37 + 48)];
    v43 = v102;
    v39(v102, v40, v41);
    sub_1003D9744(v43);
    MobileDocumentType.iso18013Identifier.getter();
    v44 = DeveloperTestDocumentResponseBuilder.init(documentType:payloadElements:)();
    __chkstk_darwin(v44);
    v68 = v102;
    v69 = v101;
    sub_1003CE4C8(sub_1003DC2E8, v67, v42);
    v46 = v45;

    sub_1003D6D50(v46);

    v47 = v86;
    DeveloperTestDocumentResponseBuilder.buildResponse(requestedElements:)();

    MobileDocumentIssuer.init(jurisdictionCode:)();
    v48 = v77;
    MobileDocumentReaderRequest.documentRequestType.getter();
    v49 = v84;
    MobileDocumentRequestType.storage.getter();
    v76(v48, v79);
    v50 = v80;
    v51 = v81;
    v52 = (*(v80 + 88))(v49, v81);
    if (v52 == enum case for MobileDocumentRequestType.Storage.displayOnly(_:) || v52 == enum case for MobileDocumentRequestType.Storage.dataTransfer(_:))
    {
      (*(v50 + 8))(v84, v51);
      v55 = v75;
      sub_1003C4424(v47, v75);
      v54 = v99;
      v53 = v100;
      v56 = v82;
      v57 = v70;
      v58 = v74;
      v59 = v71;
      (*(v70 + 16))(v74, v55, v71);
      (*(v57 + 56))(v58, 0, 1, v59);
      v60 = v72;
      v63 = v85;
      (*(v54 + 16))(v72, v85, v56);
      (*(v54 + 56))(v60, 0, 1, v56);
      MobileDocumentReaderResponse.init(responseData:sessionTranscript:mobileIdentityDocumentElements:issuer:)();
      (*(v57 + 8))(v75, v59);
      v64 = v56;
    }

    else
    {
      if (v52 != enum case for MobileDocumentRequestType.Storage.rawDataRequest(_:))
      {
        (*(v90 + 104))(v92, enum case for DIPError.Code.internalError(_:), v91);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1003DC304(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        v68 = 105;
        strcpy(v67, "response(for:)");
        v67[15] = -18;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*(v99 + 8))(v85, v82);
        (*(v83 + 8))(v47, v100);
        (*(v87 + 8))(v89, v88);
        (*(v50 + 8))(v84, v51);
        return (*(v97 + 8))(v102, v98);
      }

      (*(v50 + 8))(v84, v51);
      type metadata accessor for CBOREncoder();
      swift_allocObject();
      CBOREncoder.init()();
      sub_1003DC304(&qword_100842CC0, &type metadata accessor for ISO18013Response, &protocol conformance descriptor for ISO18013Response);
      v53 = v100;
      dispatch thunk of CBOREncoder.encode<A>(_:)();
      v54 = v99;
      v61 = v82;

      (*(v70 + 56))(v74, 1, 1, v71);
      v62 = v72;
      v63 = v85;
      (*(v54 + 16))(v72, v85, v61);
      (*(v54 + 56))(v62, 0, 1, v61);
      MobileDocumentReaderResponse.init(responseData:sessionTranscript:mobileIdentityDocumentElements:issuer:)();
      v64 = v61;
      v47 = v86;
    }

    v65 = v88;
    v66 = v87;
    (*(v54 + 8))(v63, v64);
    (*(v83 + 8))(v47, v53);
    (*(v66 + 8))(v89, v65);
    return (*(v97 + 8))(v102, v98);
  }

  v100 = v13;
  v101 = a1;
  v99 = v11;
  v30 = sub_1003BA2D8(v29, 0);
  v31 = sub_1003BCF14(&v104, v30 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v29, v27);
  v32 = v104;

  result = sub_10001FA6C(v32);
  if (v31 == v29)
  {

    v11 = v99;
    v13 = v100;
    a1 = v101;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D9528(uint64_t a1, uint64_t a2)
{
  v5 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v6 = __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  sub_1003DC278(a1, &v22 - v9);

  v11 = MobileDocumentType.iso18013Identifier.getter();
  if (v2)
  {
    v13 = type metadata accessor for MobileDocumentType();
    (*(*(v13 - 8) + 8))(v10, v13);
  }

  else
  {
    v14 = v12;
    v23 = v11;
    v15 = type metadata accessor for MobileDocumentType();
    v16 = *(*(v15 - 8) + 8);
    v16(v10, v15);
    sub_1003DC278(a2, v8);

    v17 = MobileDocumentType.iso18013Identifier.getter();
    v19 = v18;
    v16(v8, v15);
    if (v23 == v17 && v14 == v19)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      LOBYTE(v8) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v8 & 1;
}

uint64_t sub_1003D9744(uint64_t a1)
{
  v2 = type metadata accessor for DeveloperTestPhotoIDCredentialBuilder();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPError.Code();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale.Region();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = type metadata accessor for MobileDocumentType.Identifier();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  MobileDocumentType.storage.getter();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == enum case for MobileDocumentType.Identifier.nationalIDCard(_:))
  {
    (*(v17 + 96))(v19, v16);
    (*(v10 + 16))(v15, v19, v9);
    Locale.Region.init(stringLiteral:)();
    sub_1003DC304(&qword_100834780, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *(v10 + 8);
    v22(v13, v9);
    v22(v15, v9);
    if (v21)
    {
      DeveloperTestJapanNationalIDCardCredentialBuilder.init()();
      v23 = DeveloperTestJapanNationalIDCardCredentialBuilder.payloadElements.getter();
      (*(v36 + 8))(v8, v37);
      v22(v19, v9);
      return v23;
    }

    else
    {
      (*(v10 + 32))(v13, v19, v9);
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v25._countAndFlagsBits = 0xD000000000000026;
      v25._object = 0x80000001007110A0;
      String.append(_:)(v25);
      v26._countAndFlagsBits = Locale.Region.identifier.getter();
      v43 = v22;
      String.append(_:)(v26);

      v27._countAndFlagsBits = 0xD000000000000013;
      v27._object = 0x80000001007110D0;
      String.append(_:)(v27);
      (*(v38 + 104))(v40, enum case for DIPError.Code.documentReaderUnsupportedNationalIDCardRegion(_:), v39);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003DC304(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return v43(v13, v9);
    }
  }

  else if (v20 == enum case for MobileDocumentType.Identifier.driversLicense(_:))
  {
    return static DeveloperTestMDLCredentialBuilder.payloadElements.getter();
  }

  else if (v20 == enum case for MobileDocumentType.Identifier.photoID(_:))
  {
    v28 = v32;
    DeveloperTestPhotoIDCredentialBuilder.init()();
    v29 = DeveloperTestPhotoIDCredentialBuilder.payloadElements.getter();
    (*(v33 + 8))(v28, v34);
    return v29;
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v30._countAndFlagsBits = 0xD00000000000001ALL;
    v30._object = 0x8000000100710680;
    String.append(_:)(v30);
    type metadata accessor for MobileDocumentType();
    _print_unlocked<A, B>(_:_:)();
    (*(v38 + 104))(v40, enum case for DIPError.Code.documentReaderUnknownDocumentType(_:), v39);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003DC304(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return (*(v17 + 8))(v19, v16);
  }
}

char *sub_1003D9F00@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  v5 = type metadata accessor for MobileDocumentRequestType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentReaderRequest.documentRequestType.getter();
  v9 = MobileDocumentRequestType.isRawDataRequest.getter();
  (*(v6 + 8))(v8, v5);
  result = sub_10037A314(a1, v9 & 1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1003DA030(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock((v3 + 32));
  sub_1003DC424((v3 + 16));
  os_unfair_lock_unlock((v3 + 32));
}

uint64_t sub_1003DA090(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_1003D7220(a1, a2, v5, 1);
}

uint64_t sub_1003DA13C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003DA1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1003DA2A4, 0, 0);
}

uint64_t sub_1003DA2A4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1003DC304(&qword_100842CA8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1003DC304(&qword_100842CB0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1003DA434;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1003DA434()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1003DA5F0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1003DA5F0()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Int sub_1003DA65C(uint64_t *a1)
{
  v2 = *(sub_100007224(&qword_10083C0D0, &unk_1006DF880) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1003BD224(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1003DA710(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1003DA710(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        sub_100007224(&qword_10083C0D0, &unk_1006DF880);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100007224(&qword_10083C0D0, &unk_1006DF880) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003DAC78(v8, v9, a1, v4);
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
    return sub_1003DA854(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1003DA854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v11 = __chkstk_darwin(v10);
  v60 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v63 = &v49 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v49 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v49 - v19;
  result = __chkstk_darwin(v18);
  v24 = &v49 - v23;
  v51 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v22 + 72);
    v27 = *a4 + v26 * (a3 - 1);
    v56 = -v26;
    v57 = v25;
    v28 = a1 - a3;
    v50 = v26;
    v29 = v25 + v26 * a3;
    v61 = v20;
    v62 = &v49 - v23;
    v58 = v17;
    v59 = v10;
    while (2)
    {
      v54 = v27;
      v55 = a3;
      v52 = v29;
      v53 = v28;
      v30 = v28;
      while (1)
      {
        sub_1003DC278(v29, v24);
        v66 = v27;
        sub_1003DC278(v27, v20);
        sub_1003DC278(v24, v17);

        v31 = MobileDocumentType.iso18013Identifier.getter();
        if (v5)
        {
          v48 = type metadata accessor for MobileDocumentType();
          (*(*(v48 - 8) + 8))(v17, v48);
          sub_1003DC34C(v20);
          return sub_1003DC34C(v62);
        }

        v33 = v31;
        v34 = v32;
        v64 = v29;
        v65 = v30;
        v35 = v20;
        v36 = type metadata accessor for MobileDocumentType();
        v37 = *(*(v36 - 8) + 8);
        v37(v17, v36);
        v38 = v63;
        sub_1003DC278(v35, v63);

        v39 = MobileDocumentType.iso18013Identifier.getter();
        v67 = 0;
        v40 = v39;
        v42 = v41;
        v37(v38, v36);
        if (v33 == v40 && v34 == v42)
        {

          v20 = v61;
          sub_1003DC34C(v61);
          v24 = v62;
          result = sub_1003DC34C(v62);
          v5 = v67;
          v17 = v58;
          goto LABEL_13;
        }

        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v20 = v61;
        sub_1003DC34C(v61);
        v24 = v62;
        result = sub_1003DC34C(v62);
        if ((v43 & 1) == 0)
        {
          break;
        }

        v5 = v67;
        v44 = v65;
        if (!v57)
        {
          __break(1u);
          return result;
        }

        v45 = v64;
        v46 = v60;
        sub_1003DC3B4(v64, v60);
        v47 = v66;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1003DC3B4(v46, v47);
        v27 = v47 + v56;
        v29 = v45 + v56;
        v30 = v44 + 1;
        v17 = v58;
        if (v44 == -1)
        {
          goto LABEL_13;
        }
      }

      v5 = v67;
      v17 = v58;
LABEL_13:
      a3 = v55 + 1;
      v27 = v54 + v50;
      v28 = v53 - 1;
      v29 = v52 + v50;
      if (v55 + 1 != v51)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1003DAC78(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v156 = a1;
  v8 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v176 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v162 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v160 = &v146 - v12;
  v13 = __chkstk_darwin(v11);
  v161 = &v146 - v14;
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v19 = __chkstk_darwin(&v146 - v18);
  v21 = &v146 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v146 - v23;
  v25 = __chkstk_darwin(v22);
  v175 = &v146 - v26;
  v27 = __chkstk_darwin(v25);
  result = __chkstk_darwin(v27);
  if (a3[1] < 1)
  {
    v36 = _swiftEmptyArrayStorage;
LABEL_104:
    v58 = *v156;
    if (*v156)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v34 = a3[1];
  v153 = &v146 - v30;
  v154 = v29;
  v163 = result;
  v165 = v21;
  v157 = v33;
  v158 = v32;
  v159 = v31;
  v152 = a4;
  v35 = 0;
  v36 = _swiftEmptyArrayStorage;
  v170 = a3;
  v171 = v8;
  v167 = v24;
  while (1)
  {
    if ((v35 + 1) >= v34)
    {
      v45 = (v35 + 1);
      v58 = v35;
    }

    else
    {
      v168 = v34;
      v37 = *a3;
      v38 = *(v176 + 72);
      v174 = *a3 + v38 * (v35 + 1);
      v39 = v153;
      sub_1003DC278(v174, v153);
      v40 = v154;
      sub_1003DC278(v37 + v38 * v35, v154);
      LODWORD(v164) = sub_1003D9528(v39, v40);
      if (v5)
      {
        sub_1003DC34C(v40);
        sub_1003DC34C(v39);
      }

      sub_1003DC34C(v40);
      sub_1003DC34C(v39);
      v151 = v35;
      v41 = v35 + 2;
      result = v37 + v38 * v41;
      v42 = v38;
      v169 = v38;
      v43 = v174;
      v166 = v36;
      while (1)
      {
        v45 = v168;
        if (v168 == v41)
        {
          break;
        }

        v173 = result;
        v46 = v175;
        sub_1003DC278(result, v175);
        sub_1003DC278(v43, v24);
        v47 = v46;
        v48 = v165;
        sub_1003DC278(v47, v165);

        v49 = MobileDocumentType.iso18013Identifier.getter();
        v51 = v50;
        v172 = v41;
        v174 = v43;
        v52 = type metadata accessor for MobileDocumentType();
        v53 = *(*(v52 - 8) + 8);
        v53(v48, v52);
        v54 = v163;
        sub_1003DC278(v24, v163);

        v55 = MobileDocumentType.iso18013Identifier.getter();
        v57 = v56;
        v53(v54, v52);
        if (v49 == v55 && v51 == v57)
        {
          v44 = 0;
        }

        else
        {
          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v5 = 0;
        v24 = v167;

        sub_1003DC34C(v24);
        sub_1003DC34C(v175);
        v41 = (v172 + 1);
        v42 = v169;
        a3 = v170;
        result = v173 + v169;
        v43 = v174 + v169;
        v36 = v166;
        if ((v164 ^ v44))
        {
          v45 = v172;
          break;
        }
      }

      v58 = v151;
      if (v164)
      {
        if (v45 < v151)
        {
          goto LABEL_140;
        }

        if (v151 < v45)
        {
          v108 = v42 * (v45 - 1);
          v109 = v45 * v42;
          v168 = v45;
          v110 = v151;
          v111 = v151 * v42;
          do
          {
            if (v110 != --v45)
            {
              v112 = *a3;
              if (!v112)
              {
                goto LABEL_144;
              }

              sub_1003DC3B4(v112 + v111, v162);
              if (v111 < v108 || v112 + v111 >= (v112 + v109))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v111 != v108)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1003DC3B4(v162, v112 + v108);
              v42 = v169;
              a3 = v170;
            }

            ++v110;
            v108 -= v42;
            v109 -= v42;
            v111 += v42;
          }

          while (v110 < v45);
          v58 = v151;
          v45 = v168;
        }
      }
    }

    v59 = a3[1];
    if (v45 >= v59)
    {
      goto LABEL_22;
    }

    if (__OFSUB__(v45, v58))
    {
      goto LABEL_136;
    }

    if (v45 - v58 >= v152)
    {
LABEL_22:
      v61 = v45;
      if (v45 < v58)
      {
        goto LABEL_135;
      }

      goto LABEL_23;
    }

    if (__OFADD__(v58, v152))
    {
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
      return result;
    }

    if (&v58[v152] >= v59)
    {
      v60 = a3[1];
    }

    else
    {
      v60 = &v58[v152];
    }

    if (v60 < v58)
    {
      goto LABEL_139;
    }

    if (v45 == v60)
    {
      goto LABEL_22;
    }

    v166 = v36;
    v113 = *a3;
    v114 = *(v176 + 72);
    v115 = *a3 + v114 * (v45 - 1);
    v164 = -v114;
    v151 = v58;
    v116 = &v58[-v45];
    v168 = v45;
    v169 = v113;
    v147 = v114;
    v117 = v113 + v45 * v114;
    v119 = v158;
    v118 = v159;
    v120 = v157;
    v155 = v60;
    do
    {
      v148 = v117;
      v149 = v116;
      v121 = v116;
      v150 = v115;
      v122 = v115;
      while (1)
      {
        v173 = v117;
        sub_1003DC278(v117, v119);
        sub_1003DC278(v122, v118);
        sub_1003DC278(v119, v120);

        v123 = MobileDocumentType.iso18013Identifier.getter();
        v125 = v120;
        if (v5)
        {
          v145 = type metadata accessor for MobileDocumentType();
          (*(*(v145 - 8) + 8))(v120, v145);
LABEL_117:
          sub_1003DC34C(v159);
          sub_1003DC34C(v158);
        }

        v126 = v123;
        v127 = v124;
        v172 = v121;
        v128 = type metadata accessor for MobileDocumentType();
        v129 = *(*(v128 - 8) + 8);
        v174 = 0;
        v129(v125, v128);
        v130 = v118;
        v131 = v161;
        sub_1003DC278(v130, v161);

        v132 = v174;
        v133 = MobileDocumentType.iso18013Identifier.getter();
        v174 = v132;
        if (v132)
        {

          v129(v131, v128);
          goto LABEL_117;
        }

        v135 = v133;
        v136 = v134;
        v129(v131, v128);
        if (v126 == v135 && v127 == v136)
        {
          break;
        }

        v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v118 = v159;
        sub_1003DC34C(v159);
        v119 = v158;
        result = sub_1003DC34C(v158);
        v5 = v174;
        if ((v137 & 1) == 0)
        {
          goto LABEL_98;
        }

        v138 = v172;
        v120 = v157;
        if (!v169)
        {
          goto LABEL_143;
        }

        v139 = v173;
        v140 = v160;
        sub_1003DC3B4(v173, v160);
        swift_arrayInitWithTakeFrontToBack();
        sub_1003DC3B4(v140, v122);
        v122 += v164;
        v117 = v139 + v164;
        v121 = (v138 + 1);
        if (v138 == -1)
        {
          goto LABEL_99;
        }
      }

      v118 = v159;
      sub_1003DC34C(v159);
      v119 = v158;
      sub_1003DC34C(v158);
      v5 = v174;
LABEL_98:
      v120 = v157;
LABEL_99:
      v115 = v150 + v147;
      v116 = v149 - 1;
      v117 = v148 + v147;
      ++v168;
      v61 = v155;
    }

    while (v168 != v155);
    a3 = v170;
    v36 = v166;
    v58 = v151;
    if (v155 < v151)
    {
      goto LABEL_135;
    }

LABEL_23:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003BC0AC(0, *(v36 + 2) + 1, 1, v36);
      v36 = result;
    }

    v63 = *(v36 + 2);
    v62 = *(v36 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      result = sub_1003BC0AC((v62 > 1), v63 + 1, 1, v36);
      v36 = result;
    }

    *(v36 + 2) = v64;
    v65 = &v36[16 * v63];
    *(v65 + 4) = v58;
    *(v65 + 5) = v61;
    v58 = *v156;
    if (!*v156)
    {
      goto LABEL_145;
    }

    v155 = v61;
    if (v63)
    {
      break;
    }

LABEL_71:
    v34 = a3[1];
    v35 = v155;
    v24 = v167;
    if (v155 >= v34)
    {
      goto LABEL_104;
    }
  }

  while (1)
  {
    v66 = v64 - 1;
    if (v64 >= 4)
    {
      v71 = &v36[16 * v64 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_124;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_125;
      }

      v78 = &v36[16 * v64];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_127;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_130;
      }

      if (v82 >= v74)
      {
        v100 = &v36[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_134;
        }

        if (v69 < v103)
        {
          v66 = v64 - 2;
        }

        goto LABEL_63;
      }

      goto LABEL_42;
    }

    if (v64 == 3)
    {
      v67 = *(v36 + 4);
      v68 = *(v36 + 5);
      v77 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      v70 = v77;
LABEL_42:
      if (v70)
      {
        goto LABEL_126;
      }

      v83 = &v36[16 * v64];
      v85 = *v83;
      v84 = *(v83 + 1);
      v86 = __OFSUB__(v84, v85);
      v87 = v84 - v85;
      v88 = v86;
      if (v86)
      {
        goto LABEL_129;
      }

      v89 = &v36[16 * v66 + 32];
      v91 = *v89;
      v90 = *(v89 + 1);
      v77 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v77)
      {
        goto LABEL_132;
      }

      if (__OFADD__(v87, v92))
      {
        goto LABEL_133;
      }

      if (v87 + v92 >= v69)
      {
        if (v69 < v92)
        {
          v66 = v64 - 2;
        }

        goto LABEL_63;
      }

      goto LABEL_56;
    }

    v93 = &v36[16 * v64];
    v95 = *v93;
    v94 = *(v93 + 1);
    v77 = __OFSUB__(v94, v95);
    v87 = v94 - v95;
    v88 = v77;
LABEL_56:
    if (v88)
    {
      goto LABEL_128;
    }

    v96 = &v36[16 * v66];
    v98 = *(v96 + 4);
    v97 = *(v96 + 5);
    v77 = __OFSUB__(v97, v98);
    v99 = v97 - v98;
    if (v77)
    {
      goto LABEL_131;
    }

    if (v99 < v87)
    {
      goto LABEL_71;
    }

LABEL_63:
    v104 = v66 - 1;
    if (v66 - 1 >= v64)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v105 = *&v36[16 * v104 + 32];
    v106 = *&v36[16 * v66 + 40];
    sub_1003DB9A0((*a3 + *(v176 + 72) * v105), *a3 + *(v176 + 72) * *&v36[16 * v66 + 32], (*a3 + *(v176 + 72) * v106), v58);
    if (v5)
    {
    }

    if (v106 < v105)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1003BBEA4(v36);
    }

    if (v104 >= *(v36 + 2))
    {
      goto LABEL_121;
    }

    v107 = &v36[16 * v104];
    *(v107 + 4) = v105;
    *(v107 + 5) = v106;
    v177 = v36;
    result = sub_1003BBE18(v66);
    v36 = v177;
    v64 = *(v177 + 2);
    if (v64 <= 1)
    {
      goto LABEL_71;
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
LABEL_137:
  result = sub_1003BBEA4(v36);
  v36 = result;
LABEL_106:
  v177 = v36;
  v141 = *(v36 + 2);
  if (v141 >= 2)
  {
    while (*a3)
    {
      v142 = *&v36[16 * v141];
      v143 = *&v36[16 * v141 + 24];
      sub_1003DB9A0((*a3 + *(v176 + 72) * v142), *a3 + *(v176 + 72) * *&v36[16 * v141 + 16], (*a3 + *(v176 + 72) * v143), v58);
      if (v5)
      {
      }

      if (v143 < v142)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1003BBEA4(v36);
      }

      if (v141 - 2 >= *(v36 + 2))
      {
        goto LABEL_123;
      }

      v144 = &v36[16 * v141];
      *v144 = v142;
      *(v144 + 1) = v143;
      v177 = v36;
      result = sub_1003BBE18(v141 - 1);
      v36 = v177;
      v141 = *(v177 + 2);
      if (v141 <= 1)
      {
      }
    }

    goto LABEL_142;
  }
}

unint64_t sub_1003DB9A0(char *a1, unint64_t a2, char *a3, char *a4)
{
  v5 = v4;
  v10 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v11 = __chkstk_darwin(v10);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v13);
  v15 = __chkstk_darwin(v14);
  v17 = &v81 - v16;
  __chkstk_darwin(v15);
  v19 = __chkstk_darwin(&v81 - v18);
  v21 = &v81 - v20;
  v22 = __chkstk_darwin(v19);
  v90 = &v81 - v23;
  result = __chkstk_darwin(v22);
  v93 = &v81 - v27;
  v29 = *(v28 + 72);
  if (!v29)
  {
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (a2 - a1 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_74;
  }

  v30 = &a3[-a2];
  if (&a3[-a2] != 0x8000000000000000 || v29 != -1)
  {
    v31 = (a2 - a1) / v29;
    v99 = a1;
    v98 = a4;
    v91 = v10;
    v92 = v29;
    if (v31 < v30 / v29)
    {
      v88 = result;
      v89 = v21;
      v32 = v31 * v29;
      if (a4 < a1 || &a1[v32] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v90;
      }

      else
      {
        v33 = v90;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v87 = &a4[v32];
      v97 = &a4[v32];
      if (v32 >= 1 && a2 < a3)
      {
        v84 = a3;
        while (1)
        {
          v36 = v93;
          sub_1003DC278(a2, v93);
          sub_1003DC278(a4, v33);
          v37 = v36;
          v38 = v89;
          sub_1003DC278(v37, v89);

          v39 = MobileDocumentType.iso18013Identifier.getter();
          if (v5)
          {
            v79 = type metadata accessor for MobileDocumentType();
            (*(*(v79 - 8) + 8))(v38, v79);
            sub_1003DC34C(v90);
            sub_1003DC34C(v93);
            goto LABEL_72;
          }

          v41 = v39;
          v42 = v33;
          v43 = v40;
          v94 = a4;
          v95 = a1;
          v96 = a2;
          v44 = type metadata accessor for MobileDocumentType();
          v45 = *(*(v44 - 8) + 8);
          v45(v38, v44);
          v46 = v42;
          v47 = v88;
          sub_1003DC278(v46, v88);

          v48 = MobileDocumentType.iso18013Identifier.getter();
          v50 = v49;
          v45(v47, v44);
          if (v41 == v48 && v43 == v50)
          {
            break;
          }

          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v33 = v90;
          sub_1003DC34C(v90);
          sub_1003DC34C(v93);
          v5 = 0;
          v51 = v95;
          if ((v52 & 1) == 0)
          {
            goto LABEL_30;
          }

          v53 = v92;
          a2 = &v92[v96];
          a4 = v94;
          v54 = v84;
          if (v95 < v96 || v95 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            if (v95 == v96)
            {
              goto LABEL_39;
            }

            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v92;
LABEL_39:
          a1 = &v53[v51];
          v99 = a1;
          if (a4 >= v87 || a2 >= v54)
          {
            goto LABEL_72;
          }
        }

        v33 = v90;
        sub_1003DC34C(v90);
        sub_1003DC34C(v93);
        v5 = 0;
        v51 = v95;
LABEL_30:
        v53 = v92;
        a4 = &v92[v94];
        v54 = v84;
        if (v51 < v94 || v51 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (v51 == v94)
          {
LABEL_36:
            v98 = a4;
            a2 = v96;
            goto LABEL_39;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v53 = v92;
        goto LABEL_36;
      }

      goto LABEL_72;
    }

    v85 = v25;
    v86 = v26;
    v34 = v30 / v29 * v29;
    if (a4 < a2 || a2 + v34 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_44:
        v55 = &a4[v34];
        if (v34 >= 1)
        {
          v56 = -v29;
          v57 = &a4[v34];
          v58 = v86;
          v94 = a4;
          v95 = a1;
          v83 = v17;
          v90 = -v29;
          do
          {
            v81 = v55;
            v59 = a2;
            a2 += v56;
            v96 = a2;
            v84 = v59;
            while (1)
            {
              v92 = a3;
              if (v59 <= a1)
              {
                v99 = v59;
                v97 = v81;
                goto LABEL_72;
              }

              v82 = v55;
              v88 = v57;
              v93 = v57 + v56;
              sub_1003DC278(v57 + v56, v17);
              v61 = v85;
              sub_1003DC278(a2, v85);
              sub_1003DC278(v17, v58);

              v62 = MobileDocumentType.iso18013Identifier.getter();
              if (v5)
              {
                v89 = v5;
                v80 = type metadata accessor for MobileDocumentType();
                (*(*(v80 - 8) + 8))(v58, v80);
                sub_1003DC34C(v61);
                sub_1003DC34C(v83);
                v99 = v84;
                v97 = v82;
                goto LABEL_72;
              }

              v64 = v62;
              v65 = v63;
              v66 = type metadata accessor for MobileDocumentType();
              v67 = *(*(v66 - 8) + 8);
              v67(v58, v66);
              v68 = v61;
              v69 = v61;
              v70 = v87;
              sub_1003DC278(v69, v87);

              v71 = MobileDocumentType.iso18013Identifier.getter();
              v89 = 0;
              v72 = v71;
              v74 = v73;
              v67(v70, v66);
              if (v64 == v72 && v65 == v74)
              {
                v75 = 0;
              }

              else
              {
                v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
              }

              a2 = v96;
              v76 = v68;
              v58 = v86;

              v77 = v92;
              a3 = &v92[v90];
              sub_1003DC34C(v76);
              v17 = v83;
              sub_1003DC34C(v83);
              a1 = v95;
              if (v75)
              {
                break;
              }

              v55 = v93;
              v5 = v89;
              if (v77 < v88 || a3 >= v88)
              {
                swift_arrayInitWithTakeFrontToBack();
                v60 = v94;
              }

              else
              {
                v60 = v94;
                if (v92 != v88)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v57 = v55;
              v56 = v90;
              v59 = v84;
              if (v93 <= v60)
              {
                a2 = v84;
                goto LABEL_71;
              }
            }

            v5 = v89;
            if (v77 < v84 || a3 >= v84)
            {
              swift_arrayInitWithTakeFrontToBack();
              v78 = v94;
            }

            else
            {
              v78 = v94;
              if (v92 != v84)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v57 = v88;
            v55 = v82;
            v56 = v90;
          }

          while (v88 > v78);
        }

LABEL_71:
        v99 = a2;
        v97 = v55;
LABEL_72:
        sub_1003BBFB0(&v99, &v98, &v97);
        return 1;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v29 = v92;
    goto LABEL_44;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_1003DC278(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DC304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003DC34C(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003DC3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003DC460@<X0>(uint64_t a2@<X8>)
{
  swift_getErrorValue();
  v3 = dispatch thunk of Error._domain.getter();
  v5 = v4;
  if (v3 == String.init(cString:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  swift_getErrorValue();
  result = dispatch thunk of Error._code.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    if ((result - 4) <= 0x13)
    {
      v10 = *(&off_10080EC10 + (result - 4));
LABEL_13:
      v11 = *v10;
      v12 = type metadata accessor for DIPError.Code();
      return (*(*(v12 - 8) + 104))(a2, v11, v12);
    }

LABEL_12:
    v10 = &enum case for DIPError.Code.documentReaderSTSSessionUnexpectedError(_:);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_1003DC604()
{
  swift_unknownObjectRetain();
  dispatch thunk of DistributedActor.actorSystem.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  NWActorSystem.invalidateActor<A>(_:)();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003DC6CC()
{
  sub_1003DC604();

  return swift_deallocClassInstance();
}

uint64_t sub_1003DC718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003DC7D0, v3, 0);
}

uint64_t sub_1003DC7D0()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = sub_100130390(0, 0, v1, v3, v2);
  v0[12] = v5;
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
  DistributedActor<>.peer.getter();
  if (v0[5])
  {
    sub_10000BA08(v0 + 2, v0[5]);

    dispatch thunk of NWActorPeer.addInterruptionHandler(_:)();

    sub_10000BB78(v0 + 2);
  }

  else
  {
    sub_10000BE18((v0 + 2), &qword_100842FE8, &qword_1006E06F8);
  }

  v6 = v0[10];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v0[14] = DistributedActor.asLocalActor.getter();
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1003DCA1C;
  v9 = v0[7];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v9, &unk_1006E0780);
}

uint64_t sub_1003DCA1C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  swift_unknownObjectRelease();

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1003E4BE8;
  }

  else
  {
    v4 = sub_1003E4BE4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003DCB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003DCC40, v3, 0);
}

uint64_t sub_1003DCC40()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = sub_100130678(0, 0, v1, v3, v2);
  v0[12] = v5;
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
  DistributedActor<>.peer.getter();
  if (v0[5])
  {
    sub_10000BA08(v0 + 2, v0[5]);

    dispatch thunk of NWActorPeer.addInterruptionHandler(_:)();

    sub_10000BB78(v0 + 2);
  }

  else
  {
    sub_10000BE18((v0 + 2), &qword_100842FE8, &qword_1006E06F8);
  }

  v6 = v0[10];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v0[14] = DistributedActor.asLocalActor.getter();
  v8 = swift_task_alloc();
  v0[15] = v8;
  type metadata accessor for RemoteWebPresentmentResponse(0);
  *v8 = v0;
  v8[1] = sub_1003DCE8C;
  v9 = v0[7];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v9, &unk_1006E0728);
}

uint64_t sub_1003DCE8C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  swift_unknownObjectRelease();

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1003DD070;
  }

  else
  {
    v4 = sub_1003DCFF8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003DCFF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003DD070()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003DD0E8()
{
  type metadata accessor for RemoteWebPresentmentResponse(0);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);

  Task.cancel()();
}

uint64_t sub_1003DD14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_1003DD16C, a2, 0);
}

uint64_t sub_1003DD16C()
{
  v1 = v0[5];
  type metadata accessor for OSTransaction();
  v0[2] = v1;
  type metadata accessor for RemoteDocumentProviderActor(0);

  v2 = String.init<A>(describing:)();
  v4 = v3;
  v0[7] = v3;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v5 = v0;
  v5[1] = sub_1003DD2B0;
  v7 = v0[6];
  v8 = v0[4];

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v8, v2, v4, &unk_1006E0790, v7, v6, &type metadata for () + 8, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003DD2B0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 40);

    return _swift_task_switch(sub_1003E4BEC, v4, 0);
  }

  else
  {
    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1003DD408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_1003DD428, a2, 0);
}

uint64_t sub_1003DD428()
{
  v1 = v0[5];
  type metadata accessor for OSTransaction();
  v0[2] = v1;
  type metadata accessor for RemoteDocumentProviderActor(0);

  v2 = String.init<A>(describing:)();
  v4 = v3;
  v0[7] = v3;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v7 = type metadata accessor for RemoteWebPresentmentResponse(0);
  *v5 = v0;
  v5[1] = sub_1003DD570;
  v8 = v0[6];
  v9 = v0[4];

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v9, v2, v4, &unk_1006E0738, v8, v6, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003DD570()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 40);

    return _swift_task_switch(sub_1003DD6C8, v4, 0);
  }

  else
  {
    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1003DD6E0()
{
  v1[4] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003DD7FC, 0, 0);
}

uint64_t sub_1003DD7FC()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    v1 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    sub_1003DDEE0();
    sub_1003DDF34();
    NWActorSystemInvocationEncoder.recordReturnType<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v2)
    {
      (*(v0[9] + 8))(v0[10], v0[8]);

      v3 = v0[1];

      return v3();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v6 = swift_task_alloc();
      v0[11] = v6;
      v7 = type metadata accessor for RemoteDocumentProviderActor(0);
      sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
      *v6 = v0;
      v6[1] = sub_1003DDAC4;
      v8 = v0[10];
      v9 = v0[7];
      v10 = v0[4];

      return NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v0 + 2, v10, v9, v8, v1, &type metadata for RemoteDocumentProviderCapabilities, v7, v1);
    }
  }

  else
  {

    v5 = v0[1];

    return v5(3157553, 0xE300000000000000);
  }
}

uint64_t sub_1003DDAC4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1003DDC90;
  }

  else
  {
    v2 = sub_1003DDBD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003DDBD8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);
  v5 = v0[2];
  v4 = v0[3];

  v6 = v0[1];

  return v6(v5, v4);
}

uint64_t sub_1003DDC90()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003DDD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1003DDDD4;

  return sub_1003DD6E0();
}

uint64_t sub_1003DDDD4(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v6 = *v2;
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_1003DDEE0()
{
  result = qword_100842D50;
  if (!qword_100842D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842D50);
  }

  return result;
}

unint64_t sub_1003DDF34()
{
  result = qword_100842D58;
  if (!qword_100842D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842D58);
  }

  return result;
}

uint64_t sub_1003DDFA8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for RemoteWebPresentmentRequest(0);
  v2[8] = swift_task_alloc();
  v4 = sub_100007224(&qword_100842D60, &qword_1006E03B8);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003DE15C, 0, 0);
}

uint64_t sub_1003DE15C()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[8];
    v2 = v0[2];
    NWActorSystem.makeInvocationEncoder()();
    sub_1003E3BBC(v2, v1, type metadata accessor for RemoteWebPresentmentRequest);
    RemoteCallArgument.init(label:name:value:)();
    sub_1003DF7C0(&qword_100842D68, type metadata accessor for RemoteWebPresentmentRequest, &unk_1006E188C);
    sub_1003DF7C0(&qword_100842D70, type metadata accessor for RemoteWebPresentmentRequest, &unk_1006E1864);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v3 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v4)
    {
      v5 = v0[13];
      (*(v0[10] + 8))(v0[11], v0[9]);
      (*(v5 + 8))(v0[14], v0[12]);

      v6 = v0[1];

      return v6();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v10 = swift_task_alloc();
      v0[15] = v10;
      v11 = type metadata accessor for RemoteDocumentProviderActor(0);
      v12 = sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
      *v10 = v0;
      v10[1] = sub_1003DE4E4;
      v13 = v0[14];
      v14 = v0[6];
      v15 = v0[3];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v15, v14, v13, v3, v11, v3, v12, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_1003DE6E4;
    v9 = v0[2];

    return sub_1003DEC48(v9);
  }
}

uint64_t sub_1003DE4E4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1003DE858;
  }

  else
  {
    v2 = sub_1003DE5F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003DE5F8()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003DE6E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003DE858()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003DE938(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[4] = v4;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1003DEAD0;

  return sub_1003DDFA8(v4);
}

uint64_t sub_1003DEAD0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1003DEC48(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = *(type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v2[25] = v3;
  v2[26] = *(v3 + 64);
  v2[27] = swift_task_alloc();
  type metadata accessor for RemoteDocumentProviderActor.RequestState(0);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1003DEDB8, v1, 0);
}

uint64_t sub_1003DEDB8(uint64_t a1)
{
  v47 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 272);
    v5 = *(v1 + 240);
    v6 = *(v1 + 248);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46 = v8;
    *v7 = 136315138;
    type metadata accessor for RemoteDocumentProviderActor(0);
    sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
    DistributedActor<>.peer.getter();
    sub_100007224(&qword_100842FE8, &qword_1006E06F8);
    v9 = String.init<A>(describing:)();
    v11 = sub_100141FE4(v9, v10, &v46);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteDocumentProviderActor presentRequestNotification called by peer %s", v7, 0xCu);
    sub_10000BB78(v8);

    v12 = *(v6 + 8);
    v12(v4, v5);
  }

  else
  {
    v13 = *(v1 + 272);
    v14 = *(v1 + 240);
    v15 = *(v1 + 248);

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  v16 = *(v1 + 232);
  v17 = *(v1 + 192);
  v18 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_currentState;
  swift_beginAccess();
  sub_1003E3BBC(v17 + v18, v16, type metadata accessor for RemoteDocumentProviderActor.RequestState);
  v19 = sub_100007224(&unk_100843210, &qword_1006E0550);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v16, 1, v19);
  sub_1003E3B60(v16);
  if (v21 == 1)
  {
    type metadata accessor for RemoteDocumentProviderActor(0);
    sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
    DistributedActor<>.peer.getter();
    if (*(v1 + 80))
    {
      v22 = *(v1 + 224);
      v45 = *(v1 + 208);
      v43 = *(v1 + 216);
      v44 = *(v1 + 200);
      v41 = *(v1 + 192);
      v42 = *(v1 + 184);
      sub_10001F358((v1 + 56), v1 + 16);
      sub_10000BA08((v1 + 16), *(v1 + 40));

      dispatch thunk of NWActorPeer.addInterruptionHandler(_:)();

      v23 = type metadata accessor for WebPresentmentAnalyticsReporter();
      swift_allocObject();
      v40 = WebPresentmentAnalyticsReporter.init()();
      *(v1 + 280) = v40;
      v24 = (v22 + *(v19 + 48));
      sub_10000BA08((v1 + 16), *(v1 + 40));
      dispatch thunk of NWActorPeer.endpoint.getter();
      v24[3] = v23;
      v24[4] = &protocol witness table for WebPresentmentAnalyticsReporter;
      *v24 = v40;
      (*(v20 + 56))(v22, 0, 1, v19);
      swift_beginAccess();

      sub_1003E471C(v22, v17 + v18);
      swift_endAccess();
      sub_1003E3BBC(v42, v43, type metadata accessor for RemoteWebPresentmentRequest);
      v25 = (*(v44 + 80) + 40) & ~*(v44 + 80);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v41;
      sub_1003E4890(v43, v26 + v25);
      *(v26 + ((v45 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v40;

      v27 = swift_task_alloc();
      *(v1 + 288) = v27;
      *v27 = v1;
      v27[1] = sub_1003DF4D0;

      return sub_1003DC718(sub_1003DC718, &unk_1006E0768, v26);
    }

    v29 = (v1 + 264);
    sub_10000BE18(v1 + 56, &qword_100842FE8, &qword_1006E06F8);
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v34))
    {
      v32 = 3;
      goto LABEL_15;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v30, v34, "RemoteDocumentProviderActor peer is unexpectedly nil, failing", v35, 2u);
    v32 = 3;
    goto LABEL_13;
  }

  v29 = (v1 + 256);
  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v32 = 2;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "RemoteDocumentProviderActor presentRequestNotification was called while there was already a request in progress. Ignoring the new incoming request.", v33, 2u);
LABEL_13:
  }

LABEL_15:
  v36 = *v29;
  v37 = *(v1 + 240);

  v12(v36, v37);
  sub_1003E3C24();
  swift_allocError();
  *v38 = v32;
  swift_willThrow();

  v39 = *(v1 + 8);

  return v39();
}

uint64_t sub_1003DF4D0()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_1003DF6B4;
  }

  else
  {
    v4 = sub_1003DF5FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003DF5FC()
{

  sub_10000BB78((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003DF6B4()
{
  v1 = v0[37];

  swift_errorRetain();
  v2 = sub_1003E53BC(v1);
  sub_1003E3C24();
  swift_allocError();
  *v3 = v2;
  swift_willThrow();

  sub_10000BB78(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003DF7C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003DF808(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RemoteDocumentProviderActor.RequestState(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "RemoteDocumentProviderActor peer interrupted, setting current state to idle", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v13 = sub_100007224(&unk_100843210, &qword_1006E0550);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_currentState;
  swift_beginAccess();
  sub_1003E471C(v5, a2 + v14);
  return swift_endAccess();
}

uint64_t sub_1003DFA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor__remoteWebPresentmentManager;
  v6[10] = *a6;
  v6[11] = v7;
  return _swift_task_switch(sub_1003DFA60, 0, 0);
}

uint64_t sub_1003DFA60()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = (v0[7] + v0[11]);
  sub_10000BA08(v4, v4[3]);
  v5 = (v2 + *(type metadata accessor for RemoteWebPresentmentRequest(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  v0[5] = v1;
  v0[6] = &protocol witness table for WebPresentmentAnalyticsReporter;
  v0[2] = v3;

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_1003DFB64;
  v9 = v0[8];

  return sub_1004005DC(v9, v6, v7, (v0 + 2));
}

uint64_t sub_1003DFB64()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003DFCA0, 0, 0);
  }

  else
  {
    sub_10000BB78(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1003DFCA0()
{
  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003DFD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for RemoteCallTarget();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_100007224(&qword_100842D78, &qword_1006E0448);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for PartialWebPresentmentRequest();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_100007224(&qword_100842D80, &qword_1006E0450);
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v9 = type metadata accessor for NWActorSystemInvocationEncoder();
  v4[19] = v9;
  v4[20] = *(v9 - 8);
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003DFF50, 0, 0);
}

uint64_t sub_1003DFF50()
{
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[13];
    v4 = v0[4];
    NWActorSystem.makeInvocationEncoder()();
    (*(v2 + 16))(v1, v4, v3);
    RemoteCallArgument.init(label:name:value:)();
    sub_1003DF7C0(&qword_100842D88, &type metadata accessor for PartialWebPresentmentRequest, &protocol conformance descriptor for PartialWebPresentmentRequest);
    sub_1003DF7C0(&qword_100842D90, &type metadata accessor for PartialWebPresentmentRequest, &protocol conformance descriptor for PartialWebPresentmentRequest);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v0[2] = v0[5];
    type metadata accessor for RemoteWebPresentmentRequestReleaser(0);

    RemoteCallArgument.init(label:name:value:)();
    sub_1003DF7C0(&qword_100842D98, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1DA8);
    sub_1003DF7C0(&qword_100842DA0, type metadata accessor for RemoteWebPresentmentRequestReleaser, &unk_1006E1D80);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v10 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    v11 = type metadata accessor for RemoteWebPresentmentResponse(0);
    sub_1003DF7C0(&qword_100842DA8, type metadata accessor for RemoteWebPresentmentResponse, &unk_1006E183C);
    sub_1003DF7C0(&qword_100842DB0, type metadata accessor for RemoteWebPresentmentResponse, &unk_1006E1814);
    NWActorSystemInvocationEncoder.recordReturnType<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v12)
    {
      v13 = v0[21];
      v14 = v0[19];
      v15 = v0[20];
      v17 = v0[17];
      v16 = v0[18];
      v18 = v0[16];
      (*(v0[11] + 8))(v0[12], v0[10]);
      (*(v17 + 8))(v16, v18);
      (*(v15 + 8))(v13, v14);

      v19 = v0[1];

      return v19();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v20 = swift_task_alloc();
      v0[22] = v20;
      v21 = type metadata accessor for RemoteDocumentProviderActor(0);
      sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
      *v20 = v0;
      v20[1] = sub_1003E04D8;
      v22 = v0[21];
      v23 = v0[9];
      v24 = v0[6];
      v25 = v0[3];

      return NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v25, v24, v23, v22, v10, v11, v21, v10);
    }
  }

  else
  {
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_1003E0710;
    v6 = v0[5];
    v7 = v0[3];
    v8 = v0[4];

    return sub_1003E0E74(v7, v8, v6);
  }
}

uint64_t sub_1003E04D8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1003E08A0;
  }

  else
  {
    v2 = sub_1003E05EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003E05EC()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003E0710()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003E08A0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003E09C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v3[2] = *a2;
  v3[3] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[4] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v9 = a2[1];
  v3[5] = v9;
  v3[6] = *(v9 - 8);
  v10 = swift_task_alloc();
  v3[7] = v10;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v11 = *v10;
  v12 = swift_task_alloc();
  v3[8] = v12;
  *v12 = v3;
  v12[1] = sub_1003E0C78;

  return sub_1003DFD04(a3, v7, v11);
}

uint64_t sub_1003E0C78()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v9 = *v0;

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1003E0E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = type metadata accessor for PartialWebPresentmentRequest();
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v4[31] = *(v6 + 64);
  v4[32] = swift_task_alloc();
  v4[33] = sub_100007224(&qword_100842FD0, &qword_1006E06E8);
  v4[34] = swift_task_alloc();
  sub_100007224(&qword_100842FD8, &qword_1006E06F0);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = type metadata accessor for RemoteDocumentProviderActor.RequestState(0);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v7 = type metadata accessor for NWEndpoint();
  v4[41] = v7;
  v4[42] = *(v7 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[46] = v8;
  v4[47] = *(v8 - 8);
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();

  return _swift_task_switch(sub_1003E10F0, v3, 0);
}

uint64_t sub_1003E10F0(uint64_t a1)
{
  v113 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 400);
    v5 = *(v1 + 368);
    v6 = *(v1 + 376);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v112[0] = v8;
    *v7 = 136315138;
    type metadata accessor for RemoteDocumentProviderActor(0);
    sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
    DistributedActor<>.peer.getter();
    sub_100007224(&qword_100842FE8, &qword_1006E06F8);
    v9 = String.init<A>(describing:)();
    v11 = sub_100141FE4(v9, v10, v112);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteDocumentProviderActor performRequest called by peer %s", v7, 0xCu);
    sub_10000BB78(v8);

    v12 = *(v6 + 8);
    v12(v4, v5);
  }

  else
  {
    v13 = *(v1 + 400);
    v14 = *(v1 + 368);
    v15 = *(v1 + 376);

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  v16 = *(v1 + 320);
  v17 = *(v1 + 224);
  v18 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_currentState;
  swift_beginAccess();
  sub_1003E3BBC(v17 + v18, v16, type metadata accessor for RemoteDocumentProviderActor.RequestState);
  v19 = sub_100007224(&unk_100843210, &qword_1006E0550);
  if ((*(*(v19 - 8) + 48))(v16, 1, v19) == 1)
  {
    sub_1003E3B60(*(v1 + 320));
    defaultLogger()();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v1 + 384);
    v24 = *(v1 + 368);
    if (v22)
    {
      v107 = *(v1 + 384);
      v109 = *(v1 + 368);
      v25 = *(v1 + 312);
      v110 = v12;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v112[0] = v27;
      *v26 = 136315138;
      sub_1003E3BBC(v17 + v18, v25, type metadata accessor for RemoteDocumentProviderActor.RequestState);
      v28 = String.init<A>(describing:)();
      v30 = sub_100141FE4(v28, v29, v112);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "RemoteDocumentProviderActor performRequest was called in an invalid state: %s", v26, 0xCu);
      sub_10000BB78(v27);

      v110(v107, v109);
    }

    else
    {

      v12(v23, v24);
    }

    sub_1003E3C24();
    swift_allocError();
    *v37 = 3;
    swift_willThrow();
LABEL_22:

    v81 = *(v1 + 8);

    return v81();
  }

  v111 = v12;
  v31 = *(v1 + 320);
  v32 = *(v19 + 48);
  v105 = *(*(v1 + 336) + 32);
  v105(*(v1 + 360), v31, *(v1 + 328));
  sub_10001F358((v31 + v32), v1 + 16);
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
  DistributedActor<>.peer.getter();
  v33 = *(v1 + 328);
  v34 = *(v1 + 336);
  v35 = *(v1 + 296);
  if (*(v1 + 80))
  {
    sub_10000BA08((v1 + 56), *(v1 + 80));
    dispatch thunk of NWActorPeer.endpoint.getter();
    v36 = *(v34 + 56);
    v36(v35, 0, 1, v33);
    sub_10000BB78((v1 + 56));
  }

  else
  {
    sub_10000BE18(v1 + 56, &qword_100842FE8, &qword_1006E06F8);
    v36 = *(v34 + 56);
    v36(v35, 1, 1, v33);
  }

  v38 = *(v1 + 328);
  v39 = *(v1 + 336);
  v41 = *(v1 + 288);
  v40 = *(v1 + 296);
  v43 = *(v1 + 264);
  v42 = *(v1 + 272);
  v108 = *(v39 + 16);
  v108(v41, *(v1 + 360), v38);
  v36(v41, 0, 1, v38);
  v44 = *(v43 + 48);
  sub_1003E3C78(v40, v42);
  sub_1003E3C78(v41, v42 + v44);
  v45 = *(v39 + 48);
  v46 = v45(v42, 1, v38);
  v47 = *(v1 + 328);
  if (v46 != 1)
  {
    sub_1003E3C78(*(v1 + 272), *(v1 + 280));
    if (v45(v42 + v44, 1, v47) != 1)
    {
      v83 = *(v1 + 352);
      v84 = *(v1 + 328);
      v85 = *(v1 + 336);
      v86 = *(v1 + 288);
      v104 = *(v1 + 296);
      v88 = *(v1 + 272);
      v87 = *(v1 + 280);
      v105(v83, v42 + v44, v84);
      sub_1003DF7C0(&qword_100842FF0, &type metadata accessor for NWEndpoint, &protocol conformance descriptor for NWEndpoint);
      v89 = dispatch thunk of static Equatable.== infix(_:_:)();
      v90 = *(v85 + 8);
      v90(v83, v84);
      sub_10000BE18(v86, &qword_100842FD8, &qword_1006E06F0);
      sub_10000BE18(v104, &qword_100842FD8, &qword_1006E06F0);
      v90(v87, v84);
      sub_10000BE18(v88, &qword_100842FD8, &qword_1006E06F0);
      if (v89)
      {
        goto LABEL_26;
      }

LABEL_18:
      v53 = *(v1 + 360);
      v54 = *(v1 + 344);
      v55 = *(v1 + 328);
      defaultLogger()();
      v108(v54, v53, v55);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v1 + 392);
      v60 = *(v1 + 368);
      if (v58)
      {
        v106 = *(v1 + 368);
        v61 = *(v1 + 344);
        v62 = *(v1 + 352);
        v64 = *(v1 + 328);
        v63 = *(v1 + 336);
        v103 = *(v1 + 392);
        v65 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v112[0] = v102;
        *v65 = 136315138;
        v66 = v61;
        v108(v62, v61, v64);
        v67 = String.init<A>(describing:)();
        v69 = v68;
        v70 = v64;
        v71 = *(v63 + 8);
        v71(v66, v70);
        v72 = sub_100141FE4(v67, v69, v112);

        *(v65 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v56, v57, "RemoteDocumentProviderActor peer with endpoint %s tried to call performRequest without calling presentRequestNotification first, failing", v65, 0xCu);
        sub_10000BB78(v102);

        v73 = v103;
        v74 = v106;
      }

      else
      {
        v75 = *(v1 + 336);
        v76 = *(v1 + 344);
        v77 = *(v1 + 328);

        v71 = *(v75 + 8);
        v71(v76, v77);
        v73 = v59;
        v74 = v60;
      }

      v111(v73, v74);
      v78 = *(v1 + 360);
      v79 = *(v1 + 328);
      sub_1003E3C24();
      swift_allocError();
      *v80 = 3;
      swift_willThrow();
      sub_10000BB78((v1 + 16));
      v71(v78, v79);
      goto LABEL_22;
    }

    v49 = *(v1 + 328);
    v50 = *(v1 + 336);
    v51 = *(v1 + 296);
    v52 = *(v1 + 280);
    sub_10000BE18(*(v1 + 288), &qword_100842FD8, &qword_1006E06F0);
    sub_10000BE18(v51, &qword_100842FD8, &qword_1006E06F0);
    (*(v50 + 8))(v52, v49);
LABEL_17:
    sub_10000BE18(*(v1 + 272), &qword_100842FD0, &qword_1006E06E8);
    goto LABEL_18;
  }

  v48 = *(v1 + 296);
  sub_10000BE18(*(v1 + 288), &qword_100842FD8, &qword_1006E06F0);
  sub_10000BE18(v48, &qword_100842FD8, &qword_1006E06F0);
  if (v45(v42 + v44, 1, v47) != 1)
  {
    goto LABEL_17;
  }

  sub_10000BE18(*(v1 + 272), &qword_100842FD8, &qword_1006E06F0);
LABEL_26:
  v91 = *(v1 + 248);
  v92 = *(v1 + 256);
  v93 = *(v1 + 232);
  v94 = *(v1 + 240);
  v95 = *(v1 + 216);
  v96 = *(v1 + 224);
  (*(v94 + 16))(v92, *(v1 + 208), v93);
  sub_100020260(v1 + 16, v1 + 96);
  v97 = (*(v94 + 80) + 40) & ~*(v94 + 80);
  v98 = (v91 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  *(v99 + 2) = 0;
  *(v99 + 3) = 0;
  *(v99 + 4) = v96;
  (*(v94 + 32))(&v99[v97], v92, v93);
  *&v99[v98] = v95;
  sub_10001F358((v1 + 96), &v99[(v98 + 15) & 0xFFFFFFFFFFFFFFF8]);

  v100 = swift_task_alloc();
  *(v1 + 408) = v100;
  *v100 = v1;
  v100[1] = sub_1003E1CD0;
  v101 = *(v1 + 200);

  return sub_1003DCB88(v101, &unk_1006E0708, v99);
}

uint64_t sub_1003E1CD0()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_1003E1F30;
  }

  else
  {
    v4 = sub_1003E1DFC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003E1DFC()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[41];
  sub_10000BB78(v0 + 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003E1F30()
{
  v1 = v0[52];
  v2 = v0[45];
  v4 = v0[41];
  v3 = v0[42];
  swift_errorRetain();
  v5 = sub_1003E53BC(v1);
  sub_1003E3C24();
  swift_allocError();
  *v6 = v5;
  swift_willThrow();

  sub_10000BB78(v0 + 2);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003E20AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v8 = type metadata accessor for PartialWebPresentmentRequest();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v7[14] = *(v9 + 64);
  v7[15] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003E21B4, 0, 0);
}

uint64_t sub_1003E21B4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  (*(v3 + 16))(v2, v8, v5);
  sub_100020260(v6, v0 + 16);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v9;
  (*(v3 + 32))(&v13[v11], v2, v5);
  *&v13[v12] = v7;
  sub_10001F358((v0 + 16), &v13[(v12 + 15) & 0xFFFFFFFFFFFFFFF8]);

  *(v0 + 136) = sub_100130958(0, 0, v1, &unk_1006E0748, v13);
  v14 = sub_10000BA08((v9 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_activeTaskManager), *(v9 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_activeTaskManager + 24));
  *(v0 + 144) = v14;
  v15 = *v14;

  return _swift_task_switch(sub_1003E2378, v15, 0);
}

uint64_t sub_1003E2378()
{
  sub_100501240(*(v0 + 136), **(v0 + 144));

  return _swift_task_switch(sub_1003E23E4, 0, 0);
}

uint64_t sub_1003E23E4()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  type metadata accessor for RemoteWebPresentmentResponse(0);
  *v1 = v0;
  v1[1] = sub_1003E24C0;
  v2 = *(v0 + 56);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v2, &unk_1006E0758);
}

uint64_t sub_1003E24C0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1003E264C;
  }

  else
  {
    v2 = sub_1003E25D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003E25D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E264C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E26C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a5;
  v7[10] = a6;
  v7[7] = a1;
  v7[8] = a4;
  v8 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor__remoteWebPresentmentManager;
  v7[11] = a7;
  v7[12] = v8;
  return _swift_task_switch(sub_1003E26F4, 0, 0);
}

uint64_t sub_1003E26F4()
{
  v1 = v0[10];
  v2 = (v0[8] + v0[12]);
  v3 = sub_10000BA08(v2, v2[3]);
  v0[5] = type metadata accessor for RemoteWebPresentmentRequestReleaser(0);
  v0[6] = &off_10080FD40;
  v0[2] = v1;
  v4 = *v3;
  v0[13] = *v3;
  v5 = v4[10];
  v6 = v4[11];

  sub_10000BA08(v4 + 7, v5);
  v10 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1003E286C;
  v8 = v0[9];

  return v10(v8, v5, v6);
}

uint64_t sub_1003E286C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003E2B44, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[17] = v6;
    *v6 = v5;
    v6[1] = sub_1003E2A00;
    v7 = v4[11];
    v8 = v4[9];
    v9 = v4[7];

    return sub_100401E3C(v9, v8, (v4 + 2), a1, v7);
  }
}

uint64_t sub_1003E2A00()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003E2BA8, 0, 0);
  }

  else
  {

    sub_10000BB78(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1003E2B44()
{
  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E2BA8()
{

  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E2C14(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for WebPresentmentResponse();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = swift_task_alloc();
  v2[6] = v6;
  v7 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v6 = v2;
  v6[1] = sub_1003E2D4C;

  return Task.value.getter(v5, a2, v4, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003E2D4C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1003E2EE0;
  }

  else
  {
    v2 = sub_1003E2E60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003E2E60()
{
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003E2EE0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003E2F44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);

  Task.cancel()();
}

uint64_t sub_1003E2FAC()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_id;
  if (is_remote)
  {
    v3 = type metadata accessor for NWActorID();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
    type metadata accessor for NWActorSystem();
    sub_1003DF7C0(&qword_100842FB8, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
    dispatch thunk of DistributedActorSystem.resignID(_:)();
    v4 = type metadata accessor for NWActorID();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);

    sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor__remoteWebPresentmentManager));
    sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_activeTaskManager));
    sub_1003E3B60(v0 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_currentState);
  }

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003E312C(uint64_t a1)
{
  result = type metadata accessor for NWActorID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RemoteDocumentProviderActor.RequestState(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1003E3250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100843210, &qword_1006E0550);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003E32DC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100007224(&unk_100843210, &qword_1006E0550);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1003E3368(uint64_t a1)
{
  sub_1003E33C0(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1003E33C0(uint64_t a1)
{
  if (!qword_100842F68)
  {
    type metadata accessor for NWEndpoint();
    sub_10000B870(&unk_100842F70, qword_1006E0568);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100842F68);
    }
  }
}

uint64_t sub_1003E3454(uint64_t a1, uint64_t a2)
{
  if ((__isLocalActor(_:)() & 1) == 0)
  {
    type metadata accessor for RemoteDocumentProviderActor(0);
    return buildDefaultDistributedRemoteActorExecutor<A>(_:)();
  }

  return v2;
}

uint64_t sub_1003E34A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  type metadata accessor for RemoteDocumentProviderActor(0);
  type metadata accessor for NWActorSystem();
  sub_1003DF7C0(&qword_100842FB8, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
  result = dispatch thunk of DistributedActorSystem.resolve<A>(id:as:)();
  if (!v4 && !result)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_id;
    v10 = type metadata accessor for NWActorID();
    (*(*(v10 - 8) + 16))(v8 + v9, a1, v10);
    *(v8 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem) = v6;

    return v8;
  }

  return result;
}

Swift::Int sub_1003E35D8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for RemoteDocumentProviderActor(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003E3638(uint64_t a1)
{
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
  return DistributedActor.hash(into:)();
}

Swift::Int sub_1003E36B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  type metadata accessor for RemoteDocumentProviderActor(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003E3710@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_id;
  v5 = type metadata accessor for NWActorID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1003E378C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for RemoteDocumentProviderActor(0);
  v5 = sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_1003E3818(uint64_t a1)
{
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
  sub_1003DF7C0(&qword_100842FC0, &type metadata accessor for NWActorID, &protocol conformance descriptor for NWActorID);
  return DistributedActor<>.encode(to:)();
}

uint64_t sub_1003E38E0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);
  sub_1003DF7C0(&qword_100842FC8, &type metadata accessor for NWActorID, &protocol conformance descriptor for NWActorID);
  result = DistributedActor<>.init(from:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1003E3B60(uint64_t a1)
{
  v2 = type metadata accessor for RemoteDocumentProviderActor.RequestState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003E3BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003E3C24()
{
  result = qword_100842FE0;
  if (!qword_100842FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842FE0);
  }

  return result;
}

uint64_t sub_1003E3C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100842FD8, &qword_1006E06F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E3CEC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_1003E20AC(a1, v9, v10, v11, v1 + v6, v12, v1 + v8);
}

uint64_t sub_1003E3E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  v7 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v6 = v3;
  v6[1] = sub_1003E3F08;

  return Task.value.getter(a1, a2, &type metadata for () + 8, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003E3F08()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003E4BE0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1003E403C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  v7 = type metadata accessor for RemoteWebPresentmentResponse(0);
  v8 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v6 = v3;
  v6[1] = sub_1003E411C;

  return Task.value.getter(a1, a2, v7, v8, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003E411C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003E4250, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1003E4274(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_1003DD408(a1, v5, v4);
}

uint64_t sub_1003E4358(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100041F04;

  return sub_1003E403C(a1, v2, a2);
}

uint64_t sub_1003E4410()
{
  v1 = type metadata accessor for PartialWebPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  sub_10000BB78((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_1003E4508(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_1003E26C4(a1, v9, v10, v11, v1 + v6, v12, v1 + v8);
}

uint64_t sub_1003E4648(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_1003E2C14(a1, v1);
}

uint64_t sub_1003E471C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteDocumentProviderActor.RequestState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E4780()
{
  v1 = *(type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1003E4890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWebPresentmentRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E48F4(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100041F04;

  return sub_1003DFA0C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1003E4A24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1003DD14C(a1, v5, v4);
}

void sub_1003E4AD0()
{
  sub_100007224(&qword_100833B90, &qword_1006D95C0);

  Task.cancel()();
}

uint64_t sub_1003E4B24(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100041F04;

  return sub_1003E3E2C(a1, v2, a2);
}

uint64_t sub_1003E4BF0(void *a1, int a2)
{
  v29 = a2;
  v3 = sub_100007224(&qword_100843058, &qword_1006E08F0);
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v20 - v4;
  v5 = sub_100007224(&qword_100843060, &qword_1006E08F8);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v23 = &v20 - v6;
  v7 = sub_100007224(&qword_100843068, &qword_1006E0900);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_100007224(&qword_100843070, &qword_1006E0908);
  v20 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = sub_100007224(&qword_100843078, &qword_1006E0910);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - v15;
  sub_10000BA08(a1, a1[3]);
  sub_1003E5F7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_1003E6024();
      v9 = v23;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_1003E5FD0();
      v9 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_1003E6078();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_1003E60CC();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1003E502C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1003E505C(uint64_t a1)
{
  v2 = sub_1003E6078();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003E5098(uint64_t a1)
{
  v2 = sub_1003E6078();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1003E50D4()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x5364696C61766E69;
  }

  if (*v0)
  {
    v1 = 0x656C6C65636E6163;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1003E5160@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003E578C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1003E5188(uint64_t a1)
{
  v2 = sub_1003E5F7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003E51C4(uint64_t a1)
{
  v2 = sub_1003E5F7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003E5200(uint64_t a1)
{
  v2 = sub_1003E5FD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003E523C(uint64_t a1)
{
  v2 = sub_1003E5FD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003E5278(uint64_t a1)
{
  v2 = sub_1003E6024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003E52B4(uint64_t a1)
{
  v2 = sub_1003E6024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003E52F0(uint64_t a1)
{
  v2 = sub_1003E60CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003E532C(uint64_t a1)
{
  v2 = sub_1003E60CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003E5374@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1003E5904(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1003E53BC(uint64_t a1)
{
  v2 = type metadata accessor for CancellationError();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPError.Code();
  v19 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v21 = a1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {

    v15 = v20;
LABEL_3:

    return v15;
  }

  v21 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    (*(v9 + 32))(v12, v14, v8);
    DIPError.code.getter();

    (*(v9 + 8))(v12, v8);
    v17 = v19;
    if ((*(v19 + 88))(v7, v5) == enum case for DIPError.Code.webPresentmentCancelled(_:))
    {
      v15 = 1;
    }

    else
    {
      (*(v17 + 8))(v7, v5);
      v15 = 0;
    }

    goto LABEL_3;
  }

  v21 = a1;
  if (swift_dynamicCast())
  {
    (*(v18 + 8))(v4, v2);

    return 1;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1003E5738()
{
  result = qword_100842FF8;
  if (!qword_100842FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842FF8);
  }

  return result;
}

uint64_t sub_1003E578C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100700D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5364696C61766E69 && a2 == 0xEC00000065746174)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1003E5904(void *a1)
{
  v2 = sub_100007224(&qword_100843000, &qword_1006E08C0);
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  __chkstk_darwin(v2);
  v48 = &v37 - v4;
  v5 = sub_100007224(&qword_100843008, &qword_1006E08C8);
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  __chkstk_darwin(v5);
  v47 = &v37 - v7;
  v8 = sub_100007224(&qword_100843010, &qword_1006E08D0);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = sub_100007224(&qword_100843018, &qword_1006E08D8);
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = sub_100007224(&qword_100843020, &qword_1006E08E0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v19 = a1[3];
  v50 = a1;
  sub_10000BA08(a1, v19);
  sub_1003E5F7C();
  v20 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    goto LABEL_16;
  }

  v38 = v12;
  v39 = v18;
  v22 = v47;
  v21 = v48;
  v49 = v16;
  v23 = KeyedDecodingContainer.allKeys.getter();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 4) : (v26 = 1), v26))
  {
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    sub_100007224(&qword_100843030, &qword_1006E08E8);
    *v29 = &type metadata for RemoteDocumentProviderActorError;
    v30 = v39;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v27);
    swift_willThrow();
    (*(v49 + 8))(v30, v15);
    swift_unknownObjectRelease();
LABEL_16:
    sub_10000BB78(v50);
    return 0;
  }

  v51 = *(v23 + 32);
  if (v25 > 1)
  {
    v32 = v49;
    if (v25 == 2)
    {
      v54 = 2;
      sub_1003E6024();
      v33 = v22;
      v34 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v44 + 8))(v33, v43);
      (*(v32 + 8))(v34, v15);
    }

    else
    {
      v55 = 3;
      sub_1003E5FD0();
      v35 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v46 + 8))(v21, v45);
      (*(v32 + 8))(v35, v15);
    }
  }

  else
  {
    if (v25)
    {
      v53 = 1;
      sub_1003E6078();
      v31 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v11, v41);
    }

    else
    {
      v52 = 0;
      sub_1003E60CC();
      v31 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v40 + 8))(v14, v38);
    }

    (*(v49 + 8))(v31, v15);
  }

  swift_unknownObjectRelease();
  sub_10000BB78(v50);
  return v51;
}

unint64_t sub_1003E5F7C()
{
  result = qword_100843028;
  if (!qword_100843028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843028);
  }

  return result;
}

unint64_t sub_1003E5FD0()
{
  result = qword_100843038;
  if (!qword_100843038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843038);
  }

  return result;
}

unint64_t sub_1003E6024()
{
  result = qword_100843040;
  if (!qword_100843040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843040);
  }

  return result;
}

unint64_t sub_1003E6078()
{
  result = qword_100843048;
  if (!qword_100843048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843048);
  }

  return result;
}

unint64_t sub_1003E60CC()
{
  result = qword_100843050;
  if (!qword_100843050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843050);
  }

  return result;
}

unint64_t sub_1003E6174()
{
  result = qword_100843080;
  if (!qword_100843080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843080);
  }

  return result;
}

unint64_t sub_1003E61CC()
{
  result = qword_100843088;
  if (!qword_100843088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843088);
  }

  return result;
}

unint64_t sub_1003E6224()
{
  result = qword_100843090;
  if (!qword_100843090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843090);
  }

  return result;
}

unint64_t sub_1003E627C()
{
  result = qword_100843098;
  if (!qword_100843098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843098);
  }

  return result;
}

unint64_t sub_1003E62D4()
{
  result = qword_1008430A0;
  if (!qword_1008430A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430A0);
  }

  return result;
}

unint64_t sub_1003E632C()
{
  result = qword_1008430A8;
  if (!qword_1008430A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430A8);
  }

  return result;
}

unint64_t sub_1003E6384()
{
  result = qword_1008430B0;
  if (!qword_1008430B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430B0);
  }

  return result;
}

unint64_t sub_1003E63DC()
{
  result = qword_1008430B8;
  if (!qword_1008430B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430B8);
  }

  return result;
}

unint64_t sub_1003E6434()
{
  result = qword_1008430C0;
  if (!qword_1008430C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430C0);
  }

  return result;
}

unint64_t sub_1003E648C()
{
  result = qword_1008430C8;
  if (!qword_1008430C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430C8);
  }

  return result;
}

unint64_t sub_1003E64E4()
{
  result = qword_1008430D0;
  if (!qword_1008430D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008430D0);
  }

  return result;
}

uint64_t sub_1003E653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000BBC4(a3, v25 - v10, &unk_100845860, &unk_1006BF9D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000BE18(v11, &unk_100845860, &unk_1006BF9D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

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

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
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

uint64_t sub_1003E683C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000BBC4(a3, v25 - v10, &unk_100845860, &unk_1006BF9D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000BE18(v11, &unk_100845860, &unk_1006BF9D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100007224(&qword_100843250, &qword_1006E0DF0);
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

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

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

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100007224(&qword_100843250, &qword_1006E0DF0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1003E6B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000BBC4(a3, v25 - v10, &unk_100845860, &unk_1006BF9D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000BE18(v11, &unk_100845860, &unk_1006BF9D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for IdentityProofingFlow();

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

      sub_10000BE18(v25[0], &unk_100845860, &unk_1006BF9D0);

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

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for IdentityProofingFlow();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1003E6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000BBC4(a3, v25 - v10, &unk_100845860, &unk_1006BF9D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000BE18(v11, &unk_100845860, &unk_1006BF9D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100007224(&qword_1008402E8, &qword_1006E0E10);
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

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

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

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100007224(&qword_1008402E8, &qword_1006E0E10);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1003E7170()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v5[4] = sub_1003E87AC;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1003E854C;
  v5[3] = &unk_10080EFB8;
  v4 = _Block_copy(v5);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v2, v4);
  _Block_release(v4);
}

uint64_t sub_1003E7274(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v66 = a2;
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v4 - 8);
  v64 = &v60 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v60 - v12;
  __chkstk_darwin(v11);
  v15 = &v60 - v14;
  defaultLogger()();
  swift_unknownObjectRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v63 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v62 = v6;
    v21 = v20;
    v67 = v20;
    *v19 = 136315138;
    v22 = [a1 description];
    v61 = a1;
    v23 = v10;
    v24 = v22;
    v25 = v13;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = v26;
    v13 = v25;
    v30 = sub_100141FE4(v29, v28, &v67);

    *(v19 + 4) = v30;
    v10 = v23;
    a1 = v61;
    _os_log_impl(&_mh_execute_header, v16, v17, "Event published: %s", v19, 0xCu);
    sub_10000BB78(v21);
    v6 = v62;

    v7 = v63;
  }

  v31 = *(v7 + 8);
  v31(v15, v6);
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v33 = String.init(cString:)();
    v34 = v32;
    if (v33 == 0xD000000000000022 && 0x8000000100714FE0 == v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v35 = type metadata accessor for TaskPriority();
      v36 = v64;
      (*(*(v35 - 8) + 56))(v64, 1, 1, v35);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v38 = v65;
      v37[4] = v66;
      v37[5] = a1;
      v37[6] = v38;
      swift_unknownObjectRetain();

      sub_1003E653C(0, 0, v36, &unk_1006E0DA0, v37);
    }

    defaultLogger()();

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v67 = v56;
      *v55 = 136315138;
      v57 = sub_100141FE4(v33, v34, &v67);
      v58 = v13;
      v59 = v57;

      *(v55 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v53, v54, "Unrecognized application service name: %s", v55, 0xCu);
      sub_10000BB78(v56);

      v51 = v58;
    }

    else
    {

      v51 = v13;
    }

    goto LABEL_14;
  }

  defaultLogger()();
  swift_unknownObjectRetain();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v40, v41))
  {

    v51 = v10;
LABEL_14:
    v52 = v6;
    return (v31)(v51, v52);
  }

  v42 = swift_slowAlloc();
  v63 = v7;
  v43 = v42;
  v44 = v6;
  v45 = swift_slowAlloc();
  v67 = v45;
  *v43 = 136315138;
  v46 = [a1 description];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50 = sub_100141FE4(v47, v49, &v67);

  *(v43 + 4) = v50;
  _os_log_impl(&_mh_execute_header, v40, v41, "Invalid Rapport XPC event name: %s", v43, 0xCu);
  sub_10000BB78(v45);

  v51 = v10;
  v52 = v44;
  return (v31)(v51, v52);
}

uint64_t sub_1003E7874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for Logger();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for NWListener.Service();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003E79CC, 0, 0);
}

uint64_t sub_1003E79CC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[7];
  NWListener.Service.init(applicationService:)();
  (*(v4 + 16))(v1, v2, v3);
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  type metadata accessor for NWActorSystem();
  swift_allocObject();
  v6 = NWActorSystem.init(service:parameters:)();
  v0[20] = v6;
  v7 = sub_1003E9594(*(v5 + 24), *(v5 + 32));
  v0[21] = v7;
  sub_100020260(v5 + 40, (v0 + 2));
  v8 = v0[5];
  v9 = sub_10001F370((v0 + 2), v8);
  v10 = *(v8 - 8);
  v11 = swift_task_alloc();
  (*(v10 + 16))(v11, v9, v8);
  v12 = *v11;

  v13 = sub_1003E8F84(v6, v7, v12);
  v0[22] = v13;
  sub_10000BB78(v0 + 2);

  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Publishing RemoteDocumentProviderActor…", v16, 2u);
  }

  v17 = v0[15];
  v18 = v0[9];
  v19 = v0[10];

  v20 = *(v19 + 8);
  v0[23] = v20;
  v20(v17, v18);
  v21 = swift_task_alloc();
  v0[24] = v21;
  v22 = type metadata accessor for RemoteDocumentProviderActor(0);
  v23 = sub_1003EAF14(&unk_100843200, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0660);
  *v21 = v0;
  v21[1] = sub_1003E7CCC;

  return NWActorSystem.publishAndWaitForReady<A>(_:)(v13, v22, v23);
}

uint64_t sub_1003E7CCC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1003E8340;
  }

  else
  {
    v2 = sub_1003E7DE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003E7DE0()
{
  v55 = v0;
  *(*(v0 + 56) + 80) = *(v0 + 176);

  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Published RemoteDocumentProviderActor", v3, 2u);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = *(v0 + 64);

  v4(v5, v6);
  if (xpc_dictionary_get_BOOL(v7, "replyRequired") && xpc_dictionary_create_reply(*(v0 + 64)))
  {
    xpc_dictionary_send_reply();
    defaultLogger()();
    swift_unknownObjectRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 184);
    v12 = *(v0 + 152);
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    v15 = *(v0 + 104);
    v16 = *(v0 + 72);
    if (v10)
    {
      v51 = *(v0 + 128);
      v17 = *(v0 + 64);
      v49 = *(v0 + 152);
      v18 = swift_slowAlloc();
      v47 = v11;
      v19 = swift_slowAlloc();
      v54 = v19;
      *v18 = 136315138;
      v20 = [v17 description];
      v44 = v16;
      v45 = v15;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = sub_100141FE4(v21, v23, &v54);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v8, v9, "Replied to Rapport XPC event: %s", v18, 0xCu);
      sub_10000BB78(v19);

      swift_unknownObjectRelease();

      v47(v45, v44);
      (*(v14 + 8))(v49, v51);
    }

    else
    {
      swift_unknownObjectRelease();

      v11(v15, v16);
      (*(v14 + 8))(v12, v13);
    }
  }

  else
  {
    defaultLogger()();
    swift_unknownObjectRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 184);
    v29 = *(v0 + 152);
    v30 = *(v0 + 128);
    v31 = *(v0 + 136);
    v32 = *(v0 + 96);
    v33 = *(v0 + 72);
    if (v27)
    {
      v53 = *(v0 + 128);
      v34 = *(v0 + 64);
      v52 = *(v0 + 152);
      v35 = swift_slowAlloc();
      v50 = v28;
      v36 = swift_slowAlloc();
      v54 = v36;
      *v35 = 136315138;
      v37 = [v34 description];
      v46 = v33;
      v48 = v32;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_100141FE4(v38, v40, &v54);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to create reply for Rapport XPC event: %s", v35, 0xCu);
      sub_10000BB78(v36);

      v50(v48, v46);
      (*(v31 + 8))(v52, v53);
    }

    else
    {

      v28(v32, v33);
      (*(v31 + 8))(v29, v30);
    }
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1003E8340()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  (*(v3 + 8))(v1, v2);
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to publish RemoteDocumentProviderActor: %@", v6, 0xCu);
    sub_10000BE18(v7, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v0 + 184))(*(v0 + 88), *(v0 + 72));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003E854C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003E85AC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for RemoteMobileDocumentProviderUIPresenter();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v3 = swift_allocObject();
  sub_10000BBC4(v10, &v7, &qword_100843248, &qword_1006E0DD8);
  if (v8)
  {
    sub_10000BE18(v10, &qword_100843248, &qword_1006E0DD8);
    sub_10001F358(&v7, v9);
    result = sub_10001F358(v9, (v3 + 2));
  }

  else
  {
    sub_10000BE18(&v7, &qword_100843248, &qword_1006E0DD8);
    v5 = type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
    swift_allocObject();
    v6 = sub_1003FAA9C();
    v3[5] = v5;
    v3[6] = &off_10080F3A8;
    v3[2] = v6;
    result = sub_10000BE18(v10, &qword_100843248, &qword_1006E0DD8);
  }

  a1[3] = v2;
  a1[4] = &off_10080FAC0;
  *a1 = v3;
  return result;
}

uint64_t sub_1003E86DC()
{
  swift_unknownObjectRelease();
  sub_10000BB78((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1003E8774()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003E87B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003E87CC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001AFE54;

  return v6(a1);
}

uint64_t sub_1003E88C4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1003E890C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027B9C;

  return sub_1003E7874(a1, v4, v5, v6, v7);
}

uint64_t sub_1003E89D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1003E87CC(a1, v4);
}

uint64_t sub_1003E8A8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003E8AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = type metadata accessor for NWActorID();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = type metadata accessor for RemoteWebPresentmentManager();
  v18[4] = &off_10080FC08;
  v18[0] = a2;
  v17[3] = type metadata accessor for ActiveTaskManager();
  v17[4] = &off_100812348;
  v17[0] = a3;
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_currentState;
  v12 = sub_100007224(&unk_100843210, &qword_1006E0550);
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem;
  *(a4 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem) = a1;
  type metadata accessor for RemoteDocumentProviderActor(0);
  v16 = a1;
  type metadata accessor for NWActorSystem();
  sub_1003EAF14(&qword_100842FB8, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
  sub_1003EAF14(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor, &unk_1006E0688);

  dispatch thunk of DistributedActorSystem.assignID<A>(_:)();
  (*(v8 + 32))(a4 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_id, v10, v15);
  sub_100020260(v17, a4 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_activeTaskManager);
  sub_100020260(v18, a4 + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor__remoteWebPresentmentManager);
  v16 = *(a4 + v13);

  dispatch thunk of DistributedActorSystem.actorReady<A>(_:)();

  sub_10000BB78(v17);
  sub_10000BB78(v18);

  return a4;
}

uint64_t sub_1003E8D7C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1003E8E70;

  return v5(v2 + 16);
}

uint64_t sub_1003E8E70()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1003E8F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = type metadata accessor for RemoteWebPresentmentManager();
  v22 = &off_10080FC08;
  v20[0] = a2;
  active = type metadata accessor for ActiveTaskManager();
  v19 = &off_100812348;
  v17[0] = a3;
  type metadata accessor for RemoteDocumentProviderActor(0);
  v6 = swift_allocObject();
  v7 = sub_10001F370(v20, v21);
  __chkstk_darwin(v7);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_10001F370(v17, active);
  __chkstk_darwin(v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1003E8AC4(a1, *v9, *v13, v6);
  sub_10000BB78(v17);
  sub_10000BB78(v20);
  return v15;
}

uint64_t sub_1003E9168(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1003E925C;

  return v5(v2 + 16);
}

uint64_t sub_1003E925C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1003E938C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1003E9480;

  return v5(v2 + 32);
}

uint64_t sub_1003E9480()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void *sub_1003E9594(uint64_t a1, char *a2)
{
  v162 = a2;
  v169 = a1;
  v2 = type metadata accessor for DateProvider();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v142 - v7;
  v165 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider(0);
  __chkstk_darwin(v165);
  v10 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DeviceInformationProvider();
  v236[3] = v11;
  v236[4] = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(v236);
  DeviceInformationProvider.init()();
  v166 = type metadata accessor for UserDefaultsConfiguration();
  v236[5] = static UserDefaultsConfiguration.standard.getter();
  v12 = sub_100134AD0();
  if (sub_100134AD0())
  {
    v13 = 0xED0000747365742DLL;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  v14 = type metadata accessor for DigitalPresentmentSessionManager();
  swift_allocObject();
  v15 = sub_10015D65C(v12 & 1, 0x797469746E656469, v13, 2);
  v149 = type metadata accessor for PassManager();
  v161 = swift_allocObject();
  v164 = type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
  v163 = type metadata accessor for DigitalPresentmentUIPresenter();

  v167 = v10;
  DeviceInformationProvider.init()();
  v160 = v11;
  *(&v210 + 1) = v11;
  *&v211 = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(&v209);
  DeviceInformationProvider.init()();
  v16 = type metadata accessor for KRLTrustValidator();
  v195 = 0u;
  v196 = 0u;
  *&v197[0] = 0;
  v146 = v16;
  swift_allocObject();
  v17 = sub_10010F338();

  DateProvider.init()();
  v144 = *(v3 + 16);
  v145 = v3 + 16;
  v144(v6, v8, v2);
  v152 = v6;
  v18 = sub_1003A0748(&v195, v17, v6);

  v19 = *(v3 + 8);
  v153 = v8;
  v154 = (v3 + 8);
  v170 = v2;
  v143 = v19;
  v19(v8, v2);
  *&v197[0] = &off_100809E48;
  *(&v196 + 1) = v14;
  v168 = v15;
  *&v195 = v15;
  v20 = v165;
  v222 = v165;
  v223 = &off_100810218;
  v21 = sub_100032DBC(v221);
  sub_1003EADF0(v10, v21);
  v22 = type metadata accessor for PresentmentKeyRevocationValidator();
  v206 = &off_100809510;
  v205 = v22;
  *&v204 = v18;
  v23 = type metadata accessor for WalletPassPresentmentManager();
  v24 = swift_allocObject();
  v25 = sub_10001F370(&v195, v14);
  v158 = &v142;
  __chkstk_darwin(v25);
  v27 = (&v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v28 + 16);
  v150 = v28 + 16;
  v147 = v29;
  v148 = v26;
  v29(v27);
  v30 = sub_10001F370(v221, v222);
  v157 = &v142;
  __chkstk_darwin(v30);
  v32 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  v34 = sub_10001F370(&v204, v205);
  v156 = &v142;
  __chkstk_darwin(v34);
  v36 = (&v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = *v27;
  v39 = *v36;
  v234 = v14;
  v235 = &off_100809E48;
  v159 = v14;
  *&v233 = v38;
  *(&v231 + 1) = v20;
  v232 = &off_100810218;
  v40 = sub_100032DBC(&v230);
  sub_1003EAE54(v32, v40);
  v229 = &off_100809510;
  v151 = v22;
  v228 = v22;
  *&v227 = v39;
  swift_defaultActor_initialize();
  sub_1003EAEB8(v167);
  *(v24 + 272) = 0u;
  *(v24 + 288) = 0u;
  *(v24 + 304) = 0;
  sub_10001F358(&v233, v24 + 112);
  v41 = v164;
  *(v24 + 152) = v161;
  *(v24 + 160) = v41;
  v42 = v163;
  *(v24 + 168) = &off_100809DF0;
  *(v24 + 176) = v42;
  *(v24 + 184) = &off_100809F18;
  sub_10001F358(&v230, v24 + 192);
  sub_10001F358(&v209, v24 + 232);
  sub_10001F358(&v227, v24 + 312);
  sub_10000BB78(&v204);
  sub_10000BB78(v221);
  sub_10000BB78(&v195);
  v226[9] = &off_100810230;
  v155 = v23;
  v226[8] = v23;
  v226[5] = v24;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v43 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v43 + 54);
  sub_1000318FC(&v43[4], &v209);
  os_unfair_lock_unlock(v43 + 54);
  v44 = *(&v213 + 1);

  sub_100031918(&v209);
  *(&v196 + 1) = type metadata accessor for MobileDocumentRegistrationDataContainer();
  *&v197[0] = sub_1003EAF14(&qword_100843228, type metadata accessor for MobileDocumentRegistrationDataContainer, &unk_1006E8818);
  *&v195 = v44;
  *(&v210 + 1) = type metadata accessor for MobileDocumentProviderRegistrationValidator();
  *&v211 = &protocol witness table for MobileDocumentProviderRegistrationValidator;
  sub_100032DBC(&v209);
  MobileDocumentProviderRegistrationValidator.init()();
  v45 = type metadata accessor for MobileDocumentProviderRegistrationStorage();
  v46 = swift_allocObject();
  sub_10001F358(&v195, v46 + 16);
  sub_10001F358(&v209, v46 + 56);
  v223 = &off_10080DE08;
  v222 = v45;
  v221[0] = v46;
  v47 = type metadata accessor for MobileDocumentProviderRegistrationEntitlementChecker();
  v226[3] = v170;
  v226[4] = &protocol witness table for DateProvider;
  sub_100032DBC(v226);
  DateProvider.init()();
  v224 = v47;
  v225 = &protocol witness table for MobileDocumentProviderRegistrationEntitlementChecker;
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  v48 = type metadata accessor for ExtensionPointManager();
  swift_allocObject();
  v49 = ExtensionPointManager.init(extensionPointIdentifier:)();
  *&v211 = &protocol witness table for ExtensionPointManager;
  *(&v210 + 1) = v48;
  *&v209 = v49;
  *(&v196 + 1) = type metadata accessor for BundleRecordFetcher();
  *&v197[0] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(&v195);
  BundleRecordFetcher.init()();
  v50 = v160;
  v234 = v160;
  v235 = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(&v233);
  DeviceInformationProvider.init()();
  static UserDefaultsConfiguration.standard.getter();
  v205 = type metadata accessor for WebPresentmentDeviceSupportProvider();
  v206 = &protocol witness table for WebPresentmentDeviceSupportProvider;
  sub_100032DBC(&v204);
  WebPresentmentDeviceSupportProvider.init(deviceInfoProvider:userDefaultaConfiguration:)();
  type metadata accessor for FirstPartyDocumentProviderPreferencesManager();
  swift_allocObject();
  v51 = FirstPartyDocumentProviderPreferencesManager.init(userDefaults:)();
  v234 = &type metadata for MobileDocumentProviderFilter;
  v235 = &off_10080DCC8;
  *&v233 = swift_allocObject();
  sub_1003EAFA4(v221, v233 + 16);
  v161 = type metadata accessor for MobileDocumentProviderDataSource();
  v52 = swift_allocObject();
  v53 = sub_10001F370(&v233, &type metadata for MobileDocumentProviderFilter);
  __chkstk_darwin(v53);
  v55 = &v142 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v56 + 16))(v55);
  *(&v231 + 1) = &type metadata for MobileDocumentProviderFilter;
  v232 = &off_10080DCC8;
  v57 = swift_allocObject();
  *&v230 = v57;
  v58 = *(v55 + 7);
  *(v57 + 112) = *(v55 + 6);
  *(v57 + 128) = v58;
  *(v57 + 144) = *(v55 + 16);
  v59 = *(v55 + 3);
  *(v57 + 48) = *(v55 + 2);
  *(v57 + 64) = v59;
  v60 = *(v55 + 5);
  *(v57 + 80) = *(v55 + 4);
  *(v57 + 96) = v60;
  v61 = *(v55 + 1);
  *(v57 + 16) = *v55;
  *(v57 + 32) = v61;
  swift_defaultActor_initialize();
  *(v52 + 280) = 0;
  sub_10001F358(&v209, v52 + 112);
  sub_10001F358(&v195, v52 + 152);
  sub_10001F358(&v204, v52 + 192);
  sub_10001F358(&v230, v52 + 232);
  v156 = v52;
  *(v52 + 272) = v51;
  sub_10000BB78(&v233);
  v62 = sub_100134AD0();
  v63 = type metadata accessor for WebPresentmentBrandStore();
  v64 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v64 + 112) = [objc_allocWithZone(DIWebPresentmentBrandStore) init];
  v205 = v63;
  *&v204 = v64;
  v206 = &off_1008109F0;
  v208[3] = v50;
  v208[4] = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(v208);
  DeviceInformationProvider.init()();
  v65 = static UserDefaultsConfiguration.standard.getter();
  v207 = v62 & 1;
  v208[5] = v65;
  v66 = v159;
  v234 = v159;
  v235 = &off_100809E48;
  v232 = 0;
  *&v233 = v168;
  v230 = 0u;
  v231 = 0u;
  v228 = &type metadata for WebPresentmentBrandConfigurationManager;
  v229 = &off_1008109C8;
  *&v227 = swift_allocObject();
  sub_1003EB048(&v204, v227 + 16);
  v157 = type metadata accessor for WebPresentmentResponseBuilder(0);
  v201 = 0u;
  v202 = 0u;
  v203 = 0;

  v158 = static UserDefaultsConfiguration.standard.getter();
  sub_100020260(&v233, &v195);
  sub_10000BBC4(&v230, &v192, &qword_100843230, &qword_1006E0DC0);
  v67 = v170;
  if (v193)
  {
    sub_10001F358(&v192, &v209);
  }

  else
  {
    v68 = v50;
    sub_100020260(&v233, &v209);
    v149 = swift_allocObject();
    v69 = v167;
    DeviceInformationProvider.init()();
    v190 = v68;
    v191 = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(&v189);
    DeviceInformationProvider.init()();
    v188 = 0;
    v186 = 0u;
    v187 = 0u;
    swift_allocObject();
    v70 = sub_10010F338();

    v71 = v153;
    DateProvider.init()();
    v72 = v152;
    v144(v152, v71, v67);
    v73 = sub_1003A0748(&v186, v70, v72);

    v143(v71, v67);
    v74 = sub_10001F370(&v209, *(&v210 + 1));
    v160 = &v142;
    __chkstk_darwin(v74);
    v76 = (&v142 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v77 + 16))(v76);
    v78 = *v76;
    *(&v187 + 1) = v66;
    v188 = &off_100809E48;
    *&v186 = v78;
    v79 = v165;
    v184 = v165;
    v185 = &off_100810218;
    v80 = sub_100032DBC(v183);
    sub_1003EADF0(v69, v80);
    v81 = v151;
    v181 = v151;
    v182 = &off_100809510;
    v180[0] = v73;
    v82 = swift_allocObject();
    v83 = sub_10001F370(&v186, v66);
    v154 = &v142;
    __chkstk_darwin(v83);
    v85 = (&v142 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
    v147(v85);
    v86 = sub_10001F370(v183, v184);
    v153 = &v142;
    __chkstk_darwin(v86);
    v88 = &v142 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v89 + 16))(v88);
    v90 = sub_10001F370(v180, v181);
    v152 = &v142;
    __chkstk_darwin(v90);
    v92 = (&v142 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v93 + 16))(v92);
    v94 = *v85;
    v95 = *v92;
    v178 = v66;
    v179 = &off_100809E48;
    *&v177 = v94;
    v175 = v79;
    v176 = &off_100810218;
    v96 = sub_100032DBC(&v174);
    sub_1003EAE54(v88, v96);
    v172 = v81;
    v173 = &off_100809510;
    *&v171 = v95;
    swift_defaultActor_initialize();
    sub_1003EAEB8(v167);
    *(v82 + 272) = 0u;
    *(v82 + 288) = 0u;
    *(v82 + 304) = 0;
    sub_10001F358(&v177, v82 + 112);
    v97 = v164;
    *(v82 + 152) = v149;
    *(v82 + 160) = v97;
    v98 = v163;
    *(v82 + 168) = &off_100809DF0;
    *(v82 + 176) = v98;
    *(v82 + 184) = &off_100809F18;
    sub_10001F358(&v174, v82 + 192);
    sub_10001F358(&v189, v82 + 232);
    sub_10001F358(&v171, v82 + 312);
    sub_10000BB78(v180);
    sub_10000BB78(v183);
    sub_10000BB78(&v186);
    sub_10000BB78(&v209);
    *&v211 = &off_100810230;
    *(&v210 + 1) = v155;
    *&v209 = v82;
    if (v193)
    {
      sub_10000BE18(&v192, &qword_100843230, &qword_1006E0DC0);
    }
  }

  sub_10001F358(&v209, v197 + 8);
  *&v198 = v157;
  *(&v198 + 1) = &off_100811FB0;
  sub_100020260(&v227, v199);
  sub_10000BBC4(&v201, &v192, &qword_100843238, &qword_1006E0DC8);
  v99 = v169;
  if (v193)
  {
    sub_10000BE18(&v201, &qword_100843238, &qword_1006E0DC8);
    sub_10000BE18(&v230, &qword_100843230, &qword_1006E0DC0);
    sub_10000BB78(&v227);
    sub_10000BB78(&v233);
    sub_10001F358(&v192, &v209);
    v100 = v170;
  }

  else
  {
    sub_100020260(&v227, &v189);
    v101 = static UserDefaultsConfiguration.standard.getter();
    *(&v210 + 1) = &type metadata for WebPresentmentResponsePermissionsFilter;
    *&v211 = &off_100812070;
    *&v209 = swift_allocObject();
    sub_10046D410(&v189, v101, v209 + 16);
    sub_10000BE18(&v201, &qword_100843238, &qword_1006E0DC8);
    sub_10000BE18(&v230, &qword_100843230, &qword_1006E0DC0);
    sub_10000BB78(&v227);
    sub_10000BB78(&v233);
    v100 = v170;
    if (v193)
    {
      sub_10000BE18(&v192, &qword_100843238, &qword_1006E0DC8);
    }
  }

  sub_10001F358(&v209, v200 + 8);
  v220 = v158;
  v217 = v200[0];
  v218 = v200[1];
  v219 = v200[2];
  v213 = v197[2];
  v214 = v198;
  v215 = v199[0];
  v216 = v199[1];
  v209 = v195;
  v210 = v196;
  v211 = v197[0];
  v212 = v197[1];
  swift_unknownObjectRetain();
  sub_1003E85AC(&v195);
  v234 = type metadata accessor for PartialWebPresentmentRequestParser();
  v235 = &protocol witness table for PartialWebPresentmentRequestParser;
  sub_100032DBC(&v233);
  PartialWebPresentmentRequestParser.init()();
  sub_100007224(&qword_100843240, &qword_1006E0DD0);
  v102 = swift_allocObject();
  v103 = type metadata accessor for WebPresentmentSelectionBypasser();
  v102[1] = 0u;
  v102[2] = 0u;
  *(v102 + 44) = 0u;
  v104 = v103;
  v105 = swift_allocObject();
  *(&v231 + 1) = v100;
  v232 = &protocol witness table for DateProvider;
  sub_100032DBC(&v230);
  DateProvider.init()();
  if (qword_100832C78 != -1)
  {
    swift_once();
  }

  if (v99)
  {
    v106 = v162;
  }

  else
  {
    v106 = 0;
  }

  v166 = qword_100882378;
  v167 = v106;
  v107 = sub_10001F370(&v195, *(&v196 + 1));
  v170 = &v142;
  __chkstk_darwin(v107);
  v109 = (&v142 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v110 + 16))(v109);
  v111 = *v109;
  v228 = &type metadata for WebPresentmentWalletPassPresenter;
  v229 = &off_100812298;
  *&v227 = swift_allocObject();
  sub_1003EB13C(&v209, v227 + 16);
  v203 = &off_10080DC28;
  *(&v202 + 1) = v161;
  *&v201 = v156;
  v112 = type metadata accessor for RemoteMobileDocumentProviderUIPresenter();
  v194 = &off_10080FAC0;
  v193 = v112;
  *&v192 = v111;
  v190 = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
  v191 = &off_10080DD00;
  *&v189 = v102;
  *(&v187 + 1) = v104;
  v188 = &off_100812108;
  *&v186 = v105;
  type metadata accessor for RemoteWebPresentmentManager();
  v113 = swift_allocObject();
  v114 = sub_10001F370(&v227, &type metadata for WebPresentmentWalletPassPresenter);
  v165 = &v142;
  __chkstk_darwin(v114);
  v116 = &v142 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v117 + 16))(v116);
  v118 = sub_10001F370(&v192, v112);
  v164 = &v142;
  __chkstk_darwin(v118);
  v120 = (&v142 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v121 + 16))(v120);
  v122 = sub_10001F370(&v189, v190);
  v163 = &v142;
  __chkstk_darwin(v122);
  v124 = (&v142 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v125 + 16))(v124);
  v126 = sub_10001F370(&v186, *(&v187 + 1));
  __chkstk_darwin(v126);
  v128 = (&v142 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v129 + 16))(v128);
  v130 = *v120;
  v131 = *v124;
  v132 = *v128;
  v113[5] = &type metadata for WebPresentmentWalletPassPresenter;
  v113[6] = &off_100812298;
  v133 = swift_allocObject();
  v113[2] = v133;
  v134 = *(v116 + 9);
  *(v133 + 144) = *(v116 + 8);
  *(v133 + 160) = v134;
  *(v133 + 176) = *(v116 + 10);
  *(v133 + 192) = *(v116 + 22);
  v135 = *(v116 + 5);
  *(v133 + 80) = *(v116 + 4);
  *(v133 + 96) = v135;
  v136 = *(v116 + 7);
  *(v133 + 112) = *(v116 + 6);
  *(v133 + 128) = v136;
  v137 = *(v116 + 1);
  *(v133 + 16) = *v116;
  *(v133 + 32) = v137;
  v138 = *(v116 + 3);
  *(v133 + 48) = *(v116 + 2);
  *(v133 + 64) = v138;
  v113[15] = v112;
  v113[16] = &off_10080FAC0;
  v113[12] = v130;
  v113[27] = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
  v113[28] = &off_10080DD00;
  v113[24] = v131;
  v113[32] = v104;
  v113[33] = &off_100812108;
  v139 = v166;

  v113[29] = v132;
  sub_1003EB198(&v209);
  v140 = v167;
  v113[17] = v169;
  v113[18] = v140;
  sub_10001F358(&v201, (v113 + 7));
  sub_10001F358(&v233, (v113 + 19));
  sub_10001F358(&v230, (v113 + 34));
  v113[39] = v139;
  sub_10000BB78(&v186);
  sub_10000BB78(&v189);
  sub_10000BB78(&v192);
  sub_10000BB78(&v227);
  sub_1003EB1EC(&v204);
  sub_1003EB240(v221);
  sub_10000BB78(&v195);
  sub_100108074(v236);
  return v113;
}