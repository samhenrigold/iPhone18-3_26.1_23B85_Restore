uint64_t sub_100164EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100164F84()
{
  sub_100004E28();
  v2(0);
  sub_10000BAB8();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100164FDC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002D30();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100165030()
{
  sub_100004E28();
  v2(0);
  sub_10000BAB8();
  (*(v3 + 32))(v0, v1);
  return v0;
}

void sub_1001650B0(uint64_t a1)
{
  sub_100165154();
  if (v1 <= 0x3F)
  {
    sub_1001651AC(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100165154()
{
  if (!qword_10026F0A0)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_10026F0A0);
    }
  }
}

void sub_1001651AC(uint64_t a1)
{
  if (!qword_10026F0A8)
  {
    type metadata accessor for MercuryCacheMetadata(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_10026F0A8);
    }
  }
}

uint64_t sub_100165204(uint64_t a1, void *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v29 = v3;
  v30 = a2;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
      v11 = v10[1];
      *&v33 = *v10;
      *(&v33 + 1) = v11;
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      v34 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
      *&v33 = _swiftEmptyDictionarySingleton;
      sub_100002C4C(&v33, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *a2;
      v36 = v13;
      v14 = sub_10000C818(v35);
      v16 = v13[2];
      v17 = (v15 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        break;
      }

      v19 = v14;
      v20 = v15;
      sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18))
      {
        v21 = sub_10000C818(v35);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v19 = v21;
      }

      v23 = v36;
      if (v20)
      {
        v24 = (v36[7] + 32 * v19);
        sub_100002C00(v24);
        sub_100002C4C(v32, v24);
      }

      else
      {
        v36[(v19 >> 6) + 8] |= 1 << v19;
        sub_10000DF68(v35, v23[6] + 40 * v19);
        sub_100002C4C(v32, (v23[7] + 32 * v19));
        v25 = v23[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_21;
        }

        v23[2] = v27;
      }

      v6 &= v6 - 1;
      a2 = v30;
      *v30 = v23;
      sub_10000E1E8(v35);

      v3 = v29;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100165480(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = 0;
  v43 = v10;
  v44 = a1 + 56;

  v42 = a3;
  for (i = a2; v9; v6 = v44)
  {
LABEL_8:
    v13 = (*(v5 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
    v15 = v13[1];
    v49[0] = *v13;
    v14 = v49[0];
    v49[1] = v15;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    *&v47 = v14;
    *(&v47 + 1) = v15;

    AnyHashable.init<A>(_:)();
    if (*(a3 + 16) && (v16 = sub_10000C818(v49), (v17 & 1) != 0))
    {
      sub_100011BAC(*(a3 + 56) + 32 * v16, &v47);
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    sub_10000E1E8(v49);
    if (*(&v48 + 1))
    {
      sub_100002C4C(&v47, v46);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *i;
      v19 = v51;
      v20 = sub_10000C818(v50);
      v22 = v19[2];
      v23 = (v21 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_30;
      }

      v25 = v20;
      v26 = v21;
      sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24))
      {
        v27 = sub_10000C818(v50);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_32;
        }

        v25 = v27;
      }

      v10 = v43;
      v29 = v51;
      if (v26)
      {
        v30 = (v51[7] + 32 * v25);
        sub_100002C00(v30);
        sub_100002C4C(v46, v30);
      }

      else
      {
        v51[(v25 >> 6) + 8] |= 1 << v25;
        sub_10000DF68(v50, v29[6] + 40 * v25);
        sub_100002C4C(v46, (v29[7] + 32 * v25));
        v37 = v29[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_31;
        }

        v29[2] = v39;
      }

      *i = v29;
      sub_10000E1E8(v50);

      v5 = v41;
      a3 = v42;
    }

    else
    {
      sub_100002C5C(&v47);
      v31 = sub_10000C818(v50);
      if (v32)
      {
        v33 = v31;
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v51 = *i;
        v35 = v51[3];
        sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
        a3 = v42;
        v10 = v43;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v34, v35);
        v36 = v51;
        sub_10000E1E8(v51[6] + 40 * v33);
        sub_100002C4C((v36[7] + 32 * v33), v46);
        _NativeDictionary._delete(at:)();
        *i = v36;
      }

      else
      {
        memset(v46, 0, sizeof(v46));
      }

      sub_10000E1E8(v50);
      sub_100002C5C(v46);
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10016584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      v18 = (*(a1 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
      v19 = v18[1];
      v22[0] = *v18;
      v22[1] = v19;

      sub_1001679BC(v22, a2, a3, a4, v23, a6);
      if (v6)
      {
        break;
      }

      v13 &= v13 - 1;

      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    return sub_100014A10(a4, v23);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return sub_100014A10(a4, v23);
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001659BC(uint64_t a1, uint64_t a2)
{
  v183 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v4 = Dictionary.init(dictionaryLiteral:)();
  v5 = a2 + 64;
  sub_100005680();
  v8 = v7 & v6;
  v174 = (v9 + 63) >> 6;

  v10 = 0;
  v177 = a1;
  v180 = a2 + 64;
  while (1)
  {
LABEL_2:
    if (v8)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v11 << 6);
      sub_10000DF68(*(a2 + 48) + 40 * v13, v209);
      sub_100011BAC(*(a2 + 56) + 32 * v13, v212);
      *__src = *v209;
      *&__src[16] = v210;
      *&__src[32] = v211;
      sub_100002C4C(v212, &__src[40]);
    }

    else
    {
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_105;
        }

        if (v11 >= v174)
        {
          break;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_8;
        }
      }

      v8 = 0;
      memset(__src, 0, sizeof(__src));
    }

    memcpy(__dst, __src, 0x48uLL);
    if (!*(&__dst[1] + 1))
    {

      if (v4[2])
      {
        sub_1000E375C();
        v142 = v141;
        sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
        v143 = swift_allocObject();
        *(v143 + 16) = xmmword_1001E8AB0;
        sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
        v144 = sub_1000065C0();
        [v144 setAllowsResponse:0];
        *(v143 + 32) = v144;
        sub_100166C10(0xD000000000000018, 0x80000001001F3050, v142, v143);
      }
    }

    sub_100002C4C((&__dst[2] + 8), v212);
    *__src = __dst[0];
    *&__src[16] = __dst[1];
    *&__src[32] = *&__dst[2];
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_98;
    }

    v14 = *&v209[8];
    v201 = *v209;
    sub_100011BAC(v212, __src);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_98:
      if (qword_100268720 != -1)
      {
        goto LABEL_110;
      }

      goto LABEL_99;
    }

    v198 = *v209;
    if (!a1)
    {
      goto LABEL_82;
    }

    *&v206 = v201;
    *(&v206 + 1) = v14;

    AnyHashable.init<A>(_:)();
    if (!*(a1 + 16) || (v15 = sub_10000C818(__src), (v16 & 1) == 0))
    {
      sub_10000E1E8(__src);
LABEL_82:
      *v209 = 0u;
      v210 = 0u;
LABEL_83:
      sub_100002C5C(v209);
      goto LABEL_84;
    }

    sub_100011BAC(*(a1 + 56) + 32 * v15, v209);
    sub_10000E1E8(__src);
    if (!*(&v210 + 1))
    {
      goto LABEL_83;
    }

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_84:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__src = v4;
    v130 = sub_100012A94();
    v132 = v4[2];
    v133 = (v131 & 1) == 0;
    v134 = v132 + v133;
    if (__OFADD__(v132, v133))
    {
      goto LABEL_106;
    }

    v135 = v130;
    v136 = v131;
    sub_10007B9A4(&qword_10026B2D8, &unk_1001EEA60);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v134))
    {
      sub_100012A94();
      sub_100007460();
      v5 = v180;
      if (!v56)
      {
LABEL_117:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v135 = v137;
      if (v136)
      {
        goto LABEL_92;
      }

LABEL_89:
      v4 = *__src;
      *(*__src + 8 * (v135 >> 6) + 64) |= 1 << v135;
      v138 = (v4[6] + 16 * v135);
      *v138 = v201;
      v138[1] = v14;
      *(v4[7] + 8 * v135) = v198;
      sub_100002C00(v212);
      v139 = v4[2];
      v59 = __OFADD__(v139, 1);
      v140 = v139 + 1;
      if (v59)
      {
        goto LABEL_107;
      }

      v4[2] = v140;
    }

    else
    {
      v5 = v180;
      if ((v136 & 1) == 0)
      {
        goto LABEL_89;
      }

LABEL_92:

      v4 = *__src;
      *(*(*__src + 56) + 8 * v135) = v198;

      sub_100002C00(v212);
    }
  }

  v166 = v14;
  v169 = v4;
  v151 = a2;
  v17 = 0;
  v189 = *__src;
  sub_100005680();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v24 = v23;
  v186 = v23;
  if ((v19 & v18) == 0)
  {
    goto LABEL_19;
  }

  while (2)
  {
    v25 = v17;
LABEL_23:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = v26 | (v25 << 6);
    v28 = (*(v198 + 48) + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    sub_100011BAC(*(v198 + 56) + 32 * v27, &v206);
    *v209 = v30;
    *&v209[8] = v29;
    sub_100002C4C(&v206, &v210);

LABEL_24:
    *__src = *v209;
    *&__src[16] = v210;
    *&__src[32] = v211;
    v31 = *&v209[8];
    if (!*&v209[8])
    {
      sub_100002C00(v212);

      a2 = v151;
      v4 = v169;
      v5 = v180;
      goto LABEL_2;
    }

    v192 = *__src;
    sub_100002C4C(&__src[16], v209);
    v32 = sub_100002BC0(0, &qword_10026FF00, NSDictionary_ptr);
    if (!swift_dynamicCast())
    {
LABEL_31:

      goto LABEL_32;
    }

    v33 = v206;
    if (!*(v189 + 16) || (v34 = sub_100019D38(), (v35 & 1) == 0) || (sub_100011BAC(*(v189 + 56) + 32 * v34, v209), sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0), (swift_dynamicCast() & 1) == 0))
    {
      if (*(v169 + 16) && (v38 = sub_100012A94(), (v39 & 1) != 0))
      {
        v40 = *(*(v169 + 56) + 8 * v38);
      }

      else
      {
        LOBYTE(v40) = Dictionary.init(dictionaryLiteral:)();
      }

      *(&v210 + 1) = v32;
      *v209 = v33;
      sub_100002C4C(v209, &v206);
      v154 = v33;
      swift_isUniquelyReferenced_nonNull_native();
      sub_100019D38();
      sub_100003058();
      if (__OFADD__(v43, v44))
      {
        goto LABEL_108;
      }

      v45 = v41;
      HIDWORD(v161) = v42;
      v46 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      if (sub_100011AF8(v46, v47, v48, v49, v50, v51, v52, v53, v151, v154, v161, v164, v166, v169, v174, v177, v180, v183, v186, v189, v192, v198, v201, v40))
      {
        sub_100019D38();
        sub_100012D84();
        if (!v56)
        {
          goto LABEL_117;
        }

        v45 = v54;
        if ((v55 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if ((v162 & 0x100000000) == 0)
      {
LABEL_44:
        sub_100006EC0();
        *v57 = v193;
        v57[1] = v31;
        sub_100002C4C(&v206, (*(v204 + 56) + 32 * v45));
        sub_1000079CC();
        if (v59)
        {
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
          goto LABEL_117;
        }

        v194 = v204;
        *(v204 + 16) = v58;
        goto LABEL_48;
      }

      v194 = v204;
      v60 = (*(v204 + 56) + 32 * v45);
      sub_100002C00(v60);
      sub_100002C4C(&v206, v60);
LABEL_48:
      swift_isUniquelyReferenced_nonNull_native();
      *v209 = v170;
      sub_100012A94();
      sub_100003058();
      if (__OFADD__(v63, v64))
      {
        goto LABEL_109;
      }

      v65 = v61;
      v66 = v62;
      v67 = sub_10007B9A4(&qword_10026B2D8, &unk_1001EEA60);
      v75 = sub_10000AA70(v67, v68, v69, v70, v71, v72, v73, v74, v152, v155, v162, v164, v167, v170, v175, v178, v181, v184, v187, v190, v194, v199, v202, v204, v206, *(&v206 + 1), v207, v208, v209[0]);
      if (v75)
      {
        sub_100005D80(v75, v76, v77, v78, v79, v80, v81, v82, v151, v156, v161, v164, v166, v171, v174, v177, v180, v183, v186, v189, v195, v198, v201);
        sub_100007460();
        a1 = v177;
        if (!v56)
        {
          goto LABEL_117;
        }

        v65 = v83;
      }

      else
      {
        a1 = v177;
      }

      v84 = *v209;
      v169 = *v209;
      if (v66)
      {
        goto LABEL_78;
      }

      sub_100006EC0();
      sub_100023EE8(v85, v151, v156, v161, v164, v166, v169, v174, v177, v180, v183, v186, v189, v195, v198, v201);

      sub_1000079CC();
      if (v59)
      {
        goto LABEL_112;
      }

      goto LABEL_80;
    }

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = [v33 isEqualToDictionary:isa];

    if (v37)
    {

      a1 = v177;
      goto LABEL_32;
    }

    if (*(v169 + 16) && (v87 = sub_100012A94(), (v88 & 1) != 0))
    {
      v89 = *(*(v169 + 56) + 8 * v87);
    }

    else
    {
      v89 = Dictionary.init(dictionaryLiteral:)();
    }

    *(&v210 + 1) = v32;
    *v209 = v33;
    sub_100002C4C(v209, &v206);
    v158 = v33;
    swift_isUniquelyReferenced_nonNull_native();
    v90 = sub_100019D38();
    HIDWORD(v161) = v91;
    if (__OFADD__(*(v89 + 16), (v91 & 1) == 0))
    {
      goto LABEL_113;
    }

    v92 = v90;
    v93 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
    if (!sub_100011AF8(v93, v94, v95, v96, v97, v98, v99, v100, v151, v158, v161, v164, v166, v169, v174, v177, v180, v183, v186, v189, v192, v198, v201, v89))
    {
      if ((v163 & 0x100000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_70;
    }

    sub_100019D38();
    sub_100012D84();
    if (!v56)
    {
      goto LABEL_117;
    }

    v92 = v101;
    if (v102)
    {
LABEL_70:

      v197 = v205;
      v105 = (*(v205 + 56) + 32 * v92);
      sub_100002C00(v105);
      sub_100002C4C(&v206, v105);
      goto LABEL_71;
    }

LABEL_67:
    sub_100006EC0();
    *v103 = v196;
    v103[1] = v31;
    sub_100002C4C(&v206, (*(v205 + 56) + 32 * v92));
    sub_1000079CC();
    if (v59)
    {
      goto LABEL_115;
    }

    v197 = v205;
    *(v205 + 16) = v104;
LABEL_71:
    swift_isUniquelyReferenced_nonNull_native();
    *v209 = v172;
    sub_100012A94();
    sub_100003058();
    if (__OFADD__(v108, v109))
    {
      goto LABEL_114;
    }

    v65 = v106;
    v110 = v107;
    v111 = sub_10007B9A4(&qword_10026B2D8, &unk_1001EEA60);
    v119 = sub_10000AA70(v111, v112, v113, v114, v115, v116, v117, v118, v153, v159, v163, v165, v168, v172, v176, v179, v182, v185, v188, v191, v197, v200, v203, v205, v206, *(&v206 + 1), v207, v208, v209[0]);
    if (v119)
    {
      sub_100005D80(v119, v120, v121, v122, v123, v124, v125, v126, v151, v156, v161, v164, v166, v173, v174, v177, v180, v183, v186, v189, v195, v198, v201);
      sub_100007460();
      a1 = v177;
      if (!v56)
      {
        goto LABEL_117;
      }

      v65 = v127;
    }

    else
    {
      a1 = v177;
    }

    v84 = *v209;
    v169 = *v209;
    if (v110)
    {
LABEL_78:
      *(*(v84 + 56) + 8 * v65) = v195;

      goto LABEL_31;
    }

    sub_100006EC0();
    sub_100023EE8(v128, v151, v156, v161, v164, v166, v169, v174, v177, v180, v183, v186, v189, v195, v198, v201);

    sub_1000079CC();
    if (v59)
    {
      goto LABEL_116;
    }

LABEL_80:
    *(v84 + 16) = v86;
LABEL_32:
    v24 = v186;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_19:
  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      v20 = 0;
      v210 = 0u;
      v211 = 0u;
      *v209 = 0u;
      goto LABEL_24;
    }

    v20 = *(v24 + 8 * v25);
    ++v17;
    if (v20)
    {
      v17 = v25;
      goto LABEL_23;
    }
  }

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
  sub_100005514(&qword_100268720);
LABEL_99:
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v145 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v145);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_1001E5F70;
  *&__src[24] = &type metadata for MercuryCacheUpdateReporter;
  sub_100007600();
  *__src = swift_allocObject();
  sub_100167D44(v164, *__src + 16);
  v147 = AMSLogKey();
  if (v147)
  {
    v148 = v147;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(__src);
  LogInterpolation.init(stringLiteral:)();
  v149 = static os_log_type_t.error.getter();
  sub_1000036B0(v149, v146);

  sub_100002C00(v212);
}

uint64_t sub_100166628()
{
  if (qword_100268670 != -1)
  {
    sub_100003198(&qword_100268670);
  }

  v0 = qword_1002877D0;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 defaultCenter];
  v5[4] = sub_100002BC0(0, &qword_10026F0E8, NSDistributedNotificationCenter_ptr);
  v5[5] = &off_10024FAC0;
  v5[0] = v2;
  v5[1] = v3;
  sub_1001666E8();
  return sub_100167D14(v5);
}

uint64_t sub_1001666E8()
{
  v1 = sub_100166B90(0xD000000000000010, 0x80000001001F3030);
  v3 = v2;
  if (qword_100268720 != -1)
  {
    sub_100005514(&qword_100268720);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F70;
  v16 = &type metadata for MercuryCacheUpdateReporter;
  sub_100007600();
  v14 = swift_allocObject();
  sub_100167D44(v0, v14 + 16);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v14);
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  sub_100004B44();
  v14 = 0xD000000000000015;
  v15 = v8;
  v9._countAndFlagsBits = v1;
  v9._object = v3;
  String.append(_:)(v9);
  v16 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v14);
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10, v5);

  v11 = v0[4];
  v12 = v0[5];
  sub_100003CA8(v0 + 1, v11);
  (*(v12 + 8))(v1, v3, v11, v12);
}

uint64_t sub_10016694C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (qword_100268670 != -1)
  {
    sub_100003198(&qword_100268670);
  }

  v6 = qword_1002877D0;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  v11[4] = sub_100002BC0(0, &qword_10026F0E8, NSDistributedNotificationCenter_ptr);
  v11[5] = &off_10024FAC0;
  v11[0] = v8;
  v11[1] = v9;
  a3(a1, a2);
  return sub_100167D14(v11);
}

uint64_t sub_100166A2C(uint64_t a1, uint64_t a2)
{
  sub_100167614(a1, a2, sub_100167398, 0);
  v3 = v2;
  if (*(v2 + 16))
  {
    sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1001E8AB0;
    sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
    v5 = sub_1000065C0();
    [v5 setAllowsResponse:0];
    *(v4 + 32) = v5;
    sub_100166C10(0xD000000000000013, 0x80000001001F3070, v3, v4);
  }
}

unint64_t sub_100166B90(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(49);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  return 0xD00000000000002FLL;
}

uint64_t sub_100166C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v40 = v8;
  v41 = v7;
  __chkstk_darwin(v7);
  sub_1000052A4();
  v38 = v9;
  v39 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v37 = v10;
  __chkstk_darwin(v11);
  sub_1000052A4();
  v36 = v12;
  v13 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E61B0;
  sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F60;
  sub_10000A4B4();
  *(inited + 96) = &type metadata for String;
  sub_100004B44();
  *(inited + 72) = 0xD000000000000013;
  *(inited + 80) = v16;
  sub_10000A4B4();
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 144), "amsengagementd");
  *(inited + 159) = -18;
  sub_100004B44();
  *&v43 = 0xD000000000000012;
  *(&v43 + 1) = v17;
  sub_10000A4B4();
  sub_10007B9A4(&qword_10026F0F0, &qword_1001EEA38);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1001E61B0;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  sub_10007B9A4(&qword_10026F0F8, &unk_1001EEA40);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1001E61B0;
  *(v19 + 32) = 0x64657461647075;
  *(v19 + 40) = 0xE700000000000000;
  *(v19 + 48) = a3;

  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  *(v18 + 48) = Dictionary.init(dictionaryLiteral:)();
  sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
  v20 = Dictionary.init(dictionaryLiteral:)();
  *(inited + 240) = sub_10007B9A4(&qword_10026EB90, &qword_1001EE4D8);
  *(inited + 216) = v20;
  *(v14 + 32) = Dictionary.init(dictionaryLiteral:)();
  sub_1000F4334(v14, v13);
  v21 = [objc_opt_self() currentProcess];
  [v13 setClientInfo:v21];

  sub_10017DB30(a4, v13);
  if (qword_100268720 != -1)
  {
    sub_100005514(&qword_100268720);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v22 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v22);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001E5F70;
  *(&v44 + 1) = &type metadata for MercuryCacheUpdateReporter;
  sub_100007600();
  *&v43 = swift_allocObject();
  sub_100167D44(v35, v43 + 16);
  v24 = AMSLogKey();
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v43);
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  sub_100004B44();
  *&v43 = 0xD000000000000017;
  *(&v43 + 1) = v26;
  v42[0] = sub_10000D7F8(v13);
  sub_10007B9A4(&qword_10026F100, &qword_1001EEA58);
  v27._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v27);

  *(&v44 + 1) = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v43);
  v28 = static os_log_type_t.info.getter();
  sub_1000036B0(v28, v23);

  if (qword_100268800 != -1)
  {
    swift_once();
  }

  sub_100167D44(v35, &v43);
  v29 = swift_allocObject();
  v30 = v44;
  *(v29 + 16) = v43;
  *(v29 + 32) = v30;
  *(v29 + 48) = v45;
  *(v29 + 64) = v13;
  v42[4] = sub_100167D7C;
  v42[5] = v29;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 1107296256;
  v42[2] = sub_100005E50;
  v42[3] = &unk_10024FB60;
  v31 = _Block_copy(v42);
  v32 = v13;
  static DispatchQoS.unspecified.getter();
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v40 + 8))(v38, v41);
  (*(v37 + 8))(v36, v39);
}

uint64_t sub_100167350(void *a1, uint64_t a2)
{
  swift_getObjectType();
  sub_1000996BC(a2);
}

id sub_100167398(uint64_t a1, uint64_t a2)
{
  *&v21 = 1635018093;
  *(&v21 + 1) = 0xE400000000000000;

  AnyHashable.init<A>(_:)();
  v4 = sub_10000C818(v20);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = a1;
    v8 = *(a1 + 24);
    sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
    sub_10000E1E8(*(v18 + 48) + 40 * v6);
    sub_100002C4C((*(v18 + 56) + 32 * v6), &v21);
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  sub_10000E1E8(v20);
  sub_100002C5C(&v21);
  *&v21 = 1635018093;
  *(&v21 + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  v9 = sub_10000C818(v20);
  if (v10)
  {
    v11 = v9;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v19 = a2;
    v13 = *(a2 + 24);
    sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
    sub_10000E1E8(*(v19 + 48) + 40 * v11);
    sub_100002C4C((*(v19 + 56) + 32 * v11), &v21);
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  sub_10000E1E8(v20);
  sub_100002C5C(&v21);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [(objc_class *)isa isEqualToDictionary:v15];

  return v16;
}

void sub_100167614(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a1)
  {
    v74 = a3;
    v75 = a4;
    v87[0] = _swiftEmptyDictionarySingleton;
    v6 = a1 + 64;
    sub_100004E5C();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;

    v12 = 0;
    v76 = _swiftEmptyArrayStorage;
    while (v9)
    {
LABEL_8:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_10000DF68(*(a1 + 48) + 40 * (v14 | (v12 << 6)), v86);
      sub_10000BACC(v15, v16, v17, v18, v19, v20, v21, v22, *&v70, *&v71, *&v72, v73, *&v74, *&v75, *&v76, v78, v79, v80, v81, v82, v83, *&v84, v85, v86[0]);
      if ((swift_dynamicCast() & 1) != 0 && v85 != 0.0)
      {
        v73 = *&v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100008124(isUniquelyReferenced_nonNull_native, v24, v25, v26, v27, v28, v29, v30, v70, v71, v72, v84, v74, v75, v76);
          v76 = v34;
        }

        v31 = v76[2];
        v32 = v31 + 1;
        if (v31 >= v76[3] >> 1)
        {
          v71 = v76[2];
          v72 = v31 + 1;
          sub_10000DE9C();
          v31 = v71;
          v32 = v72;
          v76 = v35;
        }

        v76[2] = v32;
        v33 = &v76[2 * v31];
        v33[4] = v73;
        v33[5] = v85;
      }
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v13 >= v11)
      {
        break;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_8;
      }
    }

    v36 = sub_100062640(v76);
    sub_100004E5C();
    v39 = v38 & v37;
    v41 = (v40 + 63) >> 6;

    v42 = 0;
    v77 = _swiftEmptyArrayStorage;
    while (v39)
    {
LABEL_21:
      v44 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      sub_10000DF68(*(a2 + 48) + 40 * (v44 | (v42 << 6)), v86);
      sub_10000BACC(v45, v46, v47, v48, v49, v50, v51, v52, *&v70, *&v71, *&v72, v73, *&v74, *&v75, *&v77, v78, v79, v80, v81, v82, v83, *&v84, v85, v86[0]);
      if ((swift_dynamicCast() & 1) != 0 && v85 != 0.0)
      {
        v73 = *&v84;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        if ((v53 & 1) == 0)
        {
          sub_100008124(v53, v54, v55, v56, v57, v58, v59, v60, v70, v71, v72, v84, v74, v75, v77);
          v77 = v64;
        }

        v61 = v77[2];
        v62 = v61 + 1;
        if (v61 >= v77[3] >> 1)
        {
          v71 = v77[2];
          v72 = v61 + 1;
          sub_10000DE9C();
          v61 = v71;
          v62 = v72;
          v77 = v65;
        }

        v77[2] = v62;
        v63 = &v77[2 * v61];
        v63[4] = v73;
        v63[5] = v85;
      }
    }

    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v43 >= v41)
      {

        v66 = sub_100062640(v77);

        v67 = sub_10016848C(v66, v36);
        sub_100165204(v67, v87);

        v68 = sub_10016848C(v36, v66);

        sub_100165480(v68, v87, a2);

        v69 = sub_100164958();

        sub_100017E54(v74, v75);
        sub_10016584C(v69, a1, a2, v74, v75, v87);

        return;
      }

      v39 = *(a2 + 64 + 8 * v43);
      ++v42;
      if (v39)
      {
        v42 = v43;
        goto LABEL_21;
      }
    }

LABEL_31:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1001679BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v11 = a1[1];
  v19 = *a1;

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v20, a2, &v21);
  sub_10000E1E8(v20);
  if (!v22)
  {
    return sub_100002C5C(&v21);
  }

  v13 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v23 = a6;

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v20, a3, &v21);
  sub_10000E1E8(v20);
  if (!v22)
  {

    return sub_100002C5C(&v21);
  }

  if (swift_dynamicCast())
  {
    if (a4)
    {

      v15 = a4(v19, v12);

      if ((v15 & 1) == 0)
      {
        *&v21 = v12;
        *(&v21 + 1) = v11;

        AnyHashable.init<A>(_:)();
        v22 = v13;
        *&v21 = v12;
        sub_1000A9FF8(&v21, v20);
        return sub_100014A10(a4, a5);
      }

      sub_100014A10(a4, a5);
    }

    else
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v17 = Dictionary._bridgeToObjectiveC()().super.isa;

      v18 = [(objc_class *)isa isEqualToDictionary:v17];

      if ((v18 & 1) == 0)
      {
        *&v21 = v12;
        *(&v21 + 1) = v11;

        AnyHashable.init<A>(_:)();
        v22 = v13;
        *&v21 = v12;
        return sub_1000A9FF8(&v21, v20);
      }
    }
  }
}

void sub_100167C88()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 postNotificationName:v1 object:0 userInfo:0 deliverImmediately:1];
}

__n128 sub_100167D88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100167D9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100167DDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100167E38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v40 = a4;
  v43 = a3;
  v45 = a1;
  v9 = sub_10007B9A4(&qword_10026AF40, &unk_1001EEAD0);
  __chkstk_darwin(v9 - 8);
  v44 = &v39 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for MercuryCacheUpdateData(0);
  v16 = __chkstk_darwin(updated);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v22 = *a2;
  v21 = a2[1];
  v23 = a2[2];
  v24 = *(v12 + 16);
  v41 = v14;
  v25 = v43;
  v43 = v11;
  v24(v14, v25, v11);
  v26 = (v18 + updated[6]);
  v42 = v22;
  *v26 = v22;
  v26[1] = v21;
  *&v50[0] = 0x64616F6C796170;
  *(&v50[0] + 1) = 0xE700000000000000;

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v51, v23, v50);
  sub_10000E1E8(&v51);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v27 = swift_dynamicCast();
  v28 = v49;
  if (!v27)
  {
    v28 = 0;
  }

  *(v18 + updated[7]) = v28;
  *v18 = a5;
  v51 = 1635018093;
  v52 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v50, v23, &v49);
  sub_10000E1E8(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v56 = 0;
    goto LABEL_7;
  }

  if (!v56)
  {
LABEL_7:
    v30 = 0;
    v33 = 0;
    v34 = 0;
    v29 = 1;
    v31 = 0uLL;
    v32 = 0uLL;
    goto LABEL_8;
  }

  sub_1001628EC(v40, &v51, a6);
  v29 = 0;
  v30 = v51;
  v31 = v53;
  v32 = v54;
  v33 = v55;
  v48 = v52;
  v47 = v55;
  v46 = 0;
  v34 = v52;
LABEL_8:
  v35 = v18 + updated[8];
  *v35 = v30;
  *(v35 + 1) = v34;
  *(v35 + 1) = v31;
  *(v35 + 2) = v32;
  v35[48] = v33;
  v35[49] = v29;
  (*(v12 + 32))(v18 + updated[5], v41, v43);
  sub_100168258(v18, v20);

  v36 = v44;
  sub_100162638(v44);
  v37 = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  sub_10000A7C0(v36, 0, 1, v37);
  sub_1000AA4AC();
  return sub_1001682BC(v20);
}

uint64_t sub_100168258(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for MercuryCacheUpdateData(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_1001682BC(uint64_t a1)
{
  updated = type metadata accessor for MercuryCacheUpdateData(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t type metadata accessor for MercuryCacheUpdateResponse(uint64_t a1)
{
  result = qword_10026F160;
  if (!qword_10026F160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016838C(uint64_t a1)
{
  sub_100168424(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100168424(uint64_t a1)
{
  if (!qword_10026F170)
  {
    type metadata accessor for MercuryCacheUpdateData.DataKind(255);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_10026F170);
    }
  }
}

void *sub_10016848C(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100193F5C(a1);
    return a2;
  }

  else
  {

    return sub_100168BAC(a1, a2);
  }
}

uint64_t sub_1001684E0()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026F1B0 = qword_100287880;
}

uint64_t sub_100168544(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return sub_100006E7C(a1, v1);
}

uint64_t sub_10016855C()
{
  v1 = v0[9];
  swift_beginAccess();

  v3 = sub_10016848C(v2, v1);

  swift_beginAccess();

  sub_1001926F4(v4);
  swift_endAccess();
  if (qword_1002687A0 != -1)
  {
    sub_100005534(&qword_1002687A0);
  }

  v5 = v0[10];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F70;
  v0[5] = type metadata accessor for MercuryCacheUpdateStateManager();
  v0[2] = v5;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 2);
  sub_10000C158();
  v17 = v9;

  v10 = Set.description.getter();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v0[5] = &type metadata for String;
  v0[2] = v17;
  v0[3] = 0xEA0000000000203ALL;
  static LogInterpolation.safe(_:)();
  sub_100002C5C((v0 + 2));
  v14 = static os_log_type_t.info.getter();
  sub_1000036B0(v14, v6);

  v15 = v0[1];

  return v15(v3);
}

uint64_t sub_1001687FC(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return sub_100006E7C(a1, v1);
}

uint64_t sub_100168814()
{
  if (qword_1002687A0 != -1)
  {
    sub_100005534(&qword_1002687A0);
  }

  v1 = v0[7];
  v44 = qword_10026F1B0;
  v2 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 80);
  v46 = *(v3 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F70;
  updated = type metadata accessor for MercuryCacheUpdateStateManager();
  v0[5] = updated;
  v0[2] = v1;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = v0[6];
  v10 = v0[7];
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 2);
  v11._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v11);

  sub_100003410(v12, v13, v14, v15, v16, v17, v18, v19, 2, 4, ((v4 + 32) & ~v4) + 2 * v46, v2, (v4 + 32) & ~v4, v44, v46, 0x676E69766F6D6572, 0xEA0000000000203ALL);
  static LogInterpolation.safe(_:)();
  sub_100002C5C((v0 + 2));
  v20 = static os_log_type_t.info.getter();
  sub_1000036B0(v20, v5);

  swift_beginAccess();
  sub_100193F5C(v9);
  swift_endAccess();
  v21 = swift_allocObject();
  *(v21 + 16) = v40;
  v0[5] = updated;
  v0[2] = v10;

  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 2);
  sub_10000C158();
  v48 = v24;

  v25 = Set.description.getter();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  sub_100003410(v29, v30, v31, v32, v33, v34, v35, v36, v40, *(&v40 + 1), v41, v42, v43, v45, v47, v48, 0xEA0000000000203ALL);
  static LogInterpolation.safe(_:)();
  sub_100002C5C((v0 + 2));
  v37 = static os_log_type_t.info.getter();
  sub_1000036B0(v37, v21);

  v38 = v0[1];

  return v38();
}

void *sub_100168BAC(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v22 = (v5[6] + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              __chkstk_darwin(v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = v5[2];
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v34 = Hasher._finalize()();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (v5[6] + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_100169730(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_10006E500(v41, v44, v5 + 7, v44, v5, v7, v52);

            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_10004EB70(v14);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

void *sub_100169084(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v50 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v52 = v12;
    v53 = v7;
    v54 = v14;
    if (v11)
    {
LABEL_6:
      v16 = v15;
LABEL_11:
      sub_10000BAEC();
      v20 = (*(v18 + 48) + ((v16 << 10) | (16 * v19)));
      v22 = *v20;
      v21 = v20[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v23 = Hasher._finalize()();
      v24 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v7 = v23 & v24;
        v4 = (v23 & v24) >> 6;
        v8 = 1 << (v23 & v24);
        if ((v8 & v13[v4]) == 0)
        {

          v15 = v16;
          goto LABEL_6;
        }

        v25 = (v5[6] + 16 * v7);
        v26 = *v25 == v22 && v25[1] == v21;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v23 = v7 + 1;
      }

      v56 = v50;
      v57 = v16;
      v58 = v11;
      v3 = v53;
      v12 = v54;
      v55[0] = v54;
      v55[1] = v53;

      v28 = *(v5 + 32);
      v47 = ((1 << v28) + 63) >> 6;
      v2 = 8 * v47;
      if ((v28 & 0x3Fu) > 0xD)
      {
        goto LABEL_48;
      }

      while (1)
      {
        v48 = &v46;
        __chkstk_darwin(v27);
        v7 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v7, v5 + 7, v2);
        v29 = *(v7 + 8 * v4) & ~v8;
        v30 = v5[2];
        v51 = v7;
        *(v7 + 8 * v4) = v29;
        v31 = v30 - 1;
        v32 = v52;
        while (1)
        {
          v49 = v31;
LABEL_23:
          if (!v11)
          {
            break;
          }

LABEL_28:
          sub_10000BAEC();
          v35 = (*(v12 + 48) + ((v16 << 10) | (16 * v34)));
          v2 = *v35;
          v36 = v35[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v37 = Hasher._finalize()();
          v38 = ~(-1 << *(v5 + 32));
          do
          {
            v4 = v37 & v38;
            v7 = (v37 & v38) >> 6;
            v8 = 1 << (v37 & v38);
            if ((v8 & v13[v7]) == 0)
            {

              v3 = v53;
              v12 = v54;
              v32 = v52;
              goto LABEL_23;
            }

            v39 = (v5[6] + 16 * v4);
            if (*v39 == v2 && v39[1] == v36)
            {
              break;
            }

            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v37 = v4 + 1;
          }

          while ((v41 & 1) == 0);

          v42 = v51[v7];
          v51[v7] = v42 & ~v8;
          v3 = v53;
          v12 = v54;
          v32 = v52;
          if ((v42 & v8) == 0)
          {
            goto LABEL_23;
          }

          v31 = v49 - 1;
          if (__OFSUB__(v49, 1))
          {
            __break(1u);
          }

          if (v49 == 1)
          {

            v5 = &_swiftEmptySetSingleton;
            goto LABEL_42;
          }
        }

        while (1)
        {
          v33 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v33 >= v32)
          {
            v5 = sub_100169730(v51, v47, v49, v5);
            goto LABEL_42;
          }

          v11 = *(v3 + 8 * v33);
          ++v16;
          if (v11)
          {
            v16 = v33;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v44 = swift_slowAlloc();
      v45 = sub_10006E500(v44, v47, v5 + 7, v47, v5, v7, v55);

      v12 = v55[0];
      v50 = v56;
      v5 = v45;
LABEL_42:
      v14 = v12;
    }

    else
    {
      v17 = 0;
      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_47;
        }

        if (v16 >= v12)
        {
          break;
        }

        v11 = *(v7 + 8 * v16);
        ++v17;
        if (v11)
        {
          goto LABEL_11;
        }
      }
    }

    sub_10004EB70(v14);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

unint64_t *sub_100169544(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_100169730(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

Swift::Int sub_100169730(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_10007B9A4(&qword_10026F288, &qword_1001EEB98);
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10016994C()
{
  sub_100004768();
  *(v1 + 161) = v2;
  *(v1 + 168) = v3;
  *(v1 + 176) = v0;
  *(v1 + 184) = type metadata accessor for MercuryCacheDataUpdateHandler(0);
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  v4 = type metadata accessor for MercuryCacheMetadata(0);
  sub_100002CFC(v4);
  *(v1 + 208) = v5;
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  type metadata accessor for MercuryCacheUpdateInput(0);
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v1 + 248) = v6;
  sub_100002CFC(v6);
  *(v1 + 256) = v7;
  *(v1 + 264) = swift_task_alloc();
  v8 = sub_1000033A0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100169ACC()
{
  v1 = sub_10016B99C();
  *(v0 + 272) = v1;
  if (v1)
  {
    v2 = v1;
    if ([v1 isActive])
    {
      v3 = *(v0 + 176);
      v4 = *v3;
      *(v0 + 280) = *v3;
      *(v0 + 288) = v3[1];
      v5 = v3[17];
      *(v0 + 296) = v5;
      v6 = v3[18];
      *(v0 + 304) = v6;
      LODWORD(v3) = *(v3 + 152);
      *(v0 + 162) = v3;
      if (v3)
      {
        v7 = v6;
      }

      else
      {
        v7 = v5;
      }

      v8 = v7;

      return _swift_task_switch(sub_100169C74, v4, 0);
    }

    sub_10016BA2C();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    sub_10016BA2C();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }

  sub_100005A1C();

  sub_100002D8C();

  return v11();
}

uint64_t sub_100169C74()
{
  sub_100004768();
  sub_1000065E8();
  if (v3)
  {
    v4 = v1;
  }

  else
  {
    v4 = v2;
  }

  v5 = *v4;
  *(v0 + 312) = sub_10015C384(*v4);

  v6 = sub_1000033A0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100169CEC()
{
  sub_100004768();
  v1 = *(*(v0 + 176) + 56);
  *(v0 + 320) = v1;

  swift_unknownObjectRetain();
  static Date.now.getter();
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_100169DB4;
  v3 = *(v0 + 312);
  v4 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 168);
  v7 = *(v0 + 161);

  return sub_100163AB8(v5, v4, v1, v3, v6, v7);
}

uint64_t sub_100169DB4()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v3 = v2;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  *(v6 + 336) = v0;

  if (v0)
  {
    v7 = sub_10016B2EC;
  }

  else
  {
    v7 = sub_100169EB4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100169EB4()
{
  sub_1000061B4();
  v1 = v0[30];
  sub_100003CA8((v0[22] + 96), *(v0[22] + 120));
  v2 = *v1;

  v4 = sub_1001C1D1C(v3, v2);

  v0[43] = sub_1001C1D1C(v5, v4);
  v6 = swift_task_alloc();
  v0[44] = v6;
  *v6 = v0;
  v7 = sub_100004AAC(v6);

  return sub_100168544(v7);
}

uint64_t sub_100169F94()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;
  *(v6 + 360) = v5;

  v7 = sub_1000033A0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10016A098()
{
  v1 = *(v0 + 232);
  sub_1001644EC(v1);

  v69 = v1[3];
  if (qword_1002687A8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v2 = *(v0 + 176);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E5F60;
  *(v0 + 40) = &type metadata for MercuryCacheUpdateTask;
  v5 = swift_allocObject();
  *(v0 + 16) = v5;
  sub_10016BAD8(v2, v5 + 16);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = *(v0 + 162);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  v11 = *(v0 + 232);
  v63 = *(v0 + 168);
  v65 = *(v0 + 336);
  v61 = *(v0 + 161);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 16));
  *(v0 + 72) = &unk_10024F780;
  *(v0 + 48) = v9;
  *(v0 + 56) = v10;
  *(v0 + 64) = v8;
  sub_10016BB10(v9, v10, v8);
  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v0 + 48);
  _StringGuts.grow(_:)(35);
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;
  v12._object = 0x80000001001FEFE0;
  v12._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v12);
  v13 = *v11;
  *(v0 + 368) = *v11;
  v14 = v11[1];
  *(v0 + 376) = v14;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v15 = sub_1001C1D1C(v14, v13);
  v16 = v11[2];
  *(v0 + 384) = v16;
  swift_bridgeObjectRetain_n();
  sub_1001C1D1C(v16, v15);
  v17 = Set.description.getter();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x646F6D20726F6620;
  v21._object = 0xEB00000000203A65;
  String.append(_:)(v21);
  *(v0 + 152) = v63;
  *(v0 + 160) = v61;
  _print_unlocked<A, B>(_:_:)();
  v22 = *(v0 + 136);
  v23 = *(v0 + 144);
  *(v0 + 104) = &type metadata for String;
  *(v0 + 80) = v22;
  *(v0 + 88) = v23;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 80);
  v24 = static os_log_type_t.info.getter();
  sub_1000036B0(v24, v4);

  v25 = sub_1001C1D1C(v14, v13);
  v26 = sub_1001C1D1C(v16, v25);
  sub_10016BB4C(v26, v61, v26);
  if (v65)
  {
    v27 = *(v0 + 272);
    v29 = *(v0 + 248);
    v28 = *(v0 + 256);
    v30 = *(v0 + 240);
    v67 = *(v0 + 264);
    v70 = *(v0 + 232);

    swift_unknownObjectRelease();

    sub_100006EE8();
    sub_10016BC50(v30, v31);
    (*(v28 + 8))(v67, v29);
    sub_10016BC50(v70, v26);

    sub_100002D8C();
    sub_100012AFC();

    __asm { BRAA            X1, X16 }
  }

  v34 = v69;
  v68 = *(v69 + 16);
  if (!v68)
  {
LABEL_20:
    *(v0 + 392) = _swiftEmptyDictionarySingleton;
    v56 = swift_task_alloc();
    *(v0 + 400) = v56;
    *v56 = v0;
    v56[1] = sub_10016A78C;
    sub_100012AFC();

    return sub_10014C558(v57);
  }

  v35 = 0;
  v64 = *(v0 + 208);
  v66 = *(v0 + 224);
  v62 = v69 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
  while (1)
  {
    if (v35 >= *(v34 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v37 = *(v0 + 216);
    v36 = *(v0 + 224);
    v38 = *(v64 + 72);
    sub_10016BBE8(v62 + v38 * v35, v36, type metadata accessor for MercuryCacheMetadata);
    v39 = *v36;
    v40 = *(v66 + 8);
    sub_10016BBE8(v36, v37, type metadata accessor for MercuryCacheMetadata);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = sub_100012A94();
    v44 = _swiftEmptyDictionarySingleton[2];
    v45 = (v43 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_27;
    }

    v47 = v42;
    v48 = v43;
    sub_10007B9A4(&qword_10026EBA0, &qword_1001EE4F8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v46))
    {
      break;
    }

LABEL_15:
    v51 = *(v0 + 216);
    if (v48)
    {
      sub_10015DD5C(v51, _swiftEmptyDictionarySingleton[7] + v47 * v38);
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v47 >> 6) + 8] |= 1 << v47;
      v52 = (_swiftEmptyDictionarySingleton[6] + 16 * v47);
      *v52 = v39;
      v52[1] = v40;
      sub_10015DCF8(v51, _swiftEmptyDictionarySingleton[7] + v47 * v38);
      v53 = _swiftEmptyDictionarySingleton[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_28;
      }

      _swiftEmptyDictionarySingleton[2] = v55;
    }

    ++v35;
    sub_10016BC50(*(v0 + 224), type metadata accessor for MercuryCacheMetadata);
    v34 = v69;
    if (v68 == v35)
    {
      goto LABEL_20;
    }
  }

  v49 = sub_100012A94();
  if ((v48 & 1) == (v50 & 1))
  {
    v47 = v49;
    goto LABEL_15;
  }

  sub_100012AFC();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_10016A78C()
{
  sub_1000061B4();
  v1 = *v0;
  v2 = *v0;
  sub_100002D20();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;
  *(v2 + 408) = v5;

  v6 = swift_task_alloc();
  *(v2 + 416) = v6;
  *v6 = v4;
  v6[1] = sub_10016A8C8;
  v7 = *(v1 + 320);

  return sub_10014BDEC(v7);
}

uint64_t sub_10016A8C8()
{
  sub_1000061B4();
  v1 = *v0;
  v2 = *v0;
  sub_100002D20();
  *v3 = v2;
  v4 = *v0;
  sub_100002D98();
  *v5 = v4;
  *(v2 + 424) = v6;

  v7 = swift_task_alloc();
  *(v2 + 432) = v7;
  *v7 = v4;
  v7[1] = sub_10016AA08;
  v8 = *(v1 + 320);

  return sub_10014C1A8(v8);
}

uint64_t sub_10016AA08()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;
  *(v5 + 440) = v6;

  v7 = sub_1000033A0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10016AAEC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 368);
  v3 = *(v0 + 272);
  v4 = *(v0 + 176);
  v6 = *(v4 + 80);
  v5 = *(v4 + 88);

  v7 = sub_1001C1D1C(v1, v2);

  v9 = sub_1001C1D1C(v8, v7);
  *(v0 + 448) = v9;
  v15 = (*(v5 + 8) + **(v5 + 8));
  v10 = swift_task_alloc();
  *(v0 + 456) = v10;
  *v10 = v0;
  v10[1] = sub_10016AC6C;
  v11 = *(v0 + 320);
  v12 = *(v0 + 168);
  v13 = *(v0 + 161);

  return v15(v3, v11, v9, v12, v13, v6, v5);
}

uint64_t sub_10016AC6C()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v3[14] = v1;
  v3[15] = v5;
  v3[16] = v0;
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  v3[58] = v0;

  if (v0)
  {
    v8 = sub_10016B3CC;
  }

  else
  {

    v8 = sub_10016AD7C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10016AD7C()
{
  sub_1000061B4();
  sub_10000ACA0();

  v1 = sub_100004CBC();
  v3 = sub_1001C1D1C(v1, v2);

  *(v0 + 472) = sub_1001C1D1C(v4, v3);
  v5 = swift_task_alloc();
  *(v0 + 480) = v5;
  *v5 = v0;
  v6 = sub_100004AAC(v5);

  return sub_1001687FC(v6);
}

uint64_t sub_10016AE3C()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  v3 = sub_1000033A0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10016AF3C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 440);
  v20 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 392);
  sub_1000065E8();
  v7 = *(v0 + 232);
  v8 = *(v0 + 200);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  if (v11)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  v13 = *v12;
  *(v0 + 488) = v1;
  v14 = v9[6];
  v15 = v13;
  v19 = *(v0 + 280);
  sub_100007C8C();
  sub_10016BBE8(v7, v8 + v14, v16);
  static Date.now.getter();
  sub_1000262E4(v10 + 16, v8 + v9[11]);
  *v8 = v15;
  v8[1] = v4;
  *(v8 + v9[7]) = v3;
  *(v8 + v9[8]) = v20;
  *(v8 + v9[10]) = v2;
  *(v8 + v9[12]) = v19;
  swift_unknownObjectRetain();
  v17 = swift_task_alloc();
  *(v0 + 496) = v17;
  *v17 = v0;
  v17[1] = sub_10016B0AC;

  return sub_100155534();
}

uint64_t sub_10016B0AC()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 200);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  sub_10000C16C();
  sub_10016BC50(v2, v5);
  v6 = sub_1000033A0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10016B1CC()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[21];
  swift_unknownObjectRelease();

  sub_100006EE8();
  sub_10016BC50(v5, v8);
  (*(v4 + 8))(v2, v3);
  sub_10016BC50(v6, v7);

  sub_100002D8C();

  return v9();
}

uint64_t sub_10016B2EC()
{
  v1 = *(v0 + 272);
  swift_unknownObjectRelease();

  v2 = sub_100004CBC();
  v3(v2);
  sub_100005A1C();

  sub_100002D8C();

  return v4();
}

uint64_t sub_10016B3CC()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 392);
  sub_1000065E8();
  v7 = *(v0 + 232);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 176);
  if (v11)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  v13 = *v12;
  v20 = *(v0 + 280);

  v14 = _convertErrorToNSError(_:)();
  sub_10016BBB0();

  v15 = v9[6];
  v16 = v13;
  sub_100007C8C();
  sub_10016BBE8(v7, v8 + v15, v17);
  static Date.now.getter();
  sub_1000262E4(v10 + 16, v8 + v9[11]);
  *v8 = v16;
  v8[1] = v4;
  *(v8 + v9[7]) = v3;
  *(v8 + v9[8]) = v2;
  *(v8 + v9[10]) = v1;
  *(v8 + v9[12]) = v20;
  swift_unknownObjectRetain();
  v18 = swift_task_alloc();
  *(v0 + 504) = v18;
  *v18 = v0;
  v18[1] = sub_10016B558;

  return sub_100155C50();
}

uint64_t sub_10016B558()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 192);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  sub_10000C16C();
  sub_10016BC50(v2, v5);
  v6 = sub_1000033A0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10016B65C()
{
  sub_1000061B4();
  sub_10000ACA0();

  v1 = sub_100004CBC();
  v3 = sub_1001C1D1C(v1, v2);

  *(v0 + 512) = sub_1001C1D1C(v4, v3);
  v5 = swift_task_alloc();
  *(v0 + 520) = v5;
  *v5 = v0;
  v6 = sub_100004AAC(v5);

  return sub_1001687FC(v6);
}

uint64_t sub_10016B71C()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  v3 = sub_1000033A0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10016B81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[40];
  v5 = v3[33];
  v6 = v3[34];
  v7 = v3[31];
  v8 = v3[32];
  v9 = v3[30];
  v13 = v3[29];
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_100006EE8();
  sub_10016BC50(v9, v10);
  (*(v8 + 8))(v5, v7);
  sub_10016BC50(v13, v4);
  sub_100005A1C();

  sub_100002D8C();

  return v11();
}

uint64_t sub_10016B938()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026F290 = qword_100287880;
}

void *sub_10016B99C()
{
  v1 = *(v0 + 136);
  if (*(v0 + 152))
  {
    v2 = v1;
    return v1;
  }

  else
  {
    v4 = (*(*(v0 + 72) + 8))([v1 integerValue], *(v0 + 64), *(v0 + 72));
    v5 = sub_100004CBC();
    sub_10016BA80(v5, v6, 0);
    return v4;
  }
}

unint64_t sub_10016BA2C()
{
  result = qword_10026F298;
  if (!qword_10026F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F298);
  }

  return result;
}

void sub_10016BA80(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

id sub_10016BB10(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

void sub_10016BB4C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (!*(a3 + 16))
    {
      sub_10016BA2C();
      swift_allocError();
      *v3 = 4;
      swift_willThrow();
    }
  }
}

uint64_t sub_10016BBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016BC50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MercuryCacheUpdateTask.UpdateError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10016BD94(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10016BDD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10016BE50()
{
  result = qword_10026F2A0;
  if (!qword_10026F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F2A0);
  }

  return result;
}

void sub_10016BEA4(uint64_t a1)
{
  v3 = [objc_allocWithZone(AMSEngagementPushEvent) init];
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001E61B0;
  *(v2 + 32) = a1;

  sub_1000F4BC0(v2, v3);
  type metadata accessor for MessageEventNotifier();
  sub_10016BF94(v3);
}

uint64_t sub_10016BF94(uint64_t a1)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v1 = swift_allocObject();
  v23 = xmmword_1001E5F70;
  *(v1 + 16) = xmmword_1001E5F70;
  v2 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for MessageEventNotifier();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v3 = static os_log_type_t.debug.getter();
    sub_1000036B0(v3, v1);

    if (qword_100268608 != -1)
    {
      swift_once();
    }

    sub_10009D914();
    if (!*(v4 + 16))
    {
      break;
    }

    v1 = v4 + 64;
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;
    v22 = v4;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_13:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v10 << 6);
      LODWORD(v23) = *(*(v22 + 48) + 4 * v12);
      v13 = *(*(v22 + 56) + 8 * v12);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1001E6580;
      swift_unknownObjectRetain();
      v15 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v25 = &type metadata for Int32;
      v24[0] = v23;
      static LogInterpolation.safe(_:)();
      sub_100002C5C(v24);
      LogInterpolation.init(stringLiteral:)();
      v16 = static os_log_type_t.debug.getter();
      sub_1000036B0(v16, v14);

      [v13 handlePushedEvent:a1];
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v1 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  v19 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v20 = static os_log_type_t.default.getter();
  sub_1000036B0(v20, v18);
}

BOOL sub_10016C470()
{
  v0 = type metadata accessor for Date();
  sub_100002CC4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000056E8();
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_10016C978();
  sub_10016C588();
  Date.addingTimeInterval(_:)();
  v7 = *(v2 + 8);
  v8 = sub_100003B80();
  v7(v8);
  Date.timeIntervalSinceNow.getter();
  (v7)(v6, v0);
  return (Double.sign.getter() & 1) == 0;
}

double sub_10016C588()
{
  v1 = v0;
  sub_100004810();
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_10003AF3C();
  v5 = [v3 v4];

  v6 = [v5 valuePromise];
  v20[0] = 0;
  v7 = [v6 resultWithError:v20];

  if (v7)
  {
    v8 = v20[0];
    [v7 doubleValue];
    v10 = v9;

    v5 = v7;
  }

  else
  {
    v11 = v20[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100268700 != -1)
    {
      sub_100006F00(&qword_100268700);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_10000A610();
    v12 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v12);
    sub_1000056F8();
    v13 = sub_100003BB4();
    *(v13 + 16) = xmmword_1001E5F60;
    v21 = type metadata accessor for MetricsIdentifierCloudDataController();
    v20[0] = v1;

    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v20);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v21 = v19;
    sub_100017E64(v20);
    sub_1000047A4();
    (*(v16 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v20, &qword_10026D350, &qword_1001E6050);
    v17 = static os_log_type_t.debug.getter();
    sub_1000036B0(v17, v13);

    v10 = 21600.0;
  }

  return v10;
}

uint64_t sub_10016C8A0(uint64_t a1)
{
  Date.timeIntervalSince1970.getter();
  v1 = [objc_opt_self() standardUserDefaults];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v3];

  type metadata accessor for Date();
  sub_1000047A4();
  v4 = sub_100003E78();

  return v5(v4);
}

uint64_t sub_10016C978()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 doubleForKey:v1];
  v3 = v2;

  v4.n128_u64[0] = v3;

  return Date.init(timeIntervalSince1970:)(v4);
}

void sub_10016CA10()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v6 = sub_10016D2A4();
  v8 = v7;
  if (!v1)
  {
    if (!v7)
    {
LABEL_35:
      sub_100005F14();
      return;
    }

    if (qword_100268700 != -1)
    {
      sub_100006F00(&qword_100268700);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v11 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v11);
    sub_1000056F8();
    v12 = sub_100004968();
    *(v12 + 16) = xmmword_1001E5F70;
    v13 = type metadata accessor for MetricsIdentifierCloudDataController();
    sub_10000727C(v13);
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100015A00();
    }

    else
    {
      sub_10000A640();
    }

    sub_10005AE20();

    sub_100002C00(v39);
    LogInterpolation.init(stringLiteral:)();
    v24 = static os_log_type_t.info.getter();
    sub_1000036B0(v24, v12);

LABEL_24:

    if (qword_100268700 != -1)
    {
      sub_100006F00(&qword_100268700);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v25 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v25);
    sub_1000056F8();
    v26 = sub_100004968();
    *(v26 + 16) = xmmword_1001E5F70;
    v27 = type metadata accessor for MetricsIdentifierCloudDataController();
    sub_10000727C(v27);
    v28 = AMSLogKey();
    if (v28)
    {
      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100015A00();
    }

    else
    {
      sub_10000A640();
    }

    sub_10005AE20();

    sub_100002C00(v39);
    LogInterpolation.init(stringLiteral:)();
    v30 = static os_log_type_t.info.getter();
    sub_1000036B0(v30, v26);

    v31 = sub_10016CFC0();
    v33 = [sub_1000437F4(v31 v32)];
    swift_unknownObjectRelease();
    if (qword_1002687C0 != -1)
    {
      sub_100003424(&qword_1002687C0);
    }

    [v33 persistChangedRecordsChangeToken:0 forRecordZoneIdentifier:{qword_10026F3F8, v38}];
    swift_unknownObjectRelease();
LABEL_32:
    v34 = [objc_opt_self() standardUserDefaults];
    if (v1)
    {
      String._bridgeToObjectiveC()();
    }

    v35 = String._bridgeToObjectiveC()();
    v36 = sub_100061E90();
    [v36 v37];

    swift_unknownObjectRelease();
    sub_10016D34C(0);
    goto LABEL_35;
  }

  if (!v7 || (v6 == v3 ? (v9 = v7 == v1) : (v9 = 0), !v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (qword_100268700 != -1)
    {
      sub_100006F00(&qword_100268700);
    }

    v38 = v3;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v16 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v16);
    sub_1000056F8();
    v17 = sub_100004968();
    *(v17 + 16) = xmmword_1001E5F70;
    v18 = type metadata accessor for MetricsIdentifierCloudDataController();
    sub_10000727C(v18);
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v39);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._countAndFlagsBits = 0xD000000000000038;
    v21._object = 0x80000001001FFE30;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    v39[3] = &type metadata for String;
    v39[0] = v3;
    v39[1] = v1;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v39, &qword_10026D350, &qword_1001E6050);
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    LogInterpolation.init(stringInterpolation:)();
    v23 = static os_log_type_t.info.getter();
    sub_1000036B0(v23, v17);

    if (!v8)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  sub_100005F14();
}

uint64_t sub_10016CFC0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v30 - v5;
  v7 = [objc_opt_self() defaultManager];
  sub_1001CCA58();
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v34 = 0;
  v33 = v7;
  v11 = [v7 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:1 error:&v34];

  v12 = v34;
  if (v11)
  {
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;

    v15 = *(v13 + 16);
    if (v15)
    {
      v31 = v6;
      v32 = v1;
      v18 = *(v1 + 16);
      v17 = v1 + 16;
      v16 = v18;
      v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
      v30[1] = v13;
      v20 = v13 + v19;
      v21 = *(v17 + 56);
      do
      {
        v16(v4, v20, v0);
        URL._bridgeToObjectiveC()(v22);
        v24 = v23;
        v34 = 0;
        v25 = [v33 removeItemAtURL:v23 error:&v34];

        if (v25)
        {
          v26 = v34;
        }

        else
        {
          v27 = v34;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        (*(v17 - 8))(v4, v0);
        v20 += v21;
        --v15;
      }

      while (v15);

      v6 = v31;
      v1 = v32;
    }

    else
    {
    }
  }

  else
  {
    v28 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  [objc_opt_self() clearSyncState];

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_10016D2A4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10016D34C(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v4 = String._bridgeToObjectiveC()();
  [v2 setValue:isa forKey:v4];

  if ((a1 & 1) == 0)
  {

    sub_10016D47C();
  }
}

id sub_10016D408()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = sub_10003AF3C();
  v4 = [v2 v3];

  return v4;
}

void sub_10016D47C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

id sub_10016D51C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = sub_10003AF3C();
  v4 = [v2 v3];

  return v4;
}

uint64_t sub_10016D590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100177A3C();
  }

  return result;
}

uint64_t sub_10016D624(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (sub_10016C470())
    {
      if (qword_100268700 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1001E5F70;
      v8[3] = type metadata accessor for MetricsIdentifierCloudDataController();
      v8[0] = v3;

      v5 = AMSLogKey();
      if (v5)
      {
        v6 = v5;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v8);
      LogInterpolation.init(stringLiteral:)();
      v7 = static os_log_type_t.info.getter();
      sub_1000036B0(v7, v4);
    }

    else
    {

      sub_100177A3C();
    }
  }

  return result;
}

void sub_10016D838()
{
  sub_100003F74();
  sub_10016D8E8();
  if ((v0 & 1) == 0)
  {

    sub_100177A3C();
  }
}

void sub_10016D8E8()
{
  sub_100003D74();
  v1 = v0;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100002DEC();
  sub_10000C79C();
  if ((static DeviceDetails.deviceIsRunningInternalBuild()() & 1) != 0 && [objc_opt_self() autoSyncDisabledForMetricsIdentifierStore] && (v1 & 1) == 0)
  {
    if (qword_100268700 != -1)
    {
      sub_100006F00(&qword_100268700);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v4 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v4);
    sub_1000056F8();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1001E5F70;
    v6 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for MetricsIdentifierCloudDataController();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v7._countAndFlagsBits = 0x676E697070696B53;
    v7._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100006898();
    v8._countAndFlagsBits = 0xD000000000000018;
    v8._object = 0x80000001001FFD60;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100006898();
    sub_100004810();
    v9._countAndFlagsBits = 0xD000000000000016;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100006898();
    v10._countAndFlagsBits = 0x6C61756E616D202CLL;
    v10._object = 0xEF203A636E797320;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100006898();
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v11 = static os_log_type_t.default.getter();
    sub_1000036B0(v11, v5);
  }

  sub_100005F14();
}

id sub_10016DBC4(uint64_t a1)
{
  if (sub_10016C470())
  {
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1001E5F70;
    v15 = type metadata accessor for MetricsIdentifierCloudDataController();
    v14[0] = a1;

    v3 = AMSLogKey();
    if (v3)
    {
      v4 = v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v14);
    LogInterpolation.init(stringLiteral:)();
    v8 = static os_log_type_t.info.getter();
    sub_1000036B0(v8, v2);

    v9 = [objc_opt_self() promiseWithSuccess];

    return v9;
  }

  else
  {
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1001E5F70;
    v15 = type metadata accessor for MetricsIdentifierCloudDataController();
    v14[0] = a1;

    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v14);
    LogInterpolation.init(stringLiteral:)();
    v11 = static os_log_type_t.info.getter();
    sub_1000036B0(v11, v5);

    [objc_opt_self() cleanupIdentifiers];
    sub_100002BC0(0, &qword_10026F918, AMSBinaryPromise_ptr);
    sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001EED80;
    *(v12 + 32) = sub_100172EA0();
    sub_10016ED98();
    *(v12 + 40) = v13;
    return sub_10016DFA0();
  }
}

id sub_10016DFA0()
{
  sub_100002BC0(0, &qword_10026F918, AMSBinaryPromise_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() promiseWithFlattenedPromises:isa];

  return v1;
}

void sub_10016E024()
{
  sub_100003F74();
  sub_10016D8E8();
  if ((v0 & 1) == 0)
  {
    if (qword_100268700 != -1)
    {
      sub_100006F00(&qword_100268700);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_10000A610();
    v1 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v1);
    sub_1000056F8();
    v2 = sub_100003BB4();
    *(v2 + 16) = xmmword_1001E5F70;
    type metadata accessor for MetricsIdentifierCloudDataController();
    sub_100005D24();
    v3 = AMSLogKey();
    if (v3)
    {
      v4 = v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v8);
    LogInterpolation.init(stringLiteral:)();
    v5 = static os_log_type_t.debug.getter();
    sub_1000036B0(v5, v2);

    v6 = sub_100004CBC();
    sub_10007B9A4(v6, v7);
    sub_1000076B8(&qword_100269F80);
    Subject<>.send()();
  }
}

void sub_10016E220(char a1)
{
  sub_100003F74();
  sub_10016D8E8();
  if ((v3 & 1) == 0)
  {
    if (qword_100268700 != -1)
    {
      sub_100006F00(&qword_100268700);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v4 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v4);
    sub_1000056F8();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1001E5F70;
    type metadata accessor for MetricsIdentifierCloudDataController();
    sub_100005D24();
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v11);
    LogInterpolation.init(stringLiteral:)();
    v8 = static os_log_type_t.debug.getter();
    sub_1000036B0(v8, v5);

    *(v1 + 56) = a1 & 1;

    v9 = sub_100004CBC();
    sub_10007B9A4(v9, v10);
    sub_1000076B8(&qword_100269F80);
    Subject<>.send()();
  }
}

id sub_10016E440(void *a1, char a2)
{
  if (qword_1002687C0 != -1)
  {
    sub_100003424(&qword_1002687C0);
  }

  v5 = [qword_10026F3F8 name];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [a1 createRecordZoneWithRecordZoneName:v5];

  if (a2)
  {
    v7 = [objc_opt_self() promiseWithResult:v6];
    swift_unknownObjectRelease();
    return v7;
  }

  else
  {
    v9 = [a1 saveRecordZone:v6];
    sub_100002FB8();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    *(v10 + 24) = a1;
    v14[4] = sub_1001793B4;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1001794CC;
    v14[3] = &unk_100250780;
    v11 = _Block_copy(v14);

    swift_unknownObjectRetain();

    v12 = sub_100029420();
    [v12 v13];
    _Block_release(v11);
    swift_unknownObjectRelease();
    return v9;
  }
}

void sub_10016E610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  sub_10016D34C(1);
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F70;
  ObjectType = type metadata accessor for MetricsIdentifierCloudDataController();
  v12[0] = a2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001001FFD40;
  v9._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  ObjectType = swift_getObjectType();
  v12[0] = a1;
  swift_unknownObjectRetain();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v12, &qword_10026D350, &qword_1001E6050);
  v10._countAndFlagsBits = 46;
  v10._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  LogInterpolation.init(stringInterpolation:)();
  v11 = static os_log_type_t.info.getter();
  sub_1000036B0(v11, v6);

  sub_10016E884();
}

void sub_10016E884()
{
  v1 = v0;
  if (qword_1002687C0 != -1)
  {
    sub_100003424(&qword_1002687C0);
  }

  v2 = qword_10026F3F8;
  _StringGuts.grow(_:)(39);

  v3 = [v2 name];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x7069726373627553;
  v8._object = 0xEC0000006E6F6974;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();

  v10 = sub_100029420();
  v12 = [v10 v11];

  sub_100002FB8();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v2;
  v18[4] = sub_100179354;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100099934;
  v18[3] = &unk_100250730;
  v14 = _Block_copy(v18);
  v15 = v2;

  v16 = sub_100061E90();
  [v16 v17];
  _Block_release(v14);
}

void sub_10016EA88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  if (a2)
  {
    swift_errorRetain();
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001E5F70;
    v19 = type metadata accessor for MetricsIdentifierCloudDataController();
    v18[0] = a3;

    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v18);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._object = 0x80000001001FFCD0;
    v11._countAndFlagsBits = 0xD000000000000036;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
    v19 = sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
    v18[0] = a4;
    v12 = a4;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v18, &qword_10026D350, &qword_1001E6050);
    v13._countAndFlagsBits = 0x20726F72726520;
    v13._object = 0xE700000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    swift_getErrorValue();
    v19 = v17;
    v14 = sub_100017E64(v18);
    (*(*(v17 - 8) + 16))(v14);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v18, &qword_10026D350, &qword_1001E6050);
    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    LogInterpolation.init(stringInterpolation:)();
    v16 = static os_log_type_t.error.getter();
    sub_1000036B0(v16, v8);
  }

  else
  {
    sub_10016D47C();
  }
}

void sub_10016ED98()
{
  sub_100004988();
  v1 = v0;
  v58 = v2;
  sub_100003F74();
  v4 = v3;
  type metadata accessor for OSSignposter();
  sub_100002CC4();
  v56 = v6;
  v57 = v5;
  __chkstk_darwin(v5);
  sub_1000056E8();
  v60 = (v7 - v8);
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v12 = type metadata accessor for OSSignpostID();
  sub_100002CC4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000056E8();
  v55 = v16 - v17;
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100002DEC();
  sub_10000C79C();
  v25 = *(v0 + 128);
  *v0 = v25;
  (*(v23 + 104))(v0, enum case for DispatchPredicate.onQueue(_:), v21);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v27 = sub_100008FE8();
  v28(v27);
  if (v25)
  {
    v53 = v4;
    v59 = v12;
    if (qword_100268700 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100006F00(&qword_100268700);
LABEL_3:
  v54 = v14;
  v29 = qword_100287860;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v30 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v30);
  sub_1000056F8();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1001E5F70;
  v64 = type metadata accessor for MetricsIdentifierCloudDataController();
  v61 = v0;

  v32 = AMSLogKey();
  if (v32)
  {
    v33 = v32;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v61);
  LogInterpolation.init(stringLiteral:)();
  v34 = static os_log_type_t.info.getter();
  sub_1000036B0(v34, v31);

  v35 = *(v29 + 16);
  OSSignposter.init(logHandle:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v36 = v57;
  v37 = *(v56 + 8);
  v37(v11, v57);
  v38 = *(v29 + 16);
  OSSignposter.init(logHandle:)();
  v39 = OSSignposter.logHandle.getter();
  v40 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v41 = sub_1001794D8();
    *v41 = 0;
    v42 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v40, v42, "MetricsIdentifier", "Fetching changes from cloud", v41, 2u);
    sub_100058340(v41);
  }

  v43 = v54;
  (*(v54 + 16))(v55, v20, v59);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v44 = OSSignpostIntervalState.init(id:isOpen:)();
  v37(v60, v36);
  *(v0 + 80) = 0;
  sub_100171D04();
  v46 = v45;
  sub_100007A3C();
  v47 = swift_allocObject();
  v47[2] = v0;
  v47[3] = v44;
  v48 = v53;
  v47[4] = v53;
  v65 = sub_1001792E4;
  v66 = v47;
  v61 = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_1001794C8;
  v64 = &unk_100250578;
  v49 = _Block_copy(&v61);

  v50 = [v46 thenWithBlock:v49];
  _Block_release(v49);

  sub_100007A3C();
  v51 = swift_allocObject();
  v51[2] = v1;
  v51[3] = v44;
  v51[4] = v48;
  v65 = sub_1001792F0;
  v66 = v51;
  v61 = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_1000266E0;
  v64 = &unk_1002505C8;
  v52 = _Block_copy(&v61);

  [v50 addErrorBlock:v52];
  _Block_release(v52);
  [objc_opt_self() promiseWithPromise:v50];

  (*(v43 + 8))(v20, v59);
  sub_10000B16C();
}

id sub_10016F410(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1002687C0 != -1)
  {
    swift_once();
  }

  v8 = qword_10026F3F8;
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E8AB0;
  *(v9 + 32) = v8;
  v10 = v8;
  sub_10007B9A4(&qword_10026F938, &unk_1001EEEE0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [a1 fetchChangedRecordsInRecordZonesWithRecordZoneIdentifiers:isa];

  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = v10;
  v13[5] = a3;
  v13[6] = a4;
  v18[4] = sub_100179308;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1001794D4;
  v18[3] = &unk_100250640;
  v14 = _Block_copy(v18);
  v15 = v10;

  swift_unknownObjectRetain();

  v16 = [v12 continueWithBlock:v14];
  _Block_release(v14);

  return v16;
}

id sub_10016F608(void *a1, void *a2, void **a3, void *a4, void *a5, uint64_t a6)
{
  v82 = a6;
  v84 = a4;
  v85 = a3;
  v9 = type metadata accessor for OSSignpostError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OSSignposter();
  __chkstk_darwin(v17);
  v83 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v63 = String._bridgeToObjectiveC()();
      v64 = String._bridgeToObjectiveC()();
      v22 = AMSError();
    }

    swift_errorRetain();
    sub_100170A94();
    v66 = v65;
    v67 = swift_allocObject();
    *(v67 + 16) = v22;
    v92 = sub_100179444;
    v93 = v67;
    aBlock = _NSConcreteStackBlock;
    v89 = 1107296256;
    v90 = sub_100170204;
    v91 = &unk_100250690;
    v68 = _Block_copy(&aBlock);
    swift_errorRetain();

    v47 = [v66 continueWithPromiseBlock:v68];
    _Block_release(v68);

    return v47;
  }

  v75 = v12;
  v76 = v10;
  v77 = v9;
  v78 = v18;
  v20 = a1;
  if (sub_100179114(v20, &selRef_changedRecords))
  {
    v87 = a5;
    sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
    sub_1000437B4(&qword_10026F940, &unk_10026F8C0, CKRecordZoneID_ptr);
    v21 = a5;
    AnyHashable.init<A>(_:)();
    sub_1000AE378();

    sub_10000E1E8(&aBlock);
  }

  v80 = v17;
  if (sub_100179114(v20, &selRef_deletedRecords))
  {
    v87 = a5;
    sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
    sub_1000437B4(&qword_10026F940, &unk_10026F8C0, CKRecordZoneID_ptr);
    v23 = a5;
    AnyHashable.init<A>(_:)();
    sub_1000AE378();

    sub_10000E1E8(&aBlock);
  }

  v79 = v16;
  v24 = sub_100179114(v20, &selRef_errors);
  v81 = v14;
  if (v24)
  {
    v25 = v24;
    v87 = a5;
    sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
    sub_1000437B4(&qword_10026F940, &unk_10026F8C0, CKRecordZoneID_ptr);
    v26 = a5;
    AnyHashable.init<A>(_:)();
    sub_1000AA8E0(&aBlock, v25);

    sub_10000E1E8(&aBlock);
  }

  sub_100176D5C();

  v27 = sub_100179114(v20, &selRef_changeTokens);
  if (v27)
  {
    v28 = v27;
    v73 = v13;
    v74 = v20;
    v29 = v27 + 64;
    v30 = 1 << *(v27 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v27 + 64);
    v13 = (v30 + 63) >> 6;

    v33 = 0;
    if (v32)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v13)
      {

        v20 = v74;
        v13 = v73;
        goto LABEL_23;
      }

      v32 = *(v29 + 8 * v34);
      ++v33;
      if (v32)
      {
        v33 = v34;
        do
        {
LABEL_18:
          v35 = __clz(__rbit64(v32)) | (v33 << 6);
          sub_10000DF68(*(v28 + 48) + 40 * v35, &aBlock);
          v36 = *(*(v28 + 56) + 8 * v35);
          v93 = v36;
          v86 = a5;
          v20 = sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
          sub_1000437B4(&qword_10026F940, &unk_10026F8C0, CKRecordZoneID_ptr);
          v37 = a5;
          swift_unknownObjectRetain();
          AnyHashable.init<A>(_:)();
          v38 = static AnyHashable.== infix(_:_:)();
          sub_10000E1E8(&v87);
          if (v38)
          {
            [v84 persistChangedRecordsChangeToken:v36 forRecordZoneIdentifier:v37];
          }

          v32 &= v32 - 1;
          sub_100009FB0(&aBlock, &qword_10026F948, &qword_1001EEEF0);
        }

        while (v32);
      }
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_23:
  v39 = sub_100179114(v20, &selRef_errors);
  if (v39)
  {
    v40 = v39;
    v87 = a5;
    sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
    sub_1000437B4(&qword_10026F940, &unk_10026F8C0, CKRecordZoneID_ptr);
    v41 = a5;
    AnyHashable.init<A>(_:)();
    v42 = sub_1000AA8E0(&aBlock, v40);

    sub_10000E1E8(&aBlock);
    if (v42)
    {
      sub_100170A94();
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = v42;
      v92 = sub_100179444;
      v93 = v45;
      aBlock = _NSConcreteStackBlock;
      v89 = 1107296256;
      v90 = sub_100170204;
      v91 = &unk_1002506E0;
      v46 = _Block_copy(&aBlock);
      swift_errorRetain();

      v47 = [v44 continueWithPromiseBlock:v46];
      _Block_release(v46);

      return v47;
    }
  }

  if (qword_100268700 != -1)
  {
LABEL_39:
    swift_once();
  }

  v48 = qword_100287860;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1001E5F70;
  v91 = type metadata accessor for MetricsIdentifierCloudDataController();
  aBlock = v85;

  v50 = AMSLogKey();
  v51 = v83;
  if (v50)
  {
    v52 = v50;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v53 = v80;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&aBlock);
  LogInterpolation.init(stringLiteral:)();
  v54 = static os_log_type_t.info.getter();
  sub_1000036B0(v54, v49);

  v55 = *(v48 + 16);
  OSSignposter.init(logHandle:)();
  v56 = OSSignposter.logHandle.getter();
  v57 = v79;
  OSSignpostIntervalState.signpostID.getter();
  v58 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v59 = v75;
    checkForErrorAndConsumeState(state:)();

    v60 = v76;
    v61 = v77;
    if ((*(v76 + 88))(v59, v77) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v62 = "[Error] Interval already ended";
    }

    else
    {
      (*(v60 + 8))(v59, v61);
      v62 = "Finished";
    }

    v70 = swift_slowAlloc();
    *v70 = 0;
    v71 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, v58, v71, "MetricsIdentifier", v62, v70, 2u);
  }

  (*(v81 + 8))(v57, v13);
  (*(v78 + 8))(v51, v53);
  v72 = [objc_opt_self() promiseWithResult:v20];

  return v72;
}

id sub_100170204(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v7 = v5(a2, a3);

  return v7;
}

uint64_t sub_100170284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v43 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for OSSignpostError();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OSSignposter();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  v13 = qword_100287860;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E5F70;
  v58 = type metadata accessor for MetricsIdentifierCloudDataController();
  aBlock[0] = a2;

  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(aBlock);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x80000001001FFBC0;
  v17._countAndFlagsBits = 0xD000000000000043;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  swift_getErrorValue();
  v18 = v61;
  v19 = v62;
  v58 = v62;
  v20 = sub_100017E64(aBlock);
  (*(*(v19 - 1) + 16))(v20, v18, v19);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(aBlock, &qword_10026D350, &qword_1001E6050);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  LogInterpolation.init(stringInterpolation:)();
  v22 = static os_log_type_t.error.getter();
  sub_1000036B0(v22, v14);

  v23 = *(v13 + 16);
  OSSignposter.init(logHandle:)();
  v24 = OSSignposter.logHandle.getter();
  v25 = v45;
  OSSignpostIntervalState.signpostID.getter();
  v26 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v27 = v40;
    checkForErrorAndConsumeState(state:)();

    v28 = v41;
    v29 = v42;
    if ((*(v41 + 88))(v27, v42) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v30 = "[Error] Interval already ended";
    }

    else
    {
      (*(v28 + 8))(v27, v29);
      v30 = "Failed";
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, v26, v32, "MetricsIdentifier", v30, v31, 2u);
  }

  (*(v47 + 8))(v25, v48);
  (*(v44 + 8))(v11, v46);
  v33 = *(a2 + 128);
  v59 = sub_1001792FC;
  v60 = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  v58 = &unk_1002505F0;
  v34 = _Block_copy(aBlock);

  v35 = v33;
  v36 = v50;
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_100013B44(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004F4C0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  v37 = v52;
  v38 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v54 + 8))(v37, v38);
  (*(v51 + 8))(v36, v53);
}

void sub_100170A94()
{
  sub_100004988();
  v2 = v0;
  v4 = v3;
  v5 = *v0;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  __chkstk_darwin(v7);
  sub_100002DEC();
  v8 = _convertErrorToNSError(_:)();
  v9 = sub_1001714BC(26);
  v69 = v8;
  if (v9 || (v9 = sub_1001714BC(28)) != 0)
  {

    sub_100002FB8();
    v10 = swift_allocObject();
    sub_10000E728(v10);
    goto LABEL_4;
  }

  v21 = sub_1001714BC(112);
  v22 = v21;
  v23 = v21 != 0;
  if (v21)
  {
  }

  v24 = sub_1001714BC(2);
  if (!v24)
  {
    sub_100002FB8();
    v39 = swift_allocObject();
    sub_10000E728(v39);
    v40 = sub_1001792C4;
    if (!v22)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  v25 = v24;
  type metadata accessor for CKError(0);
  sub_100019D50();
  sub_100013B44(v26, v27);
  v28 = _BridgedStoredNSError.userInfo.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100052D94(v28, &v71);

  if (!v73)
  {

    sub_100009FB0(&v71, &qword_10026D350, &qword_1001E6050);
    sub_100002FB8();
    v41 = swift_allocObject();
    sub_10000E728(v41);
    v40 = sub_100179448;
    if (!v22)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  sub_10007B9A4(&qword_10026F8E8, &qword_1001EEEA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100002FB8();
    v42 = swift_allocObject();
    sub_10000E728(v42);
    v40 = sub_100179448;
    if (!v22)
    {
      goto LABEL_47;
    }

LABEL_37:
    v66 = v40;
LABEL_38:
    v67 = v4;
    v68 = v1;
    v43 = qword_100268700;

    if (v43 != -1)
    {
LABEL_49:
      sub_100006F00(&qword_100268700);
    }

    v44 = qword_100287860;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v45 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v45);
    sub_1000056F8();
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1001E5F70;
    v73 = type metadata accessor for MetricsIdentifierCloudDataController();
    *&v71 = v2;

    v47 = AMSLogKey();
    if (v47)
    {
      v48 = v47;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v71);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v49._object = 0x80000001001FFA50;
    v49._countAndFlagsBits = 0xD000000000000017;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
    v73 = sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
    *&v71 = v69;
    v50 = v69;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(&v71, &qword_10026D350, &qword_1001E6050);
    v51._countAndFlagsBits = 0xD000000000000052;
    v51._object = 0x80000001001FFA70;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v51);
    LogInterpolation.init(stringInterpolation:)();
    v52 = static os_log_type_t.error.getter();
    sub_1000036B0(v52, v46);

    sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
    sub_100007A3C();
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1001E8AB0;
    if (qword_1002687C0 != -1)
    {
      sub_100003424(&qword_1002687C0);
    }

    v54 = qword_10026F3F8;
    *(v53 + 32) = qword_10026F3F8;
    v55 = v54;
    sub_10007B9A4(&qword_10026F938, &unk_1001EEEE0);
    sub_100003E78();
    Array._bridgeToObjectiveC()();
    sub_100017FBC();

    v56 = [v67 deleteRecordZonesWithRecordZoneIdentifiers:v44];

    v74 = sub_1001792CC;
    v75 = v2;
    *&v71 = _NSConcreteStackBlock;
    *(&v71 + 1) = 1107296256;
    v72 = sub_100014380;
    v73 = &unk_100250410;
    v57 = _Block_copy(&v71);

    v58 = sub_1000167D8();
    v60 = [v58 v59];
    _Block_release(v57);

    sub_100002FB8();
    v61 = swift_allocObject();
    v61[2] = v66;
    v61[3] = v68;
    v74 = sub_1001792D4;
    v75 = v61;
    *&v71 = _NSConcreteStackBlock;
    *(&v71 + 1) = 1107296256;
    v72 = sub_1001794C8;
    v73 = &unk_100250460;
    v62 = _Block_copy(&v71);

    v63 = sub_10003AF3C();
    v17 = [v63 v64];
    _Block_release(v62);

    [objc_opt_self() promiseWithPromise:v17];
    goto LABEL_9;
  }

  v66 = v5;
  v67 = v4;
  sub_100004E5C();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;

  v34 = 0;
  LODWORD(v68) = 0;
  if (!v31)
  {
    goto LABEL_16;
  }

  do
  {
LABEL_20:
    v36 = __clz(__rbit64(v31)) | (v34 << 6);
    sub_10000DF68(*(v70 + 48) + 40 * v36, &v71);
    v75 = *(*(v70 + 56) + 8 * v36);
    v37 = v75;
    if ((v68 & 1) == 0)
    {
      v38 = sub_1001714BC(26);
      if (v38 || (v38 = sub_1001714BC(28)) != 0)
      {
        LODWORD(v68) = 1;
LABEL_28:

        goto LABEL_29;
      }
    }

    if (v23)
    {
      v23 = 1;
      goto LABEL_29;
    }

    v38 = sub_1001714BC(112);
    if (v38)
    {
      v23 = 1;
      goto LABEL_28;
    }

    v23 = 0;
LABEL_29:
    v31 &= v31 - 1;
    sub_100009FB0(&v71, &unk_10026F8F0, &unk_1001EEEA8);
  }

  while (v31);
  while (1)
  {
LABEL_16:
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v35 >= v33)
    {
      break;
    }

    v31 = *(v70 + 64 + 8 * v35);
    ++v34;
    if (v31)
    {
      v34 = v35;
      goto LABEL_20;
    }
  }

  sub_100002FB8();
  v1 = swift_allocObject();
  *(v1 + 16) = v2;
  *(v1 + 24) = v66;
  if (v23)
  {
    v66 = sub_100179448;
    goto LABEL_38;
  }

  if ((v68 & 1) == 0)
  {
LABEL_47:
    v65 = objc_opt_self();

    [v65 promiseWithSuccess];
    v17 = v69;
    goto LABEL_9;
  }

LABEL_4:
  v11 = qword_100268700;

  if (v11 != -1)
  {
    sub_100006F00(&qword_100268700);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v12 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v12);
  sub_1000056F8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001E5F70;
  v73 = type metadata accessor for MetricsIdentifierCloudDataController();
  *&v71 = v2;

  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v71);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0xD00000000000002FLL;
  v16._object = 0x80000001001FFAE0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  v73 = sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
  *&v71 = v69;
  v17 = v69;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v71, &qword_10026D350, &qword_1001E6050);
  v18._countAndFlagsBits = 0xD00000000000003FLL;
  v18._object = 0x80000001001FFB10;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  LogInterpolation.init(stringInterpolation:)();
  v19 = static os_log_type_t.error.getter();
  sub_1000036B0(v19, v13);

  v20 = sub_100004CBC();
  sub_1001715C4(v20);
  [objc_opt_self() promiseWithSuccess];
LABEL_9:

  sub_10000B16C();
}

id sub_1001714BC(uint64_t a1)
{
  if ([v1 ams_hasDomain:CKErrorDomain code:a1])
  {
    sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
    type metadata accessor for CKError(0);
    v3 = v1;
  }

  else
  {
    result = [v1 ams_underlyingErrorWithDomain:CKErrorDomain code:a1];
    if (!result)
    {
      return result;
    }

    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    type metadata accessor for CKError(0);
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001715C4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016D34C(0);
  v8 = sub_10016CFC0();
  v10 = [sub_1000437F4(v8 v9)];
  swift_unknownObjectRelease();
  [v10 persistChangedRecordZonesChangeToken:0];
  swift_unknownObjectRelease();
  v11 = [*(a1 + 48) privateDatabase];
  if (qword_1002687C0 != -1)
  {
    swift_once();
  }

  [v11 persistChangedRecordsChangeToken:0 forRecordZoneIdentifier:qword_10026F3F8];
  swift_unknownObjectRelease();
  v12 = *(a1 + 128);
  aBlock[4] = sub_1001792DC;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100250528;
  v13 = _Block_copy(aBlock);
  v14 = v12;

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100013B44(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004F4C0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v17);
}

void sub_100171954(uint64_t a1)
{
  v1 = *(a1 + 64);
  *(a1 + 64) = 0;

  sub_10016E024();
}

id sub_100171984(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E5F70;
  v16 = type metadata accessor for MetricsIdentifierCloudDataController();
  v15[0] = a2;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v15);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001001FFB50;
  v7._countAndFlagsBits = 0xD000000000000040;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v16 = v14;
  v8 = sub_100017E64(v15);
  (*(*(v14 - 8) + 16))(v8);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v15, &qword_10026D350, &qword_1001E6050);
  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  LogInterpolation.init(stringInterpolation:)();
  v10 = static os_log_type_t.error.getter();
  sub_1000036B0(v10, v4);

  v11 = _convertErrorToNSError(_:)();
  v12 = [objc_opt_self() promiseWithError:v11];

  return v12;
}

id sub_100171C4C(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = [objc_opt_self() promiseWithResult:a1];

  return v3;
}

void (*sub_100171CA8(uint64_t a1))(uint64_t)
{
  sub_10000A1D8(a1);
  v2 = swift_unknownObjectRetain();
  v1(v2);
  sub_100017FBC();

  swift_unknownObjectRelease();

  return v1;
}

void sub_100171D04()
{
  sub_100004988();
  v1 = v0;
  v56 = v2;
  v3 = type metadata accessor for OSSignposter();
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000056E8();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v55 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100002DEC();
  v19 = v18 - v17;
  v20 = *(v1 + 128);
  *(v18 - v17) = v20;
  (*(v15 + 104))(v18 - v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = *(v1 + 64);
  if (v22)
  {
    v23 = qword_100268700;
    v22;
    if (v23 == -1)
    {
LABEL_4:
      v24 = *(qword_100287860 + 16);
      OSSignposter.init(logHandle:)();
      v25 = OSSignposter.logHandle.getter();
      v26 = static os_signpost_type_t.event.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v27 = sub_1001794D8();
        *v27 = 0;
        v28 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v28, "MetricsIdentifier", "Re-using cloud database", v27, 2u);
        sub_100058340(v27);
      }

      (*(v5 + 8))(v12, v3);
      goto LABEL_12;
    }

LABEL_14:
    sub_100006F00(&qword_100268700);
    goto LABEL_4;
  }

  if (qword_100268700 != -1)
  {
    sub_100006F00(&qword_100268700);
  }

  v29 = *(qword_100287860 + 16);
  OSSignposter.init(logHandle:)();
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v32 = sub_1001794D8();
    *v32 = 0;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v33, "MetricsIdentifier", "Preparing database", v32, 2u);
    sub_100058340(v32);
  }

  (*(v5 + 8))(v9, v3);
  v34 = [objc_allocWithZone(AMSMutablePromise) init];
  v35 = *(v1 + 64);
  *(v1 + 64) = v34;
  v36 = v34;

  sub_100002FB8();
  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  *(v37 + 24) = v36;
  v61 = sub_10017923C;
  v62 = v37;
  v57 = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_1000266E0;
  v60 = &unk_100250280;
  v38 = _Block_copy(&v57);
  v39 = v36;

  v40 = sub_100029420();
  [v40 v41];
  _Block_release(v38);
  v44 = [sub_1000437F4(v42 v43)];
  swift_unknownObjectRelease();
  v45 = [*(v1 + 48) fetchUserRecordID];
  v46 = [*(v1 + 48) privateDatabase];
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1001EED80;
  *(v47 + 32) = v44;
  *(v47 + 40) = v45;
  v48 = v44;
  v49 = v45;
  sub_10007B9A4(&unk_10026F928, &unk_1001EEED0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v51 = [objc_opt_self() promiseWithAll:isa timeout:30.0];

  v52 = swift_allocObject();
  *(v52 + 16) = v56 & 1;
  *(v52 + 24) = v1;
  *(v52 + 32) = v39;
  *(v52 + 40) = v46;
  v61 = sub_100179244;
  v62 = v52;
  v57 = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_1001794D0;
  v60 = &unk_1002502D0;
  v53 = _Block_copy(&v57);
  v54 = v39;

  swift_unknownObjectRetain();

  [v51 addFinishBlock:v53];
  swift_unknownObjectRelease();

  _Block_release(v53);
LABEL_12:
  sub_10000B16C();
}

uint64_t sub_1001722D8(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v26 = v10;
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v24 = *(a2 + 128);
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v11 + 8);
  v25(v14, v10);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1001792BC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_1002503C0;
  v19 = _Block_copy(aBlock);
  v20 = a3;

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100013B44(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004F4C0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v30 + 8))(v6, v21);
  (*(v28 + 8))(v9, v29);
  v25(v16, v26);
}

void sub_1001726D0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 64);
    v5 = v4;

    if (v4)
    {
      sub_10007B9A4(&unk_10026F928, &unk_1001EEED0);
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        swift_beginAccess();
        v8 = swift_weakLoadStrong();
        if (v8)
        {
          v9 = *(v8 + 64);
          *(v8 + 64) = 0;
        }
      }
    }
  }
}

void sub_1001727B4(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5, void *a6)
{
  if (a3)
  {
    v9 = sub_10016E440(a6, 1);
    v10 = swift_allocObject();
    *(v10 + 16) = a5;
    *(v10 + 24) = a6;
    v37 = sub_100179440;
    v38 = v10;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1001794D0;
    v36 = &unk_100250370;
    v11 = _Block_copy(&aBlock);
    v12 = a5;
    swift_unknownObjectRetain();

    [v9 addFinishBlock:v11];
    v13 = v11;
LABEL_3:
    _Block_release(v13);
LABEL_4:

    return;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15 || (v16 = v15, [v15 count] != 2))
  {
    swift_unknownObjectRelease();
LABEL_11:
    if (a2)
    {
      v20 = _convertErrorToNSError(_:)();
      v21 = sub_1001714BC(9);
      if (v21)
      {

        v22 = *(a4 + 112);

        [v22 lock];
        sub_10016CA10();
        [v22 unlock];
      }

      else
      {
      }
    }

    else
    {
      v23 = String._bridgeToObjectiveC()();
      v24 = String._bridgeToObjectiveC()();
      AMSError();
    }

    swift_errorRetain();
    v25 = _convertErrorToNSError(_:)();
    [a5 finishWithError:v25];

    return;
  }

  v17 = [v16 objectAtIndexedSubscript:0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  swift_dynamicCast();
  v18 = v39;
  v19 = [v39 integerValue];
  if ((v19 & 1) == 0 || (v19 & 2) == 0)
  {
    v26 = String._bridgeToObjectiveC()();
    v27 = String._bridgeToObjectiveC()();
    v28 = AMSError();

    v9 = _convertErrorToNSError(_:)();
    [a5 finishWithError:v9];
    swift_unknownObjectRelease();

    goto LABEL_4;
  }

  v29 = [v16 objectAtIndexedSubscript:1];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10007B9A4(&qword_10026F920, &qword_1001EEEC8);
  swift_dynamicCast();

  swift_unknownObjectRetain();
  sub_1001778E8(a4, a4, v39);
  if ((sub_10016D408() & 1) == 0)
  {
    v9 = sub_10016E440(a6, 0);
    v30 = swift_allocObject();
    *(v30 + 16) = a5;
    *(v30 + 24) = a6;
    v37 = sub_100179254;
    v38 = v30;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_1001794D0;
    v36 = &unk_100250320;
    v31 = _Block_copy(&aBlock);
    v32 = a5;
    swift_unknownObjectRetain();

    [v9 addFinishBlock:v31];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v13 = v31;
    goto LABEL_3;
  }

  if ((sub_10016D51C() & 1) == 0)
  {
    sub_10016E884();
  }

  [a5 finishWithResult:a6];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

id sub_100172D88(int a1, uint64_t a2, id a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
    v5 = sub_1000167D8();
    [v5 v6];
  }

  else
  {

    return [a3 finishWithResult:a4];
  }
}

uint64_t sub_100172E24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5 = a3;
  v6 = sub_100003B80();
  v4(v6);

  return swift_unknownObjectRelease();
}

id sub_100172EA0()
{
  v1 = v0;
  if (qword_100268700 != -1)
  {
    sub_100006F00(&qword_100268700);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  v4 = type metadata accessor for MetricsIdentifierCloudDataController();
  v26 = v4;
  aBlock = v0;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100015A00();
  }

  else
  {
    sub_10000A640();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&aBlock);
  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.info.getter();
  sub_1000036B0(v7, v3);

  v8 = swift_allocObject();
  v8[1] = xmmword_1001E5F70;
  v26 = v4;
  aBlock = v0;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100015C40(&aBlock);

  sub_100002C00(&aBlock);
  LogInterpolation.init(stringLiteral:)();
  v11 = static os_log_type_t.debug.getter();
  sub_1000036B0(v11, v8);

  v12 = [objc_allocWithZone(AMSMutableBinaryPromise) init];
  v13 = v1[13];
  sub_100002FB8();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v12;
  v27 = sub_100179218;
  v28 = v14;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100173630;
  v26 = &unk_100250190;
  _Block_copy(&aBlock);
  sub_10000A76C();
  v15 = v13;
  v16 = v12;
  sub_100017DF8();

  [v15 fetchModifiedRecordsWithCompletion:v8];
  _Block_release(v8);

  v27 = sub_100179220;
  v28 = v1;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100005E50;
  v26 = &unk_1002501B8;
  _Block_copy(&aBlock);
  sub_10000A76C();
  v17 = v12;
  sub_100017DF8();

  v18 = sub_1000167D8();
  [v18 v19];
  _Block_release(v8);
  v27 = sub_100179228;
  v28 = v1;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000266E0;
  v26 = &unk_1002501E0;
  _Block_copy(&aBlock);
  sub_10000A76C();

  v20 = sub_1000167D8();
  [v20 v21];
  _Block_release(v8);

  return v12;
}

uint64_t sub_1001732CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 + 128);
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a4;
  v16[4] = a1;
  v16[5] = a2;
  aBlock[4] = sub_100179230;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100250230;
  v17 = _Block_copy(aBlock);

  v18 = v15;
  v19 = a5;

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100013B44(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004F4C0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v11, v9);
  (*(v12 + 8))(v14, v22);
}

void sub_1001735CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001739C8();
  v6 = v5;
  [a1 finishWithPromise:v5];
}

uint64_t sub_100173630(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_10007B9A4(&unk_10026F900, &unk_1001EEEB8);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_10007B9A4(&qword_10026F920, &qword_1001EEEC8);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t sub_10017373C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E5F70;
  v14 = type metadata accessor for MetricsIdentifierCloudDataController();
  v13[0] = a2;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v13);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001001FF8E0;
  v7._countAndFlagsBits = 0xD000000000000040;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v14 = v12;
  v8 = sub_100017E64(v13);
  (*(*(v12 - 8) + 16))(v8);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v13, &qword_10026D350, &qword_1001E6050);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  LogInterpolation.init(stringInterpolation:)();
  v10 = static os_log_type_t.error.getter();
  sub_1000036B0(v10, v4);
}

void sub_1001739C8()
{
  sub_100004988();
  v48 = v2;
  v49 = v1;
  v3 = *v0;
  v46 = v0;
  v50 = v3;
  v4 = type metadata accessor for OSSignposter();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000056E8();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v51 = type metadata accessor for OSSignpostID();
  sub_100002CC4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000056E8();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  if (qword_100268700 != -1)
  {
    sub_100006F00(&qword_100268700);
  }

  v23 = qword_100287860;
  v24 = *(qword_100287860 + 16);
  OSSignposter.init(logHandle:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v25 = *(v6 + 8);
  v47 = v4;
  v25(v13, v4);
  v26 = *(v23 + 16);
  OSSignposter.init(logHandle:)();
  v27 = OSSignposter.logHandle.getter();
  v28 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v29 = sub_1001794D8();
    v44 = v15;
    v30 = v29;
    *v29 = 0;
    v31 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v28, v31, "MetricsIdentifier", "Syncing changes to cloud", v30, 2u);
    v32 = v30;
    v15 = v44;
    sub_100058340(v32);
  }

  v33 = *(v15 + 16);
  v45 = v22;
  v33(v19, v22, v51);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v34 = OSSignpostIntervalState.init(id:isOpen:)();
  v25(v10, v47);
  v35 = v46;
  sub_100171D04();
  v37 = v36;
  sub_100007A3C();
  v38 = swift_allocObject();
  v39 = v48;
  v38[2] = v49;
  v38[3] = v39;
  v38[4] = v35;
  v56 = sub_1001790F0;
  v57 = v38;
  v52 = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_1001794C8;
  v55 = &unk_10024FFB0;
  v40 = _Block_copy(&v52);

  v41 = [v37 thenWithBlock:v40];
  _Block_release(v40);

  sub_100007A3C();
  v42 = swift_allocObject();
  v42[2] = v35;
  v42[3] = v34;
  v42[4] = v50;
  v56 = sub_1001790FC;
  v57 = v42;
  v52 = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_1001794D0;
  v55 = &unk_100250000;
  v43 = _Block_copy(&v52);

  [v41 addFinishBlock:v43];
  _Block_release(v43);
  [objc_opt_self() promiseWithPromise:v41];

  (*(v15 + 8))(v45, v51);
  sub_10000B16C();
}

id sub_100173E5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = *(a4 + 112);

  v66 = v9;
  [v9 lock];
  v68 = v8;
  v69 = v7;
  if (!a2)
  {
    v34 = 0;
LABEL_20:
    *(v7 + 16) = v34;

    v35 = *(v8 + 16);
    if (v35)
    {
      v81 = _swiftEmptyArrayStorage;
      v75 = sub_100049574(v35);

      swift_beginAccess();
      v36 = 0;
      v71 = v35 + 32;
      v73 = v35 & 0xC000000000000001;
LABEL_22:
      while (v36 != v75)
      {
        sub_1000F1168();
        if (v73)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v37 = result;
        }

        else
        {
          v37 = *(v71 + 8 * v36);
          result = swift_unknownObjectRetain();
        }

        v13 = __OFADD__(v36++, 1);
        if (v13)
        {
          goto LABEL_46;
        }

        v38 = a4;
        v39 = *(a4 + 120);

        v40 = [v37 name];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        if (*(v39 + 16))
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          v44 = Hasher._finalize()();
          v45 = ~(-1 << *(v39 + 32));
          while (1)
          {
            v46 = v44 & v45;
            if (((*(v39 + 56 + (((v44 & v45) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v44 & v45)) & 1) == 0)
            {
              break;
            }

            v47 = (*(v39 + 48) + 16 * v46);
            if (*v47 != v41 || v47[1] != v43)
            {
              v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v44 = v46 + 1;
              if ((v49 & 1) == 0)
              {
                continue;
              }
            }

            swift_unknownObjectRelease();
            a4 = v38;
            goto LABEL_22;
          }
        }

        v50 = [v37 name];
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        a4 = v38;
        swift_beginAccess();
        sub_1000190C0(&v76, v51, v53, v54, v55, v56, v57, v58, v66, v67, v68, v69, v71, v73, v75, v76, v77, v78, v79, v80, v81, aBlock, v83, v84, v85, v86, v87, v88, v89, v90);
        swift_endAccess();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v59 = v81;
      v8 = v68;
      v7 = v69;
    }

    else
    {
      v59 = 0;
    }

    *(v8 + 16) = v59;

    [v66 unlock];
    if (*(v7 + 16))
    {

      sub_10007B9A4(&unk_10026F900, &unk_1001EEEB8);
      v60.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (v59)
      {
LABEL_41:

        sub_10007B9A4(&qword_10026F920, &qword_1001EEEC8);
        v61.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_44:
        v62 = [v67 addRecordsToSave:v60.super.isa recordIdentifiersToDelete:v61.super.isa];

        v63 = swift_allocObject();
        v63[2] = a4;
        v63[3] = v7;
        v63[4] = v8;
        v63[5] = v67;
        v86 = sub_100179108;
        v87 = v63;
        aBlock = _NSConcreteStackBlock;
        v83 = 1107296256;
        v84 = sub_1001794D4;
        v85 = &unk_1002500A0;
        v64 = _Block_copy(&aBlock);

        swift_unknownObjectRetain();

        v65 = [v62 continueWithBlock:v64];
        _Block_release(v64);

        return v65;
      }
    }

    else
    {
      v60.super.isa = 0;
      if (v59)
      {
        goto LABEL_41;
      }
    }

    v61.super.isa = 0;
    goto LABEL_44;
  }

  v76 = _swiftEmptyArrayStorage;
  v72 = sub_100049574(a2);

  v74 = a4;
  swift_beginAccess();
  v10 = 0;
  v70 = a2 + 32;
  while (1)
  {
LABEL_3:
    if (v10 == v72)
    {

      a4 = v74;
      v34 = v76;
      v8 = v68;
      v7 = v69;
      goto LABEL_20;
    }

    sub_1000F1168();
    if ((a2 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = result;
    }

    else
    {
      v11 = *(v70 + 8 * v10);
      result = swift_unknownObjectRetain();
    }

    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      break;
    }

    v14 = *(v74 + 120);

    v15 = [objc_msgSend(v11 "identifier")];
    swift_unknownObjectRelease();
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (*(v14 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v14 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(v14 + 48) + 16 * v21);
        if (*v22 != v16 || v22[1] != v18)
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_3;
      }
    }

    v25 = [objc_msgSend(v11 "identifier")];
    swift_unknownObjectRelease();
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    swift_beginAccess();
    sub_1000190C0(&v78, v26, v28, v29, v30, v31, v32, v33, v66, v67, v68, v69, v70, v72, v74, v76, v77, v78, v79, v80, v81, aBlock, v83, v84, v85, v86, v87, v88, v89, v90);
    swift_endAccess();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

id sub_1001745D0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v25 = String._bridgeToObjectiveC()();
      v26 = String._bridgeToObjectiveC()();
      v14 = AMSError();
    }

    swift_errorRetain();
    sub_100170A94();
    v28 = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = v14;
    v35 = sub_100179444;
    v36 = v29;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100170204;
    v34 = &unk_1002500F0;
    v30 = _Block_copy(&aBlock);
    swift_errorRetain();

    v24 = [v28 continueWithPromiseBlock:v30];
    _Block_release(v30);

LABEL_20:
    sub_1001749EC(a3, (a4 + 16), (a5 + 16));
    return v24;
  }

  swift_beginAccess();
  v9 = *(a5 + 16);
  if (!v9)
  {
    v15 = a1;
LABEL_15:
    sub_100179190(a1);
    swift_beginAccess();

    v16 = [a1 error];
    sub_100176D5C();

    v17 = [a1 error];
    if (v17)
    {
      v18 = v17;
      sub_100170A94();
      v20 = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      v35 = sub_1001791FC;
      v36 = v21;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100170204;
      v34 = &unk_100250140;
      v22 = _Block_copy(&aBlock);
      v23 = v18;

      v24 = [v20 continueWithPromiseBlock:v22];
      _Block_release(v22);
    }

    else
    {
      v24 = [objc_opt_self() promiseWithResult:a1];
    }

    goto LABEL_20;
  }

  v10 = sub_100049574(v9);
  v11 = a1;

  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {

      goto LABEL_15;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1001760BC();
    result = swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

id sub_1001749EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v23 = *(a1 + 112);
  [v23 lock];
  swift_beginAccess();
  v5 = *a2;
  if (*a2)
  {
    v22 = a3;
    v6 = sub_100049574(v5);

    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {

        a3 = v22;
        goto LABEL_10;
      }

      sub_1000F1168();
      if ((v5 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = result;
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
        result = swift_unknownObjectRetain();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v10 = [objc_msgSend(v8 "identifier")];
      swift_unknownObjectRelease();
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      swift_beginAccess();
      sub_100193C7C(v11, v13);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_10:
    swift_beginAccess();
    v14 = *a3;
    if (*a3)
    {
      v15 = sub_100049574(*a3);

      for (j = 0; v15 != j; ++j)
      {
        sub_1000F1168();
        if ((v14 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v17 = result;
        }

        else
        {
          v17 = *(v14 + 8 * j + 32);
          result = swift_unknownObjectRetain();
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_21;
        }

        v18 = [v17 name];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        swift_beginAccess();
        sub_100193C7C(v19, v21);
        swift_endAccess();
        swift_unknownObjectRelease();
      }
    }

    return [v23 unlock];
  }

  return result;
}

id sub_100174CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = _convertErrorToNSError(_:)();
  v4 = [objc_opt_self() promiseWithError:v3];

  return v4;
}

id sub_100174CFC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v8 = sub_100008FE8();
  v9 = v5(v8);

  return v9;
}

uint64_t sub_100174D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OSSignpostError();
  v38 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = type metadata accessor for OSSignpostID();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = type metadata accessor for OSSignposter();
  v39 = *(v17 - 8);
  v40 = v17;
  v18 = __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  if (a2)
  {
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    v23 = *(qword_100287860 + 16);
    OSSignposter.init(logHandle:)();
    v24 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v25 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v26 = v38;
      if ((*(v38 + 88))(v10, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v27 = "[Error] Interval already ended";
      }

      else
      {
        (*(v26 + 8))(v10, v5);
        v27 = "Failed";
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, v25, v33, "MetricsIdentifier", v27, v32, 2u);
LABEL_17:
    }
  }

  else
  {
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    v28 = *(qword_100287860 + 16);
    OSSignposter.init(logHandle:)();
    v24 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v29 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v30 = v38;
      if ((*(v38 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v31 = "[Error] Interval already ended";
      }

      else
      {
        (*(v30 + 8))(v8, v5);
        v31 = "Finished";
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, v29, v35, "MetricsIdentifier", v31, v34, 2u);
      v16 = v14;
      v22 = v20;
      goto LABEL_17;
    }

    v16 = v14;
    v22 = v20;
  }

  (*(v41 + 8))(v16, v42);
  return (*(v39 + 8))(v22, v40);
}

id sub_10017524C()
{
  if (qword_100268700 != -1)
  {
    sub_100006F00(&qword_100268700);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A610();
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  sub_1000056F8();
  v2 = sub_100003BB4();
  *(v2 + 16) = xmmword_1001E5F70;
  type metadata accessor for MetricsIdentifierCloudDataController();
  sub_100005D24();
  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100015C40(&v22);

  sub_100002C00(&v22);
  LogInterpolation.init(stringLiteral:)();
  v5 = static os_log_type_t.debug.getter();
  sub_1000036B0(v5, v2);

  v6 = [objc_allocWithZone(AMSMutableBinaryPromise) init];
  v8 = sub_1000437F4(v6, v7);
  v9 = [v8 fetchUserRecordID];
  sub_100017DF8();
  swift_unknownObjectRelease();
  sub_100004AA0();
  v10 = swift_allocObject();
  sub_1000072D0(v10);
  sub_100002FB8();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v6;
  v26 = sub_1001790D8;
  v27 = v11;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1001794CC;
  v25 = &unk_10024FEC0;
  v12 = _Block_copy(&v22);
  v13 = v6;

  v14 = sub_100061E90();
  [v14 v15];
  _Block_release(v12);
  sub_100002FB8();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  *(v16 + 24) = v13;
  v26 = sub_1001790E0;
  v27 = v16;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000266E0;
  v25 = &unk_10024FF10;
  v17 = _Block_copy(&v22);

  v18 = v13;

  v19 = sub_100061E90();
  [v19 v20];

  _Block_release(v17);
  return v18;
}

id sub_100175558(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return [a3 finishWithSuccess];
  }

  v14 = Strong;
  v45 = v10;
  v46 = v9;
  v47 = a3;
  v15 = *(Strong + 112);

  [v15 lock];
  v16 = sub_10016D2A4();
  v18 = v17;
  [v15 unlock];

  v19 = [a1 name];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (!v18)
  {

    goto LABEL_11;
  }

  if (v16 != v20 || v18 != v22)
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_16;
    }

LABEL_11:
    v43 = v6;
    v44 = v5;
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1001E5F70;
    v50 = type metadata accessor for MetricsIdentifierCloudDataController();
    aBlock[0] = v14;

    v27 = AMSLogKey();
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(aBlock);
    LogInterpolation.init(stringLiteral:)();
    v32 = static os_log_type_t.debug.getter();
    sub_1000036B0(v32, v26);

    sub_100177994(v33, v14, &static Date.distantPast.getter);
    v34 = *(v14 + 128);
    v35 = swift_allocObject();
    v36 = v47;
    *(v35 + 16) = v14;
    *(v35 + 24) = v36;
    v51 = sub_1001790E8;
    v52 = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    v50 = &unk_10024FF60;
    v37 = _Block_copy(aBlock);

    v38 = v34;
    v39 = v36;
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_100013B44(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_10004F4C0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
    v40 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);

    (*(v43 + 8))(v8, v40);
    (*(v45 + 8))(v12, v46);
  }

LABEL_16:
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001E5F70;
  v50 = type metadata accessor for MetricsIdentifierCloudDataController();
  aBlock[0] = v14;

  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(aBlock);
  LogInterpolation.init(stringLiteral:)();
  v41 = static os_log_type_t.debug.getter();
  sub_1000036B0(v41, v29);

  [v47 finishWithSuccess];
}

void sub_100175C64(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001EED80;
  *(v3 + 32) = sub_100172EA0();
  sub_10016ED98();
  *(v3 + 40) = v4;
  sub_100002BC0(0, &qword_10026F918, AMSBinaryPromise_ptr);
  v5 = sub_10016DFA0();
  [a2 finishWithPromise:v5];
}

uint64_t sub_100175D2C(uint64_t a1)
{
  sub_10000A1D8(a1);
  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_100175D80(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F70;
  v10[3] = type metadata accessor for MetricsIdentifierCloudDataController();
  v10[0] = a2;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v10);
  LogInterpolation.init(stringLiteral:)();
  v8 = static os_log_type_t.error.getter();
  sub_1000036B0(v8, v5);

  v9 = _convertErrorToNSError(_:)();
  [a3 finishWithError:{v9, v10[0]}];
}

uint64_t sub_100175F58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001CCA58();
  v4 = [a1 name];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = 95;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v10 = v5;
  v9 = v7;
  v11 = [objc_msgSend(a1 "zoneIdentifier")];
  sub_100017FBC();
  swift_unknownObjectRelease();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = v10;
  v16._object = v9;
  URL.appendPathComponent(_:)(v16);

  v17._countAndFlagsBits = 0x64726F636572;
  v17._object = 0xE600000000000000;
  URL.appendPathExtension(_:)(v17);
  v18 = type metadata accessor for URL();

  return sub_10000A7C0(a2, 0, 1, v18);
}

void sub_1001760BC()
{
  sub_100003D74();
  v3 = v2;
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v4);
  sub_100004E78();
  __chkstk_darwin(v5);
  sub_100004D38();
  v39 = type metadata accessor for URL();
  sub_100002CC4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100002DEC();
  sub_10000C79C();
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = sub_100003D10(v9);
  __chkstk_darwin(v10);
  sub_100002DEC();
  sub_100012F7C();
  if (qword_100268700 != -1)
  {
    sub_100006F00(&qword_100268700);
  }

  v36 = v0;
  v37 = v7;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v11 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E5F70;
  v35 = type metadata accessor for MetricsIdentifierCloudDataController();
  v42 = v35;
  v41[0] = v0;
  v38 = v0;

  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v41);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v15._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  ObjectType = swift_getObjectType();
  v42 = ObjectType;
  v41[0] = v3;
  swift_unknownObjectRetain();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v41, &qword_10026D350, &qword_1001E6050);
  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  v18 = static os_log_type_t.info.getter();
  sub_1000036B0(v18, v12);

  [v0[13] removeRecordWithIdentifier:v3];
  sub_100175F58(v3, v1);
  if (sub_100009F34(v1, 1, v39) == 1)
  {
    sub_100009FB0(v1, &unk_10026FEE0, &unk_1001E67C0);
  }

  else
  {
    (*(v37 + 32))(v0, v1, v39);
    v19 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    v41[0] = 0;
    v23 = sub_10003AF3C();
    v25 = [v23 v24];

    if (v25)
    {
      v26 = *(v37 + 8);
      v27 = v41[0];
      v26(v36, v39);
    }

    else
    {
      v28 = v41[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1001E5F70;
      v42 = v35;
      v41[0] = v38;

      v30 = AMSLogKey();
      if (v30)
      {
        v31 = v30;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v41);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._countAndFlagsBits = 0xD000000000000035;
      v32._object = 0x80000001001FF6A0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
      v42 = ObjectType;
      v41[0] = v3;
      swift_unknownObjectRetain();
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009FB0(v41, &qword_10026D350, &qword_1001E6050);
      sub_10000ACE0();
      swift_getErrorValue();
      v42 = v40;
      sub_100017E64(v41);
      sub_1000047A4();
      (*(v33 + 16))();
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009FB0(v41, &qword_10026D350, &qword_1001E6050);
      sub_100003B48();
      LogInterpolation.init(stringInterpolation:)();
      v34 = static os_log_type_t.error.getter();
      sub_1000036B0(v34, v29);

      (*(v37 + 8))(v36, v39);
    }
  }

  sub_100005F14();
}

void sub_10017669C()
{
  sub_100003D74();
  v5 = v4;
  sub_100002DFC();
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  __chkstk_darwin(v7);
  sub_100002DEC();
  sub_10000C79C();
  v8 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v8);
  sub_100004E78();
  __chkstk_darwin(v9);
  sub_100004D38();
  v10 = type metadata accessor for URL();
  sub_100002CC4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100002DEC();
  sub_100012F7C();
  [*(v1 + 104) saveRecord:v0 isServerRecord:v5 & 1];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v31 = v3;
    v16 = objc_allocWithZone(NSKeyedArchiver);
    swift_unknownObjectRetain();
    v17 = [v16 initRequiringSecureCoding:1];
    [v15 encodeSystemFieldsWithCoder:v17];
    v18 = [v17 encodedData];
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    sub_100175F58([v0 identifier], v2);
    swift_unknownObjectRelease();
    if (sub_100009F34(v2, 1, v10) == 1)
    {
      sub_1000253FC(v19, v21);

      swift_unknownObjectRelease();
      sub_100009FB0(v2, &unk_10026FEE0, &unk_1001E67C0);
    }

    else
    {
      (*(v12 + 32))(v31, v2, v10);
      Data.write(to:options:)();
      v30 = v12;
      if (qword_100268700 != -1)
      {
        sub_100006F00(&qword_100268700);
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_10000A610();
      v22 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v22);
      sub_1000056F8();
      v23 = sub_100003BB4();
      *(v23 + 16) = xmmword_1001E5F70;
      ObjectType = type metadata accessor for MetricsIdentifierCloudDataController();
      v32[0] = v1;

      v24 = AMSLogKey();
      if (v24)
      {
        v25 = v24;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v32);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      sub_100004810();
      v26._countAndFlagsBits = 0xD000000000000031;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
      v27 = [v0 identifier];
      ObjectType = swift_getObjectType();
      v32[0] = v27;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009FB0(v32, &qword_10026D350, &qword_1001E6050);
      v28._countAndFlagsBits = 46;
      v28._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
      LogInterpolation.init(stringInterpolation:)();
      v29 = static os_log_type_t.info.getter();
      sub_1000036B0(v29, v23);
      sub_1000253FC(v19, v21);

      swift_unknownObjectRelease();
      (*(v30 + 8))(v31, v10);
    }
  }

  sub_100005F14();
}

void sub_100176D5C()
{
  sub_100003D74();
  v1 = v0;
  v48 = v2;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v46 = v8;
  v47 = v7;
  __chkstk_darwin(v7);
  sub_100002DEC();
  v44 = v10 - v9;
  sub_100003D1C();
  v45 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v43 = v11;
  __chkstk_darwin(v12);
  sub_100002DEC();
  v42 = v14 - v13;
  if (v6)
  {
    v15 = sub_100049574(v6);
    for (i = 0; v15 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        swift_unknownObjectRetain();
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      sub_10017669C();
      swift_unknownObjectRelease();
    }
  }

  if (v4)
  {
    v17 = sub_100049574(v4);
    for (j = 0; v17 != j; ++j)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        swift_unknownObjectRetain();
      }

      if (__OFADD__(j, 1))
      {
        goto LABEL_38;
      }

      sub_1001760BC();
      swift_unknownObjectRelease();
    }
  }

  if (!v48)
  {
    goto LABEL_35;
  }

  v19 = _convertErrorToNSError(_:)();
  v20 = sub_1001714BC(2);

  if (!v20)
  {
    goto LABEL_35;
  }

  v55 = v20;
  type metadata accessor for CKError(0);
  sub_100019D50();
  sub_100013B44(v21, v22);
  v23 = _BridgedStoredNSError.userInfo.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100052D94(v23, &v49);

  if (!v51)
  {

    sub_100009FB0(&v49, &qword_10026D350, &qword_1001E6050);
LABEL_35:
    sub_100005F14();
    return;
  }

  sub_10007B9A4(&qword_10026F8E8, &qword_1001EEEA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:

    goto LABEL_35;
  }

  v24 = v54;
  LOBYTE(v54) = 0;
  sub_100004E5C();
  v27 = v26 & v25;
  v29 = (v28 + 63) >> 6;

  v30 = 0;
  if (!v27)
  {
    goto LABEL_25;
  }

  do
  {
    v31 = v30;
LABEL_29:
    v32 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v33 = v32 | (v31 << 6);
    sub_10000DF68(*(v24 + 48) + 40 * v33, &v49);
    v53 = *(*(v24 + 56) + 8 * v33);
    sub_1001772D8(&v49, v53, v1, &v54);
    sub_100009FB0(&v49, &unk_10026F8F0, &unk_1001EEEA8);
  }

  while (v27);
LABEL_25:
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v29)
    {

      if ((v54 & 1) == 0)
      {
        goto LABEL_34;
      }

      v34 = v1[16];
      v52 = sub_1001790D0;
      v53 = v1;
      *&v49 = _NSConcreteStackBlock;
      *(&v49 + 1) = 1107296256;
      sub_100007A28();
      v50 = v35;
      v51 = &unk_10024FE48;
      v36 = _Block_copy(&v49);
      v37 = v34;

      static DispatchQoS.unspecified.getter();
      v55 = _swiftEmptyArrayStorage;
      sub_100008554();
      sub_100013B44(v38, v39);
      sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
      sub_10000317C();
      sub_10004F4C0(v40, v41, &unk_1001E74F0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v36);
      (*(v46 + 8))(v44, v47);
      (*(v43 + 8))(v42, v45);

      goto LABEL_35;
    }

    v27 = *(v24 + 64 + 8 * v31);
    ++v30;
    if (v27)
    {
      v30 = v31;
      goto LABEL_29;
    }
  }

LABEL_40:
  __break(1u);
}

void sub_1001772D8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1001714BC(14);
  if (v9)
  {
    v10 = v9;
    type metadata accessor for CKError(0);
    sub_100013B44(&qword_10026F8E0, type metadata accessor for CKError);
    v11 = _BridgedStoredNSError.userInfo.getter();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100052D94(v11, &v27);

    if (ObjectType)
    {
      sub_10007B9A4(&unk_10026F900, &unk_1001EEEB8);
      if (swift_dynamicCast())
      {
        if (qword_100268700 != -1)
        {
          swift_once();
        }

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        type metadata accessor for LogInterpolation();
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1001E5F70;
        ObjectType = type metadata accessor for MetricsIdentifierCloudDataController();
        *&v27 = a3;

        v13 = AMSLogKey();
        if (v13)
        {
          v14 = v13;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v27);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v23._countAndFlagsBits = 0xD000000000000042;
        v23._object = 0x80000001001FF5A0;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
        ObjectType = swift_getObjectType();
        *&v27 = v26;
        swift_unknownObjectRetain();
        LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
        sub_100009FB0(&v27, &qword_10026D350, &qword_1001E6050);
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
        LogInterpolation.init(stringInterpolation:)();
        v25 = static os_log_type_t.default.getter();
        sub_1000036B0(v25, v12);

        sub_10017669C();
        swift_unknownObjectRelease();

        *a4 = 1;
        return;
      }
    }

    else
    {

      sub_100009FB0(&v27, &qword_10026D350, &qword_1001E6050);
    }
  }

  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001E5F70;
  ObjectType = type metadata accessor for MetricsIdentifierCloudDataController();
  *&v27 = a3;

  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v27);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x80000001001FF560;
  v18._countAndFlagsBits = 0xD000000000000031;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  ObjectType = &type metadata for AnyHashable;
  *&v27 = swift_allocObject();
  sub_10000DF68(a1, v27 + 16);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v27, &qword_10026D350, &qword_1001E6050);
  v19._countAndFlagsBits = 0x203A726F72726520;
  v19._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  ObjectType = sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
  *&v27 = a2;
  v20 = a2;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v27, &qword_10026D350, &qword_1001E6050);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  LogInterpolation.init(stringInterpolation:)();
  v22 = static os_log_type_t.error.getter();
  sub_1000036B0(v22, v15);
}

void sub_1001778B0()
{
  sub_10016ED98();
}

uint64_t sub_1001778E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 112);
  [v4 lock];
  v5 = [a3 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10016CA10();
  [v4 unlock];
  swift_unknownObjectRelease();
}

uint64_t sub_100177994(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  sub_10000A610();
  v5 = type metadata accessor for Date();
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = v8 - v7;
  v10 = *(v3 + 112);
  a3([v10 lock]);
  sub_10016C8A0(v9);
  [v10 unlock];
}

void sub_100177A3C()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  __chkstk_darwin(v6);
  sub_100002DEC();
  sub_100004D38();
  v21 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100002DEC();
  sub_100012F7C();
  if (qword_100268830 != -1)
  {
    swift_once();
  }

  sub_100011C54(0x696669746E656469, 0xEE00636E79537265);
  v10 = *(v0 + 128);
  sub_100002FB8();
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  v22[4] = sub_1001790C8;
  v22[5] = v11;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  sub_100007A28();
  v22[2] = v12;
  v22[3] = &unk_10024FDF8;
  v13 = _Block_copy(v22);
  v14 = v10;

  static DispatchQoS.unspecified.getter();
  sub_100008554();
  sub_100013B44(v15, v16);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_10004F4C0(v17, v18, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  v19 = sub_100003B80();
  v20(v19);
  (*(v8 + 8))(v1, v21);

  sub_100005F14();
}

void sub_100177D00(uint64_t (*a1)(void))
{
  v1 = a1();
  v3[4] = sub_100177DB8;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100177E30;
  v3[3] = &unk_10024FE20;
  v2 = _Block_copy(v3);
  [v1 addFinishBlock:v2];
  _Block_release(v2);
}

uint64_t sub_100177DB8()
{
  if (qword_100268830 != -1)
  {
    swift_once();
  }

  return sub_1001AE448(0x696669746E656469, 0xEE00636E79537265);
}

void sub_100177E30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id *sub_100177EA8()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100177F58()
{
  sub_100177EA8();

  return swift_deallocClassInstance();
}

uint64_t sub_100177F8C()
{
  if (qword_100268700 != -1)
  {
    sub_100006F00(&qword_100268700);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A610();
  v0 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v0);
  sub_1000056F8();
  v1 = sub_100003BB4();
  *(v1 + 16) = xmmword_1001E5F70;
  type metadata accessor for MetricsIdentifierCloudDataController();
  sub_100005D24();
  v2 = AMSLogKey();
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100015C40(v8);

  sub_100002C00(v8);
  LogInterpolation.init(stringLiteral:)();
  v4 = static os_log_type_t.info.getter();
  sub_1000036B0(v4, v1);

  v5 = sub_100004CBC();
  sub_10007B9A4(v5, v6);
  sub_1000076B8(&qword_100269F80);
  Subject<>.send()();
}

void sub_100178150()
{
  sub_100003D74();
  v2 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v24 = v4;
  v25 = v3;
  __chkstk_darwin(v3);
  sub_100002DEC();
  v7 = v6 - v5;
  type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v22 = v9;
  v23 = v8;
  __chkstk_darwin(v8);
  sub_100002DEC();
  sub_100012F7C();
  if (qword_100268700 != -1)
  {
    sub_100006F00(&qword_100268700);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v10);
  sub_1000056F8();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001E5F70;
  v27 = type metadata accessor for MetricsIdentifierCloudDataController();
  v26[0] = v0;

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100015A00();
  }

  else
  {
    sub_10000A640();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v26);
  LogInterpolation.init(stringLiteral:)();
  v14 = static os_log_type_t.info.getter();
  sub_1000036B0(v14, v11);

  v15 = *(v0 + 128);
  v28 = sub_1001790C0;
  v29 = v2;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  v26[2] = sub_100005E50;
  v27 = &unk_10024FDA8;
  v16 = _Block_copy(v26);

  v17 = v15;
  static DispatchQoS.unspecified.getter();
  sub_100008554();
  sub_100013B44(v18, v19);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_10004F4C0(v20, v21, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v7, v25);
  (*(v22 + 8))(v1, v23);

  sub_100005F14();
}

uint64_t sub_1001784F0(uint64_t result)
{
  if (*(result + 80) == 1)
  {

    sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
    sub_10004F4C0(&qword_100269F80, &unk_10026F890, &unk_1001E74C0);
    Subject<>.send()();
  }

  return result;
}

uint64_t sub_1001785B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(v5);
  swift_unknownObjectRelease();
}

CKRecordZoneID sub_100178614()
{
  sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0._object = v1;
  v2._countAndFlagsBits = 0x696669746E656449;
  v2._object = 0xEE00656E6F5A7265;
  result.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v2, v0).super.isa;
  qword_10026F3F8 = result.super.isa;
  return result;
}

void sub_100178750()
{
  sub_100003D74();
  v2 = v1;
  v37 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = sub_100003D10(v8);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v10 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v10);
  sub_100004E78();
  __chkstk_darwin(v11);
  sub_100004D38();
  v12 = type metadata accessor for URL();
  sub_100002CC4();
  v36 = v13;
  __chkstk_darwin(v14);
  sub_100002DEC();
  v17 = v16 - v15;
  sub_100002BC0(0, &qword_10026F8B8, CKRecordID_ptr);
  v18 = qword_1002687C0;

  if (v18 != -1)
  {
    sub_100003424(&qword_1002687C0);
  }

  v19 = qword_10026F3F8;
  v20._countAndFlagsBits = v7;
  v20._object = v5;
  v21 = CKRecordID.init(recordName:zoneID:)(v20, v19).super.isa;
  sub_100175F58(v21, v0);

  if (sub_100009F34(v0, 1, v12) == 1)
  {
    sub_100009FB0(v0, &unk_10026FEE0, &unk_1001E67C0);
  }

  else
  {
    (*(v36 + 32))(v17, v0, v12);
    v22 = [objc_opt_self() defaultManager];
    URL.path.getter();
    String._bridgeToObjectiveC()();
    sub_100017FBC();

    v23 = [v22 fileExistsAtPath:v0];

    if (v23)
    {
      Data.init(contentsOf:options:)();
      v24 = objc_allocWithZone(NSKeyedUnarchiver);
      v25 = sub_100016434();
      sub_10003A5E0(v25, v26);
      v27 = sub_100016434();
      v30 = sub_100178FE0(v27, v28);
      [v30 setRequiresSecureCoding:1];
      v31 = [objc_allocWithZone(CKRecord) initWithCoder:v30];

      v32 = sub_100016434();
      sub_1000253FC(v32, v33);
      v34 = sub_10003D354();
      v35(v34);
      if (v31)
      {

        goto LABEL_9;
      }
    }

    else
    {
      (*(v36 + 8))(v17, v12);
    }
  }

  sub_100002BC0(0, &unk_10026F8D0, CKRecord_ptr);

  v29._countAndFlagsBits = v37;
  v29._object = v2;
  CKRecord.init(recordType:recordID:)(v29, v21);
LABEL_9:
  sub_100005F14();
}

uint64_t sub_100178D80(void *a1)
{
  v1 = [a1 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

CKRecordID sub_100178E68(uint64_t a1, uint64_t a2)
{
  sub_100002BC0(0, &qword_10026F8B8, CKRecordID_ptr);
  v2 = qword_1002687C0;

  if (v2 != -1)
  {
    sub_100003424(&qword_1002687C0);
  }

  v3 = qword_10026F3F8;
  v4._countAndFlagsBits = sub_100008FE8();
  return CKRecordID.init(recordName:zoneID:)(v4, v5);
}

id sub_100178FE0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = 0;
  v7 = [v3 initForReadingFromData:isa error:&v11];

  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1000253FC(a1, a2);
  return v7;
}

uint64_t sub_100179114(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_100003B80();
  sub_10007B9A4(v4, v5);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_100179190(void *a1)
{
  v1 = [a1 savedRecords];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10007B9A4(&unk_10026F900, &unk_1001EEEB8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100179270(void (*a1)(void))
{
  a1(*(v1 + 24));
  sub_100002FB8();

  return _swift_deallocObject(v3);
}

uint64_t sub_100179318()
{

  sub_100002FB8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10017935C(void (*a1)(void))
{

  a1(*(v1 + 24));
  v3 = sub_100008FE8();

  return _swift_deallocObject(v3);
}

uint64_t sub_1001794D8()
{

  return swift_slowAlloc();
}

uint64_t sub_1001794F0(void *a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v46 = a5;
  v47 = a4;
  v48 = a3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v49 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v45 - v11;
  URL.appendingPathComponent(_:)();
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  URL.path.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 fileExistsAtPath:v15];

  if (v16)
  {
    URL.appendingPathComponent(_:)();
    v17 = [v13 defaultManager];
    URL.path.getter();
    v18 = String._bridgeToObjectiveC()();

    URL.path.getter();
    v19 = String._bridgeToObjectiveC()();

    v55[0] = 0;
    v20 = [v17 moveItemAtPath:v18 toPath:v19 error:v55];

    if (v20)
    {
      v21 = *(v51 + 8);
      v22 = v55[0];
      v23 = v52;
      v21(v10, v52);
      return (v21)(v12, v23);
    }

    else
    {
      v47 = v12;
      v50 = v10;
      v33 = v55[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100268708 != -1)
      {
        swift_once();
      }

      v45[1] = qword_100287868;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1001E5F70;
      v35 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v36._object = 0x8000000100200130;
      v36._countAndFlagsBits = 0xD000000000000022;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
      v56 = &unk_1002471C0;
      LOBYTE(v55[0]) = v46;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v55, &qword_10026D350, &qword_1001E6050);
      v37._countAndFlagsBits = 0x3A726F727265202CLL;
      v37._object = 0xE900000000000020;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
      swift_getErrorValue();
      v38 = v53;
      v39 = v54;
      v56 = v54;
      v40 = sub_100017E64(v55);
      (*(*(v39 - 1) + 16))(v40, v38, v39);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v55, &qword_10026D350, &qword_1001E6050);
      v41._countAndFlagsBits = 41;
      v41._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v41);
      LogInterpolation.init(stringInterpolation:)();
      v42 = static os_log_type_t.fault.getter();
      sub_1000036B0(v42, v34);

      v43 = *(v51 + 8);
      v44 = v52;
      v43(v50, v52);
      return (v43)(v47, v44);
    }
  }

  else
  {
    if (qword_100268708 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1001E5F70;
    v26 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for Migrator();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._countAndFlagsBits = 0xD000000000000034;
    v27._object = 0x80000001002000F0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
    v28 = v52;
    v56 = v52;
    v29 = sub_100017E64(v55);
    v30 = v51;
    (*(v51 + 16))(v29, v12, v28);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(v55, &qword_10026D350, &qword_1001E6050);
    v31._countAndFlagsBits = 41;
    v31._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    LogInterpolation.init(stringInterpolation:)();
    v32 = static os_log_type_t.debug.getter();
    sub_1000036B0(v32, v25);

    return (*(v30 + 8))(v12, v28);
  }
}

BOOL sub_100179C40(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();

  v4 = ~(-1 << *(a2 + 32));
  do
  {
    v5 = (1 << (v3 & v4)) & *(a2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v6 = v5 != 0;
    if (!v5)
    {
      break;
    }

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {

      return 1;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = (v3 & v4) + 1;
  }

  while ((v12 & 1) == 0);
  return v6;
}

id sub_100179DD0(uint64_t *a1, char a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_100179E30(a2 & 1, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_100179E30(char a1, double a2)
{
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v26 = 0xD000000000000018;
  v27 = 0x80000001001F31B0;
  if (a1)
  {
    v7._countAndFlagsBits = 0x64656767756C702ELL;
    v7._object = 0xEA00000000006E49;
    String.append(_:)(v7);
  }

  if (a2 < 604800.0)
  {
    v8._countAndFlagsBits = 0x6F656D69546E6F2ELL;
    v8._object = 0xEA00000000007475;
    String.append(_:)(v8);
  }

  if (qword_1002686D8 != -1)
  {
    sub_100006F20(&qword_1002686D8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v9);
  sub_1000056F8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E5F70;
  v25 = type metadata accessor for NetworkObserver();
  v24[0] = v2;
  v11 = v2;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v24);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD00000000000002ALL;
  v14._object = 0x80000001002003D0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v25 = &type metadata for String;
  v24[0] = v26;
  v24[1] = v27;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v24, &qword_10026D350, &qword_1001E6050);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  v16 = static os_log_type_t.default.getter();
  sub_1000036B0(v16, v10);

  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 backgroundSessionConfigurationWithIdentifier:v18];

  v21 = sub_100011B18(v20, "setSessionSendsLaunchEvents:");
  sub_100011B18(v21, "setDiscretionary:");
  sub_100011B18([v19 setHTTPShouldSetCookies:0], "setHTTPShouldUsePipelining:");
  sub_100011B18([v19 setHTTPCookieAcceptPolicy:1], "set_allowsRetryForBackgroundDataTasks:");
  [v19 set_requiresPowerPluggedIn:a1 & 1];
  v22 = String._bridgeToObjectiveC()();
  [v19 set_sourceApplicationBundleIdentifier:v22];

  [v19 setURLCache:0];
  [v19 setRequestCachePolicy:1];
  [v19 setTimeoutIntervalForResource:a2];
  sub_100002BC0(0, &unk_10026FB50, NSURLSession_ptr);
  swift_unknownObjectRetain();
  return sub_10017A250(v19, v11, 0);
}

id sub_10017A250(void *a1, uint64_t a2, void *a3)
{
  v5 = [swift_getObjCClassFromMetadata() sessionWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v5;
}

id sub_10017A2C0()
{
  result = [objc_allocWithZone(type metadata accessor for NetworkObserver()) init];
  qword_1002878C0 = result;
  return result;
}

id sub_10017A2F0()
{
  *&v0[OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___session] = 0;
  *&v0[OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___sessionOnTimeout] = 0;
  *&v0[OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___sessionPluggedIn] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NetworkObserver();
  v1 = objc_msgSendSuper2(&v4, "init");

  v2 = sub_100179DB8();
  return v1;
}

void sub_10017A3A4()
{
  sub_100003D74();
  v1 = v0;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100002DEC();
  if (qword_100268830 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    sub_10000B06C();
    v4 = sub_100012D98();
    sub_100011C54(v4, v5);
    v6 = sub_100179D90();
    v69 = sub_10017C35C(v6);

    v7 = sub_100179DA4();
    v72 = sub_10017C35C(v7);

    v8 = sub_100179DB8();
    v71 = sub_10017C35C(v8);

    if (qword_1002686D8 != -1)
    {
      sub_100006F20(&qword_1002686D8);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v9);
    sub_1000056F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1001E5F70;
    v75[3] = type metadata accessor for NetworkObserver();
    v75[0] = v1;
    v74 = v1;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v75);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = 0xD000000000000018;
    v13._object = 0x8000000100200390;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    v14 = sub_10004369C(v69);
    sub_10000AD04(v14);
    v1 = &qword_10026D350;
    sub_100004D48();
    v15._countAndFlagsBits = 0x6D69546E6F5B202CLL;
    v15._object = 0xED00003A74756F65;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    v16 = sub_10004369C(v72);
    sub_10000AD04(v16);
    sub_100004D48();
    v17._object = 0x80000001002003B0;
    v17._countAndFlagsBits = 0xD000000000000014;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    v18 = sub_10004369C(v71);
    sub_10000AD04(v18);
    sub_100004D48();
    v19._countAndFlagsBits = 93;
    v19._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    LogInterpolation.init(stringInterpolation:)();
    v20 = static os_log_type_t.default.getter();
    sub_1000036B0(v20, v10);

    sub_100002BC0(0, &unk_10026AF90, NSURLSessionDownloadTask_ptr);
    v21 = Dictionary.init(dictionaryLiteral:)();
    v22 = sub_100049574(v69);
    if (v22)
    {
      break;
    }

LABEL_21:

    v38 = sub_100049574(v72);
    if (v38)
    {
      v39 = v38;
      if (v38 < 1)
      {
        goto LABEL_60;
      }

      v40 = 0;
      v70 = OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___sessionOnTimeout;
      do
      {
        v41 = (v72 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v72 + 8 * v40 + 32);
        v42 = v41;
        v43 = *(v74 + v70);
        v44 = sub_10017C464(v43, v42);
        v46 = v45;

        v47 = v42;
        swift_isUniquelyReferenced_nonNull_native();
        v75[0] = v21;
        v48 = v21;
        sub_100012A94();
        sub_1000076E4();
        if (v34)
        {
          goto LABEL_53;
        }

        v1 = v49;
        sub_10007B9A4(&qword_10026AF88, &qword_1001E8718);
        if (sub_1000065F8())
        {
          v48 = v75[0];
          sub_100012A94();
          sub_100023F10();
          if (!v35)
          {
            goto LABEL_62;
          }
        }

        v21 = v75[0];
        if (v1)
        {
          sub_100019D68();

          v47 = v48;
        }

        else
        {
          sub_100005554();
          *v50 = v44;
          v50[1] = v46;
          sub_10000856C();
          if (v34)
          {
            goto LABEL_56;
          }

          *(v21 + 16) = v51;
        }

        ++v40;
      }

      while (v39 != v40);
    }

    v52 = sub_100049574(v71);
    if (!v52)
    {
LABEL_51:

      type metadata accessor for ContentManager();
      sub_1000B30C4();

      sub_100012D98();
      sub_10000B06C();
      sub_1001AE448(v66, v67);
      sub_100005F14();
      return;
    }

    v53 = v52;
    if (v52 < 1)
    {
      goto LABEL_61;
    }

    v54 = 0;
    v73 = OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___sessionPluggedIn;
    while (1)
    {
      v55 = (v71 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v71 + 8 * v54 + 32);
      v56 = v55;
      v57 = *(v74 + v73);
      v58 = sub_10017C464(v57, v56);
      v60 = v59;

      v61 = v56;
      swift_isUniquelyReferenced_nonNull_native();
      v75[0] = v21;
      v62 = v21;
      sub_100012A94();
      sub_1000076E4();
      if (v34)
      {
        break;
      }

      v1 = v63;
      sub_10007B9A4(&qword_10026AF88, &qword_1001E8718);
      if (sub_1000065F8())
      {
        v62 = v75[0];
        sub_100012A94();
        sub_100023F10();
        if (!v35)
        {
          goto LABEL_62;
        }
      }

      v21 = v75[0];
      if (v1)
      {
        sub_100019D68();

        v61 = v62;
      }

      else
      {
        sub_100005554();
        *v64 = v58;
        v64[1] = v60;
        sub_10000856C();
        if (v34)
        {
          goto LABEL_57;
        }

        *(v21 + 16) = v65;
      }

      ++v54;

      if (v53 == v54)
      {
        goto LABEL_51;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  v23 = v22;
  if (v22 >= 1)
  {
    v24 = 0;
    v68 = OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___session;
    while (1)
    {
      v25 = (v69 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v69 + 8 * v24 + 32);
      v26 = v25;
      v27 = *(v74 + v68);
      v28 = sub_10017C464(v27, v26);
      v30 = v29;

      v31 = v26;
      swift_isUniquelyReferenced_nonNull_native();
      v75[0] = v21;
      v32 = v21;
      sub_100012A94();
      sub_1000076E4();
      if (v34)
      {
        break;
      }

      v1 = v33;
      sub_10007B9A4(&qword_10026AF88, &qword_1001E8718);
      if (sub_1000065F8())
      {
        v32 = v75[0];
        sub_100012A94();
        sub_100023F10();
        if (!v35)
        {
          goto LABEL_62;
        }
      }

      v21 = v75[0];
      if (v1)
      {
        sub_100019D68();

        v31 = v32;
      }

      else
      {
        sub_100005554();
        *v36 = v28;
        v36[1] = v30;
        sub_10000856C();
        if (v34)
        {
          goto LABEL_55;
        }

        *(v21 + 16) = v37;
      }

      ++v24;

      if (v23 == v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10017AAF4()
{
  sub_100003D74();
  v41 = v0;
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v7 = type metadata accessor for String.Encoding();
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = v12 - v11;
  v14 = type metadata accessor for URL();
  sub_100002CC4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100002DEC();
  v20 = v19 - v18;
  type metadata accessor for URLRequest();
  sub_100002CC4();
  v42 = v22;
  v43 = v21;
  __chkstk_darwin(v21);
  sub_100002DEC();
  v25 = v24 - v23;
  v40 = *(v16 + 16);
  v40(v20, v4, v14);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v26 = type metadata accessor for JSContent.Request(0);
  sub_100107D38(*(v4 + v26[6]));
  URLRequest.httpMethod.setter();
  sub_10014ACB8(*(v4 + v26[5]));
  if (!v27)
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  URLRequest.allHTTPHeaderFields.setter();
  URLRequest.cachePolicy.setter();
  if (*(v4 + v26[7] + 8))
  {
    static String.Encoding.utf8.getter();
    String.data(using:allowLossyConversion:)();
    (*(v9 + 8))(v13, v7);
  }

  URLRequest.httpBody.setter();
  if ((v2 & 0x10000) != 0)
  {
    URLRequest.allowsCellularAccess.setter();
    URLRequest.allowsConstrainedNetworkAccess.setter();
    URLRequest.allowsExpensiveNetworkAccess.setter();
  }

  if (qword_1002686D8 != -1)
  {
    sub_100006F20(&qword_1002686D8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v28 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v28);
  sub_1000056F8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001E5F70;
  v45 = type metadata accessor for NetworkObserver();
  v44[0] = v41;
  v41;
  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v44);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._object = 0x8000000100200370;
  v32._countAndFlagsBits = 0xD000000000000013;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
  v45 = v14;
  v33 = sub_100017E64(v44);
  v40(v33, v4, v14);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v44, &qword_10026D350, &qword_1001E6050);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
  LogInterpolation.init(stringInterpolation:)();
  v35 = static os_log_type_t.default.getter();
  sub_1000036B0(v35, v29);

  if ((v2 & 0x100) != 0)
  {
    v36 = sub_100179DB8();
  }

  else if (v2)
  {
    v36 = sub_100179DA4();
  }

  else
  {
    v36 = sub_100179D90();
  }

  v37 = v36;
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v39 = [v37 downloadTaskWithRequest:isa];

  [v39 resume];
  sub_10017C464(v37, v39);

  (*(v42 + 8))(v25, v43);
  sub_100005F14();
}

uint64_t sub_10017B038(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_100179D90();
  sub_1000049A4(v2);
  v4 = v3;

  if (v4)
  {
    return 1;
  }

  v5 = sub_100179DA4();
  sub_1000049A4(v5);
  v7 = v6;

  if (v7)
  {
    return 1;
  }

  v9 = sub_100179DB8();
  sub_10017BE54();
  v11 = v10;

  return v11 & 1;
}

void sub_10017B0D4(uint64_t a1, void *a2, void *a3)
{
  sub_100002BC0(0, &qword_10026FB48, AMSMetricsLoadURLContext_ptr);
  v5 = sub_10017B284(a2, a3);
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v6 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  [v5 setBag:v6];

  v7 = [objc_opt_self() shouldCollectMetricsPromiseForContext:v5];
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v11[4] = sub_10017C728;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000EA728;
  v11[3] = &unk_1002508C0;
  v9 = _Block_copy(v11);
  v10 = v5;

  [v7 addSuccessBlock:v9];
  _Block_release(v9);
}

id sub_10017B284(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTask:a1 metrics:a2];

  return v4;
}

void sub_10017B2E0(void *a1, void *a2)
{
  if ([a1 BOOLValue])
  {
    v3 = [objc_opt_self() loadURLEventPromiseWithContext:a2];
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v7[4] = sub_10017C730;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10008E0EC;
    v7[3] = &unk_100250910;
    v5 = _Block_copy(v7);
    v6 = a2;

    [v3 addSuccessBlock:v5];
    _Block_release(v5);
  }
}

void sub_10017B3F4(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() internalInstanceUsingBag:{objc_msgSend(a2, "bag")}];
  swift_unknownObjectRelease();
  [v3 enqueueEvent:a1];
}

void *sub_10017BD34(void *result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    type metadata accessor for ContentManager();
    swift_errorRetain();
    sub_10017C464(v4, a2);
    sub_1000B5CBC();
  }

  return result;
}

void sub_10017BE54()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Date();
  sub_100002CC4();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29[-1] - v12;
  v14 = [objc_allocWithZone(AMSMutablePromise) init];
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v2;
  v15[4] = v14;
  v29[4] = sub_10017C658;
  v29[5] = v15;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 1107296256;
  sub_100007CA4();
  v29[2] = v16;
  v29[3] = &unk_100250870;
  v17 = _Block_copy(v29);
  v18 = v2;
  v19 = v14;

  [v18 getTasksWithCompletionHandler:v17];
  _Block_release(v17);
  static Date.now.getter();
  static Date.+ infix(_:_:)();
  v20 = *(v7 + 8);
  v20(v11, v5);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v20(v13, v5);
  v29[0] = 0;
  v22 = [v19 resultBeforeDate:isa error:v29];

  v23 = v29[0];
  if (v22)
  {
    v29[0] = 0;
    v24 = v23;
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v29[0])
    {
      v25 = v29[0];
    }

    else
    {
      v25 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v26 = v29[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v25 = &_swiftEmptySetSingleton;
  }

  v27 = type metadata accessor for ContentInfo(0);
  sub_10005938C(*(v4 + *(v27 + 44)), *(v4 + *(v27 + 44) + 8), v25);

  sub_100005F14();
}

uint64_t sub_10017C260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  sub_100002BC0(0, &qword_10026FB18, NSURLSessionDataTask_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100002BC0(0, &unk_10026FB20, NSURLSessionUploadTask_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100002BC0(0, &unk_10026AF90, NSURLSessionDownloadTask_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4(v5, v6, v7);
}

uint64_t sub_10017C35C(void *a1)
{
  sub_10007B9A4(&qword_10026FB10, &qword_1001EEF48);
  aBlock[4] = sub_10017C630;
  aBlock[5] = Promise.__allocating_init()();
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_100007CA4();
  aBlock[2] = v2;
  aBlock[3] = &unk_100250820;
  v3 = _Block_copy(aBlock);

  [a1 getTasksWithCompletionHandler:v3];
  _Block_release(v3);
  v4 = sub_1001B5BA8();

  return v4;
}

uint64_t sub_10017C464(void *a1, void *a2)
{
  v3 = sub_10017C5C0([a1 configuration]);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v9 = v5;
  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  [a2 taskIdentifier];
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  return v9;
}

id sub_10017C50C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017C5C0(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10017C664()
{
  result = qword_10026FB40;
  if (!qword_10026FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FB40);
  }

  return result;
}

uint64_t sub_10017C6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FB30, &qword_1001EEF50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for NetworkObserver.NetworkError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NetworkObserver.NetworkError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10017C788(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017C7A4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_10017C7E8()
{
  v0 = type metadata accessor for NWPath.Status();
  sub_100002CC4();
  v2 = v1;
  v4 = __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for NWPath();
  sub_100002CC4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWPathMonitor.currentPath.getter();
  NWPath.status.getter();
  (*(v11 + 8))(v14, v9);
  (*(v2 + 104))(v6, enum case for NWPath.Status.satisfied(_:), v0);
  v15 = static NWPath.Status.== infix(_:_:)();
  v16 = *(v2 + 8);
  v16(v6, v0);
  v16(v8, v0);
  return v15 & 1;
}

void sub_10017C9C4()
{
  if (qword_1002687D0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1002878C8);

  sub_100005254();
  swift_allocObject();
  qword_1002878D0 = sub_10017CA50();

  os_unfair_lock_unlock(&dword_1002878C8);
}

uint64_t sub_10017CA50()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(v0 + 16) = NWPathMonitor.init()();
  v5 = swift_allocObject();
  swift_weakInit();

  sub_100017E54(sub_10017D044, v5);
  NWPathMonitor.pathUpdateHandler.setter();

  sub_100017A08();
  (*(v2 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v1);

  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v4, v1);
  NWPathMonitor.start(queue:)();

  return v0;
}

uint64_t sub_10017CC1C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NWPath.Status();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v23 = v3;
    v26 = a1;
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v25 = qword_100287810;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v24 = *(*(type metadata accessor for LogInterpolation() - 8) + 72);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001E5F70;
    v28 = type metadata accessor for NetworkStatusObserver();
    v27[0] = v12;

    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v27);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._object = 0x8000000100200440;
    v16._countAndFlagsBits = 0xD000000000000014;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    NWPath.status.getter();
    v17 = v23;
    (*(v4 + 104))(v7, enum case for NWPath.Status.satisfied(_:), v23);
    v18 = static NWPath.Status.== infix(_:_:)();
    v19 = *(v4 + 8);
    v19(v7, v17);
    v19(v9, v17);
    v28 = &type metadata for Bool;
    LOBYTE(v27[0]) = v18 & 1;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v27);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    LogInterpolation.init(stringInterpolation:)();
    v21 = static os_log_type_t.default.getter();
    sub_1000036B0(v21, v13);
  }

  return result;
}