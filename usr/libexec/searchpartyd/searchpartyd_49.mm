uint64_t sub_100579AF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100579BDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100579CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for UUID();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100579D90, a3, 0);
}

uint64_t sub_100579D90()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v7 = v0;
  v7[1] = sub_1002E9E50;
  v9 = v0[2];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_10058D700, v6, v8);
}

Swift::Int sub_100579F04(uint64_t *a1)
{
  v2 = *(type metadata accessor for ShareRecord(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3214C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10057A31C(v6);
  *a1 = v3;
  return result;
}

void sub_100579FAC()
{
  v1 = type metadata accessor for MessagingServiceDelegateTrampoline();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_10166A1B8;
  swift_unknownObjectWeakAssign();
  v9.receiver = v2;
  v9.super_class = v1;
  v3 = objc_msgSendSuper2(&v9, "init");
  v4 = v0[5];
  v0[5] = v3;

  v5 = v0[7];
  v6 = objc_allocWithZone(IDSServiceDelegateProperties);
  v7 = v3;
  v8 = [v6 init];
  [v5 addDelegate:v7 withDelegateProperties:v8 queue:v0[6]];
}

void *sub_10057A094()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = [*(v0 + 56) devices];
  if (result)
  {
    v2 = result;
    sub_100008BB8(0, &qword_10169EF70, IDSDevice_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10057A1A4()
{
  v0 = sub_10057A094();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    return _swiftEmptyArrayStorage;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_101124390(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      sub_100E77148(v5, v17);

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_101124390((v7 > 1), v8 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[20 * v8];
      v10 = v17[1];
      v9[2] = v17[0];
      v9[3] = v10;
      v11 = v17[2];
      v12 = v17[3];
      v13 = v17[5];
      v9[6] = v17[4];
      v9[7] = v13;
      v9[4] = v11;
      v9[5] = v12;
      v14 = v17[6];
      v15 = v17[7];
      v16 = v17[9];
      v9[10] = v17[8];
      v9[11] = v16;
      v9[8] = v14;
      v9[9] = v15;
    }

    while (v2 != v4);

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

Swift::Int sub_10057A31C(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        type metadata accessor for ShareRecord(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ShareRecord(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10057A9A0(v8, v9, a1, v4);
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
    return sub_10057A448(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10057A448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v63 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v49 - v11;
  v72 = type metadata accessor for Date();
  v12 = *(v72 - 8);
  v13 = __chkstk_darwin(v72);
  v60 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = &v49 - v15;
  v65 = type metadata accessor for ShareRecord(0);
  v16 = __chkstk_darwin(v65);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v49 - v19;
  result = __chkstk_darwin(v18);
  v70 = &v49 - v23;
  v52 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v25 = *(v22 + 72);
    v64 = (v12 + 48);
    v61 = (v12 + 8);
    v62 = (v12 + 32);
    v26 = v24 + v25 * (a3 - 1);
    v57 = -v25;
    v58 = v24;
    v27 = a1 - a3;
    v51 = v25;
    v28 = v24 + v25 * a3;
    v50 = v20;
    while (2)
    {
      v55 = v26;
      v56 = a3;
      v53 = v28;
      v54 = v27;
      v30 = v65;
      while (1)
      {
        v68 = v27;
        v31 = v70;
        sub_10058B200(v28, v70, type metadata accessor for ShareRecord);
        v67 = v26;
        sub_10058B200(v26, v20, type metadata accessor for ShareRecord);
        v32 = v71;
        sub_1000D2A70(v31 + *(v30 + 32), v71, &unk_101696900, &unk_10138B1E0);
        v33 = v20;
        v34 = *v64;
        if ((*v64)(v32, 1, v72) == 1)
        {
          break;
        }

        v66 = v28;
        v35 = *v62;
        v36 = v72;
        (*v62)(v69, v71, v72);
        v37 = v33 + *(v30 + 32);
        v38 = v63;
        sub_1000D2A70(v37, v63, &unk_101696900, &unk_10138B1E0);
        if (v34(v38, 1, v36) == 1)
        {
          (*v61)(v69, v72);
          v29 = v38;
          goto LABEL_5;
        }

        v39 = v72;
        v40 = v69;
        v41 = v60;
        v35(v60, v38, v72);
        v42 = static Date.< infix(_:_:)();
        v43 = *v61;
        v30 = v65;
        (*v61)(v41, v39);
        v43(v40, v39);
        sub_10058B268(v33, type metadata accessor for ShareRecord);
        result = sub_10058B268(v70, type metadata accessor for ShareRecord);
        v20 = v33;
        v44 = v66;
        v45 = v67;
        v46 = v68;
        if ((v42 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (!v58)
        {
          __break(1u);
          return result;
        }

        v47 = v59;
        sub_100589B28(v66, v59, type metadata accessor for ShareRecord);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100589B28(v47, v45, type metadata accessor for ShareRecord);
        v26 = v45 + v57;
        v28 = v44 + v57;
        v48 = __CFADD__(v46, 1);
        v27 = v46 + 1;
        if (v48)
        {
          goto LABEL_6;
        }
      }

      v29 = v71;
LABEL_5:
      sub_10000B3A8(v29, &unk_101696900, &unk_10138B1E0);
      v20 = v50;
      sub_10058B268(v50, type metadata accessor for ShareRecord);
      result = sub_10058B268(v70, type metadata accessor for ShareRecord);
LABEL_6:
      a3 = v56 + 1;
      v26 = v55 + v51;
      v27 = v54 - 1;
      v28 = v53 + v51;
      if (v56 + 1 == v52)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_10057A9A0(unint64_t *a1, uint64_t a2, char **a3, int64_t a4)
{
  v152 = a1;
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v176 = &v149 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v149 - v14;
  __chkstk_darwin(v13);
  v17 = &v149 - v16;
  v180 = type metadata accessor for Date();
  v18 = *(v180 - 8);
  v19 = __chkstk_darwin(v180);
  v174 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v187 = &v149 - v22;
  v23 = __chkstk_darwin(v21);
  v153 = &v149 - v24;
  __chkstk_darwin(v23);
  v164 = &v149 - v25;
  v26 = type metadata accessor for ShareRecord(0);
  v167 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v156 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v173 = &v149 - v30;
  v31 = __chkstk_darwin(v29);
  v185 = &v149 - v32;
  v33 = __chkstk_darwin(v31);
  v186 = &v149 - v34;
  v35 = __chkstk_darwin(v33);
  v168 = &v149 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v149 - v38;
  v40 = __chkstk_darwin(v37);
  v150 = &v149 - v41;
  result = __chkstk_darwin(v40);
  v169 = a3;
  v44 = a3[1];
  if (v44 < 1)
  {
    v45 = _swiftEmptyArrayStorage;
    v47 = v166;
LABEL_111:
    v4 = v47;
    v47 = *v152;
    if (!*v152)
    {
      goto LABEL_151;
    }

    v46 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_145;
    }

    result = v46;
LABEL_114:
    v188 = result;
    v46 = *(result + 16);
    if (v46 >= 2)
    {
      while (*v169)
      {
        v145 = *(result + 16 * v46);
        v146 = result;
        v147 = *(result + 16 * (v46 - 1) + 40);
        sub_10057BA40(&(*v169)[*(v167 + 72) * v145], &(*v169)[*(v167 + 72) * *(result + 16 * (v46 - 1) + 32)], &(*v169)[*(v167 + 72) * v147], v47);
        if (v4)
        {
        }

        if (v147 < v145)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_100B31E68(v146);
        }

        if (v46 - 2 >= *(v146 + 2))
        {
          goto LABEL_139;
        }

        v148 = &v146[16 * v46];
        *v148 = v145;
        *(v148 + 1) = v147;
        v188 = v146;
        sub_100B31DDC(v46 - 1);
        result = v188;
        v46 = *(v188 + 16);
        if (v46 <= 1)
        {
        }
      }

      goto LABEL_149;
    }
  }

  v149 = &v149 - v43;
  v178 = (v18 + 32);
  v179 = (v18 + 48);
  v177 = (v18 + 8);
  v45 = _swiftEmptyArrayStorage;
  v151 = a4;
  v175 = v10;
  v162 = v15;
  v46 = 0;
  v165 = v17;
  v181 = v26;
  v47 = v166;
  v163 = v39;
  while (1)
  {
    v157 = v45;
    v154 = v46;
    if ((v46 + 1) >= v44)
    {
      v68 = v46 + 1;
      goto LABEL_31;
    }

    v170 = v44;
    v48 = *v169;
    v49 = *(v167 + 72);
    v184 = &(*v169)[v49 * (v46 + 1)];
    v50 = v149;
    sub_10058B200(v184, v149, type metadata accessor for ShareRecord);
    v51 = &v48[v49 * v46];
    v52 = v150;
    sub_10058B200(v51, v150, type metadata accessor for ShareRecord);
    LODWORD(v183) = sub_10053DC50(v50, v52);
    if (v47)
    {
      sub_10058B268(v52, type metadata accessor for ShareRecord);
      sub_10058B268(v50, type metadata accessor for ShareRecord);
    }

    sub_10058B268(v52, type metadata accessor for ShareRecord);
    result = sub_10058B268(v50, type metadata accessor for ShareRecord);
    v53 = v154 + 2;
    v182 = v49;
    v54 = &v48[v49 * (v154 + 2)];
    v166 = 0;
    v55 = v168;
    v4 = &unk_10138B1E0;
    v56 = v184;
    while (1)
    {
      v68 = v170;
      if (v170 == v53)
      {
        break;
      }

      sub_10058B200(v54, v39, type metadata accessor for ShareRecord);
      v184 = v56;
      sub_10058B200(v56, v55, type metadata accessor for ShareRecord);
      sub_1000D2A70(&v39[*(v26 + 32)], v17, &unk_101696900, &unk_10138B1E0);
      v60 = v180;
      v61 = *v179;
      v62 = (*v179)(v17, 1, v180);
      v63 = v17;
      v64 = v162;
      if (v62 == 1)
      {
        sub_10000B3A8(v63, &unk_101696900, &unk_10138B1E0);
        v57 = 0;
        v39 = v163;
        v47 = v166;
      }

      else
      {
        v172 = *v178;
        (v172)(v164, v63, v60);
        sub_1000D2A70(v168 + *(v26 + 32), v64, &unk_101696900, &unk_10138B1E0);
        if (v61(v64, 1, v60) == 1)
        {
          (*v177)(v164, v60);
          sub_10000B3A8(v64, &unk_101696900, &unk_10138B1E0);
          v57 = 0;
        }

        else
        {
          v65 = v153;
          (v172)(v153, v64, v60);
          v66 = v164;
          v57 = static Date.< infix(_:_:)();
          v67 = *v177;
          (*v177)(v65, v60);
          v67(v66, v60);
        }

        v47 = v166;
        v39 = v163;
      }

      v58 = v184;
      v55 = v168;
      sub_10058B268(v168, type metadata accessor for ShareRecord);
      result = sub_10058B268(v39, type metadata accessor for ShareRecord);
      v59 = v57 & 1;
      ++v53;
      v26 = v181;
      v54 += v182;
      v56 = v58 + v182;
      v17 = v165;
      if ((v183 & 1) != v59)
      {
        v68 = v53 - 1;
        break;
      }
    }

    a4 = v151;
    v46 = v154;
    if (v183)
    {
      if (v68 < v154)
      {
        goto LABEL_144;
      }

      if (v154 < v68)
      {
        v4 = v68;
        v69 = v182;
        v70 = v182 * (v68 - 1);
        v71 = v68 * v182;
        v170 = v68;
        v72 = v154;
        v73 = v154 * v182;
        do
        {
          if (v72 != --v4)
          {
            v74 = *v169;
            if (!*v169)
            {
              goto LABEL_148;
            }

            sub_100589B28(&v74[v73], v156, type metadata accessor for ShareRecord);
            if (v73 < v70 || &v74[v73] >= &v74[v71])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v73 != v70)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_100589B28(v156, &v74[v70], type metadata accessor for ShareRecord);
            v26 = v181;
          }

          ++v72;
          v70 -= v69;
          v71 -= v69;
          v73 += v69;
        }

        while (v72 < v4);
        v47 = v166;
        a4 = v151;
        v17 = v165;
        v46 = v154;
        v68 = v170;
      }
    }

LABEL_31:
    v75 = v169[1];
    if (v68 >= v75)
    {
      goto LABEL_39;
    }

    v76 = v68;
    v113 = __OFSUB__(v68, v46);
    v77 = v68 - v46;
    if (v113)
    {
      goto LABEL_141;
    }

    if (v77 < a4)
    {
      break;
    }

    v78 = v76;
    if (v76 < v46)
    {
      goto LABEL_140;
    }

LABEL_58:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v45 = v157;
    }

    else
    {
      result = sub_100A5B430(0, *(v157 + 2) + 1, 1, v157);
      v45 = result;
    }

    v46 = *(v45 + 2);
    v99 = *(v45 + 3);
    v100 = v46 + 1;
    if (v46 >= v99 >> 1)
    {
      result = sub_100A5B430((v99 > 1), v46 + 1, 1, v45);
      v45 = result;
    }

    *(v45 + 2) = v100;
    v101 = &v45[16 * v46];
    *(v101 + 4) = v154;
    *(v101 + 5) = v78;
    v184 = *v152;
    if (!v184)
    {
      goto LABEL_150;
    }

    v158 = v78;
    if (v46)
    {
      while (1)
      {
        v102 = v100 - 1;
        if (v100 >= 4)
        {
          break;
        }

        if (v100 == 3)
        {
          v103 = *(v45 + 4);
          v104 = *(v45 + 5);
          v113 = __OFSUB__(v104, v103);
          v105 = v104 - v103;
          v106 = v113;
LABEL_77:
          if (v106)
          {
            goto LABEL_129;
          }

          v119 = &v45[16 * v100];
          v121 = *v119;
          v120 = *(v119 + 1);
          v122 = __OFSUB__(v120, v121);
          v123 = v120 - v121;
          v124 = v122;
          if (v122)
          {
            goto LABEL_132;
          }

          v125 = &v45[16 * v102 + 32];
          v127 = *v125;
          v126 = *(v125 + 1);
          v113 = __OFSUB__(v126, v127);
          v128 = v126 - v127;
          if (v113)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v123, v128))
          {
            goto LABEL_136;
          }

          if (v123 + v128 >= v105)
          {
            if (v105 < v128)
            {
              v102 = v100 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v129 = &v45[16 * v100];
        v131 = *v129;
        v130 = *(v129 + 1);
        v113 = __OFSUB__(v130, v131);
        v123 = v130 - v131;
        v124 = v113;
LABEL_91:
        if (v124)
        {
          goto LABEL_131;
        }

        v132 = &v45[16 * v102];
        v134 = *(v132 + 4);
        v133 = *(v132 + 5);
        v113 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v113)
        {
          goto LABEL_134;
        }

        if (v135 < v123)
        {
          goto LABEL_3;
        }

LABEL_98:
        v46 = v102 - 1;
        if (v102 - 1 >= v100)
        {
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
          goto LABEL_143;
        }

        if (!*v169)
        {
          goto LABEL_147;
        }

        v140 = v45;
        v141 = *&v45[16 * v46 + 32];
        v142 = *&v45[16 * v102 + 40];
        sub_10057BA40(&(*v169)[*(v167 + 72) * v141], &(*v169)[*(v167 + 72) * *&v45[16 * v102 + 32]], &(*v169)[*(v167 + 72) * v142], v184);
        if (v47)
        {
        }

        if (v142 < v141)
        {
          goto LABEL_125;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v143 = v140;
        }

        else
        {
          v143 = sub_100B31E68(v140);
        }

        v26 = v181;
        if (v46 >= *(v143 + 2))
        {
          goto LABEL_126;
        }

        v144 = &v143[16 * v46];
        *(v144 + 4) = v141;
        *(v144 + 5) = v142;
        v188 = v143;
        v46 = &v188;
        result = sub_100B31DDC(v102);
        v45 = v188;
        v100 = *(v188 + 16);
        if (v100 <= 1)
        {
          goto LABEL_3;
        }
      }

      v107 = &v45[16 * v100 + 32];
      v108 = *(v107 - 64);
      v109 = *(v107 - 56);
      v113 = __OFSUB__(v109, v108);
      v110 = v109 - v108;
      if (v113)
      {
        goto LABEL_127;
      }

      v112 = *(v107 - 48);
      v111 = *(v107 - 40);
      v113 = __OFSUB__(v111, v112);
      v105 = v111 - v112;
      v106 = v113;
      if (v113)
      {
        goto LABEL_128;
      }

      v114 = &v45[16 * v100];
      v116 = *v114;
      v115 = *(v114 + 1);
      v113 = __OFSUB__(v115, v116);
      v117 = v115 - v116;
      if (v113)
      {
        goto LABEL_130;
      }

      v113 = __OFADD__(v105, v117);
      v118 = v105 + v117;
      if (v113)
      {
        goto LABEL_133;
      }

      if (v118 >= v110)
      {
        v136 = &v45[16 * v102 + 32];
        v138 = *v136;
        v137 = *(v136 + 1);
        v113 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v113)
        {
          goto LABEL_137;
        }

        if (v105 < v139)
        {
          v102 = v100 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_3:
    v44 = v169[1];
    v46 = v158;
    a4 = v151;
    if (v158 >= v44)
    {
      goto LABEL_111;
    }
  }

  if (__OFADD__(v46, a4))
  {
    goto LABEL_142;
  }

  if ((v46 + a4) < v75)
  {
    v75 = (v46 + a4);
  }

  if (v75 < v46)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    result = sub_100B31E68(v46);
    goto LABEL_114;
  }

  v68 = v76;
  v158 = v75;
  if (v76 == v75)
  {
LABEL_39:
    v78 = v68;
    if (v68 < v46)
    {
      goto LABEL_140;
    }

    goto LABEL_58;
  }

  v166 = v47;
  v79 = *v169;
  v80 = *(v167 + 72);
  v81 = &(*v169)[v80 * (v68 - 1)];
  v171 = -v80;
  v4 = (v46 - v68);
  v155 = v80;
  v172 = v79;
  v82 = &v79[v68 * v80];
  v83 = v185;
  v84 = v176;
  while (2)
  {
    v170 = v68;
    v159 = v82;
    v160 = v4;
    v161 = v81;
LABEL_48:
    v184 = v4;
    v86 = v186;
    sub_10058B200(v82, v186, type metadata accessor for ShareRecord);
    v183 = v81;
    sub_10058B200(v81, v83, type metadata accessor for ShareRecord);
    sub_1000D2A70(v86 + *(v26 + 32), v84, &unk_101696900, &unk_10138B1E0);
    v87 = v180;
    v88 = *v179;
    if ((*v179)(v84, 1, v180) == 1)
    {
      v85 = v84;
LABEL_45:
      sub_10000B3A8(v85, &unk_101696900, &unk_10138B1E0);
      v83 = v185;
      sub_10058B268(v185, type metadata accessor for ShareRecord);
      sub_10058B268(v186, type metadata accessor for ShareRecord);
      v26 = v181;
      goto LABEL_46;
    }

    v182 = v82;
    v89 = *v178;
    (*v178)(v187, v84, v87);
    v90 = v175;
    sub_1000D2A70(v185 + *(v26 + 32), v175, &unk_101696900, &unk_10138B1E0);
    if (v88(v90, 1, v87) == 1)
    {
      (*v177)(v187, v87);
      v85 = v90;
      v84 = v176;
      goto LABEL_45;
    }

    v91 = v174;
    (v89)(v174, v90, v87);
    v92 = static Date.< infix(_:_:)();
    v93 = *v177;
    (*v177)(v91, v87);
    v93(v187, v87);
    v83 = v185;
    sub_10058B268(v185, type metadata accessor for ShareRecord);
    result = sub_10058B268(v186, type metadata accessor for ShareRecord);
    if ((v92 & 1) == 0)
    {
      v84 = v176;
      v26 = v181;
LABEL_46:
      v68 = v170 + 1;
      v81 = v161 + v155;
      v4 = v160 - 1;
      v82 = v159 + v155;
      if (v170 + 1 == v158)
      {
        v47 = v166;
        v17 = v165;
        v39 = v163;
        v46 = v154;
        v78 = v158;
        if (v158 < v154)
        {
          goto LABEL_140;
        }

        goto LABEL_58;
      }

      continue;
    }

    break;
  }

  v84 = v176;
  v26 = v181;
  v94 = v184;
  if (v172)
  {
    v95 = v182;
    v96 = v173;
    sub_100589B28(v182, v173, type metadata accessor for ShareRecord);
    v97 = v183;
    swift_arrayInitWithTakeFrontToBack();
    sub_100589B28(v96, v97, type metadata accessor for ShareRecord);
    v81 = v97 + v171;
    v82 = v95 + v171;
    v98 = __CFADD__(v94, 1);
    v4 = (v94 + 1);
    if (v98)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

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
  return result;
}

uint64_t sub_10057BA40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = __chkstk_darwin(v9 - 8);
  v88 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v83 - v13;
  v15 = __chkstk_darwin(v12);
  v91 = v83 - v16;
  __chkstk_darwin(v15);
  v97 = v83 - v17;
  v18 = type metadata accessor for Date();
  v100 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v84 = v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = v83 - v22;
  v24 = __chkstk_darwin(v21);
  v87 = v83 - v25;
  __chkstk_darwin(v24);
  v27 = (v83 - v26);
  v102 = type metadata accessor for ShareRecord(0);
  v28 = __chkstk_darwin(v102);
  v29 = __chkstk_darwin(v28);
  v96 = v83 - v30;
  v31 = __chkstk_darwin(v29);
  v98 = v83 - v32;
  result = __chkstk_darwin(v31);
  v94 = *(v36 + 72);
  if (!v94)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  v93 = v23;
  v37 = a2;
  if (a2 - a1 == 0x8000000000000000 && v94 == -1)
  {
    goto LABEL_70;
  }

  v38 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v94 == -1)
  {
    goto LABEL_71;
  }

  v39 = (a2 - a1) / v94;
  v105 = a1;
  v104 = a4;
  v99 = v18;
  v83[1] = v4;
  if (v39 >= v38 / v94)
  {
    v43 = v38 / v94 * v94;
    v97 = v35;
    if (a4 < a2 || a2 + v43 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v43;
    if (v43 >= 1)
    {
      v64 = -v94;
      v90 = (v100 + 48);
      v65 = (v100 + 32);
      v86 = v14;
      v87 = (v100 + 8);
      v66 = a4 + v43;
      v67 = v102;
      v101 = a4;
      v95 = -v94;
      v85 = (v100 + 32);
      do
      {
        v92 = v63;
        v83[0] = v63;
        v68 = v37;
        v98 = v37 + v64;
        v91 = v37;
        while (1)
        {
          if (v68 <= a1)
          {
            v105 = v68;
            v103 = v83[0];
            goto LABEL_68;
          }

          v69 = a3;
          v94 = v66;
          v100 = v66 + v64;
          v70 = v96;
          sub_10058B200(v66 + v64, v96, type metadata accessor for ShareRecord);
          v71 = v97;
          sub_10058B200(v98, v97, type metadata accessor for ShareRecord);
          sub_1000D2A70(v70 + *(v67 + 32), v14, &unk_101696900, &unk_10138B1E0);
          v72 = *v90;
          v73 = v99;
          if ((*v90)(v14, 1, v99) == 1)
          {
            sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
            v74 = 0;
          }

          else
          {
            v89 = *v65;
            (v89)(v93, v14, v73);
            v75 = v71 + *(v67 + 32);
            v76 = v88;
            sub_1000D2A70(v75, v88, &unk_101696900, &unk_10138B1E0);
            if (v72(v76, 1, v73) == 1)
            {
              (*v87)(v93, v73);
              sub_10000B3A8(v76, &unk_101696900, &unk_10138B1E0);
              v74 = 0;
              v65 = v85;
              v14 = v86;
            }

            else
            {
              v77 = v84;
              v65 = v85;
              (v89)(v84, v76, v73);
              v78 = v93;
              v74 = static Date.< infix(_:_:)();
              v79 = *v87;
              (*v87)(v77, v73);
              v79(v78, v73);
              v14 = v86;
            }
          }

          v80 = v69 + v95;
          sub_10058B268(v97, type metadata accessor for ShareRecord);
          sub_10058B268(v96, type metadata accessor for ShareRecord);
          v68 = v91;
          if (v74)
          {
            break;
          }

          v81 = v100;
          a3 = v80;
          if (v69 < v94 || v80 >= v94)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v69 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v92 = v81;
          v66 = v81;
          v67 = v102;
          v64 = v95;
          if (v100 <= v101)
          {
            v37 = v68;
            v63 = v92;
            goto LABEL_67;
          }
        }

        a3 = v80;
        if (v69 < v91 || v80 >= v91)
        {
          v37 = v98;
          v67 = v102;
          swift_arrayInitWithTakeFrontToBack();
          v82 = v101;
        }

        else
        {
          v37 = v98;
          v82 = v101;
          v67 = v102;
          if (v69 != v91)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v66 = v94;
        v64 = v95;
        v63 = v92;
      }

      while (v94 > v82);
    }

LABEL_67:
    v105 = v37;
    v103 = v63;
  }

  else
  {
    v40 = v39 * v94;
    v96 = v83 - v34;
    if (a4 < a1 || a1 + v40 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v41 = v98;
      v42 = v37;
    }

    else
    {
      v41 = v98;
      v42 = v37;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v93 = a4 + v40;
    v103 = a4 + v40;
    if (v40 >= 1 && v42 < a3)
    {
      v95 = v100 + 48;
      v88 = (v100 + 8);
      v89 = (v100 + 32);
      v92 = a3;
      v90 = v27;
      while (1)
      {
        v100 = a1;
        v101 = a4;
        v45 = v96;
        sub_10058B200(v42, v96, type metadata accessor for ShareRecord);
        sub_10058B200(a4, v41, type metadata accessor for ShareRecord);
        v46 = v102;
        v47 = v41;
        v48 = v97;
        sub_1000D2A70(v45 + *(v102 + 32), v97, &unk_101696900, &unk_10138B1E0);
        v49 = *v95;
        v50 = v99;
        if ((*v95)(v48, 1, v99) == 1)
        {
          goto LABEL_24;
        }

        v98 = v42;
        v51 = v90;
        v52 = *v89;
        (*v89)(v90, v97, v50);
        v53 = v47 + *(v46 + 32);
        v54 = v91;
        sub_1000D2A70(v53, v91, &unk_101696900, &unk_10138B1E0);
        if (v49(v54, 1, v50) == 1)
        {
          break;
        }

        v57 = v52;
        v58 = v87;
        v57(v87, v54, v50);
        v59 = v50;
        v60 = static Date.< infix(_:_:)();
        v61 = *v88;
        v62 = v58;
        v55 = v94;
        (*v88)(v62, v59);
        v61(v51, v59);
        sub_10058B268(v47, type metadata accessor for ShareRecord);
        sub_10058B268(v96, type metadata accessor for ShareRecord);
        v42 = v98;
        a4 = v101;
        v41 = v47;
        if (v60)
        {
          v56 = v100;
          if (v100 < v98 || v100 >= v98 + v55)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v100 != v98)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v42 += v55;
          goto LABEL_31;
        }

LABEL_25:
        v56 = v100;
        if (v100 < a4 || v100 >= a4 + v55)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v100 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v104 = a4 + v55;
        a4 += v55;
LABEL_31:
        a1 = v56 + v55;
        v105 = a1;
        if (a4 >= v93 || v42 >= v92)
        {
          goto LABEL_68;
        }
      }

      (*v88)(v51, v50);
      v48 = v54;
      v42 = v98;
      v45 = v96;
LABEL_24:
      sub_10000B3A8(v48, &unk_101696900, &unk_10138B1E0);
      sub_10058B268(v47, type metadata accessor for ShareRecord);
      sub_10058B268(v45, type metadata accessor for ShareRecord);
      v41 = v47;
      v55 = v94;
      a4 = v101;
      goto LABEL_25;
    }
  }

LABEL_68:
  sub_10060ABBC(&v105, &v104, &v103);
  return 1;
}

uint64_t sub_10057C4E8(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_10057C5DC;

  return v5(v2 + 16);
}

uint64_t sub_10057C5DC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_10057C760(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsRelayAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1010A7B80(a1, v6, v1 + v5);
}

unint64_t sub_10057C844()
{
  result = qword_1016A46B0;
  if (!qword_1016A46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A46B0);
  }

  return result;
}

unint64_t sub_10057C920(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return swift_errorRetain();
  }

  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_10057C95C()
{
  result = qword_1016A46B8;
  if (!qword_1016A46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A46B8);
  }

  return result;
}

uint64_t sub_10057CA44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1010A6B68(a1, v4, v5, v6, v10, v7, v8, v9);
}

uint64_t sub_10057CB34(char a1)
{
  v3 = *(type metadata accessor for ShareRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_100563B20(a1, v1 + v4, v6, v8, v9);
}

unint64_t sub_10057CC00()
{
  result = qword_1016BF380;
  if (!qword_1016BF380)
  {
    sub_1000BC580(&unk_1016BF350, &unk_1013E4AF0);
    sub_100003DFC(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF380);
  }

  return result;
}

uint64_t sub_10057CDD4()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(*(v1 - 1) + 64);
  v15 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v2 = v0 + v15;
  sub_100016590(*(v0 + v15), *(v0 + v15 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v15 + v3, v4);
  v6(v0 + v15 + v1[6], v4);

  v7 = v1[18];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v15 + v7, v8);
  v9 = v1[19];
  v10 = *(v5 + 48);
  if (!v10(v0 + v15 + v9, 1, v4))
  {
    v6(v2 + v9, v4);
  }

  v11 = v2 + v1[20];
  v12 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = *(v12 + 20);
    if (!v10(v11 + v13, 1, v4))
    {
      v6(v11 + v13, v4);
    }
  }

  return _swift_deallocObject(v0, ((v16 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10057D078(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

unint64_t sub_10057D12C()
{
  result = qword_1016A46D0;
  if (!qword_1016A46D0)
  {
    sub_1000BC580(&qword_1016A46C8, &unk_1013B2160);
    sub_100003DFC(&qword_1016A46D8, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope, &unk_1013F8654);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A46D0);
  }

  return result;
}

uint64_t sub_10057D1E0(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void **))
{
  v223 = a6;
  v222 = a4;
  v221 = a3;
  v220 = a2;
  v219 = a1;
  v171 = a13;
  v197 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v197 - 8);
  __chkstk_darwin(v197);
  v196 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for DispatchTime();
  v18 = *(v176 - 8);
  v19 = __chkstk_darwin(v176);
  v175 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v174 = &v171 - v21;
  v218 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v218 - 8);
  __chkstk_darwin(v218);
  v217 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for DispatchQoS();
  v24 = *(v229 - 8);
  __chkstk_darwin(v229);
  v228 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for SecureLocationsRelayAction(0);
  v215 = *(v216 - 8);
  v26 = __chkstk_darwin(v216);
  v213 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = v27;
  __chkstk_darwin(v26);
  v212 = &v171 - v28;
  v211 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v29 = __chkstk_darwin(v211);
  v187 = &v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v210 = &v171 - v31;
  v209 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v209);
  v243 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v34 = __chkstk_darwin(v33 - 8);
  v208 = &v171 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v242 = &v171 - v36;
  v245 = type metadata accessor for UUID();
  v185 = *(v245 - 8);
  v37 = __chkstk_darwin(v245);
  v186 = &v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v241 = &v171 - v40;
  v173 = v41;
  __chkstk_darwin(v39);
  v190 = &v171 - v42;
  v43 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v44 = __chkstk_darwin(v43 - 8);
  v191 = &v171 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v232 = &v171 - v46;
  v238 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v238);
  v237 = (&v171 - v47);
  v251 = type metadata accessor for SystemInfo.DeviceLockState();
  v48 = *(v251 - 8);
  v49 = __chkstk_darwin(v251);
  v250 = &v171 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v249 = &v171 - v51;
  v52 = dispatch_group_create();
  sub_1000BC4D4(&qword_1016A46E0, &qword_1013B0FF0);
  v53 = swift_allocObject();
  v54 = v53;
  *(v53 + 24) = 0;
  *(v53 + 16) = _swiftEmptyArrayStorage;
  v55 = *(a5 + 16);
  if (v55)
  {
    v240 = 0;
    v248 = (v48 + 104);
    v247 = (v48 + 8);
    v207 = (v185 + 56);
    v234 = (v185 + 16);
    v206 = a12;
    v205 = a11;
    v204 = (a8 & 1) == 0;
    v203 = a8 & 1;
    v227 = (v185 + 8);
    v195 = (v16 + 104);
    v202 = a10;
    v201 = a9;
    v194 = (v16 + 8);
    v246 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v226 = &v259;
    v225 = (v22 + 8);
    v193 = enum case for DispatchQoS.QoSClass.default(_:);
    v224 = (v24 + 8);
    v192 = (v185 + 32);
    v172 = (v18 + 8);
    v56 = (a5 + 48);
    v244 = xmmword_101385D80;
    v200 = xmmword_1013B0D90;
    v199 = xmmword_10138BBF0;
    v198 = a7 & 1;
    v236 = v52;
    v235 = v53;
    do
    {
      v254 = v56;
      v255 = v55;
      v59 = *(v56 - 16);
      v61 = *(v56 - 1);
      v60 = *v56;

      dispatch_group_enter(v52);
      v62 = swift_allocObject();
      *(v62 + 16) = v59;
      *(v62 + 24) = v61;
      *(v62 + 32) = v60;
      *(v62 + 40) = v54;
      *(v62 + 48) = v52;
      v253 = v62;
      v256 = v60;

      v252 = v52;
      sub_100908F24(_swiftEmptyArrayStorage);

      v63 = v249;
      static SystemInfo.lockState.getter();
      v64 = v250;
      v65 = v251;
      (*v248)(v250, v246, v251);
      sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = *v247;
      (*v247)(v64, v65);
      v67(v63, v65);
      if (v66)
      {
        v57 = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          v168 = v57;
          swift_once();
          v57 = v168;
        }

        os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage, v171);
        type metadata accessor for SPOwnerSessionError(0);
        v263 = 5;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
        _BridgedStoredNSError.init(_:userInfo:)();
        v58 = v237;
        *v237 = aBlock;
        swift_storeEnumTagMultiPayload();
        sub_100543540(v58, v59, v61, v256, v54, v252);
      }

      else
      {
        if (v59 == 2)
        {
          goto LABEL_19;
        }

        v68 = dispatch_group_create();
        v69 = v61;
        v70 = swift_allocObject();
        *(v70 + 16) = 0;
        v231 = v70 + 16;
        dispatch_group_enter(v68);
        v71 = *(v239 + 24);
        v72 = swift_allocObject();
        *(v72 + 16) = v70;
        *(v72 + 24) = v68;
        v73 = type metadata accessor for TaskPriority();
        v74 = *(v73 - 8);
        v75 = v232;
        (*(v74 + 56))(v232, 1, 1, v73);
        v76 = swift_allocObject();
        *(v76 + 16) = 0;
        *(v76 + 24) = 0;
        *(v76 + 32) = v71;
        *(v76 + 40) = v59;
        v233 = v69;
        *(v76 + 48) = v69;
        *(v76 + 56) = v256;
        *(v76 + 64) = sub_10058D6F8;
        *(v76 + 72) = v72;
        v77 = v75;
        v78 = v191;
        sub_1000D2A70(v77, v191, &qword_101698C00, &qword_10138B570);
        LODWORD(v72) = (*(v74 + 48))(v78, 1, v73);
        v79 = v70;

        v230 = v68;

        if (v72 == 1)
        {
          sub_10000B3A8(v78, &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v74 + 8))(v78, v73);
        }

        v80 = *(v76 + 16);
        swift_unknownObjectRetain();

        v61 = v233;
        if (v80)
        {
          swift_getObjectType();
          v81 = dispatch thunk of Actor.unownedExecutor.getter();
          v83 = v82;
          swift_unknownObjectRelease();
        }

        else
        {
          v81 = 0;
          v83 = 0;
        }

        sub_10000B3A8(v232, &qword_101698C00, &qword_10138B570);
        v84 = swift_allocObject();
        *(v84 + 16) = &unk_1013B0FF8;
        *(v84 + 24) = v76;
        if (v83 | v81)
        {
          v264 = 0;
          v265 = 0;
          v266 = v81;
          v267 = v83;
        }

        v52 = v236;
        v54 = v235;
        swift_task_create();

        v85 = v230;
        OS_dispatch_group.wait()();

        swift_beginAccess();
        LOBYTE(v85) = *(v79 + 16);

        if (v85)
        {
LABEL_19:
          v252 = *(v239 + 24);
          sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
          v86 = swift_allocObject();
          *(v86 + 16) = v244;
          *(v86 + 32) = v59;
          v87 = v256;
          *(v86 + 40) = v61;
          *(v86 + 48) = v87;
          v88 = *v207;
          v89 = v242;
          v90 = v245;
          (*v207)(v242, 1, 1, v245);

          v91 = v241;
          UUID.init()();
          v92 = v243;
          v233 = *v234;
          v233(v243, v91, v90);
          v93 = v208;
          sub_1000D2A70(v89, v208, &qword_1016980D0, &unk_10138F3B0);
          v94 = v209;
          v95 = *(v209 + 28);
          v88(v92 + v95, 1, 1, v90);
          *(v92 + v94[5]) = v86;
          *(v92 + v94[6]) = v204;
          sub_10002311C(v93, v92 + v95, &qword_1016980D0, &unk_10138F3B0);
          v96 = v92 + v94[8];
          *v96 = v223;
          *(v96 + 8) = v198;
          *(v92 + v94[9]) = v203;
          *(v92 + v94[10]) = v201;
          *(v92 + v94[11]) = v202;
          v97 = (v92 + v94[12]);
          v98 = v206;
          *v97 = v205;
          v97[1] = v98;
          *(v92 + v94[13]) = v200;
          v99 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
          v100 = v212;
          sub_10058B200(v92, &v212[*(v99 + 24)], type metadata accessor for MessagingOptions);
          *v100 = v219;
          v101 = v221;
          *(v100 + 8) = v220;
          *(v100 + 16) = v101;
          v102 = v222;
          *(v100 + 24) = v222;
          *(v100 + 32) = v199;
          swift_storeEnumTagMultiPayload();
          v103 = v213;
          sub_10058B200(v100, v213, type metadata accessor for SecureLocationsRelayAction);
          v104 = (*(v215 + 80) + 24) & ~*(v215 + 80);
          v105 = swift_allocObject();
          *(v105 + 16) = v252;
          sub_100589B28(v103, v105 + v104, type metadata accessor for SecureLocationsRelayAction);

          sub_100017D5C(v101, v102);

          v106 = v210;
          v107 = v240;
          unsafeFromAsyncTask<A>(_:)();
          if (v107)
          {

            sub_10058B268(v100, type metadata accessor for SecureLocationsRelayAction);
            v108 = v107;
            v109 = v227;
            goto LABEL_29;
          }

          sub_10058B268(v100, type metadata accessor for SecureLocationsRelayAction);

          v110 = v187;
          sub_10058B200(v106, v187, type metadata accessor for SecureLocationsRelayAction.Response);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v109 = v227;
          v112 = v192;
          if (EnumCaseMultiPayload == 4)
          {
            v240 = 0;
            sub_10058B268(v106, type metadata accessor for SecureLocationsRelayAction.Response);
            v113 = v245;
            v184 = *v109;
            v184(v241, v245);
            sub_10000B3A8(v242, &qword_1016980D0, &unk_10138F3B0);
            sub_10058B268(v243, type metadata accessor for MessagingOptions);
            v114 = v190;
            v115 = v110;
            v116 = v113;
            v252 = *v112;
            (v252)(v190, v115, v113);
            sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
            swift_allocObject();
            v117 = Future.init()();
            v118 = static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            v119 = qword_10177C378;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v120 = swift_allocObject();
            *(v120 + 16) = v244;
            v121 = UUID.uuidString.getter();
            v123 = v122;
            *(v120 + 56) = &type metadata for String;
            *(v120 + 64) = sub_100008C00();
            *(v120 + 32) = v121;
            *(v120 + 40) = v123;
            os_log(_:dso:log:_:_:)(v118, &_mh_execute_header, v119, "Setting %@ to pending", 21, 2, v120);

            v124 = v239;
            v125 = v114;
            v189 = *(v239 + 168);
            v126 = v186;
            v233(v186, v125, v116);
            v230 = *(v185 + 80);
            v183 = ((v230 + 24) & ~v230) + v173;
            v127 = (v230 + 24) & ~v230;
            v231 = v127;
            v128 = (v183 + 7) & 0xFFFFFFFFFFFFFFF8;
            v129 = swift_allocObject();
            *(v129 + 16) = v124;
            (v252)(v129 + v127, v126, v116);
            *(v129 + v128) = v117;
            v188 = v117;
            v261 = sub_10058D4DC;
            v262 = v129;
            aBlock = _NSConcreteStackBlock;
            v258 = 1107296256;
            v259 = sub_100006684;
            v260 = &unk_1016279E0;
            v130 = _Block_copy(&aBlock);

            v131 = v228;
            static DispatchQoS.unspecified.getter();
            v263 = _swiftEmptyArrayStorage;
            v179 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            v178 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            v180 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
            v132 = v217;
            v133 = v218;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v130);
            v182 = *v225;
            v182(v132, v133);
            v181 = *v224;
            v181(v131, v229);

            v134 = v186;
            v135 = v190;
            v233(v186, v190, v116);
            v136 = swift_allocObject();
            *(v136 + 16) = v124;
            (v252)(v136 + v231, v134, v116);
            v137 = (v136 + v128);
            v138 = v253;
            *v137 = sub_10057F26C;
            v137[1] = v138;

            Future.addSuccess(block:)();

            v139 = swift_allocObject();
            *(v139 + 16) = sub_10057F26C;
            *(v139 + 24) = v138;

            Future.addFailure(block:)();

            v140 = v175;
            static DispatchTime.now()();
            v141 = v135;
            v142 = v174;
            + infix(_:_:)();
            v177 = *v172;
            v143 = v176;
            v177(v140, v176);
            v144 = v141;
            v145 = v245;
            v233(v134, v144, v245);
            v146 = swift_allocObject();
            *(v146 + 16) = v124;
            (v252)(v146 + v231, v134, v145);
            v261 = sub_10058D4E0;
            v262 = v146;
            aBlock = _NSConcreteStackBlock;
            v258 = 1107296256;
            v259 = sub_100006684;
            v260 = &unk_101627A80;
            v147 = _Block_copy(&aBlock);

            v148 = v228;
            static DispatchQoS.unspecified.getter();
            v263 = _swiftEmptyArrayStorage;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
            _Block_release(v147);

            v182(v132, v133);
            v181(v148, v229);
            v177(v142, v143);
            v184(v190, v245);
          }

          else
          {
            sub_10058B268(v110, type metadata accessor for SecureLocationsRelayAction.Response);
            sub_10057C844();
            v108 = swift_allocError();
            swift_willThrow();
            sub_10058B268(v106, type metadata accessor for SecureLocationsRelayAction.Response);
LABEL_29:
            v240 = 0;
            (*v109)(v241, v245);
            sub_10000B3A8(v242, &qword_1016980D0, &unk_10138F3B0);
            sub_10058B268(v243, type metadata accessor for MessagingOptions);
            v153 = static os_log_type_t.error.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            v154 = qword_10177C378;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v155 = swift_allocObject();
            *(v155 + 16) = v244;
            aBlock = v108;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v156 = String.init<A>(describing:)();
            v158 = v157;
            *(v155 + 56) = &type metadata for String;
            *(v155 + 64) = sub_100008C00();
            *(v155 + 32) = v156;
            *(v155 + 40) = v158;
            os_log(_:dso:log:_:_:)(v153, &_mh_execute_header, v154, "Message send error: %@", 22, 2, v155);

            sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
            v159 = v196;
            v160 = v197;
            (*v195)(v196, v193, v197);
            v161 = static OS_dispatch_queue.global(qos:)();
            (*v194)(v159, v160);
            v162 = swift_allocObject();
            v163 = v253;
            v162[2] = sub_10057F26C;
            v162[3] = v163;
            v162[4] = v108;
            v261 = sub_10058D73C;
            v262 = v162;
            aBlock = _NSConcreteStackBlock;
            v258 = 1107296256;
            v259 = sub_100006684;
            v260 = &unk_101627990;
            v164 = _Block_copy(&aBlock);

            swift_errorRetain();
            v165 = v228;
            static DispatchQoS.unspecified.getter();
            v263 = _swiftEmptyArrayStorage;
            sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
            v166 = v217;
            v167 = v218;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v164);

            (*v225)(v166, v167);
            (*v224)(v165, v229);
          }

          v52 = v236;
          v54 = v235;
          goto LABEL_7;
        }

        v149 = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v150 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v151 = swift_allocObject();
        *(v151 + 16) = v244;
        *(v151 + 56) = &type metadata for String;
        *(v151 + 64) = sub_100008C00();
        v152 = v256;
        *(v151 + 32) = v61;
        *(v151 + 40) = v152;

        os_log(_:dso:log:_:_:)(v149, &_mh_execute_header, v150, "Not sending since %@ has no IDS registered devices", 50, 2, v151);

        type metadata accessor for SPOwnerSessionError(0);
        v263 = 12;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
        _BridgedStoredNSError.init(_:userInfo:)();
        v58 = v237;
        *v237 = aBlock;
        swift_storeEnumTagMultiPayload();
        sub_100543540(v58, v59, v61, v152, v54, v252);
      }

      sub_10000B3A8(v58, &qword_10169F358, &qword_1013A0810);
LABEL_7:
      v56 = v254 + 3;
      v55 = v255 - 1;
    }

    while (v255 != 1);
  }

  OS_dispatch_group.wait()();
  v169 = v171;
  if (v171)
  {
    sub_1000BC4D4(&qword_1016A46E8, &qword_1013B1008);
    OSAllocatedUnfairLock<A>.stateSnapshot.getter();
    v169(aBlock);
  }
}

void sub_10057F27C(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 16) = a1;
  dispatch_group_leave(v3);
}

unint64_t sub_10057F2EC()
{
  result = qword_1016A46F8;
  if (!qword_1016A46F8)
  {
    sub_1000BC580(&qword_1016A46F0, &qword_1013B1020);
    sub_100003DFC(&qword_1016A4700, type metadata accessor for BeaconObservation, &unk_1013C6970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A46F8);
  }

  return result;
}

unint64_t sub_10057F3A0()
{
  result = qword_1016A4718;
  if (!qword_1016A4718)
  {
    sub_1000BC580(&qword_1016A4710, &qword_1013B1030);
    sub_100003DFC(&qword_10169A618, type metadata accessor for CircleTrustDeclineEnvelopeV1, &unk_1013AE2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4718);
  }

  return result;
}

uint64_t sub_10057F454()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100546CB0(v2, v3);
}

uint64_t sub_10057F4B8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100546944(a1, v1 + v5, v7, v8);
}

uint64_t sub_10057F5E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BA6C8;

  return sub_100546C24(v2, v3);
}

uint64_t sub_10057F698()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10054712C(v2, v3, v4);
}

uint64_t sub_10057F6FC()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10057624C(v4, v0 + v3);
}

uint64_t sub_10057F7D4()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1005764AC(v0 + v3, v4);
}

uint64_t sub_10057F8D8()
{
  v1 = v0;
  v72 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v4 - 8);
  v65 = &v57 - v5;
  v6 = sub_1000BC4D4(&qword_1016A4930, &qword_1013B1300);
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  __chkstk_darwin(v6);
  v66 = &v57 - v8;
  v59 = sub_1000BC4D4(&qword_1016A4938, &qword_1013B1308);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v10 = &v57 - v9;
  v61 = sub_1000BC4D4(&qword_1016A4940, &qword_1013B1310);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v12 = &v57 - v11;
  v63 = sub_1000BC4D4(&qword_1016A4948, &qword_1013B1318);
  v64 = *(v63 - 1);
  __chkstk_darwin(v63);
  v58 = &v57 - v13;
  v14 = v0[3];
  v15 = v14[5];
  v16 = v14[6];
  v14[5] = sub_10058AE90;
  v14[6] = v1;

  sub_1000BB27C(v15, v16);
  v17 = v14[7];
  v18 = v14[8];
  v14[7] = sub_10058AED4;
  v14[8] = v1;

  sub_1000BB27C(v17, v18);
  v19 = v14[9];
  v20 = v14[10];
  v14[9] = sub_10058AF08;
  v14[10] = v1;

  sub_1000BB27C(v19, v20);
  v21 = v14[11];
  v22 = v14[12];
  v14[11] = sub_10058AF38;
  v14[12] = v1;

  sub_1000BB27C(v21, v22);
  v23 = v14[13];
  v24 = v14[14];
  v14[13] = sub_10058AF40;
  v14[14] = v1;

  sub_1000BB27C(v23, v24);
  v25 = v1[4];
  v26 = v25[10];
  v27 = v25[11];
  v25[10] = sub_10058AF48;
  v25[11] = v1;

  sub_1000BB27C(v26, v27);
  v28 = v25[12];
  v29 = v25[13];
  v25[12] = sub_10058AF8C;
  v25[13] = v1;

  sub_1000BB27C(v28, v29);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10058AFC0;
  *(v30 + 24) = v1;
  v31 = v25[14];
  v32 = v25[15];
  v25[14] = sub_10058AFF0;
  v25[15] = v30;

  sub_1000BB27C(v31, v32);
  v33 = v25[20];
  v34 = v25[21];
  v25[20] = sub_10058B03C;
  v25[21] = v1;

  sub_1000BB27C(v33, v34);
  aBlock = v1[42];

  sub_1000BC4D4(&unk_1016B2870, &qword_1013B1320);
  sub_1000BC4D4(&qword_1016A4950, &qword_1013B1328);
  v57 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_1000041A4(&qword_101697B68, &unk_1016B2870, &qword_1013B1320, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_1000BC4D4(&qword_1016A4958, &qword_1013B1330);
  v35 = v59;
  Publishers.Map.map<A>(_:)();
  (*(v60 + 8))(v10, v35);
  sub_1000041A4(&qword_1016A4960, &qword_1016A4940, &qword_1013B1310, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10058B044();
  v36 = v58;
  v37 = v61;
  Publisher<>.removeDuplicates()();
  (*(v62 + 8))(v12, v37);
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016A4978, &qword_1016A4948, &qword_1013B1318, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v38 = v63;
  v39 = Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v36, v38);
  v1[26] = v39;

  v64 = sub_100A96AF8();
  aBlock = v64;
  v81[0] = v1[25];
  v40 = v81[0];
  v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v42 = v65;
  (*(*(v41 - 8) + 56))(v65, 1, 1, v41);
  v63 = v40;
  sub_1000BC4D4(&qword_1016A4980, &qword_1013B1338);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A4988, &qword_1016A4980, &qword_1013B1338, v57);
  sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v43 = v66;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v42, &unk_1016B0FE0, &unk_101391980);

  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016A4990, &qword_1016A4930, &qword_1013B1300, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v44 = v67;
  v45 = Publisher<>.sink(receiveValue:)();

  (v68[1])(v43, v44);
  v1[27] = v45;

  swift_weakInit();
  swift_weakInit();
  swift_weakAssign();
  swift_weakAssign();
  v82 = 0;
  swift_beginAccess();
  sub_10002311C(v81, (v1 + 8), &qword_1016A4998, &qword_1013B1340);
  swift_endAccess();
  v46 = v1[21];
  swift_weakInit();
  swift_weakAssign();
  v81[1] = v46;
  swift_beginAccess();
  v67 = v46;
  sub_10002311C(v81, (v1 + 11), &qword_1016A49A0, &unk_1013B1348);
  swift_endAccess();
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v14;
  *(v48 + 24) = v47;
  v79 = sub_10058B12C;
  v80 = v48;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v68 = &v77;
  v77 = sub_100006684;
  v78 = &unk_101629150;
  v49 = _Block_copy(&aBlock);

  v50 = v69;
  static DispatchQoS.unspecified.getter();
  v81[0] = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v51 = v70;
  v52 = v72;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);
  (*(v74 + 8))(v51, v52);
  (*(v71 + 8))(v50, v73);

  sub_100579FAC();
  v53 = v1[7];
  v54 = swift_allocObject();
  *(v54 + 16) = sub_10058D4E4;
  *(v54 + 24) = v1;
  v79 = sub_10040B9F8;
  v80 = v54;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_10013FE14;
  v78 = &unk_1016291A0;
  v55 = _Block_copy(&aBlock);

  dispatch_sync(v53, v55);
  _Block_release(v55);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100580650(int a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  LODWORD(v55) = a1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = dispatch_group_create();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v54 = v8 + 16;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  dispatch_group_enter(v7);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = v7;
  v11 = type metadata accessor for TaskPriority();
  v12 = (*(v11 - 8) + 56);
  v53 = *v12;
  v53(v6, 1, 1, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = sub_10058C978;
  *(v13 + 40) = v10;
  v14 = v6;
  *(v13 + 48) = v55;
  *(v13 + 56) = v56;
  *(v13 + 64) = a3;

  v56 = v9;

  v15 = v7;

  sub_10025EDD4(0, 0, v14, &unk_1013B13B8, v13);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  if (!*(v9 + 16))
  {
    v49 = v12;
    v50 = v11;
    swift_beginAccess();
    v22 = *(v8 + 24);
    v23 = v8;
    if (!v22)
    {

      goto LABEL_16;
    }

    v47 = v14;
    v48 = *(v8 + 16);
    v54 = v22;

    v24 = dispatch_group_create();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v51 = (v25 + 16);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = (v26 + 16);
    dispatch_group_enter(v24);
    v28 = swift_allocObject();
    v28[2] = v25;
    v28[3] = v26;
    v28[4] = v24;
    v29 = qword_1016944B0;
    swift_retain_n();
    v55 = v24;

    if (v29 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&qword_1016A4A28, &qword_1013B13C0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v30 = v57;
    v52 = v23;
    if (v57)
    {
      v31 = static os_log_type_t.debug.getter();
      if (qword_101695058 != -1)
      {
        v45 = v31;
        swift_once();
        v31 = v45;
      }

      os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, qword_10177C3A0, "Using cached family correlationIdentifiers", 42, 2, _swiftEmptyArrayStorage);
      swift_beginAccess();
      *(v25 + 16) = v30;

      v32 = v55;
      dispatch_group_leave(v55);
    }

    else
    {
      sub_1000BC4D4(&qword_1016A4768, &unk_1013B10E0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v33 = v57;
      if ((v58 & 1) == 0)
      {
        sub_100527E88(v57);
        v41 = v40;
        sub_1001DB7B8(v33, 0);
        v42 = sub_101129FC8(v41);

        v43 = v47;
        v53(v47, 1, 1, v50);
        v44 = swift_allocObject();
        v44[2] = 0;
        v44[3] = 0;
        v44[4] = v42;
        v44[5] = sub_10058CABC;
        v44[6] = v28;
        sub_10025EDD4(0, 0, v43, &unk_1013B13C8, v44);

        v32 = v55;
        goto LABEL_20;
      }

      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      swift_willThrowTypedImpl();
      v57 = v33;
      swift_errorRetain();
      swift_errorRetain();
      swift_willThrowTypedImpl();
      swift_beginAccess();
      *v27 = v33;

      v32 = v55;
      dispatch_group_leave(v55);

      sub_1001DB7B8(v33, 1);
      sub_1001DB7B8(v33, 1);
    }

LABEL_20:
    OS_dispatch_group.wait()();
    swift_beginAccess();
    if (*v27)
    {
      v53 = v26;
      swift_errorRetain();

      v34 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v35 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_101385D80;
      v37 = _convertErrorToNSError(_:)();
      *(v36 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
      *(v36 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr, &protocol conformance descriptor for NSObject);
      *(v36 + 32) = v37;
      os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "Error getting membersCorrelationIdentifiers: %@.", 48, 2, v36);

      goto LABEL_5;
    }

    v38 = v51;
    swift_beginAccess();
    v39 = *v38;
    if (*v38)
    {

      v20 = sub_10111EACC(v48, v54, v39);

      return v20 & 1;
    }

LABEL_16:

    goto LABEL_6;
  }

  swift_errorRetain();
  v16 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v17 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  v19 = _convertErrorToNSError(_:)();
  *(v18 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
  *(v18 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr, &protocol conformance descriptor for NSObject);
  *(v18 + 32) = v19;
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Error getting correlationIdentifier: %@.", 40, 2, v18);

LABEL_5:

LABEL_6:
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_100580FCC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v52 = a5;
  v53 = a6;
  v49 = a4;
  v51 = a3;
  v50 = a2;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v13;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v14 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v57 = &type metadata for Bool;
  LOBYTE(v56) = 1;
  sub_1001E6224(&v56, v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v14;
  sub_100FFB368(v55, v15, v17, isUniquelyReferenced_nonNull_native);

  v19 = v54;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = UUID.data.getter();
  v57 = &type metadata for Data;
  *&v56 = v23;
  *(&v56 + 1) = v24;
  sub_1001E6224(&v56, v55);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v54 = v19;
  sub_100FFB368(v55, v20, v22, v25);

  v26 = v54;
  if (v50)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    v57 = &type metadata for Bool;
    LOBYTE(v56) = 1;
    sub_1001E6224(&v56, v55);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v26;
    sub_100FFB368(v55, v27, v29, v30);

    v26 = v54;
  }

  sub_1000D2A70(v51, v8, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v31 = v48;
    (*(v10 + 32))(v48, v8, v9);
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    v35 = UUID.uuidString.getter();
    v57 = &type metadata for String;
    *&v56 = v35;
    *(&v56 + 1) = v36;
    sub_1001E6224(&v56, v55);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v26;
    sub_100FFB368(v55, v32, v34, v37);

    (*(v10 + 8))(v31, v9);
    v26 = v54;
    if (v52)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
  if ((v52 & 1) == 0)
  {
LABEL_7:
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    v57 = &type metadata for Double;
    *&v56 = v49;
    sub_1001E6224(&v56, v55);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v26;
    sub_100FFB368(v55, v38, v40, v41);

    v26 = v54;
  }

LABEL_8:
  if (v53)
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
    v57 = &type metadata for Bool;
    LOBYTE(v56) = 1;
    sub_1001E6224(&v56, v55);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v26;
    sub_100FFB368(v55, v42, v44, v45);

    return v54;
  }

  return v26;
}

void *sub_10058149C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (v5)
  {
LABEL_10:
    v10 = *(*(a1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *(v10 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);

      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v13 > v8[3] >> 1)
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_100A5C944(isUniquelyReferenced_nonNull_native, v15, 1, v8);
    }

    v5 &= v5 - 1;
    if (*(v10 + 16))
    {
      v16 = (v8[3] >> 1) - v8[2];
      type metadata accessor for ShareRecord(0);
      if (v16 < v11)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v11)
      {
        v17 = v8[2];
        v18 = __OFADD__(v17, v11);
        v19 = v17 + v11;
        if (v18)
        {
          goto LABEL_28;
        }

        v8[2] = v19;
      }
    }

    else
    {

      if (v11)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  v21 = v8;

  sub_100579F04(&v21);

  return v21;
}

uint64_t sub_1005816AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a2;
  v7 = type metadata accessor for ShareInstruction(0);
  v103 = *(v7 - 8);
  __chkstk_darwin(v7);
  v104 = v8;
  v105 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  __chkstk_darwin(v115);
  v116 = &v102 - v9;
  v10 = type metadata accessor for Date();
  v113 = *(v10 - 8);
  v114 = v10;
  __chkstk_darwin(v10);
  v112 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v102 - v13;
  v121 = type metadata accessor for ShareRecord(0);
  *&v120 = *(v121 - 8);
  v15 = __chkstk_darwin(v121);
  v109 = (&v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v107 = &v102 - v18;
  __chkstk_darwin(v17);
  v110 = &v102 - v19;
  v20 = swift_allocObject();
  v117 = a3;
  v118 = a4;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v122 = v20;

  LODWORD(v119) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v126 = qword_10177C378;
  v123 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v21 = swift_allocObject();
  v106 = xmmword_10138BBE0;
  *(v21 + 16) = xmmword_10138BBE0;
  v22 = a1 + *(v7 + 24);
  v23 = *(type metadata accessor for OwnedBeaconRecord(0) + 20);
  v24 = UUID.uuidString.getter();
  v26 = v25;
  *(v21 + 56) = &type metadata for String;
  v27 = sub_100008C00();
  *(v21 + 64) = v27;
  *(v21 + 32) = v24;
  *(v21 + 40) = v26;
  v108 = v7;
  v28 = *(v7 + 32);
  v111 = a1;
  v29 = a1 + v28;
  v30 = UUID.uuidString.getter();
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v27;
  v124 = v27;
  *(v21 + 72) = v30;
  *(v21 + 80) = v31;
  os_log(_:dso:log:_:_:)(v119, &_mh_execute_header, v126, "1) Send Family Share for beacon: %@, shareIdentifier: %@", 56, 2, v21);

  v32 = v23;
  v33 = v125;
  sub_100541328(v29, v14);
  v34 = v121;
  if ((*(v120 + 48))(v14, 1, v121) != 1)
  {
    v66 = v110;
    sub_100589B28(v14, v110, type metadata accessor for ShareRecord);
    v67 = static os_log_type_t.default.getter();
    v68 = swift_allocObject();
    v120 = xmmword_101385D80;
    *(v68 + 16) = xmmword_101385D80;
    sub_10058B200(v66, v107, type metadata accessor for ShareRecord);
    v69 = String.init<A>(describing:)();
    v70 = v124;
    *(v68 + 56) = &type metadata for String;
    *(v68 + 64) = v70;
    *(v68 + 32) = v69;
    *(v68 + 40) = v71;
    v72 = v126;
    os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v126, "Considering existing ShareRecord %@", 35, 2, v68);

    v73 = (v66 + v34[10]);
    v74 = v34;
    v75 = v72;
    v77 = *v73;
    v76 = v73[1];
    v78 = HIBYTE(v76) & 0xF;
    if ((v76 & 0x2000000000000000) == 0)
    {
      v78 = v77 & 0xFFFFFFFFFFFFLL;
    }

    if (v78)
    {
      v79 = static os_log_type_t.default.getter();
      v80 = swift_allocObject();
      *(v80 + 16) = v120;
      *(v80 + 56) = &type metadata for String;
      *(v80 + 64) = v70;
      *(v80 + 32) = v77;
      *(v80 + 40) = v76;

      os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v75, "Ignoring request to share. ShareRecord already accepted (correlationIdentifier: %@)", 83, 2, v80);
    }

    else
    {
      v87 = *(v125 + 320);
      v88 = sub_1010B2678(v66 + v74[7], 0);
      v90 = v113;
      v89 = v114;
      if (v88)
      {
        __chkstk_darwin(v88);
        *(&v102 - 4) = v87;
        *(&v102 - 24) = 0;
        *(&v102 - 2) = v29;
        v91 = v112;
        OS_dispatch_queue.sync<A>(execute:)();
        v92 = sub_1010B2678(v91, 0);
        v93 = *(v90 + 8);
        v93(v91, v89);
        if (v92)
        {
          v94 = v112;
          static Date.trustedNow.getter(v112);
          sub_1010B1D04(v29, v94, 0);
          v93(v94, v89);
          sub_1010B22E4(v29, 1);
          sub_100541920(v111, v125);
LABEL_17:
          v100 = v116;
          sub_10058B200(v66, v116, type metadata accessor for ShareRecord);
          swift_storeEnumTagMultiPayload();
          sub_100540EAC(v100, v117, v118);
          sub_10000B3A8(v100, &unk_1016B1650, &unk_1013B1110);
          goto LABEL_18;
        }
      }

      v95 = static os_log_type_t.default.getter();
      v96 = swift_allocObject();
      *(v96 + 16) = v120;
      v97 = UUID.uuidString.getter();
      v98 = v124;
      *(v96 + 56) = &type metadata for String;
      *(v96 + 64) = v98;
      *(v96 + 32) = v97;
      *(v96 + 40) = v99;
      os_log(_:dso:log:_:_:)(v95, &_mh_execute_header, v126, "Ignoring request to share. ShareRecord last attempted recently. (shareIdentifier: %@)", 85, 2, v96);
    }

    goto LABEL_17;
  }

  v35 = v33;
  sub_10000B3A8(v14, &qword_1016A4780, &qword_1013B34F0);
  v36 = static os_log_type_t.default.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = v106;
  v102 = v32;
  v38 = UUID.uuidString.getter();
  v39 = v124;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = v39;
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  v41 = UUID.uuidString.getter();
  *(v37 + 96) = &type metadata for String;
  *(v37 + 104) = v39;
  *(v37 + 72) = v41;
  *(v37 + 80) = v42;
  os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v126, "Did not find existing ShareRecord for beacon: %@, shareIdentifier: %@", 69, 2, v37);

  v43 = *(v33 + 144);
  type metadata accessor for BeaconKeyManager(0);
  v110 = v43;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *&v120 = 0;
  v44 = v22;
  v119 = sub_10130980C(v22, v127);

  v45 = v34[5];
  v46 = type metadata accessor for UUID();
  v47 = *(*(v46 - 8) + 16);
  v48 = v109;
  v47(v109 + v45, v29, v46);
  v47(v48 + v34[6], v44 + v102, v46);
  static Date.trustedNow.getter(v48 + v34[7]);
  v49 = v108;
  v50 = v111;
  sub_1000D2A70(v111 + *(v108 + 36), v48 + v34[8], &unk_101696900, &unk_10138B1E0);
  v51 = v50 + *(v49 + 28);
  v52 = *v51;
  *v48 = xmmword_10138C660;
  v53 = v48 + v34[9];
  *v53 = v52;
  v54 = *(v51 + 16);
  *(v53 + 1) = *(v51 + 8);
  *(v53 + 2) = v54;
  v55 = (v48 + v34[10]);
  *v55 = 0;
  v55[1] = 0xE000000000000000;
  *(v48 + v34[11]) = v119;
  *(v48 + v34[12]) = 1;
  v56 = *(v35 + 320);
  __chkstk_darwin(v54);
  *(&v102 - 4) = v56;
  *(&v102 - 24) = 0;
  *(&v102 - 2) = v29;

  v57 = v112;
  v58 = v114;
  OS_dispatch_queue.sync<A>(execute:)();
  LOBYTE(v46) = sub_1010B2678(v57, 0);
  v59 = *(v113 + 8);
  v59(v57, v58);
  if (v46)
  {
    static Date.trustedNow.getter(v57);
    sub_1010B1D04(v29, v57, 0);
    v59(v57, v58);
    sub_1010B22E4(v29, 1);
    v60 = v105;
    sub_10058B200(v50, v105, type metadata accessor for ShareInstruction);
    v61 = (*(v103 + 80) + 24) & ~*(v103 + 80);
    v62 = (v104 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    *(v63 + 16) = v125;
    sub_100589B28(v60, v63 + v61, type metadata accessor for ShareInstruction);
    v64 = (v63 + v62);
    v65 = v122;
    *v64 = sub_100589280;
    v64[1] = v65;

    sub_1006DF24C(v48, 0, sub_100589288, v63);
  }

  else
  {
    v81 = static os_log_type_t.default.getter();
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_101385D80;
    v83 = UUID.uuidString.getter();
    v84 = v124;
    *(v82 + 56) = &type metadata for String;
    *(v82 + 64) = v84;
    *(v82 + 32) = v83;
    *(v82 + 40) = v85;
    os_log(_:dso:log:_:_:)(v81, &_mh_execute_header, v126, "Ignoring request to share. ShareRecord last attempted recently. (shareIdentifier: %@)", 85, 2, v82);

    v86 = v116;
    sub_10058B200(v48, v116, type metadata accessor for ShareRecord);
    swift_storeEnumTagMultiPayload();
    sub_100540EAC(v86, v117, v118);
    sub_10000B3A8(v86, &unk_1016B1650, &unk_1013B1110);
  }

  v66 = v48;
LABEL_18:
  sub_10058B268(v66, type metadata accessor for ShareRecord);
}

uint64_t sub_100582460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = (a2 + *(v4 + 32));
  v6 = *v5;
  v7 = v5[1];
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v9 = type metadata accessor for MessagingMessageContext(0);
  if (v8)
  {
    v10 = (a1 + *(v9 + 48));
    if (v6 != *v10 || v7 != v10[1])
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  v13 = a1 + *(v9 + 24);
  v15 = *(v13 + 8);
  v14 = *(v13 + 16);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v16 _stripPotentialTokenURIWithToken:0];

  if (v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = a2 + *(v4 + 28);
    if (*(v21 + 8) != v18 || *(v21 + 16) != v20)
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v23 & 1;
    }

    return 1;
  }

  v24 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v25 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101385D80;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100008C00();
  *(v26 + 32) = v15;
  *(v26 + 40) = v14;

  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "No fromID for %@", 16, 2, v26);

  return 0;
}

uint64_t sub_100582674()
{
  if (qword_1016944B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_1016A4768, &unk_1013B10E0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v1 = v0;
  v2 = v20;
  sub_1000BC4D4(&qword_1016A4770, &qword_1013E4E70);
  unsafeFromAsyncTask<A>(_:)();
  if (v0)
  {
    v3 = v0;
    if ((v21 & 1) == 0)
    {
      swift_errorRetain();
      v4 = static os_log_type_t.error.getter();
      if (qword_101695058 != -1)
      {
        swift_once();
      }

      v5 = qword_10177C3A0;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_101385D80;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v7 = String.init<A>(describing:)();
      v9 = v8;
      *(v6 + 56) = &type metadata for String;
      *(v6 + 64) = sub_100008C00();
      *(v6 + 32) = v7;
      *(v6 + 40) = v9;
      os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "FMFFollowers error: %@", 22, 2, v6, v0);

      swift_willThrow();
      sub_1001DB7B8(v0, 1);
      v10 = 0;
LABEL_14:
      sub_1001DB7B8(v2, v10);
      return v2;
    }

LABEL_11:
    swift_errorRetain();
    v13 = static os_log_type_t.error.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    v14 = qword_10177C3A0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "FamilyCircle error: %@", 22, 2, v15);

    swift_willThrow();
    sub_1001DB7B8(v3, v1 != 0);
    v10 = 1;
    goto LABEL_14;
  }

  v3 = v20;
  v11 = qword_101694CF0;

  if (v11 != -1)
  {
    v12 = swift_once();
  }

  __chkstk_darwin(v12);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_1001DB7B8(v20, 0);
  if (v21)
  {
    goto LABEL_11;
  }

  return v2;
}

void *sub_100582A7C()
{
  v2 = sub_100582674();
  if (v1)
  {
    return v0;
  }

  v4 = v3;
  v5 = v2;
  v6 = [objc_opt_self() defaultStore];
  if (!v6)
  {
    goto LABEL_83;
  }

  v7 = v6;
  v8 = [v6 aa_primaryAppleAccount];

  if (!v8)
  {

    v25 = static os_log_type_t.error.getter();
    if (qword_101695058 != -1)
    {
      v106 = v25;
      swift_once();
      v25 = v106;
    }

    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10177C3A0, "Could not obtain aa_primaryAppleAccount!", 40, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPOwnerSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v0 = v121;
    swift_willThrow();
    return v0;
  }

  v9 = [v8 username];
  if (!v9)
  {
    goto LABEL_88;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v11, v13);
  if (!v16)
  {

    v26 = static os_log_type_t.error.getter();
    if (qword_101695058 != -1)
    {
      v107 = v26;
      swift_once();
      v26 = v107;
    }

    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, qword_10177C3A0, "Could not obtain local account MessageDestination!", 50, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPOwnerSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v0 = v121;
    swift_willThrow();

    return v0;
  }

  v17 = v14;
  v18 = v15;
  v19 = v16;
  v117 = v5;
  sub_100527E88(v5);
  v21 = sub_101129FC8(v20);

  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v17;
  v23 = inited + 32;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  v24 = sub_101129FC8(inited);
  swift_setDeallocating();
  sub_1001BAE8C(v23);
  v111 = v8;
  if (*(v24 + 16) <= v21[2] >> 3)
  {
    v121 = v21;
    v21 = &v121;
    sub_10087D930(v24);

    v115 = v121;
  }

  else
  {
    v115 = sub_100614D54(v24, v21);
  }

  v28 = v4 + 56;
  v29 = 1 << *(v4 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v4 + 56);
  v32 = (v29 + 63) >> 6;

  v33 = 0;
  v119 = _swiftEmptyArrayStorage;
  for (i = v4; v31; v4 = i)
  {
LABEL_23:
    v35 = *(v4 + 48) + 40 * (__clz(__rbit64(v31)) | (v33 << 6));
    v36 = *(v35 + 8);
    v121 = *v35;
    v122 = v36;
    sub_1000DF96C();

    v37 = StringProtocol.contains<A>(_:)();
    v38 = String._bridgeToObjectiveC()();
    if (v37)
    {
      v39 = IDSCopyIDForEmailAddress();

      if (!v39)
      {
        goto LABEL_84;
      }

      v40 = 0;
    }

    else
    {
      v39 = IDSCopyIDForPhoneNumber();

      if (!v39)
      {
        goto LABEL_85;
      }

      v40 = 1;
    }

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v42;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v119 = sub_100A5C1F8(0, *(v119 + 2) + 1, 1, v119);
    }

    v44 = *(v119 + 2);
    v43 = *(v119 + 3);
    if (v44 >= v43 >> 1)
    {
      v119 = sub_100A5C1F8((v43 > 1), v44 + 1, 1, v119);
    }

    *(v119 + 2) = v44 + 1;
    v45 = &v119[24 * v44];
    v45[32] = v40;
    v31 &= v31 - 1;
    *(v45 + 5) = v41;
    *(v45 + 6) = v21;
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v32)
    {

      v112 = sub_101129FC8(v119);

      v21 = static os_log_type_t.default.getter();
      if (qword_101695058 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_80;
    }

    v31 = *(v28 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  swift_once();
LABEL_35:
  v46 = qword_10177C3A0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_101385D80;
  sub_100589064();
  v48 = Set.description.getter();
  v50 = v49;
  *(v47 + 56) = &type metadata for String;
  v51 = sub_100008C00();
  *(v47 + 64) = v51;
  *(v47 + 32) = v48;
  *(v47 + 40) = v50;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v46, "familyAppleIDs: %@", 18, 2, v47);

  v52 = static os_log_type_t.default.getter();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_101385D80;
  v54 = Set.description.getter();
  *(v53 + 56) = &type metadata for String;
  *(v53 + 64) = v51;
  *(v53 + 32) = v54;
  *(v53 + 40) = v55;
  os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v46, "followerDestinations: %@", 24, 2, v53);

  v128 = _swiftEmptyDictionarySingleton;
  v118 = sub_100A03FDC(v112, v115);

  v56 = v117;
  if ((v117 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
    sub_100009D18(&qword_1016A4758, &qword_1016996A0, FAFamilyMember_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v56 = v123;
    v57 = v124;
    v58 = v125;
    v59 = v126;
    v21 = v127;
  }

  else
  {
    v59 = 0;
    v60 = -1 << *(v117 + 32);
    v57 = v117 + 56;
    v58 = ~v60;
    v61 = -v60;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    else
    {
      v62 = -1;
    }

    v21 = (v62 & *(v117 + 56));
  }

  v63 = (v58 + 64) >> 6;
  v112 = _swiftEmptyDictionarySingleton;
  v117 = v56;
  while (2)
  {
    v64 = v59;
    v65 = v21;
    if (v56 < 0)
    {
LABEL_45:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
        swift_dynamicCast();
        v68 = v121;
        v59 = v64;
        v69 = v65;
        goto LABEL_52;
      }

LABEL_77:
      sub_1000128F8(v56);
      sub_1005285EC(v118, &v128);
      v105 = v104;

      v0 = sub_10039CA08(v105);

      return v0;
    }

    while (1)
    {
      while (1)
      {
        v70 = v64;
        v71 = v65;
        v59 = v64;
        if (!v65)
        {
          do
          {
            v59 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              goto LABEL_79;
            }

            if (v59 >= v63)
            {
              goto LABEL_77;
            }

            v71 = *(v57 + 8 * v59);
            ++v70;
          }

          while (!v71);
        }

        v69 = (v71 - 1) & v71;
        v68 = *(*(v56 + 48) + ((v59 << 9) | (8 * __clz(__rbit64(v71)))));
LABEL_52:
        if (!v68)
        {
          goto LABEL_77;
        }

        v120 = v69;
        v72 = [v68 appleID];
        if (v72)
        {
          break;
        }

        LODWORD(v115) = static os_log_type_t.error.getter();
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_101385D80;
        v21 = v63;
        *(v66 + 56) = sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
        *(v66 + 64) = sub_100009D18(&qword_1016A4760, &qword_1016996A0, FAFamilyMember_ptr, &protocol conformance descriptor for NSObject);
        *(v66 + 32) = v68;
        v67 = v68;
        os_log(_:dso:log:_:_:)(v115, &_mh_execute_header, v46, "FAFamilyMember has nil appleID!: %@", 35, 2, v66);

        v64 = v59;
        v65 = v120;
        if (v56 < 0)
        {
          goto LABEL_45;
        }
      }

      v73 = v72;
      v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v74;
      sub_1000DF96C();
      if (StringProtocol.contains<A>(_:)())
      {
        v21 = IDSCopyIDForEmailAddress();

        if (!v21)
        {
          goto LABEL_87;
        }

        v75 = 0;
      }

      else
      {
        v21 = IDSCopyIDForPhoneNumber();

        if (!v21)
        {
          goto LABEL_86;
        }

        v75 = 1;
      }

      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      if ((sub_10111FDB4(v75, v76, v78, v118) & 1) == 0)
      {

        goto LABEL_63;
      }

      v79 = [v68 altDSID];
      if (v79)
      {
        break;
      }

      v21 = static os_log_type_t.error.getter();
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_101385D80;
      *(v80 + 56) = sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
      *(v80 + 64) = sub_100009D18(&qword_1016A4760, &qword_1016996A0, FAFamilyMember_ptr, &protocol conformance descriptor for NSObject);
      *(v80 + 32) = v68;
      v81 = v68;
      os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v46, "FAFamilyMember has nil altDSID!: %@", 35, 2, v80);

LABEL_63:
      v64 = v59;
      v65 = v120;
      v56 = v117;
      if (v117 < 0)
      {
        goto LABEL_45;
      }
    }

    v82 = v79;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v110 = String.utf8Data.getter();
    v115 = v83;

    v84 = v128;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v84;
    v86 = sub_100772110(v75, v76, v78);
    v87 = v84[2];
    v88 = (v85 & 1) == 0;
    v89 = v87 + v88;
    if (__OFADD__(v87, v88))
    {
      __break(1u);
    }

    else
    {
      if (v84[3] >= v89)
      {
        v21 = v120;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v114 = v86;
          v109 = v85;
          sub_101009250();
          v85 = v109;
          v86 = v114;
          goto LABEL_69;
        }
      }

      else
      {
        v108 = v85;
        sub_100FEECE4(v89, isUniquelyReferenced_nonNull_native);
        v90 = sub_100772110(v75, v76, v78);
        v92 = v91 & 1;
        v85 = v108;
        if ((v108 & 1) != v92)
        {
          goto LABEL_89;
        }

        v86 = v90;
LABEL_69:
        v21 = v120;
      }

      if (v85)
      {
        v93 = v86;

        v94 = v121;
        v95 = (*(v121 + 7) + 16 * v93);
        v96 = *v95;
        v97 = v95[1];
        *v95 = v110;
        v95[1] = v115;
        sub_100016590(v96, v97);

LABEL_75:
        v56 = v117;
        v112 = v94;
        v128 = v94;
        continue;
      }

      v98 = v121;
      *(v121 + (v86 >> 6) + 8) |= 1 << v86;
      v99 = v98[6] + 24 * v86;
      *v99 = v75;
      v94 = v98;
      *(v99 + 8) = v76;
      *(v99 + 16) = v78;
      v100 = (v98[7] + 16 * v86);
      *v100 = v110;
      v100[1] = v115;

      v101 = v94[2];
      v102 = __OFADD__(v101, 1);
      v103 = v101 + 1;
      if (!v102)
      {
        v94[2] = v103;
        goto LABEL_75;
      }
    }

    break;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10058383C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1016096E8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100583888(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemVersionNumber();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v28[-v11];
  if (qword_1016947C0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177AF10);
  (*(v7 + 16))(v12, a3, v6);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32._countAndFlagsBits = v31;
    *v16 = 136315394;
    *(v16 + 4) = sub_1000136BC(a1, a2, &v32._countAndFlagsBits);
    *(v16 + 12) = 2080;
    sub_100003DFC(&qword_1016A4928, &type metadata accessor for SystemVersionNumber, &protocol conformance descriptor for SystemVersionNumber);
    v30 = v14;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v15;
    v19 = v18;
    v20 = v12;
    v21 = *(v7 + 8);
    v21(v20, v6);
    v22 = sub_1000136BC(v17, v19, &v32._countAndFlagsBits);

    *(v16 + 14) = v22;
    v23 = v30;
    _os_log_impl(&_mh_execute_header, v30, v29, "supportsItemConnection? %s %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v24 = v12;
    v21 = *(v7 + 8);
    v21(v24, v6);
  }

  v32 = String.lowercased()();
  sub_10058AE3C();
  sub_1000DF96C();
  static PartialMatchCase<>.first(containing:)();

  if (v33 > 4u)
  {
    v26 = 0;
  }

  else
  {
    SystemVersionNumber.init(stringLiteral:)();
    sub_100003DFC(&qword_101697BD0, &type metadata accessor for SystemVersionNumber, &protocol conformance descriptor for SystemVersionNumber);
    v25 = dispatch thunk of static Comparable.< infix(_:_:)();
    v21(v10, v6);
    v26 = v25 ^ 1;
  }

  return v26 & 1;
}

uint64_t sub_100583CA8(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v2[20] = type metadata accessor for PeerCommunicationIdentifier(0);
  v2[21] = swift_task_alloc();
  v2[22] = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v2[23] = swift_task_alloc();
  v3 = type metadata accessor for OwnerPeerTrust(0);
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[36] = v5;
  v6 = *(v5 - 8);
  v2[37] = v6;
  v2[38] = *(v6 + 64);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_100583F30, 0, 0);
}

uint64_t sub_100583F30()
{
  if (*(v0[19] + 16))
  {
    v1 = swift_task_alloc();
    v0[47] = v1;
    *v1 = v0;
    v1[1] = sub_100584124;

    return daemon.getter();
  }

  else
  {
    sub_100588F34();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100584124(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[48] = a1;

  v3 = swift_task_alloc();
  v2[49] = v3;
  v4 = type metadata accessor for Daemon();
  v2[50] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100003DFC(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[51] = v6;
  v7 = sub_100003DFC(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100584304;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100584304(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  if (v1)
  {
    v5 = sub_1005876E0;
    v6 = 0;
  }

  else
  {

    v5 = sub_10058443C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100584464()
{
  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  v1[1] = sub_100584540;
  v2 = *(v0 + 432);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v2, &type metadata for () + 1);
}

uint64_t sub_100584540()
{

  return _swift_task_switch(sub_10058463C, 0, 0);
}

uint64_t sub_10058463C()
{
  v1 = *(v0 + 416);
  *(v0 + 720) = *(type metadata accessor for OwnedBeaconRecord(0) + 20);

  return _swift_task_switch(sub_1005846B0, v1, 0);
}

uint64_t sub_1005846B0()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 416);
  v3 = *(v0 + 368);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 288);
  v7 = *(v0 + 144);
  v8 = *(v5 + 16);
  *(v0 + 448) = v8;
  *(v0 + 456) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7 + v1, v6);
  v9 = *(v5 + 80);
  *(v0 + 724) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 464) = v12;
  *(v12 + 16) = v2;
  v13 = *(v5 + 32);
  *(v0 + 472) = v13;
  *(v0 + 480) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v10, v3, v6);
  *(v12 + v11) = 0;

  v14 = swift_task_alloc();
  *(v0 + 488) = v14;
  v15 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v14 = v0;
  v14[1] = sub_100584864;

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v12, v15);
}

uint64_t sub_100584864()
{
  v1 = *(*v0 + 416);

  return _swift_task_switch(sub_100584990, v1, 0);
}

uint64_t sub_1005849B4()
{
  v1 = *(v0 + 496);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v42 = v5;
    while (v3 < *(v1 + 16))
    {
      v6 = *(v0 + 280);
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_10058B200(*(v0 + 496) + v7 + v8 * v3, v6, type metadata accessor for OwnerSharingCircle);
      v9 = *(v0 + 280);
      if (*(v6 + *(v5 + 28)) > 1u)
      {
        sub_10058B268(v9, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        sub_100589B28(v9, *(v0 + 272), type metadata accessor for OwnerSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_101123FE4((v10 > 1), v11 + 1, 1);
        }

        v12 = *(v0 + 272);
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_100589B28(v12, _swiftEmptyArrayStorage + v7 + v11 * v8, type metadata accessor for OwnerSharingCircle);
        v5 = v42;
      }

      if (v2 == ++v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return daemon.getter();
  }

LABEL_12:
  *(v0 + 504) = _swiftEmptyArrayStorage;

  v13 = _swiftEmptyDictionarySingleton;
  *(v0 + 128) = _swiftEmptyDictionarySingleton;
  v14 = _swiftEmptyArrayStorage[2];
  *(v0 + 512) = v14;
  if (v14)
  {
    *(v0 + 728) = *(*(v0 + 224) + 80);
    v43 = *(v0 + 424);
    *(v0 + 520) = 0;
    v15 = *(v0 + 504);
    if (*(v15 + 16))
    {
      v16 = 0;
      while (1)
      {
        v17 = *(v0 + 264);
        v18 = *(v0 + 216);
        sub_10058B200(v15 + ((*(v0 + 728) + 32) & ~*(v0 + 728)) + *(*(v0 + 224) + 72) * v16, v17, type metadata accessor for OwnerSharingCircle);
        v19 = *(*(v17 + *(v18 + 32)) + 16);
        if (v19)
        {
          v20 = *(v0 + 296);
          v21 = (*(v0 + 724) + 32) & ~*(v0 + 724);
          sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
          v22 = *(v20 + 72);
          v23 = swift_allocObject();
          v24 = j__malloc_size(v23);
          if (!v22)
          {
            goto LABEL_45;
          }

          if (v24 - v21 == 0x8000000000000000 && v22 == -1)
          {
            goto LABEL_47;
          }

          v23[2] = v19;
          v23[3] = 2 * ((v24 - v21) / v22);
          v26 = sub_1003CC2CC();
          v27 = *(v0 + 16);

          sub_1000128F8(v27);
          if (v26 != v19)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v23 = _swiftEmptyArrayStorage;
        }

        *(v0 + 528) = v23;
        v28 = v23[2];
        *(v0 + 536) = v28;
        if (v28)
        {
          break;
        }

        v29 = *(v0 + 512);
        v13 = (*(v0 + 520) + 1);
        sub_10058B268(*(v0 + 264), type metadata accessor for OwnerSharingCircle);
        if (v13 == v29)
        {

          v13 = _swiftEmptyDictionarySingleton;
          goto LABEL_34;
        }

        v16 = *(v0 + 520) + 1;
        *(v0 + 520) = v16;
        v15 = *(v0 + 504);
        if (v16 >= *(v15 + 16))
        {
          goto LABEL_27;
        }
      }

      v30 = *(v0 + 724);
      *(v0 + 560) = _swiftEmptyDictionarySingleton;
      *(v0 + 552) = 0;
      *(v0 + 544) = v43;
      if (!v23[2])
      {
        goto LABEL_48;
      }

      v31 = *(v0 + 448);
      v32 = *(v0 + 416);
      v33 = *(v0 + 360);
      v34 = *(v0 + 288);
      *(v0 + 568) = *(*(v0 + 296) + 72);
      v31(v33, v23 + ((v30 + 32) & ~v30), v34);

      return _swift_task_switch(sub_100584FE0, v32, 0);
    }

LABEL_27:
    __break(1u);
  }

LABEL_34:
  *(v0 + 632) = v13;
  if (v13[2])
  {
    sub_100528208(*(v0 + 152), (v0 + 128));
    *(v0 + 640) = v35;
    v36 = *(v35 + 16);
    *(v0 + 648) = v36;
    if (v36)
    {
      v37 = swift_task_alloc();
      *(v0 + 656) = v37;
      *v37 = v0;
      v37[1] = sub_100586F9C;

      return daemon.getter();
    }

    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  sub_100588F34();
  swift_allocError();
  *v39 = v38;
  swift_willThrow();

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100584FE0()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 416);
  v3 = *(v0 + 368);
  v4 = *(v0 + 288);
  v5 = (*(v0 + 724) + 24) & ~*(v0 + 724);
  (*(v0 + 448))(v3, *(v0 + 360), v4);
  v6 = swift_allocObject();
  *(v0 + 576) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 584) = v7;
  *v7 = v0;
  v7[1] = sub_10058512C;
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100588F88, v6, v9);
}

uint64_t sub_10058512C()
{

  return _swift_task_switch(sub_100585244, 0, 0);
}

uint64_t sub_100585244()
{
  v68 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  if ((*(*(v0 + 200) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
    if (qword_101694E40 != -1)
    {
LABEL_41:
      swift_once();
    }

    v3 = *(v0 + 448);
    v4 = *(v0 + 360);
    v5 = *(v0 + 320);
    v6 = *(v0 + 288);
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177BFE0);
    v3(v5, v4, v6);
    sub_10058B200(v7, v8, type metadata accessor for OwnerSharingCircle);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v65 = *(v0 + 360);
    v13 = *(v0 + 320);
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);
    v16 = *(v0 + 232);
    if (v12)
    {
      v17 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v17 = 141558787;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63 = v11;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = *(v15 + 8);
      v21(v13, v14);
      v22 = sub_1000136BC(v18, v20, v67);

      *(v17 + 14) = v22;
      *(v17 + 22) = 2160;
      *(v17 + 24) = 1752392040;
      *(v17 + 32) = 2081;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_10058B268(v16, type metadata accessor for OwnerSharingCircle);
      v26 = sub_1000136BC(v23, v25, v67);

      *(v17 + 34) = v26;
      _os_log_impl(&_mh_execute_header, v10, v63, "Could not find peerTrust for %{private,mask.hash}s in circle %{private,mask.hash}s.", v17, 0x2Au);
      swift_arrayDestroy();

      v21(v65, v14);
    }

    else
    {

      sub_10058B268(v16, type metadata accessor for OwnerSharingCircle);
      v31 = *(v15 + 8);
      v31(v13, v14);
      v31(v65, v14);
    }

    v32 = *(v0 + 560);
    v33 = *(v0 + 544);
    v34 = *(v0 + 552) + 1;
    v35 = *(v0 + 528);
    if (v34 == *(v0 + 536))
    {
      v64 = *(v0 + 544);
      v66 = *(v0 + 560);
      while (1)
      {

        v37 = *(v0 + 512);
        v38 = *(v0 + 520) + 1;
        sub_10058B268(*(v0 + 264), type metadata accessor for OwnerSharingCircle);
        if (v38 == v37)
        {
          break;
        }

        v39 = *(v0 + 520) + 1;
        *(v0 + 520) = v39;
        v40 = *(v0 + 504);
        if (v39 >= *(v40 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v41 = *(v0 + 264);
        v42 = *(v0 + 216);
        sub_10058B200(v40 + ((*(v0 + 728) + 32) & ~*(v0 + 728)) + *(*(v0 + 224) + 72) * v39, v41, type metadata accessor for OwnerSharingCircle);
        v43 = *(*(v41 + *(v42 + 32)) + 16);
        if (v43)
        {
          v44 = *(v0 + 296);
          v45 = (*(v0 + 724) + 32) & ~*(v0 + 724);
          sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
          v46 = *(v44 + 72);
          v35 = swift_allocObject();
          v47 = j__malloc_size(v35);
          if (!v46)
          {
            goto LABEL_39;
          }

          if (v47 - v45 == 0x8000000000000000 && v46 == -1)
          {
            goto LABEL_40;
          }

          v35[2] = v43;
          v35[3] = 2 * ((v47 - v45) / v46);
          v49 = sub_1003CC2CC();
          v50 = *(v0 + 16);

          sub_1000128F8(v50);
          if (v49 != v43)
          {
            __break(1u);
            break;
          }
        }

        else
        {
          v35 = _swiftEmptyArrayStorage;
        }

        *(v0 + 528) = v35;
        v36 = v35[2];
        *(v0 + 536) = v36;
        if (v36)
        {
          v34 = 0;
          v33 = v64;
          v32 = v66;
          goto LABEL_30;
        }
      }

      *(v0 + 632) = v66;
      if (*(v66 + 16))
      {
        sub_100528208(*(v0 + 152), (v0 + 128));
        *(v0 + 640) = v51;
        v52 = *(v51 + 16);
        *(v0 + 648) = v52;
        if (v52)
        {
          v53 = swift_task_alloc();
          *(v0 + 656) = v53;
          *v53 = v0;
          v53[1] = sub_100586F9C;

          return daemon.getter();
        }

        v54 = 1;
      }

      else
      {
        v54 = 2;
      }

      sub_100588F34();
      swift_allocError();
      *v61 = v54;
      swift_willThrow();

      v62 = *(v0 + 8);

      return v62();
    }

    else
    {
LABEL_30:
      *(v0 + 560) = v32;
      *(v0 + 552) = v34;
      *(v0 + 544) = v33;
      if (v34 >= v35[2])
      {
        __break(1u);
        return daemon.getter();
      }

      v55 = *(v0 + 724);
      v56 = *(v0 + 448);
      v57 = *(v0 + 416);
      v58 = *(v0 + 360);
      v59 = *(v0 + 288);
      v60 = *(*(v0 + 296) + 72);
      *(v0 + 568) = v60;
      v56(v58, v35 + ((v55 + 32) & ~v55) + v60 * v34, v59);

      return _swift_task_switch(sub_100584FE0, v57, 0);
    }
  }

  else
  {
    v27 = *(v0 + 208);
    sub_100589B28(v2, v27, type metadata accessor for OwnerPeerTrust);
    v28 = *(v1 + 28);
    *(v0 + 732) = v28;
    v29 = swift_task_alloc();
    *(v0 + 592) = v29;
    *v29 = v0;
    v29[1] = sub_100585ABC;

    return sub_100E8BEF8(v27 + v28);
  }
}

uint64_t sub_100585ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[75] = a1;
  v5[76] = a2;
  v5[77] = a3;
  v5[78] = v3;

  if (v3)
  {

    v6 = sub_100586DDC;
  }

  else
  {
    v6 = sub_100585BF0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100585BF0()
{
  v153 = v0;
  v1 = *(v0 + 616);
  if (!v1)
  {
    sub_10058B200(*(v0 + 208) + *(v0 + 732), *(v0 + 168), type metadata accessor for PeerCommunicationIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6)
        {
          if (qword_101694E40 != -1)
          {
            goto LABEL_97;
          }

          goto LABEL_20;
        }

LABEL_14:
        if (qword_101694E40 != -1)
        {
          goto LABEL_95;
        }

        goto LABEL_15;
      }

      v5 = *(v0 + 168);
      if (EnumCaseMultiPayload == 4)
      {
        v2 = *v5;
        v3 = v5[1];
        v1 = v5[2];
      }

      else
      {
        v2 = *(v5 + 16);
        v3 = v5[3];
        v1 = v5[4];
      }

      goto LABEL_28;
    }

    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_10058B268(*(v0 + 168), type metadata accessor for PeerCommunicationIdentifier);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload)
    {
      v36 = *(v0 + 168);
      v2 = *v36;
      v3 = *(v36 + 1);
      v1 = *(v36 + 2);
LABEL_29:

      goto LABEL_30;
    }

    v6 = *(v0 + 168);
    v7 = v6[1];
    *(v0 + 88) = *v6;
    *(v0 + 96) = v7;
    *(v0 + 104) = 64;
    *(v0 + 112) = 0xE100000000000000;
    sub_1000DF96C();

    v8 = StringProtocol.contains<A>(_:)();
    v9 = String._bridgeToObjectiveC()();
    if (v8)
    {
      v10 = IDSCopyIDForEmailAddress();

      if (v10)
      {
        v2 = 0;
LABEL_27:

        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v1 = v56;

LABEL_28:

        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
      v10 = IDSCopyIDForPhoneNumber();

      if (v10)
      {
        v2 = 1;
        goto LABEL_27;
      }
    }

    __break(1u);
    return daemon.getter();
  }

  v2 = *(v0 + 600);
  v3 = *(v0 + 608);
LABEL_30:
  v57 = *(v0 + 152);
  if (*(v57 + 16))
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v2);

    String.hash(into:)();
    v58 = Hasher._finalize()();
    v59 = -1 << *(v57 + 32);
    v60 = v58 & ~v59;
    if ((*(v57 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v60))
    {
      v61 = ~v59;
      v62 = *(v0 + 152);
      v63 = *(v62 + 48);
      do
      {
        v64 = (v63 + 24 * v60);
        if (*v64 == v2)
        {
          v65 = *(v64 + 1) == v3 && *(v64 + 2) == v1;
          if (v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v148 = *(v0 + 448);
            v103 = *(v0 + 336);
            v145 = *(v0 + 328);
            v104 = *(v0 + 288);

            sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            *(v0 + 56) = dispatch thunk of CustomStringConvertible.description.getter();
            *(v0 + 64) = v105;
            v106._countAndFlagsBits = 124;
            v106._object = 0xE100000000000000;
            String.append(_:)(v106);
            v107._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v107);

            v108 = String.utf8Data.getter();
            v110 = v109;

            *(v0 + 72) = v108;
            *(v0 + 80) = v110;
            sub_1000E0A3C();
            DataProtocol.stableUUID.getter();
            sub_100016590(v108, v110);
            v148(v145, v103, v104);
            v111 = *(v0 + 128);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 136) = v111;
            v113 = sub_100772110(v2, v3, v1);
            v115 = *(v111 + 16);
            v116 = (v114 & 1) == 0;
            v117 = __OFADD__(v115, v116);
            v118 = v115 + v116;
            if (v117)
            {
              goto LABEL_94;
            }

            v119 = v114;
            if (*(v111 + 24) >= v118)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v141 = v113;
                sub_1010093E4();
                v113 = v141;
              }
            }

            else
            {
              sub_100FEEFB8(v118, isUniquelyReferenced_nonNull_native);
              v113 = sub_100772110(v2, v3, v1);
              if ((v119 & 1) != (v120 & 1))
              {

                return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              }
            }

            v83 = *(v0 + 136);
            v131 = *(v0 + 568);
            if (v119)
            {
              (*(*(v0 + 296) + 40))(v83[7] + v131 * v113, *(v0 + 328), *(v0 + 288));

LABEL_88:
              v138 = *(v0 + 360);
              v139 = *(v0 + 288);
              v3 = *(v0 + 208);
              v140 = *(*(v0 + 296) + 8);
              v140(*(v0 + 336), v139);
              sub_10058B268(v3, type metadata accessor for OwnerPeerTrust);
              v140(v138, v139);
              *(v0 + 128) = v83;
              goto LABEL_47;
            }

            v132 = *(v0 + 472);
            v133 = *(v0 + 328);
            v134 = *(v0 + 288);
            v83[(v113 >> 6) + 8] |= 1 << v113;
            v135 = v83[6] + 24 * v113;
            *v135 = v2;
            *(v135 + 8) = v3;
            *(v135 + 16) = v1;
            v132(v83[7] + v131 * v113, v133, v134);
            v136 = v83[2];
            v117 = __OFADD__(v136, 1);
            v137 = v136 + 1;
            if (!v117)
            {
              v83[2] = v137;
              goto LABEL_88;
            }

            __break(1u);
LABEL_97:
            swift_once();
LABEL_20:
            v37 = *(v0 + 448);
            v38 = *(v0 + 360);
            v39 = *(v0 + 344);
            v40 = *(v0 + 288);
            v41 = *(v0 + 264);
            v42 = *(v0 + 248);
            v43 = type metadata accessor for Logger();
            sub_1000076D4(v43, qword_10177BFE0);
            v37(v39, v38, v40);
            sub_10058B200(v41, v42, type metadata accessor for OwnerSharingCircle);
            v18 = Logger.logObject.getter();
            v44 = static os_log_type_t.default.getter();
            v45 = os_log_type_enabled(v18, v44);
            v22 = *(v0 + 360);
            v21 = *(v0 + 344);
            v3 = *(v0 + 288);
            v23 = *(v0 + 296);
            v24 = *(v0 + 248);
            if (!v45)
            {
              goto LABEL_23;
            }

            v149 = *(v0 + 208);
            v25 = swift_slowAlloc();
            v152[0] = swift_slowAlloc();
            *v25 = 141558787;
            *(v25 + 4) = 1752392040;
            *(v25 + 12) = 2081;
            sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v146 = v22;
            v143 = v44;
            v46 = dispatch thunk of CustomStringConvertible.description.getter();
            v48 = v47;
            log = v18;
            v29 = *(v23 + 8);
            v29(v21, v3);
            v49 = sub_1000136BC(v46, v48, v152);

            *(v25 + 14) = v49;
            *(v25 + 22) = 2160;
            *(v25 + 24) = 1752392040;
            *(v25 + 32) = 2081;
            v50 = dispatch thunk of CustomStringConvertible.description.getter();
            v52 = v51;
            sub_10058B268(v24, type metadata accessor for OwnerSharingCircle);
            v53 = sub_1000136BC(v50, v52, v152);

            *(v25 + 34) = v53;
            v35 = "Unexpected destionation type %{private,mask.hash}s in circle %{private,mask.hash}s.";
            goto LABEL_22;
          }

          v62 = *(v0 + 152);
        }

        v60 = (v60 + 1) & v61;
      }

      while (((*(v62 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v60) & 1) != 0);
    }
  }

  else
  {
  }

  if (qword_101694E40 != -1)
  {
LABEL_92:
    swift_once();
  }

  v66 = *(v0 + 264);
  v67 = *(v0 + 240);
  v68 = type metadata accessor for Logger();
  sub_1000076D4(v68, qword_10177BFE0);
  sub_10058B200(v66, v67, type metadata accessor for OwnerSharingCircle);

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  v71 = os_log_type_enabled(v69, v70);
  v72 = *(v0 + 360);
  v74 = *(v0 + 288);
  v73 = *(v0 + 296);
  v75 = *(v0 + 240);
  if (v71)
  {
    v150 = *(v0 + 208);
    v144 = *(v0 + 288);
    v76 = swift_slowAlloc();
    v152[0] = swift_slowAlloc();
    *v76 = 141558787;
    *(v76 + 4) = 1752392040;
    *(v76 + 12) = 2081;
    v77 = sub_1000136BC(v3, v1, v152);

    *(v76 + 14) = v77;
    *(v76 + 22) = 2160;
    *(v76 + 24) = 1752392040;
    *(v76 + 32) = 2081;
    sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v3 = v144;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v79;
    sub_10058B268(v75, type metadata accessor for OwnerSharingCircle);
    v81 = sub_1000136BC(v78, v80, v152);

    *(v76 + 34) = v81;
    _os_log_impl(&_mh_execute_header, v69, v70, "%{private,mask.hash}s is not a member to remove from circle %{private,mask.hash}s.", v76, 0x2Au);
    swift_arrayDestroy();

    sub_10058B268(v150, type metadata accessor for OwnerPeerTrust);
    (*(v73 + 8))(v72, v144);
  }

  else
  {
    v82 = *(v0 + 208);

    sub_10058B268(v75, type metadata accessor for OwnerSharingCircle);
    sub_10058B268(v82, type metadata accessor for OwnerPeerTrust);
    (*(v73 + 8))(v72, v74);
  }

  while (1)
  {
    v83 = *(v0 + 560);
LABEL_47:
    v84 = *(v0 + 624);
    v85 = *(v0 + 552) + 1;
    v86 = *(v0 + 528);
    if (v85 == *(v0 + 536))
    {
      break;
    }

LABEL_74:
    *(v0 + 560) = v83;
    *(v0 + 552) = v85;
    *(v0 + 544) = v84;
    if (v85 < *(v86 + 2))
    {
      v123 = *(v0 + 724);
      v124 = *(v0 + 448);
      v125 = *(v0 + 416);
      v126 = *(v0 + 360);
      v127 = *(v0 + 288);
      v128 = *(*(v0 + 296) + 72);
      *(v0 + 568) = v128;
      v124(v126, &v86[((v123 + 32) & ~v123) + v128 * v85], v127);

      return _swift_task_switch(sub_100584FE0, v125, 0);
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    swift_once();
LABEL_15:
    v11 = *(v0 + 448);
    v12 = *(v0 + 352);
    v13 = *(v0 + 360);
    v14 = *(v0 + 288);
    v16 = *(v0 + 256);
    v15 = *(v0 + 264);
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177BFE0);
    v11(v12, v13, v14);
    sub_10058B200(v15, v16, type metadata accessor for OwnerSharingCircle);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 352);
    v22 = *(v0 + 360);
    v3 = *(v0 + 288);
    v23 = *(v0 + 296);
    v24 = *(v0 + 256);
    if (v20)
    {
      v149 = *(v0 + 208);
      v25 = swift_slowAlloc();
      v152[0] = swift_slowAlloc();
      *v25 = 141558787;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v146 = v22;
      v143 = v19;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      log = v18;
      v29 = *(v23 + 8);
      v29(v21, v3);
      v30 = sub_1000136BC(v26, v28, v152);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2160;
      *(v25 + 24) = 1752392040;
      *(v25 + 32) = 2081;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_10058B268(v24, type metadata accessor for OwnerSharingCircle);
      v34 = sub_1000136BC(v31, v33, v152);

      *(v25 + 34) = v34;
      v35 = "Unreachable destionation %{private,mask.hash}s in circle %{private,mask.hash}s.";
LABEL_22:
      _os_log_impl(&_mh_execute_header, log, v143, v35, v25, 0x2Au);
      swift_arrayDestroy();

      sub_10058B268(v149, type metadata accessor for OwnerPeerTrust);
      v54 = v146;
    }

    else
    {
LABEL_23:
      v55 = *(v0 + 208);

      sub_10058B268(v24, type metadata accessor for OwnerSharingCircle);
      v29 = *(v23 + 8);
      v29(v21, v3);
      sub_10058B268(v55, type metadata accessor for OwnerPeerTrust);
      v54 = v22;
    }

    v29(v54, v3);
  }

  v147 = *(v0 + 624);
  v151 = v83;
  while (1)
  {

    v88 = *(v0 + 512);
    v1 = *(v0 + 520) + 1;
    sub_10058B268(*(v0 + 264), type metadata accessor for OwnerSharingCircle);
    if (v1 == v88)
    {
      break;
    }

    v89 = *(v0 + 520) + 1;
    *(v0 + 520) = v89;
    v90 = *(v0 + 504);
    if (v89 >= *(v90 + 16))
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v91 = *(v0 + 264);
    v92 = *(v0 + 216);
    sub_10058B200(v90 + ((*(v0 + 728) + 32) & ~*(v0 + 728)) + *(*(v0 + 224) + 72) * v89, v91, type metadata accessor for OwnerSharingCircle);
    v93 = *(*(v91 + *(v92 + 32)) + 16);
    if (v93)
    {
      v3 = *(v0 + 724);
      v94 = *(v0 + 296);
      v1 = (v3 + 32) & ~v3;
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v95 = *(v94 + 72);
      v86 = swift_allocObject();
      v96 = j__malloc_size(v86);
      if (!v95)
      {
        goto LABEL_90;
      }

      if (v96 - v1 == 0x8000000000000000 && v95 == -1)
      {
        goto LABEL_91;
      }

      *(v86 + 2) = v93;
      *(v86 + 3) = 2 * ((v96 - v1) / v95);
      v98 = sub_1003CC2CC();
      v99 = *(v0 + 16);
      v3 = *(v0 + 40);

      sub_1000128F8(v99);
      if (v98 != v93)
      {
        __break(1u);
        break;
      }
    }

    else
    {
      v86 = _swiftEmptyArrayStorage;
    }

    *(v0 + 528) = v86;
    v87 = *(v86 + 2);
    *(v0 + 536) = v87;
    if (v87)
    {
      v85 = 0;
      v84 = v147;
      v83 = v151;
      goto LABEL_74;
    }
  }

  *(v0 + 632) = v151;
  if (v151[2])
  {
    sub_100528208(*(v0 + 152), (v0 + 128));
    *(v0 + 640) = v100;
    v101 = *(v100 + 16);
    *(v0 + 648) = v101;
    if (v101)
    {
      v102 = swift_task_alloc();
      *(v0 + 656) = v102;
      *v102 = v0;
      v102[1] = sub_100586F9C;

      return daemon.getter();
    }

    v122 = 1;
  }

  else
  {
    v122 = 2;
  }

  sub_100588F34();
  swift_allocError();
  *v129 = v122;
  swift_willThrow();

  v130 = *(v0 + 8);

  return v130();
}

uint64_t sub_100586DDC()
{
  v1 = v0[45];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[33];
  v5 = v0[26];

  sub_10058B268(v5, type metadata accessor for OwnerPeerTrust);
  (*(v3 + 8))(v1, v2);
  sub_10058B268(v4, type metadata accessor for OwnerSharingCircle);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100586F9C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 664) = a1;

  v5 = swift_task_alloc();
  *(v3 + 672) = v5;
  v6 = type metadata accessor for BeaconSharingService(0);
  v7 = sub_100003DFC(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v5 = v4;
  v5[1] = sub_100587150;
  v8 = *(v2 + 408);
  v9 = *(v2 + 400);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100587150(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 680) = a1;
  *(v3 + 688) = v1;

  if (v1)
  {
    v4 = sub_100587834;
  }

  else
  {

    v4 = sub_100587270;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100587270()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 724);
  *(v0 + 696) = 0;
  if (*(v1 + 16))
  {
    (*(v0 + 448))(*(v0 + 312), v1 + ((v2 + 32) & ~v2), *(v0 + 288));
    v3 = swift_task_alloc();
    *(v0 + 704) = v3;
    *v3 = v0;
    v3[1] = sub_10058733C;
    v4 = *(v0 + 312);

    sub_1001986AC(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10058733C()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  (*(v2[37] + 8))(v2[39], v2[36]);
  if (v0)
  {

    v3 = sub_1005879AC;
  }

  else
  {
    v3 = sub_10058748C;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10058748C()
{
  v1 = *(v0 + 696) + 1;
  if (v1 == *(v0 + 648))
  {

    v2 = *(v0 + 8);

    v2();
  }

  else
  {
    *(v0 + 696) = v1;
    v3 = *(v0 + 640);
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      (*(v0 + 448))(*(v0 + 312), v3 + ((*(v0 + 724) + 32) & ~*(v0 + 724)) + *(*(v0 + 296) + 72) * v1, *(v0 + 288));
      v4 = swift_task_alloc();
      *(v0 + 704) = v4;
      *v4 = v0;
      v4[1] = sub_10058733C;
      v5 = *(v0 + 312);

      sub_1001986AC(v5);
    }
  }
}

uint64_t sub_1005876E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100587834()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005879AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100587B18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for StableIdentifier(0);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  type metadata accessor for SharingRampState(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100587C64, 0, 0);
}

uint64_t sub_100587C64(uint64_t a1)
{
  v2 = v1[3];
  if (!*(v2 + 16))
  {
    v18 = 0;
LABEL_25:
    sub_100588F34();
    swift_allocError();
    *v19 = v18;
    swift_willThrow();

    v20 = v1[1];

    return v20();
  }

  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_5:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(v2 + 48) + 24 * (v8 | (v7 << 6)));
    if (*v9 - 2 >= 4)
    {
      if (*v9)
      {

        v13._countAndFlagsBits = 980182388;
        v13._object = 0xE400000000000000;
        String.deletingPrefix(_:)(v13);
        v12 = &selRef_handleWithPhoneNumber_;
      }

      else
      {

        v11._countAndFlagsBits = 0x3A6F746C69616DLL;
        v11._object = 0xE700000000000000;
        String.deletingPrefix(_:)(v11);
        v12 = &selRef_handleWithEmailAddress_;
      }

      v14 = String._bridgeToObjectiveC()();

      v15 = [objc_opt_self() *v12];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return daemon.getter();
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_5;
    }
  }

  v16 = sub_10112A6B4(_swiftEmptyArrayStorage);
  v1[14] = v16;

  if ((v16 & 0xC000000000000001) == 0)
  {
    if (*(v16 + 16))
    {
      goto LABEL_19;
    }

LABEL_24:

    v18 = 3;
    goto LABEL_25;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_24;
  }

LABEL_19:
  v17 = swift_task_alloc();
  v1[15] = v17;
  *v17 = v1;
  v17[1] = sub_100587FEC;

  return daemon.getter();
}

uint64_t sub_100587FEC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100003DFC(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003DFC(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_1005881C8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005881C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_100588CD0;
  }

  else
  {

    v4 = sub_1005882E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005882E4()
{
  v60 = v0;
  if (sub_1000322C8())
  {
    v1 = v0[13];
    sub_10052F8CC(v1);
    v2 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    if ((*(*(v2 - 8) + 48))(v1, 2, v2))
    {
      v3 = v0[2];
      v4 = *(type metadata accessor for OwnedBeaconRecord(0) + 20);
      v5 = swift_task_alloc();
      v0[20] = v5;
      *v5 = v0;
      v5[1] = sub_1005889E0;
      v6 = v0[14];

      return sub_10018F2A8(v3 + v4, v6);
    }

    v12 = v0[13];
    v13 = v0[11];
    v14 = v0[6];
    v15 = v0[7];

    (*(v15 + 32))(v13, v12, v14);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v16 = v0[10];
    v17 = v0[11];
    v18 = v0[6];
    v19 = v0[7];
    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177A560);
    (*(v19 + 16))(v16, v17, v18);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[10];
    v25 = v0[11];
    v26 = v0[6];
    v27 = v0[7];
    if (v23)
    {
      v28 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v28 = 136446210;
      sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v25;
      v31 = v30;
      v32 = *(v27 + 8);
      v32(v24, v26);
      v33 = sub_1000136BC(v29, v31, &v59);

      *(v28 + 4) = v33;
      v34 = "allowedToUseUTFSItemSharing == .notAllowed(retry: %{public}s";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v21, v22, v34, v28, 0xCu);
      sub_100007BAC(v57);

      v32(v58, v26);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v8 = v0[5];
  v9 = v0[2];
  v10 = type metadata accessor for OwnedBeaconRecord(0);
  sub_10058B200(v9 + *(v10 + 24), v8, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload())
  {
    v11 = v0[5];

    sub_10058B268(v11, type metadata accessor for StableIdentifier);
LABEL_22:

    v56 = v0[1];

    return v56();
  }

  v35 = v0[12];
  sub_10058B268(v0[5], type metadata accessor for StableIdentifier);
  sub_10052FFA4(v35);
  v36 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  if (!(*(*(v36 - 8) + 48))(v35, 2, v36))
  {
    v41 = v0[12];
    v42 = v0[9];
    v43 = v0[6];
    v44 = v0[7];

    (*(v44 + 32))(v42, v41, v43);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v45 = v0[8];
    v46 = v0[9];
    v47 = v0[6];
    v48 = v0[7];
    v49 = type metadata accessor for Logger();
    sub_1000076D4(v49, qword_10177A560);
    (*(v48 + 16))(v45, v46, v47);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v50 = os_log_type_enabled(v21, v22);
    v24 = v0[8];
    v25 = v0[9];
    v26 = v0[6];
    v27 = v0[7];
    if (v50)
    {
      v28 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v28 = 136446210;
      sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v25;
      v53 = v52;
      v32 = *(v27 + 8);
      v32(v24, v26);
      v54 = sub_1000136BC(v51, v53, &v59);

      *(v28 + 4) = v54;
      v34 = "allowedToUseSelfBeaconingItemSharing == .notAllowed(retry: %{public}s";
      goto LABEL_20;
    }

LABEL_21:

    v55 = *(v27 + 8);
    v55(v24, v26);
    v55(v25, v26);
    goto LABEL_22;
  }

  v37 = v0[2];
  v38 = *(v10 + 20);
  v39 = swift_task_alloc();
  v0[22] = v39;
  *v39 = v0;
  v39[1] = sub_100588BB4;
  v40 = v0[14];

  return sub_10018FC44(v37 + v38, v40);
}

uint64_t sub_1005889E0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100588D9C;
  }

  else
  {

    v2 = sub_100588AFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100588AFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100588BB4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100588E68;
  }

  else
  {

    v2 = sub_10058D500;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100588CD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100588D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100588E68()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100588F34()
{
  result = qword_1016A4730;
  if (!qword_1016A4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4730);
  }

  return result;
}

uint64_t sub_100588F8C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100579CC0(a1, a2, v2);
}

void *sub_100589038@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100582A7C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100589064()
{
  result = qword_1016A4748;
  if (!qword_1016A4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4748);
  }

  return result;
}

uint64_t sub_100589114(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10054ACAC(a1, v4, v7, v5, v6);
}

uint64_t sub_1005891D8(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v6 + 1);
  v8 = *(v6 + 2);
  v9 = *v6;

  return sub_10054B230(a1, v5, v1 + v4, v9, v7, v8);
}

void sub_1005892F0(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10053ECFC(a1, v1 + v4, v5);
}

uint64_t sub_10058938C(uint64_t a1)
{
  v4 = *(type metadata accessor for DateInterval() - 8);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));
  v7 = (v6 + *(v4 + 64));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_100AD92FC(a1, v5, v1 + 24, v6, v8, v9, v10);
}

uint64_t sub_1005894F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1010A76C0(a1, v4, v5, v6, v10, v7, v8, v9);
}

unint64_t sub_100589638()
{
  result = qword_1016A47A0;
  if (!qword_1016A47A0)
  {
    sub_1000BC580(&qword_1016A4798, &qword_1013B1150);
    sub_100003DFC(&qword_1016A47A8, type metadata accessor for LegacyShareEnvelope, &unk_10140A02C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A47A0);
  }

  return result;
}

unint64_t sub_100589714()
{
  result = qword_1016A47C0;
  if (!qword_1016A47C0)
  {
    sub_1000BC580(&qword_1016A47B8, &qword_1013B1160);
    sub_100003DFC(&qword_1016A47C8, type metadata accessor for FamilyShareEnvelopeV1, &unk_10140A004);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A47C0);
  }

  return result;
}

unint64_t sub_10058981C()
{
  result = qword_1016A47E0;
  if (!qword_1016A47E0)
  {
    sub_1000BC580(&qword_1016A47D8, &qword_1013B1170);
    sub_100003DFC(&qword_1016A47E8, type metadata accessor for FindMyAirPodsFamilyShareEnvelope, &unk_1013B1C6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A47E0);
  }

  return result;
}

uint64_t sub_1005898D0()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;

  sub_100007BAC((v0 + 24));
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 3);
}

uint64_t sub_1005899A0(uint64_t a1)
{
  v4 = *(type metadata accessor for DateInterval() - 8);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));
  v7 = (v6 + *(v4 + 64));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_100AD92FC(a1, v5, v1 + 24, v6, v8, v9, v10);
}

unint64_t sub_100589AD4()
{
  result = qword_1016A47F0;
  if (!qword_1016A47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A47F0);
  }

  return result;
}

uint64_t sub_100589B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100589C18()
{
  result = qword_1016A4808;
  if (!qword_1016A4808)
  {
    sub_1000BC580(&qword_1016A4800, &unk_1013B1198);
    sub_100003DFC(&qword_1016A4810, type metadata accessor for FindMyAccessoryFamilyShareEnvelope, &unk_1013F862C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4808);
  }

  return result;
}

void sub_100589DB0(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for ShareInstruction(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_100540120(a1, a2 & 1, v6, v7, v8);
}

uint64_t sub_100589E34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1010A5CF0(a1, v4, v5, v6, v10, v7, v8, v9);
}

uint64_t sub_100589F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100548BF0(a1, v4, v5, v6);
}

unint64_t sub_10058A01C()
{
  result = qword_1016A4828;
  if (!qword_1016A4828)
  {
    sub_1000BC580(&qword_1016A4820, &unk_1013B2170);
    sub_100003DFC(&qword_1016A4830, type metadata accessor for LegacySelfBeaconingKeyEnvelope, &unk_1013978D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4828);
  }

  return result;
}

unint64_t sub_10058A0FC()
{
  result = qword_1016A4848;
  if (!qword_1016A4848)
  {
    sub_1000BC580(&qword_1016A4840, &unk_1013B2180);
    sub_100003DFC(&qword_1016A4850, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope, &unk_1013EF76C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4848);
  }

  return result;
}

unint64_t sub_10058A1B0()
{
  result = qword_1016A4868;
  if (!qword_1016A4868)
  {
    sub_1000BC580(&qword_1016A4860, &qword_1013B1208);
    sub_100003DFC(&qword_1016A4870, type metadata accessor for SelfBeaconingKeyEnvelope, &unk_1013978B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4868);
  }

  return result;
}

uint64_t sub_10058A290(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = *(v1 + v6);
  v11 = *v7;

  return sub_10056FF14(a1, v1 + v4, v11, v8, v9, v10);
}

uint64_t sub_10058A340()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10058A3BC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = *v7;

  return a3(a1, v3 + v6, v10, v8, v9);
}

unint64_t sub_10058A478()
{
  result = qword_1016A4888;
  if (!qword_1016A4888)
  {
    sub_1000BC580(&qword_1016A4880, &qword_1013B1230);
    sub_100003DFC(&qword_1016A4890, type metadata accessor for KeyRequestEnvelope, &unk_1013F203C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4888);
  }

  return result;
}

unint64_t sub_10058A52C()
{
  result = qword_1016A48A8;
  if (!qword_1016A48A8)
  {
    sub_1000BC580(&qword_1016A48A0, &qword_1013B1240);
    sub_100003DFC(&qword_1016A48B0, type metadata accessor for CircleTrustAckEnvelopeV1, &unk_1013AE0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A48A8);
  }

  return result;
}

unint64_t sub_10058A5E0()
{
  result = qword_1016A48C8;
  if (!qword_1016A48C8)
  {
    sub_1000BC580(&qword_1016A48C0, &qword_1013B1250);
    sub_100003DFC(&qword_1016A48D0, type metadata accessor for PeerTrustAckEnvelopeV1, &unk_1013CCC64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A48C8);
  }

  return result;
}

unint64_t sub_10058A694()
{
  result = qword_1016A48F0;
  if (!qword_1016A48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A48F0);
  }

  return result;
}

uint64_t sub_10058A6E8(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 48);
}

uint64_t sub_10058A740(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10058A7F0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_1005711A0(a1, v7, v11, v8, v9, v1 + v6, v10);
}

uint64_t sub_10058A92C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100571408(a1, a2, v6, v11, v7, v8, v9, v10);
}

uint64_t sub_10058AA0C(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v7 = (v5 + *(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + v5;
  v11 = *(v1 + v5 + 8);
  v12 = *(v10 + 16);
  v13 = *v10;
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100014744;

  return sub_100571D34(a1, v8, v9, v1 + v4, v13, v11, v12, v1 + v7);
}

uint64_t sub_10058ABC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_10057C4E8(a1, v4);
}

uint64_t sub_10058ACB8(uint64_t a1)
{
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);

  return sub_10057428C(a1);
}

unint64_t sub_10058AD34()
{
  result = qword_1016A4910;
  if (!qword_1016A4910)
  {
    sub_1000BC580(&qword_101697720, &unk_101392640);
    sub_100003DFC(&qword_1016A4918, type metadata accessor for SharedBeaconRecord, &unk_10140BA4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4910);
  }

  return result;
}

unint64_t sub_10058ADE8()
{
  result = qword_1016A4920;
  if (!qword_1016A4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4920);
  }

  return result;
}

unint64_t sub_10058AE3C()
{
  result = qword_1016AF8D0;
  if (!qword_1016AF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF8D0);
  }

  return result;
}

unint64_t sub_10058B044()
{
  result = qword_1016A4968;
  if (!qword_1016A4968)
  {
    sub_1000BC580(&qword_1016A4958, &qword_1013B1330);
    sub_10058B0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4968);
  }

  return result;
}

unint64_t sub_10058B0C8()
{
  result = qword_1016A4970;
  if (!qword_1016A4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4970);
  }

  return result;
}

uint64_t sub_10058B134(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10058B14C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100359088(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10058B200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10058B268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10058B2C8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 167) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  if (*(v0 + v4))
  {
  }

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10058B408(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10053D770(a1, *(v2 + 16), v2 + v6, v2 + v7, *(v2 + ((v7 + 167) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 167) & 0xFFFFFFFFFFFFFFF8) + 8), a2);
}

uint64_t sub_10058B4BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10058B568()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100546130(v0 + v2, v4, v5);
}

unint64_t sub_10058B620()
{
  result = qword_1016A49B8;
  if (!qword_1016A49B8)
  {
    sub_1000BC580(&qword_1016A49B0, &unk_1013B1368);
    sub_100003DFC(&qword_1016A49C0, type metadata accessor for CompanionSelfBeaconingKeyEnvelope, &unk_1013B2ABC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A49B8);
  }

  return result;
}

uint64_t sub_10058B6EC(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t sub_10058B794()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

unint64_t sub_10058B858()
{
  result = qword_1016A49F0;
  if (!qword_1016A49F0)
  {
    sub_1000BC580(&qword_1016A49E8, &qword_1013B1390);
    sub_100003DFC(&qword_1016A49F8, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope, &unk_1013B2A94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A49F0);
  }

  return result;
}

unint64_t sub_10058B9E8()
{
  result = qword_1016A4A10;
  if (!qword_1016A4A10)
  {
    sub_1000BC580(&qword_1016A4A08, &qword_1013B13A0);
    sub_10058BA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A10);
  }

  return result;
}

unint64_t sub_10058BA6C()
{
  result = qword_1016A4A18;
  if (!qword_1016A4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A18);
  }

  return result;
}

unint64_t sub_10058BB20()
{
  result = qword_1016A4A20;
  if (!qword_1016A4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A20);
  }

  return result;
}

uint64_t sub_10058BCE8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, v7, v3 + v6, v9, v10);
}

uint64_t sub_10058BDA4()
{
  v1 = *(type metadata accessor for SecureLocationsRelayAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100016590(v4[2], v4[3]);
    v6 = v4[5];
    if (v6 >> 60 != 15)
    {
      sub_100016590(v4[4], v6);
    }

    v7 = v4 + *(type metadata accessor for SecureLocationsRelayAction.SendMessage(0) + 24);
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    v13 = *(v9 + 8);
    v13(v7, v8);
    v10 = type metadata accessor for MessagingOptions(0);

    v11 = *(v10 + 28);
    if (!(*(v9 + 48))(&v7[v11], 1, v8))
    {
      v13(&v7[v11], v8);
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
LABEL_13:
  }

LABEL_14:

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10058BFBC(void (*a1)(void))
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v1 + v5, v3);
  a1(*(v1 + v6));

  return _swift_deallocObject(v1, v6 + 8);
}

uint64_t sub_10058C0A4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005425AC(v3, v0 + v2, v4);
}

uint64_t sub_10058C134()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10058C210(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(a1, v6, v2 + v5, v8, v9);
}

uint64_t sub_10058C2D0(id *a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1009ECED0(a1, v4, v5, v6);
}

uint64_t sub_10058C344()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(*(v1 - 1) + 64);
  v15 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v2 = v0 + v15;
  sub_100016590(*(v0 + v15), *(v0 + v15 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v15 + v3, v4);
  v6(v0 + v15 + v1[6], v4);

  v7 = v1[18];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v15 + v7, v8);
  v9 = v1[19];
  v10 = *(v5 + 48);
  if (!v10(v0 + v15 + v9, 1, v4))
  {
    v6(v2 + v9, v4);
  }

  v11 = v2 + v1[20];
  v12 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = *(v12 + 20);
    if (!v10(v11 + v13, 1, v4))
    {
      v6(v11 + v13, v4);
    }
  }

  return _swift_deallocObject(v0, ((((v16 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10058C5E0(void **a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *a1;

  return sub_1009ED964(v8, v1 + v4, v6, v7);
}

uint64_t sub_10058C68C()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 32) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 32) & ~v2) + v16);
}

uint64_t sub_10058C988(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1001DCC34(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_10058CA64(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_10058CAE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1001DB9D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10058CBF4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10058CCEC(uint64_t (*a1)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + v4);
  v8 = *(v1 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);

  return a1(v5, v6, v1 + v3, v7, v8);
}

uint64_t sub_10058CDB0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32);
}

uint64_t sub_10058CE5C()
{
  v1 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100575A3C((v0 + v2), v0 + v5, v6);
}

uint64_t sub_10058CF54(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100575EB4(a1, v4);
}

uint64_t sub_10058CFD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1005327C4(a1, v4, v5, v7, v6);
}

uint64_t sub_10058D098(uint64_t a1)
{

  sub_10053067C(sub_10058D0E8, a1);
}

unint64_t sub_10058D134()
{
  result = qword_1016A4A40;
  if (!qword_1016A4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A40);
  }

  return result;
}

unint64_t sub_10058D18C()
{
  result = qword_1016A4A48;
  if (!qword_1016A4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A48);
  }

  return result;
}

unint64_t sub_10058D228()
{
  result = qword_1016A4A60;
  if (!qword_1016A4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A60);
  }

  return result;
}

unint64_t sub_10058D280()
{
  result = qword_1016A4A68;
  if (!qword_1016A4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A68);
  }

  return result;
}

unint64_t sub_10058D2D8()
{
  result = qword_1016A4A70;
  if (!qword_1016A4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A70);
  }

  return result;
}

uint64_t sub_10058D744()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AF28);
  sub_1000076D4(v0, qword_10177AF28);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10058D7C0()
{
  result = static Duration.seconds(_:)();
  qword_10177AF40 = result;
  *algn_10177AF48 = v1;
  return result;
}

uint64_t sub_10058D7E8(char *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v4 + 112) = &off_1016097A8;
  *(v4 + 120) = &off_1016097D8;
  ContinuousClock.init()();
  *(v4 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_rssiBuffer) = _swiftEmptyDictionarySingleton;
  *(v4 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastProximityLevel) = 2;
  static ContinuousClock.Instant.now.getter();
  v12 = *(v9 + 16);
  v12(v4 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_beacon, a1, v8);
  if (a3)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2;
  }

  if (__OFSUB__(v13, 4))
  {
    __break(1u);
  }

  else
  {
    v28 = v13 - 4;
    if (qword_1016947D0 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AF28);
  v12(v11, a1, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = a1;
    v29 = v26;
    *v17 = 134218755;
    *(v17 + 4) = v13;
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_10058F70C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v9 + 8);
    v21(v11, v8);
    v22 = sub_1000136BC(v18, v20, &v29);

    *(v17 + 24) = v22;
    *(v17 + 32) = 2048;
    v23 = v28;
    *(v17 + 34) = v28;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received TX Power: %ld for beacon %{private,mask.hash}s. Calibrated: %ld.", v17, 0x2Au);
    sub_100007BAC(v26);

    v21(v27, v8);
  }

  else
  {

    v24 = *(v9 + 8);
    v24(a1, v8);
    v24(v11, v8);
    v23 = v28;
  }

  *(v4 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_txPower) = v23;
  return v4;
}

uint64_t sub_10058DB6C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock.Instant();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_10058DC94, v1, 0);
}

uint64_t sub_10058DC94()
{
  v83 = v0;
  v1 = *(v0 + 144);
  v2 = [*(v0 + 136) rssi];
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_txPower);
  v4 = &v2[-v3];
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = *(v0 + 144);
  v6 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_rssiBuffer;
  swift_beginAccess();
  if (!*(*(v5 + v6) + 16))
  {
    v7 = *(v0 + 200);
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v10 = *(v0 + 144);
    ContinuousClock.now.getter();
    v11 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastMeasurementTime;
    swift_beginAccess();
    (*(v9 + 40))(v10 + v11, v7, v8);
    swift_endAccess();
    if (qword_1016947D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177AF28);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v82 = v78;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10058F70C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = sub_1000136BC(v16, v17, &v82);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "BTRSSIFilter is initialized for beacon: %{private,mask.hash}s", v15, 0x16u);
      sub_100007BAC(v78);
    }
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    if (qword_1016947D0 == -1)
    {
LABEL_10:
      v19 = type metadata accessor for Logger();
      sub_1000076D4(v19, qword_10177AF28);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 134218499;
        *(v22 + 4) = v4;
        *(v22 + 12) = 2160;
        *(v22 + 14) = 1752392040;
        *(v22 + 22) = 2081;
        type metadata accessor for UUID();
        sub_10058F70C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = sub_1000136BC(v24, v25, &v82);

        *(v22 + 24) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "Ignoring invalid RSSI value: %ld from beacon %{private,mask.hash}s", v22, 0x20u);
        sub_100007BAC(v23);
      }

      goto LABEL_13;
    }

LABEL_38:
    swift_once();
    goto LABEL_10;
  }

  if (qword_1016947D0 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 136);
  v30 = type metadata accessor for Logger();
  v31 = sub_1000076D4(v30, qword_10177AF28);

  v32 = v29;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v0 + 136);
    v36 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v82 = v76;
    *v36 = 138413059;
    *(v36 + 4) = v35;
    *v75 = v35;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v4;
    *(v36 + 22) = 2160;
    *(v36 + 24) = 1752392040;
    *(v36 + 32) = 2081;
    type metadata accessor for UUID();
    v79 = v5;
    sub_10058F70C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = v35;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = sub_1000136BC(v38, v39, &v82);

    *(v36 + 34) = v40;
    v5 = v79;
    _os_log_impl(&_mh_execute_header, v33, v34, "Adding measurement: %@. Adjusted RSSI: %ld. Beacon: %{private,mask.hash}s.", v36, 0x2Au);
    sub_100288C6C(v75);

    sub_100007BAC(v76);
  }

  [*(v0 + 136) channel];
  v41 = *(v5 + v6);
  if (*(v41 + 16) && (v42 = sub_100777018(), (v43 & 1) != 0))
  {
    v44 = *(*(v41 + 56) + 8 * v42);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_100A5D2D8(0, *(v44 + 2) + 1, 1, v44);
    }

    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_100A5D2D8((v45 > 1), v46 + 1, 1, v44);
    }

    v47 = *(v0 + 136);
    *(v44 + 2) = v46 + 1;
    *&v44[8 * v46 + 32] = v4;
    v48 = [v47 channel];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v5 + v6);
    *(v5 + v6) = 0x8000000000000000;
    v50 = v44;
    v51 = v48;
  }

  else
  {
    v52 = [*(v0 + 136) channel];
    sub_1000BC4D4(&qword_10169D108, &qword_10139AAA8);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_101385D80;
    *(v53 + 32) = v4;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v5 + v6);
    *(v5 + v6) = 0x8000000000000000;
    v50 = v53;
    v51 = v52;
  }

  sub_100FFE5CC(v50, v51, isUniquelyReferenced_nonNull_native);
  *(v5 + v6) = v82;
  swift_endAccess();
  v54 = *(v0 + 200);
  v55 = *(v0 + 176);
  v56 = *(v0 + 184);
  v74 = *(v0 + 168);
  v57 = *(v0 + 144);
  v77 = *(v0 + 160);
  v80 = *(v0 + 152);
  ContinuousClock.now.getter();
  v58 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastMeasurementTime;
  swift_beginAccess();
  v59 = *(v56 + 16);
  v59(v54, v57 + v58, v55);
  ContinuousClock.Instant.duration(to:)();
  v60 = *(v56 + 8);
  *(v0 + 208) = v60;
  *(v0 + 216) = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v60(v54, v55);
  v59(v54, v57 + v58, v55);
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  sub_10058F70C(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  v61 = static Duration.description<A>(_:_:units:)();
  v63 = v62;
  (*(v77 + 8))(v74, v80);
  v60(v54, v55);
  if (qword_1016947D8 != -1)
  {
    swift_once();
  }

  if (static Duration.< infix(_:_:)())
  {

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 192);
    v68 = *(v0 + 176);
    if (v66)
    {
      v81 = *(v0 + 176);
      v69 = v61;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v82 = v71;
      *v70 = 136315138;
      v72 = sub_1000136BC(v69, v63, &v82);

      *(v70 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "Not returning result yet. Duration since last update: %s", v70, 0xCu);
      sub_100007BAC(v71);

      v60(v67, v81);
    }

    else
    {

      v60(v67, v68);
    }

LABEL_13:

    v27 = *(v0 + 8);

    return v27(0);
  }

  v73 = swift_task_alloc();
  *(v0 + 224) = v73;
  *v73 = v0;
  v73[1] = sub_10058E7C8;

  return sub_10058F09C();
}

uint64_t sub_10058E7C8(uint64_t a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10058E8E0, v2, 0);
}

uint64_t sub_10058E8E0()
{
  v1 = *(v0 + 232);
  (*(v0 + 208))(*(v0 + 192), *(v0 + 176));

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_10058E994()
{
  v47 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_rssiBuffer;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16) && (sub_100777018(), (v3 & 1) != 0))
  {
    sub_1000C3258();

    Array<A>.mean.getter();
    v5 = v4;
  }

  else
  {
    v5 = -128.0;
  }

  if (*(*(v1 + v2) + 16) && (sub_100777018(), (v6 & 1) != 0))
  {
    sub_1000C3258();

    Array<A>.mean.getter();
    v8 = v7;
  }

  else
  {
    v8 = -128.0;
  }

  if (*(*(v1 + v2) + 16) && (sub_100777018(), (v9 & 1) != 0))
  {
    sub_1000C3258();

    Array<A>.mean.getter();
    v11 = v10;
  }

  else
  {
    v11 = -128.0;
  }

  if (v5 > v8)
  {
    v12 = v5;
  }

  else
  {
    v12 = v8;
  }

  if (v12 > v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (qword_1016947D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AF28);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v45 = v0;
    v18 = swift_slowAlloc();
    v46 = v18;
    *v17 = 134219267;
    *(v17 + 4) = v5;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v8;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v11;
    *(v17 + 32) = 2048;
    *(v17 + 34) = v13;
    *(v17 + 42) = 2160;
    *(v17 + 44) = 1752392040;
    *(v17 + 52) = 2081;
    type metadata accessor for UUID();
    sub_10058F70C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_1000136BC(v19, v20, &v46);

    *(v17 + 54) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "channel37Average: %f. channel38Average: %f. channel39Average: %f. filteredRSSI: %f. Beacon %{private,mask.hash}s", v17, 0x3Eu);
    sub_100007BAC(v18);
    v0 = v45;
  }

  v22 = *(v0 + 40);
  v23 = *(v22 + 112);
  v24 = *(v23 + 16);
  if (!v24)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (*(v23 + 32) >= v13)
  {
    if (v24 == 1)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (*(v23 + 40) < v13)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastProximityLevel;
  v27 = *(v22 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastProximityLevel);
  if (v27 == 2)
  {
    goto LABEL_39;
  }

  if (__OFSUB__(v25, v27))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v25 - v27 != 1)
  {
    goto LABEL_39;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v28 = *(v22 + 120);
  if (v27 >= *(v28 + 16))
  {
LABEL_56:
    __break(1u);
    return;
  }

  v29 = *(v28 + 8 * v27 + 32);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  if (v13 < v29)
  {
    if (v32)
    {
      v33 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10058F70C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = sub_1000136BC(v34, v35, &v46);

      *(v33 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "RSSI decrease is enough to switch to the lower level. Beacon: %{private,mask.hash}s.", v33, 0x16u);
      sub_100007BAC(v43);
    }

LABEL_39:
    *(v22 + v26) = v25;
    goto LABEL_40;
  }

  if (v32)
  {
    v39 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v39 = 141558275;
    *(v39 + 4) = 1752392040;
    *(v39 + 12) = 2081;
    type metadata accessor for UUID();
    sub_10058F70C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = sub_1000136BC(v40, v41, &v46);

    *(v39 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v30, v31, "RSSI decrease is NOT small enough to switch to the lower level. Beacon: %{private,mask.hash}s.", v39, 0x16u);
    sub_100007BAC(v44);
  }

LABEL_40:
  *(v1 + v2) = _swiftEmptyDictionarySingleton;

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v37 = *(v22 + v26);
  v38 = *(v0 + 8);

  v38(v37, 0, v13);
}

uint64_t sub_10058F09C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_10058F1E4;

  return sub_10058E974();
}

uint64_t sub_10058F1E4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  *(v4 + 96) = a2;
  *(v4 + 80) = a1;
  *(v4 + 88) = a3;

  return _swift_task_switch(sub_10058F300, v5, 0);
}

uint64_t sub_10058F300()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  v14 = *(v0 + 48);
  v15 = *(v0 + 24);
  (*(v5 + 16))(v4, *(v0 + 16) + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_beacon);
  static Date.now.getter();
  if (v1)
  {
    v3 = 3;
  }

  v8 = objc_allocWithZone(SPBTRSSIResult);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10 = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v8 initWithBeaconIdentifier:isa timestamp:v10 bucket:v3 rssi:v2];

  (*(v7 + 8))(v6, v15);
  (*(v5 + 8))(v4, v14);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_10058F464()
{

  v1 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_beacon;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_clock;
  v4 = type metadata accessor for ContinuousClock();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastMeasurementTime;
  v6 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for BTRSSIFilter(uint64_t a1)
{
  result = qword_1016A4AC8;
  if (!qword_1016A4AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10058F5D0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContinuousClock();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ContinuousClock.Instant();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10058F70C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10058F754@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v125 = a1;
  v126 = a2;
  v119 = a4;
  v6 = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
  __chkstk_darwin(v6 - 8);
  v120 = &v104[-v7];
  v8 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v117 = *(v8 - 8);
  v118 = v8;
  __chkstk_darwin(v8);
  v114 = &v104[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  v11 = __chkstk_darwin(v10 - 8);
  v116 = &v104[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v104[-v13];
  v124 = type metadata accessor for CachedHistoricalLocation(0);
  v115 = *(v124 - 8);
  __chkstk_darwin(v124);
  v127 = &v104[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for BeaconPayloadv1(0);
  v17 = __chkstk_darwin(v16);
  v122 = &v104[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v21 = &v104[-v20];
  v22 = __chkstk_darwin(v19);
  v121 = &v104[-v23];
  __chkstk_darwin(v22);
  v128 = &v104[-v24];
  v25 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v25 - 8);
  v27 = &v104[-v26];
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v123 = &v104[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v33 = &v104[-v32];
  sub_10047895C(v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10000B3A8(v27, &unk_101696900, &unk_10138B1E0);
    sub_10059022C();
    swift_allocError();
    *v34 = 0;
    return swift_willThrow();
  }

  v113 = a3;
  v36 = v16;
  v112 = v14;
  v37 = v28;
  v38 = v29;
  v41 = *(v29 + 32);
  v39 = v29 + 32;
  v40 = v41;
  v41(v33, v27, v37);
  v42 = v129;
  result = Data.init(contentsOf:options:)();
  if (v42)
  {
    return (*(v38 + 8))(v33, v37);
  }

  v106 = v40;
  v110 = v37;
  v109 = v38;
  v107 = v39;
  v111 = v33;
  v44 = v43 >> 62;
  v129 = v43;
  v45 = result;
  v108 = v4;
  if ((v43 >> 62) > 1)
  {
    v46 = v36;
    if (v44 != 2)
    {
      v47 = 0;
      goto LABEL_15;
    }

    v49 = *(result + 16);
    v48 = *(result + 24);
    v47 = v48 - v49;
    v50 = v113;
    v51 = v126;
    if (__OFSUB__(v48, v49))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_13:
    sub_100017D5C(result, v43);
    goto LABEL_16;
  }

  v46 = v36;
  if (v44)
  {
    v50 = v113;
    v51 = v126;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v47 = HIDWORD(result) - result;
    goto LABEL_13;
  }

  v47 = BYTE6(v43);
LABEL_15:
  v50 = v113;
  v51 = v126;
LABEL_16:
  sub_100A2A240(3);
  v53 = v52;
  v54 = v125;
  sub_100017D5C(v51, v50);
  if (v47 >= v53)
  {
    v21 = v122;
    sub_100A2AA58(v54, v45, v129, v51, v50, v122);
  }

  else
  {
    sub_100A2B118(v54, v45, v129, v51, v50, v21);
  }

  v55 = v121;
  sub_100590280(v21, v121);
  v56 = v128;
  sub_100590280(v55, v128);
  v57 = *v56;
  v58 = v56[1];
  sub_100017D5C(*v56, v58);
  v59 = static MACAddress.length.getter();
  sub_10002EA98(v59, v57, v58, &v130);
  v60 = v130;
  v61 = v131;
  v63 = *v56;
  v62 = v56[1];
  sub_100017D5C(*v56, v62);
  sub_100017D5C(v63, v62);
  v64 = static MACAddress.length.getter();
  sub_10002EA98(v64, v63, v62, &v130);
  result = v130;
  v65 = v131;
  v66 = v131 >> 62;
  if ((v131 >> 62) <= 1)
  {
    if (!v66)
    {
      v67 = BYTE6(v131);
      sub_100016590(v130, v131);
      result = v67;
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (v66 != 2)
  {
    sub_100016590(v130, v131);
    result = 0;
    goto LABEL_29;
  }

  v69 = *(v130 + 16);
  v68 = *(v130 + 24);
  sub_100016590(v130, v131);
  result = v68 - v69;
  if (__OFSUB__(v68, v69))
  {
    __break(1u);
LABEL_26:
    v70 = HIDWORD(result);
    v71 = result;
    result = sub_100016590(result, v65);
    if (__OFSUB__(v70, v71))
    {
LABEL_47:
      __break(1u);
      return result;
    }

    result = v70 - v71;
  }

LABEL_29:
  v72 = v62 >> 62;
  if ((v62 >> 62) > 1)
  {
    if (v72 == 2)
    {
      v73 = *(v63 + 24);
    }

    else
    {
      v73 = 0;
    }
  }

  else if (v72)
  {
    v73 = v63 >> 32;
  }

  else
  {
    v73 = BYTE6(v62);
  }

  v125 = v61;
  v126 = v60;
  if (v73 < result)
  {
    __break(1u);
    goto LABEL_45;
  }

  v121 = Data._Representation.subscript.getter();
  v113 = v74;
  sub_100016590(v63, v62);
  v75 = v46[9];
  v105 = *(v128 + v46[10]);
  v76 = *(v128 + v46[7]);
  v77 = *(v128 + v46[8]);
  v78 = *(v128 + v75);
  v79 = *(v109 + 16);
  v80 = v127;
  v81 = v110;
  v79(&v127[*(v124 + 28)], v128 + v46[5], v110);
  *v80 = v76;
  v80[1] = v77;
  v80[2] = v78;
  v79(v123, v111, v81);
  v82 = v112;
  sub_1004784B0(v112);
  v83 = v118;
  v84 = *(v117 + 48);
  v85 = v84(v82, 1, v118);
  v122 = 0;
  if (v85)
  {
    sub_10000B3A8(v82, &qword_10169BA58, &unk_101395640);
    v86 = 0;
  }

  else
  {
    v87 = v114;
    sub_100590354(v82, v114, type metadata accessor for BeaconPayloadFile.MetaData);
    sub_10000B3A8(v82, &qword_10169BA58, &unk_101395640);
    v86 = v87[*(v83 + 28)];
    sub_1005903BC(v87, type metadata accessor for BeaconPayloadFile.MetaData);
  }

  v88 = v120;
  sub_100590354(v127, v120, type metadata accessor for CachedHistoricalLocation);
  v89 = v88;
  (*(v115 + 56))(v88, 0, 1, v124);
  v90 = v116;
  sub_1004784B0(v116);
  sub_100016590(v45, v129);
  v91 = v84(v90, 1, v83);
  v92 = v126;
  if (v91)
  {
    sub_10000B3A8(v90, &qword_10169BA58, &unk_101395640);
    v93 = 0;
  }

  else
  {
    v94 = v114;
    sub_100590354(v90, v114, type metadata accessor for BeaconPayloadFile.MetaData);
    sub_10000B3A8(v90, &qword_10169BA58, &unk_101395640);
    v93 = v94[*(v83 + 48)];
    sub_1005903BC(v94, type metadata accessor for BeaconPayloadFile.MetaData);
  }

  v95 = v119;
  v96 = v111;
  v97 = v121;
  v98 = v113;
  v99 = v93 & 1;
  v100 = type metadata accessor for BeaconPayload(0);
  v95[3] = v100;
  v95[4] = &off_1016528A0;
  v101 = sub_1000280DC(v95);
  v102 = v125;
  *v101 = v92;
  v101[1] = v102;
  v101[2] = v97;
  v101[3] = v98;
  *(v101 + 32) = v105;
  *(v101 + 5) = xmmword_10138C660;
  v101[7] = 0;
  v103 = v110;
  v106(v101 + v100[9], v123, v110);
  *(v101 + v100[10]) = v86;
  sub_1005902E4(v89, v101 + v100[11]);
  *(v101 + v100[12]) = v99;
  sub_1005903BC(v127, type metadata accessor for CachedHistoricalLocation);
  (*(v109 + 8))(v96, v103);
  return sub_1005903BC(v128, type metadata accessor for BeaconPayloadv1);
}

unint64_t sub_10059022C()
{
  result = qword_1016A4BF0;
  if (!qword_1016A4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4BF0);
  }

  return result;
}

uint64_t sub_100590280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconPayloadv1(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005902E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100590354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005903BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static AirPodsSendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static AirPodsSendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

double AirPodsSendPairingStatusCommandPayload.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1005907F4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t AirPodsSendPairingStatusCommandPayload.encode(to:)(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v10 = *v1;
  v5 = *v1;
  sub_10015049C(v6, v7);
  sub_1001022C4(&v10, v4);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v5, *(&v5 + 1));
  if (!v2)
  {
    v9 = v1[1];
    v5 = v1[1];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v9, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v8 = v1[2];
    v5 = v1[2];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v8, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
  }

  return sub_100007BAC(v6);
}

uint64_t sub_1005906F4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_33;
    }

    v8 = v8;
  }

LABEL_10:
  if (v8 != 60)
  {
    goto LABEL_35;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a4);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v13 = v13;
      goto LABEL_20;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 != 2)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v11 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v11)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v13 != 4)
  {
    goto LABEL_36;
  }

  v16 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a6);
      goto LABEL_30;
    }

LABEL_28:
    LODWORD(v17) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v17 = v17;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (v16 != 2)
  {
    goto LABEL_37;
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  v11 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v11)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  if (v17 == 100)
  {
    *a7 = result;
    a7[1] = a2;
    a7[2] = a3;
    a7[3] = a4;
    a7[4] = a5;
    a7[5] = a6;
    return result;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1005907F4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v15, v16);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v15);
    return sub_100007BAC(a1);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    sub_10015049C(v15, v16);
    v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v18 = v10;
    sub_10015049C(v15, v16);
    v11 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    sub_1005906F4(v7, v8, v9, v18, v11, v12, v17);
    sub_100007BAC(v15);
    result = sub_100007BAC(a1);
    v14 = v17[1];
    *a2 = v17[0];
    a2[1] = v14;
    a2[2] = v17[2];
  }

  return result;
}

unint64_t sub_100590974(uint64_t a1)
{
  *(a1 + 8) = sub_1005909A4();
  result = sub_1005909F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1005909A4()
{
  result = qword_1016A4C00;
  if (!qword_1016A4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4C00);
  }

  return result;
}

unint64_t sub_1005909F8()
{
  result = qword_1016A4C08;
  if (!qword_1016A4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4C08);
  }

  return result;
}

uint64_t sub_100590A4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_100590AB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100590ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100590B30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100590B98()
{
  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v23 = 0x203A7865646E693CLL;
  v24 = 0xE800000000000000;
  v1 = *v0;
  *&v25 = 0x7972616D6972702ELL;
  *(&v25 + 1) = 0xEA0000000000282FLL;
  v22[0] = v1;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x7972616D6972702ELL;
  v4._object = 0xEA0000000000282FLL;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A74766461202CLL;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  v25 = *(v0 + 8);
  v6 = v25;
  sub_100590F20(&v25, v22);
  sub_10002EA98(6, v6, *(&v6 + 1), v22);
  v7 = v22[0];
  v8 = v22[1];
  sub_100019D9C();
  v9 = RawRepresentable<>.hexString.getter();
  v11 = v10;
  sub_100016590(v7, v8);
  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x203A6B746C202CLL;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v14 = Data.subdata(in:)();
  v16 = v15;
  v17 = Data.hexString.getter();
  v19 = v18;
  sub_100016590(v14, v16);
  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  return v23;
}

uint64_t sub_100590D7C()
{
  _StringGuts.grow(_:)(29);

  strcpy(&v13, ".secondary/(");
  BYTE5(v13._object) = 0;
  HIWORD(v13._object) = -5120;
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  String.append(_:)(v13);

  v2._countAndFlagsBits = 0x203A74766461202CLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  sub_10002EE9C();
  v3._countAndFlagsBits = RawRepresentable<>.hexString.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x203A6B746C202CLL;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5 = Data.subdata(in:)();
  v7 = v6;
  v8 = Data.hexString.getter();
  v10 = v9;
  sub_100016590(v5, v7);
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  return 0x203A7865646E693CLL;
}

uint64_t sub_100590F94(void *a1, char a2)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v8 = a2;
  sub_1000198E8();
  v5 = FixedWidthInteger.data.getter();
  v6 = v3;
  sub_10015049C(v7, v7[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v5, v6);
  return sub_100007BAC(v7);
}

uint64_t sub_100591060@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10059112C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10059108C(uint64_t a1)
{
  *(a1 + 8) = sub_1005910BC();
  result = sub_10030FD7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1005910BC()
{
  result = qword_1016A4C70;
  if (!qword_1016A4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4C70);
  }

  return result;
}

uint64_t sub_10059112C(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v13, v13[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_100017D5C(v5, v6);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v12 != 1)
    {
      v4 = v11;
      sub_100016590(v7, v8);
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v4;
    }

    v4 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v9, enum case for BinaryDecodingError.decodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v13);
  sub_100007BAC(a1);
  return v4;
}

uint64_t type metadata accessor for FindMyAirPodsFamilyShareEnvelope(uint64_t a1)
{
  result = qword_1016A4CD0;
  if (!qword_1016A4CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100591370(uint64_t a1)
{
  type metadata accessor for SharedBeaconRecord(319);
  if (v1 <= 0x3F)
  {
    sub_1005913F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005913F4(uint64_t a1)
{
  if (!qword_10169C360)
  {
    type metadata accessor for FamilyCryptoKeysV1(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_10169C360);
    }
  }
}

uint64_t sub_10059144C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A4D10, &qword_1013B1C98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100591BCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for SharedBeaconRecord(0);
  sub_100591D20(&qword_1016A4918, type metadata accessor for SharedBeaconRecord, &unk_10140BA4C);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    MyAirPodsFamilyShareEnvelope = type metadata accessor for FindMyAirPodsFamilyShareEnvelope(0);
    v13 = *(v3 + *(MyAirPodsFamilyShareEnvelope + 20));
    v12 = 1;
    sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
    sub_100591C84(&qword_10169C468, &qword_10169C470, &unk_1013E9BB4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + *(MyAirPodsFamilyShareEnvelope + 24));
    v12 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005916B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A4D20, &qword_1013B1CA8);
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  MyAirPodsFamilyShareEnvelope = type metadata accessor for FindMyAirPodsFamilyShareEnvelope(0);
  __chkstk_darwin(MyAirPodsFamilyShareEnvelope);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  sub_1000035D0(a1, v13);
  sub_100591BCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v22);
  }

  v14 = v20;
  v15 = v12;
  LOBYTE(v24) = 0;
  sub_100591D20(&qword_1016CAC80, type metadata accessor for SharedBeaconRecord, &unk_10140BA74);
  v16 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100591C20(v6, v15);
  sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
  v23 = 1;
  v18 = sub_100591C84(&qword_10169C498, &qword_10169C4A0, &unk_1013E9BDC, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v15 + *(MyAirPodsFamilyShareEnvelope + 20)) = v24;
  v23 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v9, v16);
  *(v15 + *(MyAirPodsFamilyShareEnvelope + 24)) = v24;
  sub_100591D68(v15, v19);
  sub_100007BAC(v22);
  return sub_100591DCC(v15, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
}

unint64_t sub_100591A94()
{
  v1 = 0xD000000000000012;
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
    return 0x6542646572616873;
  }
}

uint64_t sub_100591AFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100591F44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100591B24(uint64_t a1)
{
  v2 = sub_100591BCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100591B60(uint64_t a1)
{
  v2 = sub_100591BCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100591BCC()
{
  result = qword_1016A4D18;
  if (!qword_1016A4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4D18);
  }

  return result;
}

uint64_t sub_100591C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100591C84(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C460, &qword_1013B1CA0);
    sub_100591D20(a2, type metadata accessor for FamilyCryptoKeysV1, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100591D20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100591D68(uint64_t a1, uint64_t a2)
{
  MyAirPodsFamilyShareEnvelope = type metadata accessor for FindMyAirPodsFamilyShareEnvelope(0);
  (*(*(MyAirPodsFamilyShareEnvelope - 8) + 16))(a2, a1, MyAirPodsFamilyShareEnvelope);
  return a2;
}

uint64_t sub_100591DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100591E40()
{
  result = qword_1016A4D28;
  if (!qword_1016A4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4D28);
  }

  return result;
}

unint64_t sub_100591E98()
{
  result = qword_1016A4D30;
  if (!qword_1016A4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4D30);
  }

  return result;
}

unint64_t sub_100591EF0()
{
  result = qword_1016A4D38;
  if (!qword_1016A4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4D38);
  }

  return result;
}

uint64_t sub_100591F44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6542646572616873 && a2 == 0xEC0000006E6F6361;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135B260 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010135B280 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static AirPodsSWSendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static AirPodsSWSendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

double AirPodsSWSendPairingStatusCommandPayload.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1005923A4(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t ProximitySendPairingStatusCommandPayload.encode(to:)(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v11 = *v1;
  v5 = *v1;
  sub_10015049C(v6, v7);
  sub_1001022C4(&v11, v4);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v5, *(&v5 + 1));
  if (!v2)
  {
    v10 = v1[1];
    v5 = v1[1];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v10, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v9 = v1[2];
    v5 = v1[2];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v9, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v8 = v1[3];
    v5 = v1[3];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v8, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
  }

  return sub_100007BAC(v6);
}

uint64_t sub_1005923A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v33, v34);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v33);
    return sub_100007BAC(a1);
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v33, v34);
  v35 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v10 = v9;
  sub_10015049C(v33, v34);
  v30 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v31 = v11;
  sub_10015049C(v33, v34);
  v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v28 = v14;
  v29 = v12;
  sub_1000E0A3C();
  v15 = DataProtocol.intValue.getter();
  result = sub_10002EA98(v15, v30, v31, v32);
  v16 = v32[0];
  v17 = v32[1];
  v18 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    v19 = v35;
    if (!v18)
    {
      v20 = BYTE6(v8);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v19 = v35;
  if (v18 != 2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = *(v7 + 16);
  v21 = *(v7 + 24);
  v23 = __OFSUB__(v21, v22);
  v20 = v21 - v22;
  if (v23)
  {
    __break(1u);
LABEL_11:
    LODWORD(v20) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v20 = v20;
  }

LABEL_13:
  if (v20 != 85)
  {
    goto LABEL_27;
  }

  v24 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(v10);
      goto LABEL_23;
    }

LABEL_21:
    LODWORD(v25) = HIDWORD(v19) - v19;
    if (!__OFSUB__(HIDWORD(v19), v19))
    {
      v25 = v25;
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (v24 != 2)
  {
    goto LABEL_28;
  }

  v27 = *(v19 + 16);
  v26 = *(v19 + 24);
  v23 = __OFSUB__(v26, v27);
  v25 = v26 - v27;
  if (v23)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  if (v25 == 4)
  {
    sub_100007BAC(v33);
    result = sub_100007BAC(a1);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v19;
    a2[3] = v10;
    a2[4] = v16;
    a2[5] = v17;
    a2[6] = v29;
    a2[7] = v28;
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_10059261C(uint64_t a1)
{
  *(a1 + 8) = sub_10059264C();
  result = sub_10039294C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10059264C()
{
  result = qword_1016A4D48;
  if (!qword_1016A4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4D48);
  }

  return result;
}

uint64_t sub_1005926B0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AF58);
  v1 = sub_1000076D4(v0, qword_10177AF58);
  if (qword_1016947E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AF70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100592778@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A4798, &qword_1013B1150);
  sub_100599720();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for LegacyShareEnvelope(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for LegacyShareEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100592A30@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A47B8, &qword_1013B1160);
  sub_100599828();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for FamilyShareEnvelopeV1(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for FamilyShareEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100592CE8@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A4800, &unk_1013B1198);
  sub_1005998DC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for FindMyAccessoryFamilyShareEnvelope(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100592FA0@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A47D8, &qword_1013B1170);
  sub_100599990();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for FindMyAirPodsFamilyShareEnvelope(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100593258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v15[3] = &type metadata for Bool;
  LOBYTE(v15[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v15, v8);
  v10(v14, 0);
  sub_1000BC4D4(&qword_1016A4F98, &qword_1013B2158);
  sub_10059932C(&qword_1016A4FA0, &qword_1016A4F98, &qword_1013B2158, sub_100599A44);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    v11 = *(v15[0] + 16);

    if (!v11)
    {
      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1005934C8@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  sub_100599E1C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = type metadata accessor for UUID();
      (*(*(v12 - 8) + 16))(a3, v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)), v12);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100593770@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A46C8, &unk_1013B2160);
  sub_100599A98();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100593A28@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_101697720, &unk_101392640);
  sub_100599B4C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for SharedBeaconRecord);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100593CE0@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A4820, &unk_1013B2170);
  sub_100599C00();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for LegacySelfBeaconingKeyEnvelope(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100593F98@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A4860, &qword_1013B1208);
  sub_100599CB4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for SelfBeaconingKeyEnvelope(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for SelfBeaconingKeyEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100594250@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A4840, &unk_1013B2180);
  sub_100599D68();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for FindMyAccessoryFamilyKeyEnvelope(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100594508@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A4880, &qword_1013B1230);
  sub_100599ED0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for KeyRequestEnvelope(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for KeyRequestEnvelope);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1005947C0@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A46F0, &qword_1013B1020);
  sub_100599F84();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for BeaconObservation(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for BeaconObservation);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
      sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}

void *sub_100594A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000076D4(v6, static CodingUserInfoKey.messagingCoder);
  (*(v7 + 16))(v9, v10, v6);
  v15[3] = &type metadata for Bool;
  LOBYTE(v15[0]) = 1;
  v11 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v15, v9);
  v11(v14, 0);
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  sub_10059932C(&qword_1016A5018, &qword_10169B770, &unk_101395210, sub_100599F84);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v15[0] + 16))
    {
      v5 = *(v15[0] + 32);

      return v5;
    }

    v5 = &unk_1013B2148;
    sub_1000BC4D4(&qword_1016A4F58, &unk_1013B2148);
    sub_1005997D4(&qword_1016A4F60, &qword_1016A4F58, &unk_1013B2148);
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  return v5;
}

void *sub_100594D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000076D4(v6, static CodingUserInfoKey.messagingCoder);
  (*(v7 + 16))(v9, v10, v6);
  v15[3] = &type metadata for Bool;
  LOBYTE(v15[0]) = 1;
  v11 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v15, v9);
  v11(v14, 0);
  sub_1000BC4D4(&qword_1016A4A08, &qword_1013B13A0);
  sub_10059932C(&qword_1016A4F28, &qword_1016A4A08, &qword_1013B13A0, sub_1005996CC);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v4)
  {
    if (*(v15[0] + 16))
    {
      v5 = *(v15[0] + 32);

      return v5;
    }

    v5 = &unk_1013B2138;
    sub_1000BC4D4(&qword_1016A4F38, &unk_1013B2138);
    sub_1005997D4(&qword_1016A4F40, &qword_1016A4F38, &unk_1013B2138);
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_100594FB0@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v5, static CodingUserInfoKey.messagingCoder);
  (*(v6 + 16))(v8, v9, v5);
  v16[3] = &type metadata for Bool;
  LOBYTE(v16[0]) = 1;
  v10 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_1001DDE00(v16, v8);
  v10(v15, 0);
  sub_1000BC4D4(&qword_1016A4E70, &qword_1013B2100);
  sub_10059905C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    v11 = v16[0];
    if (*(v16[0] + 16))
    {
      v12 = *(type metadata accessor for CircleTrustEnvelopeV1(0) - 8);
      sub_10059A080(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3, type metadata accessor for CircleTrustEnvelopeV1);
    }

    else
    {

      sub_1000BC4D4(&qword_1016A4E88, &unk_1013B2108);
      sub_1005997D4(&qword_1016A4E90, &qword_1016A4E88, &unk_1013B2108);
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }
}