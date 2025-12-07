uint64_t sub_100185F78(uint64_t a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v117 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v6 = __chkstk_darwin(v5 - 8);
  v116 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v119 = &v115 - v9;
  __chkstk_darwin(v8);
  v11 = &v115 - v10;
  v12 = sub_1001C4CA8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v128 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v120 = &v115 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v115 - v19;
  __chkstk_darwin(v18);
  v124 = &v115 - v21;
  v22 = sub_100084528(&qword_100273D90, &qword_1001F7E40);
  v23 = __chkstk_darwin(v22 - 8);
  v134 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v133 = &v115 - v25;
  v26 = *(a1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  sub_10018C2C8(&qword_100273170, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v140 = v2;
  v121 = sub_1001C5F38();
  v27 = *(v26 + 64);
  v122 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v31 = (v28 + 63) >> 6;
  v138 = (v13 + 32);
  v139 = (v13 + 16);
  v125 = v13;
  v131 = (v13 + 8);
  v132 = (v3 + 56);
  v32 = v20;
  v115 = v3;
  v118 = (v3 + 48);
  v126 = v26;

  v33 = 0;
  v34 = 0;
  *&v35 = 136315138;
  v123 = v35;
  v135 = v11;
  v136 = v32;
  v141 = v12;
  for (i = v31; ; v31 = i)
  {
LABEL_4:
    v36 = v33;
    if (!v30)
    {
LABEL_8:
      if (v31 <= v36 + 1)
      {
        v39 = v36 + 1;
      }

      else
      {
        v39 = v31;
      }

      v33 = v39 - 1;
      v40 = v134;
      while (1)
      {
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v38 >= v31)
        {
          v70 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
          (*(*(v70 - 8) + 56))(v40, 1, 1, v70);
          v30 = 0;
          goto LABEL_17;
        }

        v30 = *(v122 + 8 * v38);
        ++v36;
        if (v30)
        {
          v137 = v34;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    while (1)
    {
      v137 = v34;
      v38 = v36;
LABEL_16:
      v41 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v42 = v41 | (v38 << 6);
      v44 = v125;
      v43 = v126;
      (*(v125 + 16))(v124, *(v126 + 48) + *(v125 + 72) * v42, v12);
      v45 = (*(v43 + 56) + 16 * v42);
      v46 = *v45;
      v47 = v45[1];
      v48 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
      v49 = &v134[*(v48 + 48)];
      v40 = v134;
      (*(v44 + 32))();
      *v49 = v46;
      v49[1] = v47;
      (*(*(v48 - 8) + 56))(v40, 0, 1, v48);
      sub_10009AD9C(v46, v47);
      v33 = v38;
      v11 = v135;
      v34 = v137;
LABEL_17:
      v50 = v133;
      sub_10009AE58(v40, v133, &qword_100273D90, &qword_1001F7E40);
      v51 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
      v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
      v53 = v136;
      if (v52 == 1)
      {

        return v121;
      }

      v54 = (v50 + *(v51 + 48));
      v55 = *v54;
      v56 = v54[1];
      v12 = v141;
      (*v138)(v136, v50, v141);
      sub_10009AD9C(v55, v56);
      sub_10018C2C8(&unk_100273E00, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
      sub_1001C5C58();
      if (!v34)
      {
        break;
      }

      (*v132)(v11, 1, 1, v140);
      v57 = sub_1001C6598();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v58 = qword_1002711E8;
      v59 = v128;
      (*v139)(v128, v53, v12);
      if (os_log_type_enabled(v58, v57))
      {
        v60 = swift_slowAlloc();
        v129 = v55;
        v61 = v60;
        v62 = swift_slowAlloc();
        v142[0] = v62;
        *v61 = v123;
        sub_10018C2C8(&qword_100270A80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v63 = sub_1001C6CC8();
        v65 = v64;
        v137 = v33;
        v127 = v56;
        v66 = *v131;
        (*v131)(v59, v141);
        v67 = v63;
        v68 = v136;
        v69 = sub_1001874E8(v67, v65, v142);
        v11 = v135;

        *(v61 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v58, v57, "ReadingHistoryUpdate: Failed to deserialize entry for %s", v61, 0xCu);
        sub_10008E7BC(v62);
        v12 = v141;

        sub_1000887D0(v129, v127);
        sub_10018AF40(v11);
        v66(v68, v12);
        v34 = 0;
        v36 = v137;
        v31 = i;
        if (!v30)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1000887D0(v55, v56);
        v37 = *v131;
        (*v131)(v59, v12);
        sub_10018AF40(v11);
        v37(v53, v12);
        v34 = 0;
        v36 = v33;
        v31 = i;
        if (!v30)
        {
          goto LABEL_8;
        }
      }
    }

    v129 = v55;
    v71 = v12;
    v72 = v140;
    v127 = *v132;
    v127(v11, 0, 1, v140);
    v73 = v11;
    v74 = *v139;
    v75 = v120;
    (*v139)(v120, v53, v71);
    v76 = v73;
    v77 = v119;
    sub_10018AED0(v76, v119);
    if ((*v118)(v77, 1, v72) != 1)
    {
      break;
    }

    sub_10018AF40(v77);
    v78 = v121;
    v79 = sub_100187AA4(v75);
    if (v80)
    {
      v81 = v79;
      v137 = 0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142[0] = v78;
      v11 = v135;
      v83 = v78;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10018A7B0();
        v83 = v142[0];
      }

      v84 = *(v125 + 8);
      v85 = v141;
      v84(*(v83 + 48) + *(v125 + 72) * v81, v141);
      sub_10018C150(*(v83 + 56) + *(v115 + 72) * v81, v116, type metadata accessor for ReadingHistoryDay);
      v121 = v83;
      sub_10013FC8C(v81, v83);
      sub_1000887D0(v129, v56);
      v84(v120, v85);
      sub_10018AF40(v11);
      v84(v53, v85);
      v86 = 0;
      v34 = v137;
    }

    else
    {
      sub_1000887D0(v129, v56);
      v100 = *v131;
      v101 = v141;
      (*v131)(v75, v141);
      v11 = v135;
      sub_10018AF40(v135);
      v100(v53, v101);
      v86 = 1;
    }

    v102 = v116;
    v127(v116, v86, 1, v140);
    sub_10018AF40(v102);
    v12 = v141;
  }

  sub_10018C150(v77, v117, type metadata accessor for ReadingHistoryDay);
  v87 = v121;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v75;
  v90 = v88;
  v142[0] = v87;
  v91 = sub_100187AA4(v89);
  v93 = *(v87 + 16);
  v94 = (v92 & 1) == 0;
  v95 = __OFADD__(v93, v94);
  v96 = v93 + v94;
  if (v95)
  {
    goto LABEL_44;
  }

  v97 = v92;
  if (*(v87 + 24) >= v96)
  {
    v99 = v129;
    if ((v90 & 1) == 0)
    {
      v113 = v91;
      sub_10018A7B0();
      v91 = v113;
    }
  }

  else
  {
    sub_1001886D4(v96, v90);
    v91 = sub_100187AA4(v120);
    v99 = v129;
    if ((v97 & 1) != (v98 & 1))
    {
      goto LABEL_46;
    }
  }

  v12 = v141;
  v103 = v142[0];
  v121 = v142[0];
  if (v97)
  {
    sub_10018C310(v117, *(v142[0] + 56) + *(v115 + 72) * v91);
    sub_1000887D0(v99, v56);
    v104 = *v131;
    (*v131)(v120, v12);
    v11 = v135;
    sub_10018AF40(v135);
    v104(v53, v12);
    v31 = i;
    goto LABEL_4;
  }

  *(v142[0] + 8 * (v91 >> 6) + 64) |= 1 << v91;
  v105 = v125;
  v106 = v91;
  v107 = v120;
  v74((*(v103 + 48) + *(v125 + 72) * v91), v120, v12);
  sub_10018C150(v117, *(v121 + 56) + *(v115 + 72) * v106, type metadata accessor for ReadingHistoryDay);
  sub_1000887D0(v99, v56);
  v108 = *(v105 + 8);
  v109 = v107;
  v110 = v136;
  v108(v109, v12);
  v11 = v135;
  sub_10018AF40(v135);
  v108(v110, v12);
  v111 = *(v121 + 16);
  v95 = __OFADD__(v111, 1);
  v112 = v111 + 1;
  if (!v95)
  {
    *(v121 + 16) = v112;
    v31 = i;
    goto LABEL_4;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1001C6D68();
  __break(1u);
  return result;
}

uint64_t (*ReadingHistoryUpdate.days.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ReadingHistoryUpdate.days.getter();
  return sub_100186D30;
}

uint64_t ReadingHistoryUpdate.description.getter()
{
  sub_1001C69C8(28);

  ReadingHistoryUpdate.days.getter();
  sub_1001C4CA8();
  type metadata accessor for ReadingHistoryDay(0);
  sub_10018C2C8(&qword_100273170, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v0 = sub_1001C5F18();
  v2 = v1;

  v4._countAndFlagsBits = v0;
  v4._object = v2;
  sub_1001C6138(v4);

  v5._object = 0x8000000100204110;
  v5._countAndFlagsBits = 0xD000000000000011;
  sub_1001C6138(v5);
  v6._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v6);

  v7._countAndFlagsBits = 125;
  v7._object = 0xE100000000000000;
  sub_1001C6138(v7);
  return 0x3A737961647BLL;
}

double sub_100186FC4@<D0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  v3 = *v2;
  v4 = v2[1];
  *a1 = v3;
  a1[1] = v4;

  return result;
}

uint64_t *sub_100186FE0@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = objc_allocWithZone(v2);
  *&v6[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v7 = &v6[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v7 = v4;
  *(v7 + 1) = v5;
  v9.receiver = v6;
  v9.super_class = v2;
  result = objc_msgSendSuper2(&v9, "init");
  *a2 = result;
  return result;
}

BDSReadingHistoryUpdateInfo_optional __swiftcall BDSReadingHistoryUpdateInfo.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder:coder.super.isa];

  v5 = v2;
  result.value.update = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

id BDSReadingHistoryUpdateInfo.init(coder:)(void *a1)
{
  v2 = a1;
  result = sub_10011C4B8(v2);
  if (result)
  {
    *&v1[OBJC_IVAR___BDSReadingHistoryUpdateInfo_update] = result;
    v5.receiver = v1;
    v5.super_class = BDSReadingHistoryUpdateInfo;
    v4 = objc_msgSendSuper2(&v5, "init");

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall BDSReadingHistoryUpdateInfo.encode(with:)(NSCoder with)
{
  v3 = [v1 update];
  sub_10011C7B0(with.super.isa);
}

id BDSReadingHistoryUpdateInfo.init(update:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUpdate:a1];

  return v2;
}

id BDSReadingHistoryUpdateInfo.init(update:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___BDSReadingHistoryUpdateInfo_update) = a1;
  v3.super_class = BDSReadingHistoryUpdateInfo;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t BDSReadingHistoryUpdateInfo.description.getter()
{
  v1 = [v0 update];
  v2 = ReadingHistoryUpdate.description.getter();

  return v2;
}

BDSReadingHistoryUpdateInfo __swiftcall BDSReadingHistoryUpdateInfo.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.update = v2;
  result.super.isa = v1;
  return result;
}

unint64_t sub_1001874E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1001875B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10008EBD0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10008E7BC(v11);
  return v7;
}

unint64_t sub_1001875B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1001876C0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1001C6A38();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1001876C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10018770C(a1, a2);
  sub_10018783C(&off_100242158);
  return v3;
}

void *sub_10018770C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000D7EEC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1001C6A38();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1001C6158();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000D7EEC(v10, 0);
        result = sub_1001C69B8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10018783C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100187928(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100187928(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270670, &qword_1001F2E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_100187A1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001C6948(*(v2 + 40));

  return sub_100187DCC(a1, v4);
}

unint64_t sub_100187A60(uint64_t a1)
{
  v2 = sub_1001C6DE8();

  return sub_100187E94(a1, v2);
}

unint64_t sub_100187AA4(uint64_t a1)
{
  sub_1001C4CA8();
  sub_10018C2C8(&qword_100273170, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v2 = sub_1001C5F88();

  return sub_100187F00(a1, v2);
}

unint64_t sub_100187B3C(uint64_t a1, uint64_t a2)
{
  sub_1001C6DF8();
  sub_1001C60E8();
  v4 = sub_1001C6E28();

  return sub_1001880C0(a1, a2, v4);
}

unint64_t sub_100187BB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001C6798(*(v2 + 40));
  return sub_100188360(a1, v4, &unk_100273B00, CKRecordID_ptr);
}

unint64_t sub_100187C04(uint64_t a1)
{
  sub_1001C6018();
  sub_1001C6DF8();
  sub_1001C60E8();
  v2 = sub_1001C6E28();

  return sub_100188178(a1, v2);
}

unint64_t sub_100187C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1001C6DF8();
  sub_1001C60E8();
  sub_1001C6E18(v3 & 1);
  v6 = sub_1001C6E28();

  return sub_10018827C(a1, a2, v3, v6);
}

unint64_t sub_100187D2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001C6798(*(v2 + 40));
  return sub_100188360(a1, v4, &qword_100270F20, CKRecordZoneID_ptr);
}

unint64_t sub_100187D7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001C6798(*(v2 + 40));
  return sub_100188360(a1, v4, &qword_100274000, NSString_ptr);
}

unint64_t sub_100187DCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100157880(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1001C6958();
      sub_10008EB7C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100187E94(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100187F00(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10018C2C8(&unk_10026F440, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v15 = sub_1001C5FD8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1001880C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1001C6D08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100188178(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1001C6018();
      v8 = v7;
      if (v6 == sub_1001C6018() && v8 == v9)
      {
        break;
      }

      v11 = sub_1001C6D08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10018827C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_1001C6D08()) && ((v14 ^ a3) & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100188360(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100088714(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1001C67A8();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_100188468(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100084528(a3, a4);
  result = sub_1001C6B58();
  v9 = result;
  if (*(v7 + 16))
  {
    v31 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v32 = *(*(v7 + 56) + 16 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = sub_1001C6DE8();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 16 * v17) = v32;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v30 = 1 << *(v7 + 32);
      if (v30 >= 64)
      {
        bzero((v7 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v30;
      }

      *(v7 + 16) = 0;
    }

    v5 = v31;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_1001886D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ReadingHistoryDay(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C4CA8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100084528(&qword_100273F20, &qword_1001F80C0);
  v43 = v4;
  result = sub_1001C6B58();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_10018C150(v27 + v28 * v24, v47, type metadata accessor for ReadingHistoryDay);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_10018C0E8(v29 + v28 * v24, v47, type metadata accessor for ReadingHistoryDay);
      }

      sub_10018C2C8(&qword_100273170, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      result = sub_1001C5F88();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_10018C150(v47, *(v12 + 56) + v28 * v20, type metadata accessor for ReadingHistoryDay);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100188B9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100084528(a3, a4);
  v36 = v6;
  result = sub_1001C6B58();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_100188E3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1001C4CA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100084528(&qword_100273F18, &qword_1001F80B8);
  v43 = v4;
  result = sub_1001C6B58();
  v10 = result;
  if (*(v8 + 16))
  {
    v48 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v6 + 16);
    v41 = v8;
    v42 = v6;
    v45 = (v6 + 32);
    v17 = result + 64;
    v18 = v44;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v42 + 72) * v25;
      v46 = *(v42 + 72);
      v47 = v22;
      if (v43)
      {
        (*v45)(v18, v26, v48);
        v27 = (*(v8 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v40)(v18, v26, v48);
        v30 = (*(v8 + 56) + 16 * v25);
        v29 = *v30;
        v28 = v30[1];
        sub_10009AD9C(*v30, v28);
      }

      sub_10018C2C8(&qword_100273170, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      result = sub_1001C5F88();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v18 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v18 = v44;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v10 + 48) + v46 * v19, v18, v48);
      v20 = (*(v10 + 56) + 16 * v19);
      *v20 = v29;
      v20[1] = v28;
      ++*(v10 + 16);
      v8 = v41;
      v15 = v47;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_10018924C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100084528(a3, a4);
  result = sub_1001C6B58();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = sub_1001C6798(*(v9 + 40));
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_1001894E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100084528(&qword_100271860, &qword_1001F44F0);
  v38 = v4;
  result = sub_1001C6B58();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 24 * (v19 | (v8 << 6));
      v23 = *(v5 + 48) + v22;
      v24 = *(v23 + 8);
      v25 = *(v23 + 16);
      v26 = (*(v5 + 56) + v22);
      v27 = *v26;
      v28 = v26[2];
      v39 = v26[1];
      v40 = *v23;
      if ((v38 & 1) == 0)
      {
      }

      sub_1001C6DF8();
      sub_1001C60E8();
      sub_1001C6E18(v25);
      result = sub_1001C6E28();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 24 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v40;
      *(v17 + 8) = v24;
      *(v17 + 16) = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v39;
      v18[2] = v28;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100189800(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100084528(a3, a4);
  v36 = v6;
  result = sub_1001C6B58();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_100189AA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100084528(&qword_100273EF0, &qword_1001F8090);
  v34 = v4;
  result = sub_1001C6B58();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100189D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100084528(&qword_100271888, &qword_1001F4518);
  v37 = v4;
  result = sub_1001C6B58();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10018A000(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100084528(&unk_100273EB0, &qword_1001F8070);
  result = sub_1001C6B58();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_100100DF0(v21, v32);
      }

      else
      {
        sub_1000B3A90(v21, v32);
        v22 = v20;
      }

      result = sub_1001C6798(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_100100DF0(v32, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10018A2BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v49 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v45 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v48 = &v43 - v12;
  v13 = *v6;
  sub_100084528(a4, a5);
  v46 = v10;
  result = sub_1001C6B58();
  v15 = result;
  if (*(v13 + 16))
  {
    v43 = v6;
    v44 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = *(v13 + 48) + 24 * v28;
      v32 = *v30;
      v31 = *(v30 + 8);
      v33 = *(v30 + 16);
      v34 = v29 + *(v45 + 72) * v28;
      v47 = *(v45 + 72);
      if (v46)
      {
        sub_10018C150(v34, v48, v49);
      }

      else
      {
        sub_10018C0E8(v34, v48, v49);
      }

      sub_1001C6DF8();
      sub_1001C60E8();
      sub_1001C6E18(v33);
      result = sub_1001C6E28();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = *(v15 + 48) + 24 * v23;
      *v24 = v32;
      *(v24 + 8) = v31;
      *(v24 + 16) = v33;
      result = sub_10018C150(v48, *(v15 + 56) + v47 * v23, v49);
      ++*(v15 + 16);
      v13 = v44;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v9 = v43;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v43;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

void *sub_10018A65C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100084528(a1, a2);
  v4 = *v2;
  v5 = sub_1001C6B48();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 16 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_10018A7B0()
{
  v1 = v0;
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v38 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1001C4CA8();
  v40 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528(&qword_100273F20, &qword_1001F80C0);
  v5 = *v0;
  v6 = sub_1001C6B48();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_10018C0E8(v26 + v28, v37, type metadata accessor for ReadingHistoryDay);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_10018C150(v29, *(v18 + 56) + v28, type metadata accessor for ReadingHistoryDay);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_10018AAD4()
{
  v1 = v0;
  sub_100084528(&qword_100273250, &unk_1001F8060);
  v2 = *v0;
  v3 = sub_1001C6B48();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

  return result;
}

char *sub_10018AC44()
{
  v1 = v0;
  v2 = sub_1001C4CA8();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528(&qword_100273F18, &qword_1001F80B8);
  v5 = *v0;
  v6 = sub_1001C6B48();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = (v25 + 16 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = (*(v30 + 56) + v26);
        v5 = v36;
        *v31 = v28;
        v31[1] = v29;
        result = sub_10009AD9C(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_10018AED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018AF40(uint64_t a1)
{
  v2 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018AFA8(uint64_t a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10018B004()
{
  result = qword_100273DD0;
  if (!qword_100273DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273DD0);
  }

  return result;
}

unint64_t sub_10018B058()
{
  result = qword_100273DE0;
  if (!qword_100273DE0)
  {
    sub_1000885AC(&qword_100273DD8, &unk_1001F7E70);
    sub_10018C2C8(&qword_10026F970, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10018B114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273DE0);
  }

  return result;
}

unint64_t sub_10018B114()
{
  result = qword_100273DF0;
  if (!qword_100273DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273DF0);
  }

  return result;
}

id sub_10018B190(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100084528(a1, a2);
  v4 = *v2;
  v5 = sub_1001C6B48();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_10018B31C()
{
  v1 = v0;
  sub_100084528(&qword_100271860, &qword_1001F44F0);
  v2 = *v0;
  v3 = sub_1001C6B48();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v24 = v21[1];
        v23 = v21[2];
        v25 = *(v4 + 48) + v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v18;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v24;
        v26[2] = v23;
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

void sub_10018B4D0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100084528(a1, a2);
  v4 = *v2;
  v5 = sub_1001C6B48();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_10018B630()
{
  v1 = v0;
  sub_100084528(&qword_100273EF0, &qword_1001F8090);
  v2 = *v0;
  v3 = sub_1001C6B48();
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

void sub_10018B798()
{
  v1 = v0;
  sub_100084528(&qword_100271888, &qword_1001F4518);
  v2 = *v0;
  v3 = sub_1001C6B48();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

id sub_10018B910()
{
  v1 = v0;
  sub_100084528(&unk_100273EB0, &qword_1001F8070);
  v2 = *v0;
  v3 = sub_1001C6B48();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1000B3A90(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100100DF0(v19, *(v4 + 56) + 40 * v17);
        result = v18;
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

  return result;
}

void sub_10018BAD0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v41 = a4;
  v7 = v4;
  v8 = a1(0);
  v40 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v39 = &v36 - v9;
  sub_100084528(a2, a3);
  v10 = *v4;
  v11 = sub_1001C6B48();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    v37 = v7;
    v38 = (v10 + 64);
    if (v12 != v10 || v13 >= v10 + 64 + 8 * v14)
    {
      memmove(v13, v38, 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 24 * v25;
        v27 = *(v10 + 48) + 24 * v25;
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = *(v27 + 16);
        v31 = v39;
        v32 = *(v40 + 72) * v25;
        v33 = v41;
        sub_10018C0E8(*(v10 + 56) + v32, v39, v41);
        v34 = v42;
        v35 = *(v42 + 48) + v26;
        *v35 = v28;
        *(v35 + 8) = v29;
        *(v35 + 16) = v30;
        sub_10018C150(v31, *(v34 + 56) + v32, v33);

        v20 = v43;
      }

      while (v43);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v37;
        v12 = v42;
        goto LABEL_21;
      }

      v24 = *(v38 + v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }
}

uint64_t sub_10018BD2C(void *a1)
{
  v3 = sub_100084528(&qword_100273EC8, &unk_1001F8080);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10009BB74(a1, v7);
  sub_10018B004();
  sub_1001C6E58();
  if (!v1)
  {
    sub_100084528(&qword_100273DD8, &unk_1001F7E70);
    v9[7] = 0;
    sub_10018C1B8();
    sub_1001C6C28();
    v7 = v10;
    v9[6] = 1;
    sub_1001C6C18();
    (*(v4 + 8))(v6, v3);
  }

  sub_10008E7BC(a1);
  return v7;
}

uint64_t sub_10018BF04(uint64_t *a1, int a2)
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

uint64_t sub_10018BF4C(uint64_t result, int a2, int a3)
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

unint64_t sub_10018BFE4()
{
  result = qword_100273E98;
  if (!qword_100273E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273E98);
  }

  return result;
}

unint64_t sub_10018C03C()
{
  result = qword_100273EA0;
  if (!qword_100273EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273EA0);
  }

  return result;
}

unint64_t sub_10018C094()
{
  result = qword_100273EA8;
  if (!qword_100273EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273EA8);
  }

  return result;
}

uint64_t sub_10018C0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018C150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10018C1B8()
{
  result = qword_100273ED0;
  if (!qword_100273ED0)
  {
    sub_1000885AC(&qword_100273DD8, &unk_1001F7E70);
    sub_10018C2C8(&qword_10026F980, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10018C274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273ED0);
  }

  return result;
}

unint64_t sub_10018C274()
{
  result = qword_100273EE0;
  if (!qword_100273EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273EE0);
  }

  return result;
}

uint64_t sub_10018C2C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10018C310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018C374(uint64_t a1)
{
  result = sub_1001C5148();
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

void sub_10018C4A0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = swift_isaMask & *v2;
  v8 = *(v2 + qword_100273F40);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = *(v7 + 80);
  *(v10 + 32) = *((v6 & v5) + 0x60);
  *(v10 + 40) = v9;
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;
  v12[4] = sub_100192B90;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000982D4;
  v12[3] = &unk_10024BDC0;
  v11 = _Block_copy(v12);

  [v8 cloudDataWithPredicate:0 sortDescriptors:0 completion:v11];
  _Block_release(v11);
}

void sub_10018C624(char a1)
{
  v2 = *(v1 + qword_100281A08);
  *(v1 + qword_100281A08) = a1;
  v3 = *(v1 + qword_100281A08);
  if (v2 != v3)
  {
    sub_10018F258(v3);
  }
}

id sub_10018C64C()
{
  sub_10018CCB0();
  v1 = v0;
  sub_10018CB94();
  v2 = objc_allocWithZone(BCCloudDataSource);
  v3 = sub_1001C5FE8();

  v4 = [v2 initWithManagedObjectModel:v1 nameOnDisk:v3];

  return v4;
}

void sub_10018C6D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = [*&v4[qword_100273F70] createTransactionWithName:"com.apple.ibooks.CRDTModelSyncManager.setCloudData"];
  aBlock[0] = *(ObjectType + 80);
  swift_getMetatypeMetadata();
  v9 = sub_1001C6078();
  v11 = v10;
  v12 = type metadata accessor for CRDTModelSync();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *&v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData] = xmmword_1001F1120;
  sub_10009AD9C(a1, a2);
  v31.receiver = v13;
  v31.super_class = v12;
  v15 = objc_msgSendSuper2(&v31, "init");
  v16 = &v15[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
  *v16 = v9;
  v16[1] = v11;
  v17 = v15;

  v18 = &v17[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v19 = *&v17[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v20 = *&v17[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
  *v18 = a1;
  *(v18 + 1) = a2;
  sub_1000887BC(v19, v20);

  v21 = *&v4[qword_100273F40];
  v22 = v17;
  sub_10018CE3C();
  sub_100084528(&qword_10026FC80, &qword_1001F5970);
  isa = sub_1001C5EF8().super.isa;

  v24 = swift_allocObject();
  v24[2] = v4;
  v24[3] = a3;
  v24[4] = a4;
  v24[5] = v8;
  aBlock[4] = sub_100192B34;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C4794;
  aBlock[3] = &unk_10024BD70;
  v25 = _Block_copy(aBlock);
  v26 = v4;

  v27 = v8;

  [v21 setCloudData:v22 predicate:0 mergers:isa completion:v25];
  _Block_release(v25);
}

void sub_10018C974(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

void sub_10018C9EC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1001C4A18();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_10018CA5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_10018CAE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_100084528(&qword_100271010, &unk_1001F1D60);
  v7 = sub_1001C6298();

  v8 = a4;
  v6(a2, v7, a4);
}

uint64_t sub_10018CB94()
{
  v1 = sub_1001C69E8();
  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_1001C6138(v2);
  swift_getMetatypeMetadata();
  v3._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v3);

  return v1;
}

uint64_t sub_10018CC14()
{
  type metadata accessor for CRDTModelSyncEntity(0);
  sub_100084528(&qword_100274010, &unk_1001F0E98);
  return sub_1001C6078();
}

NSString sub_10018CC5C()
{
  swift_getMetatypeMetadata();
  sub_1001C6078();
  v0 = sub_1001C5FE8();

  return v0;
}

void sub_10018CCB0()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_1001C6788();

  sub_1001C4A68();
  v6 = objc_allocWithZone(NSManagedObjectModel);
  sub_1001C4A88(v7);
  v9 = v8;
  v10 = [v6 initWithContentsOfURL:v8];

  if (v10)
  {
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10018CE3C()
{
  v1 = qword_100273F68;
  if (*(v0 + qword_100273F68))
  {
    v2 = *(v0 + qword_100273F68);
  }

  else
  {
    v2 = sub_10018CEA4(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_10018CEA4(uint64_t *a1)
{
  swift_getObjectType();
  v2 = *a1;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *a1;
  v5 = sub_1000BCAD0();
  v7 = v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v4 + 80);
  *(v9 + 32) = *((v3 & v2) + 0x60);
  *(v9 + 40) = v8;
  *(v9 + 48) = v5;
  *(v9 + 56) = v7;
  v18 = sub_1001929FC;
  v19 = v9;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10018F040;
  v17 = &unk_10024BB18;
  v10 = _Block_copy(&aBlock);

  sub_100084528(&qword_10026FC90, &unk_1001F81C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  aBlock = v5;
  v15 = v7;
  sub_1001C6968();
  *(inited + 72) = v10;
  v12 = sub_100118BA8(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_10026FC98, &unk_1001F1AB0);
  return v12;
}

void sub_10018D084(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, void *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v263 = a8;
  v264 = a5;
  v261 = a3;
  v260 = a2;
  v262 = a10;
  v14 = sub_1001C5148();
  v265 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v233 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_1001C5BD8();
  v246 = *(v251 - 8);
  v17 = __chkstk_darwin(v251);
  v250 = &v233 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = *(a7 - 8);
  v19 = __chkstk_darwin(v17);
  v249 = (&v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v248 = (&v233 - v22);
  v23 = __chkstk_darwin(v21);
  v247 = &v233 - v24;
  v25 = __chkstk_darwin(v23);
  v243 = &v233 - v26;
  v27 = __chkstk_darwin(v25);
  v245 = &v233 - v28;
  v29 = __chkstk_darwin(v27);
  v252 = &v233 - v30;
  v31 = __chkstk_darwin(v29);
  v244 = &v233 - v32;
  v33 = __chkstk_darwin(v31);
  v242 = &v233 - v34;
  v35 = __chkstk_darwin(v33);
  v241 = &v233 - v36;
  v37 = __chkstk_darwin(v35);
  v254 = &v233 - v38;
  __chkstk_darwin(v37);
  v255 = &v233 - v39;
  v40 = sub_1001C67F8();
  v256 = *(v40 - 8);
  v41 = __chkstk_darwin(v40);
  v253 = &v233 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v45 = &v233 - v44;
  v46 = __chkstk_darwin(v43);
  v258 = &v233 - v47;
  __chkstk_darwin(v46);
  v259 = &v233 - v48;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    swift_beginAccess();
    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v265;
      v53 = v51;
      v265[2](v16, v51 + qword_1002819F8, v14);

      sub_10008EBD0(a1, v270);

      v54 = v14;
      v55 = a6;

      v56 = sub_1001C5128();
      v57 = sub_1001C65B8();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = a7;
        v59 = swift_slowAlloc();
        v267 = swift_slowAlloc();
        *v59 = 136315650;
        swift_beginAccess();
        v273[0] = swift_unknownObjectWeakLoadStrong();
        type metadata accessor for CRDTModelCloudDataManager(255, v58, v263, v262);
        sub_1001C67F8();
        v60 = sub_1001C6078();
        v62 = sub_1001874E8(v60, v61, &v267);

        *(v59 + 4) = v62;
        v263 = v54;
        *(v59 + 12) = 2080;
        sub_10008EBD0(v270, v273);
        v63 = sub_1001C6078();
        v65 = v64;
        sub_10008E7BC(v270);
        v66 = sub_1001874E8(v63, v65, &v267);

        *(v59 + 14) = v66;
        *(v59 + 22) = 2080;
        *(v59 + 24) = sub_1001874E8(v264, v55, &v267);
        _os_log_impl(&_mh_execute_header, v56, v57, "CloudSyncConflictResolver: self=%s key=%s is not equal to recordType=%s", v59, 0x20u);
        swift_arrayDestroy();

        (v265[1])(v16, v263);
      }

      else
      {

        sub_10008E7BC(v270);
        v52[1](v16, v54);
      }
    }

    goto LABEL_33;
  }

  v50 = Strong;
  sub_10008EBD0(a1, v270);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v239 = v40;
  v240 = a7;
  if (v273[0] == v264 && v273[1] == a6)
  {

    goto LABEL_12;
  }

  v67 = sub_1001C6D08();

  if ((v67 & 1) == 0)
  {

    a7 = v240;
    goto LABEL_7;
  }

LABEL_12:
  v265 = v50;
  sub_100192A2C(v260, v270);
  sub_100192A2C(v261, v271);
  if (!v270[3])
  {
    if (v272)
    {
      sub_100192A2C(v271, v273);
      if (swift_dynamicCast())
      {
        v77 = v269[0];
        v78 = v269[1];
        v79 = sub_1001C5128();
        v80 = sub_1001C65B8();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "CloudSyncConflictResolver: no existing data", v81, 2u);
        }

        sub_10008E7BC(v273);
        sub_10008875C(v271, &qword_10026FCB0, &unk_1001F14E0);
        sub_10008875C(v270, &qword_10026FCB0, &unk_1001F14E0);
        a9[3] = &type metadata for Data;

        *a9 = v77;
        a9[1] = v78;
        return;
      }

      sub_10008E7BC(v273);
    }

    goto LABEL_32;
  }

  v264 = a9;
  sub_100192A2C(v270, v273);
  if (!swift_dynamicCast())
  {
LABEL_31:
    sub_10008E7BC(v273);
    a9 = v264;
LABEL_32:
    sub_10008875C(v270, &qword_10026FCB8, &qword_1001F1AD0);

LABEL_33:
    *a9 = 0u;
    *(a9 + 1) = 0u;
    return;
  }

  v68 = v273[4];
  v69 = v273[5];
  v70 = v240;
  if (!v272)
  {
    v82 = sub_1001C5128();
    v83 = sub_1001C65B8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "CloudSyncConflictResolver: no incoming data", v84, 2u);
    }

    sub_10008E7BC(v273);
    sub_10008875C(v271, &qword_10026FCB0, &unk_1001F14E0);
    sub_10008875C(v270, &qword_10026FCB0, &unk_1001F14E0);
    v85 = v264;
    v264[3] = &type metadata for Data;

    *v85 = v68;
    v85[1] = v69;
    return;
  }

  sub_100192A2C(v271, v269);
  if (!swift_dynamicCast())
  {
    sub_1000887D0(v68, v69);
    sub_10008E7BC(v269);
    goto LABEL_31;
  }

  v71 = v268;
  v261 = v267;
  if (sub_100144DE4(v68, v69, v267, v268))
  {
    v72 = v71;
    v73 = sub_1001C5128();
    v74 = sub_1001C65B8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "CloudSyncConflictResolver: incoming data and existing data are identical", v75, 2u);
    }

    v76 = v264;
    v264[3] = &type metadata for Data;
    sub_1000887D0(v261, v72);

    *v76 = v68;
    v76[1] = v69;
LABEL_39:
    sub_10008E7BC(v269);
    sub_10008E7BC(v273);
LABEL_40:
    sub_10008875C(v271, &qword_10026FCB0, &unk_1001F14E0);
    sub_10008875C(v270, &qword_10026FCB0, &unk_1001F14E0);
    return;
  }

  v238 = qword_100273F60;
  v86 = *(v265 + qword_100273F60);
  sub_10009AD9C(v68, v69);
  v260 = *(v263 + 8);
  sub_1001C5C88();
  v263 = v69;
  v237 = v68;
  v87 = v239;
  v88 = *(v257 + 56);
  v88(v259, 0, 1, v70);
  v89 = *(v265 + v238);
  sub_10009AD9C(v261, v71);
  sub_1001C5C88();
  v236 = v71;
  v235 = 0;
  v90 = v256;
  v88(v258, 0, 1, v70);
  v91 = *(v90 + 16);
  v91(v45, v259, v87);
  v92 = v257;
  v93 = *(v257 + 48);
  if (v93(v45, 1, v70) == 1)
  {
    v94 = *(v90 + 8);
    v94(v45, v87);
    v95 = v237;
    v96 = v263;
    sub_10009AD9C(v237, v263);
    v97 = sub_1001C5128();
    v98 = sub_1001C65B8();
    sub_1000887D0(v95, v96);
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v266 = v100;
      *v99 = 136315138;
      sub_10009AD9C(v95, v96);
      v101 = sub_1001C4B58();
      v103 = v102;
      sub_1000887D0(v95, v263);
      v104 = sub_1001874E8(v101, v103, &v266);
      v96 = v263;

      *(v99 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v97, v98, "CloudSyncConflictResolver: failed to deserialize either existingModel from %s", v99, 0xCu);
      sub_10008E7BC(v100);
    }

    v105 = v258;
    v106 = v264;
    v264[3] = &type metadata for Data;

    sub_1000887D0(v261, v236);
    *v106 = v95;
    v106[1] = v96;
    v107 = v105;
    v108 = v239;
    v94(v107, v239);
    v94(v259, v108);
    goto LABEL_39;
  }

  v109 = *(v92 + 32);
  v110 = v255;
  v234 = v109;
  v109(v255, v45, v70);
  v111 = v253;
  v112 = v258;
  v91(v253, v258, v87);
  v113 = v111;
  v114 = v93(v111, 1, v70);
  v115 = v112;
  if (v114 == 1)
  {
    v116 = *(v256 + 8);
    v116(v113, v87);
    v117 = v261;
    v118 = v236;
    sub_10009AD9C(v261, v236);
    v119 = v265;
    v120 = sub_1001C5128();
    v121 = sub_1001C65B8();
    sub_1000887D0(v117, v118);
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v266 = v123;
      *v122 = 136315138;
      sub_10009AD9C(v117, v118);
      v124 = sub_1001C4B58();
      v126 = v125;
      sub_1000887D0(v261, v118);
      v127 = sub_1001874E8(v124, v126, &v266);
      v117 = v261;

      *(v122 + 4) = v127;
      v115 = v258;
      _os_log_impl(&_mh_execute_header, v120, v121, "CloudSyncConflictResolver: failed to deserialize either incomingModel from %s", v122, 0xCu);
      sub_10008E7BC(v123);
    }

    v128 = v263;
    v129 = v237;
    v130 = v118;
    v131 = v264;
    v264[3] = &type metadata for Data;

    sub_1000887D0(v117, v130);
    *v131 = v129;
    v131[1] = v128;
    (*(v257 + 8))(v255, v240);
    v132 = v239;
    v116(v115, v239);
    v116(v259, v132);
    sub_10008E7BC(v269);
    sub_10008E7BC(v273);
    goto LABEL_40;
  }

  v133 = v254;
  v234(v254, v113, v70);
  v134 = v110;
  if ((sub_1001C5C38() & 1) == 0)
  {
    v157 = v257;
    v158 = *(v257 + 16);
    v159 = v248;
    v158(v248, v133, v70);
    v160 = v249;
    v158(v249, v134, v70);
    v161 = sub_1001C5128();
    v162 = sub_1001C65B8();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v260 = swift_slowAlloc();
      v266 = v260;
      *v163 = 136315394;
      LODWORD(v253) = v162;
      v164 = sub_1001C6CC8();
      v165 = v160;
      v167 = v166;
      v168 = *(v157 + 8);
      v168(v159, v70);
      v169 = sub_1001874E8(v164, v167, &v266);

      *(v163 + 4) = v169;
      *(v163 + 12) = 2080;
      v170 = sub_1001C6CC8();
      v172 = v171;
      v168(v165, v70);
      v173 = sub_1001874E8(v170, v172, &v266);

      *(v163 + 14) = v173;
      _os_log_impl(&_mh_execute_header, v161, v253, "CloudSyncConflictResolver: no delta on incoming=%s from existing=%s", v163, 0x16u);
      swift_arrayDestroy();
      v115 = v258;
    }

    else
    {

      v168 = *(v157 + 8);
      v168(v160, v70);
      v168(v159, v70);
    }

    v190 = v256;
    v191 = v263;
    v192 = v261;
    v193 = v264;
    v264[3] = &type metadata for Data;

    sub_1000887D0(v192, v236);
    *v193 = v237;
    v193[1] = v191;
    v168(v254, v70);
    v168(v255, v70);
    v194 = *(v190 + 8);
    v195 = v239;
    v194(v115, v239);
    v194(v259, v195);
    sub_10008E7BC(v269);
    sub_10008E7BC(v273);
    goto LABEL_40;
  }

  v135 = sub_1001C5C38();
  v136 = qword_1002819F8;
  v137 = v257;
  v138 = *(v257 + 16);
  if ((v135 & 1) == 0)
  {
    v174 = v243;
    v138(v243, v134, v70);
    v175 = v247;
    v138(v247, v133, v70);
    v176 = sub_1001C5128();
    v177 = sub_1001C65B8();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = v137;
      v179 = swift_slowAlloc();
      v260 = swift_slowAlloc();
      v266 = v260;
      *v179 = 136315394;
      LODWORD(v253) = v177;
      v180 = sub_1001C6CC8();
      v182 = v181;
      v183 = *(v178 + 8);
      v183(v174, v70);
      v184 = sub_1001874E8(v180, v182, &v266);

      *(v179 + 4) = v184;
      *(v179 + 12) = 2080;
      v185 = v247;
      v186 = sub_1001C6CC8();
      v188 = v187;
      v183(v185, v70);
      v189 = sub_1001874E8(v186, v188, &v266);

      *(v179 + 14) = v189;
      _os_log_impl(&_mh_execute_header, v176, v253, "CloudSyncConflictResolver: no delta on existing=%s from incoming=%s", v179, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v183 = *(v137 + 8);
      v183(v175, v70);
      v183(v174, v70);
    }

    v209 = v256;
    v210 = v258;
    v211 = v263;
    v212 = v261;
    v213 = v264;
    v264[3] = &type metadata for Data;

    sub_1000887D0(v237, v211);
    v214 = v236;
    *v213 = v212;
    v213[1] = v214;
    v183(v254, v70);
    v183(v255, v70);
    v215 = *(v209 + 8);
    v216 = v210;
    v217 = v239;
    v215(v216, v239);
    v215(v259, v217);
    sub_10008E7BC(v269);
    sub_10008E7BC(v273);
    goto LABEL_40;
  }

  v139 = v241;
  v138(v241, v134, v70);
  v140 = v242;
  v138(v242, v133, v70);
  v249 = v136;
  v141 = sub_1001C5128();
  LODWORD(v247) = sub_1001C65B8();
  v248 = v141;
  if (os_log_type_enabled(v141, v247))
  {
    v142 = swift_slowAlloc();
    v243 = v142;
    v234 = swift_slowAlloc();
    v266 = v234;
    *v142 = 136315394;
    v143 = v244;
    v138(v244, v139, v70);
    v144 = *(v137 + 8);
    v144(v139, v70);
    v145 = v140;
    v146 = sub_1001C6CC8();
    v148 = v147;
    v144(v143, v240);
    v149 = sub_1001874E8(v146, v148, &v266);

    v150 = v243;
    *(v243 + 4) = v149;
    *(v150 + 6) = 2080;
    v138(v143, v145, v240);
    v144(v145, v240);
    v151 = sub_1001C6CC8();
    v153 = v152;
    v253 = v144;
    v144(v143, v240);
    v154 = sub_1001874E8(v151, v153, &v266);
    v70 = v240;

    v155 = v243;
    *(v243 + 14) = v154;
    v156 = v248;
    _os_log_impl(&_mh_execute_header, v248, v247, "CloudSyncConflictResolver: merging existing=%s with incoming=%s", v155, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v247 = v138;
    v196 = *(v137 + 8);
    v196(v140, v70);
    v253 = v196;
    v196(v139, v70);
    v138 = v247;
  }

  v197 = v252;
  sub_1001C5C78();
  v198 = v245;
  v138(v245, v197, v70);
  v199 = sub_1001C5128();
  v200 = sub_1001C65B8();
  if (os_log_type_enabled(v199, v200))
  {
    v201 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    v266 = v249;
    *v201 = 136315138;
    v202 = v244;
    v138(v244, v198, v70);
    v203 = v198;
    v204 = v253;
    (v253)(v203, v70);
    v205 = sub_1001C6CC8();
    v207 = v206;
    v204(v202, v240);
    v208 = sub_1001874E8(v205, v207, &v266);
    v70 = v240;

    *(v201 + 4) = v208;
    _os_log_impl(&_mh_execute_header, v199, v200, "CloudSyncConflictResolver: merged=%s", v201, 0xCu);
    sub_10008E7BC(v249);
  }

  else
  {
    (v253)(v198, v70);
  }

  v218 = v258;
  v219 = v263;
  v220 = v261;
  v221 = v246;
  (*(v246 + 104))(v250, enum case for CRCodableVersion.version1(_:), v251);
  v222 = v235;
  v223 = sub_1001C5A98();
  if (v222)
  {

    v225 = 0;
    v226 = 0xF000000000000000;
  }

  else
  {
    v225 = v223;
    v226 = v224;
  }

  sub_1000887D0(v220, v236);
  sub_1000887D0(v237, v219);
  (*(v221 + 8))(v250, v251);
  v227 = v253;
  (v253)(v252, v70);
  v227(v254, v70);
  v227(v134, v70);
  v228 = *(v256 + 8);
  v229 = v218;
  v230 = v239;
  v228(v229, v239);
  v228(v259, v230);
  sub_10008E7BC(v269);
  sub_10008E7BC(v273);
  sub_10008875C(v271, &qword_10026FCB0, &unk_1001F14E0);
  sub_10008875C(v270, &qword_10026FCB0, &unk_1001F14E0);
  if (v226 >> 60 == 15)
  {

    v231 = v264;
    *v264 = 0u;
    *(v231 + 16) = 0u;
  }

  else
  {
    v232 = v264;
    v264[3] = &type metadata for Data;

    *v232 = v225;
    v232[1] = v226;
  }
}

id sub_10018F040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v20[3] = swift_getObjectType();
  v20[0] = a2;
  if (a3)
  {
    *(&v18 + 1) = swift_getObjectType();
    *&v17 = a3;
    sub_10011A388(&v17, v19);
    if (a4)
    {
LABEL_3:
      ObjectType = swift_getObjectType();
      *&v15 = a4;
      sub_10011A388(&v15, &v17);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v17 = 0u;
  v18 = 0u;
LABEL_6:

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(&v15, v20, v19, &v17);

  sub_10008875C(&v17, &qword_10026FCB0, &unk_1001F14E0);
  sub_10008875C(v19, &qword_10026FCB0, &unk_1001F14E0);
  v8 = ObjectType;
  if (ObjectType)
  {
    v9 = sub_10009BB74(&v15, ObjectType);
    v10 = *(v8 - 8);
    __chkstk_darwin(v9);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_1001C6CF8();
    (*(v10 + 8))(v12, v8);
    sub_10008E7BC(&v15);
  }

  else
  {
    v13 = 0;
  }

  sub_10008E7BC(v20);

  return v13;
}

void sub_10018F258(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = (swift_isaMask & *v1);
  [*(v1 + qword_100273F48) setEnableCloudSync:a1 & 1];
  v5 = *(v1 + qword_100273F50);
  v16 = [v5 privateCloudDatabaseController];
  v6 = sub_1001C5128();
  v7 = sub_1001C65B8();
  v8 = os_log_type_enabled(v6, v7);
  if (a1)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: enabled sync to CK", v9, 2u);
    }

    v10 = *(v2 + qword_100273F38);
    sub_1000BCAD0();
    v11 = sub_1001C5FE8();

    [v16 addObserver:v10 recordType:v11];

    v12 = [v5 transactionManager];
    type metadata accessor for CRDTModelCloudDataManager(0, v4[10], v4[11], v4[12]);
    sub_1000BCAD0();
    v13 = sub_1001C5FE8();

    [v12 signalSyncToCKTransactionForEntityName:v13 syncManager:v10];
  }

  else
  {
    if (v8)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: disabled sync to CK", v14, 2u);
    }

    v15 = *(v2 + qword_100273F38);
    sub_1000BCAD0();
    v13 = sub_1001C5FE8();

    [v16 removeObserver:v15 recordType:v13];
  }
}

char *sub_10018F4F4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_1001C69C8(16);

  strcpy(v39, "CRDTModelSync.");
  v39[15] = -18;
  v40._countAndFlagsBits = sub_1000BCAD0();
  sub_1001C6138(v40);

  sub_1001C5138();
  *&v4[qword_100273F58] = 0;
  *&v4[qword_100273F68] = 0;
  *&v4[qword_100281A00 + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[qword_100281A08] = 0;
  *&v4[qword_100273F60] = a2;
  *&v4[qword_100273F70] = a4;
  v36 = a2;
  swift_unknownObjectRetain();
  v10 = [a3 managedObjectContext];
  *&v4[qword_100273F30] = a3;
  *&v4[qword_100273F50] = a1;
  type metadata accessor for CRDTModelSyncMapper();
  swift_allocObject();
  v11 = a3;
  v12 = a1;
  v34 = CRDTModelSyncMapper.init()();
  v13 = [objc_allocWithZone(BCCloudDataSyncManager) initWithCloudKitController:v12 dataMapper:v34];
  *&v4[qword_100273F38] = v13;
  v14 = v13;
  v35 = v10;
  v15 = sub_10018CC5C();
  v16 = [objc_allocWithZone(BCCloudChangeTokenController) initWithMOC:v35 zoneName:v15 cloudKitController:v12];

  *&v4[qword_100273F48] = v16;
  v17 = v11;
  sub_10018CC14();
  type metadata accessor for CRDTModelSyncEntity(0);
  type metadata accessor for CRDTModelSync();
  v18 = objc_allocWithZone(BCCloudDataManager);
  v19 = v12;
  v20 = v14;

  v21 = sub_1001C5FE8();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [v18 initWithCloudDataSource:v17 entityName:v21 notificationName:0 immutableClass:ObjCClassFromMetadata mutableClass:swift_getObjCClassFromMetadata() syncManager:v20 cloudKitController:v19 dataMapper:v34];

  *&v5[qword_100273F40] = v23;
  v38.receiver = v5;
  v38.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v38, "init");
  sub_100088714(0, &qword_100274018, off_10023DD58);
  v25 = *&v24[qword_100273F48];
  v26 = *&v24[qword_100273F50];
  v27 = v24;
  v28 = v25;
  v29 = [v26 privateCloudDatabaseController];
  v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithZoneDataManager:v27 tokenController:v28 databaseController:v29];

  v31 = *&v27[qword_100273F58];
  *&v27[qword_100273F58] = v30;

  v32 = *&v27[qword_100273F38];
  [v32 setDelegate:v27];

  swift_unknownObjectRelease();

  return v27;
}

id sub_10018F940()
{
  ObjectType = swift_getObjectType();
  v2 = [*&v0[qword_100273F50] privateCloudDatabaseController];
  v3 = qword_100273F38;
  [v2 removeObserver:*&v0[qword_100273F38]];

  [*&v0[v3] setDelegate:0];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10018FA08(uint64_t a1)
{
  v2 = qword_1002819F8;
  v3 = sub_1001C5148();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  sub_1000CEB00(a1 + qword_100281A00);

  return swift_unknownObjectRelease();
}

void sub_10018FB14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (a4)();
    return;
  }

  v8 = Strong;
  if (a2)
  {
    swift_errorRetain();
    v9 = sub_1001C5128();
    v10 = sub_1001C6598();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1001C6D98();
      v15 = sub_1001874E8(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "CRDTModelCloudDataManager cloudData: couldn't load existing data: %s", v11, 0xCu);
      sub_10008E7BC(v12);
    }

    goto LABEL_16;
  }

  if (a1)
  {
    type metadata accessor for CRDTModelSync();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      a4(v17);

      swift_unknownObjectRelease();
      return;
    }

    v18 = sub_1001C5128();
    LOBYTE(v19) = sub_1001C6598();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "CRDTModelCloudDataManager cloudData: loaded existing data with the wrong type";
    goto LABEL_14;
  }

  v18 = sub_1001C5128();
  v19 = sub_1001C65B8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "CRDTModelCloudDataManager cloudData: no existing data";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);
  }

LABEL_15:

LABEL_16:
  a4(0);
}

id sub_10018FDC4(char a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  swift_errorRetain();
  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();

  if (os_log_type_enabled(v12, v13))
  {
    v20 = a7;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 134218498;
    *(v14 + 4) = a1 & 1;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a2 & 1;
    *(v14 + 22) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      sub_1001C6D98();
    }

    sub_100084528(&qword_10026FC88, &unk_1001F1AA0);
    v16 = sub_1001C6078();
    v18 = sub_1001874E8(v16, v17, &v21);

    *(v14 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "CRDTModelCloudDataManager q_sync: BCCloudDataManager is done: success=%ld hasChanges=%ld error=%s", v14, 0x20u);
    sub_10008E7BC(v15);

    a7 = v20;
  }

  else
  {
  }

  a5(a1 & 1);
  return [a7 endTransaction];
}

void sub_10018FF9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_100273F40);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_100192BC4;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10018C974;
  v8[3] = &unk_10024BD20;
  v7 = _Block_copy(v8);

  [v5 hasSaltChangedWithCompletion:v7];
  _Block_release(v7);
}

uint64_t sub_100190088(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  sub_10018FF9C(sub_1000CACE8, v5);
}

void sub_100190114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1001C5128();
  v7 = sub_1001C65B8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    v10 = sub_1000BCAD0();
    v12 = sub_1001874E8(v10, v11, v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelCloudDataManager dissociateCloudDataFromSyncWithCompletion for: %s", v8, 0xCu);
    sub_10008E7BC(v9);
  }

  v13 = *&v2[qword_100273F40];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v17[4] = sub_100192AD4;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10018CA5C;
  v17[3] = &unk_10024BC58;
  v15 = _Block_copy(v17);
  v16 = v3;
  sub_1001575A0(a1);

  [v13 dissociateCloudDataFromSyncWithCompletion:v15];
  _Block_release(v15);
}

void sub_100190304(char a1, uint64_t a2, void *a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  if (a1)
  {
    v8 = *(a3 + qword_100273F48);
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a5;
    v23[4] = sub_100192B28;
    v23[5] = v9;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_10018CA5C;
    v23[3] = &unk_10024BCA8;
    v10 = _Block_copy(v23);
    v11 = a3;
    sub_1001575A0(a4);

    [v8 dissociateCloudDataFromSyncWithCompletion:v10];
    _Block_release(v10);
  }

  else
  {
    v13 = (swift_isaMask & *a3);
    swift_errorRetain();
    v14 = sub_1001C5128();
    v15 = sub_1001C6598();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v16 = 136315394;
      type metadata accessor for CRDTModelCloudDataManager(0, v13[10], v13[11], v13[12]);
      v19 = sub_1000BCAD0();
      v21 = sub_1001874E8(v19, v20, v23);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      if (a2)
      {
        v22 = sub_1001C4A18();
      }

      else
      {
        sub_100088714(0, &qword_100274000, NSString_ptr);
        v22 = sub_1001C67C8();
      }

      *(v16 + 14) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "CRDTModelCloudDataManager failed to dissociate data for: %s %@", v16, 0x16u);
      sub_10008875C(v17, &unk_1002718E0, &qword_1001F31F0);

      sub_10008E7BC(v18);
    }

    if (a4)
    {
      a4(0, a2);
    }
  }
}

void sub_1001905EC(char a1, uint64_t a2, void *a3, void (*a4)(void, uint64_t))
{
  v7 = (swift_isaMask & *a3);
  swift_errorRetain();
  v8 = sub_1001C5128();
  v9 = sub_1001C65B8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315650;
    type metadata accessor for CRDTModelCloudDataManager(0, v7[10], v7[11], v7[12]);
    v13 = sub_1000BCAD0();
    v15 = sub_1001874E8(v13, v14, &v17);

    *(v10 + 4) = v15;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    *(v10 + 18) = 2112;
    if (a2)
    {
      v16 = sub_1001C4A18();
    }

    else
    {
      sub_100088714(0, &qword_100274000, NSString_ptr);
      v16 = sub_1001C67C8();
    }

    *(v10 + 20) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelCloudDataManager dissociateCloudDataFromSyncWithCompletion for: %s finish with success:%{BOOL}d error: %@", v10, 0x1Cu);
    sub_10008875C(v11, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v12);

    if (a4)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (a4)
    {
LABEL_8:
      a4(a1 & 1, a2);
    }
  }
}

void sub_100190830(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000CACE8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = a1;
  sub_100190114(v7, v6);
  sub_1000044D8(v7, v6);
}

void sub_1001908E8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (*(v3 + qword_100281A08) == 1)
  {
    v6 = v3;
    v8 = sub_1001C5128();
    v9 = sub_1001C65B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelCloudDataManager startSyncToCKWithCompletion: starting syncing to CK", v10, 2u);
    }

    v11 = *(v6 + qword_100273F40);
    v13[4] = a2;
    v13[5] = a3;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000DD4AC;
    v13[3] = &unk_10024BBE0;
    v12 = _Block_copy(v13);

    [v11 startSyncToCKWithSyncManager:a1 completion:v12];
    _Block_release(v12);
  }

  else
  {
    a2(a1);
  }
}

uint64_t sub_100190A64(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = a1;
  sub_1001908E8(v8, sub_100192AC4, v7);
}

void sub_100190B04(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = [*(v1 + qword_100273F50) transactionManager];
  type metadata accessor for CRDTModelCloudDataManager(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), *((v4 & v3) + 0x60));
  sub_1000BCAD0();
  v6 = sub_1001C5FE8();

  [v5 signalSyncToCKTransactionForEntityName:v6 syncManager:a1];
}

void sub_100190C00(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100190B04(v4);
}

uint64_t sub_100190C68(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
  v8 = sub_1001C6298();
  v9 = a3;
  v10 = a1;
  sub_1001919DC(v8);
  _Block_release(v7);
}

uint64_t sub_100190D10(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_100084528(&qword_100271010, &unk_1001F1D60);
  v8 = sub_1001C6298();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_100191B1C(v8, sub_1000CACE8, v9);
}

uint64_t sub_100190DE8(char a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a4(a1 & 1, a3);
  }

  v11 = Strong;
  if (a2 >> 62)
  {
    result = sub_1001C6B38();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v13 = sub_1001C69F8();
    goto LABEL_7;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a2 + 32);
    swift_unknownObjectRetain();
LABEL_7:
    v14 = [objc_allocWithZone(type metadata accessor for CRDTModelSync()) initWithCloudData:v13];
    if (v14)
    {
      v15 = v14;
      v16 = &v11[qword_100281A00];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v16 + 1);
        ObjectType = swift_getObjectType();
        (*(v17 + 8))(v15, ObjectType, v17);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = sub_1001C5128();
        v23 = sub_1001C6598();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "CRDTModelCloudDataManager resolveConflictsFor: delegate is nil", v24, 2u);
        }

        swift_unknownObjectRelease();
      }

      return a4(a1 & 1, a3);
    }

    swift_unknownObjectRelease();
LABEL_11:
    v19 = sub_1001C5128();
    v20 = sub_1001C6598();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "CRDTModelCloudDataManager resolveConflictsFor: couldn't obtain cloudData", v21, 2u);
    }

    return a4(a1 & 1, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100191074(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
  v8 = sub_1001C6298();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_100191FF0(v8, sub_1000CACE8, v9);
}

uint64_t sub_100191150(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
  v8 = sub_1001C6298();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_10019274C(v8, sub_1000C99F0, v9);
}

id sub_10019122C(void *a1)
{
  sub_100191828(*((swift_isaMask & *a1) + 0x50), *((swift_isaMask & *a1) + 0x58), *((swift_isaMask & *a1) + 0x60));
  v1 = sub_1001C5FE8();

  return v1;
}

char *sub_100191330(void *a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  sub_1001C69C8(16);

  strcpy(v49, "CRDTModelSync.");
  HIBYTE(v49[1]) = -18;
  v48 = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v8 = sub_1001C6078();
  v10 = v9;
  sub_1001C61E8();
  v11 = sub_1001C6088();
  v13 = v12;

  v14 = sub_10014074C(15, v11, v13, v8, v10);
  v16 = v15;

  v50._countAndFlagsBits = v14;
  v50._object = v16;
  sub_1001C6138(v50);

  sub_1001C5138();
  *&a5[qword_100273F58] = 0;
  *&a5[qword_100273F68] = 0;
  *&a5[qword_100281A00 + 8] = 0;
  swift_unknownObjectWeakInit();
  a5[qword_100281A08] = 0;
  *&a5[qword_100273F60] = a2;
  *&a5[qword_100273F70] = a4;
  v44 = a2;
  swift_unknownObjectRetain();
  v17 = [a3 managedObjectContext];
  *&a5[qword_100273F30] = a3;
  *&a5[qword_100273F50] = a1;
  type metadata accessor for CRDTModelSyncMapper();
  swift_allocObject();
  v18 = a3;
  v19 = a1;
  v42 = CRDTModelSyncMapper.init()();
  v20 = [objc_allocWithZone(BCCloudDataSyncManager) initWithCloudKitController:v19 dataMapper:v42];
  *&a5[qword_100273F38] = v20;
  v21 = v20;
  v43 = v17;
  sub_1001C6078();
  v22 = sub_1001C5FE8();

  v23 = [objc_allocWithZone(BCCloudChangeTokenController) initWithMOC:v43 zoneName:v22 cloudKitController:v19];

  *&a5[qword_100273F48] = v23;
  v49[0] = type metadata accessor for CRDTModelSyncEntity(0);
  v24 = v18;
  sub_100084528(&qword_100274010, &unk_1001F0E98);
  sub_1001C6078();
  type metadata accessor for CRDTModelSync();
  v25 = objc_allocWithZone(BCCloudDataManager);
  v26 = v19;
  v27 = v21;

  v28 = sub_1001C5FE8();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [v25 initWithCloudDataSource:v24 entityName:v28 notificationName:0 immutableClass:ObjCClassFromMetadata mutableClass:swift_getObjCClassFromMetadata() syncManager:v27 cloudKitController:v26 dataMapper:v42];

  *&a5[qword_100273F40] = v30;
  v47.receiver = a5;
  v47.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v47, "init");
  v32 = *&v31[qword_100273F48];
  v33 = *&v31[qword_100273F50];
  v34 = v31;
  v35 = v32;
  v36 = [v33 privateCloudDatabaseController];
  v37 = [objc_allocWithZone(BDSSaltVersionIdentifierManager) initWithZoneDataManager:v34 tokenController:v35 databaseController:v36];

  v38 = *&v34[qword_100273F58];
  *&v34[qword_100273F58] = v37;

  v39 = *&v34[qword_100273F38];
  [v39 setDelegate:v34];

  swift_unknownObjectRelease();

  return v34;
}

void sub_100191860(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_100187B3C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100188B88(v16, a4 & 1);
      v11 = sub_100187B3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1001C6D68();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10018AAD4();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1001919DC(uint64_t a1)
{

  oslog = sub_1001C5128();
  v1 = sub_1001C6598();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    v4 = sub_1001C62A8();
    v6 = sub_1001874E8(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "CRDTModelCloudDataManager removeCloudDataFor: asked to remove cloud data: %s", v2, 0xCu);
    sub_10008E7BC(v3);
  }
}

void sub_100191B1C(unint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = a2;
  if (*(v3 + qword_100281A08) == 1)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_33:
      v41 = a3;
      v42 = sub_1001C6B38();
      a3 = v41;
      v7 = v42;
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = a3;
    v45 = v3;
    v43 = v4;
    if (v7)
    {
      v4 = 0;
      v8 = _swiftEmptyArrayStorage;
      do
      {
        v9 = v4;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v10 = sub_1001C69F8();
            v4 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v9 >= *(v6 + 16))
            {
              goto LABEL_32;
            }

            v10 = *(a1 + 8 * v9 + 32);
            swift_unknownObjectRetain();
            v4 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          swift_getObjectType();
          v11 = swift_conformsToProtocol2();
          if (v11)
          {
            if (v10)
            {
              break;
            }
          }

          swift_unknownObjectRelease();
          ++v9;
          if (v4 == v7)
          {
            goto LABEL_25;
          }
        }

        v3 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_1000AE634(0, v8[2] + 1, 1, v8);
        }

        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          v8 = sub_1000AE634((v13 > 1), v14 + 1, 1, v8);
        }

        v8[2] = v14 + 1;
        v15 = &v8[2 * v14];
        v15[4] = v10;
        v15[5] = v3;
      }

      while (v4 != v7);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

LABEL_25:
    v16 = v8[2];
    if (v16)
    {
      v17 = v8 + 5;
      v18 = &_swiftEmptyDictionarySingleton;
      do
      {
        v19 = *(v17 - 1);
        v20 = *v17;
        ObjectType = swift_getObjectType();
        v22 = *(v20 + 8);
        swift_unknownObjectRetain();
        v23 = v22(ObjectType, v20);
        v25 = v24;
        swift_unknownObjectRetain();
        v26 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v18;
        sub_100191860(v19, v23, v25, v26, aBlock);
        swift_unknownObjectRelease();

        v18 = aBlock[0];
        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v27 = v45;
    v28 = sub_1001C5128();
    v29 = sub_1001C65B8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;

      sub_100084528(&qword_100271010, &unk_1001F1D60);
      v32 = sub_1001C5F18();
      v34 = v33;

      v35 = sub_1001874E8(v32, v34, aBlock);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "CRDTModelCloudDataManager updateSyncGenerationFromCloudData: updating sync generation for %s", v30, 0xCu);
      sub_10008E7BC(v31);

      v27 = v45;
    }

    v36 = *(v27 + qword_100273F40);

    sub_100084528(&qword_100271010, &unk_1001F1D60);
    isa = sub_1001C5EF8().super.isa;

    v38 = sub_1001C5FE8();
    v39 = swift_allocObject();
    *(v39 + 16) = v43;
    *(v39 + 24) = v44;
    aBlock[4] = sub_100192A9C;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10018C974;
    aBlock[3] = &unk_10024BB90;
    v40 = _Block_copy(aBlock);

    [v36 updateSyncGenerationFromCloudData:isa predicate:0 propertyIDKey:v38 completion:v40];
    _Block_release(v40);
  }

  else
  {
    a2(0, 0);
  }
}

void sub_100191FF0(unint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v8 = swift_isaMask & *v3;
  v9 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v10 = __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v60 - v13;
  if (a1 >> 62)
  {
    if (sub_1001C6B38() < 2)
    {
      goto LABEL_6;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_6;
  }

  v15 = sub_1001C5128();
  v16 = sub_1001C6598();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v66 = a2;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "CRDTModelCloudDataManager resolveConflictsFor: received changes for more than 1 record. This shouldn't be possible", v17, 2u);
    a2 = v66;
  }

LABEL_6:
  if (*(v4 + qword_100281A08) != 1)
  {
    a2(0, 0);
    return;
  }

  v65 = a3;
  v63 = v14;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = sub_1001C69F8();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v18 = *(a1 + 32);
  }

  v64 = v8;
  v66 = a2;
  v19 = v18;
  v20 = sub_1001C5128();
  v21 = sub_1001C65B8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v67 = v62;
    *v22 = 138544387;
    *(v22 + 4) = v19;
    *v23 = v19;
    *(v22 + 12) = 2114;
    v24 = v19;
    v25 = [v24 recordID];
    *(v22 + 14) = v25;
    v60 = v23;
    v23[1] = v25;
    *(v22 + 22) = 2082;
    v26 = [v24 creationDate];
    v61 = v21;
    if (v26)
    {
      v27 = v26;
      v28 = v63;
      sub_1001C4C78();

      v29 = sub_1001C4CA8();
      (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    }

    else
    {
      v30 = sub_1001C4CA8();
      (*(*(v30 - 8) + 56))(v63, 1, 1, v30);
    }

    v31 = sub_1001C6078();
    v33 = sub_1001874E8(v31, v32, &v67);

    *(v22 + 24) = v33;
    *(v22 + 32) = 2082;
    v34 = [v24 modificationDate];
    if (v34)
    {
      v35 = v34;
      sub_1001C4C78();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = sub_1001C4CA8();
    (*(*(v37 - 8) + 56))(v12, v36, 1, v37);
    v38 = sub_1001C6078();
    v40 = sub_1001874E8(v38, v39, &v67);

    *(v22 + 34) = v40;
    *(v22 + 42) = 2081;
    v41 = [v24 modifiedByDevice];
    if (v41)
    {
      v42 = v41;
      v43 = sub_1001C6018();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    aBlock = v43;
    v69 = v45;
    sub_100084528(&qword_10026FC88, &unk_1001F1AA0);
    v46 = sub_1001C6078();
    v48 = sub_1001874E8(v46, v47, &v67);

    *(v22 + 44) = v48;
    _os_log_impl(&_mh_execute_header, v20, v61, "CRDTModelCloudDataManager resolveConflictsFor: resolving conflicts for record: %{public}@ id: %{public}@ created: %{public}s modified: %{public}s modifiedByDevice:%{private}s", v22, 0x34u);
    sub_100084528(&unk_1002718E0, &qword_1001F31F0);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v49 = *(v4 + qword_100273F40);
  sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
  isa = sub_1001C6288().super.isa;
  sub_10018CE3C();
  sub_100084528(&qword_10026FC80, &qword_1001F5970);
  v51 = sub_1001C5EF8().super.isa;

  sub_10018CE3C();
  v52 = sub_1001C5EF8().super.isa;

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  v55 = v64;
  v56 = v65;
  *(v54 + 16) = *(v64 + 80);
  v57 = *(v55 + 96);
  v58 = v66;
  *(v54 + 32) = v57;
  *(v54 + 40) = v58;
  *(v54 + 48) = v56;
  *(v54 + 56) = v53;
  v72 = sub_1001929CC;
  v73 = v54;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_10018CAE0;
  v71 = &unk_10024BAC8;
  v59 = _Block_copy(&aBlock);

  [v49 resolveConflictsForRecords:isa withResolvers:v51 mergers:v52 completion:v59];
  _Block_release(v59);
}

void sub_10019274C(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  if (*(v3 + qword_100281A08) == 1)
  {
    v6 = v3;

    v7 = sub_1001C5128();
    v8 = sub_1001C65B8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136315138;
      sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
      v11 = sub_1001C62A8();
      v13 = sub_1001874E8(v11, v12, v17);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "CRDTModelCloudDataManager failedRecordIDs: failed records %s", v9, 0xCu);
      sub_10008E7BC(v10);
    }

    v14 = *(v6 + qword_100273F40);
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    isa = sub_1001C6288().super.isa;
    v17[4] = a2;
    v17[5] = a3;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10018CA5C;
    v17[3] = &unk_10024BA28;
    v16 = _Block_copy(v17);

    [v14 failedRecordIDs:isa completion:v16];
    _Block_release(v16);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1001929B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100192A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_10026FCB0, &unk_1001F14E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100192AE0()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100192B40(void (*a1)(void))
{

  a1(*(v1 + 56));

  return _swift_deallocObject(v1, 64, 7);
}

uint64_t _s14UpdateScheduleVMa(uint64_t a1)
{
  result = qword_100274078;
  if (!qword_100274078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100192C60(uint64_t a1)
{
  sub_1001C4CA8();
  if (v1 <= 0x3F)
  {
    sub_100192CE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100192CE4()
{
  if (!qword_100274088)
  {
    v0 = sub_1001C62F8();
    if (!v1)
    {
      atomic_store(v0, &qword_100274088);
    }
  }
}

__n128 sub_100192D34(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100192D40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100192D60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100192D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v133 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v7 - 8);
  v9 = &v106 - v8;
  v10 = sub_100084528(&qword_100273118, &unk_1001F8310);
  __chkstk_darwin(v10);
  v12 = &v106 - v11;
  v13 = sub_1001C4EE8();
  v128 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v140 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v106 - v16;
  v18 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  __chkstk_darwin(v18 - 8);
  v129 = &v106 - v19;
  v135 = sub_100084528(&qword_1002730F8, &unk_1001F8320);
  __chkstk_darwin(v135);
  v136 = &v106 - v20;
  v141 = type metadata accessor for PBPropertyValue(0);
  v122 = *(v141 - 1);
  v21 = __chkstk_darwin(v141);
  v138 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v142 = (&v106 - v23);
  v132 = type metadata accessor for PBPropertyConfiguration(0);
  v24 = *(v132 - 8);
  __chkstk_darwin(v132);
  v123 = (&v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  __chkstk_darwin(v26 - 8);
  v124 = (&v106 - v27);
  v130 = sub_100084528(&qword_100273110, &unk_1001F6A90);
  __chkstk_darwin(v130);
  v131 = &v106 - v28;
  v134 = type metadata accessor for PBPropertyBundle(0);
  v29 = __chkstk_darwin(v134);
  v139 = (&v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v33 = &v106 - v32;
  v34 = *(a1 + 16);
  if (v34 != *(a2 + 16))
  {
LABEL_63:
    v100 = 0;
    return v100 & 1;
  }

  if (!v34 || a1 == a2)
  {
    v100 = 1;
    return v100 & 1;
  }

  v108 = v6;
  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = a1 + v35;
  v113 = a2 + v35;
  v112 = (v24 + 48);
  v118 = (v128 + 48);
  v110 = (v128 + 32);
  v137 = (v128 + 8);
  v117 = (v133 + 48);
  v133 = v128 + 16;
  v37 = *(v31 + 72);
  v120 = v4;
  v109 = v9;
  v119 = v12;
  v38 = 0;
  v116 = v10;
  v125 = (&v106 - v32);
  v115 = v34;
  v107 = v36;
  v106 = v37;
  while (1)
  {
    v39 = v33;
    result = sub_100197D44(v36 + v37 * v38, v33, type metadata accessor for PBPropertyBundle);
    if (v38 == v115)
    {
      goto LABEL_66;
    }

    v41 = v139;
    sub_100197D44(v113 + v37 * v38, v139, type metadata accessor for PBPropertyBundle);
    v42 = *(v134 + 28);
    v43 = *(v130 + 48);
    v44 = v131;
    sub_10009ADF0(&v39[v42], v131, &qword_1002705A8, &unk_1001F5200);
    sub_10009ADF0(v41 + v42, v44 + v43, &qword_1002705A8, &unk_1001F5200);
    v45 = *v112;
    v46 = v132;
    v47 = (*v112)(v44, 1, v132);
    v111 = v38;
    if (v47 == 1)
    {
      if (v45(v44 + v43, 1, v46) != 1)
      {
        goto LABEL_60;
      }

      sub_10008875C(v44, &qword_1002705A8, &unk_1001F5200);
      v48 = v138;
      goto LABEL_17;
    }

    v49 = v124;
    sub_10009ADF0(v44, v124, &qword_1002705A8, &unk_1001F5200);
    if (v45(v44 + v43, 1, v46) == 1)
    {
      sub_100197DF4(v49, type metadata accessor for PBPropertyConfiguration);
LABEL_60:
      v101 = &qword_100273110;
      v102 = &unk_1001F6A90;
      goto LABEL_61;
    }

    v50 = v123;
    sub_100197E54(v44 + v43, v123, type metadata accessor for PBPropertyConfiguration);
    if (*v49 != *v50 || v49[1] != v50[1] || (v49[2] != v50[2] || v49[3] != v50[3]) && (sub_1001C6D08() & 1) == 0 || v49[4] != v50[4])
    {
      sub_100197DF4(v50, type metadata accessor for PBPropertyConfiguration);
      sub_100197DF4(v49, type metadata accessor for PBPropertyConfiguration);
      v101 = &qword_1002705A8;
      v102 = &unk_1001F5200;
LABEL_61:
      sub_10008875C(v44, v101, v102);
LABEL_62:
      sub_100197DF4(v139, type metadata accessor for PBPropertyBundle);
      sub_100197DF4(v125, type metadata accessor for PBPropertyBundle);
      goto LABEL_63;
    }

    sub_1001C4F18();
    sub_100197DAC(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v51 = sub_1001C5FD8();
    sub_100197DF4(v50, type metadata accessor for PBPropertyConfiguration);
    sub_100197DF4(v49, type metadata accessor for PBPropertyConfiguration);
    sub_10008875C(v44, &qword_1002705A8, &unk_1001F5200);
    v48 = v138;
    if ((v51 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_17:
    v52 = *v125;
    v53 = *v139;
    v54 = *(*v125 + 16);
    if (v54 != *(*v139 + 16))
    {
      goto LABEL_62;
    }

    if (v54 && v52 != v53)
    {
      break;
    }

LABEL_42:
    v87 = v125[1];
    v88 = v139[1];
    v89 = *(v87 + 16);
    if (v89 != *(v88 + 16))
    {
      goto LABEL_62;
    }

    if (v89 && v87 != v88)
    {
      v90 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v91 = v87 + v90;
      v92 = v88 + v90;
      v93 = *(v128 + 72);
      v94 = *(v128 + 16);
      v126 = v94;
      v127 = v93;
      do
      {
        v94(v17, v91, v13);
        v95 = v140;
        v94(v140, v92, v13);
        sub_100197DAC(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
        v96 = sub_1001C5FD8();
        v97 = *v137;
        (*v137)(v95, v13);
        v97(v17, v13);
        if ((v96 & 1) == 0)
        {
          goto LABEL_62;
        }

        v94 = v126;
        v92 += v127;
        v91 += v127;
      }

      while (--v89);
    }

    sub_1001C4F18();
    sub_100197DAC(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v98 = v125;
    v99 = v139;
    v100 = sub_1001C5FD8();
    sub_100197DF4(v99, type metadata accessor for PBPropertyBundle);
    sub_100197DF4(v98, type metadata accessor for PBPropertyBundle);
    if (v100)
    {
      v38 = v111 + 1;
      v33 = v125;
      v36 = v107;
      v37 = v106;
      if (v111 + 1 != v115)
      {
        continue;
      }
    }

    return v100 & 1;
  }

  v55 = (*(v122 + 80) + 32) & ~*(v122 + 80);
  v56 = v52 + v55;
  v57 = v53 + v55;
  v114 = *(v122 + 72);
  while (1)
  {
    v58 = v142;
    result = sub_100197D44(v56, v142, type metadata accessor for PBPropertyValue);
    if (!v54)
    {
      break;
    }

    v126 = v56;
    v127 = v54;
    v59 = v17;
    v121 = v57;
    sub_100197D44(v57, v48, type metadata accessor for PBPropertyValue);
    v60 = v141[7];
    v61 = v136;
    v62 = *(v135 + 48);
    sub_10009ADF0(v58 + v60, v136, &qword_1002705B8, &unk_1001F2BE0);
    sub_10009ADF0(v48 + v60, v61 + v62, &qword_1002705B8, &unk_1001F2BE0);
    v63 = *v118;
    v64 = (*v118)(v61, 1, v13);
    v65 = v120;
    v66 = v119;
    if (v64 == 1)
    {
      if (v63(v61 + v62, 1, v13) != 1)
      {
        goto LABEL_54;
      }

      sub_10008875C(v61, &qword_1002705B8, &unk_1001F2BE0);
      v17 = v59;
      v67 = v117;
    }

    else
    {
      v68 = v129;
      sub_10009ADF0(v61, v129, &qword_1002705B8, &unk_1001F2BE0);
      if (v63(v61 + v62, 1, v13) == 1)
      {
        (*v137)(v68, v13);
        v48 = v138;
LABEL_54:
        v103 = &qword_1002730F8;
        v104 = &unk_1001F8320;
        v105 = v61;
LABEL_57:
        sub_10008875C(v105, v103, v104);
LABEL_58:
        sub_100197DF4(v48, type metadata accessor for PBPropertyValue);
        sub_100197DF4(v142, type metadata accessor for PBPropertyValue);
        goto LABEL_62;
      }

      (*v110)(v59, v61 + v62, v13);
      sub_100197DAC(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
      v69 = sub_1001C5FD8();
      v70 = *v137;
      (*v137)(v59, v13);
      v70(v68, v13);
      v71 = v61;
      v17 = v59;
      sub_10008875C(v71, &qword_1002705B8, &unk_1001F2BE0);
      v48 = v138;
      v67 = v117;
      if ((v69 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v72 = v141[8];
    v73 = (v142 + v72);
    v74 = *(v142 + v72 + 8);
    v75 = (v48 + v72);
    v76 = v75[1];
    if (v74)
    {
      if (!v76 || (*v73 != *v75 || v74 != v76) && (sub_1001C6D08() & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v76)
    {
      goto LABEL_58;
    }

    if (*v142 != *v48)
    {
      goto LABEL_58;
    }

    v77 = v141[5];
    v78 = *(v116 + 48);
    sub_10009ADF0(v142 + v77, v66, &qword_1002705B0, &qword_1001F2BD8);
    sub_10009ADF0(v48 + v77, v66 + v78, &qword_1002705B0, &qword_1001F2BD8);
    v79 = *v67;
    if ((*v67)(v66, 1, v65) == 1)
    {
      if (v79(v66 + v78, 1, v65) != 1)
      {
        goto LABEL_56;
      }

      sub_10008875C(v66, &qword_1002705B0, &qword_1001F2BD8);
    }

    else
    {
      v80 = v66;
      v81 = v66;
      v82 = v109;
      sub_10009ADF0(v80, v109, &qword_1002705B0, &qword_1001F2BD8);
      if (v79(v81 + v78, 1, v65) == 1)
      {
        sub_100197DF4(v82, type metadata accessor for PBPropertyValue.OneOf_Params);
        v66 = v81;
        v48 = v138;
LABEL_56:
        v103 = &qword_100273118;
        v104 = &unk_1001F8310;
        v105 = v66;
        goto LABEL_57;
      }

      v83 = v108;
      sub_100197E54(v81 + v78, v108, type metadata accessor for PBPropertyValue.OneOf_Params);
      v84 = static PBPropertyValue.OneOf_Params.__derived_enum_equals(_:_:)();
      sub_100197DF4(v83, type metadata accessor for PBPropertyValue.OneOf_Params);
      sub_100197DF4(v82, type metadata accessor for PBPropertyValue.OneOf_Params);
      sub_10008875C(v81, &qword_1002705B0, &qword_1001F2BD8);
      v48 = v138;
      if ((v84 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    sub_1001C4F18();
    sub_100197DAC(&qword_100272938, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v85 = v142;
    v86 = sub_1001C5FD8();
    sub_100197DF4(v48, type metadata accessor for PBPropertyValue);
    sub_100197DF4(v85, type metadata accessor for PBPropertyValue);
    if ((v86 & 1) == 0)
    {
      goto LABEL_62;
    }

    v57 = v121 + v114;
    v56 = v126 + v114;
    v54 = v127 - 1;
    if (v127 == 1)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_100193E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyValue(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_100197D44(v13, v10, type metadata accessor for PBPropertyValue);
        sub_100197D44(v14, v7, type metadata accessor for PBPropertyValue);
        v16 = static PBPropertyValue.== infix(_:_:)();
        sub_100197DF4(v7, type metadata accessor for PBPropertyValue);
        sub_100197DF4(v10, type metadata accessor for PBPropertyValue);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100194024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4EE8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_100197DAC(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
    v21 = sub_1001C5FD8();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100194238(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v3 - 2);
      v8 = *(v3 - 1);
      v10 = *v3;
      if (*(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3))
      {
        result = 0;
        if (v6 != v9 || v5 != v8)
        {
          return result;
        }
      }

      else
      {
        v12 = sub_1001C6D08();
        result = 0;
        if ((v12 & 1) == 0 || v6 != v9 || v5 != v8)
        {
          return result;
        }
      }

      if ((v7 ^ v10))
      {
        return result;
      }

      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100194320(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardItemVMa(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_100197D44(v13, v10, _s8CardItemVMa);
      sub_100197D44(v14, v7, _s8CardItemVMa);
      v16 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v16 && (sub_1001C6D08() & 1) == 0 || v10[16] != v7[16] || (sub_1001C4C68() & 1) == 0 || *&v10[*(v4 + 28)] != *&v7[*(v4 + 28)])
      {
        break;
      }

      v17 = *(v4 + 32);
      v18 = *&v10[v17];
      v19 = *&v10[v17 + 8];
      v20 = &v7[v17];
      if (v18 == *v20 && v19 == *(v20 + 1))
      {
        sub_100197DF4(v7, _s8CardItemVMa);
        sub_100197DF4(v10, _s8CardItemVMa);
      }

      else
      {
        v22 = sub_1001C6D08();
        sub_100197DF4(v7, _s8CardItemVMa);
        sub_100197DF4(v10, _s8CardItemVMa);
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_100197DF4(v7, _s8CardItemVMa);
    sub_100197DF4(v10, _s8CardItemVMa);
  }

  return 0;
}

uint64_t sub_1001945AC(uint64_t a1, uint64_t a2)
{
  v44 = _s11RecentPriceVMa(0);
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  __chkstk_darwin(v7 - 8);
  v49 = (&v38 - v8);
  v46 = sub_100084528(&qword_1002740E0, &qword_1001F82F8);
  __chkstk_darwin(v46);
  v10 = &v38 - v9;
  v45 = _s11TrackedItemVMa(0);
  v11 = __chkstk_darwin(v45);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v16 = &v38 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v39 = v6;
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v42 = v10;
  v43 = (v4 + 48);
  v41 = *(v14 + 72);
  v21 = v44;
  while (1)
  {
    sub_100197D44(v19, v16, _s11TrackedItemVMa);
    sub_100197D44(v20, v13, _s11TrackedItemVMa);
    v22 = v16[16];
    v23 = v13[16];
    if (*v16 == *v13 && *(v16 + 1) == *(v13 + 1))
    {
      if (v22 != v23)
      {
        goto LABEL_38;
      }
    }

    else if (sub_1001C6D08() & 1) == 0 || ((v22 ^ v23))
    {
      goto LABEL_38;
    }

    v25 = *(v16 + 5);
    v26 = *(v13 + 5);
    if (v25 == 1)
    {
      if (v26 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v26 == 1 || *(v16 + 3) != *(v13 + 3))
      {
        goto LABEL_38;
      }

      if (v25)
      {
        if (!v26 || (*(v16 + 4) != *(v13 + 4) || v25 != v26) && (sub_1001C6D08() & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (v26)
      {
        goto LABEL_38;
      }
    }

    v47 = v19;
    v48 = v20;
    v27 = *(v45 + 24);
    v28 = *(v46 + 48);
    v29 = v42;
    sub_10009ADF0(&v16[v27], v42, &qword_1002740D8, &qword_1001F82F0);
    sub_10009ADF0(&v13[v27], v29 + v28, &qword_1002740D8, &qword_1001F82F0);
    v30 = *v43;
    if ((*v43)(v29, 1, v21) != 1)
    {
      break;
    }

    v31 = v30(v29 + v28, 1, v21);
    v32 = v48;
    if (v31 != 1)
    {
      goto LABEL_35;
    }

    sub_10008875C(v29, &qword_1002740D8, &qword_1001F82F0);
    sub_100197DF4(v13, _s11TrackedItemVMa);
    sub_100197DF4(v16, _s11TrackedItemVMa);
LABEL_5:
    v20 = v32 + v41;
    v19 = v47 + v41;
    if (!--v17)
    {
      return 1;
    }
  }

  sub_10009ADF0(v29, v49, &qword_1002740D8, &qword_1001F82F0);
  if (v30(v29 + v28, 1, v21) == 1)
  {
    sub_100197DF4(v49, _s11RecentPriceVMa);
LABEL_35:
    v36 = &qword_1002740E0;
    v37 = &qword_1001F82F8;
    goto LABEL_37;
  }

  v33 = v39;
  sub_100197E54(v29 + v28, v39, _s11RecentPriceVMa);
  if (*v49 == *v33)
  {
    v34 = v49;
    v21 = v44;
    v40 = sub_1001C4C68();
    sub_100197DF4(v33, _s11RecentPriceVMa);
    sub_100197DF4(v34, _s11RecentPriceVMa);
    sub_10008875C(v29, &qword_1002740D8, &qword_1001F82F0);
    sub_100197DF4(v13, _s11TrackedItemVMa);
    sub_100197DF4(v16, _s11TrackedItemVMa);
    v32 = v48;
    if ((v40 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_100197DF4(v33, _s11RecentPriceVMa);
  sub_100197DF4(v49, _s11RecentPriceVMa);
  v36 = &qword_1002740D8;
  v37 = &qword_1001F82F0;
LABEL_37:
  sub_10008875C(v29, v36, v37);
LABEL_38:
  sub_100197DF4(v13, _s11TrackedItemVMa);
  sub_100197DF4(v16, _s11TrackedItemVMa);
  return 0;
}

uint64_t sub_100194BA4(uint64_t a1, uint64_t a2)
{
  v4 = _s4DealVMa(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v25 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_100197D44(v13, v10, _s4DealVMa);
      sub_100197D44(v14, v7, _s4DealVMa);
      v17 = v10[16];
      v18 = v7[16];
      if (*v10 == *v7 && *(v10 + 1) == *(v7 + 1))
      {
        if (v17 != v18)
        {
          break;
        }
      }

      else if (sub_1001C6D08() & 1) == 0 || ((v17 ^ v18))
      {
        break;
      }

      if ((*(v10 + 3) != *(v7 + 3) || *(v10 + 4) != *(v7 + 4)) && (sub_1001C6D08() & 1) == 0 || (sub_1001C4AC8() & 1) == 0 || (sub_1001C4C68() & 1) == 0 || *&v10[*(v4 + 32)] != *&v7[*(v4 + 32)])
      {
        break;
      }

      v20 = *(v4 + 36);
      v21 = *&v10[v20];
      v22 = *&v10[v20 + 8];
      v23 = &v7[v20];
      if (v21 == *v23 && v22 == *(v23 + 1))
      {
        sub_100197DF4(v7, _s4DealVMa);
        sub_100197DF4(v10, _s4DealVMa);
      }

      else
      {
        v16 = sub_1001C6D08();
        sub_100197DF4(v7, _s4DealVMa);
        sub_100197DF4(v10, _s4DealVMa);
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_100197DF4(v7, _s4DealVMa);
    sub_100197DF4(v10, _s4DealVMa);
  }

  return 0;
}

uint64_t sub_100194E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v3, *v4), vceqq_f64(v3[1], v4[1]))));
    if ((v5 & 1) == 0)
    {
      break;
    }

    v3 += 2;
    v4 += 2;
    --v2;
  }

  while (v2);
  return v5 & 1;
}

uint64_t sub_100194EFC(uint64_t a1, uint64_t a2)
{
  v4 = _s21PriceDropNotificationVMa(0);
  v5 = __chkstk_darwin(v4);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_23:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_100197D44(v13, v10, _s21PriceDropNotificationVMa);
      sub_100197D44(v14, v7, _s21PriceDropNotificationVMa);
      v16 = *v10;
      v20[4] = *v7;
      v20[5] = v16;
      sub_1000D9490();
      sub_1001C6248();
      sub_1001C6248();
      if (v20[2] == v20[0] && v20[3] == v20[1])
      {
      }

      else
      {
        v17 = sub_1001C6D08();

        if ((v17 & 1) == 0)
        {
          break;
        }
      }

      if ((v10[1] != v7[1] || v10[2] != v7[2]) && (sub_1001C6D08() & 1) == 0 || (v10[3] != v7[3] || v10[4] != v7[4]) && (sub_1001C6D08() & 1) == 0 || (v10[5] != v7[5] || v10[6] != v7[6]) && (sub_1001C6D08() & 1) == 0)
      {
        break;
      }

      v18 = sub_1001C4AC8();
      sub_100197DF4(v7, _s21PriceDropNotificationVMa);
      sub_100197DF4(v10, _s21PriceDropNotificationVMa);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_100197DF4(v7, _s21PriceDropNotificationVMa);
    sub_100197DF4(v10, _s21PriceDropNotificationVMa);
    goto LABEL_23;
  }

  v18 = 1;
  return v18 & 1;
}

double sub_1001951FC(unint64_t a1, unint64_t a2, unint64_t a3, char *a4)
{
  v6 = a1 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
LABEL_2:

    v7 = _swiftEmptyArrayStorage;
LABEL_46:
    v49 = *(v7 + 2);
    if (v49 == 2)
    {
      v50 = v7[4];
      v4 = v7[5];

      if (v50 >= 300.0)
      {
        if (v4 >= 300.0 && v4 <= v50)
        {
          return v4;
        }

        sub_10011BAA4();
        swift_allocError();
        *v51 = v4;
        v52 = 1;
      }

      else
      {
        sub_10011BAA4();
        swift_allocError();
        *v51 = v50;
        v52 = 2;
      }

      *(v51 + 8) = v52;
    }

    else
    {

      sub_10011BAA4();
      swift_allocError();
      *v53 = v49;
      *(v53 + 8) = 0;
    }

    swift_willThrow();
    return v4;
  }

  v9 = a2;
  v10 = _swiftEmptyArrayStorage;
  v11 = a1;
  v12 = a1;
  v62 = a2 >> 14;
  do
  {
    v13 = sub_1001C6838();
    v15 = v14;
    if (v13 == 47 && v14 == 0xE100000000000000 || (v16 = v13, (sub_1001C6D08() & 1) != 0) || v16 == 58 && v15 == 0xE100000000000000)
    {
    }

    else
    {
      v32 = sub_1001C6D08();

      if ((v32 & 1) == 0)
      {
        v31 = sub_1001C6808();
        goto LABEL_18;
      }
    }

    if (v11 >> 14 != v6)
    {
      if (v6 < v11 >> 14)
      {
        __break(1u);
        goto LABEL_59;
      }

      v17 = a3;
      v18 = a4;
      v19 = sub_1001C6848();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1000ADE44(0, *(v10 + 2) + 1, 1, v10);
      }

      v26 = v10;
      v27 = *(v10 + 2);
      v28 = v26;
      v29 = *(v26 + 3);
      if (v27 >= v29 >> 1)
      {
        v28 = sub_1000ADE44((v29 > 1), v27 + 1, 1, v28);
      }

      *(v28 + 2) = v27 + 1;
      v30 = &v28[32 * v27];
      v10 = v28;
      *(v30 + 4) = v19;
      *(v30 + 5) = v21;
      *(v30 + 6) = v23;
      *(v30 + 7) = v25;
      a4 = v18;
      a3 = v17;
      v9 = a2;
    }

    v31 = sub_1001C6808();
    v11 = v31;
LABEL_18:
    v12 = v31;
    v6 = v31 >> 14;
  }

  while (v31 >> 14 != v62);
  if (v11 >> 14 == v62)
  {

    v33 = *(v10 + 2);
    if (!v33)
    {
      goto LABEL_2;
    }

    goto LABEL_30;
  }

  if (v62 < v11 >> 14)
  {
    __break(1u);
    goto LABEL_64;
  }

  a3 = sub_1001C6848();
  v9 = v34;
  v12 = v35;
  v11 = v36;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_64:
    v10 = sub_1000ADE44(0, *(v10 + 2) + 1, 1, v10);
  }

  v38 = *(v10 + 2);
  v37 = *(v10 + 3);
  v33 = v38 + 1;
  if (v38 >= v37 >> 1)
  {
    v60 = sub_1000ADE44((v37 > 1), v33, 1, v10);
    v33 = v38 + 1;
    v10 = v60;
  }

  *(v10 + 2) = v33;
  v39 = &v10[32 * v38];
  *(v39 + 4) = a3;
  *(v39 + 5) = v9;
  *(v39 + 6) = v12;
  *(v39 + 7) = v11;
LABEL_30:
  v63 = v33;
  v70 = _swiftEmptyArrayStorage;
  sub_1000D3A48(0, v33, 0);
  v40 = 0;
  v7 = _swiftEmptyArrayStorage;
  v64 = v10;
  v41 = (v10 + 56);
  while (v40 < *(v64 + 2))
  {
    v9 = *(v41 - 3);
    v12 = *(v41 - 2);
    v11 = *(v41 - 1);
    a3 = *v41;
    if (!((v12 ^ v9) >> 14))
    {
      goto LABEL_60;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n();
      v43 = sub_1000D84EC(v9, v12, v11, a3, 10);
      v48 = v47;

      if (v48)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v65 = *(v41 - 1);
        v66 = a3 & 0xFFFFFFFFFFFFFFLL;
        v42 = &v65;
      }

      else if ((v11 & 0x1000000000000000) != 0)
      {
        v42 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v42 = sub_1001C6A38();
      }

      v43 = sub_1001978D8(v42, v9, v12, v11, a3, 10);
      v69 = v44 & 1;
      v45 = v44 & 1;

      if (v45)
      {
        goto LABEL_61;
      }
    }

    v70 = v7;
    a3 = *(v7 + 2);
    v46 = *(v7 + 3);
    if (a3 >= v46 >> 1)
    {
      sub_1000D3A48((v46 > 1), a3 + 1, 1);
      v7 = v70;
    }

    ++v40;
    *(v7 + 2) = a3 + 1;
    v7[a3 + 4] = v43;
    v41 += 4;
    if (v63 == v40)
    {

      goto LABEL_46;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:

LABEL_61:

  v65 = v9;
  v66 = v12;
  v67 = v11;
  v68 = a3;
  sub_1000D943C();

  v55 = sub_1001C61F8();
  v57 = v56;
  sub_100197884();
  swift_allocError();
  *v58 = v55;
  v58[1] = v57;
  swift_willThrow();

  return v4;
}

uint64_t sub_100195800(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1001C6B38();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1001C6B38();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100197630(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001976D0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1001958F0(unint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1001C6AF8();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_1001C6B38();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_100197630(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_10012C5C4(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_100005064(v34);
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_1001C6B18())
    {
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
    sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= (v37 + 1))
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 56) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1001C62B8();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1001C6B18())
      {
        swift_unknownObjectRelease();
        sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 56) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= (v8 + 1))
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

char *sub_100195C88(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000AE0AC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100195D80(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000AE78C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100084528(&qword_10026F750, &qword_1001F1380);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100195E88(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000ADC34(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100195F7C(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1000ADC34(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_10012C928(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_1000ADC34((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_100005064(result);
  *v1 = v4;
  return result;
}

BOOL sub_100196238(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

uint64_t sub_100196270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1001C4C68() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_100194E78(v7, v8);
}

uint64_t sub_1001962D8()
{
  v0 = sub_1001C4CA8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = _s14UpdateScheduleVMa(0);
  sub_100088824(updated, qword_100281A10);
  v5 = sub_100083274(updated, qword_100281A10);
  sub_1001C4BC8();
  result = (*(v1 + 32))(v5, v3, v0);
  *(v5 + *(updated + 20)) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1001963E4()
{
  if (*v0)
  {
    return 0x7370657473;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_100196410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7370657473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001964E4(uint64_t a1)
{
  v2 = sub_1001975DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196520(uint64_t a1)
{
  v2 = sub_1001975DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019655C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  updated = _s14UpdateScheduleVMa(0);
  __chkstk_darwin(updated - 8);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C4CA8();
  v37 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v30 - v9;
  v10 = sub_100084528(&qword_1002740B8, &qword_1001F82C8);
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  sub_10009BB74(a1, a1[3]);
  v13 = sub_1001975DC();
  v14 = v40;
  sub_1001C6E58();
  if (!v14)
  {
    v34 = v13;
    v40 = v8;
    v15 = v37;
    LOBYTE(v41) = 0;
    sub_100197DAC(&qword_10026F980, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16 = v38;
    sub_1001C6C28();
    LOBYTE(v41) = 1;
    v17 = sub_1001C6BB8();
    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    v32 = v20;
    v33 = v10;
    v21 = 0xE000000000000000;
    if (v18)
    {
      v21 = v18;
    }

    v31 = v21;
    v22 = v16;
    v23 = v15;
    v24 = *(v15 + 16);
    v25 = v40;
    v24(v40, v22, v5);
    sub_10009BB74(a1, a1[3]);
    v26 = sub_1001C6E38();
    sub_100084528(&qword_10026F748, &unk_1001F82D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001F0670;
    v28 = v34;
    *(inited + 56) = &_s14UpdateScheduleV10CodingKeysON;
    *(inited + 64) = v28;
    *(inited + 32) = 1;
    v41 = v26;
    sub_100195D80(inited);
    v29 = v36;
    sub_1001969AC(v25, v32, v31, v36);
    (*(v23 + 8))(v38, v5);
    (*(v39 + 8))(v12, v33);
    sub_100197E54(v29, v35, _s14UpdateScheduleVMa);
  }

  return sub_10008E7BC(a1);
}

uint64_t sub_1001969AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a5@<X8>)
{

  v36[0] = 44;
  v36[1] = 0xE100000000000000;
  v35 = v36;
  v10 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018344C, v34, a2, a3, v36);
  v11 = v10[2];
  if (v11)
  {
    v33 = a5;
    v37 = a1;
    v36[0] = _swiftEmptyArrayStorage;
    result = sub_1000D3A28(0, v11, 0);
    v13 = 0;
    v14 = v36[0];
    v15 = v10 + 7;
    while (v13 < v10[2])
    {
      v16 = *(v15 - 3);
      v17 = *(v15 - 2);
      v18 = *(v15 - 1);
      v19 = *v15;

      result = sub_100196F68(v16, v17, v18, v19);
      if (v5)
      {
        v31 = sub_1001C4CA8();
        (*(*(v31 - 8) + 8))(v37, v31);
      }

      v36[0] = v14;
      v25 = v14[2];
      v24 = v14[3];
      if (v25 >= v24 >> 1)
      {
        v27 = v20;
        v28 = v21;
        v29 = v22;
        v30 = v23;
        result = sub_1000D3A28((v24 > 1), v25 + 1, 1);
        v23 = v30;
        v22 = v29;
        v21 = v28;
        v20 = v27;
        v14 = v36[0];
      }

      ++v13;
      v14[2] = v25 + 1;
      v26 = &v14[4 * v25];
      v26[4] = v20;
      v26[5] = v21;
      v26[6] = v22;
      v26[7] = v23;
      v15 += 4;
      if (v11 == v13)
      {

        a1 = v37;
        a5 = v33;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
LABEL_11:
    v32 = sub_1001C4CA8();
    (*(*(v32 - 8) + 32))(a5, a1, v32);
    result = _s14UpdateScheduleVMa(0);
    *(a5 + *(result + 20)) = v14;
  }

  return result;
}

uint64_t sub_100196C28(void *a1)
{
  v3 = sub_100084528(&qword_1002740D0, &unk_1001F82E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10009BB74(a1, a1[3]);
  sub_1001975DC();
  sub_1001C6E78();
  v8[15] = 0;
  sub_1001C4CA8();
  sub_100197DAC(&qword_10026F970, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001C6CA8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  sub_100196E00();
  v8[14] = 1;
  sub_1001C6C68();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_100196E00()
{
  v1 = *(v0 + *(_s14UpdateScheduleVMa(0) + 20));
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1000D3898(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 56);
    do
    {
      sub_100197344(*(v4 - 3), *(v4 - 2), *(v4 - 1), *v4);
      v14 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1000D3898((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v14;
      }

      v3[2] = v8 + 1;
      v9 = &v3[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  sub_100084528(&unk_10026FED0, &unk_1001F1450);
  sub_1000885F4(&qword_10026F850, &unk_10026FED0, &unk_1001F1450, &protocol conformance descriptor for [A]);
  v12 = sub_1001C5FA8();

  return v12;
}

uint64_t sub_100196F68(unint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v44 = 58;
  v45 = 0xE100000000000000;
  v43 = &v44;
  v5 = sub_1000F5980(2, 1, sub_100100D90, v42, a1, a2, a3, &v44);
  v6 = *(v5 + 2);
  if (v6 != 3)
  {

    sub_10011BAF8();
    swift_allocError();
    *v25 = v6;
    *(v25 + 8) = 0;
    return swift_willThrow();
  }

  v7 = v4;
  v8 = v5 + 32;
  v49 = _swiftEmptyArrayStorage;
  v41 = v5;

  sub_1000D3A48(0, 2, 0);
  v9 = 0;
  v10 = 0;
  v11 = v49;
  do
  {
    v12 = v9;
    v13 = &v8[32 * v10];
    v14 = *v13;
    v15 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    if (!((v15 ^ *v13) >> 14))
    {

LABEL_30:

      v44 = v14;
      v45 = v15;
      v46 = v17;
      v47 = v16;
      sub_1000D943C();

      v36 = sub_1001C61F8();
      v38 = v37;
      sub_100197884();
      swift_allocError();
      *v39 = v36;
      v39[1] = v38;
      swift_willThrow();
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n();
      v19 = sub_1000D84EC(v14, v15, v17, v16, 10);
      v40 = v24;

      if (v40)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v44 = v13[2];
        v45 = v16 & 0xFFFFFFFFFFFFFFLL;
        v18 = &v44;
      }

      else if ((v17 & 0x1000000000000000) != 0)
      {
        v18 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v18 = sub_1001C6A38();
      }

      v19 = sub_1001978D8(v18, v14, v15, v17, v16, 10);
      v48 = v20 & 1;
      v21 = v20 & 1;

      if (v21)
      {
        goto LABEL_30;
      }
    }

    v49 = v11;
    v23 = v11[2];
    v22 = v11[3];
    if (v23 >= v22 >> 1)
    {
      sub_1000D3A48((v22 > 1), v23 + 1, 1);
      v11 = v49;
    }

    v11[2] = v23 + 1;
    *&v11[v23 + 4] = v19;
    v9 = 1;
    v10 = 1;
  }

  while ((v12 & 1) == 0);

  if (*(v41 + 2) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v27 = *(v41 + 12);
    v28 = *(v41 + 13);
    v30 = *(v41 + 14);
    v29 = *(v41 + 15);

    v31 = v11[2];
    if (v31)
    {
      if (v31 != 1)
      {
        v32 = *(v11 + 4);
        v33 = *(v11 + 5);

        sub_1001951FC(v27, v28, v30, v29);
        if (v7)
        {
        }

        if (v32 <= 0.0)
        {
          v34 = 1;
        }

        else
        {
          if (v33 > 0.0)
          {
          }

          v34 = 2;
          v32 = v33;
        }

        sub_10011BAF8();
        swift_allocError();
        *v35 = v32;
        *(v35 + 8) = v34;
        swift_willThrow();
      }

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void sub_100197344(double a1, double a2, double a3, double a4)
{
  v4 = round(a1);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1001C6CC8();
  v13._countAndFlagsBits = 58;
  v13._object = 0xE100000000000000;
  sub_1001C6138(v13);
  v8 = round(a2);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v14);

  v15._countAndFlagsBits = 58;
  v15._object = 0xE100000000000000;
  sub_1001C6138(v15);
  v9 = round(a4);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12._countAndFlagsBits = sub_1001C6CC8();
  v12._object = v10;
  v16._countAndFlagsBits = 47;
  v16._object = 0xE100000000000000;
  sub_1001C6138(v16);
  v11 = round(a3);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v11 < 9.22337204e18)
  {
    v17._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v17);

    sub_1001C6138(v12);

    return;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_1001975DC()
{
  result = qword_1002740C0;
  if (!qword_1002740C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002740C0);
  }

  return result;
}

uint64_t sub_100197630(uint64_t a1, char a2)
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

  sub_1001C6B38();
LABEL_9:
  result = sub_1001C6A08();
  *v2 = result;
  return result;
}

uint64_t sub_1001976D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1001C6B38();
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
      result = sub_1001C6B38();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000885F4(&qword_1002740F0, &qword_1002740E8, &unk_1001F8300, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100084528(&qword_1002740E8, &unk_1001F8300);
            v9 = sub_10017C334(v13, i, a3);
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
        sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
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

unint64_t sub_100197884()
{
  result = qword_1002740C8;
  if (!qword_1002740C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002740C8);
  }

  return result;
}

uint64_t sub_1001978D8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1000D8E7C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1001C6188();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1000D8E7C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1000D8E7C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1001C6188();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_100197D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100197DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100197DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100197E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100197EE0()
{
  result = qword_1002740F8;
  if (!qword_1002740F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002740F8);
  }

  return result;
}

unint64_t sub_100197F38()
{
  result = qword_100274100;
  if (!qword_100274100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274100);
  }

  return result;
}

unint64_t sub_100197F90()
{
  result = qword_100274108;
  if (!qword_100274108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100274108);
  }

  return result;
}

uint64_t static Logger.engagementSync.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10026EC88 != -1)
  {
    swift_once();
  }

  v2 = sub_1001C5148();
  v3 = sub_100083274(v2, qword_100274110);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10019808C()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_100274110);
  sub_100083274(v0, qword_100274110);
  return sub_1001C5138();
}

uint64_t _s11TrackedItemVMa(uint64_t a1)
{
  result = qword_100274180;
  if (!qword_100274180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019817C(uint64_t a1)
{
  sub_100198210();
  if (v1 <= 0x3F)
  {
    sub_100198260(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100198210()
{
  if (!qword_100274190)
  {
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_100274190);
    }
  }
}

void sub_100198260(uint64_t a1)
{
  if (!qword_100274198)
  {
    _s11RecentPriceVMa(255);
    v1 = sub_1001C67F8();
    if (!v2)
    {
      atomic_store(v1, &qword_100274198);
    }
  }
}

double sub_1001982B8()
{
  v1 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = _s11RecentPriceVMa(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = 0.0;
  if (*(v0 + 40) != 1)
  {
    v12 = *(v0 + 24);
    v13 = _s11TrackedItemVMa(0);
    sub_100199D04(v0 + *(v13 + 24), v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10008875C(v3, &qword_1002740D8, &qword_1001F82F0);
    }

    else
    {
      sub_10011AB94(v3, v10);
      sub_10011AB94(v10, v8);
      v14 = *v8;
      sub_100199D74(v8, _s11RecentPriceVMa);
      if (v12 > 0.0)
      {
        return v12 - v14;
      }
    }
  }

  return v11;
}

uint64_t sub_1001984A4(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_1002741F0, &qword_1001F8590);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10009BB74(a1, a1[3]);
  sub_100198BC0();
  sub_1001C6E78();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  *&v13 = *v3;
  *(&v13 + 1) = v9;
  LOBYTE(v14) = v10;
  v15 = 0;
  sub_100132F80();
  sub_1001C6CA8();
  if (!v2)
  {
    v11 = *(v3 + 40);
    v13 = *(v3 + 24);
    v14 = v11;
    v15 = 1;
    sub_100198D50();
    sub_1001C6C58();
    _s11TrackedItemVMa(0);
    LOBYTE(v13) = 2;
    _s11RecentPriceVMa(0);
    sub_100198DA4(&qword_100274200, &unk_1001F45AC);
    sub_1001C6C58();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001986B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = sub_100084528(&qword_1002741D0, &qword_1001F8588);
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v10 = _s11TrackedItemVMa(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 32);
  v15 = _s11RecentPriceVMa(0);
  v16 = *(*(v15 - 8) + 56);
  v28 = v14;
  v16(&v13[v14], 1, 1, v15);
  sub_10009BB74(a1, a1[3]);
  sub_100198BC0();
  sub_1001C6E58();
  if (v2)
  {
    sub_10008E7BC(a1);
    return sub_10008875C(&v13[v28], &qword_1002740D8, &qword_1001F82F0);
  }

  else
  {
    v17 = v26;
    v32 = 0;
    sub_100132E6C();
    v18 = v27;
    sub_1001C6C28();
    v19 = v30;
    v20 = v31;
    *v13 = v29;
    *(v13 + 1) = v19;
    v24[4] = v19;
    v13[16] = v20;
    v32 = 1;
    sub_100198C14();
    sub_1001C6BD8();
    v21 = v30;
    v22 = v31;
    v24[2] = v30;
    v24[3] = v29;
    *(v13 + 3) = v29;
    *(v13 + 4) = v21;
    v24[1] = v22;
    *(v13 + 5) = v22;
    LOBYTE(v29) = 2;
    sub_100198DA4(&qword_1002741E8, &unk_1001F45D4);
    sub_1001C6BD8();
    (*(v17 + 8))(v9, v18);
    sub_100198C7C(v6, &v13[v28]);
    sub_100198CEC(v13, v25);
    sub_10008E7BC(a1);
    return sub_100199D74(v13, _s11TrackedItemVMa);
  }
}