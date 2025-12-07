uint64_t sub_1EABC(uint64_t a1)
{
  v2 = sub_29218();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_208B8(v2, *(a1 + 36), 0, a1);
}

id AXGuestPassNetworkConnection.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_connection] = 0;
  *&v0[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_senderConnection] = 0;
  *&v0[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_listener] = 0;
  v2 = OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection__connectionState;
  v3 = enum case for NWConnection.State.setup(_:);
  v4 = sub_28388();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  v5 = &v0[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentDomain];
  *v5 = 0xD000000000000018;
  *(v5 + 1) = 0x800000000002B350;
  v6 = &v0[OBJC_IVAR____TtC17AXGuestPassServer28AXGuestPassNetworkConnection_networkAgentType];
  *v6 = 0xD000000000000012;
  *(v6 + 1) = 0x800000000002B370;
  _s17AXGuestPassServer0aB17NetworkConnectionC22__observationRegistrar33_F8B8A65206FC09C8A21103A3AFF7C9E911Observation0rG0Vvpfi_0();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t type metadata accessor for AXGuestPassNetworkConnection(uint64_t a1)
{
  result = qword_39B60;
  if (!qword_39B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1EDBC(uint64_t a1)
{
  result = sub_28388();
  if (v2 <= 0x3F)
  {
    result = sub_280A8();
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

uint64_t sub_1EEA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_8FB4(result, a2);
  }

  return result;
}

uint64_t sub_1EEB8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_28008();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1F14C(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1F14C(v4, v5);
  }

  return sub_28008();
}

uint64_t sub_1EFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E8C(&qword_39B70, &qword_2AE48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F068()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F0A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_77F4;

  return sub_1DCA4();
}

uint64_t sub_1F14C(uint64_t a1, uint64_t a2)
{
  result = sub_27EB8();
  if (!result || (result = sub_27ED8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_27EC8();
      return sub_28008();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1F1E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_7E8C(&qword_395C0, &qword_2A780);
  v34 = v4;
  result = sub_292C8();
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

      sub_29368();
      sub_28F08();
      result = sub_29378();
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

uint64_t sub_1F488(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_11FDC(a2, a3);
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
      sub_1F1E0(v16, a4 & 1);
      v11 = sub_11FDC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_29318();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1F604();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_1F604()
{
  v1 = v0;
  sub_7E8C(&qword_395C0, &qword_2A780);
  v2 = *v0;
  v3 = sub_292B8();
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

uint64_t sub_1F774(_BYTE *__src, _BYTE *a2)
{
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

uint64_t sub_1F82C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_27EE8();
  swift_allocObject();
  result = sub_27EA8();
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

uint64_t sub_1F8B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_27EE8();
  swift_allocObject();
  result = sub_27EA8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_27FF8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1F92C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1F96C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1F988()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F9D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1FA18()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1FA58()
{
  result = qword_39B90;
  if (!qword_39B90)
  {
    sub_7F38(&qword_39B88, &qword_2AE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39B90);
  }

  return result;
}

id sub_1FAD4(NSObject *a1, unint64_t a2)
{
  v97 = a2;
  v98 = a1;
  v96 = sub_28268();
  v2 = *(v96 - 8);
  v3 = __chkstk_darwin(v96);
  v95 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v83 - v5;
  v7 = sub_7E8C(&qword_39208, &unk_2A090);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v83 - v11;
  v13 = sub_27FD8();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v83 - v19;
  __chkstk_darwin(v18);
  v100 = &v83 - v21;
  type metadata accessor for AXGuestPassServer(0);
  v22 = sub_AD5C();
  v23 = *&v22[OBJC_IVAR___AXGuestPassServer_settingsProfileManager];

  v24 = [v23 guestPassLocalStorageURL];
  if (v24)
  {
    v25 = v24;
    sub_27FA8();

    (*(v14 + 56))(v10, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v10, 1, 1, v13);
  }

  sub_98BC(v10, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_925C(v12, &qword_39208, &unk_2A090);
    return 0;
  }

  v92 = v2;
  v94 = v23;
  sub_28EC8();
  sub_27F98();

  v26 = *(v14 + 8);
  v26(v12, v13);
  v27 = v100;
  (*(v14 + 32))(v100, v20, v13);
  v104 = objc_opt_self();
  v28 = [v104 defaultManager];
  sub_27F88(v29);
  v31 = v30;
  v109[0] = 0;
  v32 = [v28 contentsOfDirectoryAtURL:v30 includingPropertiesForKeys:0 options:0 error:v109];

  v33 = v109[0];
  if (!v32)
  {
    v81 = v109[0];
    sub_27F78();

    swift_willThrow();

    v26(v27, v13);
    return 0;
  }

  v105 = v14 + 8;
  v106 = v26;
  v34 = sub_28F48();
  v35 = v33;

  v91 = sub_12218(&_swiftEmptyArrayStorage);
  v90 = sub_12218(&_swiftEmptyArrayStorage);
  v103 = *(v34 + 16);
  if (v103)
  {
    v37 = 0;
    v99 = 0;
    v102 = v34 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v101 = v14 + 16;
    v93 = AXGuestPassPlatformKey;
    v88 = v92 + 1;
    *&v36 = 136315138;
    v87 = v36;
    v89 = v6;
    v38 = v100;
    v39 = v106;
    while (1)
    {
      if (v37 >= *(v34 + 16))
      {
        __break(1u);
      }

      (*(v14 + 16))(v17, v102 + *(v14 + 72) * v37, v13);
      v41 = [v104 defaultManager];
      sub_27FB8(1);
      v39(v17, v13);
      v42 = sub_28E88();

      v43 = [v41 contentsAtPath:v42];

      if (!v43)
      {
        goto LABEL_11;
      }

      v44 = sub_28028();
      v46 = v45;

      v47 = objc_opt_self();
      isa = sub_28018().super.isa;
      v109[0] = 0;
      v49 = [v47 propertyListWithData:isa options:0 format:0 error:v109];

      if (!v49)
      {
        v40 = v109[0];
        sub_27F78();

        swift_willThrow();
        v38 = v100;

        v99 = 0;
LABEL_10:
        v110 = 0u;
        v111 = 0u;
        sub_925C(&v110, &qword_39598, &qword_2AEB0);
        sub_9008(v44, v46);
        goto LABEL_11;
      }

      v50 = v109[0];
      sub_291F8();
      swift_unknownObjectRelease();
      sub_7E8C(&qword_395A8, &qword_2A6C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_10;
      }

      v51 = v110;
      if (!v110)
      {
        goto LABEL_10;
      }

      v107 = sub_28EC8();
      v108 = v52;

      sub_29248();
      if (!*(v51 + 16))
      {
        break;
      }

      v53 = sub_12054(v109);
      if ((v54 & 1) == 0)
      {
        break;
      }

      sub_905C(*(v51 + 56) + 32 * v53, &v110);
      sub_12548(v109);

      if (!*(&v111 + 1))
      {
        goto LABEL_23;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      v55 = v109[1];
      v92 = v109[0];
LABEL_25:
      sub_28168();
      v107 = sub_28148();
      v108 = v56;
      sub_29248();
      if (*(v51 + 16) && (v57 = sub_12054(v109), (v58 & 1) != 0))
      {
        sub_905C(*(v51 + 56) + 32 * v57, &v110);
        sub_12548(v109);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_9008(v44, v46);
          goto LABEL_37;
        }

        v85 = v107;
        v86 = v108;
        v59 = v55;
        v60 = v97;
        if (v92 == v98 && v59 == v97 || (sub_29308() & 1) != 0)
        {

          sub_28178();

          v92 = sub_28258();
          v61 = sub_29108();

          LODWORD(v84) = v61;
          if (os_log_type_enabled(v92, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v109[0] = v63;
            *v62 = v87;
            *(v62 + 4) = sub_89C0(v98, v97, v109);
            _os_log_impl(&dword_0, v92, v84, "Found payload matching receiver device type: %s", v62, 0xCu);
            sub_8F68(v63);
          }

          (v88->isa)(v89, v96);
          v64 = v91;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109[0] = v64;
          sub_1F488(v51, v85, v86, isUniquelyReferenced_nonNull_native);

          sub_9008(v44, v46);
          v66 = v109[0];
          v67 = &v113;
        }

        else
        {
          v84 = v59;
          v83 = sub_290A8();
          v68 = sub_28FE8();
          v114._countAndFlagsBits = v98;
          v114._object = v60;
          v69 = sub_28FD8(v114);

          if (!v69)
          {
            sub_9008(v44, v46);

            goto LABEL_38;
          }

          v70 = sub_28FE8();
          v115._countAndFlagsBits = v92;
          v115._object = v84;
          LODWORD(v92) = sub_28FD8(v115);

          if ((v92 & 1) == 0)
          {
            sub_9008(v44, v46);

LABEL_37:

LABEL_38:

            v38 = v100;
            goto LABEL_11;
          }

          v92 = sub_28FE8();
          result = [objc_opt_self() deviceClassForBuddy];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v72 = result;

          v84 = sub_28EC8();
          v74 = v73;

          v116._countAndFlagsBits = v84;
          v116._object = v74;
          v75 = v92;
          LODWORD(v84) = sub_28FD8(v116);

          if (v84)
          {
            sub_9008(v44, v46);

            goto LABEL_38;
          }

          sub_28178();
          v76 = sub_28258();
          v77 = sub_29108();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            *v78 = 0;
            _os_log_impl(&dword_0, v76, v77, "Found payload matching iOS device type. Storing as candidate in case we find a more exact match", v78, 2u);
          }

          (v88->isa)(v95, v96);
          v79 = v90;
          v80 = swift_isUniquelyReferenced_nonNull_native();
          v109[0] = v79;
          sub_1F488(v51, v85, v86, v80);

          sub_9008(v44, v46);
          v66 = v109[0];
          v67 = &v112;
        }

        *(v67 - 32) = v66;
        v38 = v100;
      }

      else
      {
        sub_9008(v44, v46);

        sub_12548(v109);
        v38 = v100;
      }

LABEL_11:
      ++v37;
      v39 = v106;
      if (v103 == v37)
      {
        goto LABEL_52;
      }
    }

    sub_12548(v109);
    v110 = 0u;
    v111 = 0u;
LABEL_23:
    sub_925C(&v110, &qword_39598, &qword_2AEB0);
LABEL_24:
    v92 = 0;
    v55 = 0xE000000000000000;
    goto LABEL_25;
  }

  v38 = v100;
  v39 = v106;
LABEL_52:

  v39(v38, v13);
  if (*(v91 + 16))
  {
    v82 = v91;

    return v82;
  }

  else
  {

    return v90;
  }
}

uint64_t sub_208B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2092C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20978()
{
  v1 = sub_28188();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXDeviceHasJindo())
  {
    sub_281E8();
    v5 = sub_281D8();
    v6 = sub_280B8();
    sub_28158();

    (*(v2 + 104))(v4, enum case for AXUIActivityRelevance.guestPass(_:), v1);
    sub_21C0C();
    sub_21C60();
    sub_281C8();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v7 = *(v0 + 16);
    BSAuditTokenForCurrentProcess();
    v11 = v14;
    v12 = v13;
    v8 = objc_allocWithZone(STActivityAttribution);
    v13 = v12;
    v14 = v11;
    v9 = [v8 initWithAuditToken:&v13];
    v10 = [objc_allocWithZone(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution) initWithBackgroundActivityIdentifier:v7 activityAttribution:v9 showsWhenForeground:1];

    sub_210C4(v10);
  }
}

void *sub_20B74()
{
  v0[2] = sub_28E88();
  v1 = [objc_allocWithZone(STBackgroundActivitiesStatusDomainPublisher) init];
  v0[3] = v1;
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = 0;
  v2 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_21D50;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_2105C;
  v6[3] = &unk_36520;
  v3 = _Block_copy(v6);
  v4 = v1;

  [v4 handleUserInteractionsWithBlock:v3];
  _Block_release(v3);

  return v0;
}

uint64_t sub_20CA4(void *a1, uint64_t a2)
{
  v3 = sub_28268();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = [a1 activeBackgroundActivities];
    type metadata accessor for STBackgroundActivityIdentifier(0);
    sub_21D58();
    v10 = sub_28FC8();

    v11 = *(v8 + 16);
    v12 = sub_20F08(v11, v10);

    if ((v12 & 1) == 0)
    {
    }

    sub_28178();
    v13 = a1;
    v14 = sub_28258();
    v15 = sub_29138();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_0, v14, v15, "Handling status bar tap %@", v16, 0xCu);
      sub_AC9C(v17);
    }

    (*(v4 + 8))(v6, v3);
    v19 = *(v8 + 40);
    if (v19)
    {
      v20 = *(v8 + 48);

      v19(v21);

      return sub_135D4(v19, v20);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20F08(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_28EC8(), sub_29368(), sub_28F08(), v3 = sub_29378(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_28EC8();
      v9 = v8;
      if (v7 == sub_28EC8() && v9 == v10)
      {
        break;
      }

      v12 = sub_29308();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_2105C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_210C4(void *a1)
{
  v2 = v1;
  v4 = sub_28268();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v29 = a1;
  v8 = a1;

  v9 = sub_28258();
  v10 = sub_29138();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    v13 = *(v2 + 32);
    *(v11 + 4) = v13;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    v14 = v29;
    *v12 = v13;
    v12[1] = v14;
    v15 = v8;
    v16 = v13;
    _os_log_impl(&dword_0, v9, v10, "Updating status pill attribution from %@ to %@", v11, 0x16u);
    sub_7E8C(&qword_391E8, &qword_2A080);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v7, v4);
  v17 = *(v2 + 24);
  v18 = swift_allocObject();
  v19 = v29;
  *(v18 + 16) = v2;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21CB4;
  *(v20 + 24) = v18;
  v34 = sub_21DC0;
  v35 = v20;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_217A0;
  v33 = &unk_36480;
  v21 = _Block_copy(&aBlock);

  v22 = v8;

  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = v19;
  v34 = sub_21D10;
  v35 = v23;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_C0F8;
  v33 = &unk_364D0;
  v24 = _Block_copy(&aBlock);

  v25 = v22;

  [v17 updateVolatileData:v21 completion:v24];
  _Block_release(v24);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2146C()
{
  v1 = v0;
  v2 = sub_28268();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  if (v7)
  {
    v8 = v7;
    sub_28178();
    v9 = v8;
    v10 = sub_28258();
    v11 = sub_29138();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v7;
      v14 = v9;
      _os_log_impl(&dword_0, v10, v11, "Ending status pill with attribution: %@", v12, 0xCu);
      sub_AC9C(v13);
    }

    (*(v3 + 8))(v6, v2);
    v15 = *(v1 + 24);
    v16 = swift_allocObject();
    *(v16 + 16) = v9;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_21BBC;
    *(v17 + 24) = v16;
    v25 = sub_21BCC;
    v26 = v17;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_217A0;
    v24 = &unk_363E0;
    v18 = _Block_copy(&aBlock);
    v19 = v9;

    v25 = sub_2180C;
    v26 = 0;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_C0F8;
    v24 = &unk_36408;
    v20 = _Block_copy(&aBlock);
    [v15 updateVolatileData:v18 completion:v20];

    _Block_release(v20);
    _Block_release(v18);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_217A0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, v5);
}

uint64_t sub_2180C()
{
  v0 = sub_28268();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  v4 = sub_28258();
  v5 = sub_29138();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Status pill attribution removed", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

id sub_21940(id a1, id a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 32))
  {
    [a1 removeAttribution:?];
  }

  if (a4)
  {
    [a1 addAttribution:a4];
  }

  return [a2 setUserInitiated:1];
}

uint64_t sub_219C0(uint64_t a1, void *a2)
{
  v4 = sub_28268();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  *(a1 + 32) = a2;
  v9 = a2;

  sub_28178();
  v10 = sub_28258();
  v11 = sub_29138();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Updated status pill attribution", v12, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21B0C()
{
  sub_2146C();

  sub_135D4(*(v0 + 40), *(v0 + 48));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_21B84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_21BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21C0C()
{
  result = qword_39C68;
  if (!qword_39C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39C68);
  }

  return result;
}

unint64_t sub_21C60()
{
  result = qword_39C70;
  if (!qword_39C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39C70);
  }

  return result;
}

uint64_t sub_21CD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_21D18()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_21D58()
{
  result = qword_391F8;
  if (!qword_391F8)
  {
    type metadata accessor for STBackgroundActivityIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_391F8);
  }

  return result;
}

uint64_t sub_21E18()
{
  sub_28A48();
  v0 = [objc_opt_self() systemBlueColor];
  sub_28A38();
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x800000000002BE30;
  GuestPassLocString(_:)(v1);
  sub_7E8C(&qword_39C78, &qword_2B008);
  sub_23A24();
  sub_A978();
  sub_28978();
}

uint64_t sub_21F30@<X0>(void *a1@<X8>)
{
  v45 = a1;
  v1 = sub_28638();
  v2 = *(v1 - 8);
  v43 = v1;
  v44 = v2;
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7E8C(&qword_39CA8, &qword_2B028);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  v42 = sub_7E8C(&qword_39CB0, &qword_2B030);
  v40 = *(v42 - 8);
  v9 = v40;
  v10 = __chkstk_darwin(v42);
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_7E8C(&qword_39CB8, &qword_2B038);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  *v20 = sub_28698();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = sub_7E8C(&qword_39CC0, &qword_2B040);
  sub_2241C(&v20[*(v21 + 44)]);
  v22 = sub_28838();
  sub_285A8();
  v23 = &v20[*(v15 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_7E8C(&qword_39CC8, &qword_2B048);
  sub_23ADC();
  sub_28AA8();
  sub_28628();
  sub_15494(&qword_39CF8, &qword_39CA8, &qword_2B028, &protocol conformance descriptor for Button<A>);
  sub_240A4(&qword_39D00, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v39 = v13;
  v28 = v43;
  sub_28928();
  (*(v44 + 8))(v4, v28);
  (*(v6 + 8))(v8, v5);
  sub_1ABBC(v20, v18, &qword_39CB8, &qword_2B038);
  v29 = *(v9 + 16);
  v31 = v41;
  v30 = v42;
  v29(v41, v13, v42);
  v32 = v45;
  *v45 = 0;
  *(v32 + 8) = 1;
  v33 = v32;
  v34 = sub_7E8C(&qword_39D08, &qword_2B060);
  sub_1ABBC(v18, &v33[v34[12]], &qword_39CB8, &qword_2B038);
  v35 = &v33[v34[16]];
  *v35 = 0;
  v35[8] = 1;
  v29(&v33[v34[20]], v31, v30);
  v36 = *(v40 + 8);
  v36(v39, v30);
  sub_925C(v20, &qword_39CB8, &qword_2B038);
  v36(v31, v30);
  return sub_925C(v18, &qword_39CB8, &qword_2B038);
}

uint64_t sub_2241C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_7E8C(&qword_39D40, &qword_2B0B8);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = sub_7E8C(&qword_39D48, &qword_2B0C0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = sub_28A48();
  v11 = sub_28858();
  sub_285A8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_28898();
  (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  v21 = sub_288A8();
  sub_925C(v3, &qword_39D40, &qword_2B0B8);
  KeyPath = swift_getKeyPath();
  LOBYTE(v56) = 0;
  v23 = [objc_opt_self() systemBlueColor];
  v24 = sub_28A38();
  *&v56 = v10;
  BYTE8(v56) = v11;
  *v57 = v13;
  *&v57[8] = v15;
  *&v57[16] = v17;
  *&v57[24] = v19;
  v57[32] = 0;
  *&v57[40] = KeyPath;
  *&v57[48] = v21;
  *&v57[56] = v24;
  sub_7E8C(&qword_39D50, &qword_2B0F8);
  sub_23D0C();
  sub_28998();
  v48[2] = *&v57[16];
  v48[3] = *&v57[32];
  v48[4] = *&v57[48];
  v48[0] = v56;
  v48[1] = *v57;
  sub_925C(v48, &qword_39D50, &qword_2B0F8);
  v25 = sub_286C8();
  LOBYTE(v56) = 0;
  sub_22878(v49);
  *(v47 + 7) = v49[0];
  *(&v47[1] + 7) = v49[1];
  *(&v47[2] + 7) = v49[2];
  *(&v47[3] + 7) = v49[3];
  LOBYTE(v3) = v56;
  v26 = sub_28858();
  sub_285A8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1ABBC(v9, v7, &qword_39D48, &qword_2B0C0);
  v35 = v46;
  sub_1ABBC(v7, v46, &qword_39D48, &qword_2B0C0);
  v36 = sub_7E8C(&qword_39D90, &qword_2B118);
  v37 = *(v36 + 48);
  *(&v52[3] + 1) = v47[3];
  *(&v52[1] + 1) = v47[1];
  v38 = v35 + v37;
  v51 = v25;
  LOBYTE(v52[0]) = v3;
  *&v52[4] = *(&v47[3] + 15);
  *(&v52[2] + 1) = v47[2];
  *(v52 + 1) = v47[0];
  BYTE8(v52[4]) = v26;
  *(&v52[4] + 9) = *v50;
  HIDWORD(v52[4]) = *&v50[3];
  *&v53 = v28;
  *(&v53 + 1) = v30;
  *&v54 = v32;
  *(&v54 + 1) = v34;
  v55 = 0;
  *(v38 + 128) = 0;
  v39 = v52[4];
  *(v38 + 64) = v52[3];
  *(v38 + 80) = v39;
  v40 = v52[2];
  *(v38 + 32) = v52[1];
  *(v38 + 48) = v40;
  v41 = v52[0];
  *v38 = v51;
  *(v38 + 16) = v41;
  v42 = v54;
  *(v38 + 96) = v53;
  *(v38 + 112) = v42;
  v43 = v35 + *(v36 + 64);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1ABBC(&v51, &v56, &qword_39D98, &qword_2B120);
  sub_925C(v9, &qword_39D48, &qword_2B0C0);
  *&v57[17] = v47[1];
  *&v57[33] = v47[2];
  *&v57[49] = v47[3];
  v56 = v25;
  v57[0] = v3;
  *&v57[64] = *(&v47[3] + 15);
  *&v57[1] = v47[0];
  v58 = v26;
  *v59 = *v50;
  *&v59[3] = *&v50[3];
  v60 = v28;
  v61 = v30;
  v62 = v32;
  v63 = v34;
  v64 = 0;
  sub_925C(&v56, &qword_39D98, &qword_2B120);
  return sub_925C(v7, &qword_39D48, &qword_2B0C0);
}

uint64_t sub_22878@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000000002B940;
  v2._countAndFlagsBits = 0xD000000000000010;
  GuestPassLocString(_:)(v2);
  sub_A978();
  v3 = sub_288F8();
  v5 = v4;
  v7 = v6;
  sub_28878();
  v8 = sub_288E8();
  v10 = v9;
  v12 = v11;

  sub_1ABAC(v3, v5, v7 & 1);

  sub_28728();
  v13 = sub_288D8();
  v15 = v14;
  v46 = v16;
  v18 = v17;
  sub_1ABAC(v8, v10, v12 & 1);

  type metadata accessor for AXGuestPassServer(0);
  v19 = sub_AD5C();
  swift_getKeyPath();
  sub_240A4(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v21 = *&v19[OBJC_IVAR___AXGuestPassServer__senderDescription];
  v20 = *&v19[OBJC_IVAR___AXGuestPassServer__senderDescription + 8];

  if (v20)
  {
    v22._countAndFlagsBits = 0xD00000000000001CLL;
    v22._object = 0x800000000002BE50;
    GuestPassLocString(_:)(v22);
    sub_7E8C(&qword_39DA0, &qword_2B150);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_29DC0;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_23F90();
    *(v23 + 32) = v21;
    *(v23 + 40) = v20;
    sub_28E98();

    v24 = sub_288F8();
    v26 = v25;
    v28 = v27;
    sub_28738();
    v29 = sub_288D8();
    v44 = v15;
    v31 = v30;
    v33 = v32;
    sub_1ABAC(v24, v26, v28 & 1);

    sub_288B8();
    v20 = sub_288E8();
    v35 = v34;
    v45 = a1;
    v36 = v13;
    v38 = v37;
    v40 = v39;

    v41 = v31;
    v15 = v44;
    sub_1ABAC(v29, v41, v33 & 1);

    v42 = v38 & 1;
    v13 = v36;
    a1 = v45;
    sub_1AC24(v20, v35, v42);
  }

  else
  {
    v35 = 0;
    v42 = 0;
    v40 = 0;
  }

  sub_1AC24(v13, v15, v46 & 1);

  sub_23F08(v20, v35, v42, v40);
  sub_23F4C(v20, v35, v42, v40);
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v46 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = v20;
  *(a1 + 40) = v35;
  *(a1 + 48) = v42;
  *(a1 + 56) = v40;
  sub_23F4C(v20, v35, v42, v40);
  sub_1ABAC(v13, v15, v46 & 1);
}

uint64_t sub_22C88()
{
  v0 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_28F98();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_28F78();
  v4 = sub_28F68();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_16BFC(0, 0, v2, &unk_2B0A8, v5);
}

uint64_t sub_22D94()
{
  v1 = sub_28268();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_28F78();
  v0[5] = sub_28F68();
  v3 = sub_28F58();
  v0[6] = v3;
  v0[7] = v2;

  return _swift_task_switch(sub_22E84, v3, v2);
}

uint64_t sub_22E84(uint64_t a1)
{
  *(v1 + 64) = sub_280B8();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_22F20;

  return AXGuestPassService.endGuestPassSession()();
}

uint64_t sub_22F20()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_2303C;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_A718;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_2303C()
{
  v1 = v0[8];

  sub_28178();
  swift_errorRetain();
  v2 = sub_28258();
  v3 = sub_29128();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Unable to end guest pass session %@", v4, 0xCu);
    sub_925C(v5, &qword_391E8, &qword_2A080);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_231D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_7E8C(&qword_39CF0, &qword_2B058);
  __chkstk_darwin(v2 - 8);
  v4 = (&v34 - v3);
  v5 = sub_7E8C(&qword_39CE0, &qword_2B050);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  *v4 = sub_28B78();
  v4[1] = v8;
  v9 = sub_7E8C(&qword_39D10, &qword_2B068);
  sub_23440(v4 + *(v9 + 44));
  sub_7E8C(&qword_39D18, &qword_2B070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29DD0;
  v11 = sub_28838();
  *(inited + 32) = v11;
  v12 = sub_28858();
  *(inited + 33) = v12;
  v13 = sub_28848();
  sub_28848();
  if (sub_28848() != v11)
  {
    v13 = sub_28848();
  }

  sub_28848();
  if (sub_28848() != v12)
  {
    v13 = sub_28848();
  }

  sub_285A8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1551C(v4, v7, &qword_39CF0, &qword_2B058);
  v22 = &v7[*(v5 + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = sub_28828();
  sub_285A8();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1551C(v7, a1, &qword_39CE0, &qword_2B050);
  result = sub_7E8C(&qword_39CC8, &qword_2B048);
  v33 = a1 + *(result + 36);
  *v33 = v23;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_23440@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_7E8C(&qword_39D20, &qword_2B078);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v56 - v3;
  v5 = sub_7E8C(&qword_39D28, &qword_2B080);
  v6 = __chkstk_darwin(v5);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v56 - v9;
  __chkstk_darwin(v8);
  v12 = &v56 - v11;
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = sub_286A8();
  (*(*(v14 - 8) + 104))(v4, v13, v14);
  v57 = objc_opt_self();
  v15 = [v57 systemRedColor];
  sub_28A38();
  v16 = sub_28A28();

  v17 = sub_7E8C(&qword_39D30, &qword_2B088);
  *&v4[*(v17 + 52)] = v16;
  *&v4[*(v17 + 56)] = 256;
  sub_28B78();
  sub_285F8();
  v18 = &v4[*(v2 + 44)];
  v19 = v62;
  *v18 = v61;
  *(v18 + 1) = v19;
  *(v18 + 2) = v63;
  sub_7E8C(&qword_39D18, &qword_2B070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29DD0;
  v21 = sub_28838();
  *(inited + 32) = v21;
  v22 = sub_28858();
  *(inited + 33) = v22;
  v23 = sub_28848();
  sub_28848();
  if (sub_28848() != v21)
  {
    v23 = sub_28848();
  }

  sub_28848();
  if (sub_28848() != v22)
  {
    v23 = sub_28848();
  }

  sub_285A8();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1551C(v4, v10, &qword_39D20, &qword_2B078);
  v32 = &v10[*(v5 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  sub_1551C(v10, v12, &qword_39D28, &qword_2B080);
  v33._object = 0x800000000002B560;
  v33._countAndFlagsBits = 0xD000000000000024;
  v60 = GuestPassLocString(_:)(v33);
  sub_A978();
  v34 = sub_288F8();
  v36 = v35;
  v38 = v37;
  sub_288C8();
  v39 = sub_288E8();
  v41 = v40;
  v43 = v42;

  sub_1ABAC(v34, v36, v38 & 1);

  v44 = [v57 systemRedColor];
  v60._countAndFlagsBits = sub_28A38();
  v45 = sub_288D8();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_1ABAC(v39, v41, v43 & 1);

  v52 = v58;
  sub_1ABBC(v12, v58, &qword_39D28, &qword_2B080);
  v53 = v59;
  sub_1ABBC(v52, v59, &qword_39D28, &qword_2B080);
  v54 = v53 + *(sub_7E8C(&qword_39D38, &unk_2B090) + 48);
  *v54 = v45;
  *(v54 + 8) = v47;
  *(v54 + 16) = v49 & 1;
  *(v54 + 24) = v51;
  sub_1AC24(v45, v47, v49 & 1);

  sub_925C(v12, &qword_39D28, &qword_2B080);
  sub_1ABAC(v45, v47, v49 & 1);

  return sub_925C(v52, &qword_39D28, &qword_2B080);
}

uint64_t sub_2395C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_286B8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_7E8C(&qword_39C98, &qword_2B018);
  sub_21F30((a2 + *(v3 + 44)));
  v4 = sub_28818();
  sub_285A8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_7E8C(&qword_39CA0, &qword_2B020);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

unint64_t sub_23A24()
{
  result = qword_39C80;
  if (!qword_39C80)
  {
    sub_7F38(&qword_39C78, &qword_2B008);
    sub_15494(&qword_39C88, &qword_39C90, &qword_2B010, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39C80);
  }

  return result;
}

unint64_t sub_23ADC()
{
  result = qword_39CD0;
  if (!qword_39CD0)
  {
    sub_7F38(&qword_39CC8, &qword_2B048);
    sub_23B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39CD0);
  }

  return result;
}

unint64_t sub_23B68()
{
  result = qword_39CD8;
  if (!qword_39CD8)
  {
    sub_7F38(&qword_39CE0, &qword_2B050);
    sub_15494(&qword_39CE8, &qword_39CF0, &qword_2B058, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39CD8);
  }

  return result;
}

uint64_t sub_23C20()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_23C58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_77F4;

  return sub_22D94();
}

unint64_t sub_23D0C()
{
  result = qword_39D58;
  if (!qword_39D58)
  {
    sub_7F38(&qword_39D50, &qword_2B0F8);
    sub_23DC4();
    sub_15494(&qword_39C88, &qword_39C90, &qword_2B010, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39D58);
  }

  return result;
}

unint64_t sub_23DC4()
{
  result = qword_39D60;
  if (!qword_39D60)
  {
    sub_7F38(&qword_39D68, &qword_2B100);
    sub_23E7C();
    sub_15494(&qword_39D80, &qword_39D88, &qword_2B110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39D60);
  }

  return result;
}

unint64_t sub_23E7C()
{
  result = qword_39D70;
  if (!qword_39D70)
  {
    sub_7F38(&qword_39D78, &qword_2B108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39D70);
  }

  return result;
}

uint64_t sub_23F08(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1AC24(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23F4C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1ABAC(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_23F90()
{
  result = qword_39DA8;
  if (!qword_39DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39DA8);
  }

  return result;
}

unint64_t sub_23FE8()
{
  result = qword_39DB0;
  if (!qword_39DB0)
  {
    sub_7F38(&qword_39DB8, &qword_2B158);
    sub_23A24();
    sub_240A4(&qword_39DC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39DB0);
  }

  return result;
}

uint64_t sub_240A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_240F0()
{
  result = qword_39DC8;
  if (!qword_39DC8)
  {
    sub_7F38(&qword_39CA0, &qword_2B020);
    sub_15494(&qword_39DD0, &qword_39DD8, &qword_2B160, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39DC8);
  }

  return result;
}

uint64_t sub_241B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  *a2 = *(v3 + OBJC_IVAR___AXGuestPassServer__profileList);
}

uint64_t sub_24268(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28078();
}

uint64_t AXGuestPassRootView.init()@<X0>(uint64_t a1@<X8>)
{
  v21 = sub_284C8();
  v20[1] = *(v21 - 8);
  __chkstk_darwin(v21);
  v20[2] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_284E8();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for AXGuestPassServer(0);
  v24 = sub_AD5C();
  sub_28A58();
  v4 = v23;
  *a1 = v22;
  *(a1 + 8) = v4;
  LOBYTE(v24) = 0;
  sub_28A58();
  v5 = v23;
  *(a1 + 16) = v22;
  *(a1 + 24) = v5;
  v6 = type metadata accessor for AXGuestPassRootView(0);
  sub_290A8();
  v7 = sub_28FE8();
  v8 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v9 = *&v7[v8];

  sub_29098();
  sub_277EC(&qword_39DE0, &type metadata accessor for AXSettings.GuestPass, &protocol conformance descriptor for AXSettings.GuestPass);
  sub_28B38();
  v10 = (a1 + *(v6 + 28));
  sub_7E8C(&qword_39040, &qword_29DE0);
  v11 = sub_280B8();
  v12 = sub_28158();
  v14 = v13;

  *v10 = v12;
  v10[1] = v14;
  sub_284D8();
  sub_7E8C(&qword_39048, &qword_29DE8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29DD0;
  sub_284B8();
  sub_284A8();
  v24 = v15;
  sub_277EC(&qword_39050, &type metadata accessor for NWBrowser.Descriptor.Options.DeviceType, &protocol conformance descriptor for NWBrowser.Descriptor.Options.DeviceType);
  sub_7E8C(&qword_39058, &qword_29DF0);
  sub_15494(&qword_39060, &qword_39058, &qword_29DF0, &protocol conformance descriptor for [A]);
  sub_29208();
  sub_284F8();
  v16 = enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:);
  v17 = sub_28508();
  (*(*(v17 - 8) + 104))(v10, v16, v17);
  v18 = *(v6 + 32);
  sub_28438();
  *(a1 + v18) = sub_28418();

  sub_283F8();
}

uint64_t type metadata accessor for AXGuestPassRootView(uint64_t a1)
{
  result = qword_39EA0;
  if (!qword_39EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of AXGuestPassRootView.guestPassSettings(uint64_t a1)
{
  swift_getObjectType();
  sub_277EC(&qword_39DE0, &type metadata accessor for AXSettings.GuestPass, &protocol conformance descriptor for AXSettings.GuestPass);

  return sub_28B38();
}

uint64_t AXGuestPassRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for AXGuestPassRootView(0);
  v4 = v3 - 8;
  v60 = *(v3 - 8);
  v5 = *(v60 + 64);
  __chkstk_darwin(v3);
  v61 = v5;
  v64 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7E8C(&qword_39DE8, &qword_2B168);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v47 = sub_7E8C(&qword_39DF0, &qword_2B170);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  object = &v43 - v10;
  v50 = sub_7E8C(&qword_39DF8, &qword_2B178);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v62 = &v43 - v11;
  v52 = sub_7E8C(&qword_39E00, &qword_2B180);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - v12;
  v73 = sub_28A08();
  v55 = *(v4 + 32);
  v63 = v1;
  sub_28B28();
  swift_getKeyPath();
  sub_28B48();

  v13 = *(v7 + 8);
  v57 = v7 + 8;
  v58 = v13;
  v13(v9, v6);
  v14 = v64;
  sub_25344(v2, v64);
  v60 = *(v60 + 80);
  v15 = (v60 + 16) & ~v60;
  v56 = v15;
  v16 = swift_allocObject();
  sub_253AC(v14, v16 + v15);
  v44 = sub_7E8C(&qword_39E08, &qword_2B1B8);
  v46 = sub_25480();
  v17 = sub_25560();
  sub_289B8();

  v18 = v63;
  sub_28B28();
  swift_getKeyPath();
  sub_28B48();

  v58(v9, v6);
  v19 = v64;
  sub_25344(v18, v64);
  v20 = v56;
  v21 = swift_allocObject();
  sub_253AC(v19, v21 + v20);
  v45 = sub_7E8C(&qword_39E28, &qword_2B1F0);
  v66 = v44;
  v67 = &type metadata for AXSUIGuestPassOnboardingView;
  v68 = v46;
  v69 = v17;
  v46 = &opaque type descriptor for <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_2581C();
  v24 = v47;
  v25 = object;
  sub_289B8();

  (*(v48 + 8))(v25, v24);
  v26._object = 0x800000000002BE70;
  v26._countAndFlagsBits = 0xD00000000000001FLL;
  v27 = GuestPassLocString(_:)(v26);
  object = v27._object;
  v72 = v27;
  v28 = v63;
  sub_28B28();
  swift_getKeyPath();
  sub_28B48();

  v58(v9, v6);
  v65 = v28;
  v29 = sub_7E8C(&qword_39E38, &qword_2B228);
  v66 = v24;
  v67 = v45;
  v68 = OpaqueTypeConformance2;
  v69 = v23;
  v30 = swift_getOpaqueTypeConformance2();
  v41 = sub_A978();
  v42 = sub_15494(&qword_39E40, &qword_39E38, &qword_2B228, &protocol conformance descriptor for TupleView<A>);
  v31 = v49;
  v32 = v50;
  v33 = v62;
  sub_28988();

  (*(v51 + 8))(v33, v32);
  v34 = v63;
  sub_28B18();
  v35 = v66;
  LOBYTE(v7) = sub_29058();

  LOBYTE(v73) = v7 & 1;
  v36 = v64;
  sub_25344(v34, v64);
  v37 = v56;
  v38 = swift_allocObject();
  sub_253AC(v36, v38 + v37);
  v66 = v32;
  v67 = &type metadata for String;
  v68 = v29;
  v69 = v30;
  v70 = v41;
  v71 = v42;
  swift_getOpaqueTypeConformance2();
  v39 = v52;
  sub_289E8();

  return (*(v53 + 8))(v31, v39);
}

uint64_t sub_25128@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29038();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25180@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_7E8C(&qword_39DE8, &qword_2B168);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v16[-v7];
  type metadata accessor for AXGuestPassRootView(0);
  sub_28B28();
  swift_getKeyPath();
  sub_28B48();

  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = v21;
  v11 = v22;
  v17 = v23;
  sub_28B28();
  swift_getKeyPath();
  sub_28B48();

  result = (v9)(v6, v2);
  v13 = v18;
  v14 = v19;
  v15 = v20;
  *a1 = 0;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v17;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_25344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXGuestPassRootView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXGuestPassRootView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25410@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AXGuestPassRootView(0);

  return sub_25180(a1);
}

unint64_t sub_25480()
{
  result = qword_39E10;
  if (!qword_39E10)
  {
    sub_7F38(&qword_39E08, &qword_2B1B8);
    sub_2550C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39E10);
  }

  return result;
}

unint64_t sub_2550C()
{
  result = qword_39E18;
  if (!qword_39E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39E18);
  }

  return result;
}

unint64_t sub_25560()
{
  result = qword_39E20;
  if (!qword_39E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39E20);
  }

  return result;
}

uint64_t sub_255B4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_29058();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2560C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AXGuestPassRootView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = *(v5 + 36);
  v9 = sub_28508();
  (*(*(v9 - 8) + 16))(a2, a1 + v8, v9);
  v10 = *(a1 + *(v5 + 40));
  sub_25344(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_253AC(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = type metadata accessor for AXDevicePickerRepresentable(0);
  *(a2 + *(v13 + 24)) = v10;
  v14 = (a2 + *(v13 + 20));
  *v14 = sub_27DC4;
  v14[1] = v12;

  LOBYTE(v12) = sub_28808();
  v15 = sub_28618();
  result = sub_7E8C(&qword_39E28, &qword_2B1F0);
  v17 = a2 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = v12;
  return result;
}

uint64_t sub_257AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXGuestPassRootView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2560C(v4, a1);
}

unint64_t sub_2581C()
{
  result = qword_39E30;
  if (!qword_39E30)
  {
    sub_7F38(&qword_39E28, &qword_2B1F0);
    sub_277EC(&qword_397A8, type metadata accessor for AXDevicePickerRepresentable, &unk_2AA04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39E30);
  }

  return result;
}

void sub_258D8(uint64_t a1, char **a2)
{
  v4 = sub_28298();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_28268();
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28178();
  (*(v5 + 16))(v7, a1, v4);
  v11 = sub_28258();
  v12 = sub_29108();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v8;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = a2;
    v16 = v15;
    v31 = v15;
    *v14 = 136315138;
    v17 = sub_28278();
    v28 = a1;
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_89C0(v17, v19, &v31);
    a1 = v28;

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "AXGuestPassRootView: Endpoint selected %s", v14, 0xCu);
    sub_8F68(v16);
    a2 = v27;

    (*(v29 + 8))(v10, v26);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v29 + 8))(v10, v8);
  }

  v21 = a2[3];
  LOBYTE(v31) = *(a2 + 16);
  v32 = v21;
  LOBYTE(v30) = 1;
  sub_7E8C(&qword_39F00, &qword_2B2B0);
  sub_28A78();
  v22 = a2[1];
  v31 = *a2;
  v32 = v22;
  sub_7E8C(&qword_393B0, &qword_2A450);
  sub_28A68();
  v23 = v30;
  swift_getKeyPath();
  v31 = v23;
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v24 = *&v23[OBJC_IVAR___AXGuestPassServer__networkConnection];

  sub_1B474(a1);
}

uint64_t sub_25C7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29078();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25CD4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v56 = sub_7E8C(&qword_393E0, &qword_2A530);
  v3 = *(v56 - 8);
  v4 = __chkstk_darwin(v56);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v49 - v7;
  v9 = type metadata accessor for AXGuestPassRootView(0);
  v50 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v51 = v10;
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7E8C(&qword_39F08, &unk_2B2C8);
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = __chkstk_darwin(v12);
  v57 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v60 = &v49 - v15;
  v16 = a1[1];
  v61 = *a1;
  v62 = v16;
  sub_7E8C(&qword_393B0, &qword_2A450);
  sub_28A68();
  v17 = v63;
  swift_getKeyPath();
  v61 = v17;
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v18 = *&v17[OBJC_IVAR___AXGuestPassServer__profileList];

  v19 = *(v18 + 16);
  v55 = v3;
  v58 = v8;
  v59 = v6;
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = sub_27760(v19, 0);
  v21 = sub_27834(&v61, v20 + 4, v19, v18);
  sub_2798C(v61);
  if (v21 != v19)
  {
    __break(1u);
LABEL_4:

    v20 = &_swiftEmptyArrayStorage;
  }

  v61 = v20;
  swift_getKeyPath();
  v49 = a1;
  sub_25344(a1, v11);
  v22 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v23 = swift_allocObject();
  sub_253AC(v11, v23 + v22);
  sub_7E8C(&unk_39580, &unk_2B320);
  sub_15494(&qword_39F10, &unk_39580, &unk_2B320, &protocol conformance descriptor for [A]);
  sub_15494(&qword_39688, &qword_393E0, &qword_2A530, &protocol conformance descriptor for Button<A>);
  sub_28B08();
  v24._object = 0x800000000002BE90;
  v24._countAndFlagsBits = 0xD000000000000019;
  GuestPassLocString(_:)(v24);
  sub_7E8C(&qword_39DA0, &qword_2B150);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29DC0;
  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 name];

  v28 = sub_28EC8();
  v30 = v29;

  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_23F90();
  *(v25 + 32) = v28;
  *(v25 + 40) = v30;
  v31 = sub_28ED8();
  v33 = v32;

  v61 = v31;
  v62 = v33;
  sub_25344(v49, v11);
  v34 = swift_allocObject();
  sub_253AC(v11, v34 + v22);
  sub_A978();
  v35 = v58;
  sub_28AC8();
  v36 = v52;
  v37 = v53;
  v38 = *(v52 + 16);
  v39 = v57;
  v38(v57, v60, v53);
  v40 = v55;
  v41 = v56;
  v42 = *(v55 + 16);
  v42(v59, v35, v56);
  v43 = v54;
  v38(v54, v39, v37);
  v44 = sub_7E8C(&qword_39F18, &qword_2B330);
  v45 = v59;
  v42(&v43[*(v44 + 48)], v59, v41);
  v46 = *(v40 + 8);
  v46(v58, v41);
  v47 = *(v36 + 8);
  v47(v60, v37);
  v46(v45, v41);
  return (v47)(v57, v37);
}

uint64_t sub_26354(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AXGuestPassRootView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = *a1;
  v7 = a1[1];
  v13[0] = v8;
  v13[1] = v7;
  sub_25344(a2, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_253AC(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = (v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v8;
  v11[1] = v7;
  sub_A978();
  swift_bridgeObjectRetain_n();
  return sub_28AC8();
}

uint64_t sub_264A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v22 = v6;
  sub_7E8C(&qword_393B0, &qword_2A450);
  sub_28A68();
  swift_getKeyPath();
  v21 = v20;
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v7 = *&v20[OBJC_IVAR___AXGuestPassServer__profileList];

  if (!*(v7 + 16))
  {
  }

  sub_11FDC(a2, a3);
  if ((v8 & 1) == 0)
  {
  }

  v9 = objc_opt_self();
  isa = sub_28E38().super.isa;

  v21 = 0;
  v11 = [v9 dataWithPropertyList:isa format:100 options:0 error:&v21];

  v12 = v21;
  if (v11)
  {
    v13 = sub_28028();
    v15 = v14;
  }

  else
  {
    v17 = v12;
    sub_27F78();

    swift_willThrow();

    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v21 = v5;
  v22 = v6;
  sub_28A68();
  swift_getKeyPath();
  v21 = v20;
  sub_28088();

  v18 = *&v20[OBJC_IVAR___AXGuestPassServer__networkConnection];

  sub_1D10C(v13, v15);
  type metadata accessor for AXGuestPassRootView(0);
  sub_7E8C(&qword_39DE8, &qword_2B168);
  sub_28B18();
  v19 = v21;
  sub_29088();

  return sub_90BC(v13, v15);
}

uint64_t sub_26798(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_28168();
  sub_28118();
  isa = sub_28E38().super.isa;

  v15[0] = 0;
  v4 = [v2 dataWithPropertyList:isa format:100 options:0 error:v15];

  v5 = v15[0];
  if (v4)
  {
    v6 = sub_28028();
    v8 = v7;
  }

  else
  {
    v9 = v5;
    sub_27F78();

    swift_willThrow();

    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v10 = *(a1 + 8);
  v15[0] = *a1;
  v15[1] = v10;
  sub_7E8C(&qword_393B0, &qword_2A450);
  sub_28A68();
  swift_getKeyPath();
  v15[0] = v14;
  sub_277EC(&qword_39550, type metadata accessor for AXGuestPassServer, &unk_2A5F0);
  sub_28088();

  v11 = *&v14[OBJC_IVAR___AXGuestPassServer__networkConnection];

  sub_1D10C(v6, v8);
  type metadata accessor for AXGuestPassRootView(0);
  sub_7E8C(&qword_39DE8, &qword_2B168);
  sub_28B18();
  v12 = v15[0];
  sub_29088();

  return sub_90BC(v6, v8);
}

uint64_t sub_269D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_7E8C(&qword_39288, &qword_2A540);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  LODWORD(v6) = *a2;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v6 == 1 || (v16 = *(a3 + 16), v17 = v9, sub_7E8C(&qword_39F00, &qword_2B2B0), sub_28A68(), (v15 & 1) != 0))
  {
    v16 = v8;
    v17 = v9;
    v15 = 0;
    sub_7E8C(&qword_39F00, &qword_2B2B0);
    return sub_28A78();
  }

  else
  {
    v11 = sub_28F98();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_28F78();
    v12 = sub_28F68();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    sub_16BFC(0, 0, v7, &unk_2B2C0, v13);
  }
}

uint64_t sub_26B6C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for AXGuestPassRootView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_269D4(a1, a2, v6);
}

uint64_t sub_26C08()
{
  v1 = sub_28268();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_28F78();
  v0[5] = sub_28F68();
  v3 = sub_28F58();
  v0[6] = v3;
  v0[7] = v2;

  return _swift_task_switch(sub_26CF8, v3, v2);
}

uint64_t sub_26CF8(uint64_t a1)
{
  *(v1 + 64) = sub_280B8();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_26D94;

  return AXGuestPassService.endGuestPassTransfer()();
}

uint64_t sub_26D94()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_26EB0;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_A718;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_26EB0()
{
  v1 = v0[8];

  sub_28178();
  swift_errorRetain();
  v2 = sub_28258();
  v3 = sub_29128();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Error ending guest pass transfer after user UI dismissal: %@", v4, 0xCu);
    sub_AC9C(v5);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2704C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_7E8C(&qword_39DE8, &qword_2B168);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_28508();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_27190(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_7E8C(&qword_39DE8, &qword_2B168);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_28508();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_272C0(uint64_t a1)
{
  sub_2743C(319, &qword_39EB0, type metadata accessor for AXGuestPassServer, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_273EC();
    if (v2 <= 0x3F)
    {
      sub_2743C(319, &unk_39EC0, &type metadata accessor for AXSettings.GuestPass, &type metadata accessor for Bindable);
      if (v3 <= 0x3F)
      {
        sub_28508();
        if (v4 <= 0x3F)
        {
          sub_28438();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_273EC()
{
  if (!qword_39EB8)
  {
    v0 = sub_28A98();
    if (!v1)
    {
      atomic_store(v0, &qword_39EB8);
    }
  }
}

void sub_2743C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_274A0()
{
  sub_7F38(&qword_39E00, &qword_2B180);
  sub_7F38(&qword_39DF8, &qword_2B178);
  sub_7F38(&qword_39E38, &qword_2B228);
  sub_7F38(&qword_39DF0, &qword_2B170);
  sub_7F38(&qword_39E28, &qword_2B1F0);
  sub_7F38(&qword_39E08, &qword_2B1B8);
  sub_25480();
  sub_25560();
  swift_getOpaqueTypeConformance2();
  sub_2581C();
  swift_getOpaqueTypeConformance2();
  sub_A978();
  sub_15494(&qword_39E40, &qword_39E38, &qword_2B228, &protocol conformance descriptor for TupleView<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2767C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_276B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_77F4;

  return sub_26C08();
}

void *sub_27760(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_7E8C(&unk_39F20, &unk_2B360);
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

uint64_t sub_277EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_27834(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_27994(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXGuestPassRootView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26354(a1, v4);
}

uint64_t sub_27A14()
{
  v1 = *(type metadata accessor for AXGuestPassRootView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26798(v2);
}

uint64_t sub_27A7C()
{
  v1 = (type metadata accessor for AXGuestPassRootView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_7E8C(&qword_39DE8, &qword_2B168);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[9];
  v9 = sub_28508();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_27BE0()
{
  v1 = *(type metadata accessor for AXGuestPassRootView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_264A8(v0 + v2, v4, v5);
}

uint64_t sub_27C70()
{
  v1 = (type metadata accessor for AXGuestPassRootView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_7E8C(&qword_39DE8, &qword_2B168);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[9];
  v8 = sub_28508();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_27DC4(uint64_t a1)
{
  v3 = *(type metadata accessor for AXGuestPassRootView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_258D8(a1, v4);
}