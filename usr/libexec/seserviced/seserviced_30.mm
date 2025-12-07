uint64_t sub_100284B60()
{
  v1 = OBJC_IVAR____TtC10seserviced24SERPersistenceController_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SERPersistenceController(uint64_t a1)
{
  result = qword_100508DA8;
  if (!qword_100508DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100284C34(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100284CFC(void *a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100068FC4(&qword_100505440, &unk_100413B30);
  __chkstk_darwin(v11);
  v15 = v55 - v14;
  v60 = a1[2];
  if (!v60)
  {
  }

  v55[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v59 = *(v13 + 72);
  v61 = a1;
  sub_1000938D4(a1 + v17, v55 - v14, &qword_100505440, &unk_100413B30);
  v56 = v8;
  v62 = *(v8 + 32);
  v63 = v7;
  v62(v10, v15, v7);
  v58 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_10008C808(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_10030D8B0(v25, a2 & 1);
    v20 = sub_10008C808(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  sub_100312EE0();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v66 = v28;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v29 = swift_dynamicCast();
    v30 = v56;
    if ((v29 & 1) == 0)
    {

      (*(v30 + 8))(v10, v63);
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v57 = *(v56 + 72);
  v35 = v20;
  v62((v34 + v57 * v20), v10, v63);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v61;
    if (v60 == 1)
    {
    }

    v39 = v61 + v59 + v17;
    v40 = 1;
    while (v40 < v38[2])
    {
      sub_1000938D4(v39, v15, &qword_100505440, &unk_100413B30);
      v62(v10, v15, v63);
      v18 = *&v15[v58];
      v41 = *a3;
      v42 = sub_10008C808(v10);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v24 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v24)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_10030D8B0(v46, 1);
        v42 = sub_10008C808(v10);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v50 = v42;
      v62((v49[6] + v57 * v42), v10, v63);
      *(v49[7] + 8 * v50) = v18;
      v51 = v49[2];
      v24 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v49[2] = v52;
      v39 += v59;
      v38 = v61;
      if (v60 == v40)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v53._object = 0x8000000100466020;
  v53._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v53);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 39;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_10028527C()
{
  result = qword_100502C18;
  if (!qword_100502C18)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502C18);
  }

  return result;
}

void sub_1002852D4(uint64_t a1, char a2, void *a3)
{
  v56 = a3;
  v6 = type metadata accessor for CredentialType();
  v50 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100068FC4(&qword_100505450, &qword_10040CCD8);
  __chkstk_darwin(v9);
  v55 = &v47 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return;
  }

  v14 = *(v10 + 48);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v52 = *(v11 + 72);
  v47 = v15;
  v48 = a1;
  v16 = a1 + v15;
  v17 = v55;
  sub_1000938D4(v16, v55, &qword_100505450, &qword_10040CCD8);
  v18 = *(v50 + 32);
  v53 = v6;
  v54 = (v50 + 32);
  v18(v8, v17, v6);
  v51 = v14;
  v19 = *&v17[v14];
  v20 = *v56;
  v22 = sub_10008CD0C(v8);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_26;
  }

  LOBYTE(v3) = v21;
  if (v20[3] >= v25)
  {
    v17 = v54;
    if ((a2 & 1) == 0)
    {
      goto LABEL_29;
    }

    v28 = v19;
LABEL_8:
    while (1)
    {
      v49 = (v17 - 24);
      v19 = *v56;
      if ((v3 & 1) == 0)
      {
        break;
      }

      v29 = *(v19[7] + 8 * v22);
      v30 = v28 + v29;
      if (!__OFADD__(v29, v28))
      {
        v3 = v53;
        (*v49)(v8, v53);
        *(v19[7] + 8 * v22) = v30;
        goto LABEL_13;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      v28 = v19;
      sub_100313154();
    }

    v19[(v22 >> 6) + 8] |= 1 << v22;
    v3 = v53;
    v18((v19[6] + *(v50 + 72) * v22), v8, v53);
    *(v19[7] + 8 * v22) = v28;
    v31 = v19[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      v19[2] = v33;
LABEL_13:
      v18 = (v13 - 1);
      if (v13 == 1)
      {
        return;
      }

      v13 = v48 + v52 + v47;
      while (1)
      {
        v36 = v55;
        sub_1000938D4(v13, v55, &qword_100505450, &qword_10040CCD8);
        v37 = *v17;
        (*v17)(v8, v36, v3);
        v19 = *(v36 + v51);
        v38 = *v56;
        v22 = sub_10008CD0C(v8);
        v40 = v38[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          break;
        }

        LOBYTE(v3) = v39;
        if (v38[3] < v42)
        {
          sub_10030DC8C(v42, 1);
          v43 = sub_10008CD0C(v8);
          if ((v3 & 1) != (v44 & 1))
          {
            goto LABEL_30;
          }

          v22 = v43;
        }

        v45 = *v56;
        if (v3)
        {
          v46 = *(v45[7] + 8 * v22);
          v32 = __OFADD__(v46, v19);
          v19 = (v19 + v46);
          v17 = v54;
          if (v32)
          {
            goto LABEL_28;
          }

          v3 = v53;
          (*v49)(v8, v53);
          *(v45[7] + 8 * v22) = v19;
        }

        else
        {
          v45[(v22 >> 6) + 8] |= 1 << v22;
          v3 = v53;
          v17 = v54;
          v37(v45[6] + *(v50 + 72) * v22, v8, v53);
          *(v45[7] + 8 * v22) = v19;
          v34 = v45[2];
          v32 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          v45[2] = v35;
        }

        v13 += v52;
        v18 = (v18 - 1);
        if (!v18)
        {
          return;
        }
      }

LABEL_26:
      __break(1u);
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_10030DC8C(v25, a2 & 1);
  v26 = sub_10008CD0C(v8);
  if ((v3 & 1) == (v27 & 1))
  {
    v22 = v26;
    v28 = v19;
    v17 = v54;
    goto LABEL_8;
  }

LABEL_30:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100285764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100068FC4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1002857E4()
{
  v1[5] = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_100068FC4(&qword_100504F78, &qword_10040C508);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  sub_100068FC4(&qword_100504EF0, &unk_10040C470);
  v1[12] = swift_task_alloc();
  sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100285988, v0, 0);
}

uint64_t sub_100285988()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 40);
  v6 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__cachedLocalIdentity;
  swift_beginAccess();
  (*(v4 + 16))(v2, v5 + v6, v3);
  UserDefaultBackedCodableOptional.wrappedValue.getter();
  (*(v4 + 8))(v2, v3);
  v7 = type metadata accessor for SESPeerIdentityData(0);
  if ((*(*(v7 - 8) + 48))(v1, 1, v7) == 1)
  {
    v8 = *(v0 + 96);
    v9 = &qword_100504EF0;
    v10 = &unk_10040C470;
LABEL_5:
    result = sub_100075768(v8, v9, v10);
    v18 = 0.0;
    goto LABEL_7;
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  sub_1002863E4(v11 + *(v7 + 32), v12);
  sub_1001A669C(v11);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  v16 = *(v0 + 104);
  if (v15 == 1)
  {
    v9 = &qword_1005031F0;
    v10 = &unk_10040C4C0;
    v8 = *(v0 + 104);
    goto LABEL_5;
  }

  Date.timeIntervalSinceNow.getter();
  v18 = v19;
  result = (*(v14 + 8))(v16, v13);
LABEL_7:
  v20 = fabs(v18) / 3600.0;
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v20 <= -1.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v20 >= 4294967300.0)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20;
  v22 = *(v0 + 40);
  v23 = *(v22 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_preconditionsMet);
  v24 = *(v22 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v42 = v26;
    v43 = v21;
    v28 = *(v0 + 56);
    v27 = *(v0 + 64);
    v29 = *(v0 + 48);
    v41 = *(v0 + 40);
    v30 = swift_slowAlloc();
    *v30 = 67109888;
    v44 = v23 & 1;
    *(v30 + 4) = v44;
    *(v30 + 8) = 1024;
    *(v30 + 10) = v24 & 1;
    *(v30 + 14) = 1024;
    v31 = *(v28 + 16);
    v31(v27, v41 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__didRecoverTLK, v29);
    UserDefaultBacked.wrappedValue.getter();
    (*(v28 + 8))(v27, v29);
    v21 = v43;
    *(v30 + 16) = *(v0 + 113);
    v32 = v24 & 1;

    *(v30 + 20) = 1024;
    *(v30 + 22) = v43;
    _os_log_impl(&_mh_execute_header, v25, v42, "Reporting state preconditions %{BOOL}d allViewsSynchronized %{BOOL}d serverRecovery %{BOOL}d identityAge %u", v30, 0x1Au);

    v33 = v31;
  }

  else
  {
    v34 = *(v0 + 56);

    v33 = *(v34 + 16);
    v44 = v23 & 1;
    v32 = v24 & 1;
  }

  v36 = *(v0 + 56);
  v35 = *(v0 + 64);
  v37 = *(v0 + 48);
  v33(v35, *(v0 + 40) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__didRecoverTLK, v37);
  UserDefaultBacked.wrappedValue.getter();
  (*(v36 + 8))(v35, v37);
  LODWORD(v37) = *(v0 + 112);
  v38 = objc_opt_self();
  v39 = 0x10000;
  if (!v37)
  {
    v39 = 0;
  }

  sub_10004DCE8(v38, v39 | (v21 << 32) | (v32 << 8) | v44);

  v40 = *(v0 + 8);

  return v40();
}

unint64_t sub_100285E10(char a1)
{
  result = 0x74616572436B6C74;
  switch(a1)
  {
    case 1:
      return 0x766F6365526B6C74;
    case 2:
      return 0x65726168536B6C74;
    case 3:
      return 0x726F706D496B6C74;
    case 4:
      return 0x6C6569467261656ELL;
    case 5:
      return 0x676E69646F636E65;
    case 6:
      return 0x676E69646F636564;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0x666E6F436D616C73;
    case 9:
    case 17:
      v3 = 11;
      goto LABEL_23;
    case 10:
      return 0xD000000000000010;
    case 11:
    case 14:
    case 15:
    case 18:
    case 19:
      return 0xD000000000000013;
    case 12:
      return 0x457473694C6B6C74;
    case 13:
    case 28:
    case 34:
      return 0xD000000000000011;
    case 16:
    case 21:
    case 23:
    case 30:
      v3 = 5;
      goto LABEL_23;
    case 20:
    case 31:
      return 0xD000000000000012;
    case 22:
      return 0xD000000000000010;
    case 24:
      return 0xD000000000000014;
    case 25:
      return 0xD000000000000010;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0xD000000000000010;
    case 29:
      return 0x6D73694D64697364;
    case 32:
      return 0xD000000000000010;
    case 33:
      v3 = 10;
LABEL_23:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002861E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100285E10(*a1);
  v5 = v4;
  if (v3 == sub_100285E10(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100286270()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100285E10(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002862D4(uint64_t a1)
{
  sub_100285E10(*v1);
  String.hash(into:)();
}

Swift::Int sub_100286328()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100285E10(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100286388@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002865FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1002863B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100285E10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002863E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for KeySyncEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeySyncEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002865A8()
{
  result = qword_100508EB8;
  if (!qword_100508EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508EB8);
  }

  return result;
}

unint64_t sub_1002865FC(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100286650()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP10seserviced25SECredentialServerSession_];
  sub_10009393C(0, &qword_100508CE8, NSSet_ptr);
  sub_100068FC4(&qword_100504D48, &qword_10040C010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100413A40;
  v1 = type metadata accessor for CredentialInternal();
  *(v0 + 56) = sub_100068FC4(&qword_100508CF0, &qword_100413A50);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for InstanceInfoInternal();
  *(v0 + 88) = sub_100068FC4(&qword_100508CF8, &qword_100413A58);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for ApplicationInfoInternal();
  *(v0 + 120) = sub_100068FC4(&qword_100508D00, &qword_100413A60);
  *(v0 + 96) = v3;
  v4 = sub_10009393C(0, &qword_100508D08, NSArray_ptr);
  *(v0 + 152) = sub_100068FC4(&qword_100508D10, &qword_100413A68);
  *(v0 + 128) = v4;
  v5 = sub_10009393C(0, &qword_100508D18, NSUUID_ptr);
  *(v0 + 184) = sub_100068FC4(&qword_100508D20, &qword_100413A70);
  *(v0 + 160) = v5;
  v6 = sub_10009393C(0, &qword_100508D28, NSString_ptr);
  *(v0 + 216) = sub_100068FC4(&qword_100508D30, &qword_100413A78);
  *(v0 + 192) = v6;
  v7 = sub_10009393C(0, &qword_100507150, NSData_ptr);
  *(v0 + 248) = sub_100068FC4(&qword_100508D38, &unk_100413A80);
  *(v0 + 224) = v7;
  NSSet.init(objects:)();
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_100286A48()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP10seserviced27SECSessionCallbackInterface_];
  sub_10009393C(0, &qword_100508CE8, NSSet_ptr);
  sub_100068FC4(&qword_100504D48, &qword_10040C010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100413A40;
  v1 = type metadata accessor for CredentialInternal();
  *(v0 + 56) = sub_100068FC4(&qword_100508CF0, &qword_100413A50);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for InstanceInfoInternal();
  *(v0 + 88) = sub_100068FC4(&qword_100508CF8, &qword_100413A58);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for ApplicationInfoInternal();
  *(v0 + 120) = sub_100068FC4(&qword_100508D00, &qword_100413A60);
  *(v0 + 96) = v3;
  v4 = sub_10009393C(0, &qword_100508D08, NSArray_ptr);
  *(v0 + 152) = sub_100068FC4(&qword_100508D10, &qword_100413A68);
  *(v0 + 128) = v4;
  v5 = sub_10009393C(0, &qword_100508D18, NSUUID_ptr);
  *(v0 + 184) = sub_100068FC4(&qword_100508D20, &qword_100413A70);
  *(v0 + 160) = v5;
  v6 = sub_10009393C(0, &qword_100508D28, NSString_ptr);
  *(v0 + 216) = sub_100068FC4(&qword_100508D30, &qword_100413A78);
  *(v0 + 192) = v6;
  v7 = sub_10009393C(0, &qword_100507150, NSData_ptr);
  *(v0 + 248) = sub_100068FC4(&qword_100508D38, &unk_100413A80);
  *(v0 + 224) = v7;
  NSSet.init(objects:)();
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

void sub_100286CD0(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    v5 = *(v3 + 56);
    if (v5 >> 60 == 15)
    {
      v6 = *(v3 + 48);
      *(v3 + 48) = a2;
      *(v3 + 56) = a3;
      sub_100069E2C(a2, a3);
      sub_10006A2D0(v6, v5);
    }
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = *(v3 + 56);
  if (v9 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v11 = *(v3 + 48);
    sub_100069E2C(v11, *(v3 + 56));
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v11, v9);
  }

  v105 = 0;
  v12 = [a1 BOOLValueForSetting:4 manufacturer:v7 brand:v8 uuid:isa error:&v105];

  if (v12)
  {
    v13 = v105;
    v14 = [v12 BOOLValue];

    *(v3 + 64) = v14;
  }

  else
  {
    v15 = v105;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = *(v3 + 56);
  if (v18 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v20 = *(v3 + 48);
    sub_100069E2C(v20, *(v3 + 56));
    v19 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v20, v18);
  }

  v105 = 0;
  v21 = [a1 BOOLValueForSetting:7 manufacturer:v16 brand:v17 uuid:v19 error:&v105];

  if (v21)
  {
    v22 = v105;
    v23 = [v21 BOOLValue];

    *(v3 + 65) = v23;
  }

  else
  {
    v24 = v105;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  v27 = *(v3 + 56);
  if (v27 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v29 = *(v3 + 48);
    sub_100069E2C(v29, v27);
    v28 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v29, v27);
  }

  v105 = 0;
  v30 = [a1 intValueForSetting:0 manufacturer:v25 brand:v26 uuid:v28 error:&v105];

  if (v30)
  {
    v31 = v105;
    v32 = [v30 integerValue];

    *(v3 + 96) = v32;
  }

  else
  {
    v33 = v105;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v34 = String._bridgeToObjectiveC()();
  v35 = String._bridgeToObjectiveC()();
  v36 = *(v3 + 56);
  if (v36 >> 60 == 15)
  {
    v37 = 0;
  }

  else
  {
    v38 = *(v3 + 48);
    sub_100069E2C(v38, *(v3 + 56));
    v37 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v38, v36);
  }

  v105 = 0;
  v39 = [a1 intValueForSetting:1 manufacturer:v34 brand:v35 uuid:v37 error:&v105];

  if (v39)
  {
    v40 = v105;
    v41 = [v39 integerValue];

    *(v3 + 104) = v41;
  }

  else
  {
    v42 = v105;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v43 = String._bridgeToObjectiveC()();
  v44 = String._bridgeToObjectiveC()();
  v45 = *(v3 + 56);
  if (v45 >> 60 == 15)
  {
    v46 = 0;
  }

  else
  {
    v47 = *(v3 + 48);
    sub_100069E2C(v47, *(v3 + 56));
    v46 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v47, v45);
  }

  v105 = 0;
  v48 = [a1 BOOLValueForSetting:9 manufacturer:v43 brand:v44 uuid:v46 error:&v105];

  if (v48)
  {
    v49 = v105;
    v50 = [v48 BOOLValue];

    *(v3 + 80) = v50;
  }

  else
  {
    v51 = v105;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v52 = String._bridgeToObjectiveC()();
  v53 = String._bridgeToObjectiveC()();
  v54 = *(v3 + 56);
  if (v54 >> 60 == 15)
  {
    v55 = 0;
  }

  else
  {
    v56 = *(v3 + 48);
    sub_100069E2C(v56, *(v3 + 56));
    v55 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v56, v54);
  }

  v105 = 0;
  v57 = [a1 arrayValueForSetting:0 manufacturer:v52 brand:v53 uuid:v55 error:&v105];

  v58 = v105;
  if (v57)
  {
    v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v58;

    v61 = sub_1000F1864(v59);

    if (v61)
    {
      *(v3 + 72) = v61;
    }
  }

  else
  {
    v62 = v105;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v63 = String._bridgeToObjectiveC()();
  v64 = String._bridgeToObjectiveC()();
  v65 = *(v3 + 56);
  if (v65 >> 60 == 15)
  {
    v66 = 0;
  }

  else
  {
    v67 = *(v3 + 48);
    sub_100069E2C(v67, *(v3 + 56));
    v66 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v67, v65);
  }

  v105 = 0;
  v68 = [a1 dictValueForSetting:0 manufacturer:v63 brand:v64 uuid:v66 error:&v105];

  v69 = v105;
  if (v68)
  {
    v70 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v69;

    v72 = sub_10008AE84(v70);

    if (v72)
    {
      v103 = a1;
      v73 = 1 << *(v72 + 32);
      v74 = -1;
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      v75 = v74 & *(v72 + 64);
      v76 = (v73 + 63) >> 6;

      v77 = 0;
      v104 = _swiftEmptyArrayStorage;
      if (!v75)
      {
        goto LABEL_51;
      }

      do
      {
LABEL_49:
        while (1)
        {
          v78 = __clz(__rbit64(v75));
          v75 &= v75 - 1;
          v79 = (*(v72 + 48) + 16 * (v78 | (v77 << 6)));
          v80 = *v79;
          v81 = v79[1];

          v82 = sub_100287784(v80, v81);
          v84 = v83;
          v86 = v85;

          if ((v86 & 1) == 0)
          {
            break;
          }

          if (!v75)
          {
            goto LABEL_51;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_10012EDF0(0, *(v104 + 2) + 1, 1, v104);
        }

        v89 = *(v104 + 2);
        v88 = *(v104 + 3);
        if (v89 >= v88 >> 1)
        {
          v104 = sub_10012EDF0((v88 > 1), v89 + 1, 1, v104);
        }

        *(v104 + 2) = v89 + 1;
        v90 = &v104[16 * v89];
        *(v90 + 16) = v82;
        *(v90 + 5) = v84;
      }

      while (v75);
      while (1)
      {
LABEL_51:
        v87 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          __break(1u);
        }

        if (v87 >= v76)
        {
          break;
        }

        v75 = *(v72 + 64 + 8 * v87);
        ++v77;
        if (v75)
        {
          v77 = v87;
          goto LABEL_49;
        }
      }

      if (*(v104 + 2))
      {
        sub_100068FC4(&qword_1005092B0, qword_100413D00);
        v91 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v91 = _swiftEmptyDictionarySingleton;
      }

      a1 = v103;
      v105 = v91;

      sub_100287D14(v93, 1, &v105);

      *(v3 + 88) = v105;
    }
  }

  else
  {
    v92 = v105;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v94 = String._bridgeToObjectiveC()();
  v95 = String._bridgeToObjectiveC()();
  v96 = *(v3 + 56);
  if (v96 >> 60 == 15)
  {
    v97 = 0;
  }

  else
  {
    v98 = *(v3 + 48);
    sub_100069E2C(v98, *(v3 + 56));
    v97 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v98, v96);
  }

  v105 = 0;
  v99 = [a1 BOOLValueForSetting:10 manufacturer:v94 brand:v95 uuid:v97 error:{&v105, v103}];

  if (v99)
  {
    v100 = v105;
    v101 = [v99 BOOLValue];

    *(v3 + 112) = v101;
  }

  else
  {
    v102 = v105;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

unint64_t sub_100287784(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v19 = result;

    v7 = sub_10028806C(v19, a2, 10);

    if ((v7 & 0x10000) != 0)
    {
      return 0;
    }

    return v7;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LOWORD(v7) = 0;
          if (result)
          {
            v12 = (result + 1);
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v7) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v7 = (10 * v7) + v13;
              if ((v7 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v12;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        LOWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v16 = *result - 48;
            if (v16 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v7) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v7 = (10 * v7) + v16;
            if ((v7 & 0x10000) != 0)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOWORD(v7) = 0;
      LOBYTE(v3) = 1;
LABEL_62:
      v21 = v3;
      if (v3)
      {
        return 0;
      }

      return v7;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LOWORD(v7) = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v7) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v7 = (10 * v7) - v9;
            if ((v7 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v20[0] = result;
  v20[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LOWORD(v7) = 0;
        v17 = v20;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          if (((10 * v7) & 0xF0000) != 0)
          {
            break;
          }

          v7 = (10 * v7) + v18;
          if ((v7 & 0x10000) != 0)
          {
            break;
          }

          ++v17;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LOWORD(v7) = 0;
        v10 = v20 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          if (((10 * v7) & 0xF0000) != 0)
          {
            break;
          }

          v7 = (10 * v7) - v11;
          if ((v7 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  if (v3)
  {
    if (--v3)
    {
      LOWORD(v7) = 0;
      v14 = v20 + 1;
      while (1)
      {
        v15 = *v14 - 48;
        if (v15 > 9)
        {
          break;
        }

        if (((10 * v7) & 0xF0000) != 0)
        {
          break;
        }

        v7 = (10 * v7) + v15;
        if ((v7 & 0x10000) != 0)
        {
          break;
        }

        ++v14;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_100287AB4()
{

  sub_10006A2D0(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_100287B1C()
{
  v1 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier, v2);
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaPeer(uint64_t a1)
{
  result = qword_100508EF0;
  if (!qword_100508EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100287D14(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_10008CA34(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10030BD7C(v15, a2 & 1);
    v10 = sub_10008CA34(v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v19 = v10;
  sub_100312094();
  v10 = v19;
  if (v16)
  {
LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_27;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v20[6] + 2 * v10) = v7;
  *(v20[7] + 8 * v10) = v8;
  v21 = v20[2];
  v14 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v14)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    _StringGuts.grow(_:)(30);
    v38._object = 0x8000000100466020;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v22;
  if (v4 != 1)
  {
    v23 = (a1 + 56);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v26 = *v23;
      v25 = *(v23 - 4);
      v27 = *a3;
      v28 = sub_10008CA34(v25);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_24;
      }

      v33 = v29;
      if (v27[3] < v32)
      {
        sub_10030BD7C(v32, 1);
        v28 = sub_10008CA34(v25);
        if ((v33 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v33)
      {
        goto LABEL_9;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v35[6] + 2 * v28) = v25;
      *(v35[7] + 8 * v28) = v26;
      v36 = v35[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      ++v24;
      v35[2] = v37;
      v23 += 2;
      if (v4 == v24)
      {
      }
    }

    goto LABEL_26;
  }
}

unsigned __int8 *sub_10028806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100189A78(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOWORD(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
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

          v46 = v39 * a3;
          if ((v46 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOWORD(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100288640@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_10008E6F8(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_10008E694(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_10006A178(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

void *sub_100288788(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a2 >> 62;
  v26 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_48;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v42 = _swiftEmptyArrayStorage;
    v8 = v4 & ~(v4 >> 63);
    sub_10019F3C0(0, v8, 0);
    v9 = a1;
    v7 = _swiftEmptyArrayStorage;
    if (v3 == 2)
    {
      v10 = *(a1 + 16);
    }

    else
    {
      if (v3 != 1)
      {
        goto LABEL_18;
      }

      v10 = a1;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_20:
      v25 = BYTE6(v2);
      v28 = v3;
      v29 = v2;
      while (1)
      {
        if (!v8)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
        }

        if (v3 == 2)
        {
          if (v10 < *(v9 + 16))
          {
            goto LABEL_42;
          }

          if (v10 >= *(v9 + 24))
          {
            goto LABEL_45;
          }

          v15 = __DataStorage._bytes.getter();
          if (!v15)
          {
            goto LABEL_51;
          }

          v12 = v15;
          v16 = __DataStorage._offset.getter();
          v14 = v10 - v16;
          if (__OFSUB__(v10, v16))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v3 != 1)
          {
            if (v10 >= v25)
            {
              goto LABEL_43;
            }

            v30 = v9;
            v31 = *(&a1 + 1);
            v32 = BYTE3(v9);
            v33 = v26;
            v34 = BYTE5(v9);
            v35 = BYTE6(v9);
            v36 = HIBYTE(v9);
            v37 = v2;
            v38 = BYTE2(v2);
            v39 = BYTE3(v2);
            v40 = BYTE4(v2);
            v41 = BYTE5(v2);
            v17 = *(&v30 + v10);
            goto LABEL_37;
          }

          if (v10 < a1 || v10 >= a1 >> 32)
          {
            goto LABEL_44;
          }

          v11 = __DataStorage._bytes.getter();
          if (!v11)
          {
            goto LABEL_50;
          }

          v12 = v11;
          v13 = __DataStorage._offset.getter();
          v14 = v10 - v13;
          if (__OFSUB__(v10, v13))
          {
            goto LABEL_46;
          }
        }

        v17 = *(v12 + v14);
        v9 = a1;
LABEL_37:
        sub_100068FC4(&qword_100502440, &unk_10040B240);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1004098F0;
        *(v18 + 56) = &type metadata for UInt8;
        *(v18 + 64) = &protocol witness table for UInt8;
        *(v18 + 32) = v17;
        v19 = String.init(format:_:)();
        v3 = v20;
        v42 = v7;
        v22 = v7[2];
        v21 = v7[3];
        if (v22 >= v21 >> 1)
        {
          sub_10019F3C0((v21 > 1), v22 + 1, 1);
          v9 = a1;
          v7 = v42;
        }

        v7[2] = v22 + 1;
        v23 = &v7[2 * v22];
        v23[4] = v19;
        v23[5] = v3;
        ++v10;
        --v8;
        --v4;
        LODWORD(v3) = v28;
        v2 = v29;
        if (!v4)
        {
          return v7;
        }
      }
    }

    __break(1u);
LABEL_18:
    if (v4 < 0)
    {
      goto LABEL_49;
    }

    v10 = 0;
    goto LABEL_20;
  }

  return v7;
}

uint64_t sub_100288AE8()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100409A40;
  *(v8 + 56) = &type metadata for String;
  strcpy((v8 + 32), "peerIdentifier");
  *(v8 + 47) = -18;
  *&v20 = sub_100288788(*v0, v0[1]);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v9 = BidirectionalCollection<>.joined(separator:)();
  v11 = v10;

  *(v8 + 64) = v9;
  *(v8 + 72) = v11;
  *(v8 + 120) = &type metadata for String;
  *(v8 + 88) = &type metadata for String;
  strcpy((v8 + 96), "creationTime");
  *(v8 + 109) = 0;
  *(v8 + 110) = -5120;
  v12 = type metadata accessor for SESPeerIdentityData(0);
  sub_1000938D4(v1 + *(v12 + 32), v7, &qword_1005031F0, &unk_10040C4C0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_100075768(v7, &qword_1005031F0, &unk_10040C4C0);
    *(v8 + 152) = &type metadata for String;
    *(v8 + 128) = 0x3E6C696E3CLL;
    *(v8 + 136) = 0xE500000000000000;
  }

  else
  {
    v21 = v13;
    v15 = sub_1000B9634(&v20);
    (*(v14 + 32))(v15, v7, v13);
    sub_100075D50(&v20, (v8 + 128));
  }

  *(v8 + 184) = &type metadata for String;
  *(v8 + 160) = 0xD000000000000010;
  *(v8 + 168) = 0x80000001004660D0;
  sub_1000938D4(v1 + *(v12 + 36), v4, &qword_100504F08, &unk_10040DE20);
  v16 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v16 - 8) + 48))(v4, 1, v16) == 1)
  {
    sub_100075768(v4, &qword_100504F08, &unk_10040DE20);
    *(v8 + 216) = &type metadata for String;
    *(v8 + 192) = 0x3E6C696E3CLL;
    *(v8 + 200) = 0xE500000000000000;
  }

  else
  {
    v17 = sub_10028A3A4();
    v21 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
    *&v20 = v17;
    sub_10028C290(v4, type metadata accessor for CreationMetadata);
    sub_100075D50(&v20, (v8 + 192));
  }

  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100288EC8(uint64_t a1)
{
  v19._countAndFlagsBits = 8315;
  v19._object = 0xE200000000000000;
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1000BC094(v4, v17);
      sub_1000752B0(v17, v17[3]);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v6;
      sub_1000752F4(v17);
      v18 = v2;
      v9 = v2[2];
      v8 = v2[3];
      if (v9 >= v8 >> 1)
      {
        sub_10019F3C0((v8 > 1), v9 + 1, 1);
        v2 = v18;
      }

      v2[2] = v9 + 1;
      v10 = &v2[2 * v9];
      v10[4] = v5;
      v10[5] = v7;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v17[0] = v2;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 32032;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  String.append(_:)(v19);
}

uint64_t SESViewInformation.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(45);

  strcpy(v22, "Current TLK ");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  v2 = [v0 currentTLK];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 description];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x616853204B4C540ALL;
  v9._object = 0xEC00000020736572;
  String.append(_:)(v9);
  v10 = [v1 tlkShares];
  sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = Array.description.getter();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x756F69766572500ALL;
  v15._object = 0xEF20734B4C542073;
  String.append(_:)(v15);
  v16 = [v1 previousTLKs];
  sub_10009393C(0, &qword_100504F48, SESTLKRecord_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = Array.description.getter();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  return v22[0];
}

uint64_t sub_100289300()
{
  v1 = v0;
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004099F0;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 2003134838;
  *(v2 + 40) = 0xE400000000000000;
  v3 = [v0 viewName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v2 + 64) = v4;
  *(v2 + 72) = v6;
  *(v2 + 120) = &type metadata for String;
  *(v2 + 88) = &type metadata for String;
  *(v2 + 96) = 0x54746E6572727563;
  *(v2 + 104) = 0xEA00000000004B4CLL;
  v7 = [v1 currentTLK];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 dumpState];

    v29 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
    *&v28 = v9;
    sub_100075D50(&v28, (v2 + 128));
  }

  else
  {
    *(v2 + 152) = &type metadata for String;
    *(v2 + 128) = 0x3E6C696E3CLL;
    *(v2 + 136) = 0xE500000000000000;
  }

  *(v2 + 184) = &type metadata for String;
  *(v2 + 160) = 0x72616853736B6C74;
  *(v2 + 168) = 0xEA00000000007365;
  v10 = [v1 tlkShares];
  sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    *&v28 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v12 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v15 dumpState];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v12 != v14);

    v18 = v28;
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  v19 = sub_100068FC4(&qword_1005092C0, &unk_100413DB0);
  *(v2 + 192) = v18;
  *(v2 + 248) = &type metadata for String;
  *(v2 + 216) = v19;
  strcpy((v2 + 224), "previousTLKS");
  *(v2 + 237) = 0;
  *(v2 + 238) = -5120;
  v20 = [v1 previousTLKs];
  sub_10009393C(0, &qword_100504F48, SESTLKRecord_ptr);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_17;
    }

LABEL_26:

    v27 = _swiftEmptyArrayStorage;
LABEL_27:
    *(v2 + 280) = v19;
    *(v2 + 256) = v27;
    sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
    return NSDictionary.init(dictionaryLiteral:)();
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (!v22)
  {
    goto LABEL_26;
  }

LABEL_17:
  *&v28 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      ++v23;
      v26 = [v24 dumpState];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v22 != v23);

    v27 = v28;
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t SESPeerIdentity.description.getter()
{
  v1 = sub_100068FC4(&qword_100504EF0, &unk_10040C470);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for SESPeerIdentityData(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v8 = [v0 peerData];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_10028C2F0(&qword_100504E20, type metadata accessor for SESPeerIdentityData, &unk_10040DFAC);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10006A178(v9, v11);

  (*(v5 + 56))(v3, 0, 1, v4);
  sub_10028C22C(v3, v7);
  v12 = sub_100289B6C();
  sub_10028C290(v7, type metadata accessor for SESPeerIdentityData);
  return v12;
}

unint64_t sub_100289B6C()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v25 = 0xD000000000000019;
  v26 = 0x800000010046A1B0;
  v5 = *v0;
  v6 = v1[1];
  sub_100069E2C(*v1, v6);
  sub_100288640(4, v5, v6, &v23);
  v7 = v23;
  v8 = v24;
  v22 = sub_100288788(v23, v24);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v9 = BidirectionalCollection<>.joined(separator:)();
  v11 = v10;
  sub_10006A178(v7, v8);

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = type metadata accessor for SESPeerIdentityData(0);
  sub_1000938D4(v1 + *(v14 + 36), v4, &qword_100504F08, &unk_10040DE20);
  v15 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v15 - 8) + 48))(v4, 1, v15) == 1)
  {
    sub_100075768(v4, &qword_100504F08, &unk_10040DE20);
    v16 = 0xE500000000000000;
    v17 = 0x3E6C696E3CLL;
  }

  else
  {
    v18 = sub_10028A19C();
    v16 = v19;
    sub_10028C290(v4, type metadata accessor for CreationMetadata);
    v17 = v18;
  }

  v20 = v16;
  String.append(_:)(*&v17);

  return v25;
}

uint64_t sub_100289E10()
{
  v1 = sub_100068FC4(&qword_100504EF0, &unk_10040C470);
  __chkstk_darwin(v1 - 8);
  v3 = v14 - v2;
  v4 = type metadata accessor for SESPeerIdentityData(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v8 = [v0 peerData];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_10028C2F0(&qword_100504E20, type metadata accessor for SESPeerIdentityData, &unk_10040DFAC);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10006A178(v9, v11);

  (*(v5 + 56))(v3, 0, 1, v4);
  sub_10028C22C(v3, v7);
  v12 = sub_100288AE8();
  sub_10028C290(v7, type metadata accessor for SESPeerIdentityData);
  return v12;
}

uint64_t sub_10028A19C()
{
  _StringGuts.grow(_:)(41);

  v1 = type metadata accessor for CreationMetadata(0);
  String.append(_:)(*(v0 + v1[7]));
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + v1[6]));
  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  String.append(_:)(*v0);
  v4._countAndFlagsBits = 544108320;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  type metadata accessor for Date();
  sub_10028C2F0(&qword_100504F38, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x746E756F6363410ALL;
  v6._object = 0xEA0000000000203ALL;
  String.append(_:)(v6);
  v7 = (&v0->_countAndFlagsBits + v1[8]);
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v9 = 0xE500000000000000;
    v8 = 0x3E6C696E3CLL;
  }

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x20746C6120;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  v12 = (&v0->_countAndFlagsBits + v1[9]);
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
  }

  else
  {
    v14 = 0x3E6C696E3CLL;
  }

  if (v13)
  {
    v15 = v12[1];
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  return 0x203A656369766544;
}

uint64_t sub_10028A3A4()
{
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10040A530;
  *(v1 + 32) = 0x6F69737265567773;
  *(v1 + 40) = 0xE90000000000006ELL;
  v2 = *v0;
  v3 = *(v0 + 1);
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 120) = &type metadata for String;
  *(v1 + 88) = &type metadata for String;
  *(v1 + 96) = 1702125924;
  *(v1 + 104) = 0xE400000000000000;
  v4 = type metadata accessor for CreationMetadata(0);
  v5 = v4[5];
  v6 = type metadata accessor for Date();
  *(v1 + 152) = v6;
  v7 = sub_1000B9634((v1 + 128));
  (*(*(v6 - 8) + 16))(v7, &v0[v5], v6);
  *(v1 + 184) = &type metadata for String;
  v8 = 0xE500000000000000;
  *(v1 + 160) = 0x6C65646F6DLL;
  *(v1 + 168) = 0xE500000000000000;
  v9 = &v0[v4[6]];
  v10 = *(v9 + 1);
  *(v1 + 192) = *v9;
  *(v1 + 200) = v10;
  *(v1 + 248) = &type metadata for String;
  *(v1 + 216) = &type metadata for String;
  *(v1 + 224) = 0x656369766564;
  *(v1 + 232) = 0xE600000000000000;
  v11 = &v0[v4[7]];
  v12 = *(v11 + 1);
  *(v1 + 256) = *v11;
  *(v1 + 264) = v12;
  *(v1 + 312) = &type metadata for String;
  *(v1 + 280) = &type metadata for String;
  *(v1 + 288) = 1684632420;
  *(v1 + 296) = 0xE400000000000000;
  v13 = &v0[v4[8]];
  v14 = *v13;
  v15 = v13[1];
  v16 = 0x3E6C696E3CLL;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v14 = 0x3E6C696E3CLL;
    v17 = 0xE500000000000000;
  }

  *(v1 + 320) = v14;
  *(v1 + 328) = v17;
  *(v1 + 376) = &type metadata for String;
  *(v1 + 344) = &type metadata for String;
  *(v1 + 352) = 0x44495344746C61;
  *(v1 + 360) = 0xE700000000000000;
  v18 = &v0[v4[9]];
  v19 = *v18;
  v20 = v18[1];
  *(v1 + 408) = &type metadata for String;
  if (v20)
  {
    v16 = v19;
    v8 = v20;
  }

  *(v1 + 384) = v16;
  *(v1 + 392) = v8;
  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);

  return NSDictionary.init(dictionaryLiteral:)();
}

unint64_t SESTLKShare.description.getter()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504F80, &qword_10040C510);
  __chkstk_darwin(v2 - 8);
  v50 = &v49 - v3;
  v54 = 0;
  v55 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);

  v54 = 0xD000000000000014;
  v55 = 0x800000010046A0B0;
  v4 = [v0 tlkUUID];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100288640(4, v5, v7, &v52);
  v8 = v52;
  v9 = v53;
  v51 = sub_100288788(v52, v53);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v10 = BidirectionalCollection<>.joined(separator:)();
  v12 = v11;
  sub_10006A178(v8, v9);

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 2120480;
  v14._object = 0xE300000000000000;
  String.append(_:)(v14);
  v15 = [v1 sourcePeerIdentifier];
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  sub_100288640(4, v16, v18, &v52);
  v19 = v52;
  v20 = v53;
  v51 = sub_100288788(v52, v53);
  v21 = BidirectionalCollection<>.joined(separator:)();
  v23 = v22;
  sub_10006A178(v19, v20);

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 540945696;
  v25._object = 0xE400000000000000;
  String.append(_:)(v25);
  v26 = [v1 targetPeerIdentifier];
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  sub_100288640(4, v27, v29, &v52);
  v30 = v52;
  v31 = v53;
  v51 = sub_100288788(v52, v53);
  v32 = BidirectionalCollection<>.joined(separator:)();
  v34 = v33;
  v35 = v31;
  v36 = v50;
  sub_10006A178(v30, v35);

  v37._countAndFlagsBits = v32;
  v37._object = v34;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 0x65726168530A5D20;
  v38._object = 0xED00002061746144;
  String.append(_:)(v38);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v39 = type metadata accessor for SESTLKShareData(0);
  v40 = [v1 shareData];
  v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  sub_10028C2F0(&qword_100504F40, type metadata accessor for SESTLKShareData, &unk_10040DF84);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10006A178(v41, v43);

  (*(*(v39 - 8) + 56))(v36, 0, 1, v39);
  v44 = sub_10028AADC();
  v46 = v45;
  sub_10028C290(v36, type metadata accessor for SESTLKShareData);
  v47._countAndFlagsBits = v44;
  v47._object = v46;
  String.append(_:)(v47);

  return v54;
}

uint64_t sub_10028AADC()
{
  v1 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v16 = 0x203A20637253;
  v17 = 0xE600000000000000;
  v4._countAndFlagsBits = sub_100289B6C();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A207473440ALL;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v6 = type metadata accessor for SESTLKShareData(0);
  v7._countAndFlagsBits = sub_100289B6C();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x646574616572430ALL;
  v8._object = 0xEB00000000203A20;
  String.append(_:)(v8);
  sub_1000938D4(v0 + *(v6 + 28), v3, &qword_100504F08, &unk_10040DE20);
  v9 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v9 - 8) + 48))(v3, 1, v9) == 1)
  {
    sub_100075768(v3, &qword_100504F08, &unk_10040DE20);
    v10 = 0xE500000000000000;
    v11 = 0x3E6C696E3CLL;
  }

  else
  {
    v12 = sub_10028A19C();
    v10 = v13;
    sub_10028C290(v3, type metadata accessor for CreationMetadata);
    v11 = v12;
  }

  v14 = v10;
  String.append(_:)(*&v11);

  return v16;
}

uint64_t sub_10028AD34()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504F80, &qword_10040C510);
  __chkstk_darwin(v2 - 8);
  v34 = &v34 - v3;
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004099F0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0x444955554B4C54;
  *(v4 + 40) = 0xE700000000000000;
  v5 = [v0 tlkUUID];
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *&v35 = sub_100288788(v6, v8);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v9 = BidirectionalCollection<>.joined(separator:)();
  v11 = v10;
  sub_10006A178(v6, v8);

  *(v4 + 64) = v9;
  *(v4 + 72) = v11;
  *(v4 + 120) = &type metadata for String;
  *(v4 + 88) = &type metadata for String;
  *(v4 + 96) = 0xD000000000000014;
  *(v4 + 104) = 0x800000010046A130;
  v12 = [v1 sourcePeerIdentifier];
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *&v35 = sub_100288788(v13, v15);
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;
  sub_10006A178(v13, v15);

  *(v4 + 128) = v16;
  *(v4 + 136) = v18;
  *(v4 + 184) = &type metadata for String;
  *(v4 + 152) = &type metadata for String;
  *(v4 + 160) = 0xD000000000000014;
  *(v4 + 168) = 0x800000010046A150;
  v19 = [v1 targetPeerIdentifier];
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *&v35 = sub_100288788(v20, v22);
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;
  sub_10006A178(v20, v22);

  *(v4 + 192) = v23;
  *(v4 + 200) = v25;
  *(v4 + 248) = &type metadata for String;
  *(v4 + 216) = &type metadata for String;
  *(v4 + 224) = 0x7461446572616873;
  *(v4 + 232) = 0xE900000000000061;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v26 = type metadata accessor for SESTLKShareData(0);
  v27 = [v1 shareData];
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = v34;
  sub_10028C2F0(&qword_100504F40, type metadata accessor for SESTLKShareData, &unk_10040DF84);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10006A178(v28, v30);

  (*(*(v26 - 8) + 56))(v31, 0, 1, v26);
  v32 = sub_10028B238();
  v36 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  *&v35 = v32;
  sub_10028C290(v31, type metadata accessor for SESTLKShareData);
  sub_100075D50(&v35, (v4 + 256));
  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10028B238()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100409A40;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = 0xD000000000000013;
  *(v5 + 40) = 0x80000001004660F0;
  v6 = sub_100288AE8();
  v7 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  *(v5 + 64) = v6;
  *(v5 + 120) = &type metadata for String;
  *(v5 + 88) = v7;
  *(v5 + 96) = 0xD000000000000013;
  *(v5 + 104) = 0x8000000100466110;
  v8 = type metadata accessor for SESTLKShareData(0);
  *(v5 + 128) = sub_100288AE8();
  *(v5 + 184) = &type metadata for String;
  *(v5 + 152) = v7;
  *(v5 + 160) = 0xD000000000000010;
  *(v5 + 168) = 0x800000010046A170;
  sub_1000938D4(v1 + *(v8 + 28), v4, &qword_100504F08, &unk_10040DE20);
  v9 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    sub_100075768(v4, &qword_100504F08, &unk_10040DE20);
    *(v5 + 216) = &type metadata for String;
    *(v5 + 192) = 0x3E6C696E3CLL;
    *(v5 + 200) = 0xE500000000000000;
  }

  else
  {
    v10 = sub_10028A3A4();
    v13 = v7;
    *&v12 = v10;
    sub_10028C290(v4, type metadata accessor for CreationMetadata);
    sub_100075D50(&v12, (v5 + 192));
  }

  return NSDictionary.init(dictionaryLiteral:)();
}

id sub_10028B49C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t SESTLKRecord.description.getter()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v2 - 8);
  v50 = &v51[-1] - v3;
  v4 = sub_100068FC4(&qword_1005062F0, &qword_10040E020);
  __chkstk_darwin(v4 - 8);
  v6 = (&v51[-1] - v5);
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v7._object = 0x800000010046A0D0;
  v7._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v7);
  v8 = [v0 view];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x444955556B6C740ALL;
  v13._object = 0xE900000000000020;
  String.append(_:)(v13);
  v14 = [v1 tlkUUID];
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v51[0] = sub_100288788(v15, v17);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;
  sub_10006A178(v15, v17);

  sub_10028C190(8, v18, v20);

  v21 = static String._fromSubstring(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x54746E657261700ALL;
  v25._object = 0xEF20444955554B4CLL;
  String.append(_:)(v25);
  v26 = [v1 tlkUUID];
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v51[0] = sub_100288788(v27, v29);
  v30 = BidirectionalCollection<>.joined(separator:)();
  v32 = v31;
  sub_10006A178(v27, v29);

  sub_10028C190(8, v30, v32);

  v33 = static String._fromSubstring(_:)();
  v35 = v34;

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 0x4464726F6365720ALL;
  v37._object = 0xEC00000020617461;
  String.append(_:)(v37);
  sub_1001C5D54(v6);
  v38 = type metadata accessor for SESTLKRecordData(0);
  (*(*(v38 - 8) + 56))(v6, 0, 1, v38);
  strcpy(v51, "Created by: ");
  BYTE5(v51[1]) = 0;
  HIWORD(v51[1]) = -5120;
  v39 = v50;
  sub_1000938D4(v6 + *(v38 + 20), v50, &qword_100504F08, &unk_10040DE20);
  v40 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    sub_100075768(v39, &qword_100504F08, &unk_10040DE20);
    v41 = 0xE500000000000000;
    v42 = 0x3E6C696E3CLL;
  }

  else
  {
    v43 = sub_10028A19C();
    v41 = v44;
    sub_10028C290(v39, type metadata accessor for CreationMetadata);
    v42 = v43;
  }

  v45 = v41;
  String.append(_:)(*&v42);

  v47 = v51[0];
  v46 = v51[1];
  sub_10028C290(v6, type metadata accessor for SESTLKRecordData);
  v48._countAndFlagsBits = v47;
  v48._object = v46;
  String.append(_:)(v48);

  return v52;
}

uint64_t sub_10028BAAC()
{
  v1 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v1 - 8);
  v3 = v12 - v2;
  strcpy(v12, "Created by: ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  v4 = type metadata accessor for SESTLKRecordData(0);
  sub_1000938D4(v0 + *(v4 + 20), v3, &qword_100504F08, &unk_10040DE20);
  v5 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_100075768(v3, &qword_100504F08, &unk_10040DE20);
    v6 = 0xE500000000000000;
    v7 = 0x3E6C696E3CLL;
  }

  else
  {
    v8 = sub_10028A19C();
    v6 = v9;
    sub_10028C290(v3, type metadata accessor for CreationMetadata);
    v7 = v8;
  }

  v10 = v6;
  String.append(_:)(*&v7);

  return v12[0];
}

uint64_t sub_10028BC68()
{
  v1 = sub_100068FC4(&qword_1005062F0, &qword_10040E020);
  __chkstk_darwin(v1 - 8);
  v3 = (&v20 - v2);
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004099F0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 2003134838;
  *(v4 + 40) = 0xE400000000000000;
  v5 = [v0 view];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 64) = v6;
  *(v4 + 72) = v8;
  *(v4 + 120) = &type metadata for String;
  *(v4 + 88) = &type metadata for String;
  *(v4 + 96) = 0x444955556B6C74;
  *(v4 + 104) = 0xE700000000000000;
  v9 = [v0 tlkUUID];
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v4 + 128) = v10;
  *(v4 + 136) = v12;
  *(v4 + 184) = &type metadata for String;
  *(v4 + 152) = &type metadata for Data;
  strcpy((v4 + 160), "parentTLKUUID");
  *(v4 + 174) = -4864;
  v13 = [v0 parentTLKUUID];
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v4 + 192) = v14;
  *(v4 + 200) = v16;
  *(v4 + 248) = &type metadata for String;
  *(v4 + 216) = &type metadata for Data;
  *(v4 + 224) = 0x614464726F636572;
  *(v4 + 232) = 0xEA00000000006174;
  sub_1001C5D54(v3);
  v17 = type metadata accessor for SESTLKRecordData(0);
  (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
  v18 = sub_10028BF98();
  v22 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  *&v21 = v18;
  sub_10028C290(v3, type metadata accessor for SESTLKRecordData);
  sub_100075D50(&v21, (v4 + 256));
  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10028BF98()
{
  v1 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004098F0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x80000001004660D0;
  v5 = type metadata accessor for SESTLKRecordData(0);
  sub_1000938D4(v0 + *(v5 + 20), v3, &qword_100504F08, &unk_10040DE20);
  v6 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_100075768(v3, &qword_100504F08, &unk_10040DE20);
    *(v4 + 88) = &type metadata for String;
    *(v4 + 64) = 0x3E6C696E3CLL;
    *(v4 + 72) = 0xE500000000000000;
  }

  else
  {
    v7 = sub_10028A3A4();
    v10 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
    *&v9 = v7;
    sub_10028C290(v3, type metadata accessor for CreationMetadata);
    sub_100075D50(&v9, (v4 + 64));
  }

  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10028C190(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10028C22C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SESPeerIdentityData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028C290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10028C2F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10028C338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  v21 = v7;
  *(a2 + 16) = 0x8000000000000000;
  v8 = sub_100093A50();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v9;
  if (v7[3] < v13)
  {
    sub_10030EC1C(v13, isUniquelyReferenced_nonNull_native);
    v8 = sub_100093A50();
    if ((v3 & 1) == (v14 & 1))
    {
      goto LABEL_6;
    }

    v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(a2 + 16) = v7;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  a2 = v8;
  sub_100317CF4();
  v8 = a2;
LABEL_8:
  while (1)
  {
    v15 = v7[7];
    v16 = *(v15 + 8 * v8);
    v17 = __CFADD__(v16, a1);
    v18 = v16 + a1;
    if (!v17)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v20 = v8;
    sub_1003138A0();
    v8 = v20;
    v7 = v21;
    *(a2 + 16) = v21;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v15 + 8 * v8) = v18;
  return swift_endAccess();
}

uint64_t sub_10028C478(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 24);
  v21 = v7;
  *(v4 + 24) = 0x8000000000000000;
  v8 = sub_100093A50();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v9;
  if (v7[3] < v13)
  {
    sub_10030C7D4(v13, isUniquelyReferenced_nonNull_native);
    v8 = sub_100093A50();
    if ((v3 & 1) == (v14 & 1))
    {
      goto LABEL_6;
    }

    v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(v4 + 24) = v7;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v4 = v8;
  sub_100317CF4();
  v8 = v4;
LABEL_8:
  while (1)
  {
    v15 = v7[7];
    v16 = *(v15 + 8 * v8);
    v17 = __CFADD__(v16, a2);
    v18 = v16 + a2;
    if (!v17)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v20 = v8;
    sub_10031262C();
    v8 = v20;
    v7 = v21;
    *(v4 + 24) = v21;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v15 + 8 * v8) = v18;
  return swift_endAccess();
}

uint64_t sub_10028C5B8()
{
  v1 = sub_1000914A0(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v84 = v0;
  v2 = *(v0 + 24);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + 24) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v87 = *(v0 + 24);

  v10 = 0;
  v85 = v4;
  while (v8)
  {
    v14 = v10;
LABEL_11:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(*(v87 + 48) + v16);
    v18 = *(*(v87 + 56) + 8 * v16);
    v19 = 0xD00000000000001DLL;
    if (v17 != 5)
    {
      v19 = 0xD000000000000012;
    }

    v20 = "cardEmulationCount";
    if (v17 != 5)
    {
      v20 = "invalidationReason";
    }

    v21 = 0xD000000000000022;
    if (v17 != 3)
    {
      v21 = 0xD000000000000015;
    }

    v22 = "wiredTransactionCount";
    if (v17 != 3)
    {
      v22 = "wiredTransactionWithAuthCount";
    }

    if (v17 <= 4)
    {
      v19 = v21;
      v20 = v22;
    }

    v23 = "provisioningFailure";
    if (v17 != 1)
    {
      v23 = "dStateChangedCount";
    }

    if (!v17)
    {
      v23 = "provisioningSuccess";
    }

    if (v17 <= 2)
    {
      v24 = 0xD000000000000013;
    }

    else
    {
      v24 = v19;
    }

    if (v17 <= 2)
    {
      v25 = v23;
    }

    else
    {
      v25 = v20;
    }

    sub_100156F48();
    if (v18 < 0)
    {
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
      __break(1u);
LABEL_90:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v26 = v25 | 0x8000000000000000;
    v27.super.super.isa = NSNumber.init(integerLiteral:)(v18).super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v1;
    v29 = v24;
    v30 = sub_10008C908(v24, v26);
    v32 = *(v1 + 16);
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_85;
    }

    v36 = v31;
    if (*(v1 + 24) < v35)
    {
      sub_10030CCD8(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_10008C908(v29, v26);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_90;
      }

LABEL_37:
      if (v36)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_37;
    }

    v41 = v30;
    sub_100312910();
    v30 = v41;
    if (v36)
    {
LABEL_4:
      v11 = v30;

      v1 = v90;
      v12 = v90[7];
      v13 = *(v12 + 8 * v11);
      *(v12 + 8 * v11) = v27;

      goto LABEL_5;
    }

LABEL_38:
    v1 = v90;
    v90[(v30 >> 6) + 8] |= 1 << v30;
    v38 = (v90[6] + 16 * v30);
    *v38 = v29;
    v38[1] = v26;
    *(v90[7] + 8 * v30) = v27;
    v39 = v90[2];
    v34 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v34)
    {
      goto LABEL_88;
    }

    v90[2] = v40;
LABEL_5:
    v10 = v14;
    v4 = v85;
  }

  while (2)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v14 < v9)
    {
      v8 = *(v4 + 8 * v14);
      ++v10;
      if (v8)
      {
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  swift_beginAccess();
  v42 = *(v84 + 16);
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 64);
  v47 = (v44 + 63) >> 6;
  v86 = *(v84 + 16);

  v48 = 0;
  if (v46)
  {
    goto LABEL_47;
  }

  while (2)
  {
    v52 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (v52 < v47)
    {
      v46 = *(v43 + 8 * v52);
      ++v48;
      if (!v46)
      {
        continue;
      }

LABEL_51:
      v53 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v54 = v53 | (v52 << 6);
      v55 = *(*(v86 + 48) + v54);
      v56 = *(*(v86 + 56) + 8 * v54);
      v57 = 0xD000000000000020;
      v58 = 0xD00000000000001ALL;
      if (v55 != 3)
      {
        v58 = 0xD00000000000001BLL;
      }

      v59 = 0x800000010046A360;
      if (v55 == 3)
      {
        v59 = 0x800000010046A380;
      }

      if (v55 != 2)
      {
        v57 = v58;
      }

      v60 = 0x800000010046A3A0;
      if (v55 != 2)
      {
        v60 = v59;
      }

      v61 = 0xD00000000000001DLL;
      if (!v55)
      {
        v61 = 0x6E6F697461727564;
      }

      v62 = 0x800000010046A3D0;
      if (!v55)
      {
        v62 = 0xE800000000000000;
      }

      if (v55 <= 1)
      {
        v63 = v61;
      }

      else
      {
        v63 = v57;
      }

      if (v55 <= 1)
      {
        v64 = v62;
      }

      else
      {
        v64 = v60;
      }

      v88 = v64;
      sub_100156F48();
      if (v56 < 0)
      {
        goto LABEL_86;
      }

      v65.super.super.isa = NSNumber.init(integerLiteral:)(v56).super.super.isa;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v89 = v1;
      v67 = v63;
      v68 = sub_10008C908(v63, v88);
      v70 = *(v1 + 16);
      v71 = (v69 & 1) == 0;
      v34 = __OFADD__(v70, v71);
      v72 = v70 + v71;
      if (v34)
      {
        goto LABEL_87;
      }

      v73 = v69;
      if (*(v1 + 24) >= v72)
      {
        if (v66)
        {
          goto LABEL_75;
        }

        v78 = v68;
        sub_100312910();
        v68 = v78;
        if (v73)
        {
          goto LABEL_46;
        }

LABEL_76:
        v1 = v89;
        v89[(v68 >> 6) + 8] |= 1 << v68;
        v75 = (v89[6] + 16 * v68);
        *v75 = v67;
        v75[1] = v88;
        *(v89[7] + 8 * v68) = v65;
        v76 = v89[2];
        v34 = __OFADD__(v76, 1);
        v77 = v76 + 1;
        if (v34)
        {
          goto LABEL_89;
        }

        v89[2] = v77;
        v48 = v52;
        if (!v46)
        {
          continue;
        }
      }

      else
      {
        sub_10030CCD8(v72, v66);
        v68 = sub_10008C908(v67, v88);
        if ((v73 & 1) != (v74 & 1))
        {
          goto LABEL_90;
        }

LABEL_75:
        if ((v73 & 1) == 0)
        {
          goto LABEL_76;
        }

LABEL_46:
        v49 = v68;

        v1 = v89;
        v50 = v89[7];
        v51 = *(v50 + 8 * v49);
        *(v50 + 8 * v49) = v65;

        v48 = v52;
        if (!v46)
        {
          continue;
        }
      }

LABEL_47:
      v52 = v48;
      goto LABEL_51;
    }

    break;
  }

  sub_100156F48();
  isa = NSNumber.init(integerLiteral:)(*(v84 + 32)).super.super.isa;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  sub_10031637C(isa, 0xD000000000000028, 0x800000010046A3F0, v80);
  sub_10019539C(v1);
  v82 = v81;

  type metadata accessor for SESAnalyticsLogger();
  sub_1002FB088(0xD00000000000002DLL, 0x800000010046A420, v82);
}

uint64_t sub_10028CC2C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10028CCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10028CDAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DispatchTime();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(uint64_t a1)
{
  result = qword_100509430;
  if (!qword_100509430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028CEB0(uint64_t a1)
{
  result = type metadata accessor for DispatchTime();
  if (v2 <= 0x3F)
  {
    result = sub_10028CF3C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10028CF3C()
{
  result = qword_100509440;
  if (!qword_100509440)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100509440);
  }

  return result;
}

unint64_t sub_10028CF90()
{
  result = qword_100509478;
  if (!qword_100509478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509478);
  }

  return result;
}

unint64_t sub_10028CFE8()
{
  result = qword_100509480;
  if (!qword_100509480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509480);
  }

  return result;
}

unint64_t sub_10028D040()
{
  result = qword_100509488;
  if (!qword_100509488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509488);
  }

  return result;
}

void sub_10028D09C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_10028D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[56] = a6;
  v7[57] = a7;
  v7[54] = a4;
  v7[55] = a5;
  sub_100068FC4(&qword_100504258, &qword_10040F8A0);
  v7[58] = swift_task_alloc();
  v8 = type metadata accessor for DispatchTime();
  v7[59] = v8;
  v7[60] = *(v8 - 8);
  v7[61] = swift_task_alloc();
  v9 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v11 = type metadata accessor for StateInternal();
  v7[72] = v11;
  v7[73] = *(v11 - 8);
  v7[74] = swift_task_alloc();

  return _swift_task_switch(sub_10028D3A0, 0, 0);
}

uint64_t sub_10028D3A0()
{
  v95 = v0;
  v1 = v0[54] + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState;
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_100218E94(*v1, v2, v4, v5);
  v6 = sub_1002192C4(v3, v2, v4, v5, 8, 0, 0, 0x8000000000000000);
  sub_100218FD8(v3, v2, v4, v5);
  if (v6)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Attempted to enter wired mode in invalid state", v10, 2u);
    }

    sub_10009591C();
    v12 = swift_allocError();
    v13 = 10;
    goto LABEL_13;
  }

  v14 = v0[54];
  if (*(v14 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B2C8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Maintenance API is not available on non-application clients", v18, 2u);
    }

    sub_10009591C();
    v12 = swift_allocError();
    v13 = 15;
    goto LABEL_13;
  }

  v21 = v0[55];
  v22 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v23 = *(v14 + v22);
  v24 = swift_task_alloc();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v21;

  v25 = sub_10033322C(sub_10021C27C, v24, v23);

  if (!(v25 >> 62))
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_38:

    if (qword_1005019D8 == -1)
    {
LABEL_39:
      v77 = v0[67];
      v78 = v0[66];
      v79 = v0[65];
      v80 = v0[55];
      v81 = type metadata accessor for Logger();
      sub_1000958E4(v81, qword_10051B2C8);
      (*(v78 + 16))(v77, v80, v79);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v0[67];
      v86 = v0[66];
      v87 = v0[65];
      if (v84)
      {
        v88 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v88 = 136315394;
        *(v88 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v94);
        *(v88 + 12) = 2080;
        v89 = UUID.uuidString.getter();
        v91 = v90;
        (*(v86 + 8))(v85, v87);
        v92 = sub_1002FFA0C(v89, v91, &v94);

        *(v88 + 14) = v92;
        _os_log_impl(&_mh_execute_header, v82, v83, "%s: Credential %s not found", v88, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v86 + 8))(v85, v87);
      }

      sub_10009591C();
      v12 = swift_allocError();
      v13 = 1;
LABEL_13:
      *v11 = v13;
      swift_willThrow();
LABEL_14:
      v0[93] = v12;
      v19 = swift_task_alloc();
      v0[94] = v19;
      *v19 = v0;
      v19[1] = sub_1002907C0;

      return sub_1001FF5CC();
    }

LABEL_45:
    swift_once();
    goto LABEL_39;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v25 & 0xC000000000000001) == 0)
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v25 + 32);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_45;
  }

  v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
  v27 = v26;
  v0[75] = v26;
  v28 = v0[74];
  v29 = v0[73];
  v30 = v0[72];

  CredentialInternal.state.getter();
  v31 = (*(v29 + 88))(v28, v30);
  v32 = v0[74];
  v33 = v0[73];
  v34 = v0[72];
  if (v31 != enum case for StateInternal.installed(_:))
  {
    (*(v33 + 8))(v0[74], v34);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v58 = v0[68];
    v59 = v0[66];
    v60 = v0[65];
    v61 = v0[55];
    v62 = type metadata accessor for Logger();
    sub_1000958E4(v62, qword_10051B2C8);
    (*(v59 + 16))(v58, v61, v60);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v0[68];
    v67 = v0[66];
    v68 = v0[65];
    if (v65)
    {
      v69 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v69 = 136315394;
      *(v69 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v94);
      *(v69 + 12) = 2080;
      v70 = UUID.uuidString.getter();
      v71 = v27;
      v73 = v72;
      (*(v67 + 8))(v66, v68);
      v74 = sub_1002FFA0C(v70, v73, &v94);
      v27 = v71;

      *(v69 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v63, v64, "%s: Credential %s not installed", v69, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v67 + 8))(v66, v68);
    }

    sub_10009591C();
    v12 = swift_allocError();
    *v76 = 7;
    swift_willThrow();

    goto LABEL_14;
  }

  (*(v33 + 96))(v0[74], v34);
  v0[76] = *v32;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v35 = v0[71];
  v36 = v0[66];
  v37 = v0[65];
  v39 = v0[54];
  v38 = v0[55];
  v40 = type metadata accessor for Logger();
  v0[77] = sub_1000958E4(v40, qword_10051B2C8);
  v41 = *(v36 + 16);
  v0[78] = v41;
  v0[79] = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v35, v38, v37);
  v42 = v39;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v0[71];
  v47 = v0[66];
  v48 = v0[65];
  if (v45)
  {
    v49 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v49 = 136315394;
    v50 = UUID.uuidString.getter();
    v93 = v27;
    v52 = sub_1002FFA0C(v50, v51, &v94);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2080;
    v53 = UUID.uuidString.getter();
    v55 = v54;
    v56 = *(v47 + 8);
    v56(v46, v48);
    v57 = sub_1002FFA0C(v53, v55, &v94);
    v27 = v93;

    *(v49 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v43, v44, "Session %s: Setting credential %s in Wired Mode", v49, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v56 = *(v47 + 8);
    v56(v46, v48);
  }

  v0[80] = v56;
  v75 = swift_task_alloc();
  v0[81] = v75;
  *v75 = v0;
  v75[1] = sub_10028DEBC;

  return sub_1001FDAE0(v27);
}

uint64_t sub_10028DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[82] = a1;
  v6[83] = a2;
  v6[84] = a3;
  v6[85] = a4;
  v6[86] = v4;

  if (v4)
  {
    v7 = sub_100290A20;
  }

  else
  {
    v7 = sub_10028E00C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10028E00C()
{
  v37 = v0;
  v1 = v0[83];
  if (v1)
  {
    v2 = v0[75];
    v35 = v1;
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v34 = v0[80];
      v6 = v0[70];
      v7 = v0[65];
      v8 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v36);
      *(v8 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v9 = UUID.uuidString.getter();
      v11 = v10;
      v34(v6, v7);
      v12 = sub_1002FFA0C(v9, v11, &v36);

      *(v8 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s: Starting new wired mode handle for credential %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v13 = v0[85];
    v14 = v0[84];
    v15 = v0[83];
    v16 = v0[82];
    v17 = v14;
    v18 = v13;
    v19 = v35;
    v20 = v16;
    sub_1001FEFA8(v16, v15, v14, v13 | 0x4000000000000000);
    v0[2] = v0;
    v0[7] = v0 + 49;
    v0[3] = sub_10028E4C0;
    v21 = swift_continuation_init();
    v0[25] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1001FDA0C;
    v0[21] = &unk_1004CEE88;
    v0[22] = v21;
    [v19 requestSETransceiverWithCompletion:v0 + 18];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v36);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: NFCredentialSession in handle has been invalidated", v24, 0xCu);
      sub_1000752F4(v25);
    }

    v26 = v0[85];
    v27 = v0[84];
    v28 = v0[82];
    v29 = v0[75];
    sub_10009591C();
    v30 = swift_allocError();
    *v31 = 9;
    swift_willThrow();

    v0[93] = v30;
    v32 = swift_task_alloc();
    v0[94] = v32;
    *v32 = v0;
    v32[1] = sub_1002907C0;

    return sub_1001FF5CC();
  }
}

uint64_t sub_10028E4C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 696) = v1;
  if (v1)
  {

    v2 = sub_100290AF4;
  }

  else
  {
    v2 = sub_10028E604;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028E604()
{
  v237 = v0;
  v1 = v0;
  v2 = v0[49];
  v0[88] = v2;
  if (!v2)
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v231 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v231);
      _os_log_impl(&_mh_execute_header, v21, v22, "%s: Unable to get transceiver", v23, 0xCu);
      sub_1000752F4(v24);
      v1 = v230;
    }

    v25 = v1[85];
    v26 = v1[84];
    v27 = v1[83];
    v28 = v1[82];
    v29 = v1[75];
    sub_10009591C();
    v30 = swift_allocError();
    *v31 = 9;
    swift_willThrow();

    goto LABEL_30;
  }

  v0[50] = 0;
  v3 = [v2 listAppletsAndRefreshCache:0 outError:v0 + 50];
  v4 = v0[50];
  if (!v3)
  {
    v42 = v4;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      *v45 = 136315394;
      *(v45 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v231);
      *(v45 + 12) = 2080;
      swift_getErrorValue();
      v46 = Error.localizedDescription.getter();
      v48 = sub_1002FFA0C(v46, v47, &v231);

      *(v45 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s: Nearfield error %s encountered when listing applets", v45, 0x16u);
      swift_arrayDestroy();
    }

    v49 = v0[85];
    v50 = v0[84];
    v51 = v0[83];
    v52 = v0[82];
    v53 = v0[75];
    [v2 invalidate];
    sub_10009591C();
    v30 = swift_allocError();
    *v54 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    goto LABEL_30;
  }

  v5 = v3;
  v6 = v1[76];
  v186 = sub_10012E2F8();
  v221 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v4;

  [v2 invalidate];
  if (v6 >> 62)
  {
    goto LABEL_315;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v231 = _swiftEmptyArrayStorage;
      sub_10019F4A4(0, i & ~(i >> 63), 0);
      if ((i & 0x8000000000000000) != 0)
      {
LABEL_317:
        __break(1u);
LABEL_318:
        v222 = i & 0xFFFFFFFFFFFFFF8;
        v228 = _CocoaArrayWrapper.endIndex.getter();
        v10 = v195;
        goto LABEL_37;
      }

      v9 = 0;
      v10 = v231;
      v11 = v6 & 0xC000000000000001;
      v12 = v230[76] + 32;
      do
      {
        if (v11)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v13 = *(v12 + 8 * v9);
        }

        v14 = v13;
        v15 = InstanceInfoInternal.instanceAID.getter();
        v17 = v16;

        v231 = v10;
        v19 = v10[2];
        v18 = v10[3];
        if (v19 >= v18 >> 1)
        {
          sub_10019F4A4((v18 > 1), v19 + 1, 1);
          v10 = v231;
        }

        ++v9;
        v10[2] = v19 + 1;
        v20 = &v10[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
      }

      while (i != v9);
      v231 = _swiftEmptyArrayStorage;
      sub_100108288(i);
      v32 = 0;
      do
      {
        if (v11)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v33 = *(v12 + 8 * v32);
        }

        v34 = v33;
        v35 = InstanceInfoInternal.securityDomainAID.getter();
        v37 = v36;

        v38 = v231;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10019F4A4(0, v38[2] + 1, 1);
          v38 = v231;
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          sub_10019F4A4((v39 > 1), v40 + 1, 1);
          v38 = v231;
        }

        ++v32;
        v38[2] = v40 + 1;
        v41 = &v38[2 * v40];
        v41[4] = v35;
        v41[5] = v37;
      }

      while (i != v32);
      v6 = v230;
    }

    else
    {
      v38 = _swiftEmptyArrayStorage;
      v10 = _swiftEmptyArrayStorage;
      v6 = v230;
    }

    *(v6 + 416) = _swiftEmptyArrayStorage;
    i = v221;
    v195 = v10;
    v203 = v38;
    v192 = v10[2];
    if (!v192)
    {
      v218 = *(v6 + 688);
      v187 = _swiftEmptyArrayStorage;
LABEL_166:
      v192 = v38[2];
      if (v192)
      {
        v191 = v6 + 760;
        v111 = i & 0xFFFFFFFFFFFFFF8;
        if (i >> 62)
        {
LABEL_320:
          v229 = _CocoaArrayWrapper.endIndex.getter();
          v38 = v203;
        }

        else
        {
          v229 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v112 = 0;
        v190 = (v6 + 774);
        v194 = v38 + 4;
        v225 = i & 0xC000000000000001;
        v209 = v111;
        while (1)
        {
          if (v112 >= v38[2])
          {
            goto LABEL_301;
          }

          v213 = v112;
          v113 = &v194[2 * v112];
          v115 = *v113;
          v114 = v113[1];
          sub_100069E2C(*v113, v114);
          v223 = v114;
          if (v229)
          {
            break;
          }

LABEL_261:
          sub_10006A178(v115, v223);
LABEL_266:
          v157 = v213;
LABEL_267:
          v112 = v157 + 1;
          v38 = v203;
          if (v112 == v192)
          {
            goto LABEL_277;
          }
        }

        v116 = 0;
        v215 = v115;
        v217 = BYTE6(v114);
        if (v115)
        {
          v117 = 0;
        }

        else
        {
          v117 = v114 == 0xC000000000000000;
        }

        v118 = v114 >> 62;
        v119 = v117;
        v220 = v119;
        v211 = v115;
        v197 = v115 >> 32;
        v199 = HIDWORD(v115);
        v120 = __OFSUB__(HIDWORD(v115), v115);
        v207 = v120;
        v205 = HIDWORD(v115) - v115;
        v227 = v118;
        while (1)
        {
          if (v225)
          {
            v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v116 >= *(v111 + 16))
            {
              goto LABEL_290;
            }

            v121 = *(i + 8 * v116 + 32);
          }

          v122 = v121;
          v123 = v116 + 1;
          if (__OFADD__(v116, 1))
          {
            goto LABEL_289;
          }

          v124 = [v121 identifierAsData];
          v125 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          i = v126;

          v127 = i >> 62;
          if (v227 == 3)
          {
            v128 = v220;
            if (i >> 62 != 3)
            {
              v128 = 0;
            }

            if (v128 == 1)
            {
              v129 = 0;
              if (!v125 && i == 0xC000000000000000)
              {
                v154 = 0;
                v155 = 0xC000000000000000;
LABEL_263:
                sub_10006A178(v154, v155);
LABEL_264:
                v156 = [v122 rawGPState];
                type metadata accessor for InstanceInfoInternal();
                if (v156 == static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter())
                {
                  sub_10006A178(v115, v223);

                  i = v221;
                  goto LABEL_266;
                }

                i = v221;
                v157 = v213;
                if ([v122 isGPLocked])
                {
                  sub_10006A178(v115, v223);
                }

                else
                {
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*(v6 + 416) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 416) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    i = v221;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  sub_10006A178(v115, v223);
                  v187 = *(v6 + 416);
                }

                goto LABEL_267;
              }

LABEL_202:
              if (v127 > 1)
              {
                goto LABEL_207;
              }

              goto LABEL_203;
            }
          }

          else
          {
            if (v227 <= 1)
            {
              v129 = v217;
              if (v227)
              {
                v129 = v205;
                if (v207)
                {
                  goto LABEL_299;
                }
              }

              goto LABEL_202;
            }

            if (v227 == 2)
            {
              v131 = *(v115 + 16);
              v130 = *(v115 + 24);
              v79 = __OFSUB__(v130, v131);
              v129 = v130 - v131;
              if (v79)
              {
                goto LABEL_300;
              }

              goto LABEL_202;
            }
          }

          v129 = 0;
          if (v127 > 1)
          {
LABEL_207:
            if (v127 == 2)
            {
              v133 = *(v125 + 16);
              v132 = *(v125 + 24);
              v79 = __OFSUB__(v132, v133);
              v134 = v132 - v133;
              if (v79)
              {
                goto LABEL_295;
              }

              if (v129 == v134)
              {
                goto LABEL_213;
              }
            }

            else if (!v129)
            {
              goto LABEL_262;
            }

            goto LABEL_183;
          }

LABEL_203:
          if (v127)
          {
            if (__OFSUB__(HIDWORD(v125), v125))
            {
              goto LABEL_294;
            }

            if (v129 == HIDWORD(v125) - v125)
            {
LABEL_213:
              if (v129 < 1)
              {
                goto LABEL_262;
              }

              if (v227 > 1)
              {
                if (v227 != 2)
                {
                  v135 = v190;
                  *(v190 + 6) = 0;
                  *v190 = 0;
                  goto LABEL_230;
                }

                v6 = *(v115 + 16);
                v136 = __DataStorage._bytes.getter();
                if (v136)
                {
                  v137 = __DataStorage._offset.getter();
                  if (__OFSUB__(v6, v137))
                  {
                    goto LABEL_309;
                  }

                  v136 += v6 - v137;
                }

                v94 = __DataStorage._length.getter();
                v115 = v215;
                if (v127 == 2)
                {
                  v138 = *(v125 + 16);
                  v139 = *(v125 + 24);
                }

                else
                {
                  if (v127 != 1)
                  {
                    v231 = v125;
                    v232 = i;
                    v233 = BYTE2(i);
                    v234 = BYTE3(i);
                    v235 = BYTE4(i);
                    v236 = BYTE5(i);
                    v6 = v230;
                    if (!v136)
                    {
                      goto LABEL_339;
                    }

                    v151 = memcmp(v136, &v231, BYTE6(i));
                    sub_10006A178(v125, i);
                    v111 = v209;
                    if (!v151)
                    {
                      goto LABEL_264;
                    }

                    goto LABEL_259;
                  }

                  v138 = v125;
                  v139 = v125 >> 32;
                  if (v125 >> 32 < v125)
                  {
                    __break(1u);
LABEL_316:
                    __break(1u);
                    goto LABEL_317;
                  }
                }

                v149 = sub_100189FB8(v138, v139, i & 0x3FFFFFFFFFFFFFFFLL, v136);
                if (v218)
                {
                  goto LABEL_274;
                }

                v150 = v149;
                sub_10006A178(v125, i);
                v218 = 0;
                v6 = v230;
                v111 = v209;
                if (v150)
                {
                  goto LABEL_264;
                }
              }

              else if (v227)
              {
                if (v197 < v211)
                {
                  goto LABEL_304;
                }

                v140 = __DataStorage._bytes.getter();
                if (v140)
                {
                  v141 = v140;
                  v142 = __DataStorage._offset.getter();
                  if (__OFSUB__(v211, v142))
                  {
                    goto LABEL_310;
                  }

                  __s1b = (v211 - v142 + v141);
                }

                else
                {
                  __s1b = 0;
                }

                __DataStorage._length.getter();
                v111 = v209;
                v115 = v215;
                if (v127 == 2)
                {
                  v152 = sub_100189FB8(*(v125 + 16), *(v125 + 24), i & 0x3FFFFFFFFFFFFFFFLL, __s1b);
                  v6 = v230;
                  sub_10006A178(v125, i);
                  if (v152)
                  {
                    goto LABEL_264;
                  }
                }

                else
                {
                  if (v127 == 1)
                  {
                    v111 = v125;
                    v6 = (v125 >> 32) - v125;
                    if (v125 >> 32 < v125)
                    {
                      goto LABEL_316;
                    }

                    v143 = __DataStorage._bytes.getter();
                    if (v143)
                    {
                      v144 = __DataStorage._offset.getter();
                      if (__OFSUB__(v125, v144))
                      {
                        __break(1u);
                        goto LABEL_320;
                      }

                      v143 += v125 - v144;
                    }

                    v111 = v209;
                    v145 = __DataStorage._length.getter();
                    if (v145 >= v6)
                    {
                      v146 = (v125 >> 32) - v125;
                    }

                    else
                    {
                      v146 = v145;
                    }

                    v94 = __s1b;
                    if (!__s1b)
                    {
                      goto LABEL_341;
                    }

                    v6 = v230;
                    if (!v143)
                    {
                      goto LABEL_340;
                    }

                    if (__s1b == v143)
                    {
LABEL_262:
                      v154 = v125;
                      v155 = i;
                      goto LABEL_263;
                    }

                    v147 = v146;
                    v148 = v143;
                  }

                  else
                  {
                    v94 = __s1b;
                    v231 = v125;
                    v232 = i;
                    v233 = BYTE2(i);
                    v234 = BYTE3(i);
                    v235 = BYTE4(i);
                    v236 = BYTE5(i);
                    if (!__s1b)
                    {
                      goto LABEL_342;
                    }

                    v147 = BYTE6(i);
                    v148 = &v231;
                  }

                  v153 = memcmp(v94, v148, v147);
                  sub_10006A178(v125, i);
                  if (!v153)
                  {
                    goto LABEL_264;
                  }
                }
              }

              else
              {
                *(v6 + 760) = v115;
                *(v6 + 762) = BYTE2(v115);
                *(v6 + 763) = BYTE3(v115);
                *(v6 + 764) = v199;
                *(v6 + 765) = BYTE5(v115);
                *(v6 + 766) = BYTE6(v115);
                *(v6 + 767) = HIBYTE(v115);
                *(v6 + 768) = v223;
                *(v6 + 772) = WORD2(v223);
                v135 = v191;
LABEL_230:
                sub_10019F024(v135, v125, i, &v231);
                if (v218)
                {
                  goto LABEL_274;
                }

                sub_10006A178(v125, i);
                v218 = 0;
                v6 = v230;
                if (v231)
                {
                  goto LABEL_264;
                }
              }

LABEL_259:

              goto LABEL_184;
            }
          }

          else if (v129 == BYTE6(i))
          {
            goto LABEL_213;
          }

LABEL_183:

          sub_10006A178(v125, i);
LABEL_184:
          ++v116;
          i = v221;
          if (v123 == v229)
          {
            goto LABEL_261;
          }
        }
      }

LABEL_277:
      *(v6 + 712) = v187;
      if (v187 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          v158.super.isa = Array._bridgeToObjectiveC()().super.isa;
          v159 = _CocoaArrayWrapper.endIndex.getter();
LABEL_280:
          *(v6 + 720) = v158;

          if (v159)
          {
            if ((v187 & 0xC000000000000001) == 0)
            {
              if (!*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
              }

              v160 = *(v187 + 32);
              goto LABEL_284;
            }
          }

          else
          {
            __break(1u);
          }

          v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_284:
          v161 = v160;
          *(v6 + 728) = v160;
          v162 = *(v6 + 664);
          *(v6 + 80) = v6;
          *(v6 + 88) = sub_100290080;
          v163 = swift_continuation_init();
          *(v6 + 264) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
          *(v6 + 208) = _NSConcreteStackBlock;
          *(v6 + 216) = 1107296256;
          *(v6 + 224) = sub_1001E95B0;
          *(v6 + 232) = &unk_1004CEEB0;
          *(v6 + 240) = v163;
          [v162 startWiredModeWithApplets:v158.super.isa selectOnStart:v161 externalAuth:0 completion:v6 + 208];
          v94 = (v6 + 80);

          return _swift_continuation_await(v94);
        }
      }

      else if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v158.super.isa = Array._bridgeToObjectiveC()().super.isa;
        v159 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_280;
      }

      v164 = *(v6 + 624);
      v165 = *(v6 + 552);
      v166 = v6;
      v167 = *(v6 + 520);
      v168 = v166[55];

      v164(v165, v168, v167);
      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.error.getter();
      v171 = os_log_type_enabled(v169, v170);
      v172 = v166[69];
      v173 = v166[66];
      v174 = v166[65];
      if (v171)
      {
        v175 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        *v175 = 136315394;
        *(v175 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v231);
        *(v175 + 12) = 2080;
        v176 = UUID.uuidString.getter();
        v178 = v177;
        (*(v173 + 8))(v172, v174);
        v179 = sub_1002FFA0C(v176, v178, &v231);

        *(v175 + 14) = v179;
        _os_log_impl(&_mh_execute_header, v169, v170, "%s: No applets are associated with credential with UUID %s", v175, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v173 + 8))(v172, v174);
      }

      v1 = v230;
      v180 = v230[85];
      v181 = v230[84];
      v182 = v230[83];
      v183 = v230[82];
      v184 = v230[75];
      sub_10009591C();
      v30 = swift_allocError();
      *v185 = 5;
      swift_willThrow();

      swift_unknownObjectRelease();
LABEL_30:
      v1[93] = v30;
      v55 = swift_task_alloc();
      v1[94] = v55;
      *v55 = v1;
      v55[1] = sub_1002907C0;

      return sub_1001FF5CC();
    }

    v191 = v6 + 788;
    if (v221 >> 62)
    {
      goto LABEL_318;
    }

    v222 = v221 & 0xFFFFFFFFFFFFFF8;
    v228 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_37:
    v57 = 0;
    v189 = (v6 + 802);
    v193 = v10 + 4;
    v224 = i & 0xC000000000000001;
    v187 = _swiftEmptyArrayStorage;
    v218 = *(v6 + 688);
LABEL_41:
    if (v57 >= v10[2])
    {
      goto LABEL_293;
    }

    v210 = v57;
    v59 = &v193[2 * v57];
    v60 = *v59;
    v61 = v59[1];
    sub_100069E2C(*v59, v61);
    v219 = v61;
    if (!v228)
    {
LABEL_38:
      sub_10006A178(v60, v219);
      goto LABEL_39;
    }

    v62 = 0;
    v212 = v60;
    v214 = BYTE6(v61);
    v63 = !v60 && v61 == 0xC000000000000000;
    v64 = v61 >> 62;
    v65 = v63;
    v216 = v65;
    v208 = v60;
    v196 = v60 >> 32;
    v198 = HIDWORD(v60);
    v66 = __OFSUB__(HIDWORD(v60), v60);
    v206 = v66;
    v204 = HIDWORD(v60) - v60;
    v226 = v64;
LABEL_56:
    if (v224)
    {
      v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v62 >= *(v222 + 16))
      {
        goto LABEL_288;
      }

      v67 = *(i + 8 * v62 + 32);
    }

    v68 = v67;
    v69 = v62 + 1;
    if (!__OFADD__(v62, 1))
    {
      break;
    }

    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
LABEL_306:
    __break(1u);
LABEL_307:
    __break(1u);
LABEL_308:
    __break(1u);
LABEL_309:
    __break(1u);
LABEL_310:
    __break(1u);
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
LABEL_315:
    ;
  }

  v70 = [v67 identifierAsData];
  v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74 = v73 >> 62;
  if (v226 != 3)
  {
    if (v226 > 1)
    {
      if (v226 != 2)
      {
        goto LABEL_77;
      }

      v78 = *(v60 + 16);
      v77 = *(v60 + 24);
      v79 = __OFSUB__(v77, v78);
      v76 = v77 - v78;
      if (v79)
      {
        goto LABEL_297;
      }
    }

    else
    {
      v76 = v214;
      if (v226)
      {
        v76 = v204;
        if (v206)
        {
          goto LABEL_296;
        }
      }
    }

LABEL_73:
    if (v74 <= 1)
    {
      goto LABEL_74;
    }

LABEL_78:
    if (v74 == 2)
    {
      v81 = *(v71 + 16);
      v80 = *(v71 + 24);
      v79 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v79)
      {
        goto LABEL_291;
      }

      if (v76 == v82)
      {
        goto LABEL_84;
      }
    }

    else if (!v76)
    {
      goto LABEL_154;
    }

LABEL_54:

    sub_10006A178(v71, v73);
LABEL_55:
    ++v62;
    if (v69 == v228)
    {
      goto LABEL_38;
    }

    goto LABEL_56;
  }

  v75 = v216;
  if (v73 >> 62 != 3)
  {
    v75 = 0;
  }

  if (v75)
  {
    v76 = 0;
    if (!v71 && v73 == 0xC000000000000000)
    {
      v108 = 0;
      v109 = 0xC000000000000000;
      goto LABEL_155;
    }

    goto LABEL_73;
  }

LABEL_77:
  v76 = 0;
  if (v74 > 1)
  {
    goto LABEL_78;
  }

LABEL_74:
  if (!v74)
  {
    if (v76 == BYTE6(v73))
    {
      goto LABEL_84;
    }

    goto LABEL_54;
  }

  if (__OFSUB__(HIDWORD(v71), v71))
  {
    goto LABEL_292;
  }

  if (v76 != HIDWORD(v71) - v71)
  {
    goto LABEL_54;
  }

LABEL_84:
  if (v76 < 1)
  {
    goto LABEL_154;
  }

  if (v226 <= 1)
  {
    if (!v226)
    {
      *(v6 + 788) = v60;
      *(v6 + 790) = BYTE2(v60);
      *(v6 + 791) = BYTE3(v60);
      *(v6 + 792) = v198;
      *(v6 + 793) = BYTE5(v60);
      *(v6 + 794) = BYTE6(v60);
      *(v6 + 795) = HIBYTE(v60);
      *(v6 + 796) = v219;
      *(v6 + 800) = WORD2(v219);
      v83 = v191;
      goto LABEL_97;
    }

    if (v196 < v208)
    {
      goto LABEL_298;
    }

    v87 = __DataStorage._bytes.getter();
    if (v87)
    {
      v88 = v87;
      v89 = __DataStorage._offset.getter();
      if (__OFSUB__(v208, v89))
      {
        goto LABEL_303;
      }

      __s1a = (v208 - v89 + v88);
    }

    else
    {
      __s1a = 0;
    }

    __DataStorage._length.getter();
    i = v221;
    v60 = v212;
    if (v74 != 2)
    {
      if (v74 == 1)
      {
        v6 = (v71 >> 32) - v71;
        if (v71 >> 32 < v71)
        {
          goto LABEL_307;
        }

        v90 = __DataStorage._bytes.getter();
        if (v90)
        {
          v95 = __DataStorage._offset.getter();
          if (__OFSUB__(v71, v95))
          {
            goto LABEL_314;
          }

          v90 += v71 - v95;
        }

        v96 = __DataStorage._length.getter();
        if (v96 >= v6)
        {
          v93 = (v71 >> 32) - v71;
        }

        else
        {
          v93 = v96;
        }

        i = v221;
        v94 = __s1a;
        if (!__s1a)
        {
          goto LABEL_332;
        }

        v6 = v230;
        if (!v90)
        {
          goto LABEL_331;
        }

        goto LABEL_147;
      }

      v94 = __s1a;
      v231 = v71;
      v232 = v73;
      v233 = BYTE2(v73);
      v234 = BYTE3(v73);
      v235 = BYTE4(v73);
      v236 = BYTE5(v73);
      if (!__s1a)
      {
        goto LABEL_333;
      }

LABEL_150:
      v105 = BYTE6(v73);
      v106 = &v231;
LABEL_151:
      v107 = memcmp(v94, v106, v105);
      sub_10006A178(v71, v73);
      if (!v107)
      {
        goto LABEL_156;
      }

LABEL_152:

      goto LABEL_55;
    }

    v6 = *(v71 + 16);
    v101 = *(v71 + 24);
    v90 = __DataStorage._bytes.getter();
    if (v90)
    {
      v102 = __DataStorage._offset.getter();
      if (__OFSUB__(v6, v102))
      {
        goto LABEL_313;
      }

      v90 += v6 - v102;
    }

    v79 = __OFSUB__(v101, v6);
    v103 = v101 - v6;
    if (v79)
    {
      goto LABEL_308;
    }

    v104 = __DataStorage._length.getter();
    if (v104 >= v103)
    {
      v93 = v103;
    }

    else
    {
      v93 = v104;
    }

    v94 = __s1a;
    if (!__s1a)
    {
      goto LABEL_335;
    }

    v6 = v230;
    i = v221;
    if (!v90)
    {
      goto LABEL_334;
    }

    goto LABEL_147;
  }

  if (v226 != 2)
  {
    v83 = v189;
    *(v189 + 6) = 0;
    *v189 = 0;
LABEL_97:
    sub_10019F024(v83, v71, v73, &v231);
    if (v218)
    {
LABEL_274:
    }

    sub_10006A178(v71, v73);
    v218 = 0;
    v6 = v230;
    if (v231)
    {
      goto LABEL_156;
    }

    goto LABEL_152;
  }

  v6 = *(v60 + 16);
  v84 = __DataStorage._bytes.getter();
  if (v84)
  {
    v85 = v84;
    v86 = __DataStorage._offset.getter();
    if (__OFSUB__(v6, v86))
    {
      goto LABEL_302;
    }

    __s1 = (v6 - v86 + v85);
  }

  else
  {
    __s1 = 0;
  }

  __DataStorage._length.getter();
  v6 = v230;
  i = v221;
  v60 = v212;
  if (v74 != 2)
  {
    if (v74 == 1)
    {
      v6 = v71;
      if (v71 >> 32 < v71)
      {
        goto LABEL_305;
      }

      v90 = __DataStorage._bytes.getter();
      if (v90)
      {
        v91 = __DataStorage._offset.getter();
        if (__OFSUB__(v71, v91))
        {
          goto LABEL_312;
        }

        v90 += v71 - v91;
      }

      v92 = __DataStorage._length.getter();
      if (v92 >= (v71 >> 32) - v71)
      {
        v93 = (v71 >> 32) - v71;
      }

      else
      {
        v93 = v92;
      }

      v6 = v230;
      v94 = __s1;
      if (!__s1)
      {
        goto LABEL_337;
      }

      i = v221;
      if (!v90)
      {
        goto LABEL_336;
      }

      goto LABEL_147;
    }

    v94 = __s1;
    v231 = v71;
    v232 = v73;
    v233 = BYTE2(v73);
    v234 = BYTE3(v73);
    v235 = BYTE4(v73);
    v236 = BYTE5(v73);
    if (!__s1)
    {
      goto LABEL_338;
    }

    goto LABEL_150;
  }

  v97 = *(v71 + 16);
  v188 = *(v71 + 24);
  v90 = __DataStorage._bytes.getter();
  if (v90)
  {
    v98 = __DataStorage._offset.getter();
    if (__OFSUB__(v97, v98))
    {
      goto LABEL_311;
    }

    v90 += v97 - v98;
  }

  v79 = __OFSUB__(v188, v97);
  v99 = v188 - v97;
  if (v79)
  {
    goto LABEL_306;
  }

  v100 = __DataStorage._length.getter();
  if (v100 >= v99)
  {
    v93 = v99;
  }

  else
  {
    v93 = v100;
  }

  v94 = __s1;
  if (!__s1)
  {
    goto LABEL_330;
  }

  i = v221;
  if (v90)
  {
LABEL_147:
    if (v94 != v90)
    {
      v105 = v93;
      v106 = v90;
      goto LABEL_151;
    }

LABEL_154:
    v108 = v71;
    v109 = v73;
LABEL_155:
    sub_10006A178(v108, v109);
LABEL_156:
    if ([v68 managedBySP])
    {
      v110 = [v68 rawGPState];
      type metadata accessor for InstanceInfoInternal();
      v58 = v210;
      if (v110 == static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter())
      {
        sub_10006A178(v212, v219);

        i = v221;
      }

      else
      {
        i = v221;
        if ([v68 isGPLocked])
        {
          sub_10006A178(v212, v219);
        }

        else
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v6 + 416) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 416) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            i = v221;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          sub_10006A178(v212, v219);
          v187 = *(v6 + 416);
        }
      }

      goto LABEL_40;
    }

    sub_10006A178(v60, v219);

LABEL_39:
    v58 = v210;
LABEL_40:
    v57 = v58 + 1;
    v10 = v195;
    v38 = v203;
    if (v57 == v192)
    {
      goto LABEL_166;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_330:
  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:
  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  __break(1u);
LABEL_339:
  __break(1u);
LABEL_340:
  __break(1u);
LABEL_341:
  __break(1u);
LABEL_342:
  __break(1u);
  return _swift_continuation_await(v94);
}

uint64_t sub_100290080()
{
  v1 = *(*v0 + 112);
  *(*v0 + 736) = v1;
  if (v1)
  {

    v2 = sub_100290C04;
  }

  else
  {
    v2 = sub_1002901C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002901C4()
{
  v55 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 432);

  v3 = v2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 712);
  if (!v6)
  {

    goto LABEL_19;
  }

  v8 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  *v8 = 136315394;
  v9 = UUID.uuidString.getter();
  v11 = sub_1002FFA0C(v9, v10, &v54);

  *(v8 + 4) = v11;
  *(v8 + 12) = 2080;
  if (v7 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = *((*(v0 + 712) & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_4:
      sub_100108270(v12);
      if (v12 < 0)
      {
        goto LABEL_26;
      }

      v49 = v8;
      v51 = v5;
      v13 = 0;
      v14 = *(v0 + 712) + 32;
      do
      {
        if ((*(v0 + 712) & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(v14 + 8 * v13);
        }

        v16 = v15;
        v17 = [v15 identifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10019F3C0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v22 = _swiftEmptyArrayStorage[2];
        v21 = _swiftEmptyArrayStorage[3];
        if (v22 >= v21 >> 1)
        {
          sub_10019F3C0((v21 > 1), v22 + 1, 1);
        }

        ++v13;
        _swiftEmptyArrayStorage[2] = v22 + 1;
        v23 = &_swiftEmptyArrayStorage[2 * v22];
        v23[4] = v18;
        v23[5] = v20;
      }

      while (v12 != v13);

      v5 = v51;
      v8 = v49;
      goto LABEL_18;
    }
  }

LABEL_18:
  v24 = Array.description.getter();
  v26 = v25;

  v27 = sub_1002FFA0C(v24, v26, &v54);

  *(v8 + 14) = v27;
  _os_log_impl(&_mh_execute_header, v4, v5, "Session %s: Started wired mode with allowed applets: %s", v8, 0x16u);
  swift_arrayDestroy();

LABEL_19:
  v29 = *(v0 + 496);
  v28 = *(v0 + 504);
  v30 = *(v0 + 432);
  v31 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if ((*(v28 + 48))(v30 + v31, 1, v29))
  {
    goto LABEL_22;
  }

  v33 = *(v0 + 480);
  v32 = *(v0 + 488);
  v34 = *(v0 + 472);
  sub_10012DFF8(v30 + v31, *(v0 + 512));
  static DispatchTime.now()();
  v35 = DispatchTime.uptimeNanoseconds.getter();
  (*(v33 + 8))(v32, v34);
  v36 = DispatchTime.uptimeNanoseconds.getter();
  if (v35 < v36)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v37 = *(v0 + 512);
  (*(v37 + *(*(v0 + 496) + 24)))((v35 - v36) / 0x3B9ACA00);
  sub_10012E4DC(v37, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
LABEL_22:
  v52 = *(v0 + 672);
  v53 = *(v0 + 680);
  v38 = *(v0 + 664);
  v50 = *(v0 + 656);
  v39 = *(v0 + 496);
  v40 = *(v0 + 504);
  v41 = *(v0 + 464);
  v47 = *(v0 + 448);
  v48 = *(v0 + 600);
  v42 = *(*(v0 + 432) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(4, 1);
  static DispatchTime.now()();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = 1;
  *(v41 + *(v39 + 20)) = 1;
  v44 = (v41 + *(v39 + 24));
  *v44 = sub_10012E59C;
  v44[1] = v43;
  (*(v40 + 56))(v41, 0, 1, v39);
  swift_beginAccess();
  sub_10012DF88(v41, v30 + v31);
  swift_endAccess();
  v47(0);

  swift_unknownObjectRelease();

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1002907C0()
{

  return _swift_task_switch(sub_1002908E8, 0, 0);
}

uint64_t sub_1002908E8()
{
  v1 = v0[93];
  v2 = v0[56];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100290A20()
{
  v1 = v0[75];

  v0[93] = v0[86];
  v2 = swift_task_alloc();
  v0[94] = v2;
  *v2 = v0;
  v2[1] = sub_1002907C0;

  return sub_1001FF5CC();
}

uint64_t sub_100290AF4(uint64_t a1)
{
  v2 = v1[85];
  v3 = v1[84];
  v4 = v1[83];
  v5 = v1[82];
  v6 = v1[75];
  swift_willThrow();

  v1[93] = v1[87];
  v7 = swift_task_alloc();
  v1[94] = v7;
  *v7 = v1;
  v7[1] = sub_1002907C0;

  return sub_1001FF5CC();
}

uint64_t sub_100290C04(uint64_t a1)
{
  v20 = v1;
  v2 = v1[91];
  v3 = v1[90];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000025, 0x800000010046A540, &v19);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002FFA0C(v7, v8, &v19);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: Nearfield error %s when starting wired mode", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v1[85];
  v11 = v1[84];
  v12 = v1[83];
  v13 = v1[82];
  v14 = v1[75];
  sub_10009591C();
  v15 = swift_allocError();
  *v16 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  v1[93] = v15;
  v17 = swift_task_alloc();
  v1[94] = v17;
  *v17 = v1;
  v17[1] = sub_1002907C0;

  return sub_1001FF5CC();
}

uint64_t sub_100291140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 2120) = v19;
  *(v8 + 2104) = v18;
  *(v8 + 2096) = a8;
  *(v8 + 2088) = a7;
  *(v8 + 2080) = a6;
  *(v8 + 2072) = a5;
  *(v8 + 2064) = a4;
  sub_100068FC4(&unk_100504270, &qword_10040B598);
  *(v8 + 2128) = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Identifier();
  *(v8 + 2136) = v9;
  *(v8 + 2144) = *(v9 - 8);
  *(v8 + 2152) = swift_task_alloc();
  v10 = type metadata accessor for Calendar();
  *(v8 + 2160) = v10;
  *(v8 + 2168) = *(v10 - 8);
  *(v8 + 2176) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v8 + 2184) = v11;
  *(v8 + 2192) = *(v11 - 8);
  *(v8 + 2200) = swift_task_alloc();
  *(v8 + 2208) = swift_task_alloc();
  *(v8 + 2216) = type metadata accessor for PresentmentInfo(0);
  *(v8 + 2224) = swift_task_alloc();
  sub_100068FC4(&qword_100504258, &qword_10040F8A0);
  *(v8 + 2232) = swift_task_alloc();
  v12 = type metadata accessor for DispatchTime();
  *(v8 + 2240) = v12;
  *(v8 + 2248) = *(v12 - 8);
  *(v8 + 2256) = swift_task_alloc();
  v13 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  *(v8 + 2264) = v13;
  *(v8 + 2272) = *(v13 - 8);
  *(v8 + 2280) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v8 + 2288) = v14;
  *(v8 + 2296) = *(v14 - 8);
  *(v8 + 2304) = swift_task_alloc();
  *(v8 + 2312) = swift_task_alloc();
  *(v8 + 2320) = swift_task_alloc();
  *(v8 + 2328) = swift_task_alloc();
  *(v8 + 2336) = swift_task_alloc();
  *(v8 + 2344) = swift_task_alloc();
  v15 = type metadata accessor for StateInternal();
  *(v8 + 2352) = v15;
  *(v8 + 2360) = *(v15 - 8);
  *(v8 + 2368) = swift_task_alloc();

  return _swift_task_switch(sub_100291564, 0, 0);
}

uint64_t sub_100291564(uint64_t a1, uint64_t a2)
{
  v144 = v2;
  v3 = v2[258];
  v4 = *(v3 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24);
  if (v4 >> 62)
  {
    if (v4 >> 62 == 1 || (v4 == 0x8000000000000000 ? (v5 = (*(v3 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8) | *(v3 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16) | *(v3 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState)) == 0) : (v5 = 0), !v5))
    {
      if (qword_1005019D8 != -1)
      {
        goto LABEL_113;
      }

      goto LABEL_8;
    }
  }

  v13 = v2[259];
  v14 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v15 = *(v3 + v14);
  v16 = swift_task_alloc();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v13;

  v17 = 0;
  v18 = sub_10033322C(sub_10012E2D4, v16, v15);

  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_115:

    if (qword_1005019D8 == -1)
    {
LABEL_116:
      v105 = v2[288];
      v106 = v2[287];
      v107 = v2[286];
      v108 = v2[259];
      v109 = type metadata accessor for Logger();
      sub_1000958E4(v109, qword_10051B2C8);
      (*(v106 + 16))(v105, v108, v107);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();
      v112 = os_log_type_enabled(v110, v111);
      v113 = v2[288];
      v114 = v2[287];
      v115 = v2[286];
      if (v112)
      {
        v116 = swift_slowAlloc();
        v143[0] = swift_slowAlloc();
        *v116 = 136315394;
        *(v116 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, v143);
        *(v116 + 12) = 2080;
        v117 = UUID.uuidString.getter();
        v119 = v118;
        (*(v114 + 8))(v113, v115);
        v120 = sub_1002FFA0C(v117, v119, v143);

        *(v116 + 14) = v120;
        _os_log_impl(&_mh_execute_header, v110, v111, "%s: Credential %s not found", v116, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v114 + 8))(v113, v115);
      }

      sub_10009591C();
      v11 = swift_allocError();
      v12 = 1;
      goto LABEL_120;
    }

LABEL_127:
    swift_once();
    goto LABEL_116;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_115;
  }

LABEL_13:
  if ((v18 & 0xC000000000000001) == 0)
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = 0;
      v20 = *(v18 + 32);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_127;
  }

LABEL_125:
  v19 = v17;
  v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v21 = v20;
  v2[297] = v20;
  v22 = v2[296];
  v23 = v2[295];
  v24 = v2[294];

  CredentialInternal.state.getter();
  v25 = (*(v23 + 88))(v22, v24);
  v26 = v2[296];
  v27 = v2[295];
  v28 = v2[294];
  v135 = v21;
  if (v25 != enum case for StateInternal.installed(_:))
  {
    (*(v27 + 8))(v26, v28);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v61 = v2[289];
    v62 = v2[287];
    v63 = v2[286];
    v64 = v2[259];
    v65 = type metadata accessor for Logger();
    sub_1000958E4(v65, qword_10051B2C8);
    (*(v62 + 16))(v61, v64, v63);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    v68 = os_log_type_enabled(v66, v67);
    v69 = v2[289];
    v70 = v2[287];
    v71 = v2[286];
    if (v68)
    {
      v72 = swift_slowAlloc();
      v143[0] = swift_slowAlloc();
      *v72 = 136315394;
      *(v72 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, v143);
      *(v72 + 12) = 2080;
      v73 = UUID.uuidString.getter();
      v75 = v74;
      (*(v70 + 8))(v69, v71);
      v76 = sub_1002FFA0C(v73, v75, v143);

      *(v72 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v66, v67, "%s: Credential %s not installed", v72, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v70 + 8))(v69, v71);
    }

    sub_10009591C();
    v11 = swift_allocError();
    *v77 = 7;
    swift_willThrow();

    goto LABEL_121;
  }

  (*(v27 + 96))(v26, v28);
  v29 = *v26;
  v2[298] = *v26;
  v143[0] = _swiftEmptyArrayStorage;
  if (v29 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2[299] = v30;
  v133 = v2;
  if (!v30)
  {
    v78 = _swiftEmptyArrayStorage;
LABEL_94:
    if (v78 < 0 || (v78 & 0x4000000000000000) != 0)
    {
      v2 = v133;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_97;
      }
    }

    else
    {
      v2 = v133;
      if (*(v78 + 16))
      {
LABEL_97:
        if ((v78 & 0xC000000000000001) != 0)
        {
LABEL_133:
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v78 + 16))
          {
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
          }

          v79 = *(v78 + 32);
        }

        v80 = v79;

        v2[300] = v80;
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v81 = v2[293];
        v82 = v2[287];
        v83 = v2[286];
        v84 = v2[259];
        v85 = v2[258];
        v86 = type metadata accessor for Logger();
        v2[301] = sub_1000958E4(v86, qword_10051B2C8);
        v87 = *(v82 + 16);
        v2[302] = v87;
        v2[303] = (v82 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v87(v81, v84, v83);
        v88 = v85;
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.info.getter();

        v91 = os_log_type_enabled(v89, v90);
        v92 = v2[293];
        v93 = v2[287];
        v94 = v2[286];
        if (v91)
        {
          v95 = swift_slowAlloc();
          v143[0] = swift_slowAlloc();
          *v95 = 136315394;
          v96 = UUID.uuidString.getter();
          v98 = sub_1002FFA0C(v96, v97, v143);

          *(v95 + 4) = v98;
          *(v95 + 12) = 2080;
          v99 = UUID.uuidString.getter();
          v101 = v100;
          v102 = *(v93 + 8);
          v102(v92, v94);
          v103 = sub_1002FFA0C(v99, v101, v143);

          *(v95 + 14) = v103;
          _os_log_impl(&_mh_execute_header, v89, v90, "Session %s: Authorizing credential %s in wired mode", v95, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v102 = *(v93 + 8);
          v102(v92, v94);
        }

        v2[304] = v102;
        v104 = swift_task_alloc();
        v2[305] = v104;
        *v104 = v2;
        v104[1] = sub_1002924C0;

        return sub_1001FDAE0(v135);
      }
    }

    sub_10009591C();
    v11 = swift_allocError();
    *v122 = 5;
    swift_willThrow();

    goto LABEL_121;
  }

  v139 = v19;
  v31 = 0;
  v125 = (v2 + 337);
  v126 = v2 + 351;
  v32 = v2[261];
  v33 = v2[260];
  v17 = v29 & 0xC000000000000001;
  v141 = v29 & 0xFFFFFFFFFFFFFF8;
  v2 = (v32 >> 62);
  v137 = v32;
  v138 = BYTE6(v32);
  v35 = v32 == 0xC000000000000000 && v33 == 0;
  v140 = v35;
  v129 = v33;
  v130 = v29;
  v123 = v33 >> 32;
  v136 = v33;
  v124 = HIDWORD(v33);
  v36 = HIDWORD(v33) - v33;
  v37 = __OFSUB__(HIDWORD(v33), v33);
  v132 = v37;
  v131 = v36;
  v134 = v29 & 0xC000000000000001;
  while (1)
  {
    if (v17)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v31 >= *(v141 + 16))
      {
        goto LABEL_110;
      }

      v38 = *(v29 + 8 * v31 + 32);
    }

    v39 = v38;
    v40 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    v41 = v30;
    v42 = InstanceInfoInternal.instanceAID.getter();
    v44 = v42;
    v45 = v43;
    v46 = v43 >> 62;
    if (v2 == 3)
    {
      v47 = v140;
      if (v43 >> 62 != 3)
      {
        v47 = 0;
      }

      if (v47)
      {
        v48 = 0;
        if (!v42 && v43 == 0xC000000000000000)
        {
          v42 = 0;
          v43 = 0xC000000000000000;
          goto LABEL_65;
        }

LABEL_50:
        if (v46 > 1)
        {
          goto LABEL_55;
        }

        goto LABEL_51;
      }
    }

    else
    {
      if (v2 <= 1)
      {
        v48 = v138;
        if (v2)
        {
          v48 = v131;
          if (v132)
          {
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }
        }

        goto LABEL_50;
      }

      if (v2 == 2)
      {
        v50 = *(v136 + 16);
        v49 = *(v136 + 24);
        v51 = __OFSUB__(v49, v50);
        v48 = v49 - v50;
        if (v51)
        {
          goto LABEL_124;
        }

        goto LABEL_50;
      }
    }

    v48 = 0;
    if (v46 > 1)
    {
LABEL_55:
      if (v46 == 2)
      {
        v53 = *(v42 + 16);
        v52 = *(v42 + 24);
        v51 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v51)
        {
          goto LABEL_112;
        }

        if (v48 == v54)
        {
          goto LABEL_61;
        }
      }

      else if (!v48)
      {
        goto LABEL_65;
      }

      goto LABEL_31;
    }

LABEL_51:
    if (v46)
    {
      if (__OFSUB__(HIDWORD(v42), v42))
      {
        goto LABEL_111;
      }

      if (v48 == HIDWORD(v42) - v42)
      {
LABEL_61:
        if (v48 >= 1)
        {
          if (v2 > 1)
          {
            if (v2 != 2)
            {
              v55 = v125;
              *(v125 + 6) = 0;
              *v125 = 0;
              goto LABEL_76;
            }

            v127 = *(v136 + 24);
            v128 = *(v136 + 16);
            v56 = __DataStorage._bytes.getter();
            if (v56)
            {
              v57 = __DataStorage._offset.getter();
              v58 = v128;
              if (__OFSUB__(v128, v57))
              {
                goto LABEL_135;
              }

              v56 += v128 - v57;
            }

            else
            {
              v58 = v128;
            }

            if (__OFSUB__(v127, v58))
            {
              goto LABEL_132;
            }
          }

          else
          {
            if (!v2)
            {
              *(v133 + 351) = v136;
              *(v133 + 355) = v124;
              *(v133 + 178) = *(&v136 + 5);
              *(v133 + 358) = HIBYTE(v136);
              *(v133 + 359) = v137;
              *(v133 + 363) = WORD2(v137);
              v55 = v126;
LABEL_76:
              result = sub_10019F024(v55, v44, v43, v142);
              if (v139)
              {
                return result;
              }

              sub_10006A178(v44, v45);
              if (!v142[0])
              {
                goto LABEL_84;
              }

LABEL_78:
              v139 = 0;
              v30 = v41;
              v17 = v134;
LABEL_79:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              goto LABEL_32;
            }

            if (v123 < v129)
            {
              __break(1u);
LABEL_132:
              __break(1u);
              goto LABEL_133;
            }

            v56 = __DataStorage._bytes.getter();
            if (v56)
            {
              v59 = __DataStorage._offset.getter();
              if (__OFSUB__(v129, v59))
              {
                goto LABEL_136;
              }

              v56 += v129 - v59;
            }
          }

          __DataStorage._length.getter();
          result = sub_10019F024(v56, v44, v45, v142);
          if (v139)
          {
            return result;
          }

          sub_10006A178(v44, v45);
          v29 = v130;
          if (!v142[0])
          {
LABEL_84:

            v139 = 0;
            v30 = v41;
            v17 = v134;
            goto LABEL_32;
          }

          goto LABEL_78;
        }

LABEL_65:
        sub_10006A178(v42, v43);
        v30 = v41;
        goto LABEL_79;
      }
    }

    else if (v48 == BYTE6(v43))
    {
      goto LABEL_61;
    }

LABEL_31:

    sub_10006A178(v44, v45);
    v30 = v41;
LABEL_32:
    ++v31;
    if (v40 == v30)
    {
      v78 = v143[0];
      v21 = v135;
      goto LABEL_94;
    }
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  swift_once();
LABEL_8:
  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_10051B2C8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempted to enter wired mode in invalid state", v9, 2u);
  }

  sub_10009591C();
  v11 = swift_allocError();
  v12 = 10;
LABEL_120:
  *v10 = v12;
  swift_willThrow();
LABEL_121:
  v2[337] = v11;
  v121 = swift_task_alloc();
  v2[338] = v121;
  *v121 = v2;
  v121[1] = sub_100295AC0;

  return sub_1001FF5CC();
}

uint64_t sub_1002924C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[306] = a1;
  v6[307] = a2;
  v6[308] = a3;
  v6[309] = a4;
  v6[310] = v4;

  if (v4)
  {
    v7 = sub_100295D84;
  }

  else
  {
    v7 = sub_100292610;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100292610()
{
  v39 = v0;
  v1 = v0[307];
  if (v1)
  {
    v2 = v0[297];
    v3 = v1;
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v37 = v0[304];
      v7 = v0[292];
      v8 = v0[286];
      v9 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, &v38);
      *(v9 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v10 = UUID.uuidString.getter();
      v12 = v11;
      v37(v7, v8);
      v13 = sub_1002FFA0C(v10, v12, &v38);

      *(v9 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s; Starting new wired mode handle for credential %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    v14 = v0[309];
    v15 = v0[308];
    v16 = v0[307];
    v17 = v0[306];
    v18 = v15;
    v19 = v14;
    v20 = v3;
    v21 = v17;
    sub_1001FEFA8(v17, v16, v15, v14 | 0x4000000000000000);
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v0[311] = qword_10051B858;
    v22 = swift_task_alloc();
    v0[312] = v22;
    *v22 = v0;
    v22[1] = sub_100292A90;
    v23 = v0[297];

    return sub_100301130(v23);
  }

  else
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, &v38);
      _os_log_impl(&_mh_execute_header, v25, v26, "%s: NFCredentialSession in handle has been invalidated", v27, 0xCu);
      sub_1000752F4(v28);
    }

    v29 = v0[309];
    v30 = v0[308];
    v31 = v0[306];
    v32 = v0[300];
    v33 = v0[297];
    sub_10009591C();
    v34 = swift_allocError();
    *v35 = 9;
    swift_willThrow();

    v0[337] = v34;
    v36 = swift_task_alloc();
    v0[338] = v36;
    *v36 = v0;
    v36[1] = sub_100295AC0;

    return sub_1001FF5CC();
  }
}

uint64_t sub_100292A90()
{
  *(*v1 + 2504) = v0;

  if (v0)
  {
    v2 = sub_100295E6C;
  }

  else
  {
    v2 = sub_100292BD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100292BD0()
{
  v1 = v0[307];
  v0[10] = v0;
  v0[15] = v0 + 256;
  v0[11] = sub_100292D24;
  v2 = swift_continuation_init();
  v0[208] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
  v0[205] = v2;
  v0[201] = _NSConcreteStackBlock;
  v0[202] = 1107296256;
  v0[203] = sub_1001FDA0C;
  v0[204] = &unk_1004CED98;
  [v1 requestSETransceiverWithCompletion:v0 + 201];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100292D24()
{
  v1 = *(*v0 + 112);
  *(*v0 + 2512) = v1;
  if (v1)
  {

    v2 = sub_100295F88;
  }

  else
  {
    v2 = sub_100292E68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100292E68()
{
  v156 = v0;
  v1 = *(v0 + 2048);
  *(v0 + 2520) = v1;
  if (!v1)
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v155[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, v155);
      _os_log_impl(&_mh_execute_header, v15, v16, "%s: Unable to get transceiver", v17, 0xCu);
      sub_1000752F4(v18);
    }

    v19 = *(v0 + 2472);
    v20 = *(v0 + 2464);
    v21 = *(v0 + 2456);
    v22 = *(v0 + 2448);
    v23 = *(v0 + 2400);
    v24 = *(v0 + 2376);
    sub_10009591C();
    v25 = swift_allocError();
    *v26 = 9;
    swift_willThrow();

    goto LABEL_58;
  }

  *(v0 + 2032) = 0;
  v2 = [v1 listAppletsAndRefreshCache:0 outError:v0 + 2032];
  v3 = *(v0 + 2032);
  if (!v2)
  {
    v27 = v3;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v155[0] = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, v155);
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v33 = sub_1002FFA0C(v31, v32, v155);

      *(v30 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s: Nearfield error %s encountered when listing applets", v30, 0x16u);
      swift_arrayDestroy();
    }

    v34 = *(v0 + 2472);
    v35 = *(v0 + 2464);
    v36 = *(v0 + 2456);
    v37 = *(v0 + 2448);
    v38 = *(v0 + 2400);
    v153 = *(v0 + 2376);
    [v1 invalidate];
    sub_10009591C();
    v25 = swift_allocError();
    *v39 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    goto LABEL_58;
  }

  v4 = v2;
  v5 = *(v0 + 2392);
  *(v0 + 2528) = sub_10012E2F8();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 2536) = v6;
  v7 = v3;

  [v1 invalidate];
  v154[0] = _swiftEmptyArrayStorage;
  if (!v5)
  {
    v40 = *(v0 + 2504);
    v41 = _swiftEmptyArrayStorage;
LABEL_20:
    *(v0 + 2544) = v41;
    if (v41 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_22;
      }
    }

    else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      if (sub_1002B3D04(0x554245445F4D4143, 0xEA00000000005F47, *(v0 + 2096), *(v0 + 2104)))
      {
        if (SESInternalVariant())
        {
          v42 = *(v0 + 2104);
          v43 = *(v0 + 2096);
          *(v0 + 2000) = 95;
          *(v0 + 2008) = 0xE100000000000000;
          v44 = swift_task_alloc();
          *(v44 + 16) = v0 + 2000;

          v46 = sub_10029F26C(0x7FFFFFFFFFFFFFFFLL, 1, sub_10029FE24, v44, v43, v42, v45);
          *(v0 + 2552) = v40;

          if (v46[2])
          {

            v47 = static String._fromSubstring(_:)();
            v49 = v48;

            *(v0 + 2560) = sub_10013044C(v47, v49);
            *(v0 + 2568) = v50;
            if (v50 >> 60 != 15)
            {
              v51 = *(v0 + 2456);

              isa = Array._bridgeToObjectiveC()().super.isa;
              *(v0 + 2576) = isa;

              v53 = Data._bridgeToObjectiveC()().super.isa;
              *(v0 + 2584) = v53;
              *(v0 + 144) = v0;
              *(v0 + 152) = sub_100294034;
              v54 = swift_continuation_init();
              *(v0 + 1728) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
              *(v0 + 1704) = v54;
              *(v0 + 1672) = _NSConcreteStackBlock;
              *(v0 + 1680) = 1107296256;
              *(v0 + 1688) = sub_1001E95B0;
              *(v0 + 1696) = &unk_1004CEE10;
              [v51 startWiredModeWithApplets:isa externalAuth:v53 completion:v0 + 1672];

              return _swift_continuation_await(v0 + 144);
            }
          }

          else
          {
          }

          v155[0] = 0;
          v155[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(51);
          v117._object = 0x800000010046A4F0;
          v117._countAndFlagsBits = 0xD000000000000047;
          String.append(_:)(v117);
          v118._countAndFlagsBits = 0xD000000000000031;
          v118._object = 0x8000000100463AD0;
          String.append(_:)(v118);
        }

        return _assertionFailure(_:_:file:line:flags:)();
      }

      v55 = *(v0 + 2064);
      *(v0 + 1736) = 0u;
      *(v0 + 1752) = 0u;
      v56 = &v55[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
      *(v0 + 568) = *&v55[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
      v57 = *(v56 + 4);
      v59 = *(v56 + 1);
      v58 = *(v56 + 2);
      *(v0 + 616) = *(v56 + 3);
      *(v0 + 632) = v57;
      *(v0 + 584) = v59;
      *(v0 + 600) = v58;
      v61 = *(v56 + 6);
      v60 = *(v56 + 7);
      v62 = *(v56 + 5);
      *(v0 + 696) = v56[128];
      *(v0 + 664) = v61;
      *(v0 + 680) = v60;
      *(v0 + 648) = v62;
      if (*(v0 + 696) <= 1u)
      {
        v63 = *(v0 + 656);
        v64 = *(v0 + 648);
        v65 = *(v0 + 632);
        v66 = *(v0 + 616);
        v67 = *(v0 + 600);
        v68 = *(v0 + 584);
        v70 = *(v56 + 6);
        v69 = *(v56 + 7);
        *(v0 + 532) = v70;
        *(v0 + 548) = v69;
        *(v0 + 1432) = v68;
        *(v0 + 1448) = v67;
        *(v0 + 1464) = v66;
        *(v0 + 1480) = v65;
        *(v0 + 1496) = v64;
        *(v0 + 1504) = v63;
        *(v0 + 1512) = v70;
        *(v0 + 1528) = v69;
        sub_10012E344(v0 + 568, v0 + 368);
        sub_10012E3F4(v0 + 584, v0 + 976);
        v71 = *(v0 + 548);
        *(v0 + 500) = *(v0 + 532);
        *(v0 + 516) = v71;
        v72 = audit_token_to_pid((v0 + 500));
        sub_10012E450(v0 + 1432);
        sub_10012E3A0(v0 + 568);
        v73 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
        *(v0 + 2600) = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
        swift_beginAccess();
        v74 = *&v55[v73];

        os_unfair_lock_lock((v74 + 20));
        *(v74 + 16) = 1;
        os_unfair_lock_unlock((v74 + 20));

        v75 = CredentialInternal.friendlyName.getter();
        v77 = v76;
        *(v0 + 2608) = v76;
        v78 = swift_task_alloc();
        *(v0 + 2616) = v78;
        *v78 = v0;
        v78[1] = sub_1002947A0;
        v79 = *(v0 + 2104);
        v80 = *(v0 + 2096);

        return sub_1000B4000(v80, v79, v72, v75, v77);
      }

      sub_10012E344(v0 + 568, v0 + 704);

      sub_10012E3A0(v0 + 568);
      v85 = v55;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v155[0] = v89;
        *v88 = 136315138;
        *(v0 + 208) = *v56;
        v90 = *(v56 + 4);
        v92 = *(v56 + 1);
        v91 = *(v56 + 2);
        *(v0 + 256) = *(v56 + 3);
        *(v0 + 272) = v90;
        *(v0 + 224) = v92;
        *(v0 + 240) = v91;
        v94 = *(v56 + 6);
        v93 = *(v56 + 7);
        v95 = *(v56 + 5);
        *(v0 + 336) = v56[128];
        *(v0 + 304) = v94;
        *(v0 + 320) = v93;
        *(v0 + 288) = v95;
        sub_10012E344(v0 + 208, v0 + 840);
        v96 = sub_10013F33C();
        v98 = v97;
        sub_10012E3A0(v0 + 208);
        v99 = sub_1002FFA0C(v96, v98, v155);

        *(v88 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v86, v87, "Client %s has no pid", v88, 0xCu);
        sub_1000752F4(v89);
      }

      sub_10009591C();
      swift_allocError();
      *v100 = 6;
      swift_willThrow();
      swift_errorRetain();
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v155[0] = v104;
        *v103 = 136315138;
        swift_getErrorValue();
        v105 = Error.localizedDescription.getter();
        v107 = sub_1002FFA0C(v105, v106, v155);

        *(v103 + 4) = v107;
        _os_log_impl(&_mh_execute_header, v101, v102, "Error %s encountered when authorizing in wired mode", v103, 0xCu);
        sub_1000752F4(v104);
      }

      v151 = *(v0 + 2472);
      v108 = *(v0 + 2464);
      v109 = *(v0 + 2456);
      v110 = *(v0 + 2448);
      v111 = *(v0 + 2400);
      v112 = *(v0 + 2376);
      v113 = *(v0 + 2064);
      sub_1000B5374(0);
      v114 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
      swift_beginAccess();
      v115 = *(v113 + v114);

      os_unfair_lock_lock((v115 + 20));
      *(v115 + 16) = 0;
      os_unfair_lock_unlock((v115 + 20));

      v25 = swift_allocError();
      *v116 = 8;
      swift_willThrow();

      swift_unknownObjectRelease();

      sub_1000B2A4C(*(v0 + 1736), *(v0 + 1744));
      goto LABEL_58;
    }

    v119 = *(v0 + 2416);
    v120 = *(v0 + 2320);
    v121 = *(v0 + 2288);
    v122 = *(v0 + 2088);
    v123 = *(v0 + 2080);
    v124 = *(v0 + 2072);

    v119(v120, v124, v121);
    sub_100069E2C(v123, v122);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();
    sub_10006A178(v123, v122);
    v127 = os_log_type_enabled(v125, v126);
    v128 = *(v0 + 2432);
    v129 = *(v0 + 2320);
    v130 = *(v0 + 2288);
    if (v127)
    {
      v152 = *(v0 + 2432);
      v131 = *(v0 + 2088);
      v150 = *(v0 + 2288);
      v132 = *(v0 + 2080);
      v133 = swift_slowAlloc();
      v155[0] = swift_slowAlloc();
      *v133 = 136315650;
      *(v133 + 4) = sub_1002FFA0C(0xD000000000000047, 0x800000010046A4F0, v155);
      *(v133 + 12) = 2080;
      *(v0 + 2056) = sub_100288788(v132, v131);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v134 = BidirectionalCollection<>.joined(separator:)();
      v136 = v135;

      v137 = sub_1002FFA0C(v134, v136, v155);

      *(v133 + 14) = v137;
      *(v133 + 22) = 2080;
      v138 = UUID.uuidString.getter();
      v140 = v139;
      v152(v129, v150);
      v141 = sub_1002FFA0C(v138, v140, v155);

      *(v133 + 24) = v141;
      _os_log_impl(&_mh_execute_header, v125, v126, "%s: Instance AID %s is not found under credential %s", v133, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v128(v129, v130);
    }

    v142 = *(v0 + 2472);
    v143 = *(v0 + 2464);
    v144 = *(v0 + 2456);
    v145 = *(v0 + 2448);
    v146 = *(v0 + 2400);
    v147 = *(v0 + 2376);
    sub_10009591C();
    v25 = swift_allocError();
    *v148 = 5;
    swift_willThrow();
    swift_unknownObjectRelease();

LABEL_58:
    *(v0 + 2696) = v25;
    v149 = swift_task_alloc();
    *(v0 + 2704) = v149;
    *v149 = v0;
    v149[1] = sub_100295AC0;

    return sub_1001FF5CC();
  }

  v8 = *(v0 + 2384);
  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  v10 = *(v0 + 2504);
  v11 = v8 & 0xC000000000000001;
  if ((v8 & 0xC000000000000001) != 0)
  {
    goto LABEL_52;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  for (i = *(v8 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v13 = i;
    v155[0] = i;
    sub_100296DBC(v154, v155, v6);
    if (v10)
    {
      break;
    }

    v10 = *(v0 + 2392);

    if (v10 == 1)
    {
LABEL_19:
      v40 = 0;
      v41 = v154[0];
      goto LABEL_20;
    }

    v81 = (v8 + 40);
    v8 = 1;
    while (1)
    {
      if (v11)
      {
        v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v9 + 16))
        {
          goto LABEL_50;
        }

        v82 = *v81;
      }

      v83 = v82;
      v84 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v155[0] = v82;
      sub_100296DBC(v154, v155, v6);
      v10 = *(v0 + 2392);

      ++v8;
      ++v81;
      if (v84 == v10)
      {
        goto LABEL_19;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }
}

uint64_t sub_100294034()
{
  v1 = *(*v0 + 176);
  *(*v0 + 2592) = v1;
  if (v1)
  {
    v2 = sub_1002960A0;
  }

  else
  {
    v2 = sub_100294170;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100294170()
{
  v1 = *(v0 + 2584);
  v2 = *(v0 + 2576);
  sub_10006A2D0(*(v0 + 2560), *(v0 + 2568));

  v3 = *(v0 + 2552);
  v4 = *(v0 + 2272);
  v5 = *(v0 + 2264);
  v6 = *(v0 + 2064);
  v7 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v4 + 48))(v6 + v7, 1, v5))
  {
    v8 = *(v0 + 2256);
    v9 = *(v0 + 2248);
    v10 = *(v0 + 2240);
    sub_10012DFF8(v6 + v7, *(v0 + 2280));
    static DispatchTime.now()();
    v11 = DispatchTime.uptimeNanoseconds.getter();
    (*(v9 + 8))(v8, v10);
    v12 = DispatchTime.uptimeNanoseconds.getter();
    if (v11 < v12)
    {
      __break(1u);
    }

    v13 = *(v0 + 2280);
    (*(v13 + *(*(v0 + 2264) + 24)))((v11 - v12) / 0x3B9ACA00);
    sub_10012E4DC(v13, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v14 = *(v0 + 2272);
  v15 = *(v0 + 2264);
  v54 = v3;
  v16 = *(v0 + 2232);
  v17 = *(*(v0 + 2064) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(5, 1);
  static DispatchTime.now()();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 2;
  *(v16 + *(v15 + 20)) = 2;
  v19 = (v16 + *(v15 + 24));
  *v19 = sub_10012E59C;
  v19[1] = v18;
  (*(v14 + 56))(v16, 0, 1, v15);
  swift_beginAccess();
  sub_10012DF88(v16, v6 + v7);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  sub_1001FF418((v0 + 1320));
  if (v54)
  {
    v20 = *(v0 + 2472);
    v21 = *(v0 + 2464);
    v22 = *(v0 + 2456);
    v23 = *(v0 + 2448);
    v24 = *(v0 + 2400);
    v25 = *(v0 + 2376);
    (*(v0 + 2432))(*(v0 + 2328), *(v0 + 2288));

    swift_unknownObjectRelease();
    *(v0 + 2696) = v54;
    v26 = swift_task_alloc();
    *(v0 + 2704) = v26;
    *v26 = v0;
    v26[1] = sub_100295AC0;

    return sub_1001FF5CC();
  }

  else
  {
    sub_10012E450(v0 + 1320);
    sub_1001FF418((v0 + 1208));
    *(v0 + 1984) = *(v0 + 1256);

    sub_10012E450(v0 + 1208);
    sub_1001FF418((v0 + 1096));
    *(v0 + 2680) = 0;
    v28 = *(v0 + 2152);
    v29 = *(v0 + 2144);
    v30 = *(v0 + 2136);
    v31 = *(v0 + 2128);
    sub_10012E450(v0 + 1096);
    static Date.now.getter();
    (*(v29 + 104))(v28, enum case for Calendar.Identifier.gregorian(_:), v30);
    Calendar.init(identifier:)();
    (*(v29 + 8))(v28, v30);
    TimeZone.init(abbreviation:)();
    v32 = type metadata accessor for TimeZone();
    v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
    if (v33 == 1)
    {
      __break(1u);
    }

    else
    {
      v36 = *(v0 + 2296);
      v52 = *(v0 + 2288);
      v53 = *(v0 + 2328);
      v37 = *(v0 + 2224);
      v38 = *(v0 + 2216);
      v39 = *(v0 + 2208);
      v40 = *(v0 + 2200);
      v41 = *(v0 + 2192);
      v42 = *(v0 + 2184);
      v43 = *(v0 + 2176);
      v44 = *(v0 + 2168);
      v48 = *(v0 + 2488);
      v49 = *(v0 + 2160);
      v50 = *(v0 + 1168);
      v51 = *(v0 + 1384);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v44 + 8))(v43, v49);
      v45 = *(v41 + 8);
      v45(v39, v42);
      Date.timeIntervalSince1970.getter();
      v47 = v46;
      v45(v40, v42);
      (*(v36 + 32))(v37, v53, v52);
      *(v37 + v38[5]) = 1;
      *(v37 + v38[8]) = *(v0 + 1984);
      *(v37 + v38[7]) = v50;
      *(v37 + v38[6]) = v51;
      *(v37 + v38[9]) = v47 * 1000.0;
      v33 = sub_100295694;
      v34 = v48;
      v35 = 0;
    }

    return _swift_task_switch(v33, v34, v35);
  }
}

uint64_t sub_1002947A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[328] = a1;
  v4[329] = a2;
  v4[330] = v2;

  if (v2)
  {

    v5 = sub_1002967F8;
  }

  else
  {
    v5 = sub_100294940;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100294940()
{
  v38 = v0;
  v1 = *(v0 + 2600);
  v2 = *(v0 + 2064);
  swift_beginAccess();
  v3 = *(v2 + v1);
  os_unfair_lock_lock((v3 + 20));
  LODWORD(v2) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  swift_endAccess();

  v4 = *(v0 + 2544);
  if (v2 == 1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 2648) = v5;
    v6 = *(v0 + 2544);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v7 = *(v6 + 32);
    }

    *(v0 + 2656) = v7;
    v8 = *(v0 + 2456);

    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 2664) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100294EC0;
    v10 = swift_continuation_init();
    *(v0 + 1600) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 1576) = v10;
    *(v0 + 1544) = _NSConcreteStackBlock;
    *(v0 + 1552) = 1107296256;
    *(v0 + 1560) = sub_1001E95B0;
    *(v0 + 1568) = &unk_1004CEDC0;
    [v8 startWiredModeWithApplets:v5.super.isa selectOnStart:v7 externalAuth:isa completion:v0 + 1544];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "End Wired Mode has been called while presenting auth sheet", v13, 2u);
    }

    v14 = *(v0 + 2632);
    v15 = *(v0 + 2624);

    sub_1000B5374(0);
    sub_10009591C();
    swift_allocError();
    *v16 = 10;
    swift_willThrow();
    sub_10006A178(v15, v14);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1002FFA0C(v21, v22, &v37);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error %s encountered when authorizing in wired mode", v19, 0xCu);
      sub_1000752F4(v20);
    }

    v36 = *(v0 + 2472);
    v24 = *(v0 + 2464);
    v25 = *(v0 + 2456);
    v26 = *(v0 + 2448);
    v27 = *(v0 + 2400);
    v28 = *(v0 + 2376);
    v29 = *(v0 + 2064);
    sub_1000B5374(0);
    v30 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v31 = *(v29 + v30);

    os_unfair_lock_lock((v31 + 20));
    *(v31 + 16) = 0;
    os_unfair_lock_unlock((v31 + 20));

    v32 = swift_allocError();
    *v33 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    sub_1000B2A4C(*(v0 + 1736), *(v0 + 1744));
    *(v0 + 2696) = v32;
    v34 = swift_task_alloc();
    *(v0 + 2704) = v34;
    *v34 = v0;
    v34[1] = sub_100295AC0;

    return sub_1001FF5CC();
  }
}

uint64_t sub_100294EC0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 2672) = v1;
  if (v1)
  {
    v2 = sub_100296AC0;
  }

  else
  {
    v2 = sub_100294FFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100294FFC()
{
  v1 = *(v0 + 2656);
  v2 = *(v0 + 2648);
  v3 = *(v0 + 2632);
  v4 = *(v0 + 2624);
  v5 = *(v0 + 2600);
  v6 = *(v0 + 2064);

  sub_1000B5374(1);
  v7 = *(v6 + v5);

  os_unfair_lock_lock((v7 + 20));
  *(v7 + 16) = 0;
  os_unfair_lock_unlock((v7 + 20));
  sub_10006A178(v4, v3);
  sub_1000B2A4C(*(v0 + 1736), *(v0 + 1744));

  v8 = *(v0 + 1760);

  v9 = *(v0 + 2640);
  v10 = *(v0 + 2272);
  v11 = *(v0 + 2264);
  v12 = *(v0 + 2064);
  v13 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v10 + 48))(v12 + v13, 1, v11))
  {
    v14 = *(v0 + 2256);
    v15 = *(v0 + 2248);
    v16 = *(v0 + 2240);
    sub_10012DFF8(v12 + v13, *(v0 + 2280));
    static DispatchTime.now()();
    v17 = DispatchTime.uptimeNanoseconds.getter();
    (*(v15 + 8))(v14, v16);
    v18 = DispatchTime.uptimeNanoseconds.getter();
    if (v17 < v18)
    {
      __break(1u);
    }

    v19 = *(v0 + 2280);
    (*(v19 + *(*(v0 + 2264) + 24)))((v17 - v18) / 0x3B9ACA00);
    sub_10012E4DC(v19, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v20 = *(v0 + 2272);
  v21 = *(v0 + 2264);
  v60 = v9;
  v22 = *(v0 + 2232);
  v23 = *(*(v0 + 2064) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(5, 1);
  static DispatchTime.now()();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = 2;
  *(v22 + *(v21 + 20)) = 2;
  v25 = (v22 + *(v21 + 24));
  *v25 = sub_10012E59C;
  v25[1] = v24;
  (*(v20 + 56))(v22, 0, 1, v21);
  swift_beginAccess();
  sub_10012DF88(v22, v12 + v13);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  sub_1001FF418((v0 + 1320));
  if (v60)
  {
    v26 = *(v0 + 2472);
    v27 = *(v0 + 2464);
    v28 = *(v0 + 2456);
    v29 = *(v0 + 2448);
    v30 = *(v0 + 2400);
    v31 = *(v0 + 2376);
    (*(v0 + 2432))(*(v0 + 2328), *(v0 + 2288));

    swift_unknownObjectRelease();
    *(v0 + 2696) = v60;
    v32 = swift_task_alloc();
    *(v0 + 2704) = v32;
    *v32 = v0;
    v32[1] = sub_100295AC0;

    return sub_1001FF5CC();
  }

  else
  {
    sub_10012E450(v0 + 1320);
    sub_1001FF418((v0 + 1208));
    *(v0 + 1984) = *(v0 + 1256);

    sub_10012E450(v0 + 1208);
    sub_1001FF418((v0 + 1096));
    *(v0 + 2680) = 0;
    v34 = *(v0 + 2152);
    v35 = *(v0 + 2144);
    v36 = *(v0 + 2136);
    v37 = *(v0 + 2128);
    sub_10012E450(v0 + 1096);
    static Date.now.getter();
    (*(v35 + 104))(v34, enum case for Calendar.Identifier.gregorian(_:), v36);
    Calendar.init(identifier:)();
    (*(v35 + 8))(v34, v36);
    TimeZone.init(abbreviation:)();
    v38 = type metadata accessor for TimeZone();
    v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
    if (v39 == 1)
    {
      __break(1u);
    }

    else
    {
      v42 = *(v0 + 2296);
      v58 = *(v0 + 2288);
      v59 = *(v0 + 2328);
      v43 = *(v0 + 2224);
      v44 = *(v0 + 2216);
      v45 = *(v0 + 2208);
      v46 = *(v0 + 2200);
      v47 = *(v0 + 2192);
      v48 = *(v0 + 2184);
      v49 = *(v0 + 2176);
      v50 = *(v0 + 2168);
      v54 = *(v0 + 2488);
      v55 = *(v0 + 2160);
      v56 = *(v0 + 1168);
      v57 = *(v0 + 1384);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v50 + 8))(v49, v55);
      v51 = *(v47 + 8);
      v51(v45, v48);
      Date.timeIntervalSince1970.getter();
      v53 = v52;
      v51(v46, v48);
      (*(v42 + 32))(v43, v59, v58);
      *(v43 + v44[5]) = 1;
      *(v43 + v44[8]) = *(v0 + 1984);
      *(v43 + v44[7]) = v56;
      *(v43 + v44[6]) = v57;
      *(v43 + v44[9]) = v53 * 1000.0;
      v39 = sub_100295694;
      v40 = v54;
      v41 = 0;
    }

    return _swift_task_switch(v39, v40, v41);
  }
}

uint64_t sub_100295694()
{
  v1 = v0[335];
  v2 = sub_10035E904();
  if (v1)
  {
    v0[336] = v1;
    v6 = sub_100295984;
  }

  else
  {
    v3 = v2;
    v4 = v0[278];
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v6 = sub_1002957A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002957A4()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2464);
  v3 = *(v0 + 2456);
  v4 = *(v0 + 2448);
  v5 = *(v0 + 2400);
  v6 = *(v0 + 2376);
  v7 = *(v0 + 2224);
  (*(v0 + 2112))(0);

  swift_unknownObjectRelease();
  sub_10012E4DC(v7, type metadata accessor for PresentmentInfo);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100295984()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2464);
  v3 = *(v0 + 2456);
  v4 = *(v0 + 2448);
  v5 = *(v0 + 2376);
  v6 = *(v0 + 2224);

  swift_unknownObjectRelease();
  sub_10012E4DC(v6, type metadata accessor for PresentmentInfo);
  *(v0 + 2696) = *(v0 + 2688);
  v7 = swift_task_alloc();
  *(v0 + 2704) = v7;
  *v7 = v0;
  v7[1] = sub_100295AC0;

  return sub_1001FF5CC();
}

uint64_t sub_100295AC0()
{

  return _swift_task_switch(sub_100295BE8, 0, 0);
}

uint64_t sub_100295BE8()
{
  v1 = v0[337];
  v2 = v0[264];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100295D84()
{
  v1 = *(v0 + 2376);

  *(v0 + 2696) = *(v0 + 2480);
  v2 = swift_task_alloc();
  *(v0 + 2704) = v2;
  *v2 = v0;
  v2[1] = sub_100295AC0;

  return sub_1001FF5CC();
}

uint64_t sub_100295E6C()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2464);
  v3 = *(v0 + 2456);
  v4 = *(v0 + 2400);
  v5 = *(v0 + 2376);

  *(v0 + 2696) = *(v0 + 2504);
  v6 = swift_task_alloc();
  *(v0 + 2704) = v6;
  *v6 = v0;
  v6[1] = sub_100295AC0;

  return sub_1001FF5CC();
}

uint64_t sub_100295F88(uint64_t a1)
{
  v2 = v1[309];
  v3 = v1[308];
  v4 = v1[307];
  v5 = v1[306];
  v6 = v1[300];
  v7 = v1[297];
  swift_willThrow();

  v1[337] = v1[314];
  v8 = swift_task_alloc();
  v1[338] = v8;
  *v8 = v1;
  v8[1] = sub_100295AC0;

  return sub_1001FF5CC();
}

uint64_t sub_1002960A0(uint64_t a1)
{
  v57 = v1;
  v2 = *(v1 + 2584);
  v3 = *(v1 + 2576);
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 2568);
    v7 = *(v1 + 2560);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v56 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_1002FFA0C(v10, v11, &v56);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "NearField Error %s encountered when authorizing in wired mode -- CAM path", v8, 0xCu);
    sub_1000752F4(v9);

    sub_10006A2D0(v7, v6);
  }

  else
  {
    sub_10006A2D0(*(v1 + 2560), *(v1 + 2568));
  }

  v13 = *(v1 + 2272);
  v14 = *(v1 + 2264);
  v15 = *(v1 + 2064);
  v16 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v13 + 48))(v15 + v16, 1, v14))
  {
    v17 = *(v1 + 2256);
    v18 = *(v1 + 2248);
    v19 = *(v1 + 2240);
    sub_10012DFF8(v15 + v16, *(v1 + 2280));
    static DispatchTime.now()();
    v20 = DispatchTime.uptimeNanoseconds.getter();
    (*(v18 + 8))(v17, v19);
    v21 = DispatchTime.uptimeNanoseconds.getter();
    if (v20 < v21)
    {
      __break(1u);
    }

    v22 = *(v1 + 2280);
    (*(v22 + *(*(v1 + 2264) + 24)))((v20 - v21) / 0x3B9ACA00);
    sub_10012E4DC(v22, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v23 = *(v1 + 2272);
  v24 = *(v1 + 2264);
  v25 = *(v1 + 2232);
  v26 = *(*(v1 + 2064) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(5, 1);
  static DispatchTime.now()();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = 2;
  *(v25 + *(v24 + 20)) = 2;
  v28 = (v25 + *(v24 + 24));
  *v28 = sub_10012E59C;
  v28[1] = v27;
  (*(v23 + 56))(v25, 0, 1, v24);
  swift_beginAccess();
  sub_10012DF88(v25, v15 + v16);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  sub_1001FF418((v1 + 1320));
  sub_10012E450(v1 + 1320);
  sub_1001FF418((v1 + 1208));
  *(v1 + 1984) = *(v1 + 1256);

  sub_10012E450(v1 + 1208);
  sub_1001FF418((v1 + 1096));
  *(v1 + 2680) = 0;
  v29 = *(v1 + 2152);
  v30 = *(v1 + 2144);
  v31 = *(v1 + 2136);
  v32 = *(v1 + 2128);
  sub_10012E450(v1 + 1096);
  static Date.now.getter();
  (*(v30 + 104))(v29, enum case for Calendar.Identifier.gregorian(_:), v31);
  Calendar.init(identifier:)();
  (*(v30 + 8))(v29, v31);
  TimeZone.init(abbreviation:)();
  v33 = type metadata accessor for TimeZone();
  v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
  if (v34 == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = *(v1 + 2296);
    v54 = *(v1 + 2288);
    v55 = *(v1 + 2328);
    v38 = *(v1 + 2224);
    v39 = *(v1 + 2216);
    v40 = *(v1 + 2208);
    v41 = *(v1 + 2200);
    v42 = *(v1 + 2192);
    v43 = *(v1 + 2184);
    v44 = *(v1 + 2176);
    v45 = *(v1 + 2168);
    v50 = *(v1 + 2488);
    v51 = *(v1 + 2160);
    v52 = *(v1 + 1168);
    v53 = *(v1 + 1384);
    Calendar.timeZone.setter();
    Calendar.startOfDay(for:)();
    (*(v45 + 8))(v44, v51);
    v46 = *(v42 + 8);
    v46(v40, v43);
    Date.timeIntervalSince1970.getter();
    v48 = v47;
    v46(v41, v43);
    (*(v37 + 32))(v38, v55, v54);
    *(v38 + v39[5]) = 1;
    *(v38 + v39[8]) = *(v1 + 1984);
    *(v38 + v39[7]) = v52;
    *(v38 + v39[6]) = v53;
    *(v38 + v39[9]) = v48 * 1000.0;
    v34 = sub_100295694;
    v35 = v50;
    v36 = 0;
  }

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_1002967F8()
{
  v22 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v21 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1002FFA0C(v5, v6, &v21);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error %s encountered when authorizing in wired mode", v3, 0xCu);
    sub_1000752F4(v4);
  }

  v20 = *(v0 + 2472);
  v8 = *(v0 + 2464);
  v9 = *(v0 + 2456);
  v10 = *(v0 + 2448);
  v11 = *(v0 + 2400);
  v12 = *(v0 + 2376);
  v13 = *(v0 + 2064);
  sub_1000B5374(0);
  v14 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v15 = *(v13 + v14);

  os_unfair_lock_lock((v15 + 20));
  *(v15 + 16) = 0;
  os_unfair_lock_unlock((v15 + 20));

  sub_10009591C();
  v16 = swift_allocError();
  *v17 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  sub_1000B2A4C(*(v0 + 1736), *(v0 + 1744));
  *(v0 + 2696) = v16;
  v18 = swift_task_alloc();
  *(v0 + 2704) = v18;
  *v18 = v0;
  v18[1] = sub_100295AC0;

  return sub_1001FF5CC();
}

uint64_t sub_100296AC0(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 2664);
  v3 = *(v1 + 2656);
  v4 = *(v1 + 2648);
  v5 = *(v1 + 2632);
  v6 = *(v1 + 2624);
  swift_willThrow();
  sub_10006A178(v6, v5);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_1002FFA0C(v11, v12, &v27);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error %s encountered when authorizing in wired mode", v9, 0xCu);
    sub_1000752F4(v10);
  }

  v26 = *(v1 + 2472);
  v14 = *(v1 + 2464);
  v15 = *(v1 + 2456);
  v16 = *(v1 + 2448);
  v17 = *(v1 + 2400);
  v18 = *(v1 + 2376);
  v19 = *(v1 + 2064);
  sub_1000B5374(0);
  v20 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v21 = *(v19 + v20);

  os_unfair_lock_lock((v21 + 20));
  *(v21 + 16) = 0;
  os_unfair_lock_unlock((v21 + 20));

  sub_10009591C();
  v22 = swift_allocError();
  *v23 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  sub_1000B2A4C(*(v1 + 1736), *(v1 + 1744));
  *(v1 + 2696) = v22;
  v24 = swift_task_alloc();
  *(v1 + 2704) = v24;
  *v24 = v1;
  v24[1] = sub_100295AC0;

  return sub_1001FF5CC();
}

void sub_100296DBC(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >> 62)
  {
    goto LABEL_113;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v58 = v3;
    v59 = v4;
    v57 = a1;
    v5 = 0;
    v60 = v3 & 0xFFFFFFFFFFFFFF8;
    v61 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v61)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v60 + 16))
        {
          goto LABEL_102;
        }

        a1 = *(v3 + 8 * v5 + 32);
      }

      v6 = a1;
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = [a1 identifierAsData];
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      a1 = InstanceInfoInternal.instanceAID.getter();
      v13 = a1;
      v14 = v12;
      v15 = v11 >> 62;
      v16 = v12 >> 62;
      if (v11 >> 62 == 3)
      {
        if (v9)
        {
          v17 = 0;
        }

        else
        {
          v17 = v11 == 0xC000000000000000;
        }

        v18 = 0;
        v19 = v17 && v12 >> 62 == 3;
        if (v19 && !a1 && v12 == 0xC000000000000000)
        {
          sub_10006A178(0, 0xC000000000000000);
          v27 = 0;
          v28 = 0xC000000000000000;
          goto LABEL_45;
        }
      }

      else if (v15)
      {
        if (v15 == 1)
        {
          LODWORD(v18) = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
            goto LABEL_110;
          }

          v18 = v18;
        }

        else
        {
          v21 = *(v9 + 16);
          v20 = *(v9 + 24);
          v22 = __OFSUB__(v20, v21);
          v18 = v20 - v21;
          if (v22)
          {
            goto LABEL_109;
          }
        }
      }

      else
      {
        v18 = BYTE6(v11);
      }

      if (v16 > 1)
      {
        if (v16 != 2)
        {
          if (!v18)
          {
            goto LABEL_43;
          }

LABEL_5:

          sub_10006A178(v13, v14);
          a1 = sub_10006A178(v9, v11);
          goto LABEL_6;
        }

        v24 = a1[2];
        v23 = a1[3];
        v22 = __OFSUB__(v23, v24);
        v25 = v23 - v24;
        if (v22)
        {
          goto LABEL_105;
        }

        if (v18 != v25)
        {
          goto LABEL_5;
        }
      }

      else if (v16)
      {
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_106;
        }

        if (v18 != HIDWORD(a1) - a1)
        {
          goto LABEL_5;
        }
      }

      else if (v18 != BYTE6(v12))
      {
        goto LABEL_5;
      }

      if (v18 < 1)
      {
LABEL_43:
        sub_10006A178(a1, v12);
        v27 = v9;
        v28 = v11;
LABEL_45:
        sub_10006A178(v27, v28);
LABEL_46:
        if ([v6 managedBySP])
        {
          v29 = [v6 rawGPState];
          type metadata accessor for InstanceInfoInternal();
          if (v29 != static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter() && ([v6 isGPLocked] & 1) == 0)
          {
            v30 = v6;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

LABEL_53:
        v31 = 0;
        while (2)
        {
          if (v61)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v31 >= *(v60 + 16))
            {
              goto LABEL_104;
            }

            a1 = *(v3 + 8 * v31 + 32);
          }

          v32 = a1;
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_103;
          }

          v34 = [a1 identifierAsData];
          v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          a1 = InstanceInfoInternal.securityDomainAID.getter();
          v39 = a1;
          v40 = v38;
          v41 = v37 >> 62;
          v42 = v38 >> 62;
          if (v37 >> 62 == 3)
          {
            if (v35)
            {
              v43 = 0;
            }

            else
            {
              v43 = v37 == 0xC000000000000000;
            }

            v44 = 0;
            v45 = v43 && v38 >> 62 == 3;
            if (v45 && !a1 && v38 == 0xC000000000000000)
            {
              sub_10006A178(0, 0xC000000000000000);
              v52 = 0;
              v53 = 0xC000000000000000;
LABEL_93:
              sub_10006A178(v52, v53);
LABEL_94:
              v54 = [v32 rawGPState];
              type metadata accessor for InstanceInfoInternal();
              if (v54 != static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter() && ([v32 isGPLocked] & 1) == 0)
              {
                v55 = v32;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }

              return;
            }

LABEL_79:
            if (v42 <= 1)
            {
LABEL_80:
              if (v42)
              {
                LODWORD(v48) = HIDWORD(a1) - a1;
                if (__OFSUB__(HIDWORD(a1), a1))
                {
                  goto LABEL_108;
                }

                v48 = v48;
              }

              else
              {
                v48 = BYTE6(v38);
              }

              goto LABEL_87;
            }
          }

          else
          {
            if (v41 == 2)
            {
              v47 = *(v35 + 16);
              v46 = *(v35 + 24);
              v22 = __OFSUB__(v46, v47);
              v44 = v46 - v47;
              if (v22)
              {
                goto LABEL_112;
              }

              goto LABEL_79;
            }

            if (v41 == 1)
            {
              LODWORD(v44) = HIDWORD(v35) - v35;
              if (__OFSUB__(HIDWORD(v35), v35))
              {
                goto LABEL_111;
              }

              v44 = v44;
              if (v42 <= 1)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v44 = BYTE6(v37);
              if (v42 <= 1)
              {
                goto LABEL_80;
              }
            }
          }

          if (v42 == 2)
          {
            v50 = a1[2];
            v49 = a1[3];
            v22 = __OFSUB__(v49, v50);
            v48 = v49 - v50;
            if (v22)
            {
              goto LABEL_107;
            }

LABEL_87:
            if (v44 == v48)
            {
              if (v44 < 1)
              {
LABEL_92:
                sub_10006A178(a1, v38);
                v52 = v35;
                v53 = v37;
                goto LABEL_93;
              }

              sub_100069E2C(a1, v38);
              v51 = sub_10008C678(v35, v37, v39, v40);
              sub_10006A178(v35, v37);
              sub_10006A178(v39, v40);
              if (v51)
              {
                goto LABEL_94;
              }

              v3 = v58;
              goto LABEL_56;
            }
          }

          else if (!v44)
          {
            goto LABEL_92;
          }

          sub_10006A178(v39, v40);
          a1 = sub_10006A178(v35, v37);
LABEL_56:
          ++v31;
          if (v33 == v59)
          {
            return;
          }

          continue;
        }
      }

      sub_100069E2C(a1, v12);
      v26 = sub_10008C678(v9, v11, v13, v14);
      sub_10006A178(v9, v11);
      sub_10006A178(v13, v14);
      if (v26)
      {
        v3 = v58;
        goto LABEL_46;
      }

      v3 = v58;
LABEL_6:
      ++v5;
      if (v7 == v59)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
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
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    v56 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v56;
  }
}

id sub_10029770C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  result = [objc_opt_self() currentConnection];
  if (result)
  {
    v13 = result;
    v14 = [result processIdentifier];
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = v4;
    *(v16 + 40) = v14;
    *(v16 + 48) = a1;
    *(v16 + 56) = a2;
    *(v16 + 64) = a3;
    *(v16 + 72) = a4;
    v17 = v4;
    sub_100069E2C(a1, a2);

    sub_1001F9BE8(0, 0, v11, &unk_100413FE0, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002978A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = a8;
  *(v8 + 104) = v12;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 152) = a5;
  *(v8 + 72) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 - 8);
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1002979A0, 0, 0);
}

uint64_t sub_1002979A0(uint64_t a1, uint64_t a2)
{
  v94 = v2;
  v3 = *(v2 + 72);
  v4 = &v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v5 = *&v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  if (v5 >> 62 == 1)
  {
    v7 = *v4;
    v6 = *(v4 + 1);
    v8 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
    v9 = *(v4 + 2);
    if (v6)
    {
      v10 = v6;
      sub_100218E94(v7, v6, v9, v5);
      if (qword_1005019A8 != -1)
      {
        swift_once();
      }

      v11 = *(qword_10051B2C0 + OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor);
      if (v11)
      {
        v12 = *(v2 + 152);
        v13 = v11;
        sub_1001C9F50(v12, v14);
      }

      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000958E4(v15, qword_10051B2C8);
      v16 = v9;
      v17 = v8;
      v18 = v10;
      v19 = v7;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      v92 = v19;
      if (os_log_type_enabled(v20, v21))
      {
        v89 = v18;
        v22 = *(v2 + 120);
        v23 = *(v2 + 128);
        v88 = *(v2 + 112);
        v24 = swift_slowAlloc();
        v90 = v17;
        v25 = swift_slowAlloc();
        v93 = v25;
        *v24 = 136315138;
        CredentialInternal.identifier.getter();
        v26 = UUID.uuidString.getter();
        v27 = v16;
        v29 = v28;
        v30 = v23;
        v18 = v89;
        (*(v22 + 8))(v30, v88);
        v31 = sub_1002FFA0C(v26, v29, &v93);
        v16 = v27;

        *(v24 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v20, v21, "Transceiving to instance of credential %s", v24, 0xCu);
        sub_1000752F4(v25);
        v17 = v90;
      }

      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v2 + 56) = 0;
      v33 = [v18 wiredModeTransceive:isa outError:v2 + 56];

      v34 = *(v2 + 56);
      if (v33)
      {
        v35 = *(v2 + 96);
        v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v35(v36, v38, 0);
        sub_10006A178(v36, v38);
LABEL_45:

        v81 = *(v2 + 8);

        return v81();
      }

      v59 = v18;
      v91 = v16;
      v60 = v34;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v63 = 136315394;
        *(v63 + 4) = sub_1002FFA0C(0xD000000000000014, 0x800000010046A4D0, &v93);
        *(v63 + 12) = 2080;
        swift_getErrorValue();
        v64 = Error.localizedDescription.getter();
        v66 = sub_1002FFA0C(v64, v65, &v93);

        *(v63 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v61, v62, "%s: Nearfield error %s encountered when transceiving in wired mode", v63, 0x16u);
        swift_arrayDestroy();
      }

      sub_10009591C();
      v57 = swift_allocError();
      *v67 = 8;
      swift_willThrow();
    }

    else
    {
      v48 = qword_1005019D8;
      v49 = v7;
      v50 = v9;
      v51 = v8;
      if (v48 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_1000958E4(v52, qword_10051B2C8);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v93 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_1002FFA0C(0xD000000000000014, 0x800000010046A4D0, &v93);
        _os_log_impl(&_mh_execute_header, v53, v54, "%s: NFCredentialSession has been invalidated", v55, 0xCu);
        sub_1000752F4(v56);
      }

      sub_10009591C();
      v57 = swift_allocError();
      *v58 = 9;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
      v3 = *(v2 + 72);
    }

    v39 = type metadata accessor for Logger();
    sub_1000958E4(v39, qword_10051B2C8);
    v40 = v3;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v93 = v44;
      *v43 = 136315138;
      v45 = *(v4 + 3);
      if (v45 >> 62)
      {
        if (v45 >> 62 == 1)
        {
          v46 = 0xE500000000000000;
          v47 = 0x6465726957;
        }

        else
        {
          v68 = (*(v4 + 2) | *v4 | *(v4 + 1)) == 0;
          v69 = v45 == 0x8000000000000000;
          if (v69 && v68)
          {
            v47 = 0x656D6567616E614DLL;
          }

          else
          {
            v47 = 0x64696C61766E49;
          }

          if (v69 && v68)
          {
            v46 = 0xEA0000000000746ELL;
          }

          else
          {
            v46 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v46 = 0xED00006E6F697461;
        v47 = 0x6C756D4564726143;
      }

      v70 = sub_1002FFA0C(v47, v46, &v93);

      *(v43 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v41, v42, "Unexpected state %s while trying to transceive in wired mode", v43, 0xCu);
      sub_1000752F4(v44);
    }

    sub_10009591C();
    v57 = swift_allocError();
    *v71 = 10;
    swift_willThrow();
  }

  *(v2 + 40) = v57;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (!swift_dynamicCast())
  {
    goto LABEL_44;
  }

  v72 = *(v2 + 48);
  if (v72 == 9)
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_1000958E4(v83, qword_10051B2C8);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v93 = v87;
      *v86 = 136315138;
      *(v86 + 4) = sub_1002FFA0C(0xD000000000000014, 0x800000010046A4D0, &v93);
      _os_log_impl(&_mh_execute_header, v84, v85, "%s: Transitioning to management state because of unavailable nearfield resource", v86, 0xCu);
      sub_1000752F4(v87);
    }

    v78 = swift_task_alloc();
    *(v2 + 144) = v78;
    *v78 = v2;
    v79 = sub_1002987B8;
    goto LABEL_53;
  }

  if (v72 != 8)
  {
LABEL_44:
    v80 = *(v2 + 96);

    swift_errorRetain();
    v80(0, 0xF000000000000000, v57);

    goto LABEL_45;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  sub_1000958E4(v73, qword_10051B2C8);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v93 = v77;
    *v76 = 136315138;
    *(v76 + 4) = sub_1002FFA0C(0xD000000000000014, 0x800000010046A4D0, &v93);
    _os_log_impl(&_mh_execute_header, v74, v75, "%s: Transitioning to management state because of nearfield error", v76, 0xCu);
    sub_1000752F4(v77);
  }

  v78 = swift_task_alloc();
  *(v2 + 136) = v78;
  *v78 = v2;
  v79 = sub_1002985AC;
LABEL_53:
  v78[1] = v79;

  return sub_1001FF5CC();
}