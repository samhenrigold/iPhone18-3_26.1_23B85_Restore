_TtC7remindd19RDXPCStorePerformer *sub_10066E800(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038F8FC(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EF7A8(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v79 = v26;
  while (1)
  {
    if (v81)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v82 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v82];
    if (!v33)
    {
      v57 = v82;
      v10, v58, v59, v60, v61, v62, v63, v64;

      _convertNSErrorToError(_:)();
      swift_willThrow();
      v2, v65, v66, v67, v68, v69, v70, v71;
LABEL_31:

      return v2;
    }

    v34 = v33;
    v35 = v82;
    v36 = sub_1005E3810(v34, &qword_10094F688, off_1008D4140);
    if (v4)
    {
      v2, v37, v38, v39, v40, v41, v42, v43;
      v10, v72, v73, v74, v75, v76, v77, v78;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v82;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003751B8();
      v2 = v82;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v79)
    {
      goto LABEL_38;
    }
  }

  sub_10036DAF0(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v82;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&qword_10093A9F0, &unk_1007A4370);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10066EBBC(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FA48(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005ECFE8(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v79 = v26;
  while (1)
  {
    if (v81)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v82 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v82];
    if (!v33)
    {
      v57 = v82;
      v10, v58, v59, v60, v61, v62, v63, v64;

      _convertNSErrorToError(_:)();
      swift_willThrow();
      v2, v65, v66, v67, v68, v69, v70, v71;
LABEL_31:

      return v2;
    }

    v34 = v33;
    v35 = v82;
    v36 = sub_1005E3810(v34, &unk_100938870, off_1008D4128);
    if (v4)
    {
      v2, v37, v38, v39, v40, v41, v42, v43;
      v10, v72, v73, v74, v75, v76, v77, v78;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v82;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003754D0();
      v2 = v82;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v79)
    {
      goto LABEL_38;
    }
  }

  sub_10036E024(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v82;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943720, &unk_1007A4020);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10066EF78(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FA5C(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EFCA4(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v79 = v26;
  while (1)
  {
    if (v81)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v82 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v82];
    if (!v33)
    {
      v57 = v82;
      v10, v58, v59, v60, v61, v62, v63, v64;

      _convertNSErrorToError(_:)();
      swift_willThrow();
      v2, v65, v66, v67, v68, v69, v70, v71;
LABEL_31:

      return v2;
    }

    v34 = v33;
    v35 = v82;
    v36 = sub_1005E3810(v34, &unk_10093F790, off_1008D4158);
    if (v4)
    {
      v2, v37, v38, v39, v40, v41, v42, v43;
      v10, v72, v73, v74, v75, v76, v77, v78;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v82;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003754E4();
      v2 = v82;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v79)
    {
      goto LABEL_38;
    }
  }

  sub_10036E038(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v82;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943760, &unk_100797FA0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10066F334(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FA70(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F01A0(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v79 = v26;
  while (1)
  {
    if (v81)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v82 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v82];
    if (!v33)
    {
      v57 = v82;
      v10, v58, v59, v60, v61, v62, v63, v64;

      _convertNSErrorToError(_:)();
      swift_willThrow();
      v2, v65, v66, v67, v68, v69, v70, v71;
LABEL_31:

      return v2;
    }

    v34 = v33;
    v35 = v82;
    v36 = sub_1005E3810(v34, &qword_100944EC8, off_1008D41F0);
    if (v4)
    {
      v2, v37, v38, v39, v40, v41, v42, v43;
      v10, v72, v73, v74, v75, v76, v77, v78;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v82;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003754F8();
      v2 = v82;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v79)
    {
      goto LABEL_38;
    }
  }

  sub_10036E04C(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v82;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_1009437A0, &unk_1007A4090);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10066F6F0(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FA84(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F069C(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v79 = v26;
  while (1)
  {
    if (v81)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v82 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v82];
    if (!v33)
    {
      v57 = v82;
      v10, v58, v59, v60, v61, v62, v63, v64;

      _convertNSErrorToError(_:)();
      swift_willThrow();
      v2, v65, v66, v67, v68, v69, v70, v71;
LABEL_31:

      return v2;
    }

    v34 = v33;
    v35 = v82;
    v36 = sub_1005E3810(v34, &unk_100944ED0, off_1008D41A0);
    if (v4)
    {
      v2, v37, v38, v39, v40, v41, v42, v43;
      v10, v72, v73, v74, v75, v76, v77, v78;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v82;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_10037550C();
      v2 = v82;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v79)
    {
      goto LABEL_38;
    }
  }

  sub_10036E060(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v82;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_1009437E0, &unk_100797FB0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10066FAAC(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FA98(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F0B98(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v79 = v26;
  while (1)
  {
    if (v81)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v82 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v82];
    if (!v33)
    {
      v57 = v82;
      v10, v58, v59, v60, v61, v62, v63, v64;

      _convertNSErrorToError(_:)();
      swift_willThrow();
      v2, v65, v66, v67, v68, v69, v70, v71;
LABEL_31:

      return v2;
    }

    v34 = v33;
    v35 = v82;
    v36 = sub_1005E3810(v34, &qword_100939DF0, off_1008D4188);
    if (v4)
    {
      v2, v37, v38, v39, v40, v41, v42, v43;
      v10, v72, v73, v74, v75, v76, v77, v78;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v82;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100375520();
      v2 = v82;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v79)
    {
      goto LABEL_38;
    }
  }

  sub_10036E074(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v82;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943820, &unk_1007A4100);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10066FE68(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10038FAAC(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F1094(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v80 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v79 = v26;
  while (1)
  {
    if (v81)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v82 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v82];
    if (!v33)
    {
      v57 = v82;
      v10, v58, v59, v60, v61, v62, v63, v64;

      _convertNSErrorToError(_:)();
      swift_willThrow();
      v2, v65, v66, v67, v68, v69, v70, v71;
LABEL_31:

      return v2;
    }

    v34 = v33;
    v35 = v82;
    v36 = sub_1005E3810(v34, &qword_100940C50, off_1008D41C8);
    if (v4)
    {
      v2, v37, v38, v39, v40, v41, v42, v43;
      v10, v72, v73, v74, v75, v76, v77, v78;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v82;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100375534();
      v2 = v82;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v79)
    {
      goto LABEL_38;
    }
  }

  sub_10036E088(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v82;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_1009438A0, &unk_1007A4170);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100670224(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_10039054C(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005ECAEC(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v73 = v10 & 0xFFFFFFFFFFFFFF8;
  v74 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v72 = v26;
  while (1)
  {
    if (v74)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v73 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v75 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v75];
    if (!v33)
    {
      v57 = v75;

      _convertNSErrorToError(_:)();
      swift_willThrow();

      v10, v58, v59, v60, v61, v62, v63, v64;
LABEL_31:
      v2, v65, v66, v67, v68, v69, v70, v71;
      return v2;
    }

    v34 = v33;
    v35 = v75;
    v36 = sub_1005E3810(v34, &qword_1009399F0, off_1008D4120);
    if (v4)
    {
      v10, v37, v38, v39, v40, v41, v42, v43;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v75;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100376284();
      v2 = v75;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v72)
    {
      goto LABEL_38;
    }
  }

  sub_10036FA80(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v75;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943950, &unk_1007A4200);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006705DC(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390560(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F1590(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v73 = v10 & 0xFFFFFFFFFFFFFF8;
  v74 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v72 = v26;
  while (1)
  {
    if (v74)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v73 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v75 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v75];
    if (!v33)
    {
      v57 = v75;

      _convertNSErrorToError(_:)();
      swift_willThrow();

      v10, v58, v59, v60, v61, v62, v63, v64;
LABEL_31:
      v2, v65, v66, v67, v68, v69, v70, v71;
      return v2;
    }

    v34 = v33;
    v35 = v75;
    v36 = sub_1005E3810(v34, &qword_100942E50, off_1008D41E0);
    if (v4)
    {
      v10, v37, v38, v39, v40, v41, v42, v43;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v75;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_100376298();
      v2 = v75;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v72)
    {
      goto LABEL_38;
    }
  }

  sub_10036FA94(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v75;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_100943260, &qword_100797F38);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100670994(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390574(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F1A8C(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v73 = v10 & 0xFFFFFFFFFFFFFF8;
  v74 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v72 = v26;
  while (1)
  {
    if (v74)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v73 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v75 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v75];
    if (!v33)
    {
      v57 = v75;

      _convertNSErrorToError(_:)();
      swift_willThrow();

      v10, v58, v59, v60, v61, v62, v63, v64;
LABEL_31:
      v2, v65, v66, v67, v68, v69, v70, v71;
      return v2;
    }

    v34 = v33;
    v35 = v75;
    v36 = sub_1005E3810(v34, &qword_10094F150, off_1008D4178);
    if (v4)
    {
      v10, v37, v38, v39, v40, v41, v42, v43;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v75;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003762AC();
      v2 = v75;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v72)
    {
      goto LABEL_38;
    }
  }

  sub_10036FAA8(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v75;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_1009432F0, &qword_1007B4D80);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100670D4C(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390CD0(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F1F88(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
LABEL_35:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_36:
      v10, v18, v19, v20, v21, v22, v23, v24;
      return v2;
    }

LABEL_7:
    v27 = 0;
    v73 = v10 & 0xFFFFFFFFFFFFFF8;
    v74 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v74)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v27 >= *(v73 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v10 + 8 * v27 + 32);
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          if (!v26)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }
      }

      v75 = 0;
      v32 = v30;
      v33 = [v32 remObjectIDWithError:&v75];
      if (!v33)
      {
        v58 = v75;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        v10, v59, v60, v61, v62, v63, v64, v65;
LABEL_29:
        v2, v66, v67, v68, v69, v70, v71, v72;
        return v2;
      }

      v34 = v33;
      v35 = v75;
      v36 = sub_1005E60F0(v34);
      if (v4)
      {
        v10, v37, v38, v39, v40, v41, v42, v43;

        goto LABEL_29;
      }

      v44 = v36;
      v4 = v10;
      v10 = v26;

      v45 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v2;
      v47 = sub_100393C74();
      v49 = *v2->clientIdentity;
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_32;
      }

      v53 = v48;
      if (*&v2->clientIdentity[8] >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = v47;
          sub_100377D18();
          v47 = v57;
        }
      }

      else
      {
        sub_100372774(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_100393C74();
        if ((v53 & 1) != (v54 & 1))
        {
          sub_1000F5104(&unk_100944000, &unk_100798010);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v26 = v10;
      v2 = v75;
      v10 = v4;
      if (v53)
      {
        v28 = *&v75->clientIdentity[40];
        v29 = *(v28 + 8 * v47);
        *(v28 + 8 * v47) = v45;

        v4 = 0;
      }

      else
      {
        *&v75->storeProvider[8 * (v47 >> 6) + 2] |= 1 << v47;
        *(*&v2->clientIdentity[32] + 8 * v47) = v44;
        *(*&v2->clientIdentity[40] + 8 * v47) = v45;

        v55 = *v2->clientIdentity;
        v51 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v51)
        {
          goto LABEL_33;
        }

        v4 = 0;
        *v2->clientIdentity = v56;
      }

      ++v27;
      if (v31 == v26)
      {
        goto LABEL_36;
      }
    }
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006710F4(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390CE4(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F2474(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
LABEL_35:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_36:
      v10, v18, v19, v20, v21, v22, v23, v24;
      return v2;
    }

LABEL_7:
    v27 = 0;
    v73 = v10 & 0xFFFFFFFFFFFFFF8;
    v74 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v74)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v27 >= *(v73 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v10 + 8 * v27 + 32);
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          if (!v26)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }
      }

      v75 = 0;
      v32 = v30;
      v33 = [v32 remObjectIDWithError:&v75];
      if (!v33)
      {
        v58 = v75;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        v10, v59, v60, v61, v62, v63, v64, v65;
LABEL_29:
        v2, v66, v67, v68, v69, v70, v71, v72;
        return v2;
      }

      v34 = v33;
      v35 = v75;
      v36 = sub_1005E6E68(v34);
      if (v4)
      {
        v10, v37, v38, v39, v40, v41, v42, v43;

        goto LABEL_29;
      }

      v44 = v36;
      v4 = v10;
      v10 = v26;

      v45 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v2;
      v47 = sub_100393C74();
      v49 = *v2->clientIdentity;
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_32;
      }

      v53 = v48;
      if (*&v2->clientIdentity[8] >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = v47;
          sub_10037812C();
          v47 = v57;
        }
      }

      else
      {
        sub_100372BA0(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_100393C74();
        if ((v53 & 1) != (v54 & 1))
        {
          sub_1000F5104(&unk_1009433D0, &unk_100797F50);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v26 = v10;
      v2 = v75;
      v10 = v4;
      if (v53)
      {
        v28 = *&v75->clientIdentity[40];
        v29 = *(v28 + 8 * v47);
        *(v28 + 8 * v47) = v45;

        v4 = 0;
      }

      else
      {
        *&v75->storeProvider[8 * (v47 >> 6) + 2] |= 1 << v47;
        *(*&v2->clientIdentity[32] + 8 * v47) = v44;
        *(*&v2->clientIdentity[40] + 8 * v47) = v45;

        v55 = *v2->clientIdentity;
        v51 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v51)
        {
          goto LABEL_33;
        }

        v4 = 0;
        *v2->clientIdentity = v56;
      }

      ++v27;
      if (v31 == v26)
      {
        goto LABEL_36;
      }
    }
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_10067149C(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390CF8(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F2960(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
LABEL_35:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_36:
      v10, v18, v19, v20, v21, v22, v23, v24;
      return v2;
    }

LABEL_7:
    v27 = 0;
    v73 = v10 & 0xFFFFFFFFFFFFFF8;
    v74 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v74)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v27 >= *(v73 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v10 + 8 * v27 + 32);
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          if (!v26)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }
      }

      v75 = 0;
      v32 = v30;
      v33 = [v32 remObjectIDWithError:&v75];
      if (!v33)
      {
        v58 = v75;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        v10, v59, v60, v61, v62, v63, v64, v65;
LABEL_29:
        v2, v66, v67, v68, v69, v70, v71, v72;
        return v2;
      }

      v34 = v33;
      v35 = v75;
      v36 = sub_1005E7BE0(v34);
      if (v4)
      {
        v10, v37, v38, v39, v40, v41, v42, v43;

        goto LABEL_29;
      }

      v44 = v36;
      v4 = v10;
      v10 = v26;

      v45 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v2;
      v47 = sub_100393C74();
      v49 = *v2->clientIdentity;
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_32;
      }

      v53 = v48;
      if (*&v2->clientIdentity[8] >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = v47;
          sub_100378140();
          v47 = v57;
        }
      }

      else
      {
        sub_100372BB4(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_100393C74();
        if ((v53 & 1) != (v54 & 1))
        {
          sub_1000F5104(&unk_100943420, &unk_1007A3DC0);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v26 = v10;
      v2 = v75;
      v10 = v4;
      if (v53)
      {
        v28 = *&v75->clientIdentity[40];
        v29 = *(v28 + 8 * v47);
        *(v28 + 8 * v47) = v45;

        v4 = 0;
      }

      else
      {
        *&v75->storeProvider[8 * (v47 >> 6) + 2] |= 1 << v47;
        *(*&v2->clientIdentity[32] + 8 * v47) = v44;
        *(*&v2->clientIdentity[40] + 8 * v47) = v45;

        v55 = *v2->clientIdentity;
        v51 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v51)
        {
          goto LABEL_33;
        }

        v4 = 0;
        *v2->clientIdentity = v56;
      }

      ++v27;
      if (v31 == v26)
      {
        goto LABEL_36;
      }
    }
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_100671844(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D0C(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F2E4C(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
LABEL_35:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_36:
      v10, v18, v19, v20, v21, v22, v23, v24;
      return v2;
    }

LABEL_7:
    v27 = 0;
    v73 = v10 & 0xFFFFFFFFFFFFFF8;
    v74 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v74)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v27 >= *(v73 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v10 + 8 * v27 + 32);
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          if (!v26)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }
      }

      v75 = 0;
      v32 = v30;
      v33 = [v32 remObjectIDWithError:&v75];
      if (!v33)
      {
        v58 = v75;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        v10, v59, v60, v61, v62, v63, v64, v65;
LABEL_29:
        v2, v66, v67, v68, v69, v70, v71, v72;
        return v2;
      }

      v34 = v33;
      v35 = v75;
      v36 = sub_1005E8958(v34);
      if (v4)
      {
        v10, v37, v38, v39, v40, v41, v42, v43;

        goto LABEL_29;
      }

      v44 = v36;
      v4 = v10;
      v10 = v26;

      v45 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v2;
      v47 = sub_100393C74();
      v49 = *v2->clientIdentity;
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_32;
      }

      v53 = v48;
      if (*&v2->clientIdentity[8] >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = v47;
          sub_100378154();
          v47 = v57;
        }
      }

      else
      {
        sub_100372BC8(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_100393C74();
        if ((v53 & 1) != (v54 & 1))
        {
          sub_1000F5104(&unk_100943470, &unk_100797F60);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v26 = v10;
      v2 = v75;
      v10 = v4;
      if (v53)
      {
        v28 = *&v75->clientIdentity[40];
        v29 = *(v28 + 8 * v47);
        *(v28 + 8 * v47) = v45;

        v4 = 0;
      }

      else
      {
        *&v75->storeProvider[8 * (v47 >> 6) + 2] |= 1 << v47;
        *(*&v2->clientIdentity[32] + 8 * v47) = v44;
        *(*&v2->clientIdentity[40] + 8 * v47) = v45;

        v55 = *v2->clientIdentity;
        v51 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v51)
        {
          goto LABEL_33;
        }

        v4 = 0;
        *v2->clientIdentity = v56;
      }

      ++v27;
      if (v31 == v26)
      {
        goto LABEL_36;
      }
    }
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_100671BEC(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D20(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F3338(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
LABEL_35:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_36:
      v10, v18, v19, v20, v21, v22, v23, v24;
      return v2;
    }

LABEL_7:
    v27 = 0;
    v73 = v10 & 0xFFFFFFFFFFFFFF8;
    v74 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v74)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v27 >= *(v73 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v10 + 8 * v27 + 32);
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          if (!v26)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }
      }

      v75 = 0;
      v32 = v30;
      v33 = [v32 remObjectIDWithError:&v75];
      if (!v33)
      {
        v58 = v75;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        v10, v59, v60, v61, v62, v63, v64, v65;
LABEL_29:
        v2, v66, v67, v68, v69, v70, v71, v72;
        return v2;
      }

      v34 = v33;
      v35 = v75;
      v36 = sub_1005E96B8(v34);
      if (v4)
      {
        v10, v37, v38, v39, v40, v41, v42, v43;

        goto LABEL_29;
      }

      v44 = v36;
      v4 = v10;
      v10 = v26;

      v45 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v2;
      v47 = sub_100393C74();
      v49 = *v2->clientIdentity;
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_32;
      }

      v53 = v48;
      if (*&v2->clientIdentity[8] >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = v47;
          sub_100378168();
          v47 = v57;
        }
      }

      else
      {
        sub_100372BDC(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_100393C74();
        if ((v53 & 1) != (v54 & 1))
        {
          sub_1000F5104(&unk_1009434C0, &unk_1007A3E50);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v26 = v10;
      v2 = v75;
      v10 = v4;
      if (v53)
      {
        v28 = *&v75->clientIdentity[40];
        v29 = *(v28 + 8 * v47);
        *(v28 + 8 * v47) = v45;

        v4 = 0;
      }

      else
      {
        *&v75->storeProvider[8 * (v47 >> 6) + 2] |= 1 << v47;
        *(*&v2->clientIdentity[32] + 8 * v47) = v44;
        *(*&v2->clientIdentity[40] + 8 * v47) = v45;

        v55 = *v2->clientIdentity;
        v51 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v51)
        {
          goto LABEL_33;
        }

        v4 = 0;
        *v2->clientIdentity = v56;
      }

      ++v27;
      if (v31 == v26)
      {
        goto LABEL_36;
      }
    }
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_100671F94(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D34(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EE3B8(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v73 = v10 & 0xFFFFFFFFFFFFFF8;
  v74 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v72 = v26;
  while (1)
  {
    if (v74)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v73 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v75 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v75];
    if (!v33)
    {
      v57 = v75;

      _convertNSErrorToError(_:)();
      swift_willThrow();

      v10, v58, v59, v60, v61, v62, v63, v64;
LABEL_31:
      v2, v65, v66, v67, v68, v69, v70, v71;
      return v2;
    }

    v34 = v33;
    v35 = v75;
    v36 = sub_1005E3810(v34, &unk_10093F770, off_1008D41E8);
    if (v4)
    {
      v10, v37, v38, v39, v40, v41, v42, v43;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v75;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_10037817C();
      v2 = v75;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v72)
    {
      goto LABEL_38;
    }
  }

  sub_100372BF0(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v75;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&qword_10094F310, &qword_100797F78);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10067234C(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D48(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005F3824(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
LABEL_35:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_36:
      v10, v18, v19, v20, v21, v22, v23, v24;
      return v2;
    }

LABEL_7:
    v27 = 0;
    v73 = v10 & 0xFFFFFFFFFFFFFF8;
    v74 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v74)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v27 >= *(v73 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v10 + 8 * v27 + 32);
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          if (!v26)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }
      }

      v75 = 0;
      v32 = v30;
      v33 = [v32 remObjectIDWithError:&v75];
      if (!v33)
      {
        v58 = v75;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        v10, v59, v60, v61, v62, v63, v64, v65;
LABEL_29:
        v2, v66, v67, v68, v69, v70, v71, v72;
        return v2;
      }

      v34 = v33;
      v35 = v75;
      v36 = sub_1005EA438(v34);
      if (v4)
      {
        v10, v37, v38, v39, v40, v41, v42, v43;

        goto LABEL_29;
      }

      v44 = v36;
      v4 = v10;
      v10 = v26;

      v45 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v2;
      v47 = sub_100393C74();
      v49 = *v2->clientIdentity;
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_32;
      }

      v53 = v48;
      if (*&v2->clientIdentity[8] >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = v47;
          sub_100378190();
          v47 = v57;
        }
      }

      else
      {
        sub_100372C04(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_100393C74();
        if ((v53 & 1) != (v54 & 1))
        {
          sub_1000F5104(&unk_10094F390, &unk_100797F80);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v26 = v10;
      v2 = v75;
      v10 = v4;
      if (v53)
      {
        v28 = *&v75->clientIdentity[40];
        v29 = *(v28 + 8 * v47);
        *(v28 + 8 * v47) = v45;

        v4 = 0;
      }

      else
      {
        *&v75->storeProvider[8 * (v47 >> 6) + 2] |= 1 << v47;
        *(*&v2->clientIdentity[32] + 8 * v47) = v44;
        *(*&v2->clientIdentity[40] + 8 * v47) = v45;

        v55 = *v2->clientIdentity;
        v51 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v51)
        {
          goto LABEL_33;
        }

        v4 = 0;
        *v2->clientIdentity = v56;
      }

      ++v27;
      if (v31 == v26)
      {
        goto LABEL_36;
      }
    }
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006726F4(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D5C(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EC0F4(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (!v3)
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
LABEL_35:
      v2 = _swiftEmptyDictionarySingleton;
LABEL_36:
      v10, v18, v19, v20, v21, v22, v23, v24;
      return v2;
    }

LABEL_7:
    v27 = 0;
    v73 = v10 & 0xFFFFFFFFFFFFFF8;
    v74 = v10 & 0xC000000000000001;
    v2 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v74)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v27 >= *(v73 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v10 + 8 * v27 + 32);
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          if (!v26)
          {
            goto LABEL_35;
          }

          goto LABEL_7;
        }
      }

      v75 = 0;
      v32 = v30;
      v33 = [v32 remObjectIDWithError:&v75];
      if (!v33)
      {
        v58 = v75;

        _convertNSErrorToError(_:)();
        swift_willThrow();

        v10, v59, v60, v61, v62, v63, v64, v65;
LABEL_29:
        v2, v66, v67, v68, v69, v70, v71, v72;
        return v2;
      }

      v34 = v33;
      v35 = v75;
      v36 = sub_1005E2A38(v34);
      if (v4)
      {
        v10, v37, v38, v39, v40, v41, v42, v43;

        goto LABEL_29;
      }

      v44 = v36;
      v4 = v10;
      v10 = v26;

      v45 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v2;
      v47 = sub_100393C74();
      v49 = *v2->clientIdentity;
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_32;
      }

      v53 = v48;
      if (*&v2->clientIdentity[8] >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = v47;
          sub_1003781A4();
          v47 = v57;
        }
      }

      else
      {
        sub_100372C18(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_100393C74();
        if ((v53 & 1) != (v54 & 1))
        {
          sub_1000F5104(&unk_1009436D0, &unk_100797F90);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v26 = v10;
      v2 = v75;
      v10 = v4;
      if (v53)
      {
        v28 = *&v75->clientIdentity[40];
        v29 = *(v28 + 8 * v47);
        *(v28 + 8 * v47) = v45;

        v4 = 0;
      }

      else
      {
        *&v75->storeProvider[8 * (v47 >> 6) + 2] |= 1 << v47;
        *(*&v2->clientIdentity[32] + 8 * v47) = v44;
        *(*&v2->clientIdentity[40] + 8 * v47) = v45;

        v55 = *v2->clientIdentity;
        v51 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v51)
        {
          goto LABEL_33;
        }

        v4 = 0;
        *v2->clientIdentity = v56;
      }

      ++v27;
      if (v31 == v26)
      {
        goto LABEL_36;
      }
    }
  }

  return v2;
}

_TtC7remindd19RDXPCStorePerformer *sub_100672A9C(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!*(a1 + 16))
  {
    return sub_100390D70(&_swiftEmptyArrayStorage);
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  v8 = a2;
  sub_1005EC5F0(a1, 0, 1, 0, v7);
  v10 = v9;
  v7, v11, v12, v13, v14, v15, v16, v17;
  if (v3)
  {
    return v2;
  }

  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_37:
    v2 = _swiftEmptyDictionarySingleton;
LABEL_38:
    v10, v18, v19, v20, v21, v22, v23, v24;
    return v2;
  }

LABEL_7:
  v27 = 0;
  v73 = v10 & 0xFFFFFFFFFFFFFF8;
  v74 = v10 & 0xC000000000000001;
  v2 = _swiftEmptyDictionarySingleton;
  v72 = v26;
  while (1)
  {
    if (v74)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 >= *(v73 + 16))
      {
        goto LABEL_33;
      }

      v30 = *(v10 + 8 * v27 + 32);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    v75 = 0;
    v32 = v30;
    v33 = [v32 remObjectIDWithError:&v75];
    if (!v33)
    {
      v57 = v75;

      _convertNSErrorToError(_:)();
      swift_willThrow();

      v10, v58, v59, v60, v61, v62, v63, v64;
LABEL_31:
      v2, v65, v66, v67, v68, v69, v70, v71;
      return v2;
    }

    v34 = v33;
    v35 = v75;
    v36 = sub_1005E3810(v34, &unk_100938880, off_1008D41A8);
    if (v4)
    {
      v10, v37, v38, v39, v40, v41, v42, v43;

      goto LABEL_31;
    }

    v44 = v36;
    v4 = v10;

    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v2;
    v10 = sub_100393C74();
    v48 = *v2->clientIdentity;
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_34;
    }

    v51 = v47;
    if (*&v2->clientIdentity[8] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v75;
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1003781B8();
      v2 = v75;
      if (v51)
      {
LABEL_8:
        v28 = *&v2->clientIdentity[40];
        v29 = *(v28 + 8 * v10);
        *(v28 + 8 * v10) = v45;

        goto LABEL_9;
      }
    }

LABEL_22:
    *&v2->storeProvider[8 * (v10 >> 6) + 2] |= 1 << v10;
    *(*&v2->clientIdentity[32] + 8 * v10) = v44;
    *(*&v2->clientIdentity[40] + 8 * v10) = v45;

    v54 = *v2->clientIdentity;
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_35;
    }

    *v2->clientIdentity = v56;
LABEL_9:
    ++v27;
    v10 = v4;
    v4 = 0;
    if (v31 == v72)
    {
      goto LABEL_38;
    }
  }

  sub_100372C2C(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_100393C74();
  if ((v51 & 1) == (v53 & 1))
  {
    v10 = v52;
    v2 = v75;
    if (v51)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  sub_1000F5104(&unk_10094F300, &unk_100797FD0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100672E54(char a1)
{
  result = 0x44497463656A626FLL;
  switch(a1)
  {
    case 1:
      return 0xD000000000000012;
    case 2:
    case 12:
    case 23:
      v4 = 5;
      return v4 | 0xD000000000000012;
    case 3:
      return 0x6F54636E79536164;
    case 4:
      return 0x654B687375506164;
    case 5:
    case 11:
      v4 = 9;
      return v4 | 0xD000000000000012;
    case 6:
      return 0x65526B6C75426164;
    case 7:
      return 0x616C707369446164;
    case 8:
      return 0xD000000000000016;
    case 9:
      return 0x6461655273496164;
    case 10:
      return 0x756D6D4973496164;
    case 13:
      return 0x70756F72477369;
    case 14:
      return 0xD000000000000012;
    case 15:
      return 1701667182;
    case 16:
      return 0x726F6C6F63;
    case 17:
      return 0x626D456567646162;
    case 18:
    case 24:
    case 37:
      return 0xD00000000000001CLL;
    case 19:
      return 0xD000000000000024;
    case 20:
      return 0x4C797265636F7267;
    case 21:
      return 0xD000000000000023;
    case 22:
    case 38:
      return 0xD000000000000019;
    case 25:
      return 0xD000000000000020;
    case 26:
      return 0xD000000000000018;
    case 27:
      v4 = 13;
      return v4 | 0xD000000000000012;
    case 28:
      return 0x6574616C706D6574;
    case 29:
    case 30:
      return 0x774F646572616873;
    case 31:
      return 0xD000000000000012;
    case 32:
      v3 = 1918986355;
      goto LABEL_29;
    case 33:
      return 0x73656572616873;
    case 34:
      return 0xD000000000000013;
    case 35:
      v3 = 1953656691;
LABEL_29:
      result = v3 | 0x53676E6900000000;
      break;
    case 36:
      result = 0x614464656E6E6970;
      break;
    case 39:
      result = 0xD000000000000027;
      break;
    case 40:
    case 41:
      result = 0xD000000000000030;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1006732C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v109 = a4;
  v120 = type metadata accessor for UUID();
  v9 = *(v120 - 8);
  __chkstk_darwin(v120, v10);
  v110 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptyDictionarySingleton;
  v122 = _swiftEmptyDictionarySingleton;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (a1 + 32);
    do
    {
      v15 = *v14;
      sub_1006738C0(&v122, v15);
      if (v4)
      {

        v122, v99, v100, v101, v102, v103, v104, v105;
        return;
      }

      ++v14;
      --v13;
    }

    while (v13);
    v12 = v122;
  }

  v106 = &_swiftEmptyArrayStorage;
  v122 = &_swiftEmptyArrayStorage;
  v16 = [objc_opt_self() subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
  sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v116 = *(v17 + 16);
  if (!v116)
  {
LABEL_47:
    v12, v18, v19, v20, v21, v22, v23, v24;
    v17, v92, v93, v94, v95, v96, v97, v98;
    return;
  }

  v25 = 0;
  v115 = v17 + 32;
  v119 = v9 + 32;
  if (a3)
  {
    v26 = 0;
  }

  else
  {
    v26 = a2;
  }

  v113 = v26;
  v27 = &selRef_accountStatusWithCompletionHandler_;
  v107 = v17;
  v108 = v12;
  while (v25 < *(v17 + 16))
  {
    v118 = v25;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (([ObjCClassFromMetadata respondsToSelector:v27[146]] & 1) == 0)
    {
      goto LABEL_53;
    }

    v29 = [ObjCClassFromMetadata v27[146]];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (*v12->clientIdentity)
    {
      v40 = sub_100005F4C(v30, v32);
      v42 = v41;
      v32, v41, v43, v44, v45, v46, v47, v48;
      if ((v42 & 1) == 0)
      {
        goto LABEL_12;
      }

      v49 = *(*&v12->clientIdentity[40] + 8 * v40);
      v50 = *(v49 + 16);
      if (!v50)
      {
        goto LABEL_12;
      }

      v112 = v5;
      v121 = &_swiftEmptyArrayStorage;

      sub_100253258(0, v50, 0);
      v51 = v121;
      v52 = 32;
      v53 = v110;
      do
      {
        v54 = *(v49 + v52);
        v55 = [v54 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v121 = v51;
        v56 = v53;
        v58 = *(v51 + 16);
        v57 = *(v51 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_100253258((v57 > 1), v58 + 1, 1);
          v51 = v121;
        }

        *(v51 + 16) = v58 + 1;
        (*(v9 + 32))(v51 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v58, v56, v120);
        v52 += 8;
        --v50;
        v53 = v56;
      }

      while (v50);
      v49, v59, v60, v61, v62, v63, v64, v65;
      v66 = sub_1001A59A4(v51);

      KeyPath = swift_getKeyPath();
      sub_1003942EC(v66);
      v69 = v68;
      v66, v70, v71, v72, v73, v74, v75, v76;
      v77 = sub_10042D814(KeyPath, v69);

      if (v113 < 0)
      {
        goto LABEL_52;
      }

      v78 = v77;
      if (v109)
      {
        v79.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v79.super.isa = 0;
      }

      v80 = [ObjCClassFromMetadata ic_resultsMatchingPredicate:v78 sortDescriptors:0 resultType:0 fetchBatchSize:v113 propertiesToFetch:0 relationshipKeyPathsForPrefetching:v79.super.isa context:v117];
      v111 = v78;

      sub_1000F5104(&unk_10093AF30, &qword_100798648);
      v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v121 = &_swiftEmptyArrayStorage;
      if (v81 >> 62)
      {
        v89 = _CocoaArrayWrapper.endIndex.getter();
        if (v89)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v89 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v89)
        {
LABEL_28:
          v90 = 0;
          v114 = &_swiftEmptyArrayStorage;
          do
          {
            v91 = v90;
            while (1)
            {
              if ((v81 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
                v90 = v91 + 1;
                if (__OFADD__(v91, 1))
                {
                  goto LABEL_49;
                }
              }

              else
              {
                if (v91 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_50;
                }

                swift_unknownObjectRetain();
                v90 = v91 + 1;
                if (__OFADD__(v91, 1))
                {
LABEL_49:
                  __break(1u);
LABEL_50:
                  __break(1u);
                  goto LABEL_51;
                }
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v91;
              if (v90 == v89)
              {
                goto LABEL_45;
              }
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v114 = v121;
          }

          while (v90 != v89);
          goto LABEL_45;
        }
      }

      v114 = &_swiftEmptyArrayStorage;
LABEL_45:
      v81, v82, v83, v84, v85, v86, v87, v88;
      sub_100272294(v114);

      v5 = v112;
      v17 = v107;
      v12 = v108;
      goto LABEL_12;
    }

    v32, v33, v34, v35, v36, v37, v38, v39;
LABEL_12:
    v25 = v118 + 1;
    v27 = &selRef_accountStatusWithCompletionHandler_;
    if (v118 + 1 == v116)
    {
      v106 = v122;
      goto LABEL_47;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_1006738C0(void *a1, void *a2)
{
  v4 = sub_1005B0850();
  v5 = [a2 entityName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (!*v4->clientIdentity)
  {
    v8, v9, v10, v11, v12, v13, v14, v15;
    goto LABEL_10;
  }

  v16 = sub_100005F4C(v6, v8);
  v18 = v17;
  v8, v17, v19, v20, v21, v22, v23, v24;
  if ((v18 & 1) == 0)
  {
LABEL_10:
    v4, v25, v26, v27, v28, v29, v30, v31;
    v54 = objc_opt_self();
    _StringGuts.grow(_:)(52);
    v55._object = 0x80000001007FE410;
    v55._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v55);
    v56 = [a2 description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60._countAndFlagsBits = v57;
    v60._object = v59;
    String.append(_:)(v60);
    v59, v61, v62, v63, v64, v65, v66, v67;
    v68._countAndFlagsBits = 125;
    v68._object = 0xE100000000000000;
    String.append(_:)(v68);
    v69 = String._bridgeToObjectiveC()();
    0xE000000000000000, v70, v71, v72, v73, v74, v75, v76;
    [v54 internalErrorWithDebugDescription:v69];

    swift_willThrow();
    return;
  }

  v32 = (*&v4->clientIdentity[40] + 16 * v16);
  v34 = *v32;
  v33 = v32[1];

  v4, v35, v36, v37, v38, v39, v40, v41;
  if (*(*a1 + 16) && (sub_100005F4C(v34, v33), (v42 & 1) != 0))
  {
    v44 = sub_100261AF4(&v87, v34, v33);
    if (*v43)
    {
      v45 = v43;
      v46 = a2;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(*v45 + 16) >= *(*v45 + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v44)(&v87, 0);
    }

    else
    {
      (v44)(&v87, 0);
    }

    v33, v47, v48, v49, v50, v51, v52, v53;
  }

  else
  {
    sub_1000F5104(&unk_100943290, &unk_1007B4D40);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_100791300;
    *(v77 + 32) = a2;
    v78 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *a1;
    sub_1002C815C(v77, v34, v33, isUniquelyReferenced_nonNull_native);
    v33, v80, v81, v82, v83, v84, v85, v86;
    *a1 = v87;
  }
}

uint64_t sub_100673C3C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100672E54(*a1);
  v5 = v4;
  v6 = sub_100672E54(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_100673CC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100672E54(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_100673D28(uint64_t a1)
{
  sub_100672E54(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_100673D7C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100672E54(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_100673DDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100682CAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100673E0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100672E54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100673E38@<X0>(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100682CAC(a1, a2);
  *a3 = result;
  return result;
}

void sub_100673E90(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0x80000001007E9FB0;
  if (v2 != 5)
  {
    v4 = 0x80000001007E9FD0;
  }

  v5 = 0xEF4449746E756F63;
  if (v2 != 3)
  {
    v5 = 0xEC00000044497473;
  }

  if (*v1 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0x80000001007E9F50;
  if (v2 != 1)
  {
    v6 = 0x80000001007E9F70;
  }

  if (*v1)
  {
    v3 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  String.hash(into:)();

  v7, v8, v9, v10, v11, v12, v13, v14;
}

unint64_t sub_100673FCC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10068C22C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100673FFC@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0x49746E756F636361;
  v5 = 0x80000001007E9FB0;
  v6 = 0xD000000000000015;
  if (v2 != 5)
  {
    v6 = 0xD000000000000014;
    v5 = 0x80000001007E9FD0;
  }

  v7 = 0xEF4449746E756F63;
  v8 = 0x6341746E65726170;
  result = 0x694C746E65726170;
  if (v2 != 3)
  {
    v8 = 0x694C746E65726170;
    v7 = 0xEC00000044497473;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0x80000001007E9F50;
  v11 = 0xD00000000000001BLL;
  if (v2 == 1)
  {
    v11 = 0xD000000000000016;
  }

  else
  {
    v10 = 0x80000001007E9F70;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_100674100@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10068C22C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100674128()
{
  v1 = *v0;
  v2 = 0x49746E756F636361;
  v3 = 0xD000000000000015;
  if (v1 != 5)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x6341746E65726170;
  if (v1 != 3)
  {
    v4 = 0x694C746E65726170;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001BLL;
  if (v1 == 1)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100674238(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x736E6F6974636573;
  }

  else
  {
    v9 = 0x7265646E696D6572;
  }

  if (v8)
  {
    v10 = 0xE900000000000073;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (*a2)
  {
    v11 = 0x736E6F6974636573;
  }

  else
  {
    v11 = 0x7265646E696D6572;
  }

  if (*a2)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = 0xE900000000000073;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_1006742E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xE900000000000073;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

void sub_10067436C(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xE900000000000073;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_1006743E0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xE900000000000073;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_100674464(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1430, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1006744C4(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E696D6572;
  if (*v1)
  {
    v2 = 0x736E6F6974636573;
  }

  v3 = 0xE900000000000073;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_100674508(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1430, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

uint64_t sub_10067456C()
{
  if (*v0)
  {
    return 0x736E6F6974636573;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_1006745BC(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = "sectionIDsToUndelete";
  v10 = 0xD00000000000001FLL;
  if (v8 == 1)
  {
    v11 = 0xD00000000000001FLL;
  }

  else
  {
    v11 = 0xD00000000000001CLL;
  }

  if (v8 == 1)
  {
    v12 = "sectionIDsToUndelete";
  }

  else
  {
    v12 = "remindersICSDisplayOrderChanged";
  }

  if (*a1)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xD00000000000001CLL;
  }

  if (v8)
  {
    v14 = v12;
  }

  else
  {
    v14 = "lastUserAccessDate";
  }

  v15 = (v14 | 0x8000000000000000);
  if (*a2 != 1)
  {
    v10 = 0xD00000000000001CLL;
    v9 = "remindersICSDisplayOrderChanged";
  }

  if (*a2)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0xD00000000000001CLL;
  }

  if (*a2)
  {
    v17 = v9;
  }

  else
  {
    v17 = "lastUserAccessDate";
  }

  v18 = (v17 | 0x8000000000000000);
  if (v13 == v16 && v15 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v15, a2, v16, a4, a5, a6, a7, a8;
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

Swift::Int sub_100674690()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = "sectionIDsToUndelete";
  if (v1 != 1)
  {
    v2 = "remindersICSDisplayOrderChanged";
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "lastUserAccessDate";
  }

  String.hash(into:)();
  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_100674728(uint64_t a1)
{
  v2 = "sectionIDsToUndelete";
  if (*v1 != 1)
  {
    v2 = "remindersICSDisplayOrderChanged";
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "lastUserAccessDate";
  }

  String.hash(into:)();

  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_1006747AC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = "sectionIDsToUndelete";
  if (v2 != 1)
  {
    v3 = "remindersICSDisplayOrderChanged";
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = "lastUserAccessDate";
  }

  String.hash(into:)();
  (v4 | 0x8000000000000000), v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_100674840@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10068C278(*a1);
  *a2 = result;
  return result;
}

void sub_100674870(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001CLL;
  v3 = "sectionIDsToUndelete";
  v4 = 0xD00000000000001FLL;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001CLL;
    v3 = "remindersICSDisplayOrderChanged";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "lastUserAccessDate";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_1006748C8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10068C278(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1006748F0()
{
  v1 = 0xD00000000000001FLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

void *sub_100674954()
{
  result = sub_100674974();
  qword_1009752A0 = result;
  return result;
}

void *sub_100674974()
{
  v0 = 0;
  while (1)
  {
    v11 = *(&off_1008E21E0 + v0++ + 32);
    if (((1 << v11) & 0x31FFFDFFFFFLL) == 0)
    {
      goto LABEL_3;
    }

    v12 = sub_100672E54(v11);
    v14 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_100005F4C(v12, v14);
    v24 = _swiftEmptyDictionarySingleton[2];
    v25 = (v17 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v17;
    if (_swiftEmptyDictionarySingleton[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v16;
        sub_100373664();
        v16 = v33;
        if ((v28 & 1) == 0)
        {
LABEL_11:
          _swiftEmptyDictionarySingleton[(v16 >> 6) + 8] |= 1 << v16;
          v29 = (_swiftEmptyDictionarySingleton[6] + 16 * v16);
          *v29 = v12;
          v29[1] = v14;
          v30 = (_swiftEmptyDictionarySingleton[7] + 16 * v16);
          *v30 = v12;
          v30[1] = v14;
          v31 = _swiftEmptyDictionarySingleton[2];
          v26 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (v26)
          {
            goto LABEL_62;
          }

          _swiftEmptyDictionarySingleton[2] = v32;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_10036A8F0(v27, isUniquelyReferenced_nonNull_native);
      v16 = sub_100005F4C(v12, v14);
      if ((v28 & 1) != (v17 & 1))
      {
        goto LABEL_63;
      }
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_2:
    v1 = v16;
    v14, v17, v18, v19, v20, v21, v22, v23;
    v2 = (_swiftEmptyDictionarySingleton[7] + 16 * v1);
    v3 = v2[1];
    *v2 = v12;
    v2[1] = v14;
    v3, v4, v5, v6, v7, v8, v9, v10;
LABEL_3:
    if (v0 == 42)
    {
      v34 = 0;
      while (1)
      {
        v45 = &off_1008E2230 + v34++;
        v46 = v45[32];
        if (v46 == 5)
        {
          v47 = 0xD000000000000015;
        }

        else
        {
          v47 = 0xD000000000000014;
        }

        v48 = 0x80000001007E9FD0;
        if (v46 == 5)
        {
          v48 = 0x80000001007E9FB0;
        }

        v49 = 0x6341746E65726170;
        if (v46 != 3)
        {
          v49 = 0x694C746E65726170;
        }

        v50 = 0xEF4449746E756F63;
        if (v46 != 3)
        {
          v50 = 0xEC00000044497473;
        }

        v51 = 0xED0000746E756F63;
        if (v46 != 3)
        {
          v51 = 0xEA00000000007473;
        }

        if (v46 > 4)
        {
          v52 = v48;
        }

        else
        {
          v47 = v49;
          v52 = v50;
        }

        if (v46 <= 4)
        {
          v48 = v51;
        }

        v53 = 0xD000000000000016;
        if (v46 == 1)
        {
          v54 = 0x80000001007E9F50;
        }

        else
        {
          v53 = 0xD00000000000001BLL;
          v54 = 0x80000001007E9F70;
        }

        if (!v46)
        {
          v53 = 0x49746E756F636361;
          v54 = 0xE900000000000044;
        }

        if (v46 <= 2)
        {
          v55 = v53;
        }

        else
        {
          v55 = v47;
        }

        if (v46 <= 2)
        {
          v56 = v54;
        }

        else
        {
          v56 = v52;
        }

        if (v46 <= 2)
        {
          v57 = v54;
        }

        else
        {
          v57 = v48;
        }

        v58 = swift_isUniquelyReferenced_nonNull_native();
        v59 = sub_100005F4C(v55, v56);
        v67 = _swiftEmptyDictionarySingleton[2];
        v68 = (v60 & 1) == 0;
        v26 = __OFADD__(v67, v68);
        v69 = v67 + v68;
        if (v26)
        {
          __break(1u);
          goto LABEL_60;
        }

        v70 = v60;
        if (_swiftEmptyDictionarySingleton[3] >= v69)
        {
          if (v58)
          {
            goto LABEL_52;
          }

          v75 = v59;
          sub_100373664();
          v59 = v75;
          if ((v70 & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_16:
          v35 = v59;
          v56, v60, v61, v62, v63, v64, v65, v66;
          v36 = (_swiftEmptyDictionarySingleton[7] + 16 * v35);
          v37 = v36[1];
          *v36 = v55;
          v36[1] = v57;
          v37, v38, v39, v40, v41, v42, v43, v44;
          if (v34 == 7)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }

        else
        {
          sub_10036A8F0(v69, v58);
          v59 = sub_100005F4C(v55, v56);
          if ((v70 & 1) != (v60 & 1))
          {
            goto LABEL_63;
          }

LABEL_52:
          if (v70)
          {
            goto LABEL_16;
          }

LABEL_53:
          _swiftEmptyDictionarySingleton[(v59 >> 6) + 8] |= 1 << v59;
          v71 = (_swiftEmptyDictionarySingleton[6] + 16 * v59);
          *v71 = v55;
          v71[1] = v56;
          v72 = (_swiftEmptyDictionarySingleton[7] + 16 * v59);
          *v72 = v55;
          v72[1] = v57;
          v73 = _swiftEmptyDictionarySingleton[2];
          v26 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v26)
          {
            goto LABEL_61;
          }

          _swiftEmptyDictionarySingleton[2] = v74;
          if (v34 == 7)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }
      }
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100674D80(NSObject *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v877 = a4;
  v8 = *v4;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v851 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v869 = &v851 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v870 = &v851 - v19;
  v20 = type metadata accessor for UUID();
  v875 = *(v20 - 8);
  v876 = v20;
  __chkstk_darwin(v20, v21);
  v871 = &v851 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25 = __chkstk_darwin(v23, v24).n128_u64[0];
  v874 = &v851 - v26;
  v27 = a2;
  v28 = [a2 createResolutionTokenMapIfNecessary];
  v29 = [a1 resolutionTokenMap];
  if (!v29)
  {
    if (qword_1009366B0 != -1)
    {
      swift_once();
    }

    v531 = type metadata accessor for Logger();
    sub_100006654(v531, qword_10094EE30);
    v532 = a1;

    v533 = Logger.logObject.getter();
    v534 = static os_log_type_t.fault.getter();
    a3, v535, v536, v537, v538, v539, v540, v541;

    if (os_log_type_enabled(v533, v534))
    {
      v542 = swift_slowAlloc();
      v543 = swift_slowAlloc();
      v544 = swift_slowAlloc();
      *&v889[0] = v544;
      *v542 = 138543618;
      v545 = [v532 objectID];
      *(v542 + 4) = v545;
      v884 = v543;
      *v543 = v545;
      *(v542 + 6) = 2082;
      v546 = *(a3 + 16);
      v547 = &_swiftEmptyArrayStorage;
      if (v546)
      {
        v880 = v544;
        LODWORD(v881) = v534;
        v882 = v542;
        v883 = v533;
        v878 = v28;
        *&v887 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v546, 0);
        v547 = v887;
        v548 = (a3 + 32);
        v549 = *(v887 + 16);
        v550 = 16 * v549;
        do
        {
          v551 = *v548++;
          v552 = sub_100672E54(v551);
          v554 = v553;
          *&v887 = v547;
          v555 = *&v547->clientIdentity[8];
          if (v549 >= v555 >> 1)
          {
            sub_100026EF4((v555 > 1), v549 + 1, 1);
            v547 = v887;
          }

          *v547->clientIdentity = v549 + 1;
          v556 = v547 + v550;
          *(v556 + 4) = v552;
          *(v556 + 5) = v554;
          v550 += 16;
          ++v549;
          --v546;
        }

        while (v546);
        v28 = v878;
        v542 = v882;
        v533 = v883;
        LOBYTE(v534) = v881;
        v544 = v880;
      }

      v568 = Array.description.getter();
      v570 = v569;
      v547, v569, v571, v572, v573, v574, v575, v576;
      v577 = sub_10000668C(v568, v570, v889);
      v570, v578, v579, v580, v581, v582, v583, v584;
      *(v542 + 14) = v577;
      _os_log_impl(&_mh_execute_header, v533, v534, "REMListStorageCDIngestor: merge(storage:into cdList:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v542, 0x16u);
      sub_1000050A4(v884, &unk_100938E70, &unk_100797230);

      sub_10000607C(v544);
    }

    v585 = objc_opt_self();
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v587 = String._bridgeToObjectiveC()();
    [v585 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v587];

    swift_willThrow();
    return;
  }

  v867 = v13;
  v863 = v12;
  v859 = v8;
  v872 = v29;
  v37 = sub_100695FE0(v29, a3);
  v38 = *(a3 + 16);
  v881 = v37;
  v883 = a1;
  if (!v38)
  {
    v862 = 0;
    v873 = 0;
    v868 = 0;
    v41 = v28;
    p_isa = v27;
    goto LABEL_318;
  }

  v39 = 0;
  v866 = 0;
  v868 = 0;
  v873 = 0;
  v862 = 0;
  v40 = (a3 + 32);
  v857 = (v14 + 56);
  v852 = (v14 + 8);
  v865 = 0x80000001007E8E90;
  v864 = 0x80000001007E8F40;
  v860 = 0x80000001007E8F20;
  storeController = v875->storeController;
  v858 = "lastUserAccessDate";
  v875 = 0x80000001007E8C60;
  v856 = a3 + 33;
  v41 = v28;
  p_isa = v27;
  v879 = v27;
  v880 = (a3 + 32);
  v884 = v38;
  v878 = v41;
  while (2)
  {
    v43 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      v849 = a3;
      sub_100031A14(a1, v14);
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100031A14(v855, v854);

      return;
    }

    switch(v39[v40])
    {
      case 1:
LABEL_123:
        v14 = [a1 externalIdentifier];
        [p_isa setExternalIdentifier:v14];
        goto LABEL_214;
      case 2:
LABEL_151:
        v14 = [a1 externalModificationTag];
        [p_isa setExternalModificationTag:v14];
        goto LABEL_214;
      case 3:
LABEL_153:
        v14 = [a1 daSyncToken];
        [p_isa setDaSyncToken:v14];
        goto LABEL_214;
      case 4:
LABEL_171:
        v14 = [a1 daPushKey];
        [p_isa setDaPushKey:v14];
        goto LABEL_214;
      case 5:
LABEL_179:
        v14 = [a1 daExternalIdentificationTag];
        [p_isa setDaExternalIdentificationTag:v14];
        goto LABEL_214;
      case 6:
LABEL_125:
        v242 = [a1 daBulkRequests];
        if (v242)
        {
          v243 = v242;
          a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v244 = objc_opt_self();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;
          a3, v246, v247, v248, v249, v250, v251, v252;
          *&v889[0] = 0;
          v253 = [v244 dataWithPropertyList:isa format:100 options:0 error:v889];

          v254 = *&v889[0];
          if (v253)
          {
            v255 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v257 = v256;

            v14 = Data._bridgeToObjectiveC()().super.isa;
            p_isa = v879;
            [v879 setDaBulkRequests:v14];

            sub_10001BBA0(v255, v257);
            a1 = v883;
          }

          else
          {
            v14 = v254;
            _convertNSErrorToError(_:)();

            swift_willThrow();

            v882 = 0;
            a1 = v883;
            p_isa = v879;
          }

          v40 = v880;
          v37 = v881;
        }

        goto LABEL_292;
      case 7:
LABEL_181:
        [p_isa setDaDisplayOrder:{-[NSObject daDisplayOrder](a1, "daDisplayOrder")}];
        goto LABEL_292;
      case 8:
LABEL_131:
        [p_isa setDaIsEventOnlyContainer:{-[NSObject daIsEventOnlyContainer](a1, "daIsEventOnlyContainer")}];
        goto LABEL_292;
      case 9:
LABEL_121:
        [p_isa setDaIsReadOnly:{-[NSObject daIsReadOnly](a1, "daIsReadOnly")}];
        goto LABEL_292;
      case 0xA:
LABEL_134:
        [p_isa setDaIsImmutable:{-[NSObject daIsImmutable](a1, "daIsImmutable")}];
        goto LABEL_292;
      case 0xB:
LABEL_175:
        [p_isa setDaIsNotificationsCollection:{-[NSObject daIsNotificationsCollection](a1, "daIsNotificationsCollection")}];
        goto LABEL_292;
      case 0xC:
LABEL_136:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v258 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v259 = v875;
          v260 = sub_100005F4C(0xD000000000000017, v875);
          v262 = v261;
          v259, v261, v263, v264, v265, v266, v267, v268;
          if (v262)
          {
            v269 = *(*(v258 + 56) + 16 * v260 + 8);

            goto LABEL_147;
          }
        }

        else
        {
          v875, v30, v31, v32, v33, v34, v35, v36;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v270 = type metadata accessor for Logger();
        sub_100006654(v270, qword_100946C50);
        v271 = Logger.logObject.getter();
        v272 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v271, v272))
        {
          a3 = swift_slowAlloc();
          v273 = swift_slowAlloc();
          *&v889[0] = v273;
          *a3 = 136315138;
          v274 = v875;
          v275 = sub_10000668C(0xD000000000000017, v875, v889);
          v274, v276, v277, v278, v279, v280, v281, v282;
          *(a3 + 4) = v275;
          _os_log_impl(&_mh_execute_header, v271, v272, "Unknown ingestable key {key: %s}", a3, 0xCu);
          sub_10000607C(v273);
          p_isa = v879;
          v37 = v881;

          v41 = v878;

          v269 = v875;
          goto LABEL_148;
        }

        v269 = v875;
LABEL_147:
        v37 = v881;
LABEL_148:
        v283 = String._bridgeToObjectiveC()();
        v269, v284, v285, v286, v287, v288, v289, v290;
        v14 = [v41 mergeWithMap:v37 forKey:v283];

        if ((v14 & 1) == 0)
        {
          goto LABEL_290;
        }

        a1 = v883;
        [p_isa setMinimumSupportedVersion:{-[NSObject minimumSupportedVersion](v883, "minimumSupportedVersion")}];
        goto LABEL_291;
      case 0xD:
LABEL_177:
        [p_isa setIsGroup:{-[NSObject isGroup](a1, "isGroup")}];
        goto LABEL_292;
      case 0xE:
LABEL_96:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v201 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v202 = v865;
          v203 = sub_100005F4C(0xD000000000000012, v865);
          v205 = v204;
          v202, v204, v206, v207, v208, v209, v210, v211;
          if (v205)
          {
            v212 = *(*(v201 + 56) + 16 * v203 + 8);

            goto LABEL_107;
          }
        }

        else
        {
          v865, v30, v31, v32, v33, v34, v35, v36;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v213 = type metadata accessor for Logger();
        sub_100006654(v213, qword_100946C50);
        v214 = Logger.logObject.getter();
        v215 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v214, v215))
        {
          a3 = swift_slowAlloc();
          v216 = swift_slowAlloc();
          *&v889[0] = v216;
          *a3 = 136315138;
          v217 = v865;
          v218 = sub_10000668C(0xD000000000000012, v865, v889);
          v217, v219, v220, v221, v222, v223, v224, v225;
          *(a3 + 4) = v218;
          _os_log_impl(&_mh_execute_header, v214, v215, "Unknown ingestable key {key: %s}", a3, 0xCu);
          sub_10000607C(v216);
          p_isa = v879;
          v37 = v881;

          v41 = v878;

          v212 = v865;
          goto LABEL_108;
        }

        v212 = v865;
LABEL_107:
        v37 = v881;
LABEL_108:
        v226 = String._bridgeToObjectiveC()();
        v212, v227, v228, v229, v230, v231, v232, v233;
        v14 = [v41 mergeWithMap:v37 forKey:v226];

        if ((v14 & 1) == 0)
        {
          goto LABEL_290;
        }

        a1 = v883;
        v234 = [v883 lastUserAccessDate];
        v40 = v880;
        if (v234)
        {
          a3 = p_isa;
          v235 = a1;
          v236 = v870;
          v237 = v234;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v14 = Date._bridgeToObjectiveC()().super.isa;
          v238 = v236;
          a1 = v235;
          p_isa = a3;
          (*v852)(v238, v867);
        }

        else
        {
          v14 = 0;
        }

        [p_isa setLastUserAccessDate:v14];
        goto LABEL_214;
      case 0xF:
LABEL_198:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        a3 = 1701667182;
        v358 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v359 = sub_100005F4C(1701667182, 0xE400000000000000);
          v361 = v360;
          0xE400000000000000, v360, v362, v363, v364, v365, v366, v367;
          if (v361)
          {
            v368 = (*(v358 + 56) + 16 * v359);
            a3 = *v368;
            v369 = v368[1];

            goto LABEL_209;
          }
        }

        else
        {
          0xE400000000000000, v30, v31, v32, v33, v34, v35, v36;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v370 = type metadata accessor for Logger();
        sub_100006654(v370, qword_100946C50);
        v371 = Logger.logObject.getter();
        v372 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v371, v372))
        {
          v373 = v41;
          v374 = swift_slowAlloc();
          v375 = swift_slowAlloc();
          *&v889[0] = v375;
          *v374 = 136315138;
          v369 = 0xE400000000000000;
          v376 = sub_10000668C(1701667182, 0xE400000000000000, v889);
          0xE400000000000000, v377, v378, v379, v380, v381, v382, v383;
          *(v374 + 4) = v376;
          v384 = v881;
          _os_log_impl(&_mh_execute_header, v371, v372, "Unknown ingestable key {key: %s}", v374, 0xCu);
          sub_10000607C(v375);
          v37 = v384;

          v41 = v373;
          p_isa = v879;
          v40 = v880;
          a3 = 1701667182;

          goto LABEL_210;
        }

        v369 = 0xE400000000000000;
LABEL_209:
        v37 = v881;
LABEL_210:
        v14 = String._bridgeToObjectiveC()();
        v369, v385, v386, v387, v388, v389, v390, v391;
        v392 = [v41 mergeWithMap:v37 forKey:v14];

        if ((v392 & 1) == 0)
        {
          goto LABEL_215;
        }

        a1 = v883;
        v14 = [v883 name];
        if (!v14)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v394 = v393;
          v14 = String._bridgeToObjectiveC()();
          v395 = v394;
          a1 = v883;
          v395, v396, v397, v398, v399, v400, v401, v402;
        }

        [p_isa setName:v14];
        goto LABEL_214;
      case 0x10:
LABEL_183:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        a3 = 0x726F6C6F63;
        v323 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v324 = sub_100005F4C(0x726F6C6F63, 0xE500000000000000);
          v326 = v325;
          0xE500000000000000, v325, v327, v328, v329, v330, v331, v332;
          if (v326)
          {
            v333 = (*(v323 + 56) + 16 * v324);
            a3 = *v333;
            v334 = v333[1];

            goto LABEL_194;
          }
        }

        else
        {
          0xE500000000000000, v30, v31, v32, v33, v34, v35, v36;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v335 = type metadata accessor for Logger();
        sub_100006654(v335, qword_100946C50);
        v336 = Logger.logObject.getter();
        v337 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v336, v337))
        {
          v338 = v41;
          v339 = swift_slowAlloc();
          v340 = swift_slowAlloc();
          *&v889[0] = v340;
          *v339 = 136315138;
          v334 = 0xE500000000000000;
          v341 = sub_10000668C(0x726F6C6F63, 0xE500000000000000, v889);
          0xE500000000000000, v342, v343, v344, v345, v346, v347, v348;
          *(v339 + 4) = v341;
          v349 = v881;
          _os_log_impl(&_mh_execute_header, v336, v337, "Unknown ingestable key {key: %s}", v339, 0xCu);
          sub_10000607C(v340);
          v37 = v349;

          v41 = v338;
          p_isa = v879;
          v40 = v880;
          a3 = 0x726F6C6F63;

          goto LABEL_195;
        }

        v334 = 0xE500000000000000;
LABEL_194:
        v37 = v881;
LABEL_195:
        v14 = String._bridgeToObjectiveC()();
        v334, v350, v351, v352, v353, v354, v355, v356;
        v357 = [v41 mergeWithMap:v37 forKey:v14];

        if (v357)
        {
          a1 = v883;
          v14 = [v883 color];
          [p_isa setColor:v14];
LABEL_214:
        }

        else
        {
LABEL_215:
          a1 = v883;
        }

        goto LABEL_292;
      case 0x11:
LABEL_155:
        v291 = v37;
        a3 = v41;
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v292 = 0xEB000000006D656CLL;
        v293 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v294 = sub_100005F4C(0x626D456567646162, 0xEB000000006D656CLL);
          v296 = v295;
          0xEB000000006D656CLL, v295, v297, v298, v299, v300, v301, v302;
          if (v296)
          {
            v292 = *(*(v293 + 56) + 16 * v294 + 8);

            goto LABEL_166;
          }
        }

        else
        {
          0xEB000000006D656CLL, v30, v31, v32, v33, v34, v35, v36;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v303 = type metadata accessor for Logger();
        sub_100006654(v303, qword_100946C50);
        v304 = Logger.logObject.getter();
        v305 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v304, v305))
        {
          v306 = swift_slowAlloc();
          v855 = swift_slowAlloc();
          *&v889[0] = v855;
          *v306 = 136315138;
          v307 = sub_10000668C(0x626D456567646162, 0xEB000000006D656CLL, v889);
          0xEB000000006D656CLL, v308, v309, v310, v311, v312, v313, v314;
          *(v306 + 4) = v307;
          v291 = v881;
          _os_log_impl(&_mh_execute_header, v304, v305, "Unknown ingestable key {key: %s}", v306, 0xCu);
          sub_10000607C(v855);
        }

LABEL_166:
        v14 = String._bridgeToObjectiveC()();
        v292, v315, v316, v317, v318, v319, v320, v321;
        v322 = [a3 mergeWithMap:v291 forKey:v14];

        v37 = v291;
        if ((v322 & 1) == 0)
        {
          goto LABEL_169;
        }

        a1 = v883;
        v14 = [v883 badgeEmblem];
        v86 = "setBadgeEmblem:";
        goto LABEL_168;
      case 0x12:
LABEL_241:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v424 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v425 = v860;
          v426 = sub_100005F4C(0xD00000000000001CLL, v860);
          v428 = v427;
          v425, v427, v429, v430, v431, v432, v433, v434;
          if (v428)
          {
            v435 = *(*(v424 + 56) + 16 * v426 + 8);

            goto LABEL_252;
          }
        }

        else
        {
          v860, v30, v31, v32, v33, v34, v35, v36;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v436 = type metadata accessor for Logger();
        sub_100006654(v436, qword_100946C50);
        v437 = Logger.logObject.getter();
        v438 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v437, v438))
        {
          v439 = swift_slowAlloc();
          a3 = swift_slowAlloc();
          *&v889[0] = a3;
          *v439 = 136315138;
          v435 = v860;
          v440 = sub_10000668C(0xD00000000000001CLL, v860, v889);
          v435, v441, v442, v443, v444, v445, v446, v447;
          *(v439 + 4) = v440;
          _os_log_impl(&_mh_execute_header, v437, v438, "Unknown ingestable key {key: %s}", v439, 0xCu);
          sub_10000607C(a3);
          v41 = v878;
          p_isa = v879;

          v37 = v881;

          goto LABEL_253;
        }

        v435 = v860;
LABEL_252:
        v37 = v881;
LABEL_253:
        v448 = String._bridgeToObjectiveC()();
        v435, v449, v450, v451, v452, v453, v454, v455;
        v14 = [v41 mergeWithMap:v37 forKey:v448];

        if ((v14 & 1) == 0)
        {
          goto LABEL_290;
        }

        v14 = &selRef_setPublicLinkLastModifiedDate_;
        a1 = v883;
        v456 = [v883 shouldCategorizeGroceryItems];
        v40 = v880;
        if (v456)
        {
          v868 = [p_isa shouldCategorizeGroceryItems] ^ 1;
        }

        else
        {
          v868 = 0;
        }

        [p_isa setShouldCategorizeGroceryItems:{-[NSObject shouldCategorizeGroceryItems](a1, "shouldCategorizeGroceryItems")}];
        goto LABEL_292;
      case 0x13:
      case 0x15:
      case 0x19:
      case 0x25:
      case 0x28:
      case 0x29:
        goto LABEL_292;
      case 0x14:
LABEL_46:
        v124 = v37;
        a3 = v41;
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v125 = 0xEF4449656C61636FLL;
        v126 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v127 = sub_100005F4C(0x4C797265636F7267, 0xEF4449656C61636FLL);
          v129 = v128;
          0xEF4449656C61636FLL, v128, v130, v131, v132, v133, v134, v135;
          if (v129)
          {
            v125 = *(*(v126 + 56) + 16 * v127 + 8);

            goto LABEL_57;
          }
        }

        else
        {
          0xEF4449656C61636FLL, v30, v31, v32, v33, v34, v35, v36;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v136 = type metadata accessor for Logger();
        sub_100006654(v136, qword_100946C50);
        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v855 = swift_slowAlloc();
          *&v889[0] = v855;
          *v139 = 136315138;
          v140 = sub_10000668C(0x4C797265636F7267, 0xEF4449656C61636FLL, v889);
          0xEF4449656C61636FLL, v141, v142, v143, v144, v145, v146, v147;
          *(v139 + 4) = v140;
          v124 = v881;
          _os_log_impl(&_mh_execute_header, v137, v138, "Unknown ingestable key {key: %s}", v139, 0xCu);
          sub_10000607C(v855);
        }

LABEL_57:
        v14 = String._bridgeToObjectiveC()();
        v125, v148, v149, v150, v151, v152, v153, v154;
        v155 = [a3 mergeWithMap:v124 forKey:v14];

        v41 = a3;
        v37 = v124;
        if (v155)
        {
          a1 = v883;
          v14 = [v883 groceryLocaleID];
          p_isa = v879;
          [v879 setGroceryLocaleID:v14];

          goto LABEL_291;
        }

        p_isa = v879;
        v40 = v880;
        a1 = v883;
        goto LABEL_292;
      case 0x16:
LABEL_259:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v457 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v458 = v864;
          v459 = sub_100005F4C(0xD000000000000019, v864);
          v461 = v460;
          v458, v460, v462, v463, v464, v465, v466, v467;
          if (v461)
          {
            v468 = *(*(v457 + 56) + 16 * v459 + 8);

            goto LABEL_270;
          }
        }

        else
        {
          v864, v30, v31, v32, v33, v34, v35, v36;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v469 = type metadata accessor for Logger();
        sub_100006654(v469, qword_100946C50);
        v470 = Logger.logObject.getter();
        v471 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v470, v471))
        {
          a3 = swift_slowAlloc();
          v472 = swift_slowAlloc();
          *&v889[0] = v472;
          *a3 = 136315138;
          v473 = v864;
          v474 = sub_10000668C(0xD000000000000019, v864, v889);
          v473, v475, v476, v477, v478, v479, v480, v481;
          *(a3 + 4) = v474;
          _os_log_impl(&_mh_execute_header, v470, v471, "Unknown ingestable key {key: %s}", a3, 0xCu);
          sub_10000607C(v472);
          p_isa = v879;
          v37 = v881;

          v41 = v878;

          v468 = v864;
          goto LABEL_271;
        }

        v468 = v864;
LABEL_270:
        v37 = v881;
LABEL_271:
        v482 = String._bridgeToObjectiveC()();
        v468, v483, v484, v485, v486, v487, v488, v489;
        v14 = [v41 mergeWithMap:v37 forKey:v482];

        if ((v14 & 1) == 0)
        {
          goto LABEL_290;
        }

        v14 = &selRef_setPublicLinkLastModifiedDate_;
        a1 = v883;
        v490 = [v883 shouldAutoCategorizeItems];
        v40 = v880;
        if (v490)
        {
          v862 = [p_isa shouldAutoCategorizeItems] ^ 1;
        }

        else
        {
          v862 = 0;
        }

        [p_isa setShouldAutoCategorizeItems:{-[NSObject shouldAutoCategorizeItems](a1, "shouldAutoCategorizeItems")}];
        goto LABEL_292;
      case 0x17:
LABEL_173:
        [p_isa setShowingLargeAttachments:{-[NSObject showingLargeAttachments](a1, "showingLargeAttachments")}];
        goto LABEL_292;
      case 0x18:
LABEL_217:
        v403 = *(v877 + 16);
        v404 = v882;
        sub_100678ED4(*(v877 + 16));
        v854 = v407;
        v855 = v406;
        v882 = v404;
        if (v404)
        {

          return;
        }

        v853 = v405;
        v14 = v40;
        v408 = v879;
        v409 = [v879 createResolutionTokenMapIfNecessary];
        a3 = String._bridgeToObjectiveC()();
        v410 = [v409 mergeWithMap:v881 forKey:a3];

        if (v403)
        {

          if ((v410 & 1) == 0)
          {
            sub_100031A14(v855, v854);

            v41 = v878;
            p_isa = v879;
            goto LABEL_239;
          }

          v411 = v854;
          a3 = v855;
          sub_1001CB4B8(v855, v854);
          v412 = v411;
          p_isa = &v853->isa;
        }

        else
        {
          v413 = String._bridgeToObjectiveC()();
          v414 = [v408 valueForKey:v413];

          if (v414)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v887 = 0u;
            v888 = 0u;
          }

          v415 = v882;
          p_isa = &v853->isa;
          v37 = v409;
          v889[0] = v887;
          v889[1] = v888;
          if (*(&v888 + 1))
          {
            v416 = swift_dynamicCast();
            if (v416)
            {
              a1 = v885;
            }

            else
            {
              a1 = 0;
            }

            if (v416)
            {
              v14 = v886;
            }

            else
            {
              v14 = 0xF000000000000000;
            }
          }

          else
          {
            sub_1000050A4(v889, &qword_100939ED0, &qword_100791B10);
            a1 = 0;
            v14 = 0xF000000000000000;
          }

          *&v889[0] = 0;
          v417 = [v879 remObjectIDWithError:v889];
          a3 = *&v889[0];
          if (!v417)
          {
            goto LABEL_382;
          }

          v418 = v417;
          v882 = v37;
          v419 = *&v889[0];
          v420 = sub_1006A4484(p_isa, a1, v14, 0xD00000000000001CLL, (v858 | 0x8000000000000000), v418);
          if (v415)
          {

            sub_100031A14(v855, v854);
            sub_100031A14(a1, v14);

            return;
          }

          a3 = v420;
          v412 = v421;

          sub_100031A14(a1, v14);
          v882 = 0;
          v14 = v880;
          v411 = v854;
        }

        if (v412 >> 60 == 15)
        {
          sub_100031A14(v855, v411);

          v41 = v878;
          p_isa = v879;
        }

        else
        {
          v422 = Data._bridgeToObjectiveC()().super.isa;
          v423 = v879;
          [v879 setReminderIDsMergeableOrdering:v422];
          sub_100031A14(v855, v411);

          p_isa = v423;
          sub_100031A14(a3, v412);
          v41 = v878;
        }

LABEL_239:
        v37 = v881;
        a1 = v883;
        v40 = v14;
        goto LABEL_292;
      case 0x1A:
LABEL_114:
        if (qword_1009366B0 != -1)
        {
          swift_once();
        }

        v239 = type metadata accessor for Logger();
        sub_100006654(v239, qword_10094EE30);
        v14 = Logger.logObject.getter();
        v186 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v14, v186))
        {
          goto LABEL_119;
        }

        v240 = swift_slowAlloc();
        v241 = v41;
        v189 = v40;
        a3 = v241;
        v190 = v37;
        v191 = v240;
        *v240 = 0;
        v192 = "Actually really doing nothing for a merge on .reminderIDsOrderingHints";
        goto LABEL_118;
      case 0x1B:
LABEL_80:
        if (qword_1009366B0 != -1)
        {
          swift_once();
        }

        v185 = type metadata accessor for Logger();
        sub_100006654(v185, qword_10094EE30);
        v14 = Logger.logObject.getter();
        v186 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v14, v186))
        {
          goto LABEL_119;
        }

        v187 = swift_slowAlloc();
        v188 = v41;
        v189 = v40;
        a3 = v188;
        v190 = v37;
        v191 = v187;
        *v187 = 0;
        v192 = "Actually really doing nothing for a merge on .remindersICSDisplayOrderChanged";
LABEL_118:
        _os_log_impl(&_mh_execute_header, v14, v186, v192, v191, 2u);
        v37 = v190;
        v40 = v189;
        v41 = a3;

LABEL_119:

        a1 = v883;
        goto LABEL_292;
      case 0x1C:
        if (v43 == v884)
        {
          goto LABEL_308;
        }

        v52 = &v39[v856];
        while (2)
        {
          if (v43 >= v884)
          {
            goto LABEL_381;
          }

          v53 = v43 + 1;
          if (!__OFADD__(v43, 1))
          {
            switch(*v52)
            {
              case 1:
                v866 = 1;
                ++v43;
                goto LABEL_123;
              case 2:
                v866 = 1;
                ++v43;
                goto LABEL_151;
              case 3:
                v866 = 1;
                ++v43;
                goto LABEL_153;
              case 4:
                v866 = 1;
                ++v43;
                goto LABEL_171;
              case 5:
                v866 = 1;
                ++v43;
                goto LABEL_179;
              case 6:
                v866 = 1;
                ++v43;
                goto LABEL_125;
              case 7:
                v866 = 1;
                ++v43;
                goto LABEL_181;
              case 8:
                v866 = 1;
                ++v43;
                goto LABEL_131;
              case 9:
                v866 = 1;
                ++v43;
                goto LABEL_121;
              case 10:
                v866 = 1;
                ++v43;
                goto LABEL_134;
              case 11:
                v866 = 1;
                ++v43;
                goto LABEL_175;
              case 12:
                v866 = 1;
                ++v43;
                goto LABEL_136;
              case 13:
                v866 = 1;
                ++v43;
                goto LABEL_177;
              case 14:
                v866 = 1;
                ++v43;
                goto LABEL_96;
              case 15:
                v866 = 1;
                ++v43;
                goto LABEL_198;
              case 16:
                v866 = 1;
                ++v43;
                goto LABEL_183;
              case 17:
                v866 = 1;
                ++v43;
                goto LABEL_155;
              case 18:
                v866 = 1;
                ++v43;
                goto LABEL_241;
              case 19:
              case 21:
              case 25:
              case 37:
              case 40:
              case 41:
                v866 = 1;
                ++v43;
                goto LABEL_292;
              case 20:
                v866 = 1;
                ++v43;
                goto LABEL_46;
              case 22:
                v866 = 1;
                ++v43;
                goto LABEL_259;
              case 23:
                v866 = 1;
                ++v43;
                goto LABEL_173;
              case 24:
                v866 = 1;
                ++v43;
                goto LABEL_217;
              case 26:
                v866 = 1;
                ++v43;
                goto LABEL_114;
              case 27:
                v866 = 1;
                ++v43;
                goto LABEL_80;
              case 28:
                ++v43;
                ++v52;
                if (v53 == v884)
                {
                  goto LABEL_308;
                }

                continue;
              case 29:
                v866 = 1;
                ++v43;
                goto LABEL_87;
              case 30:
                v866 = 1;
                ++v43;
                goto LABEL_44;
              case 31:
                v866 = 1;
                ++v43;
                goto LABEL_42;
              case 32:
                v866 = 1;
                ++v43;
                goto LABEL_277;
              case 33:
                v866 = 1;
                ++v43;
                goto LABEL_85;
              case 34:
                v866 = 1;
                ++v43;
                goto LABEL_92;
              case 35:
                v866 = 1;
                ++v43;
                goto LABEL_17;
              case 36:
                v866 = 1;
                ++v43;
                goto LABEL_61;
              case 38:
                v866 = 1;
                ++v43;
                goto LABEL_284;
              case 39:
                v866 = 1;
                ++v43;
                goto LABEL_31;
              default:
                v866 = 1;
                ++v43;
                goto LABEL_6;
            }
          }

          goto LABEL_380;
        }

      case 0x1D:
LABEL_87:
        v194 = [a1 sharedOwnerID];
        if (v194)
        {
          v195 = v194;
          a3 = v41;
          v196 = a1;
          v197 = [v194 uuid];

          v198 = v37;
          v199 = v871;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          a1 = v196;
          v14 = UUID._bridgeToObjectiveC()().super.isa;
          v200 = v199;
          v37 = v198;
          v41 = a3;
          v40 = v880;
          (*storeController)(v200, v876);
        }

        else
        {
          v14 = 0;
        }

        [p_isa setSharedOwnerIdentifier:v14];
        goto LABEL_214;
      case 0x1E:
LABEL_44:
        v14 = [a1 sharedOwnerName];
        [p_isa setSharedOwnerName:v14];
        goto LABEL_214;
      case 0x1F:
LABEL_42:
        v14 = [a1 sharedOwnerAddress];
        [p_isa setSharedOwnerAddress:v14];
        goto LABEL_214;
      case 0x20:
LABEL_277:
        v491 = [a1 sharingStatus];
        v492 = 0x7FFFLL;
        if (v491 < 0x7FFF)
        {
          v492 = v491;
        }

        if (v492 <= -32768)
        {
          v493 = -32768;
        }

        else
        {
          v493 = v492;
        }

        [p_isa setSharingStatus:v493];
        goto LABEL_292;
      case 0x21:
LABEL_85:
        v193 = v882;
        sub_1006A4A44(a1, p_isa);
        goto LABEL_93;
      case 0x22:
LABEL_92:
        v193 = v882;
        sub_1006A5110(a1, p_isa);
LABEL_93:
        v882 = v193;
        if (v193)
        {
          goto LABEL_94;
        }

        goto LABEL_292;
      case 0x23:
LABEL_17:
        v54 = v37;
        a3 = v41;
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v55 = 0xEC000000656C7974;
        v56 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v57 = sub_100005F4C(0x53676E6974726F73, 0xEC000000656C7974);
          v59 = v58;
          0xEC000000656C7974, v58, v60, v61, v62, v63, v64, v65;
          if (v59)
          {
            v55 = *(*(v56 + 56) + 16 * v57 + 8);

            goto LABEL_28;
          }
        }

        else
        {
          0xEC000000656C7974, v30, v31, v32, v33, v34, v35, v36;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        sub_100006654(v66, qword_100946C50);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v855 = swift_slowAlloc();
          *&v889[0] = v855;
          *v69 = 136315138;
          v70 = sub_10000668C(0x53676E6974726F73, 0xEC000000656C7974, v889);
          0xEC000000656C7974, v71, v72, v73, v74, v75, v76, v77;
          *(v69 + 4) = v70;
          v54 = v881;
          _os_log_impl(&_mh_execute_header, v67, v68, "Unknown ingestable key {key: %s}", v69, 0xCu);
          sub_10000607C(v855);
        }

LABEL_28:
        v14 = String._bridgeToObjectiveC()();
        v55, v78, v79, v80, v81, v82, v83, v84;
        v85 = [a3 mergeWithMap:v54 forKey:v14];

        v37 = v54;
        if (v85)
        {
          a1 = v883;
          v14 = [v883 sortingStyle];
          v86 = "setSortingStyle:";
LABEL_168:
          p_isa = v879;
          [v879 v86];

          v40 = v880;
          v41 = a3;
        }

        else
        {
LABEL_169:
          p_isa = v879;
          v40 = v880;
          a1 = v883;
          v41 = a3;
        }

        goto LABEL_292;
      case 0x24:
LABEL_61:
        v156 = p_isa;
        v157 = v41;
        v158 = v37;
        v159 = [a1 pinnedDate];
        if (v159)
        {
          v160 = v863;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v161 = 0;
        }

        else
        {
          v161 = 1;
          v160 = v863;
        }

        v14 = v159 != 0;
        (*v857)(v160, v161, 1, v867);
        sub_1000050A4(v160, &unk_100938850, qword_100795AE0);
        [v156 setIsPinnedByCurrentUser:v14];
        a3 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        v162 = [v883 sharingStatus];
        if ((v162 - 2) < 3)
        {
          a1 = v883;
          v163 = v879;
          v40 = v880;
LABEL_75:
          v41 = v157;
          p_isa = v163;
          goto LABEL_292;
        }

        if (v162 > 1)
        {
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v179 = type metadata accessor for Logger();
          sub_100006654(v179, qword_10094EE30);
          v180 = v883;
          v14 = Logger.logObject.getter();
          v181 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v14, v181))
          {
            v182 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            *v182 = 138543618;
            v184 = [v180 objectID];
            *(v182 + 4) = v184;
            *v183 = v184;
            *(v182 + 12) = 2050;
            *(v182 + 14) = [v180 sharingStatus];

            _os_log_impl(&_mh_execute_header, v14, v181, "REMListStorageCDIngestor: merge(storage:into cdList:...) Unhandled sharingStatus {objectID: %{public}@, sharingStatus.rawValue: %{public}ld}", v182, 0x16u);
            sub_1000050A4(v183, &unk_100938E70, &unk_100797230);
          }

          else
          {
          }

LABEL_297:
          a1 = v883;
          p_isa = v879;
          v37 = v158;
          v41 = v878;
LABEL_291:
          v40 = v880;
        }

        else
        {
          sub_1006942C0(36);
          v165 = v164;
          v166 = String._bridgeToObjectiveC()();
          v165, v167, v168, v169, v170, v171, v172, v173;
          v14 = [v157 mergeWithMap:v37 forKey:v166];

          if (!v14)
          {
            a1 = v883;
            v163 = v879;
            v40 = v880;
            v37 = v881;
            goto LABEL_75;
          }

          a1 = v883;
          v174 = [v883 pinnedDate];
          a3 = v879;
          v40 = v880;
          if (v174)
          {
            v175 = a1;
            v176 = v869;
            v177 = v174;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v14 = Date._bridgeToObjectiveC()().super.isa;
            v178 = v176;
            a1 = v175;
            (*v852)(v178, v867);
          }

          else
          {
            v14 = 0;
          }

          v37 = v881;
          [a3 setPinnedDate:v14];

          v41 = v157;
          p_isa = a3;
        }

LABEL_292:
        if (v43 == v884)
        {
          if ((v866 & 1) == 0)
          {
            goto LABEL_318;
          }

          goto LABEL_308;
        }

        goto LABEL_293;
      case 0x26:
LABEL_284:
        v494 = [a1 unsavedSectionIDsOrdering];
        if (!v494)
        {
          goto LABEL_292;
        }

        a3 = v494;
        v14 = p_isa;
        v495 = a1;
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v496 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v497 = v882;
        sub_1005F8AE4(v496, 1);
        v882 = v497;
        if (!v497)
        {
          v496, v498, v499, v500, v501, v502, v503, v504;
          a1 = v495;
          p_isa = v14;
          goto LABEL_292;
        }

        v158 = v37;
        v496, v498, v499, v500, v501, v502, v503, v504;
        if (qword_1009366C0 != -1)
        {
          swift_once();
        }

        v505 = type metadata accessor for Logger();
        sub_100006654(v505, qword_10094EE60);
        v506 = v495;
        swift_errorRetain();
        a3 = Logger.logObject.getter();
        v14 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(a3, v14))
        {

          v882 = 0;
          goto LABEL_297;
        }

        v507 = swift_slowAlloc();
        v508 = swift_slowAlloc();
        v855 = swift_slowAlloc();
        *&v887 = v855;
        *v507 = 136446722;
        *&v889[0] = v859;
        swift_getMetatypeMetadata();
        v509 = String.init<A>(describing:)();
        LODWORD(v854) = v14;
        v511 = v510;
        v512 = sub_10000668C(v509, v510, &v887);
        v511, v513, v514, v515, v516, v517, v518, v519;
        *(v507 + 4) = v512;
        p_isa = v879;
        *(v507 + 12) = 2114;
        v520 = [v506 objectID];
        *(v507 + 14) = v520;
        *v508 = v520;
        *(v507 + 22) = 2082;
        swift_getErrorValue();
        v521 = Error.rem_errorDescription.getter();
        v14 = v522;
        v523 = sub_10000668C(v521, v522, &v887);
        v14, v524, v525, v526, v527, v528, v529, v530;
        *(v507 + 24) = v523;
        v37 = v881;
        _os_log_impl(&_mh_execute_header, a3, v854, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedSectionIDsOrdering' into 'cdList' {storage.objectID: %{public}@, error: %{public}s}", v507, 0x20u);
        sub_1000050A4(v508, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v41 = v878;
        v882 = 0;
LABEL_290:
        a1 = v883;
        goto LABEL_291;
      case 0x27:
LABEL_31:
        v87 = a1;
        v88 = v37;
        v89 = v87;
        v90 = [v87 unsavedMembershipsOfRemindersInSections];
        if (!v90)
        {
          goto LABEL_38;
        }

        a3 = v90;
        v14 = p_isa;
        v91 = v882;
        sub_1005EB8A8(v90, sub_10032D8A8, &unk_100938880, off_1008D41A8, &unk_10094F1B0, &qword_1007A4840);
        v882 = v91;
        if (v91)
        {
          if (qword_1009366C0 != -1)
          {
            swift_once();
          }

          v92 = type metadata accessor for Logger();
          sub_100006654(v92, qword_10094EE60);
          v93 = v89;
          swift_errorRetain();
          v14 = Logger.logObject.getter();
          v94 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v14, v94))
          {
            v95 = swift_slowAlloc();
            LODWORD(v854) = v94;
            v96 = v95;
            v97 = swift_slowAlloc();
            v855 = swift_slowAlloc();
            *&v887 = v855;
            *v96 = 136446722;
            *&v889[0] = v859;
            swift_getMetatypeMetadata();
            v98 = String.init<A>(describing:)();
            v853 = v14;
            v100 = v99;
            v101 = v93;
            v102 = sub_10000668C(v98, v99, &v887);
            v100, v103, v104, v105, v106, v107, v108, v109;
            *(v96 + 4) = v102;
            *(v96 + 12) = 2114;
            v110 = [v101 objectID];
            *(v96 + 14) = v110;
            *v97 = v110;
            *(v96 + 22) = 2082;
            swift_getErrorValue();
            v111 = Error.rem_errorDescription.getter();
            v113 = v112;
            v114 = sub_10000668C(v111, v112, &v887);
            v113, v115, v116, v117, v118, v119, v120, v121;
            *(v96 + 24) = v114;
            v122 = v853;
            _os_log_impl(&_mh_execute_header, v853, v854, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedMembershipsOfRemindersInSections' into 'cdList' {storage.objectID: %{public}@, error: %{public}s}", v96, 0x20u);
            sub_1000050A4(v97, &unk_100938E70, &unk_100797230);

            v14 = v855;
            swift_arrayDestroy();

            v37 = v881;
            a1 = v883;

            v41 = v878;
            p_isa = v879;
            v882 = 0;
            goto LABEL_291;
          }

          v882 = 0;
          v41 = v878;
          p_isa = v879;
          v40 = v880;
        }

        else
        {

LABEL_38:
          v41 = v878;
        }

        v123 = v89;
        v37 = v88;
        a1 = v123;
        goto LABEL_292;
      default:
LABEL_6:
        a3 = v40;
        v44 = p_isa;
        v45 = v37;
        v46 = a1;
        v47 = [a1 objectID];
        v48 = [v47 uuid];

        v49 = v874;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = UUID._bridgeToObjectiveC()().super.isa;
        (*storeController)(v49, v876);
        v50 = v44;
        [v44 setIdentifier:v14];

        if (v43 != v884)
        {
          v873 = 1;
          v37 = v45;
          v41 = v878;
          v40 = a3;
          v51 = v50;
          a1 = v46;
          p_isa = v51;
LABEL_293:
          v39 = v43;
          if (v43 >= v884)
          {
            goto LABEL_381;
          }

          continue;
        }

        v873 = 1;
        v37 = v45;
        v41 = v878;
        v848 = v50;
        a1 = v46;
        p_isa = v848;
        if ((v866 & 1) == 0)
        {
          goto LABEL_318;
        }

LABEL_308:
        v557 = p_isa;
        v558 = v41;
        v559 = v37;
        v560 = [a1 templateID];
        if (!v560)
        {
          a1 = v883;
          v41 = v558;
          p_isa = v557;
          goto LABEL_318;
        }

        v561 = v560;
        v562 = [v557 account];
        if (!v562)
        {
          goto LABEL_367;
        }

        v563 = v562;
        v564 = [v562 remObjectID];
        v565 = [v883 accountID];
        v566 = v565;
        if (!v564)
        {
          if (!v565)
          {
            goto LABEL_369;
          }

LABEL_365:

          goto LABEL_366;
        }

        if (!v565)
        {
          v566 = v564;
          goto LABEL_365;
        }

        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v567 = static NSObject.== infix(_:_:)();

        if (v567)
        {
          goto LABEL_369;
        }

LABEL_366:

        v557 = v879;
LABEL_367:
        v767 = [v557 storeControllerManagedObjectContext];
        if (!v767 || (v768 = v767, v769 = objc_opt_self(), v770 = -[NSObject accountID](v883, "accountID"), v771 = [v770 uuid], v770, v772 = v874, static UUID._unconditionallyBridgeFromObjectiveC(_:)(), v771, UUID.uuidString.getter(), v774 = v773, (*storeController)(v772, v876), v775 = String._bridgeToObjectiveC()(), v774, v776, v777, v778, v779, v780, v781, v782, v563 = objc_msgSend(v769, "cloudKitAccountWithCKIdentifier:context:", v775, v768), v775, v768, !v563))
        {
          v884 = 0;
LABEL_374:
          v882 = objc_opt_self();
          *&v889[0] = 0;
          *(&v889[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(181);
          v789._countAndFlagsBits = 0xD000000000000082;
          v789._object = 0x80000001007FE110;
          String.append(_:)(v789);
          v790 = v883;
          v791 = [v883 objectID];
          v792 = [v791 description];
          v793 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v795 = v794;

          v796._countAndFlagsBits = v793;
          v796._object = v795;
          String.append(_:)(v796);
          v795, v797, v798, v799, v800, v801, v802, v803;

          v804._object = 0x80000001007F0200;
          v804._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v804);
          v805 = [v790 accountID];
          v806 = [v805 description];
          v807 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v809 = v808;

          v810._countAndFlagsBits = v807;
          v810._object = v809;
          String.append(_:)(v810);
          v809, v811, v812, v813, v814, v815, v816, v817;

          v818._object = 0x80000001007FE1A0;
          v818._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v818);
          v819 = [v561 description];
          v820 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v822 = v821;

          v823._countAndFlagsBits = v820;
          v823._object = v822;
          String.append(_:)(v823);
          v822, v824, v825, v826, v827, v828, v829, v830;
          v831._countAndFlagsBits = 125;
          v831._object = 0xE100000000000000;
          String.append(_:)(v831);
          v832 = *(&v889[0] + 1);
          v833 = String._bridgeToObjectiveC()();
          v832, v834, v835, v836, v837, v838, v839, v840;
          [v882 invalidParameterErrorWithDescription:v833];

          swift_willThrow();
          return;
        }

LABEL_369:
        v783 = v882;
        v784 = v563;
        v785 = [v784 accountTypeHost];
        v786 = [v785 isCloudKit];

        if (!v786)
        {
          v884 = v784;

          goto LABEL_374;
        }

        v787 = v883;
        v788 = [v883 objectID];
        sub_1006A57DC(v784, v561, v788);

        if (v783)
        {

          return;
        }

        v882 = 0;
        a1 = v787;
        v37 = v559;
        v41 = v558;
        p_isa = v879;
LABEL_318:
        if (![a1 shouldCategorizeGroceryItems])
        {
          v642 = [a1 shouldAutoCategorizeItems];
          v643 = v882;
          if (!v642)
          {
            goto LABEL_94;
          }

          if (v873 & 1 | ((v862 & 1) == 0))
          {
            v644 = [a1 unsavedReminderIDsForCategorization];
            if (v644)
            {
              v645 = v644;
              v591 = v37;
              v592 = v41;
              sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
              v593 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v646 = [p_isa account];
              if (v646)
              {
                v602 = v646;
                if ([p_isa shouldAutoCategorizeItems])
                {
                  v647 = [p_isa storeControllerManagedObjectContext];
                  if (v647)
                  {
                    v611 = v647;
                    v884 = v602;
                    v648 = [p_isa remObjectID];
                    if (v648)
                    {
                      v613 = v648;
                      if (v593 >> 62)
                      {
                        if (!_CocoaArrayWrapper.endIndex.getter())
                        {
                          goto LABEL_389;
                        }
                      }

                      else if (!*((v593 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_389;
                      }

                      v878 = v592;
                      sub_1000F5104(&unk_100936F40, &unk_100791B30);
                      v614 = v613;

                      v615 = v884;
                      v616 = sub_10018F9D4(v614, v593, 0, v884, v611);
                      if (v643)
                      {

                        v593, v649, v650, v651, v652, v653, v654, v655;
                        if (qword_1009366B0 != -1)
                        {
                          swift_once();
                        }

                        v656 = type metadata accessor for Logger();
                        sub_100006654(v656, qword_10094EE30);
                        v625 = v883;

                        swift_errorRetain();
                        v626 = Logger.logObject.getter();
                        v627 = static os_log_type_t.error.getter();
                        v593, v657, v658, v659, v660, v661, v662, v663;

                        if (os_log_type_enabled(v626, v627))
                        {
                          goto LABEL_345;
                        }

LABEL_385:
                        v593, v635, v636, v637, v638, v639, v640, v641;

                        goto LABEL_359;
                      }

LABEL_384:
                      v850 = v616;

                      swift_bridgeObjectRelease_n();
                      return;
                    }

LABEL_376:

                    goto LABEL_390;
                  }
                }

LABEL_360:
                v593, v603, v604, v605, v606, v607, v608, v609;

                goto LABEL_391;
              }

LABEL_361:
              v593, v595, v596, v597, v598, v599, v600, v601;
              goto LABEL_391;
            }

LABEL_94:

            return;
          }

          v740 = v882;
          sub_1006A69E0(p_isa);
          if (!v643)
          {
            goto LABEL_94;
          }

          v878 = v41;
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v741 = type metadata accessor for Logger();
          sub_100006654(v741, qword_10094EE30);
          v742 = a1;
          swift_errorRetain();
          v711 = Logger.logObject.getter();
          v712 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v711, v712))
          {
            v743 = swift_slowAlloc();
            v882 = v740;
            v714 = v743;
            v715 = swift_slowAlloc();
            *&v889[0] = swift_slowAlloc();
            *v714 = 136446722;
            v744 = sub_1001424F8(v859);
            v746 = v745;
            v747 = sub_10000668C(v744, v745, v889);
            v746, v748, v749, v750, v751, v752, v753, v754;
            *(v714 + 4) = v747;
            *(v714 + 12) = 2112;
            v755 = [v742 objectID];
            *(v714 + 14) = v755;
            *v715 = v755;
            *(v714 + 22) = 2080;
            swift_getErrorValue();
            v756 = Error.rem_errorDescription.getter();
            v758 = v757;
            v759 = sub_10000668C(v756, v757, v889);
            v758, v760, v761, v762, v763, v764, v765, v766;
            *(v714 + 24) = v759;
            v739 = "%{public}s: Failed to auto-categorize reminders in list after changing 'shouldAutoCategorizeItems' to 'true' {listObjectID: %@, error: %s}";
            goto LABEL_356;
          }

LABEL_358:

LABEL_359:

          return;
        }

        v588 = v882;
        if (!(v873 & 1 | ((v868 & 1) == 0)))
        {
          v708 = v882;
          sub_1006A5F00(p_isa);
          if (!v588)
          {
            goto LABEL_94;
          }

          v878 = v41;
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v709 = type metadata accessor for Logger();
          sub_100006654(v709, qword_10094EE30);
          v710 = a1;
          swift_errorRetain();
          v711 = Logger.logObject.getter();
          v712 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v711, v712))
          {
            v713 = swift_slowAlloc();
            v882 = v708;
            v714 = v713;
            v715 = swift_slowAlloc();
            *&v887 = swift_slowAlloc();
            *v714 = 136446722;
            *&v889[0] = v859;
            swift_getMetatypeMetadata();
            v716 = String.init<A>(describing:)();
            v718 = v717;
            v719 = sub_10000668C(v716, v717, &v887);
            v718, v720, v721, v722, v723, v724, v725, v726;
            *(v714 + 4) = v719;
            *(v714 + 12) = 2112;
            v727 = [v710 objectID];
            *(v714 + 14) = v727;
            *v715 = v727;
            *(v714 + 22) = 2080;
            swift_getErrorValue();
            v728 = Error.rem_errorDescription.getter();
            v730 = v729;
            v731 = sub_10000668C(v728, v729, &v887);
            v730, v732, v733, v734, v735, v736, v737, v738;
            *(v714 + 24) = v731;
            v739 = "%{public}s: Failed to auto-categorize reminders in list after changing 'shouldCategorizeGroceryItems' to 'true' {listObjectID: %@, error: %s}";
LABEL_356:
            _os_log_impl(&_mh_execute_header, v711, v712, v739, v714, 0x20u);
            sub_1000050A4(v715, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            return;
          }

          goto LABEL_358;
        }

        v589 = [a1 unsavedReminderIDsForCategorization];
        if (!v589)
        {
          goto LABEL_94;
        }

        v590 = v589;
        v591 = v37;
        v592 = v41;
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v593 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v594 = [p_isa account];
        if (!v594)
        {
          goto LABEL_361;
        }

        v602 = v594;
        if (([p_isa shouldCategorizeGroceryItems] & 1) == 0)
        {
          goto LABEL_360;
        }

        v610 = [p_isa storeControllerManagedObjectContext];
        if (!v610)
        {
          goto LABEL_360;
        }

        v611 = v610;
        v884 = v602;
        v612 = [p_isa remObjectID];
        if (!v612)
        {
          goto LABEL_376;
        }

        v613 = v612;
        if (v593 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_389;
          }

LABEL_327:
          v878 = v592;
          sub_1000F5104(&unk_100939E10, &qword_1007970D0);
          v614 = v613;

          v615 = v884;
          v616 = sub_100015620(v613, v593, 0, v884, v611);
          if (v588)
          {

            v593, v617, v618, v619, v620, v621, v622, v623;
            if (qword_1009366B0 != -1)
            {
              swift_once();
            }

            v624 = type metadata accessor for Logger();
            sub_100006654(v624, qword_10094EE30);
            v625 = v883;

            swift_errorRetain();
            v626 = Logger.logObject.getter();
            v627 = static os_log_type_t.error.getter();
            v593, v628, v629, v630, v631, v632, v633, v634;

            if (os_log_type_enabled(v626, v627))
            {
LABEL_345:
              v664 = swift_slowAlloc();
              v665 = swift_slowAlloc();
              v883 = swift_slowAlloc();
              *&v889[0] = v883;
              *v664 = 136446978;
              v666 = sub_1001424F8(v859);
              LODWORD(v882) = v627;
              v668 = v667;
              v669 = sub_10000668C(v666, v667, v889);
              v880 = v626;
              v670 = v669;
              v668, v671, v672, v673, v674, v675, v676, v677;
              *(v664 + 4) = v670;
              *(v664 + 12) = 2112;
              v678 = [v625 objectID];
              *(v664 + 14) = v678;
              *v665 = v678;
              *(v664 + 22) = 2080;
              v679 = Array.description.getter();
              v681 = v680;
              v593, v680, v682, v683, v684, v685, v686, v687;
              v688 = sub_10000668C(v679, v681, v889);
              v681, v689, v690, v691, v692, v693, v694, v695;
              *(v664 + 24) = v688;
              *(v664 + 32) = 2080;
              swift_getErrorValue();
              v696 = Error.rem_errorDescription.getter();
              v698 = v697;
              v699 = sub_10000668C(v696, v697, v889);
              v698, v700, v701, v702, v703, v704, v705, v706;
              *(v664 + 34) = v699;
              v707 = v880;
              _os_log_impl(&_mh_execute_header, v880, v882, "%{public}s: Failed to auto-categorize specific reminders in list {listObjectID: %@, unsavedReminderIDsForCategorization: %s, error: %s}", v664, 0x2Au);
              sub_1000050A4(v665, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              return;
            }

            goto LABEL_385;
          }

          goto LABEL_384;
        }

        if (*((v593 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_327;
        }

LABEL_389:

LABEL_390:
        v593, v841, v842, v843, v844, v845, v846, v847;

LABEL_391:
        return;
    }
  }
}

void sub_100678ED4(char a1)
{
  if (a1)
  {
    if ([v1 hasDeserializedReminderIDsMergeableOrdering] && (v2 = objc_msgSend(v1, "reminderIDsMergeableOrdering")) != 0)
    {
      v3 = v2;
      v20 = 0;
      v4 = [objc_opt_self() reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:v2 error:&v20];
      v5 = v20;
      if (v4)
      {
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        if (qword_1009366B0 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_100006654(v6, qword_10094EE30);
        v7 = v1;
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *v10 = 138412290;
          v12 = [v7 objectID];
          *(v10 + 4) = v12;
          *v11 = v12;
          _os_log_impl(&_mh_execute_header, v8, v9, "Serialized to json data from REMListStorage.reminderIDsMergeableOrdering during ingesting. {objectID: %@}", v10, 0xCu);
          sub_1000050A4(v11, &unk_100938E70, &unk_100797230);
        }
      }

      else
      {
        v19 = v5;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      v14 = [v1 reminderIDsMergeableOrderingData];
      if (v14)
      {
        v15 = v14;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v16 = objc_opt_self();
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v18 = String._bridgeToObjectiveC()();
        [v16 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v18];

        swift_willThrow();
      }
    }
  }

  else
  {
    v13 = [v1 reminderIDsMergeableOrdering];
  }
}

void sub_100679214(void *a1, char a2, void *a3, id a4, char *a5)
{
  *&v234 = *v5;
  v11 = type metadata accessor for REMJSONDeserializationError();
  *&v13 = __chkstk_darwin(v11, v12).n128_u64[0];
  if (a2)
  {
    if ([a4 shouldUpdateSectionsOrdering])
    {
      v14 = [a3 storeControllerManagedObjectContext];
      if (v14)
      {
        v233 = v14;
        v231 = a3;
        v230 = a4;
        v15 = [a4 objectID];
        if (qword_1009365B0 != -1)
        {
          swift_once();
        }

        v16 = sub_100596AB8(v15, 0);
        type metadata accessor for REMCDListSection();
        v232 = v15;
        v17 = [objc_allocWithZone(NSFetchRequest) init];
        v18 = [swift_getObjCClassFromMetadata() entity];
        [v17 setEntity:v18];

        [v17 setAffectedStores:0];
        [v17 setPredicate:v16];

        [v17 setPropertiesToFetch:0];
        [v17 setRelationshipKeyPathsForPrefetching:0];
        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v17 setSortDescriptors:isa];

        v20 = v233;
        v21 = NSManagedObjectContext.fetch<A>(_:)();
        if (v235)
        {
        }

        else
        {
          v67 = v21;

          v68 = v231;
          v69 = [v231 sectionIDsOrderingAsData];
          if (v69)
          {
            v70 = v69;
            v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v72;

            sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
            static REMJSONRepresentable.fromJSONData(_:)();
            sub_10001BBA0(v71, v73);
            v20 = v233;
            v108 = REMOrderedIdentifierMap.reorder<A>(objects:)();
            v67, v109, v110, v111, v112, v113, v114, v115;

            v67 = v108;
            v68 = v231;
          }

          v116 = sub_100271240(v67);
          v67, v117, v118, v119, v120, v121, v122, v123;
          v124 = objc_allocWithZone(NSMutableOrderedSet);
          v125 = Array._bridgeToObjectiveC()().super.isa;
          v116, v126, v127, v128, v129, v130, v131, v132;
          v133 = [v124 initWithArray:v125];

          [v68 setSections:v133];
        }
      }
    }

    return;
  }

  v227 = a1;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  v234 = xmmword_100796900;
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v23 = inited;
  v240 = inited;
  v24 = [a3 parentAccount];
  if (!v24 || (v25 = v24, isUniquelyReferenced_nonNull_native = [v24 accountTypeHost], v25, !isUniquelyReferenced_nonNull_native))
  {
    isUniquelyReferenced_nonNull_native = [objc_allocWithZone(REMAccountTypeHost) initWithType:0];
  }

  if (a5[17])
  {
    LODWORD(v230) = 0;
  }

  else
  {
    if ([isUniquelyReferenced_nonNull_native isLocal])
    {
      v27 = a3;
      [a4 remindersICSDisplayOrderChanged];
      LODWORD(v230) = 1;
      goto LABEL_19;
    }

    LODWORD(v230) = [isUniquelyReferenced_nonNull_native isCalDav];
  }

  v27 = a3;
  if (([a4 remindersICSDisplayOrderChanged] & 1) == 0 && !v230)
  {
    LODWORD(v230) = 0;
    v28 = v23;
    goto LABEL_20;
  }

LABEL_19:
  v29 = swift_initStackObject();
  *(v29 + 16) = v234;
  *(v29 + 32) = swift_getKeyPath();
  *(v29 + 40) = swift_getKeyPath();
  sub_100271A80(v29);
  v28 = v240;
LABEL_20:
  sub_1003EEC48(v27, v28);
  v30 = &selRef_isEmpty;
  if ([a4 remindersICSDisplayOrderChanged])
  {
    v228 = v28;
    v229 = isUniquelyReferenced_nonNull_native;
    if (qword_1009366B0 != -1)
    {
LABEL_104:
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    v32 = sub_100006654(v31, qword_10094EE30);
    v33 = a4;
    *&v234 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v30;
      v38 = swift_slowAlloc();
      *v36 = 138412290;
      v39 = [(RDXPCStorePerformer *)v33 remObjectID];
      *(v36 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v34, v35, "Some reminders have changes in .icsDisplayOrder so ICS display orders is taking precedence as the true sort hint - {list: %@}", v36, 0xCu);
      sub_1000050A4(v38, &unk_100938E70, &unk_100797230);
      v30 = v37;
    }

    v40 = [v33 v30[195]];
    if (!v40)
    {
      v228, v41, v42, v43, v44, v45, v46, v47;
      v57 = v33;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v239[0] = v62;
        *v60 = 138543618;
        v63 = [(RDXPCStorePerformer *)v57 objectID];
        *(v60 + 4) = v63;
        *v61 = v63;
        *(v60 + 12) = 2082;
        *(v60 + 14) = sub_10000668C(0x7265646E696D6572, 0xE900000000000073, v239);
        _os_log_impl(&_mh_execute_header, v58, v59, "REMListStorageCDIngestor: mutateOrdering(...) cannot proceed because storage.reminderIDsMergeableOrdering is nil {objectID: %{public}@, key: %{public}s}", v60, 0x16u);
        sub_1000050A4(v61, &unk_100938E70, &unk_100797230);

        sub_10000607C(v62);
      }

      v64 = objc_opt_self();
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v66 = String._bridgeToObjectiveC()();
      [v64 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v66];

      swift_willThrow();
      return;
    }

    v48 = v40;
    v49 = sub_1006AA380(v40, v227);
    if (v235)
    {
      v228, v50, v51, v52, v53, v54, v55, v56;

      return;
    }

    v74 = v50;
    if (v49)
    {
      v75 = [(RDXPCStorePerformer *)v33 resolutionTokenMap];
      if (!v75)
      {
        v228, v76, v77, v78, v79, v80, v81, v82;
        v95 = v33;
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          *&v239[0] = v100;
          *v98 = 138543618;
          v101 = [(RDXPCStorePerformer *)v95 objectID];
          *(v98 + 4) = v101;
          *v99 = v101;
          *(v98 + 12) = 2082;
          *(v98 + 14) = sub_10000668C(0x7265646E696D6572, 0xE900000000000073, v239);
          _os_log_impl(&_mh_execute_header, v96, v97, "REMListStorageCDIngestor: mutateOrdering(...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v98, 0x16u);
          sub_1000050A4(v99, &unk_100938E70, &unk_100797230);

          sub_10000607C(v100);
        }

        v102 = objc_opt_self();
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        v103 = swift_getObjCClassFromMetadata();
        v104 = String._bridgeToObjectiveC()();
        [v102 unexpectedNilPropertyWithClass:v103 property:v104];

        swift_willThrow();
        return;
      }

      v83 = v75;
      sub_1006942C0(24);
      v85 = v84;
      v86 = v74;
      v87 = String._bridgeToObjectiveC()();
      v85, v88, v89, v90, v91, v92, v93, v94;
      [v83 updateForKey:v87];

      v74 = v86;
      [(RDXPCStorePerformer *)v33 setReminderIDsMergeableOrdering:v86];
      if ([v227 firstObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v237 = 0u;
        v238 = 0u;
      }

      v239[0] = v237;
      v239[1] = v238;
      if (*(&v238 + 1))
      {
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        if (swift_dynamicCast())
        {
          v105 = [v236 list];
          if (v105)
          {
            v106 = v105;
            *&v234 = v236;
            isUniquelyReferenced_nonNull_native = v83;
            sub_100674D80(&v33->super, v105, &off_1008E32A8, a5);
            goto LABEL_101;
          }

          v107 = v83;
        }

        else
        {
          v107 = v83;
        }
      }

      else
      {
        v107 = v83;
        sub_1000050A4(v239, &qword_100939ED0, &qword_100791B10);
      }

      v106 = Logger.logObject.getter();
      v134 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v106, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&_mh_execute_header, v106, v134, "Cannot get any REMCDList from the ordered set of reminders in the list.", v135, 2u);
      }

      v28 = v228;
      isUniquelyReferenced_nonNull_native = v107;
LABEL_53:

      v30 = &selRef_isEmpty;
    }

    else
    {
      v28 = v228;
    }

    [(RDXPCStorePerformer *)v33 setRemindersICSDisplayOrderChanged:0, v224, v225];

    isUniquelyReferenced_nonNull_native = v229;
  }

  v136 = [a4 v30[195]];
  if (v136)
  {
    v226 = v136;
    v228 = v28;
    v144 = [a4 reminderIDsOrderingHints];
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v145 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v229 = isUniquelyReferenced_nonNull_native;
    if ((v145 & 0xC000000000000001) != 0)
    {
      a4 = 0;
      v146 = 0;
      v147 = 0;
      v106 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v160 = -1 << *(v145 + 32);
      v146 = ~v160;
      a4 = (v145 + 64);
      v161 = -v160;
      if (v161 < 64)
      {
        v162 = ~(-1 << v161);
      }

      else
      {
        v162 = -1;
      }

      v147 = v162 & *(v145 + 64);
      v106 = v145;
    }

    v225 = v145;

    v48 = 0;
    v224 = v146;
    v74 = ((v146 + 64) >> 6);
    v33 = _swiftEmptyDictionarySingleton;
    v233 = v106;
    v232 = v74;
    v231 = a4;
    while (1)
    {
      if (v106 < 0)
      {
        if (!__CocoaDictionary.Iterator.next()() || (v170 = v169, swift_dynamicCast(), v167 = *&v239[0], *&v237 = v170, swift_dynamicCast(), v168 = *&v239[0], a5 = v48, *&v234 = v147, !v167))
        {
LABEL_90:
          sub_10001B860(v106);
          v228, v183, v184, v185, v186, v187, v188, v189;
          v225, v190, v191, v192, v193, v194, v195, v196;
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v197 = type metadata accessor for Logger();
          sub_100006654(v197, qword_10094EE30);

          v198 = Logger.logObject.getter();
          v199 = static os_log_type_t.debug.getter();
          v200 = v229;
          if (os_log_type_enabled(v198, v199))
          {
            v201 = swift_slowAlloc();
            *v201 = 134217984;
            *(v201 + 4) = *v33->clientIdentity;
            v33, v202, v203, v204, v205, v206, v207, v208;
            _os_log_impl(&_mh_execute_header, v198, v199, "REMListStorageCDIngestor:mutateOrdering - number of reminderIDsOrderingHints {count: %ld}", v201, 0xCu);
          }

          else
          {

            v33, v216, v217, v218, v219, v220, v221, v222;
          }

          v223 = *v33->clientIdentity;
          if (v223 == 1)
          {
            sub_1001006A4(v227, v33);
          }

          v33, v209, v210, v211, v212, v213, v214, v215;
          sub_1000FE93C(v227, v223 == 1);
          if (v230)
          {
            sub_1006AA6EC();
          }

          return;
        }
      }

      else
      {
        v163 = v48;
        v164 = v147;
        a5 = v48;
        if (!v147)
        {
          while (1)
          {
            a5 = v163 + 1;
            if (__OFADD__(v163, 1))
            {
              break;
            }

            if (a5 >= v74)
            {
              goto LABEL_90;
            }

            v164 = *(a4 + a5);
            ++v163;
            if (v164)
            {
              goto LABEL_75;
            }
          }

          __break(1u);
LABEL_101:

          v28 = v228;
          goto LABEL_53;
        }

LABEL_75:
        *&v234 = (v164 - 1) & v164;
        v165 = (a5 << 9) | (8 * __clz(__rbit64(v164)));
        v166 = *(*(v106 + 56) + v165);
        v167 = *(*(v106 + 48) + v165);
        v168 = v166;
        if (!v167)
        {
          goto LABEL_90;
        }
      }

      v171 = v167;
      v30 = v168;
      a4 = [(SEL *)v168 integerValue:v224];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v239[0] = v33;
      v173 = sub_10002B924(v171);
      v174 = *v33->clientIdentity;
      v175 = (v172 & 1) == 0;
      v176 = v174 + v175;
      if (__OFADD__(v174, v175))
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v177 = v172;
      if (*&v33->clientIdentity[8] >= v176)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v33 = *&v239[0];
          if (v172)
          {
            goto LABEL_68;
          }
        }

        else
        {
          sub_100376430();
          v33 = *&v239[0];
          if (v177)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        sub_10036FD64(v176, isUniquelyReferenced_nonNull_native);
        v178 = sub_10002B924(v171);
        if ((v177 & 1) != (v179 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v173 = v178;
        v33 = *&v239[0];
        if (v177)
        {
LABEL_68:
          *(*&v33->clientIdentity[40] + 8 * v173) = a4;

          goto LABEL_69;
        }
      }

      *&v33->storeProvider[8 * (v173 >> 6) + 2] |= 1 << v173;
      *(*&v33->clientIdentity[32] + 8 * v173) = v171;
      *(*&v33->clientIdentity[40] + 8 * v173) = a4;

      v180 = *v33->clientIdentity;
      v181 = __OFADD__(v180, 1);
      v182 = v180 + 1;
      if (v181)
      {
        goto LABEL_103;
      }

      *v33->clientIdentity = v182;
LABEL_69:
      v48 = a5;
      v147 = v234;
      a4 = v231;
      v106 = v233;
      v74 = v232;
    }
  }

  v148 = isUniquelyReferenced_nonNull_native;
  v28, v137, v138, v139, v140, v141, v142, v143;
  if (qword_1009366B0 != -1)
  {
    swift_once();
  }

  v149 = type metadata accessor for Logger();
  sub_100006654(v149, qword_10094EE30);
  v150 = a4;
  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    *&v239[0] = v155;
    *v153 = 138543618;
    v156 = [v150 objectID];
    *(v153 + 4) = v156;
    *v154 = v156;
    *(v153 + 12) = 2082;
    *(v153 + 14) = sub_10000668C(0x7265646E696D6572, 0xE900000000000073, v239);
    _os_log_impl(&_mh_execute_header, v151, v152, "REMListStorageCDIngestor: mutateOrdering(...) cannot proceed because storage.reminderIDsMergeableOrdering is nil {objectID: %{public}@, key: %{public}s}", v153, 0x16u);
    sub_1000050A4(v154, &unk_100938E70, &unk_100797230);

    sub_10000607C(v155);
  }

  v157 = objc_opt_self();
  sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
  v158 = swift_getObjCClassFromMetadata();
  v159 = String._bridgeToObjectiveC()();
  [v157 unexpectedNilPropertyWithClass:v158 property:v159];

  swift_willThrow();
}

uint64_t sub_10067AC38(uint64_t a1, uint64_t a2)
{
  sub_100005EF0(a1, v7);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_100005EF0(a2, v7);
  if (swift_dynamicCast())
  {
    v3 = [v6 displayOrder];
    v4 = [v6 displayOrder];

    if (v3 == v4)
    {
      return 0;
    }

    if (v3 < v4)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else
  {

    return 0;
  }
}

id sub_10067AD6C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *v3 = sub_10021CDBC(v7, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    result = sub_1002C8398(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

void sub_10067AE04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036CAA8(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093A980, &qword_1007B4F60);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_10037477C();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&qword_10093A980, &qword_1007B4F60);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036CAA8(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067B184(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036CAD0(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093A920, &unk_100797F40);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_1003747A4();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&qword_10093A920, &unk_100797F40);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036CAD0(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067B504(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036CE54(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943860, &unk_100797FC0);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100374A1C();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_100943860, &unk_100797FC0);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036CE54(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067B884(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036D7D4(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093A958, &qword_100797F70);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100374FC4();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&qword_10093A958, &qword_100797F70);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036D7D4(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067BC04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036DAB4(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10094F7F0, &unk_100798000);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_10037517C();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&qword_10094F7F0, &unk_100798000);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036DAB4(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067BF84(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036DAC8(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093AA10, &unk_1007A43E0);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_100375190();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&qword_10093AA10, &unk_1007A43E0);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036DAC8(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067C304(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036DADC(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093AA00, &unk_100797FF0);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_1003751A4();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&qword_10093AA00, &unk_100797FF0);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036DADC(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067C684(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036DAF0(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093A9F0, &unk_1007A4370);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_1003751B8();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&qword_10093A9F0, &unk_1007A4370);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036DAF0(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067CA04(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036E024(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943720, &unk_1007A4020);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_1003754D0();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_100943720, &unk_1007A4020);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036E024(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

void sub_10067CD84(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

  LOBYTE(v11) = a2;
  v12 = *(a1 + 40);
  v13 = *a3;
  v14 = *(a1 + 32);
  v15 = v12;
  v16 = sub_100393C74();
  v17 = v13[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v13[3] < v20)
  {
    sub_10036E038(v20, v11 & 1);
    v16 = sub_100393C74();
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943760, &unk_100797FA0);
    v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v11)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v29 = v16;
  sub_1003754E4();
  v16 = v29;
  if (v21)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      a1, v22, v23, v24, v25, v26, v27, v28;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v30 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v30[6] + 8 * v16) = v14;
  *(v30[7] + 8 * v16) = v15;
  v31 = v30[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v43._object = 0x80000001007F8340;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    sub_1000F5104(&unk_100943760, &unk_100797FA0);
    _print_unlocked<A, B>(_:_:)();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30[2] = v32;
  if (v9 != 1)
  {
    v11 = (a1 + 56);
    v33 = 1;
    while (v33 < *(a1 + 16))
    {
      v34 = *v11;
      v35 = *a3;
      v14 = *(v11 - 1);
      v15 = v34;
      v36 = sub_100393C74();
      v37 = v35[2];
      v38 = (a2 & 1) == 0;
      v19 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v35[3] < v39)
      {
        sub_10036E038(v39, 1);
        v36 = sub_100393C74();
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v40 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v40[6] + 8 * v36) = v14;
      *(v40[7] + 8 * v36) = v15;
      v41 = v40[2];
      v19 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v33;
      v40[2] = v42;
      v11 += 2;
      if (v9 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}