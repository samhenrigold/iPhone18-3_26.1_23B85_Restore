unint64_t sub_100817450(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100706B30(a2, a3);
    v7 = sub_100937438();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
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

uint64_t sub_100817548(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for IDSGroupEncryptionControllerGroup(uint64_t a1)
{
  result = qword_100CC9248;
  if (!qword_100CC9248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008176BC()
{
  v1 = *(v0 + 16);
  v2 = sub_100817450(&_swiftEmptyArrayStorage, &qword_100CB71D0, &qword_1009B64E8, sub_1007417B0);
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_membersByURI;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_100817750()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_membersByURI;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if ((v5 & 0xC000000000000001) == 0)
  {
    v9 = v3;
    goto LABEL_8;
  }

  if (v5 < 0)
  {
    v6 = *(v2 + v4);
  }

  else
  {
    v6 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = v3;
  result = sub_100937378();
  if (!__OFADD__(result, 1))
  {
    *(v2 + v4) = sub_10081593C(v6, result + 1);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v4);
    sub_100816AC8(v3, v1, isUniquelyReferenced_nonNull_native);
    *(v2 + v4) = v11;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_10081782C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  *a1 = sub_1008157C0(v3, sub_1007417B0, &qword_100CB71D0, &qword_1009B64E8, sub_10081593C);
  return swift_endAccess();
}

uint64_t sub_1008178DC(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100014170(0, &qword_100CB4A78, IDSDestination_ptr);
    sub_100746FD4(&qword_100CB4A80, &qword_100CB4A78, IDSDestination_ptr);
    result = sub_100936E38();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = IDSDestination_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100937268();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100741A18(&v9, v7, &qword_100CB4A78, IDSDestination_ptr, &qword_100CB4FD8, &unk_1009B64C0);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1009373F8();
  }

  v5 = result;
  v4 = sub_1009373F8();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100817A68(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v38 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v33 = v7;
    v34 = v3;
    v32 = &v32;
    __chkstk_darwin(v9);
    v35 = &v32 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v8);
    v36 = 0;
    v10 = 0;
    v3 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_13:
      v18 = v15 | (v10 << 6);
      v7 = v4;
      v19 = *(v4 + 48);
      v37 = v18;
      v20 = *(v19 + 8 * v18);
      v21 = *((swift_isaMask & *v20) + 0xB0);
      v22 = v20;
      v8 = v22;
      v23 = v21();
      if (v23)
      {
        v24 = v23;
        type metadata accessor for IDSGroupEncryptionControllerMember();
        v25 = v38;
        v8 = sub_100937038();

        v4 = v7;
        if (v8)
        {
          *&v35[(v37 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v37;
          if (__OFADD__(v36++, 1))
          {
            __break(1u);
LABEL_18:
            v27 = sub_1008152C0(v35, v33, v36, v4, &unk_100CB34B0, &qword_1009ACFF8);

            return v27;
          }
        }
      }

      else
      {

        v4 = v7;
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_18;
      }

      v17 = *(v3 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v38;
  sub_100815030(v29, v7, v4, v30);
  v27 = v31;

  return v27;
}

Swift::Int sub_100817D6C(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_100817A68(a1, a2);
  }

  v2 = a2;
  sub_100937118();
  if (sub_100937198())
  {
    type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
    do
    {
      v3 = swift_dynamicCast();
      v4 = (*((swift_isaMask & *v19) + 0xB0))(v3);
      if (v4 && (v5 = v4, type metadata accessor for IDSGroupEncryptionControllerMember(), v6 = v2, v7 = sub_100937038(), v6, v5, (v7 & 1) != 0))
      {
        v8 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v8)
        {
          sub_100744114(v8 + 1, &unk_100CB34B0, &qword_1009ACFF8);
        }

        result = sub_100937028(*(&_swiftEmptySetSingleton + 5));
        v10 = &_swiftEmptySetSingleton + 56;
        v11 = -1 << *(&_swiftEmptySetSingleton + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(&_swiftEmptySetSingleton + (v12 >> 6) + 7)) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(&_swiftEmptySetSingleton + (v12 >> 6) + 7))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v13 == v16;
            if (v13 == v16)
            {
              v13 = 0;
            }

            v15 |= v17;
            v18 = *&v10[8 * v13];
          }

          while (v18 == -1);
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        }

        *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v14) = v19;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
      }
    }

    while (sub_100937198());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100818000@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = [*(v1 + 24) participantIdentifier];
  v5 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_formerlyActiveParticipantsByID;
  result = swift_beginAccess();
  v7 = *(v3 + v5);
  if (*(v7 + 16) && (result = sub_10072517C(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v7 + 56) + 8 * result);
    result = v9;
  }

  else
  {
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1008180A0()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = [*(v0 + 24) participantIdentifier];
  v5 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_participantsByID;
  swift_beginAccess();
  v6 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v1 + v5);
  *(v1 + v5) = 0x8000000000000000;
  sub_100816E00(v6, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + v5) = v13;
  swift_endAccess();
  v8 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_participantsByPushToken;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if ((v9 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v9 < 0)
  {
    v10 = *(v1 + v8);
  }

  else
  {
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_100937378();
  if (!__OFADD__(result, 1))
  {
    *(v1 + v8) = sub_100815B88(v10, result + 1);
LABEL_7:
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v1 + v8);
    sub_100816C64(v6, v2, v12);
    *(v1 + v8) = v14;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1008181E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *&v1[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID];
  v4 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_participantsByID;
  swift_beginAccess();
  v5 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v4);
  *(v2 + v4) = 0x8000000000000000;
  sub_100816E00(v5, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + v4) = v13;
  swift_endAccess();
  v7 = *&v5[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken];
  v8 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_participantsByPushToken;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if ((v9 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v9 < 0)
  {
    v10 = *(v2 + v8);
  }

  else
  {
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_100937378();
  if (!__OFADD__(result, 1))
  {
    *(v2 + v8) = sub_100815B88(v10, result + 1);
LABEL_7:
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v2 + v8);
    sub_100816C64(v5, v7, v12);
    *(v2 + v8) = v14;
    swift_endAccess();
    swift_beginAccess();
    sub_100808C4C(0, v3);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_100818368()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *&v1[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_pushToken];
  swift_beginAccess();
  v4 = sub_1008157C0(v3, sub_1007DBB60, &qword_100CB71C0, &qword_1009B64D8, sub_100815B88);
  swift_endAccess();

  v5 = *&v1[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID];
  swift_beginAccess();
  sub_100808C4C(0, v5);
  swift_endAccess();
  v6 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_formerlyActiveParticipantsByID;
  swift_beginAccess();
  v7 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v6);
  *(v2 + v6) = 0x8000000000000000;
  sub_100816E00(v7, v5, isUniquelyReferenced_nonNull_native);
  *(v2 + v6) = v10;
  return swift_endAccess();
}

uint64_t sub_100818580(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008185E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_stateLogger;

  v5 = sub_1009364B8();
  v6 = sub_100936F18();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10001273C(v2, v3, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "Event: %s", v7, 0xCu);
    sub_100012970(v8);
  }

  return (*((swift_isaMask & *v1) + 0x410))(&v1[v4], 0, 0xE000000000000000);
}

double sub_100818788@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  swift_beginAccess();
  *a2 = *(v4 + v5);

  return result;
}

void sub_1008187F0(uint64_t a1)
{
  sub_1009364D8();
  if (v1 <= 0x3F)
  {
    sub_100818944(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100818944(uint64_t a1)
{
  if (!qword_100CB71A0)
  {
    sub_100936038();
    v1 = sub_100937058();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB71A0);
    }
  }
}

uint64_t sub_10081899C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100818A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100818AC8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v1 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_pushHandler);
  sub_100706B30(&unk_100CBB120, &unk_1009AD1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AC7A0;
  *(inited + 32) = sub_100936B38();
  *(inited + 40) = v6;
  v7 = v1 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id;
  v8 = *(v1 + OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_id);
  v9 = *(v7 + 8);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 80) = sub_100936B38();
  *(inited + 88) = v10;
  v11 = v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_sessionID;
  v12 = *(v2 + OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_sessionID);
  v13 = *(v11 + 8);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 128) = sub_100936B38();
  *(inited + 136) = v14;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;

  sub_100746D18(inited);
  swift_setDeallocating();
  sub_100706B30(&qword_100CB36E8, &unk_1009B64F0);
  swift_arrayDestroy();
  isa = sub_100936A58().super.isa;

  v16 = sub_100936B28();
  v17 = sub_100936B28();
  [v4 sendPreKeyRequestMessage:isa toDestination:v3 forGroup:v16 sessionID:v17];
}

id sub_100818DCC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1007C9A6C(11);
  *&v3[OBJC_IVAR___IDSSenderKeyEncryptionController_persistenceManager] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100818EB4(void *a1, uint64_t a2, id a3, void *a4)
{
  v5 = v4;
  v159 = a1;
  v160 = a2;
  v8 = sub_100936448();
  __chkstk_darwin(v8 - 8);
  v10 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100706B30(&unk_100CB4A50, &unk_1009AFFE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v143 - v12;
  v14 = type metadata accessor for SenderKeyAndState(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = OBJC_IVAR___IDSSenderKeyEncryptionController_persistenceManager;
  v18 = *(v4 + OBJC_IVAR___IDSSenderKeyEncryptionController_persistenceManager);
  sub_1008C8228(a3, a4);

  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v157 = v5;
    v154 = v10;
    sub_10081B630(v13, v17);
    type metadata accessor for SenderKeyUtils();
    v19 = [a4 prefixedURI];
    v20 = sub_100936B38();
    v22 = v21;

    v155 = a3;
    v23 = [a3 prefixedURI];
    v24 = sub_100936B38();
    v25 = v17;
    v27 = v26;

    v28 = sub_10088F024(v20, v22, v24, v27);
    v30 = v29;

    if (v30 >> 60 == 15)
    {
      sub_10081B6F8(v25, type metadata accessor for SenderKeyAndState);
      a3 = v155;
      goto LABEL_5;
    }

    v49 = v25[1];
    v151 = *v25;
    v51 = v25[2];
    v50 = v25[3];
    v52 = v25 + *(v14 + 20);
    v156 = v30;
    sub_100715738(*v52, *(v52 + 1));
    sub_1007483B0(v28, v156);
    v53 = v154;
    sub_100936428();
    v152 = v28;
    v153 = v25;
    v149 = v50;
    v150 = v51;
    v148 = v49;
    v54 = sub_100936438();
    v57 = v56;
    v144 = v58;
    v145 = 0;
    v59 = v54;
    v160 = v54;
    sub_100715738(v54, v56);
    sub_10081A0D8(16, v59, v57, &v164);
    v159 = v164;
    v147 = v165;
    v60 = sub_1009363E8();
    v62 = v61;
    v63 = *(v157 + v158);
    v64 = v149;
    v65 = v150;
    v146 = v60;
    v158 = v62;
    v66 = sub_1008C7AD8(v150, v149, 1, v60, v62);

    if ((v66 & 1) == 0)
    {
      sub_100706B30(&unk_100CBB120, &unk_1009AD1B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1009AC700;
      *(inited + 32) = sub_100936B38();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v82;
      *(inited + 48) = 0xD00000000000001CLL;
      *(inited + 56) = 0x8000000100B03F10;
      sub_100746D18(inited);
      swift_setDeallocating();
      sub_100013814(inited + 32, &qword_100CB36E8, &unk_1009B64F0);
      v83 = objc_allocWithZone(NSError);
      v84 = sub_100936B28();
      isa = sub_100936A58().super.isa;

      v86 = [v83 initWithDomain:v84 code:3 userInfo:isa];

      v87 = objc_allocWithZone(IDSOffGridCryptionResult);
      v88 = v86;
      v89 = sub_100935D68();

      v48 = [v87 initWithEncryptedData:0 keyIndex:0 key:0 keyID:0 authTag:0 error:v89];
      sub_1007156D8(v146, v158);
      sub_1007156D8(v159, v147);

      sub_1007156D8(v160, v57);
      sub_10001C370(v152, v156);
      v90 = v53;
LABEL_60:
      sub_10081B6F8(v90, &type metadata accessor for PaddyOutgoingSymmetricRatchet);
      sub_10081B6F8(v153, type metadata accessor for SenderKeyAndState);
      return v48;
    }

    v143 = v57;
    sub_100715738(v65, v64);
    v67 = a4;
    v68 = v155;
    v69 = sub_1009364B8();
    v70 = sub_100936F18();
    sub_1007156D8(v65, v64);

    v71 = v64;
    if (os_log_type_enabled(v69, v70))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v164 = v74;
      *v72 = 136315906;
      v75 = sub_100935E88(0);
      v77 = sub_10001273C(v75, v76, &v164);

      *(v72 + 4) = v77;
      v71 = v149;
      *(v72 + 12) = 1024;
      *(v72 + 14) = v144;
      *(v72 + 18) = 2112;
      *(v72 + 20) = v67;
      *(v72 + 28) = 2112;
      *(v72 + 30) = v68;
      *v73 = v67;
      v73[1] = v68;
      v78 = v67;
      v79 = v68;
      _os_log_impl(&_mh_execute_header, v69, v70, "Successfully encrypted data using keyID: %s current keyIndex: %u from: %@ to: %@", v72, 0x26u);
      sub_100706B30(&qword_100CB36B0, &unk_1009AD140);
      swift_arrayDestroy();

      sub_100012970(v74);

      v80 = v150;
    }

    else
    {
      v80 = v65;
    }

    v91 = v143;
    v92 = v151;
    v166 = &type metadata for Data;
    v167 = &protocol witness table for Data;
    v164 = v80;
    v165 = v71;
    v93 = sub_1000226D4(&v164, &type metadata for Data);
    v94 = *v93;
    v95 = v93[1];
    v96 = v95 >> 62;
    v98 = v159;
    v97 = v160;
    if ((v95 >> 62) > 1)
    {
      if (v96 != 2)
      {
        *&v161[6] = 0;
        *v161 = 0;
        sub_100715738(v160, v91);
        sub_100715738(v150, v149);
        sub_100715738(v92, v148);
        v99 = v161;
        v100 = v161;
        goto LABEL_37;
      }

      v101 = v92;
      v102 = *(v94 + 16);
      v103 = *(v94 + 24);
      sub_100715738(v160, v91);
      sub_100715738(v150, v149);
      sub_100715738(v101, v148);
      v97 = sub_100935BE8();
      v104 = v97;
      if (v97)
      {
        v97 = sub_100935C18();
        v94 = v102 - v97;
        if (__OFSUB__(v102, v97))
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v104 += v94;
      }

      v105 = __OFSUB__(v103, v102);
      v106 = v103 - v102;
      if (!v105)
      {
LABEL_29:
        v110 = sub_100935C08();
        if (v110 >= v106)
        {
          v111 = v106;
        }

        else
        {
          v111 = v110;
        }

        v112 = (v111 + v104);
        if (v104)
        {
          v100 = v112;
        }

        else
        {
          v100 = 0;
        }

        v99 = v104;
        goto LABEL_37;
      }

      __break(1u);
    }

    else if (!v96)
    {
      *v161 = v94;
      *&v161[8] = v95;
      v161[10] = BYTE2(v95);
      v161[11] = BYTE3(v95);
      v161[12] = BYTE4(v95);
      v161[13] = BYTE5(v95);
      sub_100715738(v160, v91);
      sub_100715738(v150, v149);
      sub_100715738(v92, v148);
      v99 = v161;
      v100 = &v161[BYTE6(v95)];
LABEL_37:
      sub_1007174E8(v99, v100, &v162);
      v113 = v162;
      v155 = v163;
      sub_100012970(&v164);
      v166 = &type metadata for Data;
      v167 = &protocol witness table for Data;
      v114 = v147;
      v164 = v98;
      v165 = v147;
      v115 = sub_1000226D4(&v164, &type metadata for Data);
      v116 = *v115;
      v117 = v115[1];
      v118 = v117 >> 62;
      v157 = v113;
      if ((v117 >> 62) > 1)
      {
        if (v118 != 2)
        {
          *&v161[6] = 0;
          *v161 = 0;
          sub_100715738(v98, v114);
          v119 = v161;
          v120 = v161;
          goto LABEL_59;
        }

        v121 = *(v116 + 16);
        v122 = *(v116 + 24);
        sub_100715738(v98, v114);
        v114 = sub_100935BE8();
        if (v114)
        {
          v123 = sub_100935C18();
          v116 = v121 - v123;
          if (__OFSUB__(v121, v123))
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v114 += v116;
        }

        v105 = __OFSUB__(v122, v121);
        v124 = v122 - v121;
        if (!v105)
        {
          goto LABEL_51;
        }

        __break(1u);
      }

      else if (!v118)
      {
        *v161 = v116;
        *&v161[8] = v117;
        v161[10] = BYTE2(v117);
        v161[11] = BYTE3(v117);
        v161[12] = BYTE4(v117);
        v161[13] = BYTE5(v117);
        sub_100715738(v98, v114);
        v119 = v161;
        v120 = &v161[BYTE6(v117)];
LABEL_59:
        sub_1007174E8(v119, v120, &v162);
        v131 = v162;
        v132 = v163;
        sub_100012970(&v164);
        v150 = objc_allocWithZone(IDSOffGridCryptionResult);
        v133 = v160;
        v134 = v143;
        v135 = sub_100935E78().super.isa;
        sub_1007156D8(v133, v134);
        v136 = v151;
        v137 = v148;
        v138 = sub_100935E78().super.isa;
        sub_1007156D8(v136, v137);
        v139 = v157;
        v140 = v155;
        v141 = sub_100935E78().super.isa;
        sub_1007156D8(v139, v140);
        v142 = sub_100935E78().super.isa;
        sub_1007156D8(v131, v132);
        v48 = [v150 initWithEncryptedData:v135 keyIndex:v144 key:v138 keyID:v141 authTag:v142 error:0];
        sub_1007156D8(v146, v158);

        sub_1007156D8(v159, v147);
        sub_1007156D8(v133, v134);
        sub_10001C370(v152, v156);
        v90 = v154;
        goto LABEL_60;
      }

      v125 = v116;
      v126 = v116 >> 32;
      v124 = v126 - v125;
      if (v126 >= v125)
      {
        sub_100715738(v98, v114);
        v114 = sub_100935BE8();
        if (!v114)
        {
LABEL_51:
          v128 = sub_100935C08();
          if (v128 >= v124)
          {
            v129 = v124;
          }

          else
          {
            v129 = v128;
          }

          v130 = (v129 + v114);
          if (v114)
          {
            v120 = v130;
          }

          else
          {
            v120 = 0;
          }

          v119 = v114;
          goto LABEL_59;
        }

        v127 = sub_100935C18();
        if (!__OFSUB__(v125, v127))
        {
          v114 += v125 - v127;
          goto LABEL_51;
        }

LABEL_66:
        __break(1u);
      }

      goto LABEL_62;
    }

    v107 = v94;
    v108 = v94 >> 32;
    v106 = v108 - v107;
    if (v108 < v107)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    sub_100715738(v97, v91);
    sub_100715738(v150, v149);
    sub_100715738(v151, v148);
    v104 = sub_100935BE8();
    if (v104)
    {
      v109 = sub_100935C18();
      if (__OFSUB__(v107, v109))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v104 += v107 - v109;
    }

    goto LABEL_29;
  }

  sub_100013814(v13, &unk_100CB4A50, &unk_1009AFFE0);
LABEL_5:
  v31 = a4;
  v32 = a3;
  v33 = sub_1009364B8();
  v34 = sub_100936F18();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412546;
    *(v35 + 4) = v32;
    *(v35 + 12) = 2112;
    *(v35 + 14) = v31;
    *v36 = v32;
    v36[1] = v31;
    v37 = v31;
    v38 = v32;
    _os_log_impl(&_mh_execute_header, v33, v34, "Missing sender key to encrypt to: %@ from: %@", v35, 0x16u);
    sub_100706B30(&qword_100CB36B0, &unk_1009AD140);
    swift_arrayDestroy();
  }

  sub_100706B30(&unk_100CBB120, &unk_1009AD1B0);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1009AC700;
  *(v39 + 32) = sub_100936B38();
  *(v39 + 72) = &type metadata for String;
  *(v39 + 40) = v40;
  *(v39 + 48) = 0xD000000000000017;
  *(v39 + 56) = 0x8000000100B03ED0;
  sub_100746D18(v39);
  swift_setDeallocating();
  sub_100013814(v39 + 32, &qword_100CB36E8, &unk_1009B64F0);
  v41 = objc_allocWithZone(NSError);
  v42 = sub_100936B28();
  v43 = sub_100936A58().super.isa;

  v44 = [v41 initWithDomain:v42 code:1 userInfo:v43];

  v45 = objc_allocWithZone(IDSOffGridCryptionResult);
  v46 = v44;
  v47 = sub_100935D68();

  v48 = [v45 initWithEncryptedData:0 keyIndex:0 key:0 keyID:0 authTag:0 error:v47];
  return v48;
}

uint64_t sub_10081A0D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_10081B57C(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_10081B518(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = sub_100935E68();
    v14 = v13;
    result = sub_1007156D8(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

id sub_10081A2D8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, void *a6, void *a7)
{
  v154 = a3;
  v144 = a1;
  v145 = a2;
  v12 = sub_1009363D8();
  __chkstk_darwin(v12 - 8);
  v157 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for SenderKeyAndState(0);
  v14 = *(v156 - 8);
  __chkstk_darwin(v156);
  v16 = (&v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = OBJC_IVAR___IDSSenderKeyEncryptionController_persistenceManager;
  v170 = v7;
  v17 = *(v7 + OBJC_IVAR___IDSSenderKeyEncryptionController_persistenceManager);
  v18 = sub_1008C7D14(a4, a5, a6);

  v19 = v18;
  v168 = v18[2];
  if (v168)
  {
    v142 = a4;
    v143 = a5;
    result = type metadata accessor for SenderKeyUtils();
    v21 = 0;
    v162 = 0;
    v169 = OBJC_IVAR___IDSSenderKeyEncryptionController_logger;
    v165 = v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v166 = result;
    *&v22 = 136315394;
    v147 = v22;
    *&v22 = 138412290;
    v146 = v22;
    v148 = v16;
    v155 = a7;
    v163 = v14;
    v164 = a6;
    v167 = v19;
    while (1)
    {
      if (v21 >= v19[2])
      {
        __break(1u);
        return result;
      }

      sub_10081B694(v165 + *(v14 + 72) * v21, v16);
      v24 = (v16 + *(type metadata accessor for SenderKeyInfo(0) + 28));
      v25 = *v24;
      v26 = v24[1];
      v28 = v24[2];
      v27 = v24[3];

      v29 = v26;
      v30 = v27;
      v161 = v28;
      v31 = sub_10088F024(v25, v29, v28, v27);
      if (v32 >> 60 == 15)
      {
        sub_10081B6F8(v16, type metadata accessor for SenderKeyAndState);

        v14 = v163;
        v23 = v164;
      }

      else
      {
        v33 = v31;
        v34 = v32;
        v35 = *v16;
        v149 = v16[1];
        v150 = v35;
        v37 = v16[2];
        v36 = v16[3];
        v38 = (v16 + *(v156 + 20));
        v39 = *v38;
        v158 = v38[1];
        v159 = v39;
        sub_100715738(v37, v36);
        v40 = sub_1009364B8();
        v41 = sub_100936EE8();
        sub_1007156D8(v37, v36);
        v42 = os_log_type_enabled(v40, v41);
        v160 = v30;
        v151 = v36;
        v152 = v37;
        if (v42)
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v153 = v33;
          v45 = v44;
          v171 = v44;
          *v43 = v147;
          v46 = sub_100935E88(0);
          v48 = v34;
          v49 = sub_10001273C(v46, v47, &v171);

          *(v43 + 4) = v49;
          v34 = v48;
          *(v43 + 12) = 1024;
          *(v43 + 14) = v154;
          _os_log_impl(&_mh_execute_header, v40, v41, "Trying keyID: %s keyIndex: %u", v43, 0x12u);
          sub_100012970(v45);
          v33 = v153;

          v16 = v148;
        }

        sub_100715738(v159, v158);
        sub_1007483B0(v33, v34);
        v50 = v162;
        sub_1009363A8();
        a7 = v155;
        if (!v50)
        {
          v165 = sub_1009363B8();
          v166 = v98;

          v99 = sub_100936398();
          v101 = v100;
          v102 = *(v170 + v141);
          v103 = v151;
          v104 = v152;
          v168 = v101;
          LOBYTE(v101) = sub_1008C7AD8(v152, v151, 0, v99, v101);

          if (v101)
          {
            v163 = v99;
            v153 = v33;
            v167 = v34;
            v105 = v164;
            v106 = a7;
            sub_100715738(v104, v103);
            v107 = sub_1009364B8();
            v108 = sub_100936F18();
            sub_1007156D8(v104, v103);

            if (os_log_type_enabled(v107, v108))
            {
              v109 = swift_slowAlloc();
              LODWORD(v169) = v108;
              v110 = v109;
              v164 = swift_slowAlloc();
              v170 = swift_slowAlloc();
              v171 = v170;
              *v110 = 136315906;
              v111 = sub_100935E88(0);
              v113 = sub_10001273C(v111, v112, &v171);

              *(v110 + 4) = v113;
              *(v110 + 12) = 1024;
              *(v110 + 14) = v154;
              *(v110 + 18) = 2112;
              *(v110 + 20) = v105;
              *(v110 + 28) = 2112;
              *(v110 + 30) = v106;
              v114 = v164;
              *v164 = v105;
              v114[1] = v106;
              v115 = v105;
              v116 = v106;
              _os_log_impl(&_mh_execute_header, v107, v169, "Successfully decrypted data using keyID: %s current keyIndex: %u from: %@ to: %@", v110, 0x26u);
              sub_100706B30(&qword_100CB36B0, &unk_1009AD140);
              swift_arrayDestroy();

              sub_100012970(v170);
            }

            v117 = objc_allocWithZone(IDSURI);
            v118 = v165;
            v119 = v166;
            sub_100715738(v165, v166);
            v120 = v149;
            v121 = v150;
            sub_100715738(v150, v149);
            v122 = sub_100936B28();

            v123 = [v117 initWithPrefixedURI:v122];

            v124 = objc_allocWithZone(IDSOffGridCryptionResult);
            isa = sub_100935E78().super.isa;
            sub_1007156D8(v118, v119);
            v126 = sub_100935E78().super.isa;
            sub_1007156D8(v121, v120);
            v97 = [v124 initWithDecryptedData:isa key:v126 originalRecipientURI:v123 error:0];
            sub_1007156D8(v163, v168);

            sub_1007156D8(v118, v119);
            v127 = v153;
            v128 = v167;
          }

          else
          {

            sub_100706B30(&unk_100CBB120, &unk_1009AD1B0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1009AC700;
            *(inited + 32) = sub_100936B38();
            v130 = v34;
            *(inited + 72) = &type metadata for String;
            *(inited + 40) = v131;
            *(inited + 48) = 0xD00000000000001CLL;
            *(inited + 56) = 0x8000000100B03F10;
            sub_100746D18(inited);
            v132 = v33;
            swift_setDeallocating();
            sub_100013814(inited + 32, &qword_100CB36E8, &unk_1009B64F0);
            v133 = objc_allocWithZone(NSError);
            v134 = sub_100936B28();
            v135 = sub_100936A58().super.isa;

            v136 = [v133 initWithDomain:v134 code:3 userInfo:v135];

            v137 = objc_allocWithZone(IDSOffGridCryptionResult);
            v138 = v136;
            v139 = sub_100935D68();

            v97 = [v137 initWithDecryptedData:0 key:0 originalRecipientURI:0 error:v139];
            sub_1007156D8(v99, v168);
            sub_1007156D8(v165, v166);

            v127 = v132;
            v128 = v130;
          }

          sub_10001C370(v127, v128);
          sub_10081B6F8(v157, &type metadata accessor for PaddyIncomingSymmetricRatchet);
          sub_10081B6F8(v16, type metadata accessor for SenderKeyAndState);
          return v97;
        }

        sub_10001C370(v33, v34);

        v162 = 0;
        swift_errorRetain();
        v51 = sub_1009364B8();
        v52 = sub_100936F18();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = v146;
          swift_errorRetain();
          v55 = _swift_stdlib_bridgeErrorToNSError();
          *(v53 + 4) = v55;
          *v54 = v55;
          _os_log_impl(&_mh_execute_header, v51, v52, "Decryption attempt failed with error: %@ - trying next", v53, 0xCu);
          sub_100013814(v54, &qword_100CB36B0, &unk_1009AD140);
        }

        else
        {
        }

        v14 = v163;
        result = sub_10081B6F8(v16, type metadata accessor for SenderKeyAndState);
        v23 = v164;
      }

      v19 = v167;
      if (v168 == ++v21)
      {

        v56 = v23;
        v57 = a7;
        v59 = v142;
        v58 = v143;
        sub_100715738(v142, v143);
        v60 = sub_1009364B8();
        v61 = sub_100936EF8();
        sub_1007156D8(v59, v58);

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v171 = v64;
          *v62 = 136315650;
          v65 = sub_100935E88(0);
          v67 = sub_10001273C(v65, v66, &v171);

          *(v62 + 4) = v67;
          *(v62 + 12) = 2112;
          *(v62 + 14) = v56;
          *(v62 + 22) = 2112;
          *(v62 + 24) = v57;
          *v63 = v56;
          v63[1] = v57;
          v68 = v56;
          v69 = v57;
          _os_log_impl(&_mh_execute_header, v60, v61, "All decryption attempts using keyIDByte: %s failed for message from: %@ to: %@", v62, 0x20u);
          sub_100706B30(&qword_100CB36B0, &unk_1009AD140);
          swift_arrayDestroy();

          sub_100012970(v64);
        }

        sub_100706B30(&unk_100CBB120, &unk_1009AD1B0);
        v70 = swift_initStackObject();
        *(v70 + 16) = xmmword_1009AC700;
        *(v70 + 32) = sub_100936B38();
        *(v70 + 72) = &type metadata for String;
        *(v70 + 40) = v71;
        *(v70 + 48) = 0xD000000000000012;
        *(v70 + 56) = 0x8000000100B03F30;
        sub_100746D18(v70);
        swift_setDeallocating();
        sub_100013814(v70 + 32, &qword_100CB36E8, &unk_1009B64F0);
        v72 = objc_allocWithZone(NSError);
        v73 = sub_100936B28();
        v74.super.isa = sub_100936A58().super.isa;

        v75 = [v72 initWithDomain:v73 code:5 userInfo:v74.super.isa];
        goto LABEL_22;
      }
    }
  }

  v76 = a6;
  v77 = a7;
  v78 = v76;
  v79 = v77;
  sub_100715738(a4, a5);
  v80 = sub_1009364B8();
  v81 = sub_100936EF8();

  sub_1007156D8(a4, a5);
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v171 = v84;
    *v82 = 138413058;
    *(v82 + 4) = v78;
    *(v82 + 12) = 2112;
    *(v82 + 14) = v79;
    *v83 = v78;
    v83[1] = v79;
    *(v82 + 22) = 2080;
    v85 = v78;
    v86 = v79;
    v87 = sub_100935E88(0);
    v89 = sub_10001273C(v87, v88, &v171);

    *(v82 + 24) = v89;
    *(v82 + 32) = 1024;
    *(v82 + 34) = v154;
    _os_log_impl(&_mh_execute_header, v80, v81, "No matching keys found for decrypting from: %@ to: %@ keyIDByte: %s keyIndex: %u", v82, 0x26u);
    sub_100706B30(&qword_100CB36B0, &unk_1009AD140);
    swift_arrayDestroy();

    sub_100012970(v84);
  }

  sub_100706B30(&unk_100CBB120, &unk_1009AD1B0);
  v90 = swift_initStackObject();
  *(v90 + 16) = xmmword_1009AC700;
  *(v90 + 32) = sub_100936B38();
  *(v90 + 72) = &type metadata for String;
  *(v90 + 40) = v91;
  *(v90 + 48) = 0xD000000000000017;
  *(v90 + 56) = 0x8000000100B03F50;
  sub_100746D18(v90);
  swift_setDeallocating();
  sub_100013814(v90 + 32, &qword_100CB36E8, &unk_1009B64F0);
  v92 = objc_allocWithZone(NSError);
  v73 = sub_100936B28();
  v74.super.isa = sub_100936A58().super.isa;

  v75 = [v92 initWithDomain:v73 code:2 userInfo:v74.super.isa];
LABEL_22:
  v93 = v75;

  v94 = objc_allocWithZone(IDSOffGridCryptionResult);
  v95 = v93;
  v96 = sub_100935D68();

  v97 = [v94 initWithDecryptedData:0 key:0 originalRecipientURI:0 error:v96];
  return v97;
}

id sub_10081B3E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10081B494@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10081B758(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10081B4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10081B8D4();
  v5 = sub_10074CC9C();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_10081B518(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10081B57C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_10081B630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SenderKeyAndState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10081B694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SenderKeyAndState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10081B6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10081B758(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

unint64_t sub_10081B780()
{
  result = qword_100CB71D8;
  if (!qword_100CB71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB71D8);
  }

  return result;
}

uint64_t type metadata accessor for SenderKeyEncryptionController(uint64_t a1)
{
  result = qword_100CC9470;
  if (!qword_100CC9470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10081B828(uint64_t a1)
{
  result = sub_1009364D8();
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

unint64_t sub_10081B8D4()
{
  result = qword_100CB7208;
  if (!qword_100CB7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7208);
  }

  return result;
}

uint64_t sub_10081B928()
{
  v1 = type metadata accessor for IDSGroupEncryptionMaterialData(0);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074BFA4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return *v3;
    }

    v5 = &qword_100CB2FD0;
    v6 = &qword_1009B6620;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      return *(v3 + 1);
    }

    v5 = &qword_100CB7210;
    v6 = &qword_1009B6628;
  }

  v7 = sub_100706B30(v5, v6);
  v8 = *(v7 + 48);
  v9 = *&v3[*(v7 + 64)];
  v10 = sub_1009360A8();
  (*(*(v10 - 8) + 8))(&v3[v8], v10);
  return v9;
}

uint64_t type metadata accessor for IDSGroupEncryptionMaterialData(uint64_t a1)
{
  result = qword_100CC9880;
  if (!qword_100CC9880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10081BA9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IDSGroupEncryptionMaterialData(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074BFA4(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = &qword_100CB2FD0;
    v9 = &qword_1009B6620;
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = &qword_100CB7210;
    v9 = &qword_1009B6628;
LABEL_5:
    v10 = sub_100706B30(v8, v9);
    v11 = *(v10 + 48);
    sub_1007156D8(*&v6[*(v10 + 64)], *&v6[*(v10 + 64) + 8]);
    v12 = sub_1009360A8();
    return (*(*(v12 - 8) + 32))(a1, &v6[v11], v12);
  }

  sub_100936098();
  return sub_10074BD04(v6);
}

uint64_t sub_10081BBC8()
{
  v1 = type metadata accessor for IDSGroupEncryptionMaterialData(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074BFA4(v0, v3);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10074BD04(v3);
    return 0;
  }

  else
  {
    v5 = sub_100706B30(&qword_100CB7210, &qword_1009B6628);
    v6 = v5[12];
    sub_1007156D8(*&v3[v5[16]], *&v3[v5[16] + 8]);
    v4 = *&v3[v5[20]];
    v7 = sub_1009360A8();
    (*(*(v7 - 8) + 8))(&v3[v6], v7);
  }

  return v4;
}

uint64_t sub_10081BCD8()
{
  v1 = type metadata accessor for IDSGroupEncryptionMaterialData(0);
  __chkstk_darwin(v1);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10074BFA4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = *v3;
      v11 = sub_100706B30(&qword_100CB2FD0, &qword_1009B6620);
      v12 = *(v11 + 48);
      sub_1007156D8(*(v3 + *(v11 + 64)), *(v3 + *(v11 + 64) + 8));
      v13 = sub_1009360A8();
      (*(*(v13 - 8) + 8))(v3 + v12, v13);
      return v10;
    }

    else
    {
      sub_10074BD04(v3);
      return 11;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = *v3;
    sub_1007156D8(*(v3 + 1), *(v3 + 2));
    if (v14)
    {
      return 6;
    }

    else
    {
      return 12;
    }
  }

  else
  {
    v5 = *v3;
    v6 = sub_100706B30(&qword_100CB7210, &qword_1009B6628);
    v7 = *(v6 + 48);
    sub_1007156D8(*(v3 + *(v6 + 64)), *(v3 + *(v6 + 64) + 8));
    v8 = sub_1009360A8();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
    if (v5)
    {
      return 14;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_10081BE84(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1009360A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IDSGroupEncryptionMaterialData(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074BFA4(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = *v9;
      v18 = sub_100706B30(&qword_100CB2FD0, &qword_1009B6620);
      v19 = &v9[*(v18 + 64)];
      v14 = *v19;
      v15 = v19[1];
      (*(v4 + 32))(v6, &v9[*(v18 + 48)], v3);
      sub_100937678(2uLL);
      sub_100937698(v17);
      sub_10081CF88(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100936AD8();
      sub_100935EB8();
      goto LABEL_6;
    }

    v26 = *v9;
    v27 = *(v9 + 1);
    sub_100937678(3uLL);
    sub_100935EB8();
    v24 = v26;
    v25 = v27;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = *v9;
      v12 = sub_100706B30(&qword_100CB7210, &qword_1009B6628);
      v13 = &v9[v12[16]];
      v14 = *v13;
      v15 = v13[1];
      v16 = *&v9[v12[20]];
      (*(v4 + 32))(v6, &v9[v12[12]], v3);
      sub_100937678(0);
      sub_100937678(v11);
      sub_10081CF88(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100936AD8();
      sub_100935EB8();
      sub_100937698(v16);
LABEL_6:
      sub_1007156D8(v14, v15);
      return (*(v4 + 8))(v6, v3);
    }

    v21 = *v9;
    v22 = *(v9 + 1);
    v23 = *(v9 + 2);
    sub_100937678(1uLL);
    sub_100937678(v21);
    sub_100935EB8();
    v24 = v22;
    v25 = v23;
  }

  return sub_1007156D8(v24, v25);
}

Swift::Int sub_10081C1C8()
{
  sub_100937668();
  sub_10081BE84(v1);
  return sub_1009376C8();
}

Swift::Int sub_10081C20C(uint64_t a1)
{
  sub_100937668();
  sub_10081BE84(v2);
  return sub_1009376C8();
}

Swift::Int sub_10081C24C(uint64_t a1)
{
  sub_100937668();
  if (BYTE4(a1) <= 1u)
  {
    sub_100937678(BYTE4(a1) != 0);
    v2 = a1 & 1;
LABEL_6:
    sub_100937678(v2);
    return sub_1009376C8();
  }

  if (BYTE4(a1) != 2)
  {
    v2 = 3;
    goto LABEL_6;
  }

  sub_100937678(2uLL);
  sub_100937698(a1);
  return sub_1009376C8();
}

void sub_10081C30C()
{
  v1 = *v0;
  if (*(v0 + 4) > 1u)
  {
    if (*(v0 + 4) == 2)
    {
      sub_100937678(2uLL);
      sub_100937698(v1);
      return;
    }

    v2 = 3;
  }

  else
  {
    if (*(v0 + 4))
    {
      sub_100937678(1uLL);
    }

    else
    {
      sub_100937678(0);
    }

    v2 = v1 & 1;
  }

  sub_100937678(v2);
}

Swift::Int sub_10081C388(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  sub_100937668();
  if (v3 <= 1)
  {
    if (v3)
    {
      sub_100937678(1uLL);
    }

    else
    {
      sub_100937678(0);
    }

    v4 = v2 & 1;
    goto LABEL_9;
  }

  if (v3 != 2)
  {
    v4 = 3;
LABEL_9:
    sub_100937678(v4);
    return sub_1009376C8();
  }

  sub_100937678(2uLL);
  sub_100937698(v2);
  return sub_1009376C8();
}

BOOL sub_10081C430(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009360A8();
  v5 = *(v4 - 8);
  v106 = v4;
  v107 = v5;
  __chkstk_darwin(v4);
  v104 = &v96[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v105 = &v96[-v8];
  __chkstk_darwin(v9);
  v11 = &v96[-v10];
  __chkstk_darwin(v12);
  v103 = &v96[-v13];
  v14 = type metadata accessor for IDSGroupEncryptionMaterialData(0);
  __chkstk_darwin(v14);
  v16 = &v96[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v96[-v18];
  __chkstk_darwin(v20);
  v22 = &v96[-v21];
  __chkstk_darwin(v23);
  v25 = &v96[-v24];
  v26 = sub_100706B30(&qword_100CB72D0, &qword_1009B6938);
  __chkstk_darwin(v26 - 8);
  v28 = &v96[-v27];
  v30 = &v96[*(v29 + 56) - v27];
  sub_10074BFA4(a1, &v96[-v27]);
  sub_10074BFA4(a2, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10074BFA4(v28, v25);
      v32 = sub_100706B30(&qword_100CB7210, &qword_1009B6628);
      v105 = v32[12];
      v33 = v32[16];
      v35 = *(v25 + v33);
      v34 = *(v25 + v33 + 8);
      v36 = v32[20];
      v37 = *(v25 + v36);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1007156D8(v35, v34);
        (*(v107 + 8))(&v105[v25], v106);
LABEL_19:
        sub_10081CFD0(v28);
        return 0;
      }

      v104 = v34;
      LODWORD(v100) = *v25;
      v74 = *v30;
      v98 = v37;
      v99 = v74;
      v101 = *(v30 + v33);
      v102 = v35;
      v75 = *(v30 + v33 + 8);
      v97 = *(v30 + v36);
      v76 = v107;
      v77 = *(v107 + 32);
      v78 = v105;
      v79 = &v105[v25];
      v80 = v103;
      v81 = v106;
      v77(v103, v79, v106);
      v82 = &v78[v30];
      v83 = v81;
      v77(v11, v82, v81);
      if (v100 != v99)
      {
        sub_1007156D8(v101, v75);
        sub_1007156D8(v102, v104);
        v84 = *(v76 + 8);
        v84(v11, v81);
        v84(v80, v81);
        goto LABEL_31;
      }

      v86 = v101;
      v87 = sub_100936068();
      v88 = v80;
      v89 = v102;
      if ((v87 & 1) == 0)
      {
        sub_1007156D8(v86, v75);
        sub_1007156D8(v89, v104);
        v95 = *(v107 + 8);
        v95(v11, v81);
        v95(v88, v81);
        goto LABEL_31;
      }

      v90 = v104;
      v91 = sub_10071CAE8(v102, v104, v86, v75);
      sub_1007156D8(v86, v75);
      sub_1007156D8(v89, v90);
      v92 = *(v107 + 8);
      v92(v11, v83);
      v92(v88, v83);
      if (v91)
      {
        v59 = v98 == v97;
        goto LABEL_25;
      }

LABEL_31:
      sub_10074BD04(v28);
      return 0;
    }

    sub_10074BFA4(v28, v22);
    v62 = *(v22 + 1);
    v61 = *(v22 + 2);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v63 = *v22;
      v64 = *(v30 + 8);
      v65 = *(v30 + 16);
      if (v63 != *v30)
      {
        sub_1007156D8(*(v30 + 8), *(v30 + 16));
        sub_1007156D8(v62, v61);
        goto LABEL_31;
      }

      v59 = sub_10071CAE8(v62, v61, *(v30 + 8), *(v30 + 16));
      sub_1007156D8(v64, v65);
      v70 = v62;
      v71 = v61;
      goto LABEL_24;
    }

    v72 = v62;
    v73 = v61;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_10074BFA4(v28, v16);
    v66 = *v16;
    v67 = v16[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v68 = *v30;
      v69 = *(v30 + 8);
      v59 = sub_10071CAE8(v66, v67, *v30, v69);
      sub_1007156D8(v68, v69);
      v70 = v66;
      v71 = v67;
LABEL_24:
      sub_1007156D8(v70, v71);
      goto LABEL_25;
    }

    v72 = v66;
    v73 = v67;
LABEL_18:
    sub_1007156D8(v72, v73);
    goto LABEL_19;
  }

  sub_10074BFA4(v28, v19);
  v38 = sub_100706B30(&qword_100CB2FD0, &qword_1009B6620);
  v39 = *(v38 + 48);
  v40 = *(v38 + 64);
  v42 = *&v19[v40];
  v41 = *&v19[v40 + 8];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1007156D8(v42, v41);
    (*(v107 + 8))(&v19[v39], v106);
    goto LABEL_19;
  }

  v102 = v42;
  v103 = v41;
  v43 = *v19;
  v44 = *v30;
  v45 = *(v30 + v40);
  v100 = *(v30 + v40 + 8);
  v101 = v45;
  v46 = v107;
  v47 = *(v107 + 32);
  v48 = &v19[v39];
  v49 = v105;
  v50 = v106;
  v47(v105, v48, v106);
  v51 = (v30 + v39);
  v52 = v104;
  v47(v104, v51, v50);
  if (v43 != v44)
  {
    sub_1007156D8(v101, v100);
    sub_1007156D8(v102, v103);
    v85 = *(v46 + 8);
    v85(v52, v50);
    v85(v49, v50);
    goto LABEL_31;
  }

  v53 = v100;
  v54 = v101;
  v55 = v49;
  if ((sub_100936068() & 1) == 0)
  {
    sub_1007156D8(v54, v53);
    sub_1007156D8(v102, v103);
    v93 = *(v107 + 8);
    v93(v52, v50);
    v93(v49, v50);
    goto LABEL_31;
  }

  v57 = v102;
  v56 = v103;
  v58 = v53;
  v59 = sub_10071CAE8(v102, v103, v54, v53);
  sub_1007156D8(v54, v58);
  sub_1007156D8(v57, v56);
  v60 = *(v107 + 8);
  v60(v52, v50);
  v60(v55, v50);
LABEL_25:
  sub_10074BD04(v28);
  return v59;
}

BOOL sub_10081CB88(uint64_t a1, uint64_t a2)
{
  if (BYTE4(a1) > 1u)
  {
    if (BYTE4(a1) == 2)
    {
      if (BYTE4(a2) == 2)
      {
        return a1 == a2;
      }
    }

    else if (BYTE4(a2) == 3 && !a2)
    {
      return 1;
    }
  }

  else if (BYTE4(a1))
  {
    if (BYTE4(a2) == 1)
    {
      return ((a2 ^ a1) & 1) == 0;
    }
  }

  else if (!BYTE4(a2))
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  return 0;
}

void sub_10081CC68(uint64_t a1)
{
  sub_10081CCF8(319);
  if (v1 <= 0x3F)
  {
    sub_10081CD88();
    if (v2 <= 0x3F)
    {
      sub_10081CDE8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10081CCF8(uint64_t a1)
{
  if (!qword_100CB7288)
  {
    sub_1009360A8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100CB7288);
    }
  }
}

void sub_10081CD88()
{
  if (!qword_100CB7290)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CB7290);
    }
  }
}

void sub_10081CDE8(uint64_t a1)
{
  if (!qword_100CB7298)
  {
    type metadata accessor for IDSQRProtoMaterialInfo_MaterialType();
    sub_1009360A8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CB7298);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for IDSGroupEncryptionDesiredMaterialKind(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSGroupEncryptionDesiredMaterialKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSGroupEncryptionDesiredMaterialKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_10081CF00(uint64_t a1)
{
  if (*(a1 + 4) <= 2u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_10081CF18(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_10081CF88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10081CFD0(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB72D0, &qword_1009B6938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10081D038()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10081D13C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10081D248(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936138();
}

uint64_t sub_10081D320()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10081D424@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10081D530(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936138();
}

uint64_t sub_10081D608()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10081D70C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10081D818(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936138();
}

uint64_t sub_10081D8F0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_10081DA1C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10081DB50(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936138();
}

uint64_t sub_10081DC28()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_10081DD54@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10081DE88(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936138();
}

uint64_t sub_10081DF60()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_10081E098@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10081E1D8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936138();
}

uint64_t sub_10081E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_10083439C(a5, a6, a7);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18, &protocol conformance descriptor for <A> A?);
  sub_1009368C8();
}

uint64_t sub_10081E37C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice(0);
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_10083460C();
  sub_100936898();

  return v0;
}

uint64_t sub_10081E494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice(0);
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_10083460C();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_10081E5B4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB72D8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7828);
  sub_100936138();
}

uint64_t sub_10081E680(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice(0);
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  sub_10083460C();
  sub_1009368B8();
}

uint64_t sub_10081E730(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v16 = swift_allocObject();
  sub_10081E7D8(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v16;
}

void *sub_10081E7D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v10 = v9;
  v12._countAndFlagsBits = a3;
  v12._object = a4;
  *(v9 + 48) = sub_100706B30(&qword_100CB7310, &qword_1009B6A98);
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  *(v9 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v9 + 24));
  sub_100936858();
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310, &qword_1009AD9F0);
  sub_100022AC0(&qword_100CB3CD8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v9 + 16) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v9 + 17) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8, &qword_1009ADA48);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v9 + 18) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB72E8, &qword_1009B6A88);
  type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice(0);
  sub_10083460C();
  sub_1009366C8();

  *(v9 + 19) = 0;
  sub_100936158();
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v9 + 16) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v9 + 17) = 0;
  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1007483B0(a9, *(&a9 + 1));
  sub_1009366D8();

  sub_10001C370(a9, *(&a9 + 1));
  *(v9 + 18) = 0;

  sub_100936C08(v12);

  sub_1000226D4((v10 + 24), *(v10 + 48));
  swift_getKeyPath();
  sub_1009366D8();
  sub_10001C370(a9, *(&a9 + 1));

  return v9;
}

void *sub_10081EDB8(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB7310, &qword_1009B6A98);
  sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310, &qword_1009AD9F0);
  sub_100022AC0(&qword_100CB3CD8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8, &qword_1009ADA48);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB72E8, &qword_1009B6A88);
  type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice(0);
  sub_10083460C();
  sub_1009366C8();

  *(v1 + 19) = 0;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970((v1 + 24));
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10081F118()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10081F220@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10081F330(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

uint64_t sub_10081F408()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10081F50C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10081F618(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

uint64_t sub_10081F6F0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10081F7F8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10081F908(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

uint64_t sub_10081F9E0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10081FAE8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10081FBF8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

uint64_t sub_10081FCD0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10081FDD4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10081FEE0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

uint64_t sub_10081FFB0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1008200B4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1008201C0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

uint64_t sub_100820290()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_1008203BC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008204F0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

uint64_t sub_1008205C8()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1008206CC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1008207D8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

uint64_t sub_1008208B4(uint64_t a1)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v1;
}

double sub_1008209F0@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  *&v5 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_100820B2C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

uint64_t sub_100820C1C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

__n128 sub_100820CF4@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100835070();
  sub_1009368A8();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_100820E44@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100835070();
  sub_1009368A8();

  result = v5;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 96) = v10;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_100820F94(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

uint64_t sub_100821080(uint64_t a1, __int128 *a2)
{
  swift_getKeyPath();
  v12 = *a2;
  v3 = sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100834FEC(v3, v4, v5, v6, v7, v8, v9, v10, v12, *(&v12 + 1));
  sub_1009368C8();
}

uint64_t sub_10082113C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable(0);
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100835128();
  sub_100936898();

  return v0;
}

uint64_t sub_100821254@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable(0);
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100835128();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_100821374(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7318, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7954);
  sub_100936138();
}

uint64_t sub_100821440(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable(0);
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  sub_100835128();
  sub_1009368B8();
}

uint64_t sub_1008214F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, __int128 a9, char a10, __int128 a11, __int128 a12, uint64_t a13)
{
  *&v35 = a5;
  *(&v35 + 1) = a6;
  *&v34 = a3;
  *(&v34 + 1) = a4;
  v14 = swift_allocObject();
  *(v14 + 48) = sub_100706B30(&qword_100CB7350, &qword_1009B6C90);
  *&v38 = v13;
  *(&v38 + 1) = v13;
  *&v39 = sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  *(&v39 + 1) = v39;
  *(v14 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v14 + 24));
  sub_100936858();
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = 0uLL;
  sub_100706B30(&unk_100CBA310, &qword_1009AD9F0);
  sub_100022AC0(&qword_100CB3CD8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = 0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = xmmword_1009AD8D0;
  sub_100706B30(&qword_100CB3CE8, &qword_1009ADA48);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = xmmword_1009AD8D0;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v38 = &_swiftEmptyArrayStorage;
  sub_100706B30(&qword_100CB7330, &qword_1009B6C80);
  type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable(0);
  sub_100835128();
  sub_1009366C8();

  *(v14 + 19) = 0;
  sub_100936158();
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v38 = a1;
  *(&v38 + 1) = a2;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = v34;
  sub_100715738(v34, *(&v34 + 1));
  v30 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v34, *(&v34 + 1));
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = v35;
  sub_100715738(v35, *(&v35 + 1));
  sub_1009366D8();

  sub_1007156D8(v35, *(&v35 + 1));
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = a7;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = a8;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = a9;
  sub_1009366D8();

  *(v14 + 16) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  LOBYTE(v38) = a10;
  sub_1009366D8();

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = a11;
  sub_1007483B0(a11, *(&a11 + 1));
  sub_1009366D8();

  sub_10001C370(a11, *(&a11 + 1));
  *(v14 + 17) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v38 = a12;
  sub_1007483B0(a12, *(&a12 + 1));
  sub_1009366D8();

  sub_10001C370(a12, *(&a12 + 1));
  *(v14 + 18) = 0;
  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  v15 = *(a13 + 80);
  v42 = *(a13 + 64);
  v43 = v15;
  v44 = *(a13 + 96);
  v16 = *(a13 + 16);
  v38 = *a13;
  v39 = v16;
  v17 = *(a13 + 48);
  v40 = *(a13 + 32);
  v41 = v17;
  v18 = sub_1008350F0(a13, v37);
  sub_100834FEC(v18, v19, v20, v21, v22, v23, v24, v25, v30, 0xF000000000000000);
  sub_1009366D8();

  sub_100835040(a13);
  v26 = sub_100716518(a1, a2, v34, *(&v34 + 1));
  v28 = v27;

  sub_1000226D4((v14 + 24), *(v14 + 48));
  swift_getKeyPath();
  *&v38 = v26;
  *(&v38 + 1) = v28;
  sub_1009366D8();
  sub_100835040(a13);
  sub_10001C370(a12, *(&a12 + 1));
  sub_10001C370(a11, *(&a11 + 1));
  sub_1007156D8(v35, *(&v35 + 1));
  sub_1007156D8(v34, *(&v34 + 1));

  sub_1007156D8(v26, v28);
  return v14;
}

void sub_100821DD8(uint64_t *a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100022B2C(*a1, (v4 + 5));
    swift_beginAccess();
    sub_100012970((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    sub_100012970(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100012970((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

void *sub_100821EBC(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB7350, &qword_1009B6C90);
  sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310, &qword_1009AD9F0);
  sub_100022AC0(&qword_100CB3CD8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8, &qword_1009ADA48);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB7330, &qword_1009B6C80);
  type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable(0);
  sub_100835128();
  sub_1009366C8();

  *(v1 + 19) = 0;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970((v1 + 24));
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_100822308(uint64_t a1)
{
  v2 = sub_100835920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100822344(uint64_t a1)
{
  v2 = sub_100835920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100822380(void *a1)
{
  v3 = v1;
  v5 = sub_100706B30(&qword_100CB7358, &qword_1009B6C98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000226D4(a1, a1[3]);
  sub_100835920();
  sub_1009376F8();
  v19 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_100012D50(&v19, v11, &qword_100CB3CE8, &qword_1009ADA48);
  sub_100768A18();
  sub_1009374C8();
  if (!v2)
  {
    sub_10001C370(v13, *(&v13 + 1));
    v18 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_100012D50(&v18, v11, &qword_100CB3CE8, &qword_1009ADA48);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    LOBYTE(v13) = 2;
    sub_100937518();
    LOBYTE(v13) = 3;
    sub_100937508();
    v17 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 4;
    sub_100012D50(&v17, v11, &qword_100CB3CE8, &qword_1009ADA48);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v16 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 5;
    sub_100012D50(&v16, v11, &qword_100CB3CE8, &qword_1009ADA48);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v15 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 6;
    sub_100012D50(&v15, v11, &qword_100CB3CE8, &qword_1009ADA48);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v13 = *(v3 + 88);
    v14 = v13;
    v12 = 7;
    sub_100012D50(&v14, v11, &qword_100CB3CE8, &qword_1009ADA48);
    sub_1009374C8();
  }

  sub_10001C370(v13, *(&v13 + 1));
  return (*(v6 + 8))(v8, v5);
}

__n128 sub_10082275C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100835974(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1008227D4()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008228DC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008229EC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936138();
}

uint64_t sub_100822AC4()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100822BC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100822CD4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936138();
}

uint64_t sub_100822DAC()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100822EB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100822FBC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936138();
}

uint64_t sub_100823094()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100823198@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008232A4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936138();
}

uint64_t sub_10082337C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100823484@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100823594(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936138();
}

uint64_t sub_10082366C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100823774@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100823884(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936138();
}

uint64_t sub_10082395C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100823A94()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100823BCC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100823D54()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100823E8C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100823FC4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

double sub_10082414C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_1009368A8();

  return v0;
}

double sub_100824250@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_1009368A8();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10082435C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7360, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7A80);
  sub_100936138();
}

uint64_t sub_100824434(double a1)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  sub_1009368C8();
}

uint64_t *sub_1008244D0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9, Swift::String a10, uint64_t a12, uint64_t a13)
{
  v40._countAndFlagsBits = a7;
  v40._object = a8;
  v43._countAndFlagsBits = a5;
  v43._object = a6;
  v42._countAndFlagsBits = a3;
  v42._object = a4;
  v37 = a2;
  v38 = a1;
  v44 = a13;
  v45 = a12;
  v41 = a10;
  v39 = sub_100936038();
  v16 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[5] = sub_100706B30(&qword_100CB7370, &qword_1009B6E08);
  v19 = sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  v46._countAndFlagsBits = v12;
  v46._object = v12;
  v47 = v19;
  v48 = v19;
  v18[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v18 + 2);
  sub_100936858();
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = 0;
  sub_1009366D8();

  sub_100936158();
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = a1;
  v46._object = a2;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46 = v42;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46 = v43;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v20 = v40;
  v46 = v40;
  sub_100715738(v40._countAndFlagsBits, v40._object);
  v35 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v20._countAndFlagsBits, v20._object);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v21 = v41;
  v46 = v41;
  sub_100715738(v41._countAndFlagsBits, v41._object);
  sub_1009366D8();

  sub_1007156D8(v21._countAndFlagsBits, v21._object);
  v32 = *(v16 + 16);
  v22 = v36;
  v23 = v39;
  v32(v36, v45, v39);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v31 = sub_10083439C(&qword_100CB3DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009366D8();

  v24 = *(v16 + 8);
  v24(v22, v23);
  v33 = v24;
  v34 = v16 + 8;
  v32(v22, v44, v23);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  sub_1009366D8();

  v24(v22, v23);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  *&v46._countAndFlagsBits = a9;
  sub_1009366D8();

  v46._countAndFlagsBits = v38;
  v46._object = v37;

  sub_100936C08(v42);

  sub_100936C08(v43);

  v25 = v40;
  v26 = sub_100716518(v46._countAndFlagsBits, v46._object, v40._countAndFlagsBits, v40._object);
  v28 = v27;

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = v26;
  v46._object = v28;
  sub_1009366D8();

  sub_1007156D8(v41._countAndFlagsBits, v41._object);
  sub_1007156D8(v25._countAndFlagsBits, v25._object);
  v29 = v33;
  v33(v44, v23);
  v29(v45, v23);
  sub_1007156D8(v26, v28);
  return v18;
}

uint64_t *sub_100824BB4(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB7370, &qword_1009B6E08);
  sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_1000226D4(v1 + 2, v1[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_100936158();
  swift_beginAccess();
  sub_100012970(v1 + 2);
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_100824D54()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100824E5C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100824F6C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936138();
}

uint64_t sub_100825044()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100825148@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100825254(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936138();
}

uint64_t sub_10082532C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100825434@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100825544(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936138();
}

uint64_t sub_10082561C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100825720@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10082582C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936138();
}

uint64_t sub_100825904()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100825A0C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100825B1C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936138();
}

uint64_t sub_100825BF4()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100825D2C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100825E64(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10083439C(&qword_100CB7378, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7BAC);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100825FEC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = swift_allocObject();
  sub_100826084(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t *sub_100826084(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  v41 = a8;
  v38 = a7;
  v35 = a1;
  v36 = a6;
  v31[0] = a5;
  v34 = a2;
  v15 = *v8;
  v16 = sub_100936038();
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  __chkstk_darwin(v16);
  v37 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[5] = sub_100706B30(&qword_100CB7388, &qword_1009B6F00);
  v19 = sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  v42 = v15;
  v43 = v15;
  v44 = v19;
  v45 = v19;
  v9[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v9 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a1;
  v43 = a2;
  sub_1009366D8();

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a3;
  v43 = a4;
  v32 = a3;
  v33 = a4;
  sub_100715738(a3, a4);
  v31[1] = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(a3, a4);
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a5;
  v20 = v36;
  v43 = v36;
  sub_1009366D8();

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v21 = v38;
  v22 = v41;
  v42 = v38;
  v43 = v41;
  sub_100715738(v38, v41);
  sub_1009366D8();

  sub_1007156D8(v21, v22);
  v23 = v37;
  sub_100936028();
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  sub_10083439C(&qword_100CB3DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v24 = v39;
  sub_1009366D8();

  (*(v40 + 8))(v23, v24);
  v42 = v35;
  v43 = v34;

  v46._countAndFlagsBits = v31[0];
  v46._object = v20;
  sub_100936C08(v46);

  v25 = v32;
  v26 = v33;
  v27 = sub_100716518(v42, v43, v32, v33);
  v29 = v28;

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = v27;
  v43 = v29;
  sub_1009366D8();
  sub_1007156D8(v21, v41);
  sub_1007156D8(v25, v26);

  sub_1007156D8(v27, v29);
  return v9;
}

void sub_100826548(uint64_t *a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100022B2C(*a1, (v4 + 5));
    swift_beginAccess();
    sub_100012970((v5 + 16));
    a3(v4 + 5, v5 + 16);
    swift_endAccess();
    sub_100012970(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100012970((v5 + 16));
    a3(v4, v5 + 16);
    swift_endAccess();
  }

  free(v4);
}

uint64_t *sub_10082662C(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB7388, &qword_1009B6F00);
  sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970(v1 + 2);
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_100826774()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7390, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7CD8);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7398, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7BC8);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100826878@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7390, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7CD8);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7398, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7BC8);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100826984(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7390, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7CD8);
  sub_100936138();
}

uint64_t sub_100826A5C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7390, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7CD8);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7398, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7BC8);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100826B60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7390, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7CD8);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7398, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7BC8);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100826C6C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7390, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7CD8);
  sub_100936138();
}

uint64_t sub_100826D44()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7390, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7CD8);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7398, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7BC8);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_100826E84()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7390, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7CD8);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7398, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7BC8);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_100826FC4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_10083439C(&qword_100CB7390, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7CD8);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10082710C(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  sub_100827174(a1, a2, a3, a4);
  return v8;
}

void *sub_100827174(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v16 = a3;
  v17 = a4;
  v8 = *v4;
  v9 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v5[6] = sub_100706B30(&qword_100CB73A0, &qword_1009B6F88);
  v18 = type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle;
  v12 = sub_10083439C(&qword_100CB7398, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7BC8);
  v21 = v8;
  v22 = v8;
  v23 = v12;
  v24 = v12;
  v5[7] = swift_getOpaqueTypeConformance2();
  sub_100014250(v5 + 3);
  sub_100936858();
  *(v5 + 16) = 1;
  sub_100936158();
  sub_1000226D4(v5 + 3, v5[6]);
  swift_getKeyPath();
  v21 = a1;
  v22 = a2;
  sub_1009366D8();

  sub_1000226D4(v5 + 3, v5[6]);
  swift_getKeyPath();
  v21 = v16;
  v22 = v17;
  sub_1009366D8();

  sub_100936028();
  v13 = sub_100936038();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  v21 = v5;
  swift_getKeyPath();
  v19 = v5;
  v20 = v11;
  sub_10083439C(&qword_100CB7390, v18, &unk_1009B7CD8);
  sub_100936138();

  sub_100021EA4(v11);
  return v5;
}

uint64_t sub_10082747C(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 48) = sub_100706B30(&qword_100CB73A0, &qword_1009B6F88);
  sub_10083439C(&qword_100CB7398, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7BC8);
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v2 + 24));
  sub_100936858();
  *(v2 + 16) = 1;
  sub_100936158();
  *(v2 + 16) = 0;
  swift_beginAccess();
  sub_100012970((v2 + 24));
  sub_100308C84(a1, v2 + 24);
  swift_endAccess();
  return v2;
}

void *sub_1008275B4(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB73A0, &qword_1009B6F88);
  sub_10083439C(&qword_100CB7398, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7BC8);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 1;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970((v1 + 24));
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_100827710()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100827818@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100827928(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_100827A00()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100827B08@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100827C18(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_100827CF0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100827DF8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100827F08(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_100827FE0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008280E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008281F0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_1008282C8()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008283CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008284D8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_1008285B0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008286B8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008287C8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_1008288A0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_1008289D8()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_100828B10(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100828C98()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100828DA0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100828EB0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_100828F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_10083439C(a5, a6, a7);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_100829024()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100829128@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100829234(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_100829304()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100829408@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100829514(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_1008295E4()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_100829724()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_100829864(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1008299AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  sub_10083439C(a4, a5, a6);
  sub_1000228EC(&qword_100CB3DD8, &qword_100CB3DA8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368C8();
}

uint64_t sub_100829A74()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100829B78@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100829C84(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_100829D54()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100829E58@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100829F64(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_10082A034(uint64_t a1, char a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  sub_10083439C(a4, a5, a6);
  sub_1009368C8();
}

uint64_t sub_10082A0C0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10082A200()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10082A340(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10082A488()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_10082A5B4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10082A6E8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();
}

uint64_t sub_10082A7C0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10082A900()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10082AA40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10082AB88()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10082ACC8()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10082AE08(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_10083439C(&qword_100CB73A8, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7E04);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10082AF50(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t, uint64_t), unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17)
{
  v46 = a8;
  v47 = a7;
  v44[0] = a6;
  v45 = a5;
  v60 = a3;
  v61 = a4;
  v52 = a16;
  v53 = a17;
  v50 = a14;
  v51 = a15;
  v57 = a12;
  v58 = a13;
  v62 = a11;
  v54 = a9;
  v55 = a10;
  v56 = sub_100936038();
  v63 = *(v56 - 8);
  __chkstk_darwin(v56);
  v48 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 48) = sub_100706B30(&qword_100CB73B8, &qword_1009B7238);
  v22 = sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  v64 = v17;
  v65 = v17;
  v66 = v22;
  v67 = v22;
  *(v21 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v21 + 24));
  sub_100936858();
  *(v21 + 16) = 16843009;
  *(v21 + 20) = 1;
  sub_100936158();
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = a1;
  v65 = a2;
  v59 = a1;
  v49 = a2;
  sub_100715738(a1, a2);
  v23 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(a1, a2);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v25 = v60;
  v24 = v61;
  v64 = v60;
  v65 = v61;
  sub_100715738(v60, v61);
  sub_1009366D8();

  sub_1007156D8(v25, v24);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v45;
  v65 = v44[0];
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v47;
  v65 = v46;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v27 = v54;
  v26 = v55;
  v64 = v54;
  v65 = v55;
  sub_100715738(v54, v55);
  v44[1] = v23;
  sub_1009366D8();

  sub_1007156D8(v27, v26);
  v28 = v63;
  v29 = v48;
  v30 = v56;
  (*(v63 + 16))(v48, v62, v56);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  sub_10083439C(&qword_100CB3DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009366D8();

  v31 = *(v28 + 8);
  v63 = v28 + 8;
  v47 = v31;
  v31(v29, v30);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v33 = v57;
  v32 = v58;
  v64 = v57;
  v65 = v58;
  sub_100715738(v57, v58);
  sub_1009366D8();

  sub_1007156D8(v33, v32);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v50;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v51;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v52;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v53;
  sub_1009366D8();

  v34 = v59;
  v35 = v49;
  v69 = v59;
  v70 = v49;
  v67 = &type metadata for Data;
  v68 = &protocol witness table for Data;
  v36 = v54;
  v37 = v55;
  v64 = v54;
  v65 = v55;
  v38 = sub_1000226D4(&v64, &type metadata for Data);
  v39 = *v38;
  v40 = v38[1];
  sub_100715738(v34, v35);
  sub_100715738(v36, v37);
  sub_100768308(v39, v40, &v69);
  sub_100012970(&v64);
  v41 = v69;
  v42 = v70;
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v41;
  v65 = v42;
  sub_1009366D8();

  sub_1007156D8(v57, v58);
  sub_1007156D8(v36, v37);
  sub_1007156D8(v60, v61);
  sub_1007156D8(v59, v35);
  v47(v62, v56);
  sub_1007156D8(v41, v42);
  return v21;
}

void *sub_10082B70C(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB73B8, &qword_1009B7238);
  sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 16843009;
  *(v1 + 20) = 1;
  sub_100936158();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970((v1 + 24));
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10082B874()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C0, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7F30);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10082B978@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C0, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7F30);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10082BA84(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C0, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7F30);
  sub_100936138();
}

uint64_t sub_10082BB50(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);
  sub_1009368C8();
}

uint64_t sub_10082BBEC()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C0, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7F30);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10082BCF0@<X0>(_DWORD *a2@<X8>)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C0, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7F30);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10082BDFC(int *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C0, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7F30);
  sub_100936138();
}

uint64_t sub_10082BECC(uint64_t a1, int a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);
  sub_1009368C8();
}

uint64_t sub_10082BF68()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C0, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7F30);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_10082C0A0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C0, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7F30);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_10082C1D8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10083439C(&qword_100CB73C0, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7F30);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10082C360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = swift_allocObject();
  sub_10082C3B8(a1, v4, a3);
  return v6;
}

uint64_t *sub_10082C3B8(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v17 = a3;
  v7 = *v3;
  v8 = sub_100936038();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[5] = sub_100706B30(&qword_100CB73D0, &qword_1009B72B8);
  v12 = sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);
  v18 = v7;
  v19 = v7;
  v20 = v12;
  v21 = v12;
  v4[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v4 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v4 + 2, v4[5]);
  swift_getKeyPath();
  v18 = a1;
  sub_1009366D8();

  sub_1000226D4(v4 + 2, v4[5]);
  swift_getKeyPath();
  LODWORD(v18) = a2;
  sub_1009366D8();

  v13 = v17;
  (*(v9 + 16))(v11, v17, v8);
  sub_1000226D4(v4 + 2, v4[5]);
  swift_getKeyPath();
  sub_10083439C(&qword_100CB3DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009366D8();

  v14 = *(v9 + 8);
  v14(v13, v8);
  v14(v11, v8);
  return v4;
}

uint64_t *sub_10082C6C8(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = sub_100706B30(&qword_100CB73D0, &qword_1009B72B8);
  sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);
  v2[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v2 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970(v2 + 2);
  sub_100308C84(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t sub_10082C7F8()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10082C8FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10082CA08(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936138();
}

uint64_t sub_10082CAE0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10082CBE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10082CCF0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936138();
}

uint64_t sub_10082CDC8()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10082CECC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10082CFD8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936138();
}

uint64_t sub_10082D0B0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10082D1B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10082D2C0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73D8, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B805C);
  sub_100936138();
}

uint64_t sub_10082D38C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  sub_1009368C8();
}

uint64_t sub_10082D428(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_10082D498(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *sub_10082D498(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v5[5] = sub_100706B30(&qword_100CB73E8, &qword_1009B7360);
  sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  v5[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v5 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v6 + 2, v6[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v6 + 2, v6[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v6 + 2, v6[5]);
  swift_getKeyPath();
  sub_1009366D8();

  v10._countAndFlagsBits = a1;
  v10._object = a2;
  sub_100936C08(v10);

  sub_1000226D4(v6 + 2, v6[5]);
  swift_getKeyPath();
  sub_1009366D8();

  return v5;
}

uint64_t *sub_10082D74C(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = sub_100706B30(&qword_100CB73E8, &qword_1009B7360);
  sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  v2[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v2 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970(v2 + 2);
  sub_100308C84(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t sub_10082D87C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10082D980@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10082DA8C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936138();
}

uint64_t sub_10082DB58(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1009368C8();
}

uint64_t sub_10082DBF4()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10082DCF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10082DE04(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936138();
}

uint64_t sub_10082DEDC()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10082E01C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1000228EC(&qword_100CB3DE0, &unk_100CBA670, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();
}

uint64_t sub_10082E15C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0, &qword_1009AC370);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10082E2A4()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_10082E3DC()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_10083439C(&unk_100CBA670, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368A8();
}

uint64_t sub_10082E514(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10082E69C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  sub_10083439C(a4, a5, a6);
  sub_10083439C(&qword_100CB3DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009368C8();
}

uint64_t sub_10082E75C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10082E860@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10082E96C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936138();
}

uint64_t sub_10082EA38(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1009368C8();
}

uint64_t sub_10082EAD4()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10082EBD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10082ECE4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936138();
}

uint64_t sub_10082EDB0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_1009368C8();
}

uint64_t sub_10082EE4C()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_10082EF78@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10082F0AC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936138();
}

uint64_t sub_10082F184()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  return v0;
}

double sub_10082F2B0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  sub_100022AC0(&qword_100CB3CE0, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10082F3E4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB73F0, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8188);
  sub_100936138();
}

uint64_t sub_10082F4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_10083439C(a5, a6, a7);
  sub_100022AC0(&qword_100CB3CD8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  sub_1009368C8();
}

uint64_t sub_10082F57C(void *a1, uint64_t a2, uint64_t a3, char *a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, uint64_t a10, void *a11)
{
  v30 = a7;
  v31 = a8;
  v28 = a3;
  v29 = a6;
  v26 = a1;
  v27 = a5;
  v36 = a4;
  v33 = a10;
  v34 = a11;
  v32 = a9;
  v35 = sub_100936038();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v19 = swift_allocObject();
  *(v19 + 48) = sub_100706B30(&qword_100CB7400, &qword_1009B74A8);
  v20 = sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  v38 = v11;
  v39 = v11;
  v40 = v20;
  v41 = v20;
  *(v19 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v19 + 24));
  sub_100936858();
  sub_100936158();
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v26;
  v39 = a2;
  sub_1009366D8();

  sub_100012D50(a3, v18, &qword_100CB4AC0, &qword_1009AC370);
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v26 = &protocol conformance descriptor for <A> A?;
  sub_1000228EC(&qword_100CB3DD8, &qword_100CB3DA8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  sub_1009366D8();

  sub_100021EA4(v18);
  *(v19 + 16) = 0;
  v21 = v37;
  v22 = v35;
  (*(v37 + 16))(v15, v36, v35);
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  sub_10083439C(&qword_100CB3DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1009366D8();

  v23 = v21 + 8;
  v24 = *(v21 + 8);
  v37 = v23;
  v24(v15, v22);
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v27;
  sub_1009366D8();

  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v29;
  sub_1009366D8();

  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v30;
  v39 = v31;
  sub_100706B30(&unk_100CBA310, &qword_1009AD9F0);
  sub_100022AC0(&qword_100CB3CD8, &protocol witness table for String, v26);
  sub_1009366D8();

  *(v19 + 17) = 0;
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v32;
  v39 = v33;
  sub_1009366D8();

  *(v19 + 18) = 0;
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v34;
  sub_1009366D8();

  v24(v36, v35);
  sub_100021EA4(v28);
  return v19;
}

void *sub_10082FB50(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB7400, &qword_1009B74A8);
  sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 257;
  *(v1 + 18) = 1;
  sub_100936158();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  sub_100012970((v1 + 24));
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10082FCB8()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10082FDBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10082FEC8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936138();
}

uint64_t sub_10082FFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_10083439C(a5, a6, a7);
  sub_1009368C8();
}

uint64_t sub_100830038()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10083013C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100830248(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936138();
}

uint64_t sub_100830314(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368C8();
}

uint64_t sub_1008303B0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008304B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1008305C0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936138();
}

uint64_t sub_10083068C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368C8();
}

uint64_t sub_100830728()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10083082C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100830938(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936138();
}

uint64_t sub_100830A04(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368C8();
}

uint64_t sub_100830AA0()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100830BA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100830CB0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936138();
}

uint64_t sub_100830D7C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368C8();
}

uint64_t sub_100830E18()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100830F1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100831028(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936138();
}

uint64_t sub_1008310F4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368C8();
}

uint64_t sub_100831190()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100831294@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1008313A0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936138();
}

uint64_t sub_10083146C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368C8();
}

uint64_t sub_100831508()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10083160C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100831718(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936138();
}

uint64_t sub_1008317E4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368C8();
}

uint64_t sub_100831880()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100831984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100831A90(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936138();
}

uint64_t sub_100831B5C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368C8();
}

uint64_t sub_100831BF8()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100831CFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100831E08(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936138();
}

uint64_t sub_100831ED4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368C8();
}

uint64_t sub_100831F70()
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100832074@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936148();

  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100832180(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7408, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B82B4);
  sub_100936138();
}

uint64_t sub_10083224C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  sub_1009368C8();
}

uint64_t *sub_1008322E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = swift_allocObject();
  v12[5] = sub_100706B30(&qword_100CB7418, &qword_1009B7668);
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  v12[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v12 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v12 + 2, v12[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v12 + 2, v12[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v12 + 2, v12[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v12 + 2, v12[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v12 + 2, v12[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v12 + 2, v12[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v12 + 2, v12[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v12 + 2, v12[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v12 + 2, v12[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v12 + 2, v12[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v12 + 2, v12[5]);
  swift_getKeyPath();
  sub_1009366D8();

  return v12;
}

uint64_t sub_100832798(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t *sub_1008327E8(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB7418, &qword_1009B7668);
  sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970(v1 + 2);
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t (*sub_100832964(uint64_t *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 24, v4);
  return sub_10083B700;
}

uint64_t sub_100832AE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t (*sub_100832B78(uint64_t *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 24, v4);
  return sub_10083B700;
}

uint64_t sub_100832CF4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t (*sub_100832DA4(uint64_t *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 16, v4);
  return sub_10083B704;
}

uint64_t sub_100832F20(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t (*sub_100832FB8(uint64_t *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 16, v4);
  return sub_10083B704;
}

uint64_t sub_100833134(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t (*sub_1008331CC(uint64_t *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 24, v4);
  return sub_10083B700;
}

uint64_t sub_100833348(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10083439C(&qword_100CB7398, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7BC8);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t (*sub_1008333E0(uint64_t *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 24, v4);
  return sub_10083B700;
}

uint64_t sub_10083355C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t (*sub_10083360C(uint64_t *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 16, v4);
  return sub_10083B704;
}

uint64_t sub_100833788(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t *sub_100833838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t *))
{
  v11 = swift_allocObject();
  v11[5] = sub_100706B30(a4, a5);
  v11[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v11 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970(v11 + 2);
  a7(a1, v11 + 2);
  swift_endAccess();
  return v11;
}

uint64_t (*sub_100833940(uint64_t *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 16, v4);
  return sub_10083B704;
}

uint64_t sub_100833ABC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100833B54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100012970((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

uint64_t (*sub_100833BBC(uint64_t *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 24, v4);
  return sub_10083B700;
}

uint64_t sub_100833D38(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100833DD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = swift_allocObject();
  a4(a1);
  return v6;
}

uint64_t sub_100833E20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100012970((v4 + 16));
  a4(a1, v4 + 16);
  return swift_endAccess();
}

uint64_t (*sub_100833E88(uint64_t *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100022B2C(v1 + 16, v4);
  return sub_10083B704;
}

uint64_t sub_100834004(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100834084()
{
  sub_100706B30(&unk_100CB4A00, &unk_1009B31E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009B0EE0;
  v1 = type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice(0);
  v2 = sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable(0);
  v4 = sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession(0);
  v6 = sub_10083439C(&qword_100CB7368, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSession, &unk_1009B7970);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity(0);
  v8 = sub_10083439C(&qword_100CB7380, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDPublicIdentity, &unk_1009B7A9C);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution(0);
  v10 = sub_10083439C(&qword_100CB73B0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDSenderKeyDistribution, &unk_1009B7CF4);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex(0);
  v12 = sub_10083439C(&qword_100CB73C8, type metadata accessor for SDPersistenceSchemaV1.IDSGroupEncryptionKeyRollIndex, &unk_1009B7E20);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle(0);
  v14 = sub_10083439C(&qword_100CB7398, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDShortHandle, &unk_1009B7BC8);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle(0);
  v16 = sub_10083439C(&qword_100CB73E0, type metadata accessor for SDPersistenceSchemaV1.IDSOffGridDeliveryDonatedHandle, &unk_1009B7F4C);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent(0);
  v18 = sub_10083439C(&qword_100CB73F8, type metadata accessor for SDPersistenceSchemaV1.IDSRegistrationEvent, &unk_1009B8078);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount(0);
  v20 = sub_10083439C(&qword_100CB7410, type metadata accessor for SDPersistenceSchemaV1.IDSQualifiedContactsCount, &unk_1009B81A4);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  return v0;
}

uint64_t sub_10083439C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10083460C()
{
  result = qword_100CB72F0;
  if (!qword_100CB72F0)
  {
    sub_1007147D0(&qword_100CB72E8, &qword_1009B6A88);
    sub_10071499C(&qword_100CB72F8, &qword_100CB7300, &qword_1009B6A90);
    sub_10083439C(&qword_100CB7308, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDDevice, &unk_1009B7844);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB72F0);
  }

  return result;
}

uint64_t sub_10083470C()
{
  v0 = sub_100936978();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB49B8, &qword_1009AFF50);
  sub_1009369C8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1009AD830;
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  sub_100706B30(&qword_100CB49C0, &qword_1009AFF58);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  v5 = sub_100936A28();
  swift_allocObject();
  v6 = sub_100936A38();
  *(&v11 + 1) = v5;
  v12 = sub_10083439C(&qword_100CB49C8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  *&v10 = v6;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v14 + 1) = sub_100706B30(&qword_100CB49F0, &qword_1009AFFB0);
  *&v13 = &_swiftEmptyArrayStorage;
  (*(v1 + 104))(v3, enum case for Schema.Relationship.DeleteRule.nullify(_:), v0);
  v7 = sub_100936988();
  swift_allocObject();
  v8 = sub_100936998();
  *(&v11 + 1) = v7;
  v12 = sub_10083439C(&qword_100CB49F8, &type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
  *&v10 = v8;
  sub_1009369B8();
  return v4;
}

unint64_t sub_100834FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = qword_100CB7320;
  if (!qword_100CB7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7320);
  }

  return result;
}

unint64_t sub_100835070()
{
  result = qword_100CB7328;
  if (!qword_100CB7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7328);
  }

  return result;
}

unint64_t sub_100835128()
{
  result = qword_100CB7338;
  if (!qword_100CB7338)
  {
    sub_1007147D0(&qword_100CB7330, &qword_1009B6C80);
    sub_10071499C(&qword_100CB7340, &qword_100CB7348, &qword_1009B6C88);
    sub_10083439C(&qword_100CB72E0, type metadata accessor for SDPersistenceSchemaV1.IDSQuerySDAddressable, &unk_1009B7718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7338);
  }

  return result;
}

uint64_t sub_100835228()
{
  v10 = sub_100936978();
  v0 = *(v10 - 8);
  __chkstk_darwin(v10);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB49B8, &qword_1009AFF50);
  sub_1009369C8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1009B6940;
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  sub_100706B30(&qword_100CB49C0, &qword_1009AFF58);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  v4 = sub_100936A28();
  swift_allocObject();
  v5 = sub_100936A38();
  *(&v12 + 1) = v4;
  v13 = sub_10083439C(&qword_100CB49C8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  *&v11 = v5;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = &type metadata for Bool;
  LOBYTE(v14) = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = &type metadata for Bool;
  LOBYTE(v14) = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = &type metadata for Bool;
  LOBYTE(v14) = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = sub_100706B30(&qword_100CB49F0, &qword_1009AFFB0);
  *&v14 = &_swiftEmptyArrayStorage;
  swift_getKeyPath();
  (*(v0 + 104))(v2, enum case for Schema.Relationship.DeleteRule.nullify(_:), v10);
  v6 = sub_100936988();
  swift_allocObject();
  v7 = sub_100936998();
  *(&v12 + 1) = v6;
  v13 = sub_10083439C(&qword_100CB49F8, &type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
  *&v11 = v7;
  sub_1009369B8();
  return v3;
}

unint64_t sub_100835920()
{
  result = qword_100CC9AB8[0];
  if (!qword_100CC9AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC9AB8);
  }

  return result;
}

uint64_t sub_100835974@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100706B30(&qword_100CB7E70, &unk_1009B8BD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v36 = a1;
  sub_1000226D4(a1, v9);
  sub_100835920();
  sub_1009376E8();
  if (v2)
  {
    v37 = v2;
    v35 = 0;
    sub_100012970(v36);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(v35, 0xF000000000000000);
    return sub_10001C370(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_100768AE4();
    sub_100937468();
    v34 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v38) = 1;
    sub_100937468();
    v11 = *(&v45 + 1);
    v33 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v45) = 2;
    v12 = sub_1009374B8();
    LOBYTE(v45) = 3;
    v13 = sub_1009374A8();
    LOBYTE(v38) = 4;
    sub_100937468();
    v60 = v13;
    LODWORD(v35) = v12;
    v32 = *(&v45 + 1);
    v14 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v38) = 5;
    sub_100937468();
    v30 = v6;
    v31 = __PAIR128__(*(&v45 + 1), v14);
    v15 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v38) = 6;
    sub_100937468();
    v28 = a2;
    v29 = *(&v45 + 1);
    v16 = v45;
    sub_10001C370(0, 0xF000000000000000);
    v61 = 7;
    sub_100937468();
    v37 = 0;
    (*(v30 + 8))(v8, v5);
    v17 = v58;
    v18 = v59;
    sub_10001C370(0, 0xF000000000000000);
    v19 = v34;
    v38 = v34;
    v20 = v33;
    *&v39 = v33;
    *(&v39 + 1) = v11;
    LOWORD(v40) = v35;
    BYTE2(v40) = v60;
    v21 = v31;
    *(&v40 + 1) = v31;
    v22 = v32;
    *&v41 = v32;
    *(&v41 + 1) = v15;
    *&v42 = *(&v31 + 1);
    *(&v42 + 1) = v16;
    *&v43 = v29;
    *(&v43 + 1) = v17;
    v44 = v18;
    sub_1008350F0(&v38, &v45);
    sub_100012970(v36);
    v45 = __PAIR128__(*(&v34 + 1), v19);
    v46 = v20;
    v47 = v11;
    v48 = v35;
    v49 = v60;
    v50 = v21;
    v51 = v22;
    v52 = v15;
    v53 = *(&v31 + 1);
    v54 = v16;
    v55 = v29;
    v56 = v17;
    v57 = v18;
    result = sub_100835040(&v45);
    v23 = v43;
    v24 = v28;
    *(v28 + 64) = v42;
    *(v24 + 80) = v23;
    *(v24 + 96) = v44;
    v25 = v39;
    *v24 = v38;
    *(v24 + 16) = v25;
    v26 = v41;
    *(v24 + 32) = v40;
    *(v24 + 48) = v26;
  }

  return result;
}

uint64_t sub_1008363F8()
{
  sub_100706B30(&qword_100CB49B8, &qword_1009AFF50);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD900;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0, &qword_1009AFF58);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_10083439C(&qword_100CB49C8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_100836AB0()
{
  sub_100706B30(&qword_100CB49B8, &qword_1009AFF50);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD840;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0, &qword_1009AFF58);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_10083439C(&qword_100CB49C8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_100836F9C()
{
  sub_100706B30(&qword_100CB49B8, &qword_1009AFF50);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AC7A0;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0, &qword_1009AFF58);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_10083439C(&qword_100CB49C8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1008378E4()
{
  sub_100706B30(&qword_100CB49B8, &qword_1009AFF50);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009B6950;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0, &qword_1009AFF58);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_10083439C(&qword_100CB49C8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1008380C0()
{
  sub_100706B30(&qword_100CB49B8, &qword_1009AFF50);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AC7A0;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0, &qword_1009AFF58);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_10083439C(&qword_100CB49C8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_10083849C()
{
  sub_100706B30(&qword_100CB49B8, &qword_1009AFF50);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD150;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0, &qword_1009AFF58);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_10083439C(&qword_100CB49C8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_100838A24()
{
  sub_100706B30(&qword_100CB49B8, &qword_1009AFF50);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD940;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0, &qword_1009AFF58);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_10083439C(&qword_100CB49C8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1008390AC()
{
  sub_100706B30(&qword_100CB49B8, &qword_1009AFF50);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD8E0;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0, &qword_1009AFF58);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_10083439C(&qword_100CB49C8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_10083A42C(uint64_t a1)
{
  result = sub_100936168();
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

uint64_t sub_10083A504(uint64_t a1)
{
  result = sub_100936168();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10083A5F4(uint64_t a1)
{
  result = sub_100936168();
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

uint64_t sub_10083A6C4(uint64_t a1)
{
  result = sub_100936168();
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

uint64_t sub_10083A7B8(uint64_t a1)
{
  result = sub_100936168();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10083A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100936168();
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10083A974(uint64_t a1)
{
  result = sub_100936168();
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

uint64_t sub_10083AA3C(uint64_t a1)
{
  result = sub_100936168();
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

uint64_t sub_10083AB18(uint64_t a1)
{
  result = sub_100936168();
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

unint64_t sub_10083ABF8()
{
  result = qword_100CCB9A0[0];
  if (!qword_100CCB9A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CCB9A0);
  }

  return result;
}

unint64_t sub_10083AC50()
{
  result = qword_100CCBAB0;
  if (!qword_100CCBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCBAB0);
  }

  return result;
}

unint64_t sub_10083ACA8()
{
  result = qword_100CCBAB8[0];
  if (!qword_100CCBAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CCBAB8);
  }

  return result;
}

uint64_t sub_10083AE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_getKeyPath();
  sub_10083439C(a2, a3, a4);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_10083AF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_getKeyPath();
  sub_10083439C(a2, a3, a4);
  sub_1009368C8();
}

uint64_t sub_10083B754(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_lock;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10083B80C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_previousIdentity;
  swift_beginAccess();
  return sub_10083B864(v1 + v3, a1);
}

uint64_t sub_10083B864(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB3250, &qword_1009B8BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10083B8D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_previousIdentity;
  swift_beginAccess();
  sub_10083B934(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10083B934(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB3250, &qword_1009B8BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_10083BA04()
{
  v1 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_previousPreKeyExpirationDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10083BA48(double a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_previousPreKeyExpirationDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_10083BAF8()
{
  v1 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_preKeyExpirationDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10083BB3C(double a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_preKeyExpirationDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10083BBEC(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10083DF44(a1);

  return v4;
}

id sub_10083BC64(uint64_t a1)
{
  v3 = sub_100706B30(&qword_100CB3250, &qword_1009B8BE0);
  v4.n128_f64[0] = __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  (*((swift_isaMask & *v1) + 0x138))(a1, v4);
  v7 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_10083E2D8(v6);
    return 0;
  }

  else
  {
    v9 = sub_10089D2E8();
    sub_1007BE0C4(v6, type metadata accessor for IDSGroupEncryptionFullIdentity);
    return v9;
  }
}

void sub_10083BF34(uint64_t a1@<X8>)
{
  v3 = (*((swift_isaMask & *v1) + 0x90))();
  os_unfair_lock_lock(v3 + 4);
  sub_100733200(&v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v7;

  if (v4)
  {
    v5 = v4;
    sub_10083C290(v4, a1);
  }

  else
  {
    v6 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
    (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_10083C058@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100706B30(&qword_100CB3250, &qword_1009B8BE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_identity;
  swift_beginAccess();
  sub_10083B864(a1 + v14, v13);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    result = sub_10083E2D8(v13);
    v16 = 0;
  }

  else
  {
    sub_1007DE914(v13, v10, type metadata accessor for IDSGroupEncryptionFullIdentity);
    sub_10083E2D8(v13);
    sub_1007DE914(v10, v6, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007BE0C4(v10, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v16 = v6[1];
    result = sub_1007BE0C4(v6, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  }

  *a2 = v16;
  return result;
}

uint64_t sub_10083C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100706B30(&qword_100CB7EB0, &unk_1009B8CC0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v20[-v9];
  v11 = (*((swift_isaMask & *v2) + 0x90))(v8);
  v27 = v2;
  v28 = a1;
  v24 = sub_10083EC04;
  v25 = &v26;
  v21 = sub_10083EC30;
  v22 = &v23;
  os_unfair_lock_lock(v11 + 4);
  sub_10072FFE8();
  os_unfair_lock_unlock(v11 + 4);

  v12 = v10[*(v7 + 56)];
  result = sub_10083EC98(v10, a2);
  if (v12 == 1)
  {
    v14 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_listeners;
    result = swift_beginAccess();
    v15 = *(v3 + v14);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;

      do
      {
        sub_10083EB64(v17, v29);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = v30;
          ObjectType = swift_getObjectType();
          (*(v18 + 8))(ObjectType, v18);
          swift_unknownObjectRelease();
        }

        sub_10083EB9C(v29);
        v17 += 16;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t sub_10083C474(uint64_t a1, void *a2)
{
  v111 = a1;
  v99 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v99);
  v104 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v101 = &v92 - v6;
  __chkstk_darwin(v7);
  v9 = &v92 - v8;
  v10 = sub_100936038();
  v109 = *(v10 - 8);
  __chkstk_darwin(v10);
  v102 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v100 = &v92 - v13;
  __chkstk_darwin(v14);
  v103 = &v92 - v15;
  __chkstk_darwin(v16);
  v110 = &v92 - v17;
  v18 = sub_100706B30(&qword_100CB3250, &qword_1009B8BE0);
  __chkstk_darwin(v18 - 8);
  v107 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v92 - v21;
  __chkstk_darwin(v23);
  v25 = &v92 - v24;
  v26 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  v31 = &v92 - v30;
  v35.n128_f64[0] = __chkstk_darwin(v32);
  v37 = &v92 - v36;
  v112 = a2;
  if (!a2)
  {
    goto LABEL_16;
  }

  v96 = v34;
  v97 = v33;
  v98 = v9;
  v106 = v10;
  v38 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_identity;
  swift_beginAccess();
  v108 = v2;
  v105 = v38;
  sub_10083B864(v2 + v38, v25);
  v39 = *(v27 + 48);
  if (v39(v25, 1, v26) == 1)
  {
    v40 = v112;
    sub_10083E2D8(v25);
  }

  else
  {
    sub_10083EB00(v25, v37);
    v41 = v112;
    if ((sub_10089CDF8() & 1) == 0)
    {
      sub_100014170(0, &qword_100CB4A70, NSObject_ptr);
      if (sub_100937038())
      {

        v42 = v111;
        sub_1007DE914(v37, v111, type metadata accessor for IDSGroupEncryptionFullIdentity);
        (*(v27 + 56))(v42, 0, 1, v26);
        sub_1007BE0C4(v37, type metadata accessor for IDSGroupEncryptionFullIdentity);
        return 0;
      }
    }

    sub_1007BE0C4(v37, type metadata accessor for IDSGroupEncryptionFullIdentity);
  }

  v43 = v108;
  sub_10083B864(v108 + v105, v22);
  v44 = v39(v22, 1, v26) == 1;
  v45 = v110;
  if (v44)
  {
    sub_10083E2D8(v22);
  }

  else
  {
    sub_10083EB00(v22, v31);
    v46 = v107;
    sub_1007DE914(v31, v107, type metadata accessor for IDSGroupEncryptionFullIdentity);
    (*(v27 + 56))(v46, 0, 1, v26);
    (*((swift_isaMask & *v43) + 0xC8))(v46);
    sub_10083D0CC();
    sub_1007BE0C4(v31, type metadata accessor for IDSGroupEncryptionFullIdentity);
  }

  v47 = v106;
  sub_100935FF8();
  v114 = 0;
  v48 = sub_10036BB3C(0, &v114);
  if (!v48)
  {
    (*(v109 + 1))(v45, v47);
LABEL_15:

    goto LABEL_16;
  }

  v49 = v114;
  if (v114)
  {

    (*(v109 + 1))(v45, v47);
LABEL_16:
    (*(v27 + 56))(v111, 1, 1, v26, v35);
    return 0;
  }

  v95 = v48;
  v51 = SecKeyCopyPublicKey(v48);
  if (!v51)
  {
    (*(v109 + 1))(v45, v47);

    goto LABEL_15;
  }

  v52 = v51;
  v53 = v112;
  v54 = v100;
  v55 = sub_100935FF8();
  (*((swift_isaMask & *v43) + 0xF0))(v55);
  v56 = v103;
  sub_100935F88();
  v57 = v109;
  v112 = *(v109 + 1);
  v100 = v109 + 8;
  (v112)(v54, v47);
  v58 = v52;
  v59 = v98;
  v94 = v53;
  v93 = v58;
  sub_10089CED8(0, v53, v56, v58, 2, v98);
  v92 = type metadata accessor for IDSGroupEncryptionPublicIdentity;
  v60 = v101;
  sub_1007DE914(v59, v101, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  v61 = v95;
  v62 = v97;
  v101 = v61;
  sub_10089D420(v60, v61, v97);
  v63 = v107;
  sub_1007DE914(v62, v107, type metadata accessor for IDSGroupEncryptionFullIdentity);
  (*(v27 + 56))(v63, 0, 1, v26);
  v64 = v105;
  swift_beginAccess();
  sub_10083B934(v63, v43 + v64);
  swift_endAccess();
  v65 = v96;
  sub_1007DE914(v62, v96, type metadata accessor for IDSGroupEncryptionFullIdentity);
  v66 = v102;
  (*(v57 + 2))(v102, v45, v106);
  v67 = v104;
  sub_1007DE914(v59, v104, v92);
  v68 = v108;
  v69 = sub_1009364B8();
  v70 = sub_100936F18();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v113[0] = v107;
    *v71 = 136315650;
    sub_100014BF8(&unk_100CB3260, type metadata accessor for IDSGroupEncryptionFullIdentity, &unk_1009BE158);
    v72 = sub_100937548();
    v73 = v66;
    v75 = v74;
    v109 = type metadata accessor for IDSGroupEncryptionFullIdentity;
    sub_1007BE0C4(v65, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v76 = sub_10001273C(v72, v75, v113);

    *(v71 + 4) = v76;
    *(v71 + 12) = 2080;
    v77 = v103;
    sub_100935FF8();
    sub_100935F08();
    v78 = v106;
    v79 = v112;
    (v112)(v77, v106);
    sub_100935F08();
    v80 = sub_100936DE8();
    v82 = v81;
    v79(v73, v78);
    v83 = sub_10001273C(v80, v82, v113);

    *(v71 + 14) = v83;
    *(v71 + 22) = 2080;
    sub_100014BF8(&qword_100CB3A88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v84 = v104;
    v85 = sub_100937548();
    v87 = v86;
    sub_1007BE0C4(v84, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v88 = sub_10001273C(v85, v87, v113);

    *(v71 + 24) = v88;
    _os_log_impl(&_mh_execute_header, v69, v70, "Created the full identity %s, duration %s), will expire at %s", v71, 0x20u);
    swift_arrayDestroy();

    v68 = v108;
    v89 = v111;

    sub_1007BE0C4(v97, v109);
    sub_1007BE0C4(v98, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v79(v110, v78);
  }

  else
  {

    sub_1007BE0C4(v67, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v90 = v106;
    v91 = v112;
    (v112)(v66, v106);
    sub_1007BE0C4(v65, type metadata accessor for IDSGroupEncryptionFullIdentity);
    sub_1007BE0C4(v97, type metadata accessor for IDSGroupEncryptionFullIdentity);
    sub_1007BE0C4(v98, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    v91(v45, v90);
    v89 = v111;
  }

  sub_10083B864(v68 + v105, v89);
  return 1;
}

void sub_10083D0CC()
{
  v1 = sub_1009364F8();
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  v35 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100936528();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1009364E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100936558();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v31 = *(v0 + OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_q);
  v16 = sub_100936538();
  v17 = (*((swift_isaMask & *v0) + 0xF0))(v16);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v17 < 9.22337204e18)
  {
    *v8 = v17;
    (*(v6 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v5);
    v28 = v15;
    sub_100936598();
    (*(v6 + 8))(v8, v5);
    v18 = *(v10 + 8);
    v29 = v9;
    v30 = v18;
    v18(v12, v9);
    v19 = swift_allocObject();
    *(v19 + 16) = v0;
    aBlock[4] = sub_10083EA2C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BE97B8;
    v20 = _Block_copy(aBlock);
    v21 = v0;
    v22 = v32;
    sub_100936508();
    v36 = &_swiftEmptyArrayStorage;
    sub_100014BF8(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550, &qword_1009AC360);
    v23 = v33;
    v24 = v3;
    sub_10071499C(&qword_100CB4AB0, &unk_100CB3550, &qword_1009AC360);
    v25 = v35;
    sub_1009370B8();
    v26 = v28;
    sub_100936F48();
    _Block_release(v20);
    (*(v23 + 8))(v25, v1);
    (*(v34 + 8))(v22, v24);
    v30(v26, v29);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10083D5C8(void *a1)
{
  v2 = sub_100706B30(&qword_100CB3250, &qword_1009B8BE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  return (*((swift_isaMask & *a1) + 0xC8))(v4);
}

uint64_t sub_10083D6B0()
{
  v1 = (*((swift_isaMask & *v0) + 0x90))();
  os_unfair_lock_lock(v1 + 4);
  sub_10072FFE8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_10083D754(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB3250, &qword_1009B8BE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_identity;
  swift_beginAccess();
  sub_10083B934(v4, a1 + v6);
  return swift_endAccess();
}

uint64_t sub_10083D8F4(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + 0x90);
  v5 = v4();
  os_unfair_lock_lock(v5 + 4);

  v15 = a2;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_listeners;
  swift_beginAccess();
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10083DE00(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_10083DE00((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  sub_10083E398(v14, &v7[2 * v10 + 4]);
  *(v2 + v6) = v7;
  v11 = swift_endAccess();
  v12 = (v4)(v11);
  os_unfair_lock_unlock(v12 + 4);
}

uint64_t sub_10083DA54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *((swift_isaMask & *v2) + 0x90);
  v6 = v5();
  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_listeners;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v8 = sub_10083E484((v2 + v7), a1);
  result = swift_unknownObjectRelease();
  v10 = *(*(v3 + v7) + 16);
  if (v10 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_10083E720(v8, v10);
    v11 = swift_endAccess();
    v12 = (v5)(v11);
    os_unfair_lock_unlock(v12 + 4);
  }

  return result;
}

id sub_10083DBA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGroupEncryptionIdentityController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10083DE00(void *result, int64_t a2, char a3, void *a4)
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
    sub_100706B30(&qword_100CB7EA8, &qword_1009B8CB8);
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
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_10083DF44(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v19 = sub_100936F78();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100936F38();
  __chkstk_darwin(v6);
  v7 = sub_100936528();
  __chkstk_darwin(v7 - 8);
  sub_1007C9A6C(0);
  v18 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_q;
  v8 = sub_100014170(0, &qword_100CB3510, OS_dispatch_queue_ptr);
  v17[0] = "5IDSQualifiedContactsCount";
  v17[1] = v8;
  sub_100936508();
  v22 = &_swiftEmptyArrayStorage;
  sub_100014BF8(&qword_100CB2AB8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100706B30(&unk_100CB3520, &qword_1009AD040);
  sub_10071499C(&qword_100CB2AC0, &unk_100CB3520, &qword_1009AD040);
  sub_1009370B8();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *&v1[v18] = sub_100936F98();
  v9 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_lock;
  sub_100706B30(&unk_100CB3540, &qword_1009B31F0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v2[v9] = v10;
  v11 = OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_identity;
  v12 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v13 = *(*(v12 - 8) + 56);
  v13(&v2[v11], 1, 1, v12);
  v13(&v2[OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_previousIdentity], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_listeners] = &_swiftEmptyArrayStorage;
  v14 = v20;
  *&v2[OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_preKeyExpirationDuration] = *(v20 + OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_preKeyExpirationDuration);
  *&v2[OBJC_IVAR____TtC17identityservicesd36IDSGroupEncryptionIdentityController_previousPreKeyExpirationDuration] = *(v14 + OBJC_IVAR____TtC17identityservicesd31IDSGroupEncryptionConfiguration_previousPreKeyExpirationDuration);
  v15 = type metadata accessor for IDSGroupEncryptionIdentityController(0);
  v21.receiver = v2;
  v21.super_class = v15;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_10083E2D8(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB3250, &qword_1009B8BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10083E3D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRelease();
      if (v7 == a2)
      {
        break;
      }
    }

    ++v4;
    v5 += 16;
    if (v2 == v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_10083E484(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_10083E3D0(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return v5[2];
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_30;
  }

  v11 = v5 + 2;
  v10 = v5[2];
  if (v9 == v10)
  {
    return v8;
  }

  v12 = 16 * result + 48;
  while (v9 < v10)
  {
    sub_10083EB64(v5 + v12, v17);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      result = sub_10083EB9C(v17);
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      swift_unknownObjectRelease();
      result = sub_10083EB9C(v17);
      if (v14 == a2)
      {
        goto LABEL_9;
      }

      if (v9 != v8)
      {
LABEL_18:
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        v15 = *v11;
        if (v8 >= *v11)
        {
          goto LABEL_27;
        }

        result = sub_10083EB64(&v5[2 * v8 + 4], v17);
        if (v9 >= v15)
        {
          goto LABEL_28;
        }

        sub_10083EB64(v5 + v12, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10083DF30(v5);
        }

        result = sub_10083EBCC(v16, &v5[2 * v8 + 4]);
        if (v9 >= v5[2])
        {
          goto LABEL_29;
        }

        result = sub_10083EBCC(v17, v5 + v12);
        *a1 = v5;
      }
    }

    else
    {
      result = sub_10083EB9C(v17);
      if (v9 != v8)
      {
        goto LABEL_18;
      }
    }

    ++v8;
LABEL_9:
    ++v9;
    v11 = v5 + 2;
    v10 = v5[2];
    v12 += 16;
    if (v9 == v10)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_10083E644(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 16 * a3;
  v12 = v7 + 32 + 16 * a2;
  if (result < v12 || result >= v12 + 16 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_10083E720(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10083DE00(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10083E644(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t type metadata accessor for IDSGroupEncryptionIdentityController(uint64_t a1)
{
  result = qword_100CCBB50;
  if (!qword_100CCBB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10083E82C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10083E878(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

void sub_10083E8D0(uint64_t a1)
{
  sub_1009364D8();
  if (v1 <= 0x3F)
  {
    sub_10083E9D4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10083E9D4(uint64_t a1)
{
  if (!qword_100CB7EA0)
  {
    type metadata accessor for IDSGroupEncryptionFullIdentity(255);
    v1 = sub_100937058();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB7EA0);
    }
  }
}

uint64_t sub_10083EA2C()
{
  v1 = (*((swift_isaMask & **(v0 + 16)) + 0x90))();
  os_unfair_lock_lock(v1 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_10083EB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10083EC30@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(sub_100706B30(&qword_100CB7EB0, &unk_1009B8CC0) + 48);
  result = v3(a1);
  *(a1 + v4) = result & 1;
  return result;
}

uint64_t sub_10083EC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB3250, &qword_1009B8BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10083ED20(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *sub_10083ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = *(v4 + 16);
  v12 = sub_100936B28();
  v13 = [v11 sessionWithUniqueID:v12];

  result = &_swiftEmptySetSingleton;
  if (v13)
  {
    v32 = &_swiftEmptySetSingleton;
    v15 = [v13 getEncryptedDataBlob];
    if (v15)
    {
      v16 = v15;
      v17 = sub_100935EA8();
      v19 = v18;

      sub_100715738(v17, v19);
      v20 = sub_10074B48C(0);
      *v7 = v20;
      v7[4] = BYTE4(v20);
      v7[5] = BYTE5(v20) & 1;
      *(v7 + 1) = v21;
      *(v7 + 2) = v22;
      swift_storeEnumTagMultiPayload();
      sub_100727F64(v10, v7);
      sub_1007156D8(v17, v19);
      sub_10083EFF0(v10);
    }

    v23 = [v13 getEncryptedMirageHandshakeBlob];
    if (v23)
    {
      v24 = v23;
      v25 = sub_100935EA8();
      v27 = v26;

      sub_100715738(v25, v27);
      v28 = sub_10074B48C(1);
      *v7 = v28;
      v7[4] = BYTE4(v28);
      v7[5] = BYTE5(v28) & 1;
      *(v7 + 1) = v29;
      *(v7 + 2) = v30;
      swift_storeEnumTagMultiPayload();
      sub_100727F64(v10, v7);
      swift_unknownObjectRelease();
      sub_1007156D8(v25, v27);
      sub_10083EFF0(v10);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v32;
  }

  return result;
}

uint64_t sub_10083EF94()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10083EFF0(uint64_t a1)
{
  v2 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10083F088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10083F10C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10083F0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10083F188();
  v5 = sub_10074CC9C();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_10083F10C(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_10083F124()
{
  result = qword_100CB7F60;
  if (!qword_100CB7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7F60);
  }

  return result;
}

unint64_t sub_10083F188()
{
  result = qword_100CB7F68;
  if (!qword_100CB7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7F68);
  }

  return result;
}

uint64_t sub_10083F22C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10083F298(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17identityservicesd35IDSGroupEncryptionKeyMaterialCache2_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10071E170;
}

void sub_10083F350(void *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v56 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent(0);
  v59 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v74 = &v53 - v5;
  __chkstk_darwin(v6);
  v64 = &v53 - v7;
  v73 = sub_1009360A8();
  v8 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100706B30(&qword_100CB81F8, &qword_1009B8FB8);
  __chkstk_darwin(v10 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v75 = &_swiftEmptySetSingleton;
  v16 = *a1;
  v18 = (*a1 + 64);
  v17 = *v18;
  v61 = a1;
  v62 = v18;
  v19 = 1 << *(v16 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v55 = (v19 + 63) >> 6;
  v70 = v8 + 16;
  v58 = v8 + 32;
  v63 = v8;
  v72 = (v8 + 8);
  v60 = v16;

  v22 = 0;
  v65 = v15;
  v66 = v12;
  v23 = v62;
  if (v21)
  {
    while (1)
    {
      v24 = v22;
LABEL_14:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = v27 | (v24 << 6);
      v29 = v60;
      v30 = v63;
      v31 = v71;
      v32 = v73;
      (*(v63 + 16))(v71, *(v60 + 48) + *(v63 + 72) * v28, v73);
      v33 = v64;
      sub_10084C29C(*(v29 + 56) + *(v59 + 72) * v28, v64);
      v34 = sub_100706B30(&qword_100CB8200, &unk_1009B8FC0);
      v35 = *(v34 + 48);
      v36 = *(v30 + 32);
      v12 = v66;
      v36(v66, v31, v32);
      sub_10084CA20(v33, &v12[v35], type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
      v15 = v65;
LABEL_15:
      sub_10084D490(v12, v15);
      v37 = sub_100706B30(&qword_100CB8200, &unk_1009B8FC0);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        break;
      }

      sub_10084CA20(&v15[*(v37 + 48)], v74, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      v38 = v61[3];
      if (*(v38 + 16) && (v39 = *(v56 + 20), sub_10084D3C8(&qword_100CB34E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v69 = v39, v40 = sub_100936AC8(), v41 = -1 << *(v38 + 32), v42 = v40 & ~v41, v68 = v38 + 56, ((*(v38 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
      {
        v67 = ~v41;
        v43 = *(v63 + 72);
        v44 = *(v63 + 16);
        while (1)
        {
          v45 = v71;
          v46 = v73;
          v44(v71, *(v38 + 48) + v43 * v42, v73);
          sub_10084D3C8(&qword_100CB34E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v47 = sub_100936B18();
          v48 = *v72;
          (*v72)(v45, v46);
          if (v47)
          {
            break;
          }

          v42 = (v42 + 1) & v67;
          if (((*(v68 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        sub_10084C300(v74);
        v15 = v65;
        v48(v65, v73);
      }

      else
      {
LABEL_21:
        v49 = v74;
        v50 = v57;
        sub_10084C29C(v74, v57);
        v51 = v64;
        sub_1007139D8(v64, v50);
        sub_10084C300(v51);
        sub_10084C300(v49);
        v15 = v65;
        (*v72)(v65, v73);
      }

      v12 = v66;
      v23 = v62;
      if (!v21)
      {
        goto LABEL_6;
      }
    }

    *v54 = v75;
  }

  else
  {
LABEL_6:
    if (v55 <= v22 + 1)
    {
      v25 = v22 + 1;
    }

    else
    {
      v25 = v55;
    }

    v26 = v25 - 1;
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v55)
      {
        v52 = sub_100706B30(&qword_100CB8200, &unk_1009B8FC0);
        (*(*(v52 - 8) + 56))(v12, 1, 1, v52);
        v21 = 0;
        v22 = v26;
        goto LABEL_15;
      }

      v21 = v23[v24];
      ++v22;
      if (v21)
      {
        v22 = v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}