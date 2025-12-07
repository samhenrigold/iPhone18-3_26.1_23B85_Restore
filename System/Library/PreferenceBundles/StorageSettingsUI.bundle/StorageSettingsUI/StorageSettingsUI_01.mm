uint64_t sub_2516C(uint64_t a1)
{
  v2 = sub_81C08();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_3BD70(v2, *(a1 + 36), 0, a1);

  return v4;
}

void sub_251E8(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_37D18(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_34BEC(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_38778();
        v10 = v13;
      }

      sub_3748C(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_252EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_147EC(&unk_B8230, qword_88A50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_80A38();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_14FD4(a1, &unk_B8230, qword_88A50);
    sub_3576C(a2, a3, v9);

    return sub_14FD4(v9, &unk_B8230, qword_88A50);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_37FE4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

void *sub_254C4()
{
  v0 = type metadata accessor for Application(0);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (&v31 - v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  sub_26ADC(v35);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  sub_26ADC(v35);
  v7 = v36;
  v34 = *(v36 + 16);
  if (v34)
  {
    v8 = 0;
    v33 = v36 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = _swiftEmptyDictionarySingleton;
    v32 = v36;
    while (v8 < *(v7 + 16))
    {
      v10 = v1;
      v11 = *(v1 + 72);
      sub_3B948(v33 + v11 * v8, v6, type metadata accessor for Application);
      v13 = *v6;
      v12 = v6[1];
      v14 = v6;
      v15 = v6;
      v16 = v4;
      sub_3B948(v15, v4, type metadata accessor for Application);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v9;
      v18 = sub_34B30(v13, v12);
      v20 = v9[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_18;
      }

      v24 = v19;
      if (v9[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = v18;
          sub_3834C();
          v18 = v29;
        }
      }

      else
      {
        sub_358F0(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_34B30(v13, v12);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_20;
        }
      }

      v4 = v16;
      v9 = v35;
      v6 = v14;
      if (v24)
      {
        sub_3BAA0(v4, v35[7] + v18 * v11);
      }

      else
      {
        v35[(v18 >> 6) + 8] |= 1 << v18;
        v26 = (v9[6] + 16 * v18);
        *v26 = v13;
        v26[1] = v12;
        sub_3C81C(v4, v9[7] + v18 * v11, type metadata accessor for Application);
        v27 = v9[2];
        v22 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v22)
        {
          goto LABEL_19;
        }

        v9[2] = v28;
      }

      ++v8;
      sub_3CBD0(v14, type metadata accessor for Application);
      v1 = v10;
      v7 = v32;
      if (v34 == v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_81E38();
    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyDictionarySingleton;
LABEL_16:

    return v9;
  }

  return result;
}

uint64_t sub_2588C(uint64_t a1)
{
  v3 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v3 - 8);
  v91 = &v89 - v4;
  v5 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v89 - v6;
  v110 = type metadata accessor for Application(0);
  v8 = *(v110 - 1);
  v9 = __chkstk_darwin(v110);
  v93 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v92 = &v89 - v12;
  v13 = __chkstk_darwin(v11);
  v98 = &v89 - v14;
  v15 = __chkstk_darwin(v13);
  v94 = &v89 - v16;
  v17 = __chkstk_darwin(v15);
  v107 = &v89 - v18;
  v19 = __chkstk_darwin(v17);
  v103 = &v89 - v20;
  v21 = __chkstk_darwin(v19);
  __chkstk_darwin(v21);
  v25 = &v89 - v22;
  v90 = v1;
  v26 = *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_systemBundleIDs];
  v27 = *(v26 + 16);
  v99 = v8;
  if (v27)
  {
    v101 = v23;
    v109 = (v8 + 56);
    v28 = (v26 + 40);
    v29 = _swiftEmptyArrayStorage;
    *&v24 = 136315650;
    v95 = v24;
    v102 = v7;
    v100 = &v89 - v22;
    do
    {
      v31 = *(v28 - 1);
      v32 = *v28;
      v33 = *(a1 + 16);

      if (v33)
      {
        v34 = sub_34B30(v31, v32);
        if (v35)
        {
          v108 = v31;
          v36 = *(a1 + 56);
          v106 = *(v8 + 72);
          sub_3B948(v36 + v106 * v34, v25, type metadata accessor for Application);
          if (qword_B7850 != -1)
          {
            swift_once();
          }

          v37 = sub_80BC8();
          sub_19818(v37, qword_BCF70);
          v38 = v25;
          v39 = v25;
          v40 = v101;
          sub_3B948(v38, v101, type metadata accessor for Application);
          v41 = v39;
          v42 = v103;
          sub_3B948(v41, v103, type metadata accessor for Application);

          v43 = sub_80BB8();
          v44 = sub_81B08();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v111[0] = v97;
            *v45 = v95;
            *(v45 + 4) = sub_34588(v108, v32, v111);
            *(v45 + 12) = 2080;
            v46 = sub_81E68();
            v104 = v29;
            v105 = a1;
            v47 = v46;
            v49 = v48;
            v96 = v44;
            sub_3CBD0(v40, type metadata accessor for Application);
            v50 = sub_34588(v47, v49, v111);

            *(v45 + 14) = v50;
            *(v45 + 22) = 2080;
            v51 = sub_81E68();
            v53 = v52;
            sub_3CBD0(v42, type metadata accessor for Application);
            v54 = v51;
            a1 = v105;
            v55 = sub_34588(v54, v53, v111);
            v29 = v104;

            *(v45 + 24) = v55;
            _os_log_impl(&dword_0, v43, v96, "Updating %s with fixed size %s and data size %s", v45, 0x20u);
            swift_arrayDestroy();

            v8 = v99;
          }

          else
          {

            sub_3CBD0(v42, type metadata accessor for Application);
            sub_3CBD0(v40, type metadata accessor for Application);
          }

          v25 = v100;
          sub_3B948(v100, v107, type metadata accessor for Application);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_34040(0, v29[2] + 1, 1, v29, &qword_B82B8, &qword_89148, type metadata accessor for Application);
          }

          v57 = v29[2];
          v56 = v29[3];
          if (v57 >= v56 >> 1)
          {
            v29 = sub_34040((v56 > 1), v57 + 1, 1, v29, &qword_B82B8, &qword_89148, type metadata accessor for Application);
          }

          sub_3CBD0(v25, type metadata accessor for Application);
          v29[2] = v57 + 1;
          sub_3C81C(v107, v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v57 * v106, type metadata accessor for Application);
          v7 = v102;
          v31 = v108;
        }
      }

      v58 = sub_34B30(v31, v32);
      v60 = v59;

      if (v60)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111[0] = a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_3834C();
          a1 = v111[0];
        }

        sub_3C81C(*(a1 + 56) + *(v8 + 72) * v58, v7, type metadata accessor for Application);
        sub_37654(v58, a1, type metadata accessor for Application);
        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      (*v109)(v7, v30, 1, v110);
      sub_14FD4(v7, &qword_B7E50, &qword_8A3F0);
      v28 += 2;
      --v27;
    }

    while (v27);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  if (*(a1 + 16))
  {
    v104 = v29;
    v62 = a1 + 64;
    v63 = 1 << *(a1 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & *(a1 + 64);
    v66 = (v63 + 63) >> 6;

    v68 = 0;
    v109 = _swiftEmptyArrayStorage;
    v110 = _swiftEmptyArrayStorage;
    v105 = a1;
    while (v65)
    {
LABEL_33:
      v71 = *(v8 + 72);
      v72 = v94;
      sub_3B948(*(a1 + 56) + v71 * (__clz(__rbit64(v65)) | (v68 << 6)), v94, type metadata accessor for Application);
      v73 = v72;
      v74 = v98;
      sub_3C81C(v73, v98, type metadata accessor for Application);
      if (*(v74 + 131) == 1)
      {
        sub_3B948(v74, v92, type metadata accessor for Application);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_34040(0, v110[2] + 1, 1, v110, &qword_B82B8, &qword_89148, type metadata accessor for Application);
        }

        v76 = v110[2];
        v75 = v110[3];
        v77 = v76 + 1;
        if (v76 >= v75 >> 1)
        {
          v78 = sub_34040((v75 > 1), v76 + 1, 1, v110, &qword_B82B8, &qword_89148, type metadata accessor for Application);
          v69 = v92;
          v110 = v78;
        }

        else
        {
          v78 = v110;
          v69 = v92;
        }
      }

      else
      {
        sub_3B948(v74, v93, type metadata accessor for Application);
        v78 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_34040(0, v78[2] + 1, 1, v78, &qword_B82B8, &qword_89148, type metadata accessor for Application);
        }

        v76 = v78[2];
        v79 = v78[3];
        v77 = v76 + 1;
        if (v76 < v79 >> 1)
        {
          v109 = v78;
          v69 = v93;
        }

        else
        {
          v78 = sub_34040((v79 > 1), v76 + 1, 1, v78, &qword_B82B8, &qword_89148, type metadata accessor for Application);
          v69 = v93;
          v109 = v78;
        }
      }

      v65 &= v65 - 1;
      sub_3CBD0(v98, type metadata accessor for Application);
      v78[2] = v77;
      v8 = v99;
      result = sub_3C81C(v69, v78 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + v76 * v71, type metadata accessor for Application);
      a1 = v105;
    }

    while (1)
    {
      v70 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        __break(1u);
        return result;
      }

      if (v70 >= v66)
      {
        break;
      }

      v65 = *(v62 + 8 * v70);
      ++v68;
      if (v65)
      {
        v68 = v70;
        goto LABEL_33;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v111[0] = v104;
    v80 = v90;
    sub_80C78();
    swift_getKeyPath();
    swift_getKeyPath();
    v111[0] = v109;
    v81 = v80;
    sub_80C78();
    if (!v110[2] && (swift_getKeyPath(), swift_getKeyPath(), sub_80C68(), , , v88 = *(v111[0] + 16), , v88) && *(*&v81[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs] + 16))
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v111[0] = v110;
      v82 = v81;
      sub_80C78();
    }

    sub_26D24();
    v83 = sub_81AB8();
    v84 = v91;
    (*(*(v83 - 8) + 56))(v91, 1, 1, v83);
    sub_81A88();
    v85 = v81;
    v86 = sub_81A78();
    v87 = swift_allocObject();
    v87[2] = v86;
    v87[3] = &protocol witness table for MainActor;
    v87[4] = v85;
    sub_68AE4(0, 0, v84, &unk_89158, v87);
  }

  else
  {
  }
}

uint64_t (*sub_26510(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_39218(v6, a2, a3);
  return sub_26598;
}

uint64_t (*sub_2659C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_392C8(v6, a2, a3);
  return sub_3CD2C;
}

void sub_26624(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26684()
{
  v0 = sub_80BC8();
  sub_3BBB8(v0, qword_BCF70);
  v1 = sub_19818(v0, qword_BCF70);
  v2 = sub_80BA8();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_26710()
{
  result = [objc_allocWithZone(type metadata accessor for StorageShared(0)) init];
  qword_BCF88 = result;
  return result;
}

uint64_t sub_26744()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();
}

uint64_t sub_267C0(uint64_t a1, void **a2)
{
  v4 = sub_817E8();
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_3B948(a1, &v13 - v8, &type metadata accessor for Volume);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3B948(v9, v7, &type metadata accessor for Volume);
  v11 = v10;
  sub_80C78();
  return sub_3CBD0(v9, &type metadata accessor for Volume);
}

uint64_t sub_26988(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  return v3;
}

uint64_t sub_269F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  return v1;
}

uint64_t sub_26A68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  return v1;
}

uint64_t sub_26ADC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_34040(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_B82B8, &qword_89148, type metadata accessor for Application);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Application(0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26C2C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_3421C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26D24()
{
  isUniquelyReferenced_nonNull_native = &v77;
  v2 = type metadata accessor for Application(0);
  v63 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_817E8();
  __chkstk_darwin(v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254C4()[2];

  if (v8)
  {
    v61 = v0;
    v9 = sub_254C4();
    v10 = v9 + 8;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9[8];
    v14 = (v11 + 63) >> 6;
    v64 = v9;

    v15 = 0;
    v0 = _swiftEmptyDictionarySingleton;
    v62 = v4;
    if (v13)
    {
      goto LABEL_7;
    }

    while (1)
    {
LABEL_8:
      v26 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v26 >= v14)
      {
        break;
      }

      v13 = v10[v26];
      ++v15;
      if (v13)
      {
        while (1)
        {
          sub_3B948(v64[7] + *(v63 + 72) * (__clz(__rbit64(v13)) | (v26 << 6)), v4, type metadata accessor for Application);
          sub_629C8(v4, v81);
          v7 = *(&v81[0] + 1);
          v27 = *&v81[0];
          v79 = v81[0];
          v80 = v81[1];
          v65 = v82;
          v77 = v83;
          v78[0] = *v84;
          *(v78 + 9) = *&v84[9];
          v28 = v0[2];

          if (v28)
          {
            v29 = sub_34B30(v27, v7);
            if (v30)
            {
              v31 = *(v0[7] + 88 * v29 + 32);
              v65 = v82 + v31;
              if (__OFADD__(v82, v31))
              {
                goto LABEL_35;
              }
            }
          }

          v74 = v79;
          v75 = v80;
          *&v76[0] = v65;
          *(v76 + 8) = v77;
          *(&v76[1] + 8) = v78[0];
          *(&v76[2] + 1) = *(v78 + 9);
          sub_3BC1C(&v74, &v69);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = v0;
          v32 = sub_34B30(v27, v7);
          v34 = v0[2];
          v35 = (v33 & 1) == 0;
          v36 = __OFADD__(v34, v35);
          v37 = v34 + v35;
          if (v36)
          {
            goto LABEL_33;
          }

          v38 = v33;
          if (v0[3] >= v37)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v48 = v32;
              sub_38A3C();
              v32 = v48;
            }
          }

          else
          {
            sub_365D0(v37, isUniquelyReferenced_nonNull_native);
            v32 = sub_34B30(v27, v7);
            if ((v38 & 1) != (v39 & 1))
            {
              result = sub_81E38();
              __break(1u);
              return result;
            }
          }

          isUniquelyReferenced_nonNull_native = &v77;
          v13 &= v13 - 1;
          if (v38)
          {
            v16 = v32;

            v0 = v68;
            v17 = v68[7] + 88 * v16;
            v18 = *(v17 + 16);
            v66[0] = *v17;
            v66[1] = v18;
            v19 = *(v17 + 32);
            v20 = *(v17 + 48);
            v21 = *(v17 + 64);
            v67 = *(v17 + 80);
            v66[3] = v20;
            v66[4] = v21;
            v66[2] = v19;
            v23 = v76[1];
            v22 = v76[2];
            v24 = v76[0];
            *(v17 + 80) = v76[3];
            *(v17 + 48) = v23;
            *(v17 + 64) = v22;
            *(v17 + 32) = v24;
            v25 = v75;
            *v17 = v74;
            *(v17 + 16) = v25;
            sub_3BC78(v66);
            v69 = v79;
            v70 = v80;
            v71 = v65;
            v72 = v77;
            v73[0] = v78[0];
            *(v73 + 9) = *(v78 + 9);
            sub_3BC78(&v69);
            v4 = v62;
            sub_3CBD0(v62, type metadata accessor for Application);
            v15 = v26;
            if (!v13)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v0 = v68;
            v68[(v32 >> 6) + 8] |= 1 << v32;
            v40 = (v0[6] + 16 * v32);
            *v40 = v27;
            v40[1] = v7;
            v41 = v0[7] + 88 * v32;
            v42 = v76[3];
            v44 = v76[1];
            v43 = v76[2];
            *(v41 + 32) = v76[0];
            *(v41 + 48) = v44;
            *(v41 + 64) = v43;
            *(v41 + 80) = v42;
            v45 = v75;
            *v41 = v74;
            *(v41 + 16) = v45;
            v69 = v79;
            v70 = v80;
            v71 = v65;
            v72 = v77;
            v73[0] = v78[0];
            *(v73 + 9) = *(v78 + 9);
            sub_3BC78(&v69);
            v4 = v62;
            sub_3CBD0(v62, type metadata accessor for Application);
            v46 = v0[2];
            v36 = __OFADD__(v46, 1);
            v47 = v46 + 1;
            if (v36)
            {
              goto LABEL_34;
            }

            v0[2] = v47;
            v15 = v26;
            if (!v13)
            {
              goto LABEL_8;
            }
          }

LABEL_7:
          v26 = v15;
        }
      }
    }

    v49 = v0[2];
    if (v49)
    {
      v50 = sub_343C4(v0[2], 0);
      v0 = sub_3A014(&v74, v50 + 32, v49, v0);
      sub_208C0(v74);
      v51 = v61;
      if (v0 != v49)
      {
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {

      v50 = _swiftEmptyArrayStorage;
      v51 = v61;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *&v74 = v50;
    v58 = v51;
  }

  else
  {
LABEL_27:
    sub_147EC(&qword_B82C8, &qword_891B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_886D0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_80C68();

    sub_3CBD0(v7, &type metadata accessor for Volume);
    v52 = sub_818E8();
    v53 = sub_818E8();
    v54 = STLocalizedString(v52);

    sub_81928();
    if (qword_B78B0 != -1)
    {
LABEL_36:
      swift_once();
    }

    sub_81798();
    v55 = *(isUniquelyReferenced_nonNull_native + 136);
    *(v14 + 64) = *(isUniquelyReferenced_nonNull_native + 120);
    *(v14 + 80) = v55;
    *(v14 + 96) = *(isUniquelyReferenced_nonNull_native + 152);
    *(v14 + 112) = v84[24];
    v56 = *(isUniquelyReferenced_nonNull_native + 104);
    *(v14 + 32) = *(isUniquelyReferenced_nonNull_native + 88);
    *(v14 + 48) = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v74 = v14;
    v57 = v0;
  }

  return sub_80C78();
}

uint64_t sub_27478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_81A88();
  v4[3] = sub_81A78();
  v6 = sub_81A58();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_27510, v6, v5);
}

uint64_t sub_27510()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationController);
  v0[6] = v1;
  v0[7] = sub_254C4();

  return _swift_task_switch(sub_2758C, v1, 0);
}

uint64_t sub_2758C()
{
  sub_51AE0(v0[7]);

  v1 = v0[4];
  v2 = v0[5];

  return _swift_task_switch(sub_15E64, v1, v2);
}

id sub_275FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v2 - 8);
  v139 = &v106 - v3;
  v110 = sub_809D8();
  v109 = *(v110 - 8);
  v4 = __chkstk_darwin(v110);
  v107 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v108 = &v106 - v6;
  v7 = sub_147EC(&qword_B8358, &qword_893D0);
  __chkstk_darwin(v7 - 8);
  v135 = &v106 - v8;
  v9 = sub_817E8();
  v10 = *(v9 - 8);
  v133 = v9;
  v134 = v10;
  v11 = __chkstk_darwin(v9);
  v136 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v137 = &v106 - v14;
  __chkstk_darwin(v13);
  v106 = &v106 - v15;
  v16 = sub_147EC(&qword_B8298, &qword_88FC0);
  v17 = __chkstk_darwin(v16 - 8);
  v132 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v131 = &v106 - v20;
  v21 = __chkstk_darwin(v19);
  v130 = &v106 - v22;
  __chkstk_darwin(v21);
  v129 = &v106 - v23;
  v24 = sub_80A38();
  __chkstk_darwin(v24 - 8);
  v127 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_81818();
  __chkstk_darwin(v26 - 8);
  v128 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_147EC(&qword_B8360, &qword_893D8);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v106 - v28;
  v123 = sub_147EC(&qword_B8368, &qword_893E0);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v106 - v29;
  v120 = sub_147EC(&qword_B8370, &qword_893E8);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v106 - v30;
  v117 = sub_147EC(&qword_B8378, &qword_893F0);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v32 = &v106 - v31;
  v115 = sub_147EC(&qword_B8380, &qword_893F8);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v106 - v33;
  v112 = sub_147EC(&qword_B8388, &qword_89400);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v35 = &v106 - v34;
  v36 = sub_147EC(&qword_B8390, &qword_89408);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v106 - v38;
  v40 = &v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_deviceName];
  v41 = localizedDeviceName();
  v42 = sub_81928();
  v44 = v43;

  *v40 = v42;
  v40[1] = v44;
  v45 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__categories;
  v141[0] = _swiftEmptyArrayStorage;
  sub_147EC(&qword_B8170, &qword_88E78);
  sub_80C58();
  (*(v37 + 32))(&v1[v45], v39, v36);
  v46 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__recommendations;
  v141[0] = _swiftEmptyArrayStorage;
  sub_147EC(&qword_B8180, &qword_88E80);
  sub_80C58();
  (*(v111 + 32))(&v1[v46], v35, v112);
  v47 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__followups;
  v141[0] = _swiftEmptyArrayStorage;
  sub_147EC(&qword_B8190, &qword_88E88);
  v48 = v113;
  sub_80C58();
  (*(v114 + 32))(&v1[v47], v48, v115);
  v49 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__visibleItems;
  v141[0] = _swiftEmptyArrayStorage;
  sub_147EC(&qword_B81A0, &qword_88E90);
  sub_80C58();
  v50 = *(v116 + 32);
  v51 = v117;
  v50(&v1[v49], v32, v117);
  v52 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__hiddenItems;
  v141[0] = _swiftEmptyArrayStorage;
  sub_80C58();
  v50(&v1[v52], v32, v51);
  v53 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__systemItems;
  v141[0] = _swiftEmptyArrayStorage;
  sub_80C58();
  v50(&v1[v53], v32, v51);
  v54 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__currentSearch;
  v141[0] = 0;
  v141[1] = 0xE000000000000000;
  v55 = v118;
  sub_80C58();
  (*(v119 + 32))(&v1[v54], v55, v120);
  v56 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__gatheringFailed;
  LOBYTE(v141[0]) = 0;
  v57 = v121;
  sub_80C58();
  (*(v122 + 32))(&v1[v56], v57, v123);
  v58 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared__deepLinkDestination;
  v141[0] = 0;
  sub_147EC(&qword_B81C0, &qword_88E98);
  v59 = v124;
  sub_80C58();
  (*(v125 + 32))(&v1[v58], v59, v126);
  v60 = &v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback];
  *v60 = 0;
  v60[1] = 0;
  v61 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_systemDataInternalDetails;
  *&v1[v61] = sub_3B0CC(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_syncedMediaSizes] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lastSizerResults] = 0;
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription] = 0;
  v62 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs;
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs] = &_swiftEmptySetSingleton;
  v126 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs;
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs] = &_swiftEmptySetSingleton;
  v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationsDidUpdateOnce] = 1;
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries] = 0;
  v63 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_systemBundleIDs;
  sub_147EC(&qword_B82D8, &qword_891C0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_88E30;
  *(v64 + 32) = sub_81928();
  *(v64 + 40) = v65;
  *(v64 + 48) = sub_81928();
  *(v64 + 56) = v66;
  *(v64 + 64) = sub_81928();
  *(v64 + 72) = v67;
  *&v1[v63] = v64;
  v68 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_datesByApplications;
  *&v1[v68] = sub_3B1C8(_swiftEmptyArrayStorage);
  v69 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_datesStreams;
  v70 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v71 = [v70 InFocus];
  swift_unknownObjectRelease();
  *&v1[v69] = v71;
  v141[3] = &type metadata for StorageManagementFeature;
  v141[4] = sub_3C0A0();
  LOBYTE(v71) = sub_80AB8();
  sub_20FD0(v141);
  v72 = SAAppSizer_ptr;
  if ((v71 & 1) == 0)
  {
    v72 = &off_A9208;
  }

  v73 = [objc_allocWithZone(*v72) init];
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizer] = v73;
  type metadata accessor for RecommendationController();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationController] = sub_51888();
  type metadata accessor for SoftwareUpdateController();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_softwareUpdateController] = sub_5601C();
  sub_80A18();
  v74 = sub_816D8();
  v75 = *(*(v74 - 8) + 56);
  v75(v129, 1, 1, v74);
  v75(v130, 1, 1, v74);
  v75(v131, 1, 1, v74);
  v75(v132, 1, 1, v74);
  v76 = v128;
  sub_817F8();
  sub_3C81C(v76, &v1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats], &type metadata accessor for TimeStats);
  v77 = objc_opt_self();
  v78 = [v77 hiddenAppBundleIdentifiers];
  v79 = sub_81AD8();

  *&v1[v62] = v79;
  v80 = v133;

  v81 = [v77 lockedAppBundleIdentifiers];
  v82 = sub_81AD8();

  *&v1[v126] = v82;
  v83 = v135;

  sub_817B8();
  if ((*(v134 + 48))(v83, 1, v80) == 1)
  {
    v85 = v136;
    v84 = v137;
    sub_14FD4(v83, &qword_B8358, &qword_893D0);
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v86 = sub_80BC8();
    sub_19818(v86, qword_BCF70);
    v87 = sub_80BB8();
    v88 = sub_81B18();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_0, v87, v88, "Failed to get volume placeholder with correct sizes, displaying an empty one", v89, 2u);
    }

    sub_817C8();

    v90 = v108;
    sub_80998();

    sub_81E58();
    v91 = v109;
    v92 = v110;
    (*(v109 + 16))(v107, v90, v110);
    v93 = v84;
    sub_817D8();
    (*(v91 + 8))(v90, v92);
    swift_beginAccess();
    sub_3B948(v84, v85, &type metadata accessor for Volume);
    sub_80C58();
    sub_3CBD0(v84, &type metadata accessor for Volume);
    swift_endAccess();
  }

  else
  {
    v94 = v106;
    sub_3C81C(v83, v106, &type metadata accessor for Volume);
    v93 = v137;
    sub_3B948(v94, v137, &type metadata accessor for Volume);
    swift_beginAccess();
    sub_3B948(v93, v136, &type metadata accessor for Volume);
    sub_80C58();
    sub_3CBD0(v93, &type metadata accessor for Volume);
    swift_endAccess();
    sub_3CBD0(v94, &type metadata accessor for Volume);
  }

  v140.receiver = v1;
  v140.super_class = ObjectType;
  v95 = objc_msgSendSuper2(&v140, "init");
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v95;
  sub_80C68();

  v97 = *(v93 + *(v80 + 28));
  sub_3CBD0(v93, &type metadata accessor for Volume);
  if (v97 >= 1)
  {
    sub_26D24();
  }

  v98 = objc_opt_self();
  v99 = [v98 defaultCenter];
  [v99 addObserver:v96 selector:"startHandlers" name:UIApplicationDidBecomeActiveNotification object:0];

  v100 = [v98 defaultCenter];
  [v100 addObserver:v96 selector:"stopHandlers" name:UIApplicationDidEnterBackgroundNotification object:0];

  v101 = sub_81AB8();
  v102 = v139;
  (*(*(v101 - 8) + 56))(v139, 1, 1, v101);
  sub_81A88();
  v103 = sub_81A78();
  v104 = swift_allocObject();
  v104[2] = v103;
  v104[3] = &protocol witness table for MainActor;
  v104[4] = v96;
  sub_68AE4(0, 0, v102, &unk_89418, v104);

  return v96;
}

uint64_t sub_28904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_81A88();
  v4[3] = sub_81A78();
  v6 = sub_81A58();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_2899C, v6, v5);
}

uint64_t sub_2899C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationController);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_289C8, v1, 0);
}

uint64_t sub_289C8()
{
  sub_3A590(*(v0 + 16), *(v0 + 48));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_3CD38, v1, v2);
}

id sub_28A54()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for StorageShared(uint64_t a1)
{
  result = qword_B8150;
  if (!qword_B8150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_28F58()
{
  v1 = sub_147EC(&qword_B8298, &qword_88FC0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - v5;
  v7 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries;
  if (*&v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries] <= 2)
  {
    v8 = &v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats];
    swift_beginAccess();
    v25 = sub_81818();
    sub_14F6C(&v8[*(v25 + 20)], v6, &qword_B8298, &qword_88FC0);
    v9 = sub_816D8();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v6, 1, v9);
    sub_14FD4(v6, &qword_B8298, &qword_88FC0);
    if (v11 == 1)
    {
      sub_816C8();
      (*(v10 + 56))(v4, 0, 1, v9);
      swift_beginAccess();
      sub_3C9DC(v4, &v8[*(v25 + 20)], &qword_B8298, &qword_88FC0);
      swift_endAccess();
    }

    v12 = *&v0[v7];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      *&v0[v7] = v14;
      v15 = *&v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizer];
      v16 = swift_allocObject();
      *(v16 + 16) = v0;
      aBlock[4] = sub_3BEBC;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2EF54;
      aBlock[3] = &unk_AB770;
      v17 = _Block_copy(aBlock);
      v18 = v15;
      v19 = v0;

      [v18 startObservingWithUpdateHandler:v17];
      _Block_release(v17);

      sub_2EFD0();
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;
  v20 = v0;
  sub_80C78();
  if (qword_B7850 != -1)
  {
LABEL_11:
    swift_once();
  }

  v21 = sub_80BC8();
  sub_19818(v21, qword_BCF70);
  v22 = sub_80BB8();
  v23 = sub_81B28();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "Failed to gather app list after 3 tries, aborting.", v24, 2u);
  }
}

uint64_t sub_29320(void *a1, uint64_t a2, char *a3)
{
  v6 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  if (a1)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  if (v9)
  {
    *&a3[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries] = 0;
    v18 = sub_81AB8();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    sub_81A88();
    v19 = a1;
    v20 = a3;
    v21 = sub_81A78();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v20;
    v22[5] = v19;
    v23 = &unk_89258;
  }

  else
  {
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v11 = sub_80BC8();
    sub_19818(v11, qword_BCF70);
    swift_errorRetain();
    v12 = sub_80BB8();
    v13 = sub_81B18();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v14 + 4) = v16;
      *v15 = v17;
      _os_log_impl(&dword_0, v12, v13, "Failed to update app sizes with error %@", v14, 0xCu);
      sub_14FD4(v15, &qword_B7BA8, &qword_8A5F0);
    }

    v24 = sub_81AB8();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    sub_81A88();
    v25 = a3;
    v26 = sub_81A78();
    v22 = swift_allocObject();
    v22[2] = v26;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v25;
    v23 = &unk_89240;
  }

  sub_68AE4(0, 0, v8, v23, v22);

  return v10;
}

uint64_t sub_29650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_81A88();
  v5[3] = sub_81A78();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_2970C;

  return sub_29848(a5);
}

uint64_t sub_2970C()
{

  v1 = sub_81A58();

  return _swift_task_switch(sub_3CD38, v1, v0);
}

uint64_t sub_29848(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = sub_809D8();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v4 = *(sub_817E8() - 8);
  v2[37] = v4;
  v2[38] = *(v4 + 64);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v5 = sub_147EC(&qword_B8228, &qword_88F48);
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();
  sub_147EC(&unk_B8230, qword_88A50);
  v2[44] = swift_task_alloc();
  sub_147EC(&qword_B7E50, &qword_8A3F0);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v6 = type metadata accessor for Application(0);
  v2[50] = v6;
  v2[51] = *(v6 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  sub_147EC(&unk_B8240, &qword_88F50);
  v2[56] = swift_task_alloc();

  return _swift_task_switch(sub_29B40, 0, 0);
}

uint64_t sub_29B40()
{
  v1 = v0[56];
  v2 = v0[32];
  v3 = sub_81AB8();
  v0[57] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[58] = v5;
  v0[59] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v0[60] = sub_81A88();
  v6 = v2;
  v7 = sub_81A78();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_68AE4(0, 0, v1, &unk_88F60, v8);

  v0[25] = sub_3B3B4(_swiftEmptyArrayStorage);
  v0[61] = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs;
  v0[62] = sub_81A78();
  v10 = sub_81A58();

  return _swift_task_switch(sub_29CBC, v10, v9);
}

uint64_t sub_29CBC()
{
  v1 = v0[61];
  v2 = v0[32];

  v0[63] = *(v2 + v1);

  return _swift_task_switch(sub_29D38, 0, 0);
}

uint64_t sub_29D38()
{
  *(v0 + 512) = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs;
  *(v0 + 520) = sub_81A78();
  v2 = sub_81A58();

  return _swift_task_switch(sub_29DD0, v2, v1);
}

uint64_t sub_29DD0()
{
  v1 = v0[64];
  v2 = v0[32];

  v0[66] = *(v2 + v1);

  return _swift_task_switch(sub_29E50, 0, 0);
}

uint64_t sub_29E50()
{
  v134 = (v0 + 2);
  v132 = (v0 + 6);
  v133 = (v0 + 10);
  v130 = (v0 + 18);
  v131 = (v0 + 14);
  v2 = [v0[31] appData];
  v3 = &qword_88C78;
  v4 = sub_147EC(&qword_B7E58, &qword_88C78);
  v5 = sub_1A7F4(0, &qword_B8250, SAAppSize_ptr);
  sub_14F24(&qword_B8258, &qword_B7E58, &qword_88C78, &protocol conformance descriptor for Set<A>);
  v6 = sub_81838();
  v0[67] = v6;

  v7 = 0;
  v8 = *(v6 + 32);
  *(v0 + 640) = v8;
  v9 = 1 << v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v6 + 64);
  v0[68] = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_datesByApplications;
  v137 = v0;
  if (v11)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v2 = v0[67];
    if (v12 >= (((1 << *(v0 + 640)) + 63) >> 6))
    {
      v43 = v0[50];
      v44 = v0[51];

      v5 = @"com.apple.fakeapp.SystemData";
      v45 = sub_81928();
      v47 = sub_26510(v132, v45, v46);
      v49 = v48;
      v50 = *(v44 + 48);
      if (!v50(v48, 1, v43))
      {
        v128 = v0[50];
        v135 = v50;
        v51 = v0[43];
        v126 = v0[41];
        v127 = v0[42];
        v52 = [v0[31] systemDataDetails];
        sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
        v53 = sub_81838();

        v134 = @"com.apple.fakeapp.SystemData";
        v54 = sub_24E5C(v53);

        v0[30] = v54;
        swift_getKeyPath();
        sub_80908();
        sub_147EC(&qword_B8268, &qword_88FA0);
        sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
        sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
        v0 = v137;
        v55 = sub_819B8();
        v56 = v51;
        v50 = v135;
        (*(v127 + 8))(v56, v126);
        v5 = @"com.apple.fakeapp.SystemData";

        *(v49 + *(v128 + 84)) = v55;
      }

      v47();

      v1 = @"com.apple.fakeapp.System";
      v57 = sub_81928();
      v59 = v0[25];
      v7 = v133;
      if (!*(v59 + 16))
      {

        goto LABEL_77;
      }

      v60 = sub_34B30(v57, v58);
      v62 = v61;

      if ((v62 & 1) == 0)
      {
        goto LABEL_77;
      }

      v134 = @"com.apple.fakeapp.SystemData";
      v135 = v50;
      v64 = v0[52];
      v63 = v0[53];
      v65 = v0[42];
      v3 = v0[43];
      v129 = v0[41];
      v66 = v0[31];
      sub_3B948(*(v59 + 56) + *(v0[51] + 72) * v60, v64, type metadata accessor for Application);
      sub_3C81C(v64, v63, type metadata accessor for Application);
      v67 = [v66 systemDetails];
      sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
      v68 = sub_81838();

      v69 = sub_24E5C(v68);

      v0[29] = v69;
      swift_getKeyPath();
      sub_80908();
      v5 = sub_147EC(&qword_B8268, &qword_88FA0);
      sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
      sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
      v70 = sub_819B8();
      (*(v65 + 8))(v3, v129);

      v71 = 0;
      v4 = *(v70 + 16);
      v2 = _swiftEmptyArrayStorage;
LABEL_46:
      v72 = 40 * v71 + 48;
      v7 = v133;
      while (v4 != v71)
      {
        if (v71 >= *(v70 + 16))
        {
          goto LABEL_85;
        }

        v5 = *(v70 + v72);
        v72 += 40;
        ++v71;
        if (v5 != 0x8000000000000000)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_33F3C(0, *(v2 + 2) + 1, 1, v2);
          }

          v74 = *(v2 + 2);
          v73 = *(v2 + 3);
          v3 = v74 + 1;
          if (v74 >= v73 >> 1)
          {
            v2 = sub_33F3C((v73 > 1), v74 + 1, 1, v2);
          }

          *(v2 + 2) = v3;
          *&v2[8 * v74 + 32] = v5;
          goto LABEL_46;
        }
      }

      v0 = v137;
      v75 = v137[50];
      v3 = sub_81A38();

      v76 = sub_81928();
      v4 = v77;
      v2 = sub_26510(v131, v76, v77);
      v79 = v78;
      v80 = v75;
      v50 = v135;
      if (!(v135)(v78, 1, v80))
      {
        *(v79 + *(v137[50] + 84)) = v70;
      }

      v5 = @"com.apple.fakeapp.SystemData";
      (v2)();

      if (v3 < 100000001)
      {
        goto LABEL_76;
      }

      v84 = v137[53];
      v85 = v84[6];
      v86 = v84[7];
      v87 = __OFADD__(v85, v86);
      v88 = v85 + v86;
      if (v87)
      {
        goto LABEL_90;
      }

      v131 = (v88 - v3);
      if (__OFSUB__(v88, v3))
      {
        goto LABEL_91;
      }

      v89 = v137[50];
      v6 = v84[2];
      v3 = v84[3];
      v90 = sub_81928();
      v92 = v91;

      v2 = sub_26510(v130, v90, v92);
      v4 = v93;
      if ((v135)(v93, 1, v89))
      {

        goto LABEL_75;
      }

LABEL_71:
      v5 = v6;
      v7 = *(v0[50] + 84);
      v1 = *(v4 + v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v7) = v1;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_72;
      }

      goto LABEL_92;
    }

    v11 = *&v2[8 * v12 + 64];
    ++v7;
    if (!v11)
    {
      continue;
    }

    v7 = v12;
LABEL_12:
    v0[70] = v7;
    v0[69] = v11;
    v135 = (v11 - 1) & v11;
    v13 = (v7 << 9) | (8 * __clz(__rbit64(v11)));
    v14 = *(*(v2 + 6) + v13);
    v0[71] = v14;
    v2 = *(*(v2 + 7) + v13);
    v0[72] = v2;
    v0[26] = v14;
    v0[27] = v14;
    v0 = v14;
    v16 = v14 + 56;
    v15 = *(v14 + 56);
    v17 = -1 << *(v14 + 32);
    v18 = -v17 < 64 ? ~(-1 << -v17) : -1;
    v3 = v18 & v15;
    v1 = ((63 - v17) >> 6);
    swift_bridgeObjectRetain_n();
    v136 = v2;
    v19 = 0;
LABEL_17:
    if (v3)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_71;
      }

      if (v20 >= v1)
      {
        break;
      }

      v3 = *(v16 + 8 * v20);
      ++v19;
      if (v3)
      {
        v19 = v20;
LABEL_22:
        v21 = (v0[6] + ((v19 << 10) | (16 * __clz(__rbit64(v3)))));
        v4 = *v21;
        v6 = v21[1];
        v22 = qword_B7888;

        if (v22 != -1)
        {
          swift_once();
        }

        v3 &= v3 - 1;
        v2 = qword_BD078;
        if (*(qword_BD078 + 16))
        {
          v4 = sub_34B30(v4, v6);
          v24 = v23;

          if (v24)
          {
            v25 = *(v2 + 7) + 144 * v4;
            v6 = *(v25 + 120);
            v4 = *(v25 + 128);

            sub_2FEF0(v6);
            v2 = (v137 + 27);
            sub_2FEF0(v4);
          }
        }

        else
        {
        }

        goto LABEL_17;
      }
    }

    v3 = v0;
    v0 = v137;
    v26 = v137[66];
    v27 = v137[63];

    v6 = sub_2FFF4(v26, v137[26]);

    v2 = v137[27];
    v5 = sub_2FFF4(v27, v2);

    if (*(v3 + 16) >= 2uLL)
    {
      break;
    }

    v28 = sub_2516C(v3);
    v4 = v29;

    v137[74] = v4;
    if (!v4)
    {

      v11 = v135;
      if (v135)
      {
        goto LABEL_7;
      }

      continue;
    }

    v137[75] = v28;
    v30 = v137[25];
    if (*(v30 + 16) && (v31 = sub_34B30(v28, v4), (v32 & 1) != 0))
    {
      sub_3B948(*(v30 + 56) + *(v137[51] + 72) * v31, v137[48], type metadata accessor for Application);
      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v34 = v137[50];
    v35 = v137[51];
    v36 = v137[48];
    (*(v35 + 56))(v36, v33, 1, v34);
    v1 = *(v35 + 48);
    v137[76] = v1;
    v137[77] = (v35 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if ((v1)(v36, 1, v34))
    {
      sub_14FD4(v137[48], &qword_B7E50, &qword_8A3F0);
      v94 = swift_task_alloc();
      v137[78] = v94;
      *v94 = v137;
      v94[1] = sub_2C474;
      v95 = v137[47];

      return sub_1D58C(v95, v28, v4, v136, (v6 & 1) == 0, (v5 & 1) == 0);
    }

    v37 = v137[50];
    v38 = v137[48];
    v5 = *(v38 + 56);
    v135 = *(v38 + 48);
    sub_14FD4(v38, &qword_B7E50, &qword_8A3F0);
    v7 = v134;
    v2 = sub_26510(v134, v28, v4);
    v6 = v39;
    v40 = (v1)(v39, 1, v37);
    v3 = v136;
    if (!v40)
    {
      v41 = sub_7CFD8(v136);
      if (__OFADD__(v135, v41))
      {
        goto LABEL_88;
      }

      if (__OFADD__(v5, v42))
      {
        while (1)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v1 = sub_33E1C(0, (v1->data + 1), 1, v1);
          *(v4 + v7) = v1;
LABEL_72:
          data = v1->data;
          length = v1->length;
          if (data >= length >> 1)
          {
            v1 = sub_33E1C((length > 1), data + 1, 1, v1);
            *(v4 + v7) = v1;
          }

          v7 = v133;
          v1->data = (data + 1);
          v99 = &v1->isa + 5 * data;
          v99[4] = 7565161;
          v99[5] = 0xE300000000000000;
          v99[6] = v131;
          v99[7] = v5;
          v99[8] = v3;
          v0 = v137;
LABEL_75:
          v5 = v134;
          (v2)();

          v50 = v135;
LABEL_76:
          sub_3CBD0(v0[53], type metadata accessor for Application);
LABEL_77:
          v1 = v0[50];
          v100 = sub_81928();
          v3 = sub_26510(v7, v100, v101);
          v4 = v102;
          if (!v50(v102, 1, v1))
          {
            v103 = v0[42];
            v1 = v0[43];
            v134 = v0[41];
            v135 = v0[50];
            v104 = [v0[31] systemDataDetails];
            sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
            v105 = sub_81838();

            v106 = sub_24E5C(v105);

            v0[28] = v106;
            swift_getKeyPath();
            sub_80908();
            sub_147EC(&qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
            sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
            v0 = v137;
            v107 = sub_819B8();
            v108 = *(v103 + 8);
            v5 = v103 + 8;
            v108(v1, v134);
            v7 = v133;

            *(v4 + *(v135 + 84)) = v107;
          }

          (v3)(v7, 0);
          v2 = v0[31];

          if (([v2 diskCapacity] & 0x8000000000000000) != 0)
          {
LABEL_86:
            __break(1u);
          }

          else if (([v0[31] diskUsed] & 0x8000000000000000) == 0)
          {
            v124 = v0[58];
            v122 = v0[56];
            v123 = v0[57];
            v109 = v0[40];
            v125 = v0[37];
            v111 = v0[35];
            v110 = v0[36];
            v112 = v0[33];
            v113 = v0[34];
            v120 = v0[32];
            v121 = v0[39];
            sub_817C8();

            sub_80998();

            sub_81E58();
            (*(v113 + 16))(v111, v110, v112);
            sub_817D8();
            (*(v113 + 8))(v110, v112);
            v124(v122, 1, 1, v123);
            v114 = v0[25];
            sub_3B948(v109, v121, &type metadata accessor for Volume);
            v115 = v120;

            v116 = sub_81A78();
            v117 = (*(v125 + 80) + 48) & ~*(v125 + 80);
            v118 = swift_allocObject();
            v118[2] = v116;
            v118[3] = &protocol witness table for MainActor;
            v118[4] = v115;
            v118[5] = v114;
            sub_3C81C(v121, v118 + v117, &type metadata accessor for Volume);
            sub_68AE4(0, 0, v122, &unk_88F78, v118);

            sub_3CBD0(v109, &type metadata accessor for Volume);

            v119 = v0[1];

            return v119();
          }

          __break(1u);
LABEL_88:
          __break(1u);
        }
      }

      *(v6 + 48) = v135 + v41;
      *(v6 + 56) = v5 + v42;
      v7 = v134;
    }

    (v2)(v7, 0);

    v7 = v137[70];
    v11 = (v137[69] - 1) & v137[69];
    if (v11)
    {
LABEL_7:
      v2 = v0[67];
      goto LABEL_12;
    }
  }

  v81 = swift_task_alloc();
  v137[73] = v81;
  *v81 = v137;
  v81[1] = sub_2B0DC;
  v82 = v137[49];

  return sub_1BDA8(v82, v3, v136, (v6 & 1) == 0, (v5 & 1) == 0);
}

uint64_t sub_2B0DC()
{

  return _swift_task_switch(sub_2B1F4, 0, 0);
}

unint64_t sub_2B1F4()
{
  v136 = (v1 + 16);
  v139 = (v1 + 80);
  LOBYTE(v4) = v1 + 112;
  v134 = (v1 + 144);
  v5 = *(v1 + 392);
  v6 = (*(*(v1 + 408) + 48))(v5, 1, *(v1 + 400));
  v7 = *(v1 + 576);
  v137 = (v1 + 48);
  if (v6 == 1)
  {

    sub_14FD4(v5, &qword_B7E50, &qword_8A3F0);
  }

  else
  {
    v0 = *(v1 + 432);
    v8 = *(v1 + 440);
    sub_3C81C(v5, v8, type metadata accessor for Application);
    v2 = *v8;
    v3 = v8[1];
    sub_3B948(v8, v0, type metadata accessor for Application);
    v9 = *(v1 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_37A0C(v0, v2, v3, isUniquelyReferenced_nonNull_native);

    sub_3CBD0(v8, type metadata accessor for Application);
    *(v1 + 200) = v9;
  }

  v135 = (v1 + 112);
  v142 = v1;
LABEL_5:
  v11 = *(v1 + 560);
  v12 = (*(v1 + 552) - 1) & *(v1 + 552);
  if (!v12)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v13 = *(v1 + 536);
LABEL_11:
    *(v1 + 560) = v11;
    *(v1 + 552) = v12;
    v140 = (v12 - 1) & v12;
    v15 = (v11 << 9) | (8 * __clz(__rbit64(v12)));
    v16 = *(*(v13 + 48) + v15);
    *(v1 + 568) = v16;
    v17 = *(*(v13 + 56) + v15);
    *(v1 + 576) = v17;
    *(v1 + 208) = v16;
    *(v1 + 216) = v16;
    v18 = v16;
    v20 = v16 + 56;
    v19 = *(v16 + 56);
    v21 = -1 << *(v16 + 32);
    v22 = -v21 < 64 ? ~(-1 << -v21) : -1;
    v23 = v22 & v19;
    v24 = (63 - v21) >> 6;
    swift_bridgeObjectRetain_n();
    v141 = v17;
    v25 = 0;
    while (v23)
    {
LABEL_21:
      v27 = (v18[6] + ((v25 << 10) | (16 * __clz(__rbit64(v23)))));
      v0 = *v27;
      v28 = v27[1];
      v29 = qword_B7888;

      if (v29 != -1)
      {
        swift_once();
      }

      v23 &= v23 - 1;
      v17 = qword_BD078;
      if (*(qword_BD078 + 16))
      {
        v0 = sub_34B30(v0, v28);
        v2 = v30;

        if (v2)
        {
          v31 = *(v17 + 7) + 144 * v0;
          v32 = *(v31 + 120);
          v0 = *(v31 + 128);

          v2 = v18;
          sub_2FEF0(v32);
          v17 = (v142 + 216);
          sub_2FEF0(v0);
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_21;
      }
    }

    v33 = v18;
    v1 = v142;
    v34 = *(v142 + 528);
    v35 = *(v142 + 504);

    LOBYTE(v4) = sub_2FFF4(v34, *(v142 + 208));

    v2 = sub_2FFF4(v35, *(v142 + 216));

    if (*(v33 + 16) >= 2uLL)
    {
      break;
    }

    v0 = sub_2516C(v33);
    v3 = v36;

    *(v142 + 592) = v3;
    if (v3)
    {
      *(v142 + 600) = v0;
      v37 = *(v142 + 200);
      if (*(v37 + 16) && (v38 = sub_34B30(v0, v3), (v39 & 1) != 0))
      {
        sub_3B948(*(v37 + 56) + *(*(v142 + 408) + 72) * v38, *(v142 + 384), type metadata accessor for Application);
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = *(v142 + 400);
      v42 = *(v142 + 408);
      v43 = *(v142 + 384);
      (*(v42 + 56))(v43, v40, 1, v41);
      v44 = *(v42 + 48);
      *(v142 + 608) = v44;
      *(v142 + 616) = (v42 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v44(v43, 1, v41))
      {
        goto LABEL_83;
      }

      v45 = *(v142 + 400);
      v46 = *(v142 + 384);
      v4 = *(v46 + 48);
      v2 = *(v46 + 56);
      sub_14FD4(v46, &qword_B7E50, &qword_8A3F0);
      v47 = sub_26510(v136, v0, v3);
      v49 = v48;
      v0 = v141;
      if (v44(v48, 1, v45))
      {
        goto LABEL_39;
      }

      result = sub_7CFD8(v141);
      if (__OFADD__(v4, result))
      {
        __break(1u);
LABEL_92:
        __break(1u);
        return result;
      }

      if (__OFADD__(v2, v51))
      {
        goto LABEL_92;
      }

      *(v49 + 48) = v4 + result;
      *(v49 + 56) = v2 + v51;
LABEL_39:
      (v47)(v136, 0);

      v1 = v142;
      goto LABEL_5;
    }

    v12 = v140;
    if (!v140)
    {
LABEL_7:
      while (1)
      {
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v13 = *(v1 + 536);
        if (v14 >= (((1 << *(v1 + 640)) + 63) >> 6))
        {
          v0 = *(v1 + 400);
          v52 = *(v1 + 408);

          v53 = sub_81928();
          v55 = sub_26510(v137, v53, v54);
          v24 = v56;
          v141 = *(v52 + 48);
          if (!(v141)(v56, 1, v0))
          {
            v133 = *(v1 + 400);
            v57 = *(v1 + 344);
            v131 = *(v1 + 328);
            v132 = *(v1 + 336);
            v58 = [*(v1 + 248) systemDataDetails];
            sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
            v59 = sub_81838();

            v60 = sub_24E5C(v59);

            *(v1 + 240) = v60;
            swift_getKeyPath();
            sub_80908();
            sub_147EC(&qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
            sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
            v0 = v131;
            v61 = sub_819B8();
            (*(v132 + 8))(v57, v131);

            *(v24 + *(v133 + 84)) = v61;
          }

          (v55)(v137, 0);

          v62 = @"com.apple.fakeapp.System";
          v63 = sub_81928();
          v65 = *(v1 + 200);
          if (*(v65 + 16))
          {
            v66 = sub_34B30(v63, v64);
            v68 = v67;

            if (v68)
            {
              v70 = *(v142 + 416);
              v69 = *(v142 + 424);
              v4 = *(v142 + 336);
              v71 = *(v142 + 344);
              v138 = *(v142 + 328);
              v72 = *(v142 + 248);
              sub_3B948(*(v65 + 56) + *(*(v142 + 408) + 72) * v66, v70, type metadata accessor for Application);
              sub_3C81C(v70, v69, type metadata accessor for Application);
              v73 = [v72 systemDetails];
              sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
              v74 = sub_81838();

              v0 = 0;
              v75 = sub_24E5C(v74);

              *(v142 + 232) = v75;
              swift_getKeyPath();
              sub_80908();
              v3 = sub_147EC(&qword_B8268, &qword_88FA0);
              sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
              sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
              v23 = sub_819B8();
              (*(v4 + 8))(v71, v138);

              v1 = 0;
              v2 = *(v23 + 16);
              v76 = _swiftEmptyArrayStorage;
              LOBYTE(v4) = 48;
              while (1)
              {
                v77 = 40 * v1 + 48;
                do
                {
                  if (v2 == v1)
                  {
                    v24 = *(v142 + 400);
                    v80 = sub_81A38();

                    v81 = sub_81928();
                    v2 = v82;
                    v0 = v135;
                    v17 = sub_26510(v135, v81, v82);
                    v84 = v83;
                    if (!(v141)(v83, 1, v24))
                    {
                      *(v84 + *(*(v142 + 400) + 84)) = v23;
                    }

                    v18 = v139;
                    (v17)(v135, 0);

                    if (v80 < 100000001)
                    {
                      goto LABEL_73;
                    }

                    v87 = *(v142 + 424);
                    v88 = v87[6];
                    v89 = v87[7];
                    v90 = __OFADD__(v88, v89);
                    v91 = v88 + v89;
                    if (v90)
                    {
                      goto LABEL_88;
                    }

                    v18 = (v91 - v80);
                    if (__OFSUB__(v91, v80))
                    {
                      goto LABEL_89;
                    }

                    v0 = v142;
                    v92 = *(v142 + 400);
                    v24 = v87[2];
                    v23 = v87[3];
                    v93 = sub_81928();
                    v95 = v94;

                    v96 = v134;
                    v17 = sub_26510(v134, v93, v95);
                    v2 = v97;
                    if ((v141)(v97, 1, v92))
                    {

                      while (1)
                      {
                        (v17)(v96, 0);

                        v18 = v139;
LABEL_73:
                        v79 = v142;
                        sub_3CBD0(*(v142 + 424), type metadata accessor for Application);
LABEL_74:
                        v102 = *(v79 + 400);
                        v103 = sub_81928();
                        v23 = v104;
                        v2 = sub_26510(v18, v103, v104);
                        v62 = v105;
                        if (!(v141)(v105, 1, v102))
                        {
                          v107 = *(v79 + 336);
                          v106 = *(v79 + 344);
                          v141 = *(v79 + 328);
                          v142 = *(v79 + 400);
                          v108 = [*(v79 + 248) systemDataDetails];
                          sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
                          v109 = sub_81838();

                          v0 = sub_24E5C(v109);

                          *(v79 + 224) = v0;
                          swift_getKeyPath();
                          sub_80908();
                          sub_147EC(&qword_B8268, &qword_88FA0);
                          v24 = sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
                          sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
                          v110 = sub_819B8();
                          (*(v107 + 8))(v106, v141);
                          v18 = v139;

                          *&v62[*(v142 + 84)] = v110;
                        }

                        (v2)(v18, 0);
                        v17 = *(v79 + 248);

                        v111 = [v17 diskCapacity];
                        if ((v111 & 0x8000000000000000) != 0)
                        {
                          __break(1u);
                        }

                        else
                        {
                          v18 = v111;
                          if (([*(v79 + 248) diskUsed] & 0x8000000000000000) == 0)
                          {
                            v129 = *(v79 + 464);
                            v127 = *(v79 + 448);
                            v128 = *(v79 + 456);
                            v112 = *(v79 + 320);
                            v130 = *(v79 + 296);
                            v114 = *(v79 + 280);
                            v113 = *(v79 + 288);
                            v115 = *(v79 + 264);
                            v116 = *(v79 + 272);
                            v125 = *(v79 + 256);
                            v126 = *(v79 + 312);
                            sub_817C8();

                            sub_80998();

                            sub_81E58();
                            (*(v116 + 16))(v114, v113, v115);
                            sub_817D8();
                            (*(v116 + 8))(v113, v115);
                            v129(v127, 1, 1, v128);
                            v117 = *(v79 + 200);
                            sub_3B948(v112, v126, &type metadata accessor for Volume);
                            v118 = v125;

                            v119 = sub_81A78();
                            v120 = (*(v130 + 80) + 48) & ~*(v130 + 80);
                            v121 = swift_allocObject();
                            v121[2] = v119;
                            v121[3] = &protocol witness table for MainActor;
                            v121[4] = v118;
                            v121[5] = v117;
                            sub_3C81C(v126, v121 + v120, &type metadata accessor for Volume);
                            sub_68AE4(0, 0, v127, &unk_88F78, v121);

                            sub_3CBD0(v112, &type metadata accessor for Volume);

                            v122 = *(v79 + 8);

                            return v122();
                          }
                        }

                        __break(1u);
LABEL_88:
                        __break(1u);
LABEL_89:
                        __break(1u);
LABEL_90:
                        v62 = sub_33E1C(0, *(v62 + 2) + 1, 1, v62);
                        *(v2 + v0) = v62;
LABEL_69:
                        v100 = *(v62 + 2);
                        v99 = *(v62 + 3);
                        if (v100 >= v99 >> 1)
                        {
                          v62 = sub_33E1C((v99 > 1), v100 + 1, 1, v62);
                          *(v2 + v0) = v62;
                        }

                        *(v62 + 2) = v100 + 1;
                        v101 = &v62[40 * v100];
                        *(v101 + 4) = 7565161;
                        *(v101 + 5) = 0xE300000000000000;
                        *(v101 + 6) = v18;
                        *(v101 + 7) = v24;
                        *(v101 + 8) = v23;
                        v96 = v134;
                      }
                    }

LABEL_68:
                    v0 = *(*(v0 + 400) + 84);
                    v62 = *(v2 + v0);
                    v98 = swift_isUniquelyReferenced_nonNull_native();
                    *(v2 + v0) = v62;
                    if (v98)
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_90;
                  }

                  if (v1 >= *(v23 + 16))
                  {
                    goto LABEL_82;
                  }

                  v3 = *(v23 + v77);
                  v77 += 40;
                  ++v1;
                }

                while (v3 == 0x8000000000000000);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v76 = sub_33F3C(0, *(v76 + 2) + 1, 1, v76);
                }

                v0 = *(v76 + 2);
                v78 = *(v76 + 3);
                if (v0 >= v78 >> 1)
                {
                  v76 = sub_33F3C((v78 > 1), v0 + 1, 1, v76);
                }

                *(v76 + 2) = v0 + 1;
                *&v76[8 * v0 + 32] = v3;
              }
            }
          }

          else
          {
          }

          v79 = v142;
          v18 = v139;
          goto LABEL_74;
        }

        v12 = *(v13 + 8 * v14 + 64);
        ++v11;
        if (v12)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      sub_14FD4(*(v1 + 384), &qword_B7E50, &qword_8A3F0);
      v123 = swift_task_alloc();
      *(v1 + 624) = v123;
      *v123 = v1;
      v123[1] = sub_2C474;
      v124 = *(v1 + 376);

      return sub_1D58C(v124, v0, v3, v141, (v4 & 1) == 0, (v2 & 1) == 0);
    }
  }

  v85 = swift_task_alloc();
  *(v142 + 584) = v85;
  *v85 = v142;
  v85[1] = sub_2B0DC;
  v86 = *(v142 + 392);

  return sub_1BDA8(v86, v33, v141, (v4 & 1) == 0, (v2 & 1) == 0);
}

uint64_t sub_2C474()
{

  return _swift_task_switch(sub_2C570, 0, 0);
}

uint64_t sub_2C570()
{
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 400);
  v5 = *(v0 + 376);
  if (!v3(v5, 1, v4))
  {
    *(v0 + 632) = sub_81A78();
    v13 = sub_81A58();
    v15 = v14;
    v16 = sub_2D8E8;
    v17 = v13;
    v18 = v15;

    return _swift_task_switch(v16, v17, v18);
  }

  v6 = v0 + 16;
  v152 = (v0 + 48);
  v153 = v0 + 80;
  v151 = (v0 + 112);
  v7 = *(v0 + 368);
  v149 = (v0 + 144);
  sub_14F6C(v5, v7, &qword_B7E50, &qword_8A3F0);
  v8 = v3(v7, 1, v4);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 576);
  if (v8 == 1)
  {
    v12 = *(v0 + 360);
    v2 = &qword_B7E50;
    v1 = &qword_8A3F0;
    sub_14FD4(*(v0 + 368), &qword_B7E50, &qword_8A3F0);
    sub_355EC(v9, v10, v12);

    sub_14FD4(v12, &qword_B7E50, &qword_8A3F0);
  }

  else
  {
    v19 = *(v0 + 432);
    sub_3C81C(*(v0 + 368), v19, type metadata accessor for Application);
    v20 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_37A0C(v19, v9, v10, isUniquelyReferenced_nonNull_native);

    *(v0 + 200) = v20;
  }

  sub_14FD4(*(v0 + 376), &qword_B7E50, &qword_8A3F0);
  v158 = v0;
  v150 = (v0 + 16);
  while (1)
  {
    v22 = *(v0 + 560);
    v23 = (*(v0 + 552) - 1) & *(v0 + 552);
    if (!v23)
    {
      goto LABEL_11;
    }

LABEL_10:
    v24 = *(v0 + 536);
LABEL_15:
    *(v0 + 560) = v22;
    *(v0 + 552) = v23;
    v154 = (v23 - 1) & v23;
    v26 = (v22 << 9) | (8 * __clz(__rbit64(v23)));
    v27 = *(*(v24 + 48) + v26);
    *(v0 + 568) = v27;
    v28 = *(*(v24 + 56) + v26);
    *(v0 + 576) = v28;
    *(v0 + 208) = v27;
    *(v0 + 216) = v27;
    v0 = v27;
    v30 = v27 + 56;
    v29 = *(v27 + 56);
    v31 = -1 << *(v27 + 32);
    v32 = -v31 < 64 ? ~(-1 << -v31) : -1;
    v33 = v32 & v29;
    v34 = (63 - v31) >> 6;
    swift_bridgeObjectRetain_n();
    v157 = v28;
    v35 = 0;
LABEL_20:
    if (v33)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_71;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
LABEL_25:
        v37 = (*(v0 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v33)))));
        v38 = *v37;
        v10 = v37[1];
        v39 = qword_B7888;

        if (v39 != -1)
        {
          swift_once();
        }

        v33 &= v33 - 1;
        v28 = qword_BD078;
        if (*(qword_BD078 + 16))
        {
          v40 = sub_34B30(v38, v10);
          v2 = v41;

          if (v2)
          {
            v42 = *(v28 + 7) + 144 * v40;
            v10 = *(v42 + 120);
            v43 = *(v42 + 128);

            v2 = v0;
            sub_2FEF0(v10);
            v28 = (v158 + 216);
            sub_2FEF0(v43);
          }
        }

        else
        {
        }

        goto LABEL_20;
      }
    }

    v44 = v0;
    v0 = v158;
    v45 = *(v158 + 528);
    v10 = *(v158 + 504);

    LOBYTE(v9) = sub_2FFF4(v45, *(v158 + 208));

    LOBYTE(v1) = sub_2FFF4(v10, *(v158 + 216));

    if (*(v44 + 16) >= 2uLL)
    {
      break;
    }

    v6 = sub_2516C(v44);
    v2 = v46;

    *(v158 + 592) = v2;
    if (!v2)
    {

      v23 = v154;
      if (v154)
      {
        goto LABEL_10;
      }

LABEL_11:
      while (2)
      {
        v25 = v22 + 1;
        if (!__OFADD__(v22, 1))
        {
          v24 = *(v0 + 536);
          if (v25 < (((1 << *(v0 + 640)) + 63) >> 6))
          {
            v23 = *(v24 + 8 * v25 + 64);
            ++v22;
            if (!v23)
            {
              continue;
            }

            v22 = v25;
            goto LABEL_15;
          }

          v59 = *(v0 + 400);
          v60 = *(v0 + 408);

          v61 = sub_81928();
          v62 = v152;
          v64 = sub_26510(v152, v61, v63);
          v66 = v65;
          v67 = *(v60 + 48);
          if (!v67(v65, 1, v59))
          {
            v148 = *(v0 + 400);
            v68 = *(v158 + 344);
            v147 = *(v158 + 336);
            v69 = *(v158 + 328);
            v70 = [*(v158 + 248) systemDataDetails];
            sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
            v71 = sub_81838();

            v150 = v67;
            v72 = sub_24E5C(v71);

            *(v158 + 240) = v72;
            swift_getKeyPath();
            sub_80908();
            sub_147EC(&qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
            sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
            v62 = v152;
            v73 = v69;
            v74 = sub_819B8();
            v0 = v158;
            (*(v147 + 8))(v68, v73);
            v67 = v150;

            *(v66 + *(v148 + 84)) = v74;
          }

          (v64)(v62, 0);

          v22 = @"com.apple.fakeapp.System";
          v75 = sub_81928();
          v77 = *(v0 + 200);
          v9 = v153;
          if (!*(v77 + 16))
          {

            goto LABEL_77;
          }

          v78 = sub_34B30(v75, v76);
          v80 = v79;

          if ((v80 & 1) == 0)
          {
            goto LABEL_77;
          }

          v150 = v67;
          v1 = *(v0 + 416);
          v81 = *(v0 + 424);
          v83 = *(v0 + 336);
          v82 = *(v0 + 344);
          v152 = *(v0 + 328);
          v84 = *(v0 + 248);
          sub_3B948(*(v77 + 56) + *(*(v0 + 408) + 72) * v78, v1, type metadata accessor for Application);
          sub_3C81C(v1, v81, type metadata accessor for Application);
          v85 = [v84 systemDetails];
          sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
          v86 = sub_81838();

          v87 = sub_24E5C(v86);
          v157 = 0;

          *(v0 + 232) = v87;
          swift_getKeyPath();
          sub_80908();
          LOBYTE(v1) = sub_147EC(&qword_B8268, &qword_88FA0);
          sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
          sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
          v2 = sub_819B8();
          (*(v83 + 8))(v82, v152);

          v0 = 0;
          v88 = *(v2 + 16);
          v89 = _swiftEmptyArrayStorage;
          v6 = 48;
LABEL_49:
          v90 = 40 * v0 + 48;
          v9 = v153;
          while (v88 != v0)
          {
            if (v0 >= *(v2 + 16))
            {
              goto LABEL_85;
            }

            v1 = *(v2 + v90);
            v90 += 40;
            ++v0;
            if (v1 != 0x8000000000000000)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v89 = sub_33F3C(0, *(v89 + 2) + 1, 1, v89);
              }

              v92 = *(v89 + 2);
              v91 = *(v89 + 3);
              if (v92 >= v91 >> 1)
              {
                v89 = sub_33F3C((v91 > 1), v92 + 1, 1, v89);
              }

              *(v89 + 2) = v92 + 1;
              *&v89[8 * v92 + 32] = v1;
              goto LABEL_49;
            }
          }

          v0 = v158;
          v93 = *(v158 + 400);
          v94 = sub_81A38();

          v95 = sub_81928();
          v97 = v96;
          v28 = sub_26510(v151, v95, v96);
          v99 = v98;
          if (!v150(v98, 1, v93))
          {
            *(v99 + *(*(v158 + 400) + 84)) = v2;
          }

          v28();

          v67 = v150;
          if (v94 < 100000001)
          {
            goto LABEL_76;
          }

          v103 = *(v158 + 424);
          v104 = v103[6];
          v105 = v103[7];
          v106 = __OFADD__(v104, v105);
          v107 = v104 + v105;
          if (v106)
          {
            goto LABEL_91;
          }

          v152 = (v107 - v94);
          if (__OFSUB__(v107, v94))
          {
            goto LABEL_92;
          }

          v108 = *(v158 + 400);
          v10 = v103[2];
          v2 = v103[3];
          v109 = sub_81928();
          v111 = v110;

          v28 = sub_26510(v149, v109, v111);
          v22 = v112;
          if (v150(v112, 1, v108))
          {

            while (1)
            {
              v28();

LABEL_76:
              sub_3CBD0(*(v0 + 424), type metadata accessor for Application);
LABEL_77:
              v117 = *(v0 + 400);
              v118 = sub_81928();
              v22 = v119;
              v2 = sub_26510(v9, v118, v119);
              v97 = v120;
              if (!v67(v120, 1, v117))
              {
                v156 = *(v0 + 400);
                v122 = *(v0 + 336);
                v121 = *(v0 + 344);
                v152 = *(v0 + 328);
                v123 = [*(v0 + 248) systemDataDetails];
                sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
                v124 = sub_81838();

                v125 = sub_24E5C(v124);

                *(v0 + 224) = v125;
                swift_getKeyPath();
                sub_80908();
                sub_147EC(&qword_B8268, &qword_88FA0);
                sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
                sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
                v0 = v158;
                v126 = sub_819B8();
                v127 = *(v122 + 8);
                v67 = (v122 + 8);
                v127(v121, v152);
                v9 = v153;

                *&v97[*(v156 + 84)] = v126;
              }

              (v2)(v9, 0);
              v28 = *(v0 + 248);

              if (([v28 diskCapacity] & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (([*(v0 + 248) diskUsed] & 0x8000000000000000) == 0)
              {
                v145 = *(v0 + 464);
                v143 = *(v0 + 448);
                v144 = *(v0 + 456);
                v128 = *(v0 + 320);
                v146 = *(v0 + 296);
                v130 = *(v0 + 280);
                v129 = *(v0 + 288);
                v131 = *(v0 + 264);
                v132 = *(v0 + 272);
                v141 = *(v0 + 256);
                v142 = *(v0 + 312);
                sub_817C8();

                sub_80998();

                sub_81E58();
                (*(v132 + 16))(v130, v129, v131);
                sub_817D8();
                (*(v132 + 8))(v129, v131);
                v145(v143, 1, 1, v144);
                v133 = *(v0 + 200);
                sub_3B948(v128, v142, &type metadata accessor for Volume);
                v134 = v141;

                v135 = sub_81A78();
                v136 = (*(v146 + 80) + 48) & ~*(v146 + 80);
                v137 = swift_allocObject();
                v137[2] = v135;
                v137[3] = &protocol witness table for MainActor;
                v137[4] = v134;
                v137[5] = v133;
                sub_3C81C(v142, v137 + v136, &type metadata accessor for Volume);
                sub_68AE4(0, 0, v143, &unk_88F78, v137);

                sub_3CBD0(v128, &type metadata accessor for Volume);

                v138 = *(v0 + 8);

                return v138();
              }

              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              v97 = sub_33E1C(0, *(v97 + 2) + 1, 1, v97);
              *(v22 + v9) = v97;
LABEL_72:
              v115 = *(v97 + 2);
              v114 = *(v97 + 3);
              if (v115 >= v114 >> 1)
              {
                v97 = sub_33E1C((v114 > 1), v115 + 1, 1, v97);
                *(v22 + v9) = v97;
              }

              v9 = v153;
              *(v97 + 2) = v115 + 1;
              v116 = &v97[40 * v115];
              *(v116 + 4) = 7565161;
              *(v116 + 5) = 0xE300000000000000;
              *(v116 + 6) = v152;
              *(v116 + 7) = v67;
              *(v116 + 8) = v2;
              v0 = v158;
              v67 = v150;
            }
          }

LABEL_71:
          v67 = v10;
          v9 = *(*(v0 + 400) + 84);
          v97 = *(v22 + v9);
          v113 = swift_isUniquelyReferenced_nonNull_native();
          *(v22 + v9) = v97;
          if (v113)
          {
            goto LABEL_72;
          }

          goto LABEL_93;
        }

        break;
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      sub_14FD4(*(v0 + 384), &qword_B7E50, &qword_8A3F0);
      v139 = swift_task_alloc();
      *(v0 + 624) = v139;
      *v139 = v0;
      v139[1] = sub_2C474;
      v140 = *(v0 + 376);

      return sub_1D58C(v140, v6, v2, v157, (v9 & 1) == 0, (v1 & 1) == 0);
    }

    *(v158 + 600) = v6;
    v47 = *(v158 + 200);
    if (*(v47 + 16) && (v48 = sub_34B30(v6, v2), (v49 & 1) != 0))
    {
      sub_3B948(*(v47 + 56) + *(*(v158 + 408) + 72) * v48, *(v158 + 384), type metadata accessor for Application);
      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v51 = *(v158 + 400);
    v52 = *(v158 + 408);
    v53 = *(v158 + 384);
    (*(v52 + 56))(v53, v50, 1, v51);
    v54 = *(v52 + 48);
    *(v158 + 608) = v54;
    *(v158 + 616) = (v52 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v54(v53, 1, v51))
    {
      goto LABEL_86;
    }

    v9 = *(v158 + 400);
    v55 = *(v158 + 384);
    v1 = *(v55 + 56);
    v155 = *(v55 + 48);
    sub_14FD4(v55, &qword_B7E50, &qword_8A3F0);
    v56 = sub_26510(v150, v6, v2);
    v10 = v57;
    v58 = v54(v57, 1, v9);
    LOBYTE(v9) = v157;
    if (!v58)
    {
      v16 = sub_7CFD8(v157);
      if (__OFADD__(v155, v16))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        return _swift_task_switch(v16, v17, v18);
      }

      if (__OFADD__(v1, v17))
      {
        goto LABEL_95;
      }

      *(v10 + 48) = v155 + v16;
      *(v10 + 56) = v1 + v17;
    }

    (v56)(v150, 0);
  }

  v100 = swift_task_alloc();
  *(v158 + 584) = v100;
  *v100 = v158;
  v100[1] = sub_2B0DC;
  v101 = *(v158 + 392);

  return sub_1BDA8(v101, v44, v157, (v9 & 1) == 0, (v1 & 1) == 0);
}

uint64_t sub_2D8E8()
{
  v1 = v0[68];
  v2 = v0[32];

  swift_beginAccess();
  v3 = *(v2 + v1);
  if (*(v3 + 16))
  {
    v4 = sub_34B30(v0[75], v0[74]);
    v5 = v0[44];
    if (v6)
    {
      v7 = v4;
      v8 = *(v3 + 56);
      v9 = sub_80A38();
      v10 = *(v9 - 8);
      (*(v10 + 16))(v5, v8 + *(v10 + 72) * v7, v9);
      (*(v10 + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_80A38();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }
  }

  else
  {
    v11 = v0[44];
    v12 = sub_80A38();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  swift_endAccess();

  return _swift_task_switch(sub_2DAC4, 0, 0);
}

unint64_t sub_2DAC4()
{
  v145 = (v0 + 16);
  v147 = (v0 + 48);
  v148 = v0 + 80;
  v146 = (v0 + 112);
  v144 = (v0 + 144);
  sub_3C9DC(*(v0 + 352), *(v0 + 376) + *(*(v0 + 400) + 72), &unk_B8230, qword_88A50);
  v4 = *(v0 + 608);
  v5 = *(v0 + 400);
  v6 = *(v0 + 368);
  sub_14F6C(*(v0 + 376), v6, &qword_B7E50, &qword_8A3F0);
  v7 = v4(v6, 1, v5);
  v8 = *(v0 + 600);
  v9 = *(v0 + 592);
  v10 = *(v0 + 576);
  if (v7 == 1)
  {
    v11 = *(v0 + 360);
    v1 = &qword_B7E50;
    v2 = &qword_8A3F0;
    sub_14FD4(*(v0 + 368), &qword_B7E50, &qword_8A3F0);
    sub_355EC(v8, v9, v11);

    sub_14FD4(v11, &qword_B7E50, &qword_8A3F0);
  }

  else
  {
    v12 = *(v0 + 432);
    sub_3C81C(*(v0 + 368), v12, type metadata accessor for Application);
    v13 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_37A0C(v12, v8, v9, isUniquelyReferenced_nonNull_native);

    *(v0 + 200) = v13;
  }

  sub_14FD4(*(v0 + 376), &qword_B7E50, &qword_8A3F0);
  v153 = v0;
  while (1)
  {
    v15 = *(v0 + 560);
    v16 = (*(v0 + 552) - 1) & *(v0 + 552);
    if (!v16)
    {
      goto LABEL_7;
    }

LABEL_6:
    v17 = *(v0 + 536);
LABEL_11:
    *(v0 + 560) = v15;
    *(v0 + 552) = v16;
    v149 = (v16 - 1) & v16;
    v19 = (v15 << 9) | (8 * __clz(__rbit64(v16)));
    v20 = *(*(v17 + 48) + v19);
    *(v0 + 568) = v20;
    v21 = *(*(v17 + 56) + v19);
    *(v0 + 576) = v21;
    *(v0 + 208) = v20;
    *(v0 + 216) = v20;
    v0 = v20;
    v23 = v20 + 56;
    v22 = *(v20 + 56);
    v24 = -1 << *(v20 + 32);
    v25 = -v24 < 64 ? ~(-1 << -v24) : -1;
    v26 = v25 & v22;
    v27 = (63 - v24) >> 6;
    swift_bridgeObjectRetain_n();
    v152 = v21;
    v28 = 0;
LABEL_16:
    if (v26)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_67;
      }

      if (v29 >= v27)
      {
        break;
      }

      v26 = *(v23 + 8 * v29);
      ++v28;
      if (v26)
      {
        v28 = v29;
LABEL_21:
        v30 = (*(v0 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v26)))));
        v31 = *v30;
        v9 = v30[1];
        v32 = qword_B7888;

        if (v32 != -1)
        {
          swift_once();
        }

        v26 &= v26 - 1;
        v21 = qword_BD078;
        if (*(qword_BD078 + 16))
        {
          v33 = sub_34B30(v31, v9);
          v1 = v34;

          if (v1)
          {
            v35 = *(v21 + 7) + 144 * v33;
            v9 = *(v35 + 120);
            v36 = *(v35 + 128);

            v1 = v0;
            sub_2FEF0(v9);
            v21 = (v153 + 216);
            sub_2FEF0(v36);
          }
        }

        else
        {
        }

        goto LABEL_16;
      }
    }

    v37 = v0;
    v0 = v153;
    v38 = *(v153 + 528);
    v9 = *(v153 + 504);

    LOBYTE(v8) = sub_2FFF4(v38, *(v153 + 208));

    LOBYTE(v2) = sub_2FFF4(v9, *(v153 + 216));

    if (*(v37 + 16) >= 2uLL)
    {
      break;
    }

    v3 = sub_2516C(v37);
    v1 = v39;

    *(v153 + 592) = v1;
    if (!v1)
    {

      v16 = v149;
      if (v149)
      {
        goto LABEL_6;
      }

LABEL_7:
      while (2)
      {
        v18 = v15 + 1;
        if (!__OFADD__(v15, 1))
        {
          v17 = *(v0 + 536);
          if (v18 < (((1 << *(v0 + 640)) + 63) >> 6))
          {
            v16 = *(v17 + 8 * v18 + 64);
            ++v15;
            if (!v16)
            {
              continue;
            }

            v15 = v18;
            goto LABEL_11;
          }

          v55 = *(v0 + 400);
          v56 = *(v0 + 408);

          v57 = sub_81928();
          v58 = v147;
          v60 = sub_26510(v147, v57, v59);
          v62 = v61;
          v63 = *(v56 + 48);
          if (!v63(v61, 1, v55))
          {
            v143 = *(v0 + 400);
            v64 = *(v153 + 344);
            v142 = *(v153 + 336);
            v65 = *(v153 + 328);
            v66 = [*(v153 + 248) systemDataDetails];
            sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
            v67 = sub_81838();

            v145 = v63;
            v68 = sub_24E5C(v67);

            *(v153 + 240) = v68;
            swift_getKeyPath();
            sub_80908();
            sub_147EC(&qword_B8268, &qword_88FA0);
            sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
            sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
            v58 = v147;
            v69 = v65;
            v70 = sub_819B8();
            v0 = v153;
            (*(v142 + 8))(v64, v69);
            v63 = v145;

            *(v62 + *(v143 + 84)) = v70;
          }

          (v60)(v58, 0);

          v15 = @"com.apple.fakeapp.System";
          v71 = sub_81928();
          v73 = *(v0 + 200);
          v8 = v148;
          if (!*(v73 + 16))
          {

            goto LABEL_73;
          }

          v74 = sub_34B30(v71, v72);
          v76 = v75;

          if ((v76 & 1) == 0)
          {
            goto LABEL_73;
          }

          v145 = v63;
          v2 = *(v0 + 416);
          v77 = *(v0 + 424);
          v79 = *(v0 + 336);
          v78 = *(v0 + 344);
          v147 = *(v0 + 328);
          v80 = *(v0 + 248);
          sub_3B948(*(v73 + 56) + *(*(v0 + 408) + 72) * v74, v2, type metadata accessor for Application);
          sub_3C81C(v2, v77, type metadata accessor for Application);
          v81 = [v80 systemDetails];
          sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
          v82 = sub_81838();

          v83 = sub_24E5C(v82);
          v152 = 0;

          *(v0 + 232) = v83;
          swift_getKeyPath();
          sub_80908();
          LOBYTE(v2) = sub_147EC(&qword_B8268, &qword_88FA0);
          sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
          sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
          v1 = sub_819B8();
          (*(v79 + 8))(v78, v147);

          v0 = 0;
          v84 = *(v1 + 16);
          v85 = _swiftEmptyArrayStorage;
          v3 = 48;
LABEL_45:
          v86 = 40 * v0 + 48;
          v8 = v148;
          while (v84 != v0)
          {
            if (v0 >= *(v1 + 16))
            {
              goto LABEL_81;
            }

            v2 = *(v1 + v86);
            v86 += 40;
            ++v0;
            if (v2 != 0x8000000000000000)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v85 = sub_33F3C(0, *(v85 + 2) + 1, 1, v85);
              }

              v88 = *(v85 + 2);
              v87 = *(v85 + 3);
              if (v88 >= v87 >> 1)
              {
                v85 = sub_33F3C((v87 > 1), v88 + 1, 1, v85);
              }

              *(v85 + 2) = v88 + 1;
              *&v85[8 * v88 + 32] = v2;
              goto LABEL_45;
            }
          }

          v0 = v153;
          v89 = *(v153 + 400);
          v90 = sub_81A38();

          v91 = sub_81928();
          v93 = v92;
          v21 = sub_26510(v146, v91, v92);
          v95 = v94;
          if (!v145(v94, 1, v89))
          {
            *(v95 + *(*(v153 + 400) + 84)) = v1;
          }

          v21();

          v63 = v145;
          if (v90 < 100000001)
          {
            goto LABEL_72;
          }

          v98 = *(v153 + 424);
          v99 = v98[6];
          v100 = v98[7];
          v101 = __OFADD__(v99, v100);
          v102 = v99 + v100;
          if (v101)
          {
            goto LABEL_87;
          }

          v147 = (v102 - v90);
          if (__OFSUB__(v102, v90))
          {
            goto LABEL_88;
          }

          v103 = *(v153 + 400);
          v9 = v98[2];
          v1 = v98[3];
          v104 = sub_81928();
          v106 = v105;

          v21 = sub_26510(v144, v104, v106);
          v15 = v107;
          if (v145(v107, 1, v103))
          {

            while (1)
            {
              v21();

LABEL_72:
              sub_3CBD0(*(v0 + 424), type metadata accessor for Application);
LABEL_73:
              v112 = *(v0 + 400);
              v113 = sub_81928();
              v15 = v114;
              v1 = sub_26510(v8, v113, v114);
              v93 = v115;
              if (!v63(v115, 1, v112))
              {
                v151 = *(v0 + 400);
                v117 = *(v0 + 336);
                v116 = *(v0 + 344);
                v147 = *(v0 + 328);
                v118 = [*(v0 + 248) systemDataDetails];
                sub_1A7F4(0, &qword_B8260, NSNumber_ptr);
                v119 = sub_81838();

                v120 = sub_24E5C(v119);

                *(v0 + 224) = v120;
                swift_getKeyPath();
                sub_80908();
                sub_147EC(&qword_B8268, &qword_88FA0);
                sub_14F24(&qword_B8270, &qword_B8268, &qword_88FA0, &protocol conformance descriptor for [A]);
                sub_14F24(&qword_B8278, &qword_B8228, &qword_88F48, &protocol conformance descriptor for SortDescriptor<A>);
                v0 = v153;
                v121 = sub_819B8();
                v122 = *(v117 + 8);
                v63 = (v117 + 8);
                v122(v116, v147);
                v8 = v148;

                *&v93[*(v151 + 84)] = v121;
              }

              (v1)(v8, 0);
              v21 = *(v0 + 248);

              if (([v21 diskCapacity] & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (([*(v0 + 248) diskUsed] & 0x8000000000000000) == 0)
              {
                v140 = *(v0 + 464);
                v138 = *(v0 + 448);
                v139 = *(v0 + 456);
                v123 = *(v0 + 320);
                v141 = *(v0 + 296);
                v125 = *(v0 + 280);
                v124 = *(v0 + 288);
                v126 = *(v0 + 264);
                v127 = *(v0 + 272);
                v136 = *(v0 + 256);
                v137 = *(v0 + 312);
                sub_817C8();

                sub_80998();

                sub_81E58();
                (*(v127 + 16))(v125, v124, v126);
                sub_817D8();
                (*(v127 + 8))(v124, v126);
                v140(v138, 1, 1, v139);
                v128 = *(v0 + 200);
                sub_3B948(v123, v137, &type metadata accessor for Volume);
                v129 = v136;

                v130 = sub_81A78();
                v131 = (*(v141 + 80) + 48) & ~*(v141 + 80);
                v132 = swift_allocObject();
                v132[2] = v130;
                v132[3] = &protocol witness table for MainActor;
                v132[4] = v129;
                v132[5] = v128;
                sub_3C81C(v137, v132 + v131, &type metadata accessor for Volume);
                sub_68AE4(0, 0, v138, &unk_88F78, v132);

                sub_3CBD0(v123, &type metadata accessor for Volume);

                v133 = *(v0 + 8);

                return v133();
              }

              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              v93 = sub_33E1C(0, *(v93 + 2) + 1, 1, v93);
              *(v15 + v8) = v93;
LABEL_68:
              v110 = *(v93 + 2);
              v109 = *(v93 + 3);
              if (v110 >= v109 >> 1)
              {
                v93 = sub_33E1C((v109 > 1), v110 + 1, 1, v93);
                *(v15 + v8) = v93;
              }

              v8 = v148;
              *(v93 + 2) = v110 + 1;
              v111 = &v93[40 * v110];
              *(v111 + 4) = 7565161;
              *(v111 + 5) = 0xE300000000000000;
              *(v111 + 6) = v147;
              *(v111 + 7) = v63;
              *(v111 + 8) = v1;
              v0 = v153;
              v63 = v145;
            }
          }

LABEL_67:
          v63 = v9;
          v8 = *(*(v0 + 400) + 84);
          v93 = *(v15 + v8);
          v108 = swift_isUniquelyReferenced_nonNull_native();
          *(v15 + v8) = v93;
          if (v108)
          {
            goto LABEL_68;
          }

          goto LABEL_89;
        }

        break;
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      sub_14FD4(*(v0 + 384), &qword_B7E50, &qword_8A3F0);
      v134 = swift_task_alloc();
      *(v0 + 624) = v134;
      *v134 = v0;
      v134[1] = sub_2C474;
      v135 = *(v0 + 376);

      return sub_1D58C(v135, v3, v1, v152, (v8 & 1) == 0, (v2 & 1) == 0);
    }

    *(v153 + 600) = v3;
    v40 = *(v153 + 200);
    if (*(v40 + 16) && (v41 = sub_34B30(v3, v1), (v42 & 1) != 0))
    {
      sub_3B948(*(v40 + 56) + *(*(v153 + 408) + 72) * v41, *(v153 + 384), type metadata accessor for Application);
      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = *(v153 + 400);
    v45 = *(v153 + 408);
    v46 = *(v153 + 384);
    (*(v45 + 56))(v46, v43, 1, v44);
    v47 = *(v45 + 48);
    *(v153 + 608) = v47;
    *(v153 + 616) = (v45 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v47(v46, 1, v44))
    {
      goto LABEL_82;
    }

    v8 = *(v153 + 400);
    v48 = *(v153 + 384);
    v2 = *(v48 + 56);
    v150 = *(v48 + 48);
    sub_14FD4(v48, &qword_B7E50, &qword_8A3F0);
    v49 = v145;
    v50 = sub_26510(v145, v3, v1);
    v9 = v51;
    v52 = v47(v51, 1, v8);
    LOBYTE(v8) = v152;
    if (!v52)
    {
      result = sub_7CFD8(v152);
      if (__OFADD__(v150, result))
      {
        __break(1u);
LABEL_91:
        __break(1u);
        return result;
      }

      if (__OFADD__(v2, v54))
      {
        goto LABEL_91;
      }

      *(v9 + 48) = v150 + result;
      *(v9 + 56) = v2 + v54;
      v49 = v145;
    }

    (v50)(v49, 0);
  }

  v96 = swift_task_alloc();
  *(v153 + 584) = v96;
  *v96 = v153;
  v96[1] = sub_2B0DC;
  v97 = *(v153 + 392);

  return sub_1BDA8(v97, v37, v152, (v8 & 1) == 0, (v2 & 1) == 0);
}

uint64_t sub_2EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_81A88();
  *(v4 + 64) = sub_81A78();
  v6 = sub_81A58();

  return _swift_task_switch(sub_2EE70, v6, v5);
}

uint64_t sub_2EE70()
{
  v1 = v0[7];

  v2 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizer;
  [*(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizer) stopObserving];
  v0[5] = &type metadata for StorageManagementFeature;
  v0[6] = sub_3C0A0();
  v3 = sub_80AB8();
  sub_20FD0(v0 + 2);
  v4 = SAAppSizer_ptr;
  if ((v3 & 1) == 0)
  {
    v4 = &off_A9208;
  }

  v5 = [objc_allocWithZone(*v4) init];
  v6 = *(v1 + v2);
  *(v1 + v2) = v5;

  sub_28F58();
  v7 = v0[1];

  return v7();
}

uint64_t sub_2EF54(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_2EFD0()
{
  v1 = [*&v0[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_datesStreams] publisher];
  v14 = sub_2F234;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_2F28C;
  v13 = &unk_AB798;
  v2 = _Block_copy(&v10);
  v3 = [v1 filterWithIsIncluded:v2];
  _Block_release(v2);

  v14 = nullsub_1;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_3CD30;
  v13 = &unk_AB7C0;
  v4 = _Block_copy(&v10);
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v14 = sub_3BEDC;
  v15 = v5;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_3CD30;
  v13 = &unk_AB810;
  v6 = _Block_copy(&v10);
  v7 = v0;

  v8 = [v3 sinkWithCompletion:v4 receiveInput:v6];
  _Block_release(v6);
  _Block_release(v4);

  return sub_2F5DC();
}

id sub_2F234(void *a1)
{
  v1 = [a1 eventBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 starting];

  return v3;
}

uint64_t sub_2F28C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_2F2E4(void *a1, uint64_t a2)
{
  v3 = sub_147EC(&unk_B8230, qword_88A50);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_80A38();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = [a1 eventBody];
  if (v13)
  {
    v22 = v13;
    v14 = [v13 absoluteTimestamp];
    if (v14)
    {
      v15 = v14;
      sub_80A08();

      (*(v7 + 32))(v12, v10, v6);
      v16 = [v22 bundleID];
      if (v16)
      {
        v17 = v16;
        v18 = sub_81928();
        v20 = v19;

        (*(v7 + 16))(v5, v12, v6);
        (*(v7 + 56))(v5, 0, 1, v6);
        swift_beginAccess();
        sub_252EC(v5, v18, v20);
        swift_endAccess();
      }

      (*(v7 + 8))(v12, v6);
    }

    else
    {
      v21 = v22;
    }
  }
}

void sub_2F574(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2F5DC()
{
  v1 = sub_147EC(&unk_B8230, qword_88A50);
  __chkstk_darwin(v1 - 8);
  v3 = &v63 - v2;
  v4 = type metadata accessor for Application(0);
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = __chkstk_darwin(v4);
  v76 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v63 - v7);
  v9 = sub_147EC(&qword_B8308, &qword_89228);
  v10 = __chkstk_darwin(v9);
  v75 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v69 = &v63 - v13;
  __chkstk_darwin(v12);
  v77 = (&v63 - v14);
  v73 = v0;
  v15 = sub_254C4();
  v16 = v15 + 8;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15[8];
  v68 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_datesByApplications;
  v20 = (v17 + 63) >> 6;
  v72 = v15;

  v21 = 0;
  v22 = _swiftEmptyDictionarySingleton;
  v64 = v20;
  v65 = v16;
  v66 = v9;
  v67 = v3;
  while (v19)
  {
LABEL_11:
    v24 = __clz(__rbit64(v19)) | (v21 << 6);
    v25 = v72[7];
    v26 = (v72[6] + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    v74 = *(v70 + 72);
    v29 = v77;
    sub_3B948(v25 + v74 * v24, v77 + *(v9 + 48), type metadata accessor for Application);
    *v29 = v28;
    v29[1] = v27;
    v30 = v29;
    v31 = v69;
    sub_14F6C(v30, v69, &qword_B8308, &qword_89228);

    sub_3C81C(v31 + *(v9 + 48), v8, type metadata accessor for Application);
    v33 = *v8;
    v32 = v8[1];
    v34 = v73;
    v35 = v68;
    swift_beginAccess();
    v36 = *(v34 + v35);
    if (*(v36 + 16) && (v37 = sub_34B30(v33, v32), (v38 & 1) != 0))
    {
      v39 = v37;
      v40 = *(v36 + 56);
      v41 = sub_80A38();
      v42 = *(v41 - 8);
      (*(v42 + 16))(v3, v40 + *(v42 + 72) * v39, v41);
      (*(v42 + 56))(v3, 0, 1, v41);
    }

    else
    {
      v43 = sub_80A38();
      (*(*(v43 - 8) + 56))(v3, 1, 1, v43);
    }

    swift_endAccess();
    sub_3C9DC(v3, v8 + *(v71 + 72), &unk_B8230, qword_88A50);
    v44 = v75;
    sub_14F6C(v77, v75, &qword_B8308, &qword_89228);
    v45 = v8;
    v46 = *v44;
    v47 = v44[1];
    v48 = v45;
    sub_3B948(v45, v76, type metadata accessor for Application);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v22;
    v51 = sub_34B30(v46, v47);
    v52 = v22[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_28;
    }

    v55 = v50;
    if (v22[3] >= v54)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v50)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_3834C();
        if (v55)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_358F0(v54, isUniquelyReferenced_nonNull_native);
      v56 = sub_34B30(v46, v47);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_30;
      }

      v51 = v56;
      if (v55)
      {
LABEL_4:

        v22 = v78;
        sub_3BAA0(v76, v78[7] + v51 * v74);
        sub_14FD4(v77, &qword_B8308, &qword_89228);
        goto LABEL_5;
      }
    }

    v22 = v78;
    v78[(v51 >> 6) + 8] |= 1 << v51;
    v58 = (v22[6] + 16 * v51);
    *v58 = v46;
    v58[1] = v47;
    sub_3C81C(v76, v22[7] + v51 * v74, type metadata accessor for Application);
    sub_14FD4(v77, &qword_B8308, &qword_89228);
    v59 = v22[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_29;
    }

    v22[2] = v61;
LABEL_5:
    v19 &= v19 - 1;
    v9 = v66;
    sub_3CBD0(v75 + *(v66 + 48), type metadata accessor for Application);
    v8 = v48;
    sub_3CBD0(v48, type metadata accessor for Application);
    v3 = v67;
    v20 = v64;
    v16 = v65;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      return sub_2588C(v22);
    }

    v19 = v16[v23];
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_81E38();
  __break(1u);
  return result;
}

uint64_t sub_2FC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_147EC(&qword_B8298, &qword_88FC0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  sub_81A88();
  v4[11] = sub_81A78();
  v6 = sub_81A58();

  return _swift_task_switch(sub_2FD38, v6, v5);
}

uint64_t sub_2FD38()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v2 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats;
  swift_beginAccess();
  v4 = sub_81818();
  sub_14F6C(v3 + *(v4 + 24), v1, &qword_B8298, &qword_88FC0);
  v5 = sub_816D8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  sub_14FD4(v1, &qword_B8298, &qword_88FC0);
  if (v7 == 1)
  {
    v8 = v0[9];
    sub_816C8();
    (*(v6 + 56))(v8, 0, 1, v5);
    swift_beginAccess();
    sub_3C9DC(v8, v3 + *(v4 + 24), &qword_B8298, &qword_88FC0);
    swift_endAccess();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2FEF0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1F3E4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2FFF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_81E78();

      sub_81968();
      v19 = sub_81EB8();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_81E18() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_301DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_817E8();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  sub_147EC(&qword_B8298, &qword_88FC0);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = sub_81A88();
  v6[17] = sub_81A78();
  v8 = sub_81A58();
  v6[18] = v8;
  v6[19] = v7;

  return _swift_task_switch(sub_302F8, v8, v7);
}

uint64_t sub_302F8()
{
  v1 = v0[15];
  v2 = v0[9] + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats;
  swift_beginAccess();
  v3 = sub_81818();
  sub_14F6C(v2 + *(v3 + 28), v1, &qword_B8298, &qword_88FC0);
  v4 = sub_816D8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  sub_14FD4(v1, &qword_B8298, &qword_88FC0);
  if (v6 == 1)
  {
    v7 = v0[14];
    sub_816C8();
    (*(v5 + 56))(v7, 0, 1, v4);
    swift_beginAccess();
    sub_3C9DC(v7, v2 + *(v3 + 28), &qword_B8298, &qword_88FC0);
    swift_endAccess();
  }

  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  v11 = v0[9];

  sub_2588C(v12);
  sub_3B948(v10, v8, &type metadata accessor for Volume);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3B948(v8, v9, &type metadata accessor for Volume);
  v13 = v11;
  sub_80C78();
  sub_3CBD0(v8, &type metadata accessor for Volume);
  sub_3096C();
  v0[20] = sub_81A78();
  v15 = sub_81A58();
  v0[21] = v15;
  v0[22] = v14;

  return _swift_task_switch(sub_30574, v15, v14);
}

uint64_t sub_30574()
{
  v1 = sub_817A8();
  v2 = *v1;
  *(v0 + 184) = *v1;
  v3 = *(*v2 + 88);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_306A0;

  return v6();
}

uint64_t sub_306A0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);

  return _swift_task_switch(sub_307EC, v4, v3);
}

uint64_t sub_307EC()
{
  v1 = v0[25];
  v2 = v0[9];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[8] = v1;
  v3 = v2;
  sub_80C78();
  v4 = v0[18];
  v5 = v0[19];

  return _swift_task_switch(sub_308A8, v4, v5);
}

uint64_t sub_308A8()
{
  v1 = *(v0 + 72);

  v2 = *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback + 8);

    v2(v4);
    sub_3B938(v2, v3);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_3096C()
{
  v0 = sub_147EC(&qword_B82A0, &qword_89058);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v46 = type metadata accessor for SyncedContent(0);
  v3 = *(v46 - 8);
  v4 = __chkstk_darwin(v46);
  v45 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v37 - v6;
  v7 = type metadata accessor for Application(0);
  v43 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v41 = &v37 - v11;
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  v14 = [objc_opt_self() defaultMediaLibrary];
  v15 = 0;
  v50 = comAppleBooks;
  v47 = comAppleTV;
  v51 = comAppleMusic;
  v48 = _swiftEmptyArrayStorage;
  v49 = v14;
  v38 = v3;
  v39 = comApplePodcasts;
  v16 = &off_AACF0;
  v40 = (v3 + 48);
  while (1)
  {
    v17 = v16[v15 + 4];
    result = [v14 usageForSyncedMediaOfType:v17];
    if (result < 0)
    {
      break;
    }

    v19 = result;
    if (result)
    {
      if (v17 <= 3)
      {
        if (v17 != 1 && v17 != 2)
        {
          goto LABEL_3;
        }
      }

      else if (v17 != 4 && v17 != 512 && v17 != 2048)
      {
        goto LABEL_3;
      }

      v20 = sub_81928();
      v22 = v21;
      v23 = sub_254C4();
      if (v23[2])
      {
        v24 = v16;
        v25 = v13;
        v26 = v2;
        v27 = sub_34B30(v20, v22);
        v29 = v28;

        if (v29)
        {
          v30 = v23[7] + *(v43 + 72) * v27;
          v31 = v41;
          sub_3B948(v30, v41, type metadata accessor for Application);

          sub_3C81C(v31, v25, type metadata accessor for Application);
          v32 = v42;
          sub_3B948(v25, v42, type metadata accessor for Application);
          v2 = v26;
          sub_3CFA8(v17, v19, v32, v26);
          if ((*v40)(v26, 1, v46) != 1)
          {
            v33 = v44;
            sub_3C81C(v26, v44, type metadata accessor for SyncedContent);
            sub_3B948(v33, v45, type metadata accessor for SyncedContent);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_34040(0, v48[2] + 1, 1, v48, &qword_B82A8, &qword_89060, type metadata accessor for SyncedContent);
            }

            v13 = v25;
            v35 = v48[2];
            v34 = v48[3];
            v16 = v24;
            if (v35 >= v34 >> 1)
            {
              v48 = sub_34040((v34 > 1), v35 + 1, 1, v48, &qword_B82A8, &qword_89060, type metadata accessor for SyncedContent);
            }

            v14 = v49;
            sub_3CBD0(v44, type metadata accessor for SyncedContent);
            sub_3CBD0(v13, type metadata accessor for Application);
            v36 = v48;
            v48[2] = v35 + 1;
            sub_3C81C(v45, v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35, type metadata accessor for SyncedContent);
            goto LABEL_3;
          }

          sub_3CBD0(v25, type metadata accessor for Application);
          sub_14FD4(v26, &qword_B82A0, &qword_89058);
          v13 = v25;
        }

        else
        {

          v2 = v26;
          v13 = v25;
        }

        v16 = v24;
        v14 = v49;
      }

      else
      {
      }
    }

LABEL_3:
    if (++v15 == 5)
    {

      *(v52 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_syncedMediaSizes) = v48;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_30F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[199] = a5;
  v5[198] = a4;
  sub_147EC(&qword_B8298, &qword_88FC0);
  v5[200] = swift_task_alloc();
  v5[201] = swift_task_alloc();
  sub_81A88();
  v5[202] = sub_81A78();
  v7 = sub_81A58();

  return _swift_task_switch(sub_31030, v7, v6);
}

uint64_t sub_31030()
{
  v1 = *(v0 + 1608);
  v2 = *(v0 + 1584);

  v3 = v2 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats;
  swift_beginAccess();
  v4 = sub_81818();
  sub_14F6C(v3 + *(v4 + 32), v1, &qword_B8298, &qword_88FC0);
  v5 = sub_816D8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  sub_14FD4(v1, &qword_B8298, &qword_88FC0);
  if (v7 == 1)
  {
    v8 = *(v0 + 1600);
    sub_816C8();
    (*(v6 + 56))(v8, 0, 1, v5);
    swift_beginAccess();
    sub_3C9DC(v8, v3 + *(v4 + 32), &qword_B8298, &qword_88FC0);
    swift_endAccess();
  }

  v9 = *(v0 + 1584);
  v10 = *(v9 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs);
  v11 = *(v9 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs);
  v12 = *(v0 + 1592);
  *(v9 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationsDidUpdateOnce) = 1;
  v13 = *(v12 + 16);

  v87 = v11;

  v15 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v16 = 0;
    v85 = *(v0 + 1592) + 32;
    v17 = v10 + 56;
    while (1)
    {
      if (v16 >= v13)
      {
        goto LABEL_50;
      }

      v18 = v85 + 216 * v16;
      v19 = *(v18 + 16);
      *(v0 + 16) = *v18;
      *(v0 + 32) = v19;
      v20 = *(v18 + 32);
      v21 = *(v18 + 48);
      v22 = *(v18 + 80);
      *(v0 + 80) = *(v18 + 64);
      *(v0 + 96) = v22;
      *(v0 + 48) = v20;
      *(v0 + 64) = v21;
      v23 = *(v18 + 96);
      v24 = *(v18 + 112);
      v25 = *(v18 + 144);
      *(v0 + 144) = *(v18 + 128);
      *(v0 + 160) = v25;
      *(v0 + 112) = v23;
      *(v0 + 128) = v24;
      v26 = *(v18 + 160);
      v27 = *(v18 + 176);
      v28 = *(v18 + 192);
      *(v0 + 224) = *(v18 + 208);
      *(v0 + 192) = v27;
      *(v0 + 208) = v28;
      *(v0 + 176) = v26;
      if (__OFADD__(v16++, 1))
      {
        goto LABEL_51;
      }

      if (!*(v10 + 16))
      {
        break;
      }

      v30 = v15;
      v32 = *(v0 + 32);
      v31 = *(v0 + 40);
      sub_81E78();
      sub_3C168(v0 + 16, v0 + 232);

      sub_81968();
      v33 = sub_81EB8();
      v34 = -1 << *(v10 + 32);
      v35 = v33 & ~v34;
      if ((*(v17 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
      {
        v36 = ~v34;
        while (1)
        {
          v37 = (*(v10 + 48) + 16 * v35);
          v38 = *v37 == v32 && v37[1] == v31;
          if (v38 || (sub_81E18() & 1) != 0)
          {
            break;
          }

          v35 = (v35 + 1) & v36;
          if (((*(v17 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        result = sub_3C1C4(v0 + 16);
        v15 = v30;
        if (v16 == v13)
        {
          goto LABEL_25;
        }
      }

      else
      {
LABEL_17:

        v15 = v30;
LABEL_18:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_34F64(0, v15[2] + 1, 1);
        }

        v40 = v15[2];
        v39 = v15[3];
        if (v40 >= v39 >> 1)
        {
          result = sub_34F64((v39 > 1), v40 + 1, 1);
        }

        v15[2] = v40 + 1;
        v41 = &v15[27 * v40];
        v42 = *(v0 + 32);
        *(v41 + 2) = *(v0 + 16);
        *(v41 + 3) = v42;
        v43 = *(v0 + 48);
        v44 = *(v0 + 64);
        v45 = *(v0 + 96);
        *(v41 + 6) = *(v0 + 80);
        *(v41 + 7) = v45;
        *(v41 + 4) = v43;
        *(v41 + 5) = v44;
        v46 = *(v0 + 112);
        v47 = *(v0 + 128);
        v48 = *(v0 + 160);
        *(v41 + 10) = *(v0 + 144);
        *(v41 + 11) = v48;
        *(v41 + 8) = v46;
        *(v41 + 9) = v47;
        v49 = *(v0 + 176);
        v50 = *(v0 + 192);
        v51 = *(v0 + 208);
        *(v41 + 240) = *(v0 + 224);
        *(v41 + 13) = v50;
        *(v41 + 14) = v51;
        *(v41 + 12) = v49;
        if (v16 == v13)
        {
          goto LABEL_25;
        }
      }
    }

    sub_3C168(v0 + 16, v0 + 448);
    goto LABEL_18;
  }

LABEL_25:

  v52 = v15[2];
  if (!v52)
  {
    goto LABEL_46;
  }

  v83 = v15;
  sub_34F64(0, v52, 0);
  result = v87;
  if (v15[2])
  {
    v53 = 0;
    v84 = v15 + 4;
    v86 = v52;
    v54 = v87 + 56;
    v55 = 1;
    while (1)
    {
      v56 = &v84[27 * v53];
      v53 = v55;
      v57 = *(v56 + 1);
      *(v0 + 664) = *v56;
      *(v0 + 680) = v57;
      v58 = *(v56 + 2);
      v59 = *(v56 + 3);
      v60 = *(v56 + 5);
      *(v0 + 728) = *(v56 + 4);
      *(v0 + 744) = v60;
      *(v0 + 696) = v58;
      *(v0 + 712) = v59;
      v61 = *(v56 + 6);
      v62 = *(v56 + 7);
      v63 = *(v56 + 9);
      *(v0 + 792) = *(v56 + 8);
      *(v0 + 808) = v63;
      *(v0 + 760) = v61;
      *(v0 + 776) = v62;
      v64 = *(v56 + 10);
      v65 = *(v56 + 11);
      v66 = *(v56 + 12);
      *(v0 + 872) = *(v56 + 208);
      *(v0 + 840) = v65;
      *(v0 + 856) = v66;
      *(v0 + 824) = v64;
      v88 = *v56;
      v91 = *(v56 + 3);
      v92 = *(v56 + 4);
      v89 = *(v56 + 1);
      v90 = *(v56 + 2);
      v96 = *(v56 + 8);
      v94 = *(v56 + 6);
      v95 = *(v56 + 7);
      v93 = *(v56 + 5);
      v99 = *(v56 + 11);
      v100 = *(v56 + 12);
      v97 = *(v56 + 9);
      v98 = *(v56 + 10);
      if (*(result + 16))
      {
        v67 = *(v0 + 680);
        v68 = *(v0 + 688);
        v69 = result;
        sub_81E78();
        sub_3C168(v0 + 664, v0 + 880);
        sub_3C168(v0 + 664, v0 + 1096);
        sub_81968();
        v70 = sub_81EB8();
        v71 = -1 << *(v69 + 32);
        v72 = v70 & ~v71;
        if ((*(v54 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
        {
          v73 = ~v71;
          while (1)
          {
            v74 = (*(v87 + 48) + 16 * v72);
            v75 = *v74 == v67 && v74[1] == v68;
            if (v75 || (sub_81E18() & 1) != 0)
            {
              break;
            }

            v72 = (v72 + 1) & v73;
            if (((*(v54 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          sub_3C1C4(v0 + 664);
          v76 = 1;
        }

        else
        {
LABEL_37:
          sub_3C1C4(v0 + 664);
          v76 = 0;
        }

        v15 = v83;
      }

      else
      {
        sub_3C168(v0 + 664, v0 + 1312);
        v76 = 0;
      }

      v78 = _swiftEmptyArrayStorage[2];
      v77 = _swiftEmptyArrayStorage[3];
      result = v87;
      if (v78 >= v77 >> 1)
      {
        sub_34F64((v77 > 1), v78 + 1, 1);
        v15 = v83;
        result = v87;
      }

      _swiftEmptyArrayStorage[2] = v78 + 1;
      v79 = &_swiftEmptyArrayStorage[27 * v78];
      *(v79 + 2) = v88;
      *(v79 + 5) = v91;
      *(v79 + 6) = v92;
      *(v79 + 3) = v89;
      *(v79 + 4) = v90;
      *(v79 + 9) = v95;
      *(v79 + 10) = v96;
      *(v79 + 7) = v93;
      *(v79 + 8) = v94;
      *(v79 + 13) = v99;
      *(v79 + 14) = v100;
      *(v79 + 11) = v97;
      *(v79 + 12) = v98;
      *(v79 + 240) = v76;
      if (v53 == v86)
      {
        break;
      }

      v55 = v53 + 1;
      if (v53 >= v15[2])
      {
        goto LABEL_49;
      }
    }

LABEL_46:

    v80 = *(v0 + 1584);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1576) = _swiftEmptyArrayStorage;
    v81 = v80;
    sub_80C78();

    v82 = *(v0 + 8);

    return v82();
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_317AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_81A88();
  v4[3] = sub_81A78();
  v6 = sub_81A58();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_31844, v6, v5);
}

uint64_t sub_31844()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription;
  v3 = *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription);
  v4 = v1;
  if (v3)
  {
    [v3 invalidate];
    v4 = v0[2];
  }

  v5 = objc_opt_self();
  v6 = [v5 hiddenAppBundleIdentifiers];
  v7 = sub_81AD8();

  *(v4 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs) = v7;

  v8 = [v5 lockedAppBundleIdentifiers];
  v9 = sub_81AD8();

  *(v4 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs) = v9;

  v10 = [objc_msgSend(objc_opt_self() "subjectMonitorRegistry")];
  swift_unknownObjectRelease();
  *(v1 + v2) = v10;
  swift_unknownObjectRelease();
  v11 = *(v4 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lastSizerResults);
  v0[6] = v11;
  if (v11)
  {
    v12 = v11;
    v13 = swift_task_alloc();
    v0[7] = v13;
    *v13 = v0;
    v13[1] = sub_31A88;

    return sub_29848(v12);
  }

  else
  {

    *(v0[2] + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries) = 0;
    sub_28F58();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_31A88()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_31BA8, v3, v2);
}

uint64_t sub_31BA8()
{
  v1 = v0[6];

  *(v0[2] + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizerQueryTries) = 0;
  sub_28F58();
  v2 = v0[1];

  return v2();
}

uint64_t sub_31C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_81A88();
  *(v4 + 24) = sub_81A78();
  v6 = sub_81A58();

  return _swift_task_switch(sub_31CDC, v6, v5);
}

uint64_t sub_31CDC()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription;
  v3 = *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription);
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = *(v0 + 16);
  *(v1 + v2) = 0;
  swift_unknownObjectRelease();
  [*(v4 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appSizer) stopObserving];
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_31DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_81A88();
  *(v4 + 40) = sub_81A78();
  v6 = sub_81A58();

  return _swift_task_switch(sub_31E40, v6, v5);
}

uint64_t sub_31E40()
{
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v2 = v1;
  sub_80C78();
  v3 = v0[1];

  return v3();
}

uint64_t sub_31F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_81A88();
  *(v4 + 40) = sub_81A78();
  v6 = sub_81A58();

  return _swift_task_switch(sub_3CD28, v6, v5);
}

void sub_31FC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_81AB8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_81A88();
  v10 = a1;
  v11 = sub_81A78();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_68AE4(0, 0, v8, a4, v12);
}

uint64_t sub_320F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_81A88();
  v6[7] = sub_81A78();
  v8 = sub_81A58();

  return _swift_task_switch(sub_32190, v8, v7);
}

uint64_t sub_32190()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;
  v0[3] = v1;
  v4 = v3;

  sub_80C78();
  v5 = v0[1];

  return v5();
}

uint64_t sub_323A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_81A88();
  v5[4] = sub_81A78();
  v7 = sub_81A58();

  return _swift_task_switch(sub_3243C, v7, v6);
}

uint64_t sub_3243C()
{

  type metadata accessor for DeepLinkParameters(0);
  swift_allocObject();

  v2 = sub_6D12C(v1);
  sub_324E4(v2);

  v3 = *(v0 + 8);

  return v3();
}

void sub_324E4(void *a1)
{
  v2 = a1[3];
  if (v2 && v2[2])
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = swift_allocObject();
    *(v6 + 2) = v1;
    *(v6 + 3) = v4;
    *(v6 + 4) = v5;
    *(v6 + 5) = a1;
    swift_bridgeObjectRetain_n();

    v7 = v1;
    v8 = sub_32D64(v7, v4, v5, a1);

    if ((v8 & 1) != 0 || (v9 = sub_254C4()[2], , v9))
    {
    }

    else
    {
      if (qword_B7850 != -1)
      {
        swift_once();
      }

      v13 = sub_80BC8();
      sub_19818(v13, qword_BCF70);
      v14 = sub_80BB8();
      v15 = sub_81B38();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_0, v14, v15, "Delaying deeplink execution until the application list is updated.", v16, 2u);
      }

      v17 = &v7[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback];
      v18 = *&v7[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback];
      v19 = *&v7[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback + 8];
      *v17 = sub_3C13C;
      v17[1] = v6;

      sub_3B938(v18, v19);
    }
  }

  else
  {
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v10 = sub_80BC8();
    sub_19818(v10, qword_BCF70);
    oslog = sub_80BB8();
    v11 = sub_81B18();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, oslog, v11, "No valid path found to handle. Bailing.", v12, 2u);
    }
  }
}

void sub_328F4(uint64_t a1)
{
  sub_32C6C(319);
  if (v1 <= 0x3F)
  {
    sub_32D10(319, &qword_B8168, &qword_B8170, &qword_88E78);
    if (v2 <= 0x3F)
    {
      sub_32D10(319, &qword_B8178, &qword_B8180, &qword_88E80);
      if (v3 <= 0x3F)
      {
        sub_32D10(319, &qword_B8188, &qword_B8190, &qword_88E88);
        if (v4 <= 0x3F)
        {
          sub_32D10(319, &qword_B8198, &qword_B81A0, &qword_88E90);
          if (v5 <= 0x3F)
          {
            sub_32CC4(319, &qword_B81A8, &type metadata for String);
            if (v6 <= 0x3F)
            {
              sub_32CC4(319, &qword_B81B0, &type metadata for Bool);
              if (v7 <= 0x3F)
              {
                sub_32D10(319, &qword_B81B8, &qword_B81C0, &qword_88E98);
                if (v8 <= 0x3F)
                {
                  sub_81818();
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

void sub_32C6C(uint64_t a1)
{
  if (!qword_B8160)
  {
    sub_817E8();
    v1 = sub_80C88();
    if (!v2)
    {
      atomic_store(v1, &qword_B8160);
    }
  }
}

void sub_32CC4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_80C88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_32D10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_14E2C(a3, a4);
    v5 = sub_80C88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_32D64(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = &a1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback];
  v12 = *&a1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback];
  v13 = *&a1[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_delayedDeepLinkHandleCallback + 8];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_3B938(v12, v13);
  v14 = sub_254C4();
  if (v14[2] && (v15 = sub_34B30(a2, a3), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = v14[7];
    v19 = type metadata accessor for Application(0);
    v20 = *(v19 - 8);
    sub_3B948(v18 + *(v20 + 72) * v17, v10, type metadata accessor for Application);

    (*(v20 + 56))(v10, 0, 1, v19);
    sub_14FD4(v10, &qword_B7E50, &qword_8A3F0);
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v21 = sub_80BC8();
    sub_19818(v21, qword_BCF70);

    v22 = sub_80BB8();
    v23 = sub_81B38();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315138;
      v26 = sub_81848();
      v28 = sub_34588(v26, v27, &v41);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_0, v22, v23, "Deeplink opened with information: %s", v24, 0xCu);
      sub_20FD0(v25);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v41 = a4;

    v29 = a1;
    sub_80C78();
    return 1;
  }

  else
  {

    v31 = type metadata accessor for Application(0);
    (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
    sub_14FD4(v10, &qword_B7E50, &qword_8A3F0);
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v32 = sub_80BC8();
    sub_19818(v32, qword_BCF70);

    v33 = sub_80BB8();
    v34 = sub_81B18();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v35 = 136315138;
      v37 = sub_81848();
      v39 = sub_34588(v37, v38, &v41);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_0, v33, v34, "DeepLink %s provided does not match a valid application bundleID.", v35, 0xCu);
      sub_20FD0(v36);
    }

    return 0;
  }
}

uint64_t sub_33200@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_80C48();
  *a2 = result;
  return result;
}

uint64_t sub_33240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_81A88();
  v4[3] = sub_81A78();
  v6 = sub_81A58();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_332D8, v6, v5);
}

uint64_t sub_332D8()
{
  v1 = v0[2];
  v2 = objc_opt_self();
  v3 = [v2 hiddenAppBundleIdentifiers];
  v4 = sub_81AD8();

  *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_hiddenBundleIDs) = v4;

  v5 = [v2 lockedAppBundleIdentifiers];
  v6 = sub_81AD8();

  *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lockedBundleIDs) = v6;

  v7 = *(v1 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_lastSizerResults);
  v0[6] = v7;
  if (v7)
  {
    v8 = v7;
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_33484;

    return sub_29848(v8);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_33484()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_335A4, v3, v2);
}

uint64_t sub_335A4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_3374C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_2FC5C(a1, v4, v5, v6);
}

uint64_t sub_33800(uint64_t a1, uint64_t a2)
{
  v3 = sub_80858();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_80848();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_33944@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  *a2 = v4;
  return result;
}

uint64_t sub_339C4(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_80C78();
}

uint64_t sub_33A70@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  *a4 = v6;
  return result;
}

uint64_t sub_33B00(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_80C78();
}

uint64_t sub_33B74@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  *a2 = v4;
  return result;
}

uint64_t sub_33BF4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_80C78();
}

uint64_t sub_33C6C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_33CB8(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

char *sub_33D10(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B82D8, &qword_891C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_33E1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B8280, &qword_88FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_33F3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B8288, &qword_88FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_34040(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_147EC(a5, a6);
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

char *sub_3421C(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B8338, &qword_89358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_34340(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_147EC(&qword_B82D8, &qword_891C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_343C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_147EC(&qword_B82C8, &qword_891B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_3445C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_147EC(&qword_B8338, &qword_89358);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4BDA12F684BDA13) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

_BYTE **sub_344F4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_3452C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_34588(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_34588(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_34654(v11, 0, 0, 1, a1, a2);
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
    sub_22B2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_20FD0(v11);
  return v7;
}

unint64_t sub_34654(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_34760(a5, a6);
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
    result = sub_81D28();
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

void *sub_34760(uint64_t a1, unint64_t a2)
{
  v3 = sub_347AC(a1, a2);
  sub_348DC(&off_AACC8);
  return v3;
}

void *sub_347AC(uint64_t a1, unint64_t a2)
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

  v6 = sub_349C8(v5, 0);
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

  result = sub_81D28();
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
        v10 = sub_81998();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_349C8(v10, 0);
        result = sub_81CF8();
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

uint64_t sub_348DC(uint64_t result)
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

  result = sub_34A3C(result, v11, 1, v3);
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

void *sub_349C8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_147EC(&qword_B82C0, &qword_89160);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_34A3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B82C0, &qword_89160);
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

unint64_t sub_34B30(uint64_t a1, uint64_t a2)
{
  sub_81E78();
  sub_81968();
  v4 = sub_81EB8();

  return sub_34C80(a1, a2, v4);
}

unint64_t sub_34BA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_81C98(*(v2 + 40));

  return sub_34D38(a1, v4);
}

unint64_t sub_34BEC(uint64_t a1)
{
  sub_81928();
  sub_81E78();
  sub_81968();
  v2 = sub_81EB8();

  return sub_34E00(a1, v2);
}

unint64_t sub_34C80(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_81E18())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_34D38(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_3CC30(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_81CA8();
      sub_3CC8C(v8);
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

unint64_t sub_34E00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_81928();
      v8 = v7;
      if (v6 == sub_81928() && v8 == v9)
      {
        break;
      }

      v11 = sub_81E18();

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

char *sub_34F04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_34FA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34F24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_350B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34F44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_351D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34F64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_352F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_34F84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_35414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34FA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B82D8, &qword_891C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_350B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&unk_B82E0, &unk_8C580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_351D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B8280, &qword_88FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_352F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_147EC(&qword_B8338, &qword_89358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_35414(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_147EC(&qword_B82B8, &qword_89148);
  v10 = *(type metadata accessor for Application(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for Application(0) - 8);
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

uint64_t sub_355EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_34B30(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_3834C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Application(0);
    v19 = *(v12 - 8);
    sub_3C81C(v11 + *(v19 + 72) * v8, a3, type metadata accessor for Application);
    sub_37654(v8, v10, type metadata accessor for Application);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Application(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_3576C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_34B30(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_38C0C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_80A38();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_37654(v8, v10, &type metadata accessor for Date);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_80A38();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_358F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Application(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_147EC(&qword_B82B0, &qword_89140);
  v40 = v4;
  result = sub_81DA8();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_3C81C(v28, v41, type metadata accessor for Application);
      }

      else
      {
        sub_3B948(v28, v41, type metadata accessor for Application);
      }

      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_3C81C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Application);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_35C68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_147EC(&qword_B82F0, &qword_891C8);
  v40 = v4;
  result = sub_81DA8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 144 * v21;
      if (v40)
      {
        v41 = *(v25 + 8);
        v42 = *(v25 + 24);
        v43 = *v25;
        v44 = *(v25 + 32);
        v45 = *(v25 + 48);
        v51 = *(v25 + 64);
        v47 = *(v25 + 16);
        v48 = *(v25 + 72);
        v46 = *(v25 + 80);
        v49 = *(v25 + 96);
        v52 = *(v25 + 88);
        v53 = *(v25 + 104);
        v50 = *(v25 + 112);
        v54 = *(v25 + 128);
      }

      else
      {
        v56 = *v25;
        v26 = *(v25 + 64);
        v28 = *(v25 + 16);
        v27 = *(v25 + 32);
        v59 = *(v25 + 48);
        v60 = v26;
        v57 = v28;
        v58 = v27;
        v29 = *(v25 + 128);
        v31 = *(v25 + 80);
        v30 = *(v25 + 96);
        v63 = *(v25 + 112);
        v64 = v29;
        v61 = v31;
        v62 = v30;
        v54 = v29;
        v50 = v63;
        v52 = *(&v31 + 1);
        v53 = *(&v30 + 1);
        v49 = v30;
        v51 = v60;
        v46 = v31;
        v44 = v58;
        v45 = v59;
        v47 = v57;
        v48 = *(&v60 + 1);
        v42 = *(&v57 + 1);
        v41 = *(&v56 + 1);
        v43 = v56;

        sub_3BE20(&v56, v55);
      }

      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 144 * v15;
      *v17 = v43;
      *(v17 + 8) = v41;
      *(v17 + 16) = v47;
      *(v17 + 24) = v42;
      *(v17 + 32) = v44;
      *(v17 + 48) = v45;
      *(v17 + 64) = v51;
      *(v17 + 72) = v48;
      *(v17 + 80) = v46;
      *(v17 + 88) = v52;
      *(v17 + 96) = v49;
      *(v17 + 104) = v53;
      *(v17 + 112) = v50;
      *(v17 + 128) = v54;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_3604C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_147EC(&qword_B83C8, &qword_89450);
  v35 = v4;
  result = sub_81DA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      sub_81928();
      sub_81E78();
      sub_81968();
      v24 = sub_81EB8();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

uint64_t sub_36314(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_147EC(&qword_B83D0, &qword_89458);
  v34 = v4;
  result = sub_81DA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v35 = *(v20 + 16 * v19);
      if ((v34 & 1) == 0)
      {
        v22 = v21;
      }

      sub_81928();
      sub_81E78();
      sub_81968();
      v23 = sub_81EB8();

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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 16 * v15) = v35;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_365D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_147EC(&qword_B82D0, &qword_891B8);
  v39 = v4;
  result = sub_81DA8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 88 * v21;
      if (v39)
      {
        v40 = *(v25 + 8);
        v41 = *(v25 + 24);
        v42 = *v25;
        v43 = *(v25 + 32);
        v44 = *(v25 + 16);
        v45 = *(v25 + 40);
        v46 = *(v25 + 48);
        v47 = *(v25 + 49);
        v26 = *(v25 + 64);
        v48 = *(v25 + 56);
        v49 = *(v25 + 72);
        v50 = *(v25 + 80);
      }

      else
      {
        v27 = *(v25 + 32);
        v28 = *(v25 + 48);
        v29 = *(v25 + 64);
        v55 = *(v25 + 80);
        v53 = v28;
        v54 = v29;
        v52[2] = v27;
        v30 = *(v25 + 16);
        v52[0] = *v25;
        v52[1] = v30;
        v50 = v55;
        v26 = v29;
        v48 = *(&v53 + 1);
        v49 = *(&v29 + 1);
        v46 = v53;
        v47 = BYTE1(v53);
        v44 = v30;
        v45 = *(&v27 + 1);
        v42 = *&v52[0];
        v43 = v27;
        v40 = *(&v52[0] + 1);
        v41 = *(&v30 + 1);

        sub_3BC1C(v52, v51);
      }

      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 88 * v15;
      *v17 = v42;
      *(v17 + 8) = v40;
      *(v17 + 16) = v44;
      *(v17 + 24) = v41;
      *(v17 + 32) = v43;
      *(v17 + 40) = v45;
      *(v17 + 48) = v46;
      *(v17 + 49) = v47;
      *(v17 + 56) = v48;
      *(v17 + 64) = v26;
      *(v17 + 72) = v49;
      *(v17 + 80) = v50;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_3698C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_80A38();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_147EC(&unk_B8310, &qword_89230);
  v42 = v4;
  result = sub_81DA8();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_36D0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_147EC(&qword_B8340, &unk_89360);
  v46 = v4;
  result = sub_81DA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v45 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = (v22 + 216 * v21);
      if (v46)
      {
        v53 = v26[2];
        v48 = v26[1];
        v49 = v26[3];
        v51 = *v26;
        v52 = v26[5];
        v58 = v26[7];
        v56 = *(v26 + 64);
        v54 = v26[9];
        v55 = v26[4];
        v50 = v26[10];
        v61 = v26[11];
        v62 = v26[6];
        v57 = v26[12];
        v59 = *(v26 + 13);
        v60 = *(v26 + 15);
        v63 = *(v26 + 144);
        v64 = *(v26 + 19);
        v65 = *(v26 + 21);
        v47 = *(v26 + 184);
        v69 = v26[24];
        v66 = v26[17];
        v67 = v26[25];
        v68 = *(v26 + 208);
      }

      else
      {
        v27 = *(v26 + 1);
        v71 = *v26;
        v72 = v27;
        v28 = *(v26 + 5);
        v30 = *(v26 + 2);
        v29 = *(v26 + 3);
        v75 = *(v26 + 4);
        v76 = v28;
        v73 = v30;
        v74 = v29;
        v31 = *(v26 + 9);
        v33 = *(v26 + 6);
        v32 = *(v26 + 7);
        *&v77[32] = *(v26 + 8);
        *v78 = v31;
        *v77 = v33;
        *&v77[16] = v32;
        v35 = *(v26 + 11);
        v34 = *(v26 + 12);
        v36 = *(v26 + 10);
        v80 = *(v26 + 208);
        *&v78[32] = v35;
        v79 = v34;
        *&v78[16] = v36;
        v68 = v80;
        v69 = v34;
        v47 = BYTE8(v35);
        v64 = *&v78[8];
        v65 = *&v78[24];
        v66 = *&v77[40];
        v67 = *(&v34 + 1);
        v63 = v78[0];
        v59 = *&v77[8];
        v60 = *&v77[24];
        v61 = *(&v76 + 1);
        v62 = v74;
        v57 = v33;
        v58 = *(&v74 + 1);
        v56 = v75;
        v54 = *(&v75 + 1);
        v52 = *(&v73 + 1);
        v55 = v73;
        v49 = *(&v72 + 1);
        v53 = v72;
        v50 = v76;
        v48 = *(&v71 + 1);
        v51 = v71;

        sub_3C168(&v71, v70);
      }

      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v37 = -1 << *(v7 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v71) = v47;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 216 * v15;
      *v17 = v51;
      *(v17 + 8) = v48;
      *(v17 + 16) = v53;
      *(v17 + 24) = v49;
      *(v17 + 32) = v55;
      *(v17 + 40) = v52;
      *(v17 + 48) = v62;
      *(v17 + 56) = v58;
      *(v17 + 64) = v56;
      *(v17 + 72) = v54;
      *(v17 + 80) = v50;
      *(v17 + 88) = v61;
      *(v17 + 96) = v57;
      *(v17 + 120) = v60;
      *(v17 + 104) = v59;
      *(v17 + 136) = v66;
      *(v17 + 144) = v63;
      *(v17 + 168) = v65;
      *(v17 + 152) = v64;
      *(v17 + 184) = v71;
      *(v17 + 192) = v69;
      *(v17 + 200) = v67;
      *(v17 + 208) = v68;
      ++*(v7 + 16);
      v5 = v45;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero(v9, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_371CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_147EC(&qword_B8290, &qword_88FB8);
  v37 = v4;
  result = sub_81DA8();
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

      sub_81E78();
      sub_81968();
      result = sub_81EB8();
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

void sub_3748C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_81C18() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_81928();
      sub_81E78();
      v10 = v9;
      sub_81968();
      v11 = sub_81EB8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

unint64_t sub_37654(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_81C18() + 1) & ~v6;
    while (1)
    {
      sub_81E78();

      sub_81968();
      v11 = sub_81EB8();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_37848(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_81C18() + 1) & ~v5;
    do
    {
      sub_81E78();

      sub_81968();
      v9 = sub_81EB8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 216 * v3);
        v15 = (v14 + 216 * v6);
        if (216 * v3 < (216 * v6) || result >= v15 + 216 || v3 != v6)
        {
          result = memmove(result, v15, 0xD8uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_37A0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_34B30(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_3834C();
      goto LABEL_7;
    }

    sub_358F0(v15, a4 & 1);
    v22 = sub_34B30(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_81E38();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for Application(0) - 8) + 72) * v12;

    return sub_3BAA0(a1, v20);
  }

LABEL_13:
  sub_38164(v12, a2, a3, a1, v18);
}

uint64_t sub_37B70(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_34B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_35C68(v16, a4 & 1);
      v11 = sub_34B30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_81E38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_385A4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 144 * v11;

    return sub_3BDC4(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 144 * v11);
  *v25 = *a1;
  v26 = a1[1];
  v27 = a1[2];
  v28 = a1[4];
  v25[3] = a1[3];
  v25[4] = v28;
  v25[1] = v26;
  v25[2] = v27;
  v29 = a1[5];
  v30 = a1[6];
  v31 = a1[8];
  v25[7] = a1[7];
  v25[8] = v31;
  v25[5] = v29;
  v25[6] = v30;
  v32 = v21[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v33;
}

id sub_37D18(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_34BEC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_3604C(v13, a3 & 1);
      v8 = sub_34BEC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for FPProviderDomainID(0);
        result = sub_81E38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_38778();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t sub_37E84(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  result = sub_34BEC(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_36314(v15, a4 & 1);
      result = sub_34BEC(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_16:
        type metadata accessor for FPProviderDomainID(0);
        result = sub_81E38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = result;
      sub_388DC();
      result = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * result);
    *v21 = a1;
    v21[1] = a2;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = a3;
  v22 = (v20[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20[2] = v24;

  return a3;
}

uint64_t sub_37FE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_34B30(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_38C0C();
      goto LABEL_7;
    }

    sub_3698C(v15, a4 & 1);
    v26 = sub_34B30(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_81E38();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_80A38();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_38210(v12, a2, a3, a1, v18);
}

uint64_t sub_38164(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Application(0);
  result = sub_3C81C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Application);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_38210(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_80A38();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_382C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 216 * result;
  v7 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v7;
  v8 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v8;
  v9 = *(a4 + 144);
  *(v6 + 128) = *(a4 + 128);
  *(v6 + 144) = v9;
  v10 = *(a4 + 112);
  *(v6 + 96) = *(a4 + 96);
  *(v6 + 112) = v10;
  *(v6 + 208) = *(a4 + 208);
  v11 = *(a4 + 192);
  *(v6 + 176) = *(a4 + 176);
  *(v6 + 192) = v11;
  *(v6 + 160) = *(a4 + 160);
  v12 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v12;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

void *sub_3834C()
{
  v1 = v0;
  v2 = type metadata accessor for Application(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_147EC(&qword_B82B0, &qword_89140);
  v4 = *v0;
  v5 = sub_81D98();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_3B948(*(v4 + 56) + v26, v30, type metadata accessor for Application);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_3C81C(v25, *(v27 + 56) + v26, type metadata accessor for Application);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_385A4()
{
  v1 = v0;
  sub_147EC(&qword_B82F0, &qword_891C8);
  v2 = *v0;
  v3 = sub_81D98();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 144;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17 + 64);
        v41 = *(v19 + v17 + 48);
        v42 = v25;
        v26 = *(v19 + v17 + 128);
        v28 = *(v19 + v17 + 80);
        v27 = *(v19 + v17 + 96);
        v45 = *(v19 + v17 + 112);
        v46 = v26;
        v43 = v28;
        v44 = v27;
        v38 = *(v19 + v17);
        v39 = v24;
        v40 = v23;
        v29 = (*(v4 + 48) + v18);
        *v29 = v22;
        v29[1] = v21;
        v30 = (*(v4 + 56) + v17);
        *v30 = v38;
        v31 = v39;
        v32 = v40;
        v33 = v42;
        v30[3] = v41;
        v30[4] = v33;
        v30[1] = v31;
        v30[2] = v32;
        v34 = v43;
        v35 = v44;
        v36 = v46;
        v30[7] = v45;
        v30[8] = v36;
        v30[5] = v34;
        v30[6] = v35;

        result = sub_3BE20(&v38, &v37);
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

void *sub_38778()
{
  v1 = v0;
  sub_147EC(&qword_B83C8, &qword_89450);
  v2 = *v0;
  v3 = sub_81D98();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

id sub_388DC()
{
  v1 = v0;
  sub_147EC(&qword_B83D0, &qword_89458);
  v2 = *v0;
  v3 = sub_81D98();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
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