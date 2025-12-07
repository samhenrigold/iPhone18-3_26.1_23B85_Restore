uint64_t sub_1000CDFD8()
{
  v2 = *v0;
  v1 = v0[1];
  v38 = *(v0 + 16);
  v3 = v0[3];
  v59 = _swiftEmptySetSingleton;
  v60 = v3;
  v61 = v1;
  v62[0] = v2;
  v37 = v3;
  sub_10000E268(v62, v41, &qword_1005CF7E0, &qword_1004D2CE0);
  sub_10000E268(&v61, v41, &qword_1005CF7E8, &qword_1004D2CE8);
  result = sub_10000E268(&v60, v41, &qword_1005CF7F0, &unk_1004D2CF0);
  v5 = *(v2 + 16);
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = 0;
  v39 = v2 + 32;
  while (v6 < v5)
  {
    while (1)
    {
      v7 = (v39 + 176 * v6);
      v8 = *v7;
      v9 = v7[2];
      v49 = v7[1];
      v50 = v9;
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[6];
      v53 = v7[5];
      v54 = v12;
      v51 = v10;
      v52 = v11;
      v13 = v7[7];
      v14 = v7[8];
      v15 = v7[10];
      v57 = v7[9];
      v58 = v15;
      v55 = v13;
      v56 = v14;
      v48 = v8;
      if (*(v1 + 16))
      {
        v17 = *(&v48 + 1);
        v16 = v48;
        v18 = v49;
        v19 = DWORD2(v49);
        v20 = DWORD1(v53);
        v21 = BYTE8(v53);
        result = sub_100063B5C(v49, DWORD2(v49));
        if (v22)
        {
          break;
        }
      }

LABEL_13:
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_57;
      }

LABEL_14:
      if (v6 == v5)
      {
        goto LABEL_55;
      }

      if (v6 >= v5)
      {
        goto LABEL_56;
      }
    }

    v23 = *(v1 + 56) + 72 * result;
    v43 = *v23;
    v25 = *(v23 + 32);
    v24 = *(v23 + 48);
    v26 = *(v23 + 64);
    v44 = *(v23 + 16);
    v45 = v25;
    v47 = v26;
    v46 = v24;
    sub_10000E08C(&v48, v41);
    sub_100063BD4(&v43, v41);
    v27 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
    result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
    v28 = *result;
    if (!v27)
    {
      if (!*result)
      {
        goto LABEL_17;
      }

LABEL_10:
      LOWORD(v27) = v28 | v27;
      goto LABEL_11;
    }

    if ((v28 & ~v27) != 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    if ((HIWORD(v43) & v27) != 0)
    {
      sub_100063C30(&v43);
      result = sub_10000E0E8(&v48);
      goto LABEL_13;
    }

LABEL_17:
    v41[8] = v56;
    v41[9] = v57;
    v41[10] = v58;
    v41[4] = v52;
    v41[5] = v53;
    v41[6] = v54;
    v41[7] = v55;
    v41[0] = v48;
    v41[1] = v49;
    v41[2] = v50;
    v41[3] = v51;
    v41[13] = v45;
    v41[14] = v46;
    v42 = v47;
    v41[11] = v43;
    v41[12] = v44;
    if ((v38 & 1) == 0)
    {
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_60;
      }

      goto LABEL_40;
    }

    sub_10000E08C(&v48, v40);
    sub_100063BD4(&v43, v40);
    v30 = MailboxName.isInbox.getter(v18, v19);
    sub_100063C30(&v43);
    if ((v30 & 1) != 0 || v44 > 7u || ((1 << v44) & 0xDB) == 0 || (v21 & 1) == 0 && ((BYTE12(v54) & 1) != 0 || DWORD2(v54) < v20))
    {
      result = sub_10000E0E8(&v48);
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_59;
      }

      goto LABEL_40;
    }

    sub_10000E0E8(&v48);
    if (!*(v37 + 16))
    {
      sub_100063CF8(v41);

      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_58;
      }

      goto LABEL_14;
    }

    v31 = sub_100063C84(v16, v17);
    v33 = v32;

    if ((v33 & 1) == 0 || (~*(*(v37 + 56) + 2 * v31) & 0x3FFF) == 0)
    {
      result = sub_100063CF8(v41);
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_58;
      }

      goto LABEL_14;
    }

    v29 = __OFADD__(v6++, 1);
    if (v29)
    {
      goto LABEL_61;
    }

LABEL_40:
    if (!*(*(&v56 + 1) + 16))
    {
      goto LABEL_54;
    }

    v34 = v49;
    v35 = DWORD2(v49);
    if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v52 + 1), v53, 0, 0) & 1) == 0)
    {
      goto LABEL_54;
    }

    swift_bridgeObjectRetain_n();
    v36 = MailboxName.isInbox.getter(v34, v35);

    if (v36)
    {
      goto LABEL_43;
    }

    if (v44 > 3u)
    {
      if (v44 <= 5u && v44 != 4)
      {
        goto LABEL_43;
      }

LABEL_53:

LABEL_54:
      result = sub_100063CF8(v41);
      if (v6 == v5)
      {
        goto LABEL_55;
      }

      continue;
    }

    if (v44 > 1u)
    {
      if (v44 != 2)
      {
        goto LABEL_53;
      }
    }

    else if (v44)
    {
      goto LABEL_53;
    }

LABEL_43:
    sub_100088220(v40, v34, v35);
    sub_100063CF8(v41);

    if (v6 == v5)
    {
LABEL_55:
      sub_100025F40(v62, &qword_1005CF7E0, &qword_1004D2CE0);
      sub_100025F40(&v61, &qword_1005CF7E8, &qword_1004D2CE8);
      sub_100025F40(&v60, &qword_1005CF7F0, &unk_1004D2CF0);
      return v59;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1000CE46C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100026044();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v6 = *(v4 - 1);

      sub_100088220(&v7, v6, v5);

      v4 += 4;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000CE508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CE570(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10002AB18();
  result = sub_1004A5D64();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100088568(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000CE5E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000CEB2C();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100088848(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000CE67C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000CEA84();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100014CEC(v6, *v4);
      sub_100088A40(v7, v6, v5);
      sub_100014D40(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000CE780(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = sub_1004A5D64();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_1000CE800(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000CEE24();
  result = sub_1004A5D64();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_1000CEE7C(v11, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100089774(v8, v5);
      sub_1000CEEE4(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_1000CE960(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000CEAD8();
  result = sub_1004A5D64();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100014B90(v4, v5);
      sub_100089ADC(v6, v5);
      sub_100014BEC(v6);
      v4 += 48;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000CE9EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10000E1AC();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000883C4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1000CEA84()
{
  result = qword_1005CF7F8;
  if (!qword_1005CF7F8)
  {
    result = swift_getWitnessTable("1]\t", &type metadata for OpaquePersistedMessageIdentifier, v0, v1);
    atomic_store(result, &qword_1005CF7F8);
  }

  return result;
}

unint64_t sub_1000CEAD8()
{
  result = qword_1005CF800;
  if (!qword_1005CF800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TaskID, &type metadata for TaskID, v0, v1);
    atomic_store(result, &qword_1005CF800);
  }

  return result;
}

unint64_t sub_1000CEB2C()
{
  result = qword_1005CF808;
  if (!qword_1005CF808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PermanentFlag, &type metadata for PermanentFlag, v0, v1);
    atomic_store(result, &qword_1005CF808);
  }

  return result;
}

unint64_t sub_1000CEB80()
{
  result = qword_1005CF810;
  if (!qword_1005CF810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchRequest.ID, &type metadata for SearchRequest.ID, v0, v1);
    atomic_store(result, &qword_1005CF810);
  }

  return result;
}

unint64_t sub_1000CEBD4()
{
  result = qword_1005CF818;
  if (!qword_1005CF818)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConnectionID, &type metadata for ConnectionID, v0, v1);
    atomic_store(result, &qword_1005CF818);
  }

  return result;
}

uint64_t sub_1000CEC28()
{

  if (*(v0 + 160))
  {
  }

  sub_100020D58(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208));

  return _swift_deallocObject(v0, 280, 7);
}

__n128 sub_1000CED58(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000CED7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000CEDC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CEE24()
{
  result = qword_1005CF830;
  if (!qword_1005CF830)
  {
    v3 = type metadata accessor for MoveAndCopyMessages.CommandID(255);
    result = swift_getWitnessTable("}3\v", v3, v0, v1);
    atomic_store(result, &qword_1005CF830);
  }

  return result;
}

uint64_t sub_1000CEE7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CEEE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1000CEF44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000CEF68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1000CEFB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000CF01C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v6 = result;
  v7 = *v3;
  v8 = *(*v3 + 16);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = v7 + 32;
    if (*(v7 + 32 + 16 * (v8 - 1) + 12) > a3)
    {
      v7 = 0;
      do
      {
        while (1)
        {
          if (__OFSUB__(v9, v7))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v11 = v7 + (v9 - v7) / 2;
          if (__OFADD__(v7, (v9 - v7) / 2))
          {
            goto LABEL_23;
          }

          if (v11 >= v8)
          {
            goto LABEL_24;
          }

          v12 = *(v10 + 16 * v11 + 12);
          if (v12 < a3)
          {
            break;
          }

          if (v12 <= a3)
          {
            return result;
          }

          v9 = v11 - 1;
          if ((v11 - 1) < v7)
          {
            goto LABEL_12;
          }
        }

        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_25;
        }
      }

      while (v9 >= v7);
LABEL_12:
      if (v8 < v7)
      {
        __break(1u);
      }

      else if ((v7 & 0x8000000000000000) == 0)
      {

        sub_1001626C8(v7, v7, v6, a2 | (a3 << 32));
      }

      __break(1u);
      return result;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_26:
    result = sub_100085514(0, v8 + 1, 1, v7);
    v7 = result;
  }

  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_100085514((v13 > 1), v14 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v14 + 1;
  v15 = v7 + 16 * v14;
  *(v15 + 32) = v6;
  *(v15 + 40) = a2;
  *(v15 + 44) = a3;
  *v3 = v7;
  return result;
}

uint64_t sub_1000CF20C(int a1)
{
  v2 = sub_1004A6F44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005CF6A8, &qword_1004D2958);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v14[3] = a1;
  sub_10000C9C0(&qword_1005CF6B0, &qword_1004D2960);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004D2DE0;
  *(v9 + 32) = 0x786F626E497369;
  *(v9 + 40) = 0xE700000000000000;
  *(v9 + 48) = a1 >= 0;
  *(v9 + 72) = &type metadata for Bool;
  *(v9 + 80) = 0x696C696269736976;
  *(v9 + 88) = 0xEA00000000007974;
  *(v9 + 96) = (a1 & 0x40000000) != 0;
  *(v9 + 120) = &_s11UserVisibleON;
  *(v9 + 128) = 0xD000000000000010;
  *(v9 + 136) = 0x80000001004AA1E0;
  *(v9 + 144) = (a1 & 0x20000000) == 0;
  *(v9 + 168) = &type metadata for Bool;
  strcpy((v9 + 176), "userPriority");
  *(v9 + 189) = 0;
  *(v9 + 190) = -5120;
  *(v9 + 192) = (a1 >> 14) & 0x3FFF;
  *(v9 + 216) = &_s12PriorityInfoV5OrderVN;
  *(v9 + 224) = 0xD000000000000012;
  *(v9 + 232) = 0x80000001004AA200;
  *(v9 + 264) = &_s12PriorityInfoV5OrderVN;
  *(v9 + 240) = a1 & 0x3FFF;
  v10 = enum case for Mirror.DisplayStyle.struct(_:);
  v11 = sub_1004A6F34();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  return sub_1004A6F54();
}

unint64_t sub_1000CF500()
{
  result = qword_1005CF838;
  if (!qword_1005CF838)
  {
    result = swift_getWitnessTable("\t?\v", &_s15MailboxPriorityVN, v0, v1);
    atomic_store(result, &qword_1005CF838);
  }

  return result;
}

void sub_1000CF554(uint64_t a1, uint64_t a2, char **a3)
{
  v5 = a3 + 2;
  v6 = a3[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_100141960(v6);
  }

  v7 = *(a2 + 16);
  *v5 = v6;
  v33 = v7;
  if (!v7)
  {
    return;
  }

  v8 = 0;
  v32 = a2 + 32;
  do
  {
    v9 = v6 + 32;
    while (1)
    {
      if (v8 >= *(a1 + 16))
      {
        goto LABEL_35;
      }

      v10 = a1 + 32 + 16 * v8;
      v11 = *v10;
      v12 = *(v32 + 4 * v8);
      v13 = *(v10 + 8);
      ++v8;
      v14 = a3[1];
      v15 = (v14 + 32);
      v16 = *(v14 + 2);
      if (*a3)
      {
        break;
      }

      if (!v16)
      {
LABEL_28:
        v28 = 0;
        goto LABEL_30;
      }

      v20 = 0;
      while (1)
      {
        v21 = (v15 + 16 * v20);
        if ((v21[2] | (v21[2] << 32)) == (v13 | (v13 << 32)))
        {
          v22 = *v21;
          v23 = *(*v21 + 16);
          if (v23 == *(v11 + 16))
          {
            break;
          }
        }

LABEL_13:
        if (++v20 == v16)
        {
          goto LABEL_28;
        }
      }

      if (v23)
      {
        v24 = v22 == v11;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        v25 = (v22 + 32);
        v26 = (v11 + 32);
        while (v23)
        {
          if (*v25 != *v26)
          {
            goto LABEL_13;
          }

          ++v25;
          ++v26;
          if (!--v23)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

LABEL_24:

LABEL_25:
      if (v20 >= *(v6 + 2))
      {
        goto LABEL_37;
      }

      v27 = *&v9[4 * v20];

      *&v9[4 * v20] = v27;
      *v5 = v6;
      if (v8 >= v33)
      {
        return;
      }
    }

    v17 = sub_10015C0B4(v11, v13, v15, v16, *a3 + 2, (*a3 + 32));
    if ((v19 & 1) == 0)
    {
      v20 = v17;

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    v28 = v18;
LABEL_30:

    sub_100187EA0(v29, v13, v28);
    a3[2] = v6;
    v31 = *(v6 + 2);
    v30 = *(v6 + 3);
    if (v31 >= v30 >> 1)
    {
      sub_100091BA8((v30 > 1), v31 + 1, 1);
    }

    v6 = *v5;
    *(v6 + 2) = v31 + 1;
    *&v6[4 * v31 + 32] = v12;
    *v5 = v6;
  }

  while (v8 < v33);
}

char *sub_1000CF79C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if ((a4 & 1) == 0)
  {
    if (a7)
    {
      return sub_10018A560(_swiftEmptyArrayStorage);
    }

    v72 = MailboxName.inbox.unsafeMutableAddressor();
    if ((sub_100011B00(*v72, *(v72 + 2), a6) & 1) == 0)
    {
      return sub_10018A560(_swiftEmptyArrayStorage);
    }

    sub_10000C9C0(&qword_1005CF000, &qword_1004D1EE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004CEAA0;
    v74 = *(v72 + 2);
    *(inited + 32) = *v72;
    *(inited + 40) = v74;
    *(inited + 44) = 1879048191;

    v75 = sub_10018A560(inited);
    swift_setDeallocating();
    sub_1000D03F4(inited + 32);
    return v75;
  }

  v11 = _swiftEmptyArrayStorage;
  v12 = sub_10018A560(_swiftEmptyArrayStorage);
  v14 = v13;
  v16 = v15;
  v17 = v12;
  v181 = v12;
  v182 = v13;
  v183 = v15;
  v179 = _swiftEmptyArrayStorage;
  v180 = _swiftEmptyArrayStorage;
  v178 = _swiftEmptyArrayStorage;
  v175 = sub_10018A560(_swiftEmptyArrayStorage);
  v176 = v18;
  v177 = v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = a1 + 32;
    v153 = a1 + 32;
    v155 = a6;
    v151 = *(a1 + 16);
    v152 = a8;
    while (1)
    {
      v23 = (v22 + 176 * v21);
      v24 = *v23;
      v25 = v23[2];
      v164[1] = v23[1];
      v164[2] = v25;
      v164[0] = v24;
      v26 = v23[3];
      v27 = v23[4];
      v28 = v23[6];
      v165 = v23[5];
      v166 = v28;
      v164[3] = v26;
      v164[4] = v27;
      v29 = v23[7];
      v30 = v23[8];
      v31 = v23[10];
      v169 = v23[9];
      v170 = v31;
      v167 = v29;
      v168 = v30;
      memmove(&__dst, v23, 0xB0uLL);
      v32 = v172;
      v160 = __dst;
      v33 = v173;
      v34 = v174;
      if (sub_100011B00(v173, v174, a6))
      {
        break;
      }

      sub_10000E08C(v164, v163);
      sub_10000E0E8(&__dst);
LABEL_5:
      if (++v21 == v20)
      {
        v77 = v181;
        v14 = v182;
        v16 = v183;
        v11 = v180;
        goto LABEL_76;
      }
    }

    sub_10000E08C(v164, v163);

    v35 = MailboxName.inbox.unsafeMutableAddressor();
    if ((v34 | (v34 << 32)) == (v35[2] | (v35[2] << 32)))
    {
      v36 = *v35;
      v37 = *(v33 + 16);
      if (v37 != *(*v35 + 16))
      {

        if (v21 < 0x10000)
        {
          v39 = 0;
          if (v21 >= 0x4000)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }

        goto LABEL_68;
      }

      if (!v37 || v33 == v36)
      {
LABEL_14:

        if (v21 >> 16)
        {
          v39 = 1;
          goto LABEL_22;
        }

        v39 = 1;
        if (v21 >> 14)
        {
          goto LABEL_22;
        }

LABEL_25:
        v40 = v21;
        if (*(a8 + 16))
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }

      v38 = 32;
      while (*(v33 + v38) == *(v36 + v38))
      {
        ++v38;
        if (!--v37)
        {
          goto LABEL_14;
        }
      }
    }

    if (!(v21 >> 16))
    {
      v39 = 0;
      if (v21 >> 14)
      {
LABEL_22:
        v40 = 0x3FFF;
        if (*(a8 + 16))
        {
LABEL_23:
          v41 = a8;
          v42 = v40;
          v43 = v39;
          v44 = sub_100063C84(v160, v32);
          if (v45)
          {
            v46 = *(*(v41 + 56) + 2 * v44);
            v47 = v46 < 0;
            v48 = v46 & 0x3FFF;
          }

          else
          {
            v47 = 1;
            v48 = 0x3FFF;
          }

          v49 = a5;
          v39 = v43;
          v40 = v42;
LABEL_29:
          v50 = v167;
          v51 = *(&v167 + 1);
          v52 = v168;
          if ((BYTE8(v165) & 1) == 0 && ((BYTE12(v166) & 1) != 0 || DWORD2(v166) < DWORD1(v165)))
          {
            if (!v39)
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (!v49 || !*(v49 + 16) || (v53 = v33, v54 = v34, v55 = v34, v56 = v39, v57 = v40, v58 = v33, v59 = v47, v60 = sub_100063B5C(v53, v54), v47 = v59, v33 = v58, v40 = v57, v39 = v56, v34 = v55, (v61 & 1) == 0) || (v62 = *(a5 + 56) + 72 * v60, (*(v62 + 65) & 1) != 0) || (*(v62 + 64) & 1) != 0 || (v50 != HIDWORD(*(v62 + 32)) ? (v63 = 1) : (v63 = v52), (v63 & 1) == 0 && v51 >= *(v62 + 56)))
            {
              if (v39)
              {
                if (v47)
                {
                  v64 = 1610612736;
                }

                else
                {
                  v64 = 0x20000000;
                }

LABEL_56:
                v20 = v151;
                a8 = v152;
                v68 = v64 | (v48 << 14) | v40;

                v163[0] = 0;
                v67 = v68;
                goto LABEL_57;
              }

              if (v47)
              {
                v65 = -536870912;
              }

              else
              {
                v65 = -1610612736;
              }

              v66 = v65 | (v48 << 14) | v40;
              v20 = v151;
              a8 = v152;
              if (!v47)
              {
                goto LABEL_67;
              }

              if (v48 == 0x3FFF)
              {
                v163[0] = 0;
                v67 = v66;
LABEL_57:
                sub_1001864B8(v67, v33, v34);
                sub_10000E0E8(&__dst);
LABEL_66:
                v22 = v153;
                a6 = v155;
                goto LABEL_5;
              }

              v69 = v33;
LABEL_65:
              sub_1000CF01C(v69, v34, v66);
              sub_10000E0E8(&__dst);

              goto LABEL_66;
            }

            if ((v39 & 1) == 0)
            {
LABEL_60:
              if (v47)
              {
                v70 = -1073741824;
              }

              else
              {
                v70 = 0x80000000;
              }

              v66 = v70 | (v48 << 14) | v40;
              v20 = v151;
              a8 = v152;
              if (!v47)
              {
LABEL_67:
                v22 = v153;

                sub_1000CF01C(v71, v34, v66);
                sub_10000E0E8(&__dst);

                a6 = v155;
                goto LABEL_5;
              }

              goto LABEL_65;
            }
          }

          if (v47)
          {
            v64 = 0x40000000;
          }

          else
          {
            v64 = 0;
          }

          goto LABEL_56;
        }

LABEL_26:
        v47 = 1;
        v48 = 0x3FFF;
        v49 = a5;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

LABEL_68:
    v39 = 0;
    goto LABEL_22;
  }

  v77 = v17;
LABEL_76:
  __dst = v77;
  v172 = v14;

  v161 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_100141960(v16);
  }

  v78 = 0;
  v79 = v11[2];
LABEL_79:
  v80 = __dst;
  v158 = v172;
  v81 = v172 + 32;
  while (v78 != v79)
  {
    if (v78 >= v11[2])
    {
      goto LABEL_171;
    }

    v82 = &v11[2 * v78 + 4];
    v83 = *v82;
    ++v78;
    v84 = *(v82 + 8);
    v85 = *(v82 + 12);
    v86 = *(v158 + 16);
    if (v80)
    {
      v87 = sub_10015C0B4(v83, v84, v81, v86, v80 + 2, (v80 + 32));
      if (v89)
      {
        v96 = v88;
LABEL_102:

        sub_100187EA0(v97, v84, v96);
        *&v164[0] = v161;
        v99 = *(v161 + 2);
        v98 = *(v161 + 3);
        if (v99 >= v98 >> 1)
        {
          sub_100091BA8((v98 > 1), v99 + 1, 1);

          v161 = *&v164[0];
        }

        else
        {
        }

        *(v161 + 2) = v99 + 1;
        *&v161[4 * v99 + 32] = v85;
        goto LABEL_79;
      }
    }

    else
    {
      if (!v86)
      {
LABEL_101:
        v96 = 0;
        goto LABEL_102;
      }

      v87 = 0;
      while (1)
      {
        v90 = (v81 + 16 * v87);
        if ((v90[2] | (v90[2] << 32)) == (v84 | (v84 << 32)))
        {
          v91 = *v90;
          v92 = *(*v90 + 16);
          if (v92 == *(v83 + 16))
          {
            break;
          }
        }

LABEL_87:
        if (++v87 == v86)
        {
          goto LABEL_101;
        }
      }

      if (v92)
      {
        v93 = v91 == v83;
      }

      else
      {
        v93 = 1;
      }

      if (!v93)
      {
        v94 = (v91 + 32);
        v95 = (v83 + 32);
        while (v92)
        {
          if (*v94 != *v95)
          {
            goto LABEL_87;
          }

          ++v94;
          ++v95;
          if (!--v92)
          {
            goto LABEL_98;
          }
        }

        __break(1u);
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }
    }

LABEL_98:
    if ((v87 & 0x8000000000000000) != 0)
    {
      goto LABEL_172;
    }

    if (v87 >= *(v161 + 2))
    {
      goto LABEL_173;
    }
  }

  v100 = v179;
  __dst = v80;
  v172 = v158;

  v154 = v100;

  v156 = v161;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v156 = sub_100141960(v161);
  }

  v101 = 0;
  v102 = v154[2];
LABEL_109:
  v103 = __dst;
  v104 = v172;
  v105 = v172 + 32;
  while (v101 != v102)
  {
    if (v101 >= v154[2])
    {
      goto LABEL_174;
    }

    v106 = &v154[2 * v101 + 4];
    v107 = *v106;
    ++v101;
    v108 = *(v106 + 8);
    v109 = *(v106 + 12);
    v110 = *(v104 + 16);
    if (v103)
    {
      v111 = sub_10015C0B4(*v106, *(v106 + 8), v105, v110, v103 + 2, (v103 + 32));
      if (v113)
      {
        v120 = v112;
LABEL_132:

        sub_100187EA0(v121, v108, v120);
        *&v164[0] = v156;
        v123 = *(v156 + 2);
        v122 = *(v156 + 3);
        if (v123 >= v122 >> 1)
        {
          sub_100091BA8((v122 > 1), v123 + 1, 1);

          v156 = *&v164[0];
        }

        else
        {
        }

        *(v156 + 2) = v123 + 1;
        *&v156[4 * v123 + 32] = v109;
        goto LABEL_109;
      }
    }

    else
    {
      if (!v110)
      {
LABEL_131:
        v120 = 0;
        goto LABEL_132;
      }

      v111 = 0;
      while (1)
      {
        v114 = (v105 + 16 * v111);
        if ((v114[2] | (v114[2] << 32)) == (v108 | (v108 << 32)))
        {
          v115 = *v114;
          v116 = *(*v114 + 16);
          if (v116 == *(v107 + 16))
          {
            break;
          }
        }

LABEL_117:
        if (++v111 == v110)
        {
          goto LABEL_131;
        }
      }

      if (v116)
      {
        v117 = v115 == v107;
      }

      else
      {
        v117 = 1;
      }

      if (!v117)
      {
        v118 = (v115 + 32);
        v119 = (v107 + 32);
        while (v116)
        {
          if (*v118 != *v119)
          {
            goto LABEL_117;
          }

          ++v118;
          ++v119;
          if (!--v116)
          {
            goto LABEL_128;
          }
        }

        goto LABEL_169;
      }
    }

LABEL_128:
    if ((v111 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    if (v111 >= *(v156 + 2))
    {
      goto LABEL_176;
    }
  }

  v124 = v178;

  v125 = v156;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v125 = sub_100141960(v156);
  }

  v126 = 0;
  v127 = v124[2];
  v159 = v124;
  v162 = v124 + 4;
  while (2)
  {
    v129 = __dst;
    v128 = v172;
    v130 = v172 + 32;
    while (1)
    {
      if (v126 == v127)
      {

        v149 = v176;
        v150 = v177;
        v173 = v125;

        sub_1000CF554(v149, v150, &__dst);

        return __dst;
      }

      if (v126 >= v124[2])
      {
        goto LABEL_177;
      }

      v131 = &v162[2 * v126];
      v132 = *v131;
      ++v126;
      v133 = *(v131 + 2);
      v134 = *(v131 + 3);
      v135 = *(v128 + 16);
      if (!v129)
      {
        break;
      }

      v136 = sub_10015C0B4(*v131, *(v131 + 2), v130, v135, v129 + 2, (v129 + 32));
      if (v138)
      {
        v145 = v137;
        goto LABEL_163;
      }

      v124 = v159;
LABEL_158:
      if ((v136 & 0x8000000000000000) != 0)
      {
        goto LABEL_178;
      }

      if (v136 >= *(v125 + 2))
      {
        goto LABEL_179;
      }
    }

    if (!v135)
    {
LABEL_161:
      v145 = 0;
LABEL_163:

      sub_100187EA0(v146, v133, v145);
      *&v164[0] = v125;
      v148 = *(v125 + 2);
      v147 = *(v125 + 3);
      if (v148 >= v147 >> 1)
      {
        sub_100091BA8((v147 > 1), v148 + 1, 1);

        v125 = *&v164[0];
      }

      else
      {
      }

      v124 = v159;
      *(v125 + 2) = v148 + 1;
      *&v125[4 * v148 + 32] = v134;
      continue;
    }

    break;
  }

  v136 = 0;
  while (1)
  {
    v139 = (v130 + 16 * v136);
    if ((v139[2] | (v139[2] << 32)) == (v133 | (v133 << 32)))
    {
      v140 = *v139;
      v141 = *(*v139 + 16);
      if (v141 == *(v132 + 16))
      {
        break;
      }
    }

LABEL_147:
    if (++v136 == v135)
    {
      goto LABEL_161;
    }
  }

  if (v141)
  {
    v142 = v140 == v132;
  }

  else
  {
    v142 = 1;
  }

  if (v142)
  {
    goto LABEL_158;
  }

  v143 = (v140 + 32);
  v144 = (v132 + 32);
  while (v141)
  {
    if (*v143 != *v144)
    {
      goto LABEL_147;
    }

    ++v143;
    ++v144;
    if (!--v141)
    {
      goto LABEL_158;
    }
  }

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
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000D03F4(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CF008, &qword_1004D1EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D0488(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for PendingServerResponses(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[12];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for PendingPersistenceUpdates(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v13 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[15];
    goto LABEL_13;
  }

  v14 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[16];
    goto LABEL_13;
  }

  v16 = _s15MissingMessagesOMa(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[17];

  return v17(v18, a2, v16);
}

uint64_t sub_1000D06B0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PendingServerResponses(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for PendingPersistenceUpdates(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v13 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[15];
    goto LABEL_11;
  }

  v14 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[16];
    goto LABEL_11;
  }

  v16 = _s15MissingMessagesOMa(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[17];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for MailboxSyncState(uint64_t a1)
{
  result = qword_1005CF898;
  if (!qword_1005CF898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D0910(uint64_t a1)
{
  sub_1000576D4(319, &qword_1005CD840, &type metadata for UID);
  if (v1 <= 0x3F)
  {
    sub_1000576D4(319, &qword_1005CF8A8, &type metadata for UIDValidity);
    if (v2 <= 0x3F)
    {
      sub_1000D0B14(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PendingServerResponses(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PendingPersistenceUpdates(319);
          if (v5 <= 0x3F)
          {
            sub_1000D0B70(319);
            if (v6 <= 0x3F)
            {
              sub_1000D0BD4(319, &qword_1005CF8C0, type metadata accessor for MessageBatches);
              if (v7 <= 0x3F)
              {
                sub_1000D0BD4(319, &qword_1005CF8C8, type metadata accessor for NewestMessages);
                if (v8 <= 0x3F)
                {
                  _s15MissingMessagesOMa(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1000576D4(319, &unk_1005CF8D0, &type metadata for MailboxSpecificAppendLimit);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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
}

void sub_1000D0B14(uint64_t a1)
{
  if (!qword_1005CF8B0)
  {
    sub_1000CEA84();
    v1 = sub_1004A5DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CF8B0);
    }
  }
}

void sub_1000D0B70(uint64_t a1)
{
  if (!qword_1005CF8B8)
  {
    sub_1000CEA84();
    v1 = sub_1004A5524();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CF8B8);
    }
  }
}

void sub_1000D0BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004A6374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MailboxSyncState.HighestModificationSequence(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MailboxSyncState.HighestModificationSequence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000D0CC4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1000D0CDC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1000D0D04(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 2;
  }

  v4 = a1;
  result = sub_1000D3670(&v4, a2, &v5);
  if (!v2)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D0D48()
{
  v1 = 0;
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v2 + 56;
  v6 = v3 + 56;
  v7 = v4 + 56;
  v8 = &off_1005986B0;
  while (*(v2 + 16))
  {
    v9 = v8;
    v10 = *(v8 + v1 + 32);
    sub_1004A6E94();
    sub_1004A6EB4(v10);
    v11 = sub_1004A6F14();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      break;
    }

    ++v1;
    v14 = ~v12;
    while (*(*(v2 + 48) + v13) != v10)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        return 1;
      }
    }

    if (*(v3 + 16))
    {
      sub_1004A6E94();
      sub_1004A6EB4(v10);
      v15 = sub_1004A6F14();
      v16 = -1 << *(v3 + 32);
      v17 = v15 & ~v16;
      if ((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(v3 + 48) + v17) != v10)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 1;
      }
    }

LABEL_13:
    if (sub_100167D14(v2, v3))
    {
      if (*(v4 + 16))
      {
        sub_1004A6E94();
        sub_1004A6EB4(v10);
        v19 = sub_1004A6F14();
        v20 = -1 << *(v4 + 32);
        v21 = v19 & ~v20;
        if ((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          while (*(*(v4 + 48) + v21) != v10)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          return 1;
        }
      }
    }

LABEL_19:
    v8 = v9;
    if (v1 == 7)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1000D0F5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100092008(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_1004A6554();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v10 >= v11 >> 1)
      {
        sub_100092008((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v10];
      v12[4] = v22;
      v12[5] = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_100020944(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_100020944(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1000D1184(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = *(a1 + 48);
    v12 = *(v11 + v10);
    sub_10013FC9C(*(v11 + v10));
    sub_100088568(&v13, v12);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000D1280()
{
  v1 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  if (sub_100014D94() & 1) == 0 || (sub_100014D94() & 1) != 0 || (sub_100167D14(v8, v7) & 1) != 0 && (sub_100014D94())
  {
    goto LABEL_3;
  }

  v11 = type metadata accessor for MailboxSyncState(0);
  sub_1000D4DB4(v0 + *(v11 + 68), v6, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
LABEL_13:
    v9 = sub_1000D0D48() ^ 1;
    return v9 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1000D4E84(v6, _s15MissingMessagesOMa);
    goto LABEL_13;
  }

  sub_1000D4E1C(v6, v3, _s15MissingMessagesO10IncompleteVMa);
  v13 = sub_1000E666C();
  v15 = v14;
  sub_1000D4E84(v3, _s15MissingMessagesO10IncompleteVMa);
  if ((v15 & 1) != 0 || !v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  v9 = 0;
  return v9 & 1;
}

double sub_1000D1464@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MailboxSyncState(0);
  v7 = v6[15];
  v8 = type metadata accessor for MessageBatches(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = v6[16];
  v10 = type metadata accessor for NewestMessages(0);
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  v11 = a3 + v6[18];
  *v11 = 0;
  *(v11 + 8) = 256;
  v12 = (a3 + v6[19]);
  *v12 = *MonotonicTime.bootTime.unsafeMutableAddressor();
  v12[1] = 0;
  *a3 = *(a1 + 24);
  *(a3 + 12) = *(a1 + 52);
  *(a3 + 8) = *(a1 + 48);
  *(a3 + 20) = *(a1 + 60);
  *(a3 + 16) = *(a1 + 56);
  if (*(a1 + 73) & 1) != 0 || (*(a1 + 72))
  {
    goto LABEL_6;
  }

  v13 = *(a1 + 64);
  if (*(a2 + 2))
  {
    if (*(a2 + 2) == 1)
    {
      *(a3 + 24) = v13;
      v14 = 1;
LABEL_7:
      *(a3 + 32) = v14;
      sub_100103430(a3 + v6[12]);
      goto LABEL_8;
    }

LABEL_6:
    *(a3 + 24) = 0;
    v14 = 2;
    goto LABEL_7;
  }

  *(a3 + 24) = v13;
  *(a3 + 32) = 0;
  sub_10010330C(a3 + v6[12]);
LABEL_8:
  *(a3 + 152) = _swiftEmptySetSingleton;
  *(a3 + 160) = _swiftEmptySetSingleton;
  *(a3 + 168) = _swiftEmptySetSingleton;
  v15 = *(a1 + 40);
  if (v15)
  {
  }

  else
  {
    sub_1000D0F5C(*(a1 + 16));
    v15 = sub_1000CE5E4(v16);
  }

  sub_1000CB970(a1);

  sub_1000935E4(v17, v28);
  v18 = v28[2];
  *(a3 + 88) = v28[3];
  v19 = v28[5];
  *(a3 + 104) = v28[4];
  *(a3 + 120) = v19;
  *(a3 + 136) = v29;
  v20 = v28[1];
  *(a3 + 40) = v28[0];
  *(a3 + 56) = v20;
  *(a3 + 72) = v18;
  v21 = sub_1000951DC(v15);

  v22 = vdupq_n_s64(v21);
  *(a3 + 144) = v21 & 1;
  *v22.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v22, xmmword_1004D2F00), vshlq_u64(v22, xmmword_1004D2EF0))), 0x1000100010001);
  *(a3 + 145) = vuzp1_s8(*v22.i8, *v22.i8).u32[0];
  *(a3 + 176) = _swiftEmptySetSingleton;
  v23 = a3 + v6[13];
  *v23 = 0;
  *(v23 + 2) = 0;
  v24 = (v23 + *(type metadata accessor for PendingPersistenceUpdates(0) + 28));
  *v24 = sub_100163144(_swiftEmptyArrayStorage);
  type metadata accessor for MessagesPendingDownload(0);
  sub_100016D2C();
  sub_1004A7114();
  v25 = (v24 + *(type metadata accessor for MessagesPendingDownloadPerPass(0) + 20));
  *v25 = sub_100163144(_swiftEmptyArrayStorage);
  sub_1004A7114();
  sub_1004A7114();
  *(a3 + v6[14]) = sub_10016324C(_swiftEmptyArrayStorage);
  *(a3 + v6[17]) = 0;
  _s15MissingMessagesOMa(0);
  swift_storeEnumTagMultiPayload();
  v26 = a3 + v6[20];
  *v26 = _swiftEmptyArrayStorage;
  result = -1.90237734e-283;
  *(v26 + 8) = xmmword_1004D2F10;
  return result;
}

void sub_1000D17D0(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, void *a8)
{
  v211 = a8;
  v197 = a5;
  v198 = a7;
  v209 = a6;
  v193 = a3;
  v194 = a4;
  v192 = a2;
  v213 = a1;
  v208 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v206 = *(v208 - 1);
  __chkstk_darwin(v208);
  v207 = &v186 - v8;
  v205 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v205);
  v203 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v200 = &v186 - v11;
  __chkstk_darwin(v12);
  v201 = &v186 - v13;
  __chkstk_darwin(v14);
  v202 = &v186 - v15;
  v210 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v210);
  v191 = &v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = _s12LocalMailboxV6LoggerVMa(0);
  __chkstk_darwin(v204);
  v196 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v195 = &v186 - v19;
  __chkstk_darwin(v20);
  v199 = &v186 - v21;
  __chkstk_darwin(v22);
  v189 = &v186 - v23;
  __chkstk_darwin(v24);
  v188 = &v186 - v25;
  __chkstk_darwin(v26);
  v190 = &v186 - v27;
  __chkstk_darwin(v28);
  v187 = &v186 - v29;
  __chkstk_darwin(v30);
  v186 = &v186 - v31;
  __chkstk_darwin(v32);
  v34 = &v186 - v33;
  __chkstk_darwin(v35);
  v37 = &v186 - v36;
  __chkstk_darwin(v38);
  v40 = &v186 - v39;
  __chkstk_darwin(v41);
  v43 = (&v186 - v42);
  __chkstk_darwin(v44);
  v46 = &v186 - v45;
  __chkstk_darwin(v47);
  v49 = &v186 - v48;
  __chkstk_darwin(v50);
  v52 = &v186 - v51;
  v53 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v53);
  v55 = (&v186 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D4DB4(v213, v55, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 17)
  {
    if (EnumCaseMultiPayload != 18)
    {
      if (EnumCaseMultiPayload != 19)
      {
        if (EnumCaseMultiPayload == 20)
        {
          memcpy(v215, v55, 0x268uLL);
          sub_1000D38FC(v215, v192, v193, v194, v211);
          sub_100025D5C(v215);
          return;
        }

        goto LABEL_25;
      }

      v106 = v200;
      sub_100020950(v55, v200);
      type metadata accessor for PendingServerResponses(0);
      (*(v206 + 16))(v207, v106, v208);
      sub_1004A7104();
      v107 = v211;
      v108 = v199;
      sub_1000D4DB4(v211, v199, _s12LocalMailboxV6LoggerVMa);
      v109 = v195;
      sub_1000D4DB4(v107, v195, _s12LocalMailboxV6LoggerVMa);
      v110 = v196;
      sub_1000D4DB4(v107, v196, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v111 = v203;
      sub_10000E268(v106, v203, &unk_1005D91B0, &unk_1004CF400);
      v112 = sub_1004A4A54();
      v113 = sub_1004A6034();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        v214 = v213;
        *v114 = 68159235;
        v115 = v108;
        *(v114 + 4) = 2;
        *(v114 + 8) = 256;
        v116 = v109;
        v117 = v204;
        v118 = *(v116 + *(v204 + 20));
        LODWORD(v212) = v113;
        sub_1000D4E84(v116, _s12LocalMailboxV6LoggerVMa);
        *(v114 + 10) = v118;
        *(v114 + 11) = 1040;
        *(v114 + 13) = 2;
        *(v114 + 17) = 512;
        v119 = *(v110 + *(v117 + 20) + 2);
        sub_1000D4E84(v110, _s12LocalMailboxV6LoggerVMa);
        *(v114 + 19) = v119;
        *(v114 + 21) = 2160;
        *(v114 + 23) = 0x786F626C69616DLL;
        *(v114 + 31) = 2085;
        v120 = v115 + *(v117 + 20);
        v121 = *(v120 + 8);
        v122 = *(v120 + 16);

        sub_1000D4E84(v115, _s12LocalMailboxV6LoggerVMa);
        v215[0] = v121;
        LODWORD(v215[1]) = v122;
        v123 = sub_1004A5824();
        v125 = sub_10015BA6C(v123, v124, &v214);

        *(v114 + 33) = v125;
        *(v114 + 41) = 2048;
        v126 = v203;
        v127 = MessageIdentifierSet.count.getter();
        sub_100025F40(v126, &unk_1005D91B0, &unk_1004CF400);
        *(v114 + 43) = v127;
        _os_log_impl(&_mh_execute_header, v112, v212, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received vanished (earlier) for %ld UID(s).", v114, 0x33u);
        sub_1000197E0(v213);
      }

      else
      {
        sub_100025F40(v111, &unk_1005D91B0, &unk_1004CF400);
        sub_1000D4E84(v110, _s12LocalMailboxV6LoggerVMa);
        sub_1000D4E84(v109, _s12LocalMailboxV6LoggerVMa);

        sub_1000D4E84(v108, _s12LocalMailboxV6LoggerVMa);
      }

      v128 = v106;
LABEL_29:
      sub_100025F40(v128, &unk_1005D91B0, &unk_1004CF400);
      return;
    }

    v94 = v55;
    v95 = v202;
    sub_100020950(v94, v202);
    v96 = v212;
    type metadata accessor for PendingServerResponses(0);
    (*(v206 + 16))(v207, v95, v208);
    sub_1004A7104();
    v97 = *v96;
    v98 = MessageIdentifierSet.count.getter();
    if (!__OFSUB__(v97, v98))
    {
      v99 = ((v97 - v98) & ~((v97 - v98) >> 63));
      *v96 = v99;
      v100 = sub_1000E5314();
      v101 = sub_1000D0D04(v100 | ((HIDWORD(v100) & 1) << 32), v96);
      v103 = v189;
      v102 = v190;
      v104 = v188;
      v213 = v99;
      if (v101 == 2 || (v101 & 1) == 0)
      {
        v105 = 0;
      }

      else
      {
        sub_10013FC9C(0xEu);
        sub_100088568(v215, 14);
        v105 = 1;
      }

      v150 = v211;
      sub_1000D4DB4(v211, v102, _s12LocalMailboxV6LoggerVMa);
      sub_1000D4DB4(v150, v104, _s12LocalMailboxV6LoggerVMa);
      sub_1000D4DB4(v150, v103, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v151 = v201;
      sub_10000E268(v95, v201, &unk_1005D91B0, &unk_1004CF400);
      v152 = sub_1004A4A54();
      v153 = sub_1004A6034();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        LODWORD(v211) = v105;
        v155 = v154;
        v212 = swift_slowAlloc();
        v214 = v212;
        *v155 = 68159747;
        *(v155 + 4) = 2;
        *(v155 + 8) = 256;
        v156 = v104;
        v157 = v204;
        v158 = *(v156 + *(v204 + 20));
        sub_1000D4E84(v156, _s12LocalMailboxV6LoggerVMa);
        *(v155 + 10) = v158;
        *(v155 + 11) = 1040;
        *(v155 + 13) = 2;
        *(v155 + 17) = 512;
        v159 = *(v103 + *(v157 + 20) + 2);
        sub_1000D4E84(v103, _s12LocalMailboxV6LoggerVMa);
        *(v155 + 19) = v159;
        *(v155 + 21) = 2160;
        *(v155 + 23) = 0x786F626C69616DLL;
        *(v155 + 31) = 2085;
        v160 = v102 + *(v157 + 20);
        v161 = *(v160 + 8);
        v162 = *(v160 + 16);

        sub_1000D4E84(v102, _s12LocalMailboxV6LoggerVMa);
        v215[0] = v161;
        LODWORD(v215[1]) = v162;
        v163 = sub_1004A5824();
        v165 = sub_10015BA6C(v163, v164, &v214);

        *(v155 + 33) = v165;
        *(v155 + 41) = 2048;
        v166 = v201;
        v167 = MessageIdentifierSet.count.getter();
        sub_100025F40(v166, &unk_1005D91B0, &unk_1004CF400);
        *(v155 + 43) = v167;
        *(v155 + 51) = 2048;
        *(v155 + 53) = v213;
        *(v155 + 61) = 1024;
        *(v155 + 63) = v211;
        _os_log_impl(&_mh_execute_header, v152, v153, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received vanished for %ld UID(s). Message count is now %ld. Re-running CountUnreadMessages: %{BOOL}d.", v155, 0x43u);
        sub_1000197E0(v212);

        v128 = v202;
      }

      else
      {
        sub_100025F40(v151, &unk_1005D91B0, &unk_1004CF400);
        sub_1000D4E84(v103, _s12LocalMailboxV6LoggerVMa);
        sub_1000D4E84(v104, _s12LocalMailboxV6LoggerVMa);

        sub_1000D4E84(v102, _s12LocalMailboxV6LoggerVMa);
        v128 = v95;
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_41;
  }

  v207 = v40;
  v208 = v37;
  v213 = v43;
  v57 = v209;
  if (EnumCaseMultiPayload != 15)
  {
    if (EnumCaseMultiPayload != 17)
    {
LABEL_25:
      v148 = type metadata accessor for UntaggedResponse;
      v149 = v55;
LABEL_39:
      sub_1000D4E84(v149, v148);
      return;
    }

    v58 = *v55;
    v59 = v210;
    v60 = v212;
    sub_100103554(*v55);
    v61 = v60 + *(v59 + 16);
    v62 = type metadata accessor for NewestMessages(0);
    v63 = (*(*(v62 - 8) + 48))(v61, 1, v62);
    v64 = v57;
    v66 = v197;
    v65 = v198;
    v67 = v191;
    if (!v63)
    {
      v68 = *(v62 + 24);
      v69 = *&v61[v68];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
LABEL_41:
        __break(1u);
        return;
      }

      *&v61[v68] = v71;
    }

    sub_1000D4DB4(v60, v67, type metadata accessor for MailboxSyncState);
    sub_1000D3458(v58, v66 & 1, v64, v65 & 1);
    v73 = v72;
    sub_1000D4E84(v67, type metadata accessor for MailboxSyncState);
    if (v73)
    {
      sub_10013FC9C(0xEu);
      sub_100088568(v215, 14);
    }

    v74 = *v60 - 1;
    if (*v60 < 1)
    {
      v168 = v211;
      v76 = v34;
      sub_1000D4DB4(v211, v34, _s12LocalMailboxV6LoggerVMa);
      v169 = v186;
      sub_1000D4DB4(v168, v186, _s12LocalMailboxV6LoggerVMa);
      v170 = v187;
      sub_1000D4DB4(v168, v187, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v79 = sub_1004A4A54();
      v171 = sub_1004A6014();
      if (os_log_type_enabled(v79, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        LODWORD(v212) = v73;
        v213 = v173;
        v214 = v173;
        *v172 = 68159491;
        v174 = v169;
        *(v172 + 4) = 2;
        *(v172 + 8) = 256;
        LODWORD(v211) = v58;
        v175 = v170;
        v176 = v204;
        v177 = *(v169 + *(v204 + 20));
        sub_1000D4E84(v174, _s12LocalMailboxV6LoggerVMa);
        *(v172 + 10) = v177;
        *(v172 + 11) = 1040;
        *(v172 + 13) = 2;
        *(v172 + 17) = 512;
        v178 = *(v175 + *(v176 + 20) + 2);
        sub_1000D4E84(v175, _s12LocalMailboxV6LoggerVMa);
        *(v172 + 19) = v178;
        *(v172 + 21) = 2160;
        *(v172 + 23) = 0x786F626C69616DLL;
        *(v172 + 31) = 2085;
        v179 = v76 + *(v176 + 20);
        v180 = *(v179 + 1);
        v181 = *(v179 + 4);

        sub_1000D4E84(v76, _s12LocalMailboxV6LoggerVMa);
        v215[0] = v180;
        LODWORD(v215[1]) = v181;
        v182 = sub_1004A5824();
        v184 = sub_10015BA6C(v182, v183, &v214);

        *(v172 + 33) = v184;
        *(v172 + 41) = 1024;
        *(v172 + 43) = v211;
        *(v172 + 47) = 1024;
        *(v172 + 49) = v212 & 1;
        _os_log_impl(&_mh_execute_header, v79, v171, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received expunge %u, but message count is already zero. Re-running CountUnreadMessages: %{BOOL}d.", v172, 0x35u);
        sub_1000197E0(v213);

        goto LABEL_35;
      }

      sub_1000D4E84(v170, _s12LocalMailboxV6LoggerVMa);
      v185 = v169;
    }

    else
    {
      *v60 = v74;
      v75 = v211;
      v76 = v213;
      sub_1000D4DB4(v211, v213, _s12LocalMailboxV6LoggerVMa);
      v77 = v207;
      sub_1000D4DB4(v75, v207, _s12LocalMailboxV6LoggerVMa);
      v78 = v208;
      sub_1000D4DB4(v75, v208, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v79 = sub_1004A4A54();
      v80 = sub_1004A6034();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v209 = v74;
        v82 = v81;
        v83 = swift_slowAlloc();
        LODWORD(v212) = v73;
        v210 = v83;
        v214 = v83;
        *v82 = 68159747;
        *(v82 + 4) = 2;
        *(v82 + 8) = 256;
        LODWORD(v211) = v58;
        v84 = v77;
        v85 = v204;
        v86 = *(v84 + *(v204 + 20));
        sub_1000D4E84(v84, _s12LocalMailboxV6LoggerVMa);
        *(v82 + 10) = v86;
        *(v82 + 11) = 1040;
        *(v82 + 13) = 2;
        *(v82 + 17) = 512;
        v87 = *(v78 + *(v85 + 20) + 2);
        sub_1000D4E84(v78, _s12LocalMailboxV6LoggerVMa);
        *(v82 + 19) = v87;
        *(v82 + 21) = 2160;
        *(v82 + 23) = 0x786F626C69616DLL;
        *(v82 + 31) = 2085;
        v88 = v76 + *(v85 + 20);
        v89 = *(v88 + 1);
        v90 = *(v88 + 4);

        sub_1000D4E84(v76, _s12LocalMailboxV6LoggerVMa);
        v215[0] = v89;
        LODWORD(v215[1]) = v90;
        v91 = sub_1004A5824();
        v93 = sub_10015BA6C(v91, v92, &v214);

        *(v82 + 33) = v93;
        *(v82 + 41) = 1024;
        *(v82 + 43) = v211;
        *(v82 + 47) = 2048;
        *(v82 + 49) = v209;
        *(v82 + 57) = 1024;
        *(v82 + 59) = v212 & 1;
        _os_log_impl(&_mh_execute_header, v79, v80, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received expunge %u. Message count is now %ld. Re-running CountUnreadMessages: %{BOOL}d.", v82, 0x3Fu);
        sub_1000197E0(v210);

LABEL_35:

        return;
      }

      sub_1000D4E84(v78, _s12LocalMailboxV6LoggerVMa);
      v185 = v77;
    }

    sub_1000D4E84(v185, _s12LocalMailboxV6LoggerVMa);

    v149 = v76;
    v148 = _s12LocalMailboxV6LoggerVMa;
    goto LABEL_39;
  }

  v129 = *v55;
  v130 = v212;
  sub_10013FC9C(0xCu);
  sub_100088568(v215, 12);
  v131 = v211;
  v132 = v52;
  sub_1000D4DB4(v211, v52, _s12LocalMailboxV6LoggerVMa);
  sub_1000D4DB4(v131, v49, _s12LocalMailboxV6LoggerVMa);
  v133 = v46;
  sub_1000D4DB4(v131, v46, _s12LocalMailboxV6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v134 = sub_1004A4A54();
  v135 = sub_1004A6034();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    v214 = v211;
    *v136 = 68159235;
    *(v136 + 4) = 2;
    *(v136 + 8) = 256;
    v213 = v129;
    v137 = v204;
    v138 = v49[*(v204 + 20)];
    sub_1000D4E84(v49, _s12LocalMailboxV6LoggerVMa);
    *(v136 + 10) = v138;
    *(v136 + 11) = 1040;
    *(v136 + 13) = 2;
    *(v136 + 17) = 512;
    v139 = v133;
    v140 = *&v133[*(v137 + 20) + 2];
    sub_1000D4E84(v139, _s12LocalMailboxV6LoggerVMa);
    *(v136 + 19) = v140;
    *(v136 + 21) = 2160;
    *(v136 + 23) = 0x786F626C69616DLL;
    *(v136 + 31) = 2085;
    v141 = v132 + *(v137 + 20);
    v142 = *(v141 + 8);
    v143 = *(v141 + 16);

    sub_1000D4E84(v132, _s12LocalMailboxV6LoggerVMa);
    v215[0] = v142;
    LODWORD(v215[1]) = v143;
    v144 = sub_1004A5824();
    v146 = sub_10015BA6C(v144, v145, &v214);

    *(v136 + 33) = v146;
    *(v136 + 41) = 1024;
    v147 = v213;
    *(v136 + 43) = v213;
    _os_log_impl(&_mh_execute_header, v134, v135, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Updating message count to %u", v136, 0x2Fu);
    sub_1000197E0(v211);

    *v212 = v147;
  }

  else
  {
    sub_1000D4E84(v46, _s12LocalMailboxV6LoggerVMa);
    sub_1000D4E84(v49, _s12LocalMailboxV6LoggerVMa);

    sub_1000D4E84(v132, _s12LocalMailboxV6LoggerVMa);
    *v130 = v129;
  }
}

uint64_t sub_1000D2C78(unint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  __chkstk_darwin(v3 - 8);
  v5 = (&v24 - v4);
  v6 = type metadata accessor for PendingServerResponses(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[19];
  v9 = v2[20];
  v11 = v2[21];
  v12 = type metadata accessor for MailboxSyncState(0);
  sub_1000D4DB4(v2 + *(v12 + 48), v8, type metadata accessor for PendingServerResponses);
  v13 = *v2;
  sub_10000E268(v2 + *(v12 + 60), v5, &qword_1005CDA20, &unk_1004D2F20);
  v14 = type metadata accessor for MessageBatches(0);
  if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
  {
    sub_100025F40(v5, &qword_1005CDA20, &unk_1004D2F20);
    v15 = 4507;
  }

  else
  {
    v15 = *v5;
    sub_1000D4E84(v5, type metadata accessor for MessageBatches);
  }

  v16 = v25;
  v17 = sub_100103614(v13, v15, HIBYTE(v25) & 1);
  sub_1000D4E84(v8, type metadata accessor for PendingServerResponses);
  *&v26 = v10;
  *(&v26 + 1) = v9;
  v27 = v11;

  sub_1000D1184(v17);

  v18 = v27;
  v24 = v26;
  v19 = sub_1000FF68C();
  v26 = v24;
  v27 = v18;
  sub_1000D1184(v19);

  v20 = v26;
  v21 = v27;
  sub_100166A54(v16 & 0x101010101FFFF01, &v26);
  v22 = sub_1000D4100(v26, v20, *(&v20 + 1), v21);

  return v22;
}

void sub_1000D2F44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  __chkstk_darwin(v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a2 ^ a1;
  if (((a2 ^ a1) & 0xFF00) != 0)
  {
    v10 = *(type metadata accessor for MailboxSyncState(0) + 68);
    sub_1000D4E84(v3 + v10, _s15MissingMessagesOMa);
    *(v3 + v10) = 0;
    _s15MissingMessagesOMa(0);
    swift_storeEnumTagMultiPayload();
    sub_10013FC9C(0xCu);
    sub_100088568(&v17, 12);
    sub_10013FC9C(2u);
    sub_100088568(&v17, 2);
    sub_10013FC9C(4u);
    sub_100088568(&v17, 4);
  }

  if (v9)
  {
    *v8 = sub_100163144(_swiftEmptyArrayStorage);
    type metadata accessor for MessagesPendingDownload(0);
    sub_100016D2C();
    sub_1004A7114();
    v11 = (v8 + *(v6 + 20));
    *v11 = sub_100163144(_swiftEmptyArrayStorage);
    sub_1004A7114();
    v12 = v3 + *(type metadata accessor for MailboxSyncState(0) + 52);
    v13 = type metadata accessor for PendingPersistenceUpdates(0);
    sub_1000D4CFC(v8, v12 + *(v13 + 28));
    sub_10013FC9C(9u);
    sub_100088568(&v16, 9);
    sub_10013FC9C(0xAu);
    sub_100088568(&v15, 10);
  }
}

uint64_t sub_1000D317C()
{
  if (*(v0 + 20))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 16);
  }

  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  sub_1004A6724(180);
  v21 = 0;
  v22 = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD00000000000001FLL;
  v25._object = 0x80000001004AA220;
  sub_1004A5994(v25);
  *&v23[0] = *v0;
  v26._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v26);

  v27._countAndFlagsBits = 0x49557478656E202CLL;
  v27._object = 0xEB00000000203A44;
  sub_1004A5994(v27);
  v28._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v28);

  v29._object = 0x80000001004AA240;
  v29._countAndFlagsBits = 0xD000000000000011;
  sub_1004A5994(v29);
  LODWORD(v23[0]) = v1;
  sub_1000D40AC();
  v30._countAndFlagsBits = sub_1004A5A84();
  sub_1004A5994(v30);

  v31._countAndFlagsBits = 0x6E4567616C66202CLL;
  v31._object = 0xEF203A7265646F63;
  sub_1004A5994(v31);
  v2 = *(v0 + 88);
  v3 = *(v0 + 120);
  v23[4] = *(v0 + 104);
  v23[5] = v3;
  v24 = *(v0 + 136);
  v4 = *(v0 + 56);
  v23[0] = *(v0 + 40);
  v23[1] = v4;
  v23[2] = *(v0 + 72);
  v23[3] = v2;
  v5 = *(v0 + 88);
  v6 = *(v0 + 120);
  v18 = *(v0 + 104);
  v19 = v6;
  v20 = *(v0 + 136);
  v7 = *(v0 + 56);
  v14 = *(v0 + 40);
  v15 = v7;
  v16 = *(v0 + 72);
  v17 = v5;
  sub_100095920(v23, v13);
  v32._countAndFlagsBits = sub_1004A5824();
  sub_1004A5994(v32);

  v33._countAndFlagsBits = 0x654467616C66202CLL;
  v33._object = 0xEF203A7265646F63;
  sub_1004A5994(v33);
  v8 = *(v0 + 145);
  v9 = *(v0 + 146);
  v10 = *(v0 + 147);
  v11 = *(v0 + 148);
  LOBYTE(v14) = *(v0 + 144);
  BYTE1(v14) = v8;
  BYTE2(v14) = v9;
  BYTE3(v14) = v10;
  BYTE4(v14) = v11;
  v34._countAndFlagsBits = sub_1004A5824();
  sub_1004A5994(v34);

  v35._countAndFlagsBits = 0xD00000000000004ELL;
  v35._object = 0x80000001004AA260;
  sub_1004A5994(v35);
  sub_1000CEA84();
  v36._countAndFlagsBits = sub_1004A5D54();
  sub_1004A5994(v36);

  v37._countAndFlagsBits = 41;
  v37._object = 0xE100000000000000;
  sub_1004A5994(v37);
  return v21;
}

void sub_1000D3458(unsigned int a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for MessageBatches(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      if (__OFADD__(*v4, 500))
      {
        __break(1u);
      }

      else if (!__OFSUB__(*v4 + 500, a3))
      {
        return;
      }

      __break(1u);
      return;
    }

    v16 = v13;
    v17 = type metadata accessor for MailboxSyncState(0);
    sub_10000E268(v4 + *(v17 + 60), v10, &qword_1005CDA20, &unk_1004D2F20);
    if ((*(v12 + 48))(v10, 1, v16) == 1)
    {
      sub_100025F40(v10, &qword_1005CDA20, &unk_1004D2F20);
    }

    else
    {
      sub_1000D4E1C(v10, v15, type metadata accessor for MessageBatches);
      sub_1000D4E84(v15, type metadata accessor for MessageBatches);
    }
  }
}

uint64_t sub_1000D3670@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v23 = a3;
  v5 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for MessageBatches(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MailboxSyncState(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1000D4DB4(a2, v15, type metadata accessor for MailboxSyncState);
  sub_10000E268(&v15[*(v13 + 68)], v7, &qword_1005CDA20, &unk_1004D2F20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000D4E84(v15, type metadata accessor for MailboxSyncState);
    result = sub_100025F40(v7, &qword_1005CDA20, &unk_1004D2F20);
    v18 = 0;
  }

  else
  {
    sub_1000D4E1C(v7, v11, type metadata accessor for MessageBatches);
    v19 = *(v11 + 1);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = *(v19 + 8 * v20 + 24);
    }

    else
    {
      v21 = 1;
    }

    sub_1000D4E84(v15, type metadata accessor for MailboxSyncState);
    v18 = v16 < v21;
    result = sub_1000D4E84(v11, type metadata accessor for MessageBatches);
  }

  *v23 = v18;
  return result;
}

void sub_1000D38FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  _s12LocalMailboxV6LoggerVMa(0);
  __chkstk_darwin(a1);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v36[-v14];
  __chkstk_darwin(v16);
  v20 = &v36[-v19];
  if ((*(v17 + 560) & 1) != 0 || *(v5 + 32))
  {
LABEL_12:
    sub_1000D3CA0(v17, v9, a3, a4, a5);
    return;
  }

  v21 = *(v17 + 552);
  v22 = *(v5 + 24);
  if (v22 <= v21)
  {
    v23 = *(v17 + 552);
  }

  else
  {
    v23 = *(v5 + 24);
  }

  if (((v23 | v22) & 0x8000000000000000) == 0)
  {
    if (v22 < v21)
    {
      v42 = v18;
      v43 = v5;
      v44 = v17;
      *(v5 + 24) = v23;
      *(v5 + 32) = 0;
      sub_1000D4DB4(a5, &v36[-v19], _s12LocalMailboxV6LoggerVMa);
      sub_1000D4DB4(a5, v15, _s12LocalMailboxV6LoggerVMa);
      sub_1000D4DB4(a5, v12, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v24 = sub_1004A4A54();
      v25 = sub_1004A6034();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v41 = v24;
        v27 = v26;
        v40 = swift_slowAlloc();
        v47 = v40;
        *v27 = 68159235;
        *(v27 + 4) = 2;
        *(v27 + 8) = 256;
        v38 = v23;
        v28 = v42;
        v37 = v15[*(v42 + 20)];
        v39 = v25;
        sub_1000D4E84(v15, _s12LocalMailboxV6LoggerVMa);
        *(v27 + 10) = v37;
        *(v27 + 11) = 1040;
        *(v27 + 13) = 2;
        *(v27 + 17) = 512;
        v29 = *&v12[*(v28 + 20) + 2];
        sub_1000D4E84(v12, _s12LocalMailboxV6LoggerVMa);
        *(v27 + 19) = v29;
        *(v27 + 21) = 2160;
        *(v27 + 23) = 0x786F626C69616DLL;
        *(v27 + 31) = 2085;
        v30 = &v20[*(v28 + 20)];
        v31 = *(v30 + 1);
        LODWORD(v28) = *(v30 + 4);

        sub_1000D4E84(v20, _s12LocalMailboxV6LoggerVMa);
        v45 = v31;
        v46 = v28;
        v32 = sub_1004A5824();
        v34 = sub_10015BA6C(v32, v33, &v47);

        *(v27 + 33) = v34;
        *(v27 + 41) = 2048;
        *(v27 + 43) = v38;
        v35 = v41;
        _os_log_impl(&_mh_execute_header, v41, v39, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Updating highest mod-seq to %llu", v27, 0x33u);
        sub_1000197E0(v40);
      }

      else
      {
        sub_1000D4E84(v12, _s12LocalMailboxV6LoggerVMa);
        sub_1000D4E84(v15, _s12LocalMailboxV6LoggerVMa);

        sub_1000D4E84(v20, _s12LocalMailboxV6LoggerVMa);
      }

      v17 = v44;
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1000D3CA0(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a1 + 10);
  v48[8] = *(a1 + 9);
  v48[9] = v11;
  v48[10] = *(a1 + 11);
  v49 = *(a1 + 192);
  v12 = *(a1 + 6);
  v48[4] = *(a1 + 5);
  v48[5] = v12;
  v13 = *(a1 + 8);
  v48[6] = *(a1 + 7);
  v48[7] = v13;
  v14 = *(a1 + 2);
  v48[0] = *(a1 + 1);
  v48[1] = v14;
  v15 = *(a1 + 4);
  v48[2] = *(a1 + 3);
  v48[3] = v15;
  result = sub_10003EC1C(v48);
  if (result == 1 && !*(*(a1 + 25) + 16))
  {
    v17 = *(a1 + 22);
    v50[8] = *(a1 + 21);
    v50[9] = v17;
    v50[10] = *(a1 + 23);
    v51 = *(a1 + 384);
    v18 = *(a1 + 18);
    v50[4] = *(a1 + 17);
    v50[5] = v18;
    v19 = *(a1 + 20);
    v50[6] = *(a1 + 19);
    v50[7] = v19;
    v20 = *(a1 + 14);
    v50[0] = *(a1 + 13);
    v50[1] = v20;
    v21 = *(a1 + 16);
    v50[2] = *(a1 + 15);
    v50[3] = v21;
    result = sub_10003EC1C(v50);
    if (result == 1 && !*(a1 + 54) && (a1[134] & 1) != 0)
    {
      v22 = *(a1 + 64);
      v23 = a1[2];
      LOBYTE(v47[0]) = *(a1 + 12);
      v39 = v47[0];
      v40 = v23;
      sub_1000D3F44(v22, v23 | (LOBYTE(v47[0]) << 32));
      if (v22)
      {
        v24 = &_mh_execute_header;
        if (!v5[148])
        {
          v24 = 0;
        }

        v25 = 0x1000000;
        if (!v5[147])
        {
          v25 = 0;
        }

        v26 = 0x10000;
        if (!v5[146])
        {
          v26 = 0;
        }

        v27 = 256;
        if (!v5[145])
        {
          v27 = 0;
        }

        v28 = FlagDecoder.decode(_:)(v22, v27 | v5[144] | v26 | v25 | v24);
        LOBYTE(v22) = v29;
      }

      else
      {
        v28 = 2;
      }

      v30 = *(a1 + 65);
      v46 = v30;
      if (v28 != 2 || v30)
      {
        sub_10000E268(&v46, v47, qword_1005CF958, &qword_1004D3040);
        v31 = *a1;
        v32 = *(a1 + 4);
        v33 = *(a1 + 69);
        v34 = *(a1 + 560);
        *&v41 = v28;
        BYTE8(v41) = v22;
        *&v42 = v30;
        DWORD2(v42) = v31;
        BYTE12(v42) = v32;
        LODWORD(v43) = v40;
        BYTE4(v43) = v39;
        *(&v43 + 1) = v33;
        LOBYTE(v44) = v34;
        DWORD2(v44) = a2;
        *&v45 = a3;
        *(&v45 + 1) = a4;
        v47[3] = v44;
        v47[4] = v45;
        v47[1] = v42;
        v47[2] = v43;
        v47[0] = v41;
        v35 = &v5[*(type metadata accessor for MailboxSyncState(0) + 48)];
        v36 = *(v35 + 24);
        v37 = *(v35 + 32);
        sub_100025928(v35, v36);
        v38 = *(v37 + 16);

        v38(v47, a5, v36, v37);
        return sub_1000D4D60(&v41);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_1000D3F44(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MessageBatches(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if ((a2 & 0x100000000) == 0)
    {
      v9 = *(type metadata accessor for MailboxSyncState(0) + 60);
      if (!(*(v6 + 48))(v2 + v9, 1, v5))
      {
        sub_1000D4DB4(v2 + v9, v8, type metadata accessor for MessageBatches);
        v10 = *(v8 + 1);
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = *(v10 + 8 * v11 + 24);
        }

        else
        {
          v12 = 1;
        }

        sub_1000D4E84(v8, type metadata accessor for MessageBatches);
        if (v12 > a2)
        {
          sub_10013FC9C(0xEu);
          sub_100088568(&v14, 14);
        }
      }
    }
  }
}

unint64_t sub_1000D40AC()
{
  result = qword_1005CF940;
  if (!qword_1005CF940)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt32, &type metadata for UInt32, v0, v1);
    atomic_store(result, &qword_1005CF940);
  }

  return result;
}

uint64_t sub_1000D4100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v12 = a3;
  v13 = a2;
  v11 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {

    return v4;
  }

  v6 = (a1 + 32);

  do
  {
    v8 = *v6++;
    v7 = v8;
    if (sub_100014D94())
    {
      sub_10013FC9C(v7);
      sub_10013FC9C(v7);
    }

    else if (sub_100014D94() & 1) != 0 && (sub_100014D94())
    {
      sub_10013FC9C(v7);
    }

    else
    {
      sub_100088568(&v10, v7);
    }

    if (sub_100014D94())
    {
      sub_10013FC9C(v7);
    }

    else if ((sub_100014D94() & 1) == 0 || (sub_100014D94() & 1) == 0)
    {
      sub_100088568(&v10, v7);
      goto LABEL_4;
    }

    sub_10013FC9C(v7);
LABEL_4:
    --v5;
  }

  while (v5);
  return v13;
}

BOOL sub_1000D4284(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return a4 == 2 && !a3;
    }

    if (a4 != 1)
    {
      return 0;
    }

    if (((a3 | result) & 0x8000000000000000) == 0)
    {
      return a3 == result;
    }

    __break(1u);
  }

  if (a4)
  {
    return 0;
  }

  if (((a3 | result) & 0x8000000000000000) == 0)
  {
    return a3 == result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D42EC(uint64_t a1, uint64_t a2)
{
  v73 = type metadata accessor for NewestMessages(0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - v7;
  v9 = sub_10000C9C0(&qword_1005CF948, &qword_1004D3030);
  __chkstk_darwin(v9);
  v75 = &v68 - v10;
  v11 = type metadata accessor for MessageBatches(0);
  v74 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  __chkstk_darwin(v14 - 8);
  v16 = (&v68 - v15);
  v17 = sub_10000C9C0(&qword_1005CF950, &qword_1004D3038);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  if (*a1 != *a2)
  {
    return 0;
  }

  v20 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8) != *(a1 + 8))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v21 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = *(a1 + 24);
  v23 = *(a2 + 24);
  v24 = *(a2 + 32);
  if (!*(a1 + 32))
  {
LABEL_19:
    if (v24)
    {
      return 0;
    }

    if ((v23 | v22) < 0)
    {
      __break(1u);
      goto LABEL_60;
    }

    goto LABEL_21;
  }

  if (*(a1 + 32) != 1)
  {
    result = 0;
    if (v24 != 2 || v23)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v24 != 1)
  {
    return 0;
  }

  v24 = v23 | v22;
  if ((v23 | v22) < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  if (v23 != v22)
  {
    return 0;
  }

LABEL_25:
  v26 = *(a1 + 88);
  v27 = *(a1 + 120);
  v76[4] = *(a1 + 104);
  v76[5] = v27;
  v77 = *(a1 + 136);
  v28 = *(a1 + 56);
  v76[0] = *(a1 + 40);
  v76[1] = v28;
  v29 = *(a1 + 72);
  v76[3] = v26;
  v76[2] = v29;
  v30 = *(a2 + 56);
  v31 = *(a2 + 72);
  v78[0] = *(a2 + 40);
  v78[1] = v30;
  v32 = *(a2 + 88);
  v33 = *(a2 + 104);
  v34 = *(a2 + 120);
  v79 = *(a2 + 136);
  v78[4] = v33;
  v78[5] = v34;
  v78[2] = v31;
  v78[3] = v32;
  if (!_s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(v76, v78))
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 144) != *(a2 + 144) || ((*(a1 + 145) ^ *(a2 + 145)) & 1) != 0 || ((*(a1 + 146) ^ *(a2 + 146)) & 1) != 0 || ((*(a1 + 147) ^ *(a2 + 147)) & 1) != 0 || ((*(a1 + 148) ^ *(a2 + 148)) & 1) != 0)
  {
    return result;
  }

  v35 = *(a1 + 152);
  v71 = *(a1 + 160);
  v69 = *(a1 + 168);
  v36 = *(a2 + 152);
  v70 = *(a2 + 160);
  v68 = *(a2 + 168);
  if ((sub_100082EA0(v35, v36) & 1) == 0)
  {
    return 0;
  }

  if ((sub_100082EA0(v71, v70) & 1) == 0)
  {
    return 0;
  }

  if ((sub_100082EA0(v69, v68) & 1) == 0)
  {
    return 0;
  }

  if ((sub_100083990(*(a1 + 176), *(a2 + 176)) & 1) == 0)
  {
    return 0;
  }

  v71 = type metadata accessor for MailboxSyncState(0);
  if ((sub_100104818(a1 + v71[12], a2 + v71[12]) & 1) == 0 || (sub_1000FF71C((a1 + v71[13]), (a2 + v71[13])) & 1) == 0 || (sub_100115B88(*(a1 + v71[14]), *(a2 + v71[14])) & 1) == 0)
  {
    return 0;
  }

  v70 = v71[15];
  v37 = *(v17 + 48);
  sub_10000E268(a1 + v70, v19, &qword_1005CDA20, &unk_1004D2F20);
  v38 = a2 + v70;
  v70 = v37;
  sub_10000E268(v38, &v19[v37], &qword_1005CDA20, &unk_1004D2F20);
  v74 = *(v74 + 48);
  if ((v74)(v19, 1, v11) != 1)
  {
    sub_10000E268(v19, v16, &qword_1005CDA20, &unk_1004D2F20);
    if ((v74)(&v19[v70], 1, v11) != 1)
    {
      sub_1000D4E1C(&v19[v70], v13, type metadata accessor for MessageBatches);
      v42 = sub_1000DA5A0(v16, v13);
      sub_1000D4E84(v13, type metadata accessor for MessageBatches);
      sub_1000D4E84(v16, type metadata accessor for MessageBatches);
      sub_100025F40(v19, &qword_1005CDA20, &unk_1004D2F20);
      if (!v42)
      {
        return 0;
      }

      goto LABEL_45;
    }

    sub_1000D4E84(v16, type metadata accessor for MessageBatches);
LABEL_43:
    v39 = &qword_1005CF950;
    v40 = &qword_1004D3038;
    v41 = v19;
LABEL_66:
    sub_100025F40(v41, v39, v40);
    return 0;
  }

  if ((v74)(&v19[v70], 1, v11) != 1)
  {
    goto LABEL_43;
  }

  sub_100025F40(v19, &qword_1005CDA20, &unk_1004D2F20);
LABEL_45:
  v43 = v71[16];
  v9 = *(v9 + 48);
  v44 = v75;
  sub_10000E268(a1 + v43, v75, &qword_1005CDC18, &qword_1004CF9E0);
  sub_10000E268(a2 + v43, v44 + v9, &qword_1005CDC18, &qword_1004CF9E0);
  v45 = *(v72 + 48);
  if (v45(v44, 1, v73) == 1)
  {
    if (v45(v75 + v9, 1, v73) == 1)
    {
      sub_100025F40(v75, &qword_1005CDC18, &qword_1004CF9E0);
      goto LABEL_48;
    }

    goto LABEL_58;
  }

  v64 = v75;
  sub_10000E268(v75, v8, &qword_1005CDC18, &qword_1004CF9E0);
  if (v45(v64 + v9, 1, v73) == 1)
  {
    sub_1000D4E84(v8, type metadata accessor for NewestMessages);
LABEL_58:
    v39 = &qword_1005CF948;
    v40 = &qword_1004D3030;
LABEL_65:
    v41 = v75;
    goto LABEL_66;
  }

LABEL_60:
  sub_1000D4E1C(v75 + v9, v5, type metadata accessor for NewestMessages);
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0 || *&v8[*(v73 + 20)] != *&v5[*(v73 + 20)])
  {
    sub_1000D4E84(v5, type metadata accessor for NewestMessages);
    sub_1000D4E84(v8, type metadata accessor for NewestMessages);
    v39 = &qword_1005CDC18;
    v40 = &qword_1004CF9E0;
    goto LABEL_65;
  }

  v65 = *(v73 + 24);
  v66 = *&v8[v65];
  v67 = *&v5[v65];
  sub_1000D4E84(v5, type metadata accessor for NewestMessages);
  sub_1000D4E84(v8, type metadata accessor for NewestMessages);
  sub_100025F40(v75, &qword_1005CDC18, &qword_1004CF9E0);
  if (v66 != v67)
  {
    return 0;
  }

LABEL_48:
  if ((sub_1000E8854(a1 + v71[17], a2 + v71[17]) & 1) == 0)
  {
    return 0;
  }

  v46 = v71[18];
  v47 = a1 + v46;
  v48 = *(a1 + v46 + 9);
  v49 = a2 + v46;
  v50 = *(v49 + 9);
  if ((v48 & 1) == 0)
  {
    if (*(v49 + 9))
    {
      return 0;
    }

    v50 = *(v49 + 8);
    if ((*(v47 + 8) & 1) == 0)
    {
      result = 0;
      if ((*(v49 + 8) & 1) != 0 || *v47 != *v49)
      {
        return result;
      }

      goto LABEL_51;
    }
  }

  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  result = 0;
  v51 = v71[19];
  v52 = a1 + v51;
  v53 = *(a1 + v51);
  v54 = (a2 + v51);
  if (v53 == *v54 && *(v52 + 8) == v54[1])
  {
    v55 = v71[20];
    v56 = a1 + v55;
    v57 = *(a1 + v55);
    v58 = *(a1 + v55 + 8);
    v59 = *(v56 + 16);
    v60 = (a2 + v55);
    v61 = v60[1];
    v62 = v60[2];
    v63 = sub_1001024BC(v57, *v60) & (v58 == v61);
    if (v59 == v62)
    {
      return v63;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000D4CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D4DB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D4E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D4E84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000D4EE4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v5 = 0;
    v7 = result;
    v4[0] = swift_getAssociatedTypeWitness();
    v4[1] = swift_getAssociatedTypeWitness();
    v4[2] = swift_getAssociatedConformanceWitness();
    v4[3] = swift_getAssociatedConformanceWitness();
    result = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap(319, v4);
    if (v3 <= 0x3F)
    {
      v6 = 0;
      v8 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_1000D5034(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000D5048(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_1000D5090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000D5108(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v4 = sub_1004A5804();
  v5._countAndFlagsBits = (*(a2 + 96))(a1, a2);
  if (v5._object)
  {
    sub_1004A5994(v5);

    v7._countAndFlagsBits = 45;
    v7._object = 0xE100000000000000;
    sub_1004A5994(v7);
  }

  return v4;
}

Swift::Int sub_1000D51E0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6ED4(v3);
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

void sub_1000D5250()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_1004A6EB4(*(v0 + 8));
  sub_1004A6ED4(v2);
  sub_1004A6EB4(v1 | (v1 << 32));
}

Swift::Int sub_1000D529C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A6ED4(v4);
  sub_1004A6EB4(v3 | (v3 << 32));
  return sub_1004A6F14();
}

unint64_t sub_1000D5308(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1000D6A84(v5, v7) & 1;
}

unint64_t sub_1000D5358()
{
  result = qword_1005CF9E0[0];
  if (!qword_1005CF9E0[0])
  {
    result = swift_getWitnessTable("E<\v", &type metadata for MailboxTaskMailbox, v0, v1);
    atomic_store(result, qword_1005CF9E0);
  }

  return result;
}

double sub_1000D53DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 64))(v5, *(a1 + 16));
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000D544C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Task.Logger(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MailboxTaskLogger(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D696C(a1, v7);
  v14 = a2 + 16;
  v13 = *(a2 + 16);
  v12 = *(v14 + 8);
  (*(v12 + 64))(&v26, v13, v12);
  v25 = v27;
  v15 = v28;
  v16 = v29;
  v17 = sub_1004A4A74();
  (*(*(v17 - 8) + 16))(v11, v7, v17);
  v18 = &v7[*(v5 + 28)];
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[2];

  v30 = v26;
  sub_1000D69D0(&v30);
  sub_1000D6A24(v7, type metadata accessor for Task.Logger);
  v22 = &v11[*(v9 + 28)];
  *v22 = v20;
  *(v22 + 1) = v19;
  *(v22 + 2) = v21;
  *(v22 + 12) = v25;
  *(v22 + 4) = v15;
  *(v22 + 10) = v16;
  (*(v12 + 104))(v11, v13, v12);
  return sub_1000D6A24(v11, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1000D5658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3.underlying = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = UInt32.init(_:)(v3);

  return v4;
}

uint64_t sub_1000D5794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Task.Logger(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D696C(a1, v9);
  (*(*(a2 + 24) + 64))(&v20, *(a2 + 16));
  LOWORD(a2) = v21;
  v10 = v22;
  v11 = v23;
  v12 = sub_1004A4A74();
  (*(*(v12 - 8) + 16))(a3, v9, v12);
  v13 = &v9[*(v7 + 28)];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = *(v13 + 2);

  v24 = v20;
  sub_1000D69D0(&v24);
  sub_1000D6A24(v9, type metadata accessor for Task.Logger);
  result = type metadata accessor for MailboxTaskLogger(0);
  v18 = a3 + *(result + 20);
  *v18 = v14;
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  *(v18 + 24) = a2;
  *(v18 + 32) = v10;
  *(v18 + 40) = v11;
  return result;
}

uint64_t sub_1000D58FC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a5;
  v54 = a4;
  v51 = a1;
  v56 = a7;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a6 + 16);
  v52 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = type metadata accessor for ClientCommand(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1004A6374();
  v46 = *(v16 - 8);
  v47 = v16;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v50 = AssociatedTypeWitness;
  v49 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v19);
  v48 = &v45 - v20;
  v21 = sub_1000D5658(a2, a3, a6);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v53;
  v53 = a6;
  v29 = a6;
  v30 = v52;
  sub_1000D5794(v28, v29, v12);
  v31 = *(v30 + 112);
  v32 = v54;
  v54 = v13;
  v31(v21, v23, v25, v27, v32, v12, v13, v30);

  sub_1000D6A24(v12, type metadata accessor for MailboxTaskLogger);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
  {
    (*(v46 + 8))(v18, v47);
    v33 = 1;
    v34 = v56;
  }

  else
  {
    v35 = *(TupleTypeMetadata2 + 48);
    v36 = v48;
    v37 = v49;
    v38 = v50;
    (*(v49 + 32))(v48, v18, v50);
    v39 = v56;
    sub_10000F8F8(&v18[v35], v56);
    v53 = *(v53 + 36);
    v40 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = swift_getAssociatedConformanceWitness();
    v57[0] = v38;
    v57[1] = v40;
    v57[2] = AssociatedConformanceWitness;
    v57[3] = v42;
    v43 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap(0, v57);
    sub_10016C124(v51, v36, v43);
    (*(v37 + 8))(v36, v38);
    v33 = 0;
    v34 = v39;
  }

  return (*(*(v55 - 8) + 56))(v34, v33, 1);
}

unint64_t sub_1000D5D04(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a5;
  v49 = a4;
  v46 = a1;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a6 + 16);
  v14 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1004A6374();
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v45 = AssociatedTypeWitness;
  v43 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v19);
  v42 = &v40 - v20;
  v21 = sub_1000D5658(a2, a3, a6);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v44 = a6;
  sub_1000D5794(v48, a6, v12);
  v28 = *(v14 + 120);
  v29 = v49;
  v48 = v13;
  v49 = v6;
  v28(v21, v23, v25, v27, v29, v12, v13, v14);

  v30 = TupleTypeMetadata2;

  sub_1000D6A24(v12, type metadata accessor for MailboxTaskLogger);
  if ((*(*(v30 - 8) + 48))(v18, 1, v30) == 1)
  {
    (*(v40 + 8))(v18, v41);
    return 0xF000000000000007;
  }

  else
  {
    v31 = *&v18[*(v30 + 48)];
    v32 = v42;
    v33 = v43;
    v34 = v45;
    (*(v43 + 32))(v42, v18, v45);
    v35 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v37 = swift_getAssociatedConformanceWitness();
    v50[0] = v35;
    v50[1] = v34;
    v50[2] = AssociatedConformanceWitness;
    v50[3] = v37;
    v38 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap(0, v50);
    sub_10016C2C4(v46, v32, v38);
    (*(v33 + 8))(v32, v34);
  }

  return v31;
}

uint64_t sub_1000D60C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000D5658(a2, a3, a6);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1000D5794(a5, a6, v14);
  (*(*(a6 + 24) + 128))(a1, v15, v17, v19, v21, a4, v14, *(a6 + 16), *(a6 + 24));

  return sub_1000D6A24(v14, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1000D6204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000D5658(a2, a3, a5);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1000D5794(a4, a5, v12);
  (*(*(a5 + 24) + 136))(a1, v13, v15, v17, v19, v12, *(a5 + 16));

  return sub_1000D6A24(v12, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1000D6338(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a8;
  v39 = a3;
  v43 = a7;
  v46 = a6;
  v47 = a1;
  v40 = a4;
  v41 = a5;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v10 - 8);
  v42 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a9 + 16);
  v13 = *(a9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1004A6374();
  v34 = *(v15 - 8);
  v35 = v15;
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v45 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v18);
  v36 = &v33 - v19;
  v37 = a9;
  v20 = *(a9 + 36);
  v44 = v9;
  v21 = *(v9 + v20);
  v22 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v25 = AssociatedConformanceWitness;
  v26 = v45;
  sub_10016C45C(v47, v21, AssociatedTypeWitness, v22, v25, v24, v17);
  if ((*(v26 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v34 + 8))(v17, v35);
    v28 = type metadata accessor for MailboxTaskWithCustomHistory.Error(0, v12, v13, v27);
    swift_getWitnessTable(byte_1004D31E8, v28);
    swift_allocError();
    *v29 = v47;
    *(v29 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v31 = v36;
    (*(v26 + 32))(v36, v17, AssociatedTypeWitness);
    v32 = v42;
    sub_1000D5794(v38, v37, v42);
    (*(v13 + 144))(v31, v39, v40, v41, v46, v43, v32, v12, v13);
    sub_1000D6A24(v32, type metadata accessor for MailboxTaskLogger);
    return (*(v26 + 8))(v31, AssociatedTypeWitness);
  }
}

uint64_t sub_1000D66CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D5794(a2, a3, v8);
  (*(*(a3 + 24) + 160))(a1, v8, *(a3 + 16));
  return sub_1000D6A24(v8, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1000D6798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D5794(a2, a3, v8);
  (*(*(a3 + 24) + 168))(a1, v8, *(a3 + 16));
  return sub_1000D6A24(v8, type metadata accessor for MailboxTaskLogger);
}

double sub_1000D686C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000D53DC(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000D6930(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(byte_1004D318C, a2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D696C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Task.Logger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D6A24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_1000D6A84(uint64_t *result, uint64_t *a2)
{
  if (result[1] != a2[1])
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)) && (sub_1000FFC98(result[3], a2[3]) & 1) != 0);
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)) && (sub_1000FFC98(result[3], a2[3]) & 1) != 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D6B78(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v34 = a2;
  v38 = a1;
  v6 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v6 - 8);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1004A6374();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v37 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v14);
  v31 = &v29 - v15;
  v33 = a4;
  v16 = *(a4 + 36);
  v36 = v4;
  v17 = *(v4 + v16 + 8);
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = AssociatedConformanceWitness;
  v22 = v37;
  sub_10016C704(v38, v17, v18, AssociatedTypeWitness, v21, v20, v13);
  if ((*(v22 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v29 + 8))(v13, v30);
    v24 = type metadata accessor for MailboxTaskWithCustomHistory.Error(0, v9, v8, v23);
    swift_getWitnessTable(byte_1004D31E8, v24);
    swift_allocError();
    *v25 = v38;
    *(v25 + 4) = 1;
    return swift_willThrow();
  }

  else
  {
    v27 = v31;
    (*(v22 + 32))(v31, v13, AssociatedTypeWitness);
    v28 = v35;
    sub_1000D5794(v32, v33, v35);
    (*(v8 + 152))(v27, v34, v28, v9, v8);
    sub_1000D6A24(v28, type metadata accessor for MailboxTaskLogger);
    return (*(v22 + 8))(v27, AssociatedTypeWitness);
  }
}

uint64_t sub_1000D6F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D6FF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000D70C8(uint64_t a1)
{
  sub_1000D71B4(319, &qword_1005CFAD0, &qword_1005CD198, &qword_1004CEC20, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1000D71B4(319, &qword_1005CFAD8, &qword_1005CD1D0, &unk_1004CF2C0, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000D71B4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10000DEFC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

char *sub_1000D7218(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v14 = *v6;
    a1(&v12, &v14, a2);
    if (v3)
    {
      break;
    }

    if ((v13 & 1) == 0)
    {
      v8 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100085898(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_100085898((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1000D7348(void (*a1)(__int128 *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v56[0] = *i;

    (a1)(&v42, v56);
    if (v3)
    {
      break;
    }

    v40[12] = v54;
    v41[0] = v55[0];
    *(v41 + 9) = *(v55 + 9);
    v40[8] = v50;
    v40[9] = v51;
    v40[10] = v52;
    v40[11] = v53;
    v40[4] = v46;
    v40[5] = v47;
    v40[6] = v48;
    v40[7] = v49;
    v40[0] = v42;
    v40[1] = v43;
    v40[2] = v44;
    v40[3] = v45;
    if (sub_1000100C4(v40) == 1)
    {
      v38 = v54;
      v39[0] = v55[0];
      *(v39 + 9) = *(v55 + 9);
      v34 = v50;
      v35 = v51;
      v36 = v52;
      v37 = v53;
      v30 = v46;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      sub_100025F40(&v26, &qword_1005CFC48, &unk_1004D3380);
    }

    else
    {
      v38 = v54;
      v39[0] = v55[0];
      *(v39 + 9) = *(v55 + 9);
      v34 = v50;
      v35 = v51;
      v36 = v52;
      v37 = v53;
      v30 = v46;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100085F94(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_100085F94((v8 > 1), v9 + 1, 1, v6);
      }

      v16 = v30;
      v17 = v31;
      v14 = v28;
      v15 = v29;
      v20 = v34;
      v21 = v35;
      v18 = v32;
      v19 = v33;
      *&v25[9] = *(v39 + 9);
      v24 = v38;
      *v25 = v39[0];
      v22 = v36;
      v23 = v37;
      v12 = v26;
      v13 = v27;
      *(v6 + 2) = v9 + 1;
      v10 = &v6[240 * v9];
      *(v10 + 3) = v13;
      *(v10 + 4) = v14;
      *(v10 + 2) = v12;
      *(v10 + 7) = v17;
      *(v10 + 8) = v18;
      *(v10 + 5) = v15;
      *(v10 + 6) = v16;
      *(v10 + 11) = v21;
      *(v10 + 12) = v22;
      *(v10 + 9) = v19;
      *(v10 + 10) = v20;
      *(v10 + 249) = *&v25[9];
      *(v10 + 14) = v24;
      *(v10 + 15) = *v25;
      *(v10 + 13) = v23;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

char *sub_1000D7608(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = a1;
  v6 = (a3 + 40);
  v7 = _swiftEmptyArrayStorage;
  v19 = a1;
  while (1)
  {
    v9 = *v6;
    v17 = *(v6 - 1);
    v18 = v9;
    (v5)(&v15, &v17, a2);
    if (v3)
    {
      break;
    }

    v10 = v16;
    if (v16 != 2)
    {
      v11 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100086338(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_100086338((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v8 = &v7[12 * v13];
      *(v8 + 4) = v11;
      v8[40] = v10 & 1;
      v5 = v19;
    }

    v6 += 12;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1000D7758(void (*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 80);
  v42 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = *v6;
    v8 = *(v6 - 2);
    v9 = *(v6 - 1);
    v10 = *(v6 - 3);
    v11 = *(v6 - 8);
    v12 = *(v6 - 5);
    v35 = *(v6 - 12);
    v36 = v12;
    v37 = v11;
    v38 = v10;
    v39 = v8;
    v40 = v9;
    v41 = v7;

    sub_100014CEC(v10, v8);

    a1(&v30, &v35);
    if (v4)
    {
      break;
    }

    v13 = v38;
    v14 = v39;

    sub_100014D40(v13, v14);

    v15 = v30;
    v16 = v31;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    if (v33 == 1)
    {
      sub_1000DA9B0(v30, v31, v32, 1);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_10008639C(0, *(v42 + 2) + 1, 1, v42);
      }

      v21 = *(v42 + 2);
      v20 = *(v42 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v25 = sub_10008639C((v20 > 1), v21 + 1, 1, v42);
        v22 = v21 + 1;
        v42 = v25;
      }

      v23 = v42;
      *(v42 + 2) = v22;
      v24 = &v23[40 * v21];
      *(v24 + 8) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = v18;
      v24[64] = v19;
    }

    v6 += 56;
    if (!--v5)
    {
      return v42;
    }
  }

  v26 = v38;
  v27 = v39;

  sub_100014D40(v26, v27);

  return v42;
}

void sub_1000D7954(void (*a1)(void *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  v31 = a1;
  if (v9)
  {
LABEL_10:
    while (1)
    {
      v14 = __clz(__rbit64(v9)) | (v11 << 6);
      v15 = *(a3 + 56) + 24 * v14;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      LOBYTE(v15) = *(v15 + 17);
      v26 = *(*(a3 + 48) + 16 * v14);
      v27 = v16;
      v28 = v17;
      v29 = v18;
      v30 = v15;
      sub_100014CEC(v26, *(&v26 + 1));
      a1(&v25, &v26);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      sub_100014D40(v26, *(&v26 + 1));
      if (*(&v25 + 1) >> 60 == 15)
      {
        sub_1000CBB68(v25, *(&v25 + 1));
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v24 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_100086B4C(0, *(v12 + 2) + 1, 1, v12);
        }

        v20 = *(v12 + 2);
        v19 = *(v12 + 3);
        v21 = v12;
        v22 = v24;
        if (v20 >= v19 >> 1)
        {
          v23 = sub_100086B4C((v19 > 1), v20 + 1, 1, v12);
          v22 = v24;
          v21 = v23;
        }

        *(v21 + 2) = v20 + 1;
        v12 = v21;
        *&v21[16 * v20 + 32] = v22;
        a1 = v31;
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    sub_100014D40(v26, *(&v26 + 1));

LABEL_19:
  }

  else
  {
LABEL_6:
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_19;
      }

      v9 = *(v6 + 8 * v13);
      ++v11;
      if (v9)
      {
        v11 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000D7B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v26 = a3;
  v25 = a1;
  v28 = a4;
  v5 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v27 = a2;
  v18 = sub_1000DAC78(a2);
  sub_100016D2C();
  sub_1004A7114();
  sub_10000E268(v17, v14, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
    v19 = 1;
  }

  else
  {
    sub_100025FDC(v14, v8, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v8, v11, &qword_1005CD1D0, &unk_1004CF2C0);
    v19 = 0;
  }

  (*(v6 + 56))(v11, v19, 1, v5);
  v20 = v28;
  sub_1000D80D8(v25, v18, v11, v28);
  sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
  if ((v26 & 1) == 0)
  {
    return sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
  }

  v21 = v20[1];
  v22 = *(v21 + 2);
  if (!v22)
  {
    return sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
  }

  v30 = 1;
  v29 = *&v21[8 * v22 + 28];
  sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v30, &v29, &type metadata for UID, &v31);
  v23 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_100139840(v21);
  }

  result = sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
  if (v22 > *(v21 + 2))
  {
    __break(1u);
  }

  else
  {
    *&v21[8 * v22 + 24] = v23;
    v20[1] = v21;
  }

  return result;
}

uint64_t sub_1000D7EB4()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 8 * v2 + 24);
  v5 = *(v1 + 36);
  v6 = v3;
  sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v6, &v5, &type metadata for UID, &v7);
  return v7;
}

uint64_t sub_1000D7F2C(uint64_t result)
{
  if ((result & 0x100000000) == 0)
  {
    v2 = v1;
    v3 = *(v1 + 8);
    if (*(v3 + 16))
    {
      v4 = *(v3 + 32);
      if (*(v3 + 36) <= result)
      {
        v5 = result;
      }

      else
      {
        v5 = *(v3 + 36);
      }

      v9 = v5;
      v10 = v4;
      sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v10, &v9, &type metadata for UID, &v11);
      v6 = v11;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (*(v3 + 16))
        {
LABEL_8:
          *(v3 + 32) = v6;
          *(v1 + 8) = v3;
          return result;
        }
      }

      else
      {
        result = sub_100139840(v3);
        v3 = result;
        if (*(result + 16))
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
      v7 = result;
      sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1004CEAA0;
      v10 = v7;
      LODWORD(v11) = 1;
      sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v11, &v10, &type metadata for UID, v8 + 32);

      *(v2 + 8) = v8;
    }
  }

  return result;
}

unint64_t sub_1000D8054()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8 * v2 + 24);
    v6 = *(v1 + 36);
    v7 = v3;
    sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v7, &v6, &type metadata for UID, &v8);
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v2 == 0) << 32);
}

uint64_t sub_1000D80D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a3;
  v30 = a1;
  v33 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v33);
  v7 = &v29 - v6;
  v8 = *(type metadata accessor for MessageBatches(0) + 24);
  v9 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v10 = *(*(v9 - 8) + 56);
  v31 = a4;
  v29 = v8;
  v10(a4 + v8, 1, 1, v9);
  sub_100016D2C();
  sub_1004A7114();
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = 0;
    while (v12 < *(a2 + 16))
    {
      v35[0] = *(a2 + 32 + 8 * v12);
      v13 = sub_100016948();
      v36 = Range<>.init<A>(_:)(v35, &type metadata for UID, v13);
      if (HIDWORD(v36) != v36)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v14 = sub_1004A70B4();
        sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
        sub_1004A7064();
        v14(v35, 0);
      }

      if (v11 == ++v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_7:
  v15 = MessageIdentifierSet.count.getter();
  sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
  swift_getKeyPath();
  v16 = *(a2 + 16);
  if (v16)
  {
    v35[0] = _swiftEmptyArrayStorage;
    sub_100091C48(0, v16, 0);
    v17 = v35[0];
    v18 = (a2 + 32);
    do
    {
      v34 = *v18;
      swift_getAtKeyPath();
      v19 = v36;
      v35[0] = v17;
      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_100091C48((v20 > 1), v21 + 1, 1);
        v17 = v35[0];
      }

      *(v17 + 2) = v21 + 1;
      *&v17[8 * v21 + 32] = v19;
      ++v18;
      --v16;
    }

    while (v16);

    v22 = *(v17 + 2);
    if (v22)
    {
LABEL_13:
      v23 = 0;
      v24 = (v17 + 32);
      while (1)
      {
        v25 = *v24++;
        v26 = __OFADD__(v23, v25);
        v23 += v25;
        if (v26)
        {
          break;
        }

        if (!--v22)
        {
          goto LABEL_19;
        }
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage[2];
    if (v22)
    {
      goto LABEL_13;
    }
  }

  v23 = 0;
LABEL_19:

  if (v15 == v23)
  {
    v27 = v31;
    *v31 = v30;
    v35[0] = a2;

    sub_1000D9CD4(v35);

    v27[1] = v35[0];
    return sub_1000DA8E4(v32, v27 + v29);
  }

LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000D8460(uint64_t result)
{
  v1 = 4507;
  if (result < 4507)
  {
    v1 = result;
  }

  if (v1 <= 1000)
  {
    v2 = 1000;
  }

  else
  {
    v2 = v1;
  }

LABEL_8:
  v3 = v2;
  v4 = v2 / 2;
  if ((v2 / 2))
  {
    v6 = 1;
    v8 = 1;
    if ((v2 + 1) < 3)
    {
      goto LABEL_17;
    }

LABEL_39:
    v8 = 1;
    v15 = 31;
    while (1)
    {
      if (v4)
      {
        v17 = v8 * v15;
        if ((v8 * v15) >> 64 != (v8 * v15) >> 63)
        {
          goto LABEL_57;
        }

        if (v2 == -1 && v17 == 0x8000000000000000)
        {
          goto LABEL_58;
        }

        v8 = v17 % v2;
      }

      v18 = v15 * v15;
      if ((v15 * v15) >> 64 != (v15 * v15) >> 63)
      {
        goto LABEL_54;
      }

      if (v2 == -1 && v18 == 0x8000000000000000)
      {
        break;
      }

      v15 = v18 % v2;
      v16 = v4 >= 2;
      v4 >>= 1;
      if (!v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v5 = 1;
  do
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v7 = v4;
    v4 /= 2;
    ++v5;
  }

  while ((v4 & 1) == 0);
  if ((v7 + 1) >= 3)
  {
    if (!v2)
    {
      goto LABEL_62;
    }

    goto LABEL_39;
  }

  v8 = 1;
LABEL_14:
  if (v6 < 1)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_17:
  if (v2)
  {
    --v2;
    v9 = __OFSUB__(v3, 1);
    v10 = 1;
    while (1)
    {
      v11 = v8 * v8;
      if ((v8 * v8) >> 64 != (v8 * v8) >> 63)
      {
        break;
      }

      if (v3 == -1 && v11 == 0x8000000000000000)
      {
        goto LABEL_55;
      }

      v12 = v11 % v3;
      if (v12 == 1 && v8 != 1)
      {
        if (v9)
        {
          goto LABEL_56;
        }

        if (v8 != v2)
        {
          goto LABEL_7;
        }
      }

      if (v6 == v10)
      {
        if (v12 == 1)
        {
          result = sub_1000D86D0(73, v3);
          if ((result & 1) == 0)
          {
            return v3;
          }
        }

LABEL_7:
        if (v3 == 0x8000000000000000)
        {
          goto LABEL_61;
        }

        goto LABEL_8;
      }

      v8 = v12;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_53;
      }
    }

LABEL_51:
    __break(1u);
    return v3;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1000D8640(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a3)
  {
    v3 = result;
    result = 1;
    while (1)
    {
      if (a2)
      {
        v4 = result * v3;
        if ((result * v3) >> 64 != (result * v3) >> 63)
        {
          goto LABEL_20;
        }

        if (v4 == 0x8000000000000000 && a3 == -1)
        {
          goto LABEL_22;
        }

        result = v4 % a3;
      }

      v6 = v3 * v3;
      if ((v3 * v3) >> 64 != (v3 * v3) >> 63)
      {
        break;
      }

      if (v6 == 0x8000000000000000 && a3 == -1)
      {
        goto LABEL_21;
      }

      v3 = v6 % a3;
      v8 = a2 > 1;
      a2 = a2 >> 1;
      if (!v8)
      {
        return result;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D86D0(uint64_t result, uint64_t a2)
{
  v3 = a2 / 2;
  if ((v3 & 1) == 0)
  {
    v4 = 1;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_29;
      }

      v3 /= 2;
      ++v4;
      if (v3)
      {
        result = sub_1000D8640(result, v3, a2);
        if (v5 >= 1)
        {
          goto LABEL_8;
        }

        __break(1u);
        break;
      }
    }
  }

  result = sub_1000D8640(result, v3, a2);
  v5 = 1;
LABEL_8:
  if (a2)
  {
    v6 = __OFSUB__(a2, 1);
    v7 = 1;
    while (1)
    {
      v8 = result * result;
      if ((result * result) >> 64 != (result * result) >> 63)
      {
        break;
      }

      if (a2 == -1 && v8 == 0x8000000000000000)
      {
        goto LABEL_30;
      }

      v9 = v8 % a2;
      v11 = v8 % a2 == 1;
      v10 = v8 % a2 != 1;
      v11 = !v11 || result == 1;
      if (!v11)
      {
        if (v6)
        {
          goto LABEL_31;
        }

        if (result != a2 - 1)
        {
          return 1;
        }
      }

      if (v5 == v7)
      {
        return v10;
      }

      result = v9;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        return 1;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000D87C8()
{
  v1 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 8);
  v9 = *(v8 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v0;
    v21 = _swiftEmptyArrayStorage;
    sub_100091C68(0, v9, 0);
    v10 = v21;
    v11 = (v8 + 32);
    v12 = sub_100016948();
    do
    {
      v20 = *v11;
      v19 = Range<>.init<A>(_:)(&v20, &type metadata for UID, v12);
      sub_100016D2C();
      sub_1004A7124();
      v21 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_100091C68((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      v10[2] = v14 + 1;
      sub_100025FDC(v4, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, &qword_1005CD1D0, &unk_1004CF2C0);
      ++v11;
      --v9;
    }

    while (v9);
    v7 = v17;
  }

  v21 = v10;
  sub_1000D89EC(v7);
  sub_10008134C(v7);
  return v21;
}

uint64_t sub_1000D89EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  v13 = type metadata accessor for MessageBatches(0);
  sub_10000E268(v1 + *(v13 + 24), v5, &qword_1005CD518, &qword_1004CF2F0);
  v14 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
  {
    sub_100025F40(v5, &qword_1005CD518, &qword_1004CF2F0);
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_100016D2C();
    sub_1004A7114();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_100025F40(v8, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_10000E268(v5, v8, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v5, &qword_1005CD1D0, &unk_1004CF2C0);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_100025FDC(v8, v12, &unk_1005D91B0, &unk_1004CF400);
  }

  v15 = *v1;
  sub_100025FDC(v12, a1, &unk_1005D91B0, &unk_1004CF400);
  result = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  *(a1 + *(result + 20)) = v15;
  return result;
}

uint64_t sub_1000D8CF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v54 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v49 - v4;
  v6 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v56 = &v49 - v8;
  v9 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v12);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v57 = v1;
  v58 = v6;
  if (sub_1004A70C4())
  {
    v20 = *(v54 + 56);

    return v20(a1, 1, 1, v3);
  }

  else
  {
    v50 = v5;
    v51 = v3;
    v52 = a1;
    sub_100016D2C();
    sub_1004A7114();
    v55 = (v7 + 16);
    v22 = v57;
    while (1)
    {
      MessageIdentifierSet.ranges.getter(v11);
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      v23 = sub_1004A7044();
      v24 = sub_1004A7074();
      v25 = sub_1004A7044();
      result = sub_1004A7074();
      if (v23 < v25 || result < v23)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

      v27 = sub_1004A7044();
      v28 = sub_1004A7074();
      result = sub_100025F40(v11, &qword_1005CD7A0, &unk_1004CF590);
      if (v24 < v27 || v28 < v24)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v24, v23))
      {
        goto LABEL_33;
      }

      if (v24 - v23 > 486)
      {
        break;
      }

      v29 = MessageIdentifierSet.count.getter();
      v30 = *(v22 + *(type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0) + 20));
      if (v29 >= v30 || (sub_1004A70C4() & 1) != 0)
      {
        break;
      }

      result = MessageIdentifierSet.count.getter();
      v31 = v30 - result;
      if (__OFSUB__(v30, result))
      {
        goto LABEL_34;
      }

      MessageIdentifierSet.ranges.getter(v11);
      v32 = sub_1004A7044();
      v33 = sub_1004A7074();
      v34 = sub_1004A7044();
      result = sub_1004A7074();
      if (v32 < v34 || result < v32)
      {
        goto LABEL_35;
      }

      v35 = sub_1004A7044();
      v36 = sub_1004A7074();
      result = sub_100025F40(v11, &qword_1005CD7A0, &unk_1004CF590);
      if (v33 < v35 || v36 < v33)
      {
        goto LABEL_36;
      }

      v37 = v33 - v32;
      if (__OFSUB__(v33, v32))
      {
        goto LABEL_37;
      }

      v38 = __OFSUB__(487, v37);
      v39 = 487 - v37;
      if (v38)
      {
        goto LABEL_38;
      }

      if (v39 >= v31)
      {
        v40 = v31;
      }

      else
      {
        v40 = v39;
      }

      v22 = v57;
      MessageIdentifierSet.suffix(_:)(v40, v12, v16);
      v41 = v58;
      sub_1004A70F4();
      (*v55)(v56, v16, v41);
      sub_1004A7104();
      sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
    }

    v42 = v53;
    sub_10000E268(v19, v53, &unk_1005D91B0, &unk_1004CF400);
    v43 = MessageIdentifierSet.count.getter();
    v44 = v50;
    v45 = v51;
    if (v43 < 1)
    {
      sub_100025F40(v42, &unk_1005D91B0, &unk_1004CF400);
      v48 = 1;
      v47 = v52;
    }

    else
    {
      sub_100025FDC(v42, v50, &unk_1005D91B0, &unk_1004CF400);
      v46 = v44;
      v47 = v52;
      sub_100025FDC(v46, v52, &qword_1005CD1D0, &unk_1004CF2C0);
      v48 = 0;
    }

    (*(v54 + 56))(v47, v48, 1, v45);
    return sub_100025F40(v19, &unk_1005D91B0, &unk_1004CF400);
  }
}

uint64_t sub_1000D92CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 20));
  sub_100025FDC(v2, a2, &unk_1005D91B0, &unk_1004CF400);
  result = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

void *sub_1000D9328()
{
  v1 = sub_100065228(v0);
  sub_1000DAC1C(v0);
  return v1;
}

uint64_t sub_1000D9360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v57 = *(v6 - 8);
  __chkstk_darwin(v6);
  v56 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = v51 - v9;
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v10 - 8);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = v51 - v14;
  __chkstk_darwin(v15);
  v17 = v51 - v16;
  v18 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v18 - 8);
  v20 = v51 - v19;
  v21 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v58 = v51 - v26;
  __chkstk_darwin(v27);
  if ((a1 & 0x100000000) != 0)
  {
    v43 = *v3;
    v44 = type metadata accessor for MessageBatches(0);
    sub_10000E268(v3 + *(v44 + 24), v12, &qword_1005CD518, &qword_1004CF2F0);
    return sub_1000D80D8(v43, _swiftEmptyArrayStorage, v12, a2);
  }

  else
  {
    v53 = a2;
    LODWORD(v61) = a1;
    LODWORD(v60) = -1;
    v29 = v51 - v28;
    v30 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v61, &v60, &type metadata for UID, &v62);
    v61 = v62;
    v60 = Range<>.init<A>(_:)(&v61, &type metadata for UID, v30);
    v51[1] = sub_100016D2C();
    v31 = sub_1004A7124();
    v52 = *v3;
    __chkstk_darwin(v31);
    v54 = v29;
    v51[-2] = v29;
    v33 = sub_1000D7218(sub_1000DA994, &v51[-4], v32);
    v34 = type metadata accessor for MessageBatches(0);
    sub_10000E268(v3 + *(v34 + 24), v17, &qword_1005CD518, &qword_1004CF2F0);
    v35 = v57;
    v36 = 1;
    if ((*(v57 + 48))(v17, 1, v6) != 1)
    {
      v37 = v55;
      sub_100025FDC(v17, v55, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025FDC(v37, v20, &unk_1005D91B0, &unk_1004CF400);
      v36 = 0;
    }

    (*(v22 + 56))(v20, v36, 1, v21);
    v38 = *(v22 + 48);
    v39 = v6;
    if (v38(v20, 1, v21) == 1)
    {
      v40 = v58;
      sub_1004A7114();
      v41 = v38(v20, 1, v21);
      v42 = v53;
      if (v41 != 1)
      {
        sub_100025F40(v20, &qword_1005CD510, &unk_1004CF2E0);
      }
    }

    else
    {
      v40 = v58;
      sub_100025FDC(v20, v58, &unk_1005D91B0, &unk_1004CF400);
      v42 = v53;
    }

    sub_10000E268(v40, v24, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v24, &unk_1005D91B0, &unk_1004CF400);
      v49 = 1;
      v50 = v39;
      v48 = v59;
    }

    else
    {
      v46 = v56;
      sub_100025FDC(v24, v56, &unk_1005D91B0, &unk_1004CF400);
      v47 = v46;
      v48 = v59;
      sub_100025FDC(v47, v59, &qword_1005CD1D0, &unk_1004CF2C0);
      v49 = 0;
      v50 = v39;
    }

    (*(v35 + 56))(v48, v49, 1, v50);
    sub_1000D80D8(v52, v33, v48, v42);
    sub_100025F40(v40, &unk_1005D91B0, &unk_1004CF400);
    return sub_100025F40(v54, &unk_1005D91B0, &unk_1004CF400);
  }
}

uint64_t sub_1000D997C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v24 - v13;
  v25 = *a1;
  v15 = sub_100016948();
  v24[1] = Range<>.init<A>(_:)(&v25, &type metadata for UID, v15);
  sub_100016D2C();
  sub_1004A7124();
  MessageIdentifierSet.intersection(_:)(a2, v14);
  sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
  v16 = sub_1000E5314();
  if ((v16 & 0x100000000) != 0)
  {
    result = sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_6;
  }

  v17 = v16;
  MessageIdentifierSet.ranges.getter(v8);
  v18 = sub_1000E4C0C();
  v20 = v19;
  sub_100025F40(v8, &qword_1005CD7A0, &unk_1004CF590);
  result = sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
  if (v20)
  {
LABEL_6:
    v23 = 0;
    v22 = 1;
    goto LABEL_7;
  }

  if (HIDWORD(v18) >= v17)
  {
    v22 = 0;
    v23 = v18 & 0xFFFFFFFF00000000 | v17;
LABEL_7:
    *a3 = v23;
    *(a3 + 8) = v22;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D9BA8@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 20);
  *a7 = v15;
  *(a7 + 4) = v16;
  if ((v16 & 1) != 0 || v15 - a3 < a2)
  {
    LODWORD(v17) = 0;
    v18 = 1;
LABEL_14:
    result = swift_beginAccess();
    *(a1 + 16) = v17;
    *(a1 + 20) = v18;
    return result;
  }

  if (v15 != a4)
  {
    goto LABEL_9;
  }

  if (!a6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a5 == 0x8000000000000000 && a6 == -1)
  {
    goto LABEL_21;
  }

  v19 = __OFSUB__(a2, a5 % a6);
  a2 -= a5 % a6;
  if (!v19)
  {
LABEL_9:
    v20 = -a2;
    if (__OFSUB__(0, a2))
    {
      __break(1u);
    }

    else if (v20 <= 0xFFFFFFFFLL)
    {
      v17 = v15 - a2;
      if (v20 + v15 >= 1)
      {
        if (!HIDWORD(v17))
        {
          v18 = 0;
          goto LABEL_14;
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int sub_1000D9CD4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001419AC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1000D9E28(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000D9E28(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v79 = v8 + 2;
    v80 = v8[2];
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v8[2 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1000DA39C((*a3 + 8 * *v81), (*a3 + 8 * *v83), (*a3 + 8 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v13 < v10) ^ (v17 >= v18);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 8 * v7 - 8;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 8;
          v11 += 8;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v33 = v8[3];
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_100085288((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v34;
    v35 = v8 + 4;
    v36 = &v8[2 * v5 + 4];
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = v8[4];
          v38 = v8[5];
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8[2 * v34];
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[2 * v5];
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v8[2 * v34];
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = &v35[2 * v5 - 2];
        v75 = *v74;
        v76 = &v35[2 * v5];
        v77 = v76[1];
        sub_1000DA39C((*a3 + 8 * *v74), (*a3 + 8 * *v76), (*a3 + 8 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = v8[2];
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove(&v35[2 * v5], v76 + 2, 16 * (v78 - 1 - v5));
        v8[2] = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[2 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8[2 * v34];
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[2 * v5];
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v7 - 8;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 8 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (*v30 >= v28)
    {
LABEL_29:
      ++v7;
      v26 += 8;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 12);
    *(v30 + 8) = *v30;
    *v30 = v28;
    *(v30 + 4) = v31;
    v30 -= 8;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1000DA39C(char *__dst, char *__src, char *a3, char *a4)
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

      if (*v4 < *v6)
      {
        break;
      }

      v15 = v4;
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

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
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
      v20 = *(v18 - 2);
      v18 -= 8;
      if (*v17 < v20)
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
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v21 >> 3));
  }

  return 1;
}

BOOL sub_1000DA5A0(void *a1, void *a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_10000C9C0(&qword_1005CEBE0, &unk_1004D16D0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 || (sub_100102A80(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for MessageBatches(0) + 24);
  v15 = a1 + v14;
  v16 = *(v11 + 48);
  sub_10000E268(v15, v13, &qword_1005CD518, &qword_1004CF2F0);
  sub_10000E268(a2 + v14, &v13[v16], &qword_1005CD518, &qword_1004CF2F0);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_100025F40(v13, &qword_1005CD518, &qword_1004CF2F0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_10000E268(v13, v10, &qword_1005CD518, &qword_1004CF2F0);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_100025F40(v10, &qword_1005CD1D0, &unk_1004CF2C0);
LABEL_8:
    sub_100025F40(v13, &qword_1005CEBE0, &unk_1004D16D0);
    return 0;
  }

  sub_100025FDC(&v13[v16], v7, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100016D2C();
  v19 = sub_1004A7034();
  sub_100025F40(v7, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100025F40(v10, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100025F40(v13, &qword_1005CD518, &qword_1004CF2F0);
  return (v19 & 1) != 0;
}

uint64_t sub_1000DA8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000DA9B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_100014D40(a2, a3);
  }
}

uint64_t sub_1000DAA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000DAAD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000DAB4C(uint64_t a1)
{
  sub_100050DB8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1000DABC4()
{
  result = qword_1005CFC30;
  if (!qword_1005CFC30)
  {
    v3 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(255);
    result = swift_getWitnessTable("Y>\v", v3, v0, v1);
    atomic_store(result, &qword_1005CFC30);
  }

  return result;
}

uint64_t sub_1000DAC1C(uint64_t a1)
{
  v2 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DAC78(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CFC38, &qword_1004D3370);
  __chkstk_darwin(v2 - 8);
  v4 = v39 - v3;
  v39[0] = sub_10000C9C0(&qword_1005CFC40, &qword_1004D3378);
  __chkstk_darwin(v39[0]);
  v6 = v39 - v5;
  v39[1] = a1;
  sub_10000E268(a1, v4, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v4, v6, &unk_1005D91B0, &unk_1004CF400);
  v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v8 = MessageIdentifierSet.endIndex.getter(v7);
  v10 = v9;
  sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
  if (v8 == MessageIdentifierSet.startIndex.getter(v7) && v10 == v11)
  {
    goto LABEL_25;
  }

  v13 = 0;
  v14 = 1;
  v15 = _swiftEmptyArrayStorage;
  while (1)
  {
    MessageIdentifierSet.index(_:offsetBy:)(v8, v10, 0xFFFFFFFFFFFFFFFFLL);
    v8 = v16;
    v10 = v17;
    MessageIdentifierSet.subscript.getter(v17, v7, &v42);
    v18 = v42;
    if (v14)
    {
      if (v8 == MessageIdentifierSet.startIndex.getter(v7) && v10 == v19)
      {
        goto LABEL_26;
      }

      MessageIdentifierSet.index(_:offsetBy:)(v8, v10, 0xFFFFFFFFFFFFFFFFLL);
      v8 = v20;
      v10 = v21;
      MessageIdentifierSet.subscript.getter(v21, v7, &v42);
      v22 = v42;
    }

    else
    {
      v22 = v42;
      v18 = v13;
    }

    v23 = MessageIdentifierSet.startIndex.getter(v7);
    v25 = v24;
    if (v23 == MessageIdentifierSet.endIndex.getter(v7) && v25 == v26)
    {
      break;
    }

    MessageIdentifierSet.subscript.getter(v25, v7, &v42);
    if (v42 != v22)
    {
      break;
    }

    v41 = v22;
LABEL_17:
    v40 = v18;
    sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v41, &v40, &type metadata for UID, &v42);
    v27 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_100085898(0, *(v15 + 2) + 1, 1, v15);
    }

    v29 = *(v15 + 2);
    v28 = *(v15 + 3);
    if (v29 >= v28 >> 1)
    {
      v15 = sub_100085898((v28 > 1), v29 + 1, 1, v15);
    }

    *(v15 + 2) = v29 + 1;
    *&v15[8 * v29 + 32] = v27;
    v14 = 0;
    v13 = v22;
    if (v8 == MessageIdentifierSet.startIndex.getter(v7))
    {
      v13 = v22;
      if (v10 == v30)
      {
        goto LABEL_26;
      }
    }
  }

  if (v22 != -1)
  {
    v41 = v22 + 1;
    goto LABEL_17;
  }

  __break(1u);
LABEL_25:
  v15 = _swiftEmptyArrayStorage;
LABEL_26:
  v31 = &v6[*(v39[0] + 36)];
  *v31 = v8;
  v31[1] = v10;
  sub_100025F40(v6, &qword_1005CFC40, &qword_1004D3378);
  if (*(v15 + 2))
  {
    return sub_1000B0058(v15);
  }

  v32 = MessageIdentifierSet.startIndex.getter(v7);
  v34 = v33;
  if (v32 == MessageIdentifierSet.endIndex.getter(v7) && v34 == v35)
  {
    return sub_1000B0058(v15);
  }

  MessageIdentifierSet.subscript.getter(v34, v7, &v42);

  v37 = v42;
  sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1004CEAA0;
  v41 = v37;
  LODWORD(v42) = v37;
  sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v42, &v41, &type metadata for UID, v38 + 32);
  return v38;
}

uint64_t sub_1000DB0C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000DB190(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MessagesPendingDownload(uint64_t a1)
{
  result = qword_1005CFCA8;
  if (!qword_1005CFCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DB28C(uint64_t a1)
{
  sub_1000DB310(319);
  if (v1 <= 0x3F)
  {
    sub_100050DB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000DB310(uint64_t a1)
{
  if (!qword_1005CFCB8)
  {
    sub_100050D64();
    v1 = sub_1004A5524();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CFCB8);
    }
  }
}

unint64_t sub_1000DB374()
{
  v0 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v0 - 8);
  v2 = &v21[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v21[-v4];
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v6);
  v8 = &v21[-v7];

  sub_1000B492C(v9);
  MessageIdentifierSet.ranges.getter(v5);
  v10 = sub_1000E4C0C();
  v12 = v11;
  sub_100025F40(v5, &qword_1005CD7A0, &unk_1004CF590);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v10);
  }

  type metadata accessor for MessagesPendingDownload(0);
  MessageIdentifierSet.ranges.getter(v2);
  v14 = sub_1000E4C0C();
  v16 = v15;
  v17 = HIDWORD(v14);
  if (v15)
  {
    LODWORD(v17) = 0;
  }

  if (v17 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  if (v15)
  {
    v18 = v13;
  }

  if (v12)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  sub_100025F40(v2, &qword_1005CD7A0, &unk_1004CF590);
  sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
  return v19 | ((v12 & v16 & 1) << 32);
}

void *sub_1000DB55C(void *result)
{
  v2 = result[2];
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = result + 49; ; i += 24)
  {
    v7 = *(i - 17);
    v8 = *(i - 9);
    v9 = *(i - 1);
    v10 = *i;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    v12 = v27;
    v13 = sub_100067004();
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v12[3] < v18)
    {
      sub_1000C447C(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_100067004();
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v21 = v27;
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v13;
    sub_10013ADF0();
    v13 = v25;
    v21 = v27;
    if (v19)
    {
LABEL_3:
      v5 = v21[7] + 24 * v13;
      *v5 = v7;
      *(v5 + 8) = v8;
      *(v5 + 16) = v9;
      *(v5 + 17) = v10;
      goto LABEL_4;
    }

LABEL_11:
    v21[(v13 >> 6) + 8] |= 1 << v13;
    *(v21[6] + 4 * v13) = v7;
    v22 = v21[7] + 24 * v13;
    *v22 = v7;
    *(v22 + 8) = v8;
    *(v22 + 16) = v9;
    *(v22 + 17) = v10;
    v23 = v21[2];
    v17 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    v21[2] = v24;
LABEL_4:
    *v3 = v21;
    v26 = v7;
    type metadata accessor for MessagesPendingDownload(0);
    v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    result = MessageIdentifierSet.remove(_:)(&v26, v6, &v27);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void sub_1000DB72C()
{
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  if (!*(*v0 + 16))
  {
    v4 = sub_100163144(_swiftEmptyArrayStorage);

    *v0 = v4;
    sub_100016D2C();
    sub_1004A7114();
    v5 = type metadata accessor for MessagesPendingDownload(0);
    sub_1000DC240(v3, v0 + *(v5 + 20));
  }
}

uint64_t sub_1000DB7F8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1001145B4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_100016D2C();

  return sub_1004A7034();
}

uint64_t sub_1000DB878(int a1)
{
  v3 = a1;
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  return MessageIdentifierSet.contains(_:)(&v3, v1) & 1;
}

uint64_t sub_1000DB8D4(int *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = *(a1 + 18);
  v7 = *a1;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  return (v4 == a3) & ~MessageIdentifierSet.contains(_:)(&v7, v5);
}

uint64_t sub_1000DB94C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = *(result + 32), result = sub_100063DD8(*(result + 8), *(result + 16)), (v6 & 1) != 0))
  {
    v7 = (*(a2 + 56) + 24 * result);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = *(v7 + 16);
    if (*(v7 + 17))
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | v10;
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 18) = v5;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 18) = 0;
    v12 = 512;
  }

  *(a3 + 16) = v12;
  return result;
}

uint64_t sub_1000DB9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v26 = a3;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = *(a2 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v24 = a1;
    v28 = _swiftEmptyArrayStorage;
    sub_100091DA8(0, v12, 0);
    v13 = v28;
    v14 = (a2 + 32);
    v15 = v28[2];
    do
    {
      v17 = *v14;
      v14 += 6;
      v16 = v17;
      v28 = v13;
      v18 = v13[3];
      if (v15 >= v18 >> 1)
      {
        sub_100091DA8((v18 > 1), v15 + 1, 1);
        v13 = v28;
      }

      v13[2] = v15 + 1;
      *(v13 + v15++ + 8) = v16;
      --v12;
    }

    while (v12);
    a1 = v24;
  }

  sub_100016D2C();
  sub_1004A7114();
  v19 = v13[2];
  if (v19)
  {
    v20 = (v13 + 4);
    do
    {
      v21 = *v20++;
      v27 = v21;
      MessageIdentifierSet.insert(_:)(&v28, &v27, v6);
      --v19;
    }

    while (v19);
  }

  sub_100020950(v8, v11);
  if ((v26 & 0x100000000) != 0)
  {
    sub_1000DBC2C(a1, v25);
  }

  else
  {
    sub_1000DBED4(a1, v26, v25);
  }

  return sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_1000DBBD0(int *a1)
{
  v3 = *a1;
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  return MessageIdentifierSet.contains(_:)(&v3, v1) & 1;
}

uint64_t sub_1000DBC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  sub_100016D2C();
  sub_1004A7114();
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  if (sub_1004A70C4())
  {
    sub_1004A7114();
    return sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
  }

  else
  {
    v8 = MessageIdentifierSet.endIndex.getter(v4);
    MessageIdentifierSet.index(_:offsetBy:)(v8, v9, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v10;
    v13 = v12;
    v14 = MessageIdentifierSet.startIndex.getter(v4);
    v16 = v13 < v15;
    if (v11 != v14)
    {
      v16 = v11 < v14;
    }

    if (!v16)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v13, v4, &v37);
        HIDWORD(v36) = v37;
        MessageIdentifierSet.insert(_:)(v38, &v36 + 4, v4);
        MessageIdentifierSet.index(_:offsetBy:)(v11, v13, 0xFFFFFFFFFFFFFFFELL);
        v11 = v17;
        v13 = v18;
        v19 = MessageIdentifierSet.startIndex.getter(v4);
        v21 = v13 < v20;
        if (v11 != v19)
        {
          v21 = v11 < v19;
        }
      }

      while (!v21);
    }

    v22 = MessageIdentifierSet.endIndex.getter(v4);
    MessageIdentifierSet.index(_:offsetBy:)(v22, v23, 0xFFFFFFFFFFFFFFFELL);
    v25 = v24;
    v27 = v26;
    v28 = MessageIdentifierSet.startIndex.getter(v4);
    v30 = v27 < v29;
    if (v25 != v28)
    {
      v30 = v25 < v28;
    }

    if (!v30)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v27, v4, &v37);
        HIDWORD(v36) = v37;
        MessageIdentifierSet.insert(_:)(v38, &v36 + 4, v4);
        MessageIdentifierSet.index(_:offsetBy:)(v25, v27, 0xFFFFFFFFFFFFFFFELL);
        v25 = v31;
        v27 = v32;
        v33 = MessageIdentifierSet.startIndex.getter(v4);
        v35 = v27 < v34;
        if (v25 != v33)
        {
          v35 = v25 < v33;
        }
      }

      while (!v35);
    }

    return sub_100020950(v6, a2);
  }
}

uint64_t sub_1000DBED4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  sub_100016D2C();
  sub_1004A7114();
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  if (sub_1004A70C4())
  {
    sub_1004A7114();
    return sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
  }

  else
  {
    v10 = MessageIdentifierSet.endIndex.getter(v6);
    MessageIdentifierSet.index(_:offsetBy:)(v10, v11, 0xFFFFFFFFFFFFFFFFLL);
    v13 = v12;
    v15 = v14;
    v16 = MessageIdentifierSet.startIndex.getter(v6);
    v18 = v17 < v15;
    if (v16 != v13)
    {
      v18 = v16 < v13;
    }

    if (v18)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v15, v6, &v48);
        if (v48 <= a2)
        {
          break;
        }

        v47 = v48;
        MessageIdentifierSet.insert(_:)(&v48, &v47, v6);
        MessageIdentifierSet.index(_:offsetBy:)(v13, v15, 0xFFFFFFFFFFFFFFFFLL);
        v13 = v19;
        v15 = v20;
        v21 = MessageIdentifierSet.startIndex.getter(v6);
        v23 = v22 < v15;
        if (v21 != v13)
        {
          v23 = v21 < v13;
        }
      }

      while (v23);
    }

    v24 = MessageIdentifierSet.startIndex.getter(v6);
    v26 = v15 < v25;
    if (v13 != v24)
    {
      v26 = v13 < v24;
    }

    if (!v26)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v15, v6, &v47);
        HIDWORD(v46) = v47;
        MessageIdentifierSet.insert(_:)(&v48, &v46 + 4, v6);
        MessageIdentifierSet.index(_:offsetBy:)(v13, v15, 0xFFFFFFFFFFFFFFFELL);
        v13 = v27;
        v15 = v28;
        v29 = MessageIdentifierSet.startIndex.getter(v6);
        v31 = v15 < v30;
        if (v13 != v29)
        {
          v31 = v13 < v29;
        }
      }

      while (!v31);
    }

    v32 = MessageIdentifierSet.endIndex.getter(v6);
    MessageIdentifierSet.index(_:offsetBy:)(v32, v33, 0xFFFFFFFFFFFFFFFELL);
    v35 = v34;
    v37 = v36;
    v38 = MessageIdentifierSet.startIndex.getter(v6);
    v40 = v37 < v39;
    if (v35 != v38)
    {
      v40 = v35 < v38;
    }

    if (!v40)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v37, v6, &v47);
        HIDWORD(v46) = v47;
        MessageIdentifierSet.insert(_:)(&v48, &v46 + 4, v6);
        MessageIdentifierSet.index(_:offsetBy:)(v35, v37, 0xFFFFFFFFFFFFFFFELL);
        v35 = v41;
        v37 = v42;
        v43 = MessageIdentifierSet.startIndex.getter(v6);
        v45 = v37 < v44;
        if (v35 != v43)
        {
          v45 = v35 < v43;
        }
      }

      while (!v45);
    }

    return sub_100020950(v8, a3);
  }
}

uint64_t sub_1000DC240(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000DC344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MessagesPendingDownloadPerPass(uint64_t a1)
{
  result = qword_1005CFD40;
  if (!qword_1005CFD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DC400(uint64_t a1)
{
  result = type metadata accessor for MessagesPendingDownload(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1000DC46C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = 0;
  if (sub_1001145B4(*a1, *a2))
  {
    type metadata accessor for MessagesPendingDownload(0);
    sub_100016D2C();
    if (sub_1004A7034() & 1) != 0 && (sub_1001145B4(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) != 0 && (sub_1004A7034())
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1000DC530(unsigned int a1, uint64_t a2)
{
  v43 = a1;
  v3 = type metadata accessor for MessagesPendingDownload(0);
  __chkstk_darwin(v3 - 8);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v5 - 8);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for NewestMessages(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v38 - v21;
  v23 = a2;
  sub_1000DCB7C(a2, v15);
  v24 = *(v17 + 48);
  v25 = v24(v15, 1, v16);
  v41 = v16;
  v42 = v24;
  if (v25 == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    v39 = v19;
    v26 = v9;
    v27 = *(v16 + 20);
    v28 = *(v16 + 24);
    sub_100020950(v26, v22);
    *&v22[v27] = 0;
    *&v22[v28] = 0;
    v19 = v39;
    if (v24(v15, 1, v16) != 1)
    {
      sub_1000DCBEC(v15);
    }
  }

  else
  {
    sub_1000DCCB4(v15, v22);
  }

  v29 = v44;
  sub_1000DCABC(v45, v44);
  v30 = *(*v29 + 16);
  sub_1000DCC54(v29, type metadata accessor for MessagesPendingDownload);
  sub_1000DCC54(v22, type metadata accessor for NewestMessages);
  if (v30)
  {
    return 1;
  }

  else
  {
    sub_1000DCB7C(v23, v12);
    v33 = v41;
    v32 = v42;
    if (v42(v12, 1, v41) == 1)
    {
      sub_100016D2C();
      v34 = v40;
      sub_1004A7114();
      v35 = *(v33 + 20);
      v36 = *(v33 + 24);
      sub_100020950(v34, v19);
      *&v19[v35] = 0;
      *&v19[v36] = 0;
      if (v32(v12, 1, v33) != 1)
      {
        sub_1000DCBEC(v12);
      }
    }

    else
    {
      sub_1000DCCB4(v12, v19);
    }

    v31 = sub_1000DC920(1, v43, v19);
    sub_1000DCC54(v19, type metadata accessor for NewestMessages);
  }

  return v31;
}

BOOL sub_1000DC920(char a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for MessagesPendingDownload(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v3 += *(type metadata accessor for MessagesPendingDownloadPerPass(0) + 20);
LABEL_5:
    sub_1000DCABC(v3, v9);
    v10 = *(*v9 + 16) != 0;
    sub_1000DCC54(v9, type metadata accessor for MessagesPendingDownload);
    return v10;
  }

  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v12 = sub_1004A70C4();
  v13 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  v14 = *(v3 + *(v13 + 20));
  if (v12)
  {
    return *(v14 + 16) != 0;
  }

  else
  {
    __chkstk_darwin(v13);
    *&v16[-16] = a3;

    sub_1000CC4A4(sub_1000DCB20, &v16[-32], v14);
    v10 = v15;
  }

  return v10;
}

uint64_t sub_1000DCABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DCB20(int *a1)
{
  v3 = *a1;
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  return MessageIdentifierSet.contains(_:)(&v3, v1) & 1;
}

uint64_t sub_1000DCB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DCBEC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DCC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000DCCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewestMessages(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DCD18(uint64_t a1, uint64_t (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for MessagesToRemoveHelper.Range(0) - 8);
    result = a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
      return result;
    }
  }

  return v11;
}

void sub_1000DCDF4(uint64_t a1@<X0>, void (*a2)(uint64_t, int *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v12)) | (v15 << 6);
      v17 = *(*(a3 + 48) + 4 * v16);
      v18 = *(a3 + 56) + 16 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 9);
      v21 = v17;
      v22 = v19;
      v23 = v20;
      v24 = v18;
      a2(a1, &v21);
      if (v4)
      {
        break;
      }

      v12 &= v12 - 1;
      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_100025F40(a1, &unk_1005D91B0, &unk_1004CF400);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        sub_100025FDC(a1, a4, &unk_1005D91B0, &unk_1004CF400);
        return;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000DCF64(uint64_t a1)
{
  v45 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v45);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v41 - v4;
  v46 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v6 = *(v46 - 8);
  __chkstk_darwin(v46);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 32123;
  }

  if (v11 >= 0xA)
  {
    v21 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v22 = -1;
    v23 = *(v6 + 72);
    v43 = v8;
    v44 = v23;
    v24 = v21;
    v25 = v11;
    do
    {
      sub_1000E300C(v24, v10, type metadata accessor for MessagesToRemoveHelper.Range);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      MessageIdentifierSet.ranges.getter(v5);
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      v26 = v5;
      v27 = sub_1004A7044();
      if (v27 == sub_1004A7074())
      {
LABEL_26:
        sub_100025F40(v5, &qword_1005CD7A0, &unk_1004CF590);
        __break(1u);
        goto LABEL_27;
      }

      MessageIdentifierSet.RangeView.subscript.getter(v45, &v48);
      sub_100025F40(v5, &qword_1005CD7A0, &unk_1004CF590);
      v28 = v48;
      sub_1000E3074(v10, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v28 < v22)
      {
        v22 = v28;
      }

      v24 += v44;
      --v25;
    }

    while (v25);
    v29 = 1;
    v31 = v42;
    v30 = v43;
    while (1)
    {
      sub_1000E300C(v21, v30, type metadata accessor for MessagesToRemoveHelper.Range);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      MessageIdentifierSet.ranges.getter(v31);
      v5 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      v26 = v31;
      v32 = sub_1004A7044();
      if (v32 == sub_1004A7074())
      {
        break;
      }

      v33 = sub_1004A7074();
      v34 = v33 - 1;
      if (__OFSUB__(v33, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v35 = sub_1004A7044();
      v36 = sub_1004A7074();
      if (v34 < v35 || v34 >= v36)
      {
        goto LABEL_25;
      }

      MessageIdentifierSet.RangeView.subscript.getter(v45, &v48);
      sub_100025F40(v26, &qword_1005CD7A0, &unk_1004CF590);
      v31 = v26;
      v37 = HIDWORD(v48);
      v30 = v43;
      sub_1000E3074(v43, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v37 < v29)
      {
        v29 = v37;
      }

      v21 += v44;
      if (!--v11)
      {
        v48 = 0;
        v49 = 0xE000000000000000;
        LODWORD(v47) = v22;
        sub_1004A6934();
        v50._countAndFlagsBits = 58;
        v50._object = 0xE100000000000000;
        sub_1004A5994(v50);
        LODWORD(v47) = v29;
        sub_1004A6934();
        return v48;
      }
    }

LABEL_27:
    result = sub_100025F40(v26, &qword_1005CD7A0, &unk_1004CF590);
    __break(1u);
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v11, 0);
    v12 = v47;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    do
    {
      sub_1000E0974(v13, &v48);
      v15 = v48;
      v16 = v49;
      v47 = v12;
      v18 = v12[2];
      v17 = v12[3];
      if (v18 >= v17 >> 1)
      {
        sub_100091A08((v17 > 1), v18 + 1, 1);
        v12 = v47;
      }

      v12[2] = v18 + 1;
      v19 = &v12[2 * v18];
      v19[4] = v15;
      v19[5] = v16;
      v13 += v14;
      --v11;
    }

    while (v11);
    v48 = v12;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v38 = sub_1004A5614();
    v40 = v39;

    v48 = 123;
    v49 = 0xE100000000000000;
    v51._countAndFlagsBits = v38;
    v51._object = v40;
    sub_1004A5994(v51);

    v52._countAndFlagsBits = 125;
    v52._object = 0xE100000000000000;
    sub_1004A5994(v52);

    return v48;
  }

  return result;
}

uint64_t sub_1000DD4DC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v127 = a7;
  v124 = a5;
  v122 = a3;
  v123 = a4;
  v121 = a2;
  v11 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v11 - 8);
  v13 = &v110 - v12;
  v14 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v14 - 8);
  v126 = &v110 - v15;
  v116 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v116);
  v113 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v115 = &v110 - v18;
  __chkstk_darwin(v19);
  v125 = &v110 - v20;
  __chkstk_darwin(v21);
  v114 = &v110 - v22;
  __chkstk_darwin(v23);
  v25 = &v110 - v24;
  __chkstk_darwin(v26);
  v28 = &v110 - v27;
  v29 = sub_10000C9C0(&qword_1005CD4F0, &unk_1004CF2B0);
  __chkstk_darwin(v29 - 8);
  v31 = &v110 - v30;
  v32 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v118 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v120 = &v110 - v36;
  __chkstk_darwin(v37);
  v119 = &v110 - v38;
  __chkstk_darwin(v39);
  v41 = &v110 - v40;
  v117 = a1;
  v42 = a1;
  v44 = v43;
  sub_1000E0D70(v42, a8, v31);
  if ((*(v33 + 48))(v31, 1, v44) == 1)
  {
    return sub_100025F40(v31, &qword_1005CD4F0, &unk_1004CF2B0);
  }

  sub_1000E2FA4(v31, v41, type metadata accessor for MessagesToRemoveHelper.Range);
  v46 = v41;
  v47 = v125;
  if ((a6 & 1) != 0 && (*(v46 + *(v44 + 32)) & 1) == 0)
  {
    v48 = v127;
    sub_1000E300C(v127, v28, type metadata accessor for MailboxTaskLogger);
    sub_1000E300C(v48, v25, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v49 = sub_1004A4A54();
    v50 = sub_1004A6014();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v130 = v112;
      *v51 = 68159491;
      v111 = v50;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v52 = v116;
      v53 = v46;
      v54 = &v25[*(v116 + 20)];
      *(v51 + 10) = *v54;
      *(v51 + 11) = 2082;
      v55 = *(v52 + 20);
      v110 = v49;
      v56 = &v28[v55];
      *(v51 + 13) = sub_10015BA6C(*&v28[v55 + 8], *&v28[v55 + 16], &v130);
      *(v51 + 21) = 1040;
      *(v51 + 23) = 2;
      *(v51 + 27) = 512;
      LOWORD(v54) = *(v54 + 12);
      sub_1000E3074(v25, type metadata accessor for MailboxTaskLogger);
      *(v51 + 29) = v54;
      v46 = v53;
      v47 = v125;
      *(v51 + 31) = 2160;
      *(v51 + 33) = 0x786F626C69616DLL;
      *(v51 + 41) = 2085;
      v57 = *(v56 + 4);
      LODWORD(v56) = *(v56 + 10);

      sub_1000E3074(v28, type metadata accessor for MailboxTaskLogger);
      v128 = v57;
      v129 = v56;
      v58 = sub_1004A5824();
      v60 = sub_10015BA6C(v58, v59, &v130);

      *(v51 + 43) = v60;
      *(v51 + 51) = 2048;
      *(v51 + 53) = v117;
      v61 = v110;
      _os_log_impl(&_mh_execute_header, v110, v111, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld, but server never sent a response. rdar://127003347", v51, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000E3074(v25, type metadata accessor for MailboxTaskLogger);

      sub_1000E3074(v28, type metadata accessor for MailboxTaskLogger);
    }
  }

  v62 = v126;
  sub_10000E268(v46 + *(v44 + 20), v126, &qword_1005CD1D0, &unk_1004CF2C0);
  v125 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v13);
  sub_100025F40(v62, &unk_1005D91B0, &unk_1004CF400);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v63 = sub_1004A7044();
  v64 = sub_1004A7074();
  v65 = sub_1004A7044();
  result = sub_1004A7074();
  if (v63 < v65 || result < v63)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v66 = sub_1004A7044();
  v67 = sub_1004A7074();
  result = sub_100025F40(v13, &qword_1005CD7A0, &unk_1004CF590);
  if (v64 < v66 || v67 < v64)
  {
    goto LABEL_25;
  }

  if (__OFSUB__(v64, v63))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (v64 - v63 > 9)
  {
    v68 = v127;
    v93 = v115;
    sub_1000E300C(v127, v115, type metadata accessor for MailboxTaskLogger);
    v94 = v113;
    sub_1000E300C(v68, v113, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v95 = v118;
    sub_1000E300C(v46, v118, type metadata accessor for MessagesToRemoveHelper.Range);
    v73 = sub_1004A4A54();
    v96 = sub_1004A6034();
    if (os_log_type_enabled(v73, v96))
    {
      v97 = swift_slowAlloc();
      v120 = v44;
      v98 = v97;
      v126 = swift_slowAlloc();
      v130 = v126;
      *v98 = 68159747;
      *(v98 + 4) = 2;
      *(v98 + 8) = 256;
      v99 = v116;
      v100 = v94 + *(v116 + 20);
      *(v98 + 10) = *v100;
      *(v98 + 11) = 2082;
      v101 = *(v99 + 20);
      v112 = v46;
      v102 = v93 + v101;
      *(v98 + 13) = sub_10015BA6C(*(v93 + v101 + 8), *(v93 + v101 + 16), &v130);
      *(v98 + 21) = 1040;
      *(v98 + 23) = 2;
      *(v98 + 27) = 512;
      LOWORD(v100) = *(v100 + 24);
      sub_1000E3074(v94, type metadata accessor for MailboxTaskLogger);
      *(v98 + 29) = v100;
      *(v98 + 31) = 2160;
      *(v98 + 33) = 0x786F626C69616DLL;
      *(v98 + 41) = 2085;
      v103 = *(v102 + 32);
      LODWORD(v102) = *(v102 + 40);

      sub_1000E3074(v93, type metadata accessor for MailboxTaskLogger);
      v128 = v103;
      v129 = v102;
      v46 = v112;
      v104 = sub_1004A5824();
      v106 = sub_10015BA6C(v104, v105, &v130);

      *(v98 + 43) = v106;
      *(v98 + 51) = 2048;
      v107 = v118;
      *(v98 + 53) = v117;
      *(v98 + 61) = 2048;
      v108 = MessageIdentifierSet.count.getter();
      sub_1000E3074(v107, type metadata accessor for MessagesToRemoveHelper.Range);
      *(v98 + 63) = v108;
      _os_log_impl(&_mh_execute_header, v73, v96, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld. Got %ld UIDs.", v98, 0x47u);
      swift_arrayDestroy();

      goto LABEL_18;
    }

    sub_1000E3074(v95, type metadata accessor for MessagesToRemoveHelper.Range);
    sub_1000E3074(v94, type metadata accessor for MailboxTaskLogger);

    v109 = v93;
LABEL_21:
    sub_1000E3074(v109, type metadata accessor for MailboxTaskLogger);
    goto LABEL_22;
  }

  v68 = v127;
  v69 = v114;
  sub_1000E300C(v127, v114, type metadata accessor for MailboxTaskLogger);
  sub_1000E300C(v68, v47, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v70 = v119;
  sub_1000E300C(v46, v119, type metadata accessor for MessagesToRemoveHelper.Range);
  v71 = v47;
  v72 = v120;
  sub_1000E300C(v46, v120, type metadata accessor for MessagesToRemoveHelper.Range);
  v73 = sub_1004A4A54();
  v74 = sub_1004A6034();
  if (!os_log_type_enabled(v73, v74))
  {
    sub_1000E3074(v72, type metadata accessor for MessagesToRemoveHelper.Range);
    sub_1000E3074(v71, type metadata accessor for MailboxTaskLogger);

    sub_1000E3074(v70, type metadata accessor for MessagesToRemoveHelper.Range);
    v109 = v69;
    goto LABEL_21;
  }

  v75 = swift_slowAlloc();
  v118 = swift_slowAlloc();
  v130 = v118;
  *v75 = 68160003;
  LODWORD(v115) = v74;
  *(v75 + 4) = 2;
  *(v75 + 8) = 256;
  v76 = v116;
  v77 = *(v116 + 20);
  v112 = v46;
  v78 = v71 + v77;
  *(v75 + 10) = *(v71 + v77);
  *(v75 + 11) = 2082;
  v79 = v69;
  v80 = v69 + *(v76 + 20);
  *(v75 + 13) = sub_10015BA6C(*(v80 + 8), *(v80 + 16), &v130);
  *(v75 + 21) = 1040;
  *(v75 + 23) = 2;
  *(v75 + 27) = 512;
  LOWORD(v78) = *(v78 + 24);
  sub_1000E3074(v71, type metadata accessor for MailboxTaskLogger);
  *(v75 + 29) = v78;
  *(v75 + 31) = 2160;
  *(v75 + 33) = 0x786F626C69616DLL;
  *(v75 + 41) = 2085;
  v81 = *(v80 + 32);
  LODWORD(v80) = *(v80 + 40);

  sub_1000E3074(v79, type metadata accessor for MailboxTaskLogger);
  v128 = v81;
  v129 = v80;
  v82 = sub_1004A5824();
  v84 = sub_10015BA6C(v82, v83, &v130);

  *(v75 + 43) = v84;
  *(v75 + 51) = 2048;
  *(v75 + 53) = v117;
  *(v75 + 61) = 2082;
  v85 = v119;
  v86 = v126;
  sub_10000E268(v119 + *(v44 + 20), v126, &qword_1005CD1D0, &unk_1004CF2C0);
  v87 = MessageIdentifierSet.debugDescription.getter();
  v89 = v88;
  sub_1000E3074(v85, type metadata accessor for MessagesToRemoveHelper.Range);
  sub_100025F40(v86, &unk_1005D91B0, &unk_1004CF400);
  v90 = sub_10015BA6C(v87, v89, &v130);
  v68 = v127;

  *(v75 + 63) = v90;
  *(v75 + 71) = 2048;
  v46 = v112;
  v91 = v120;
  v92 = MessageIdentifierSet.count.getter();
  sub_1000E3074(v91, type metadata accessor for MessagesToRemoveHelper.Range);
  *(v75 + 73) = v92;
  _os_log_impl(&_mh_execute_header, v73, v115, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld %{public}s. Got %ld UIDs.", v75, 0x51u);
  swift_arrayDestroy();

LABEL_18:

LABEL_22:
  sub_1000112D4(v68, v121, v122, v123, v124);
  return sub_1000E3074(v46, type metadata accessor for MessagesToRemoveHelper.Range);
}

void sub_1000DE294(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v235 = a6;
  v241 = a4;
  v236 = a3;
  v233 = a2;
  v8 = sub_10000C9C0(&qword_1005CD798, &unk_1004D3640);
  __chkstk_darwin(v8 - 8);
  v231 = &v211 - v9;
  v10 = _s15MissingMessagesO10NewMissingVMa(0);
  v229 = *(v10 - 8);
  v230 = v10;
  __chkstk_darwin(v10);
  v221 = &v211 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v220 = &v211 - v13;
  __chkstk_darwin(v14);
  v219 = &v211 - v15;
  __chkstk_darwin(v16);
  v226 = &v211 - v17;
  v240 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v240);
  v19 = &v211 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v211 - v21;
  __chkstk_darwin(v23);
  v237 = &v211 - v24;
  __chkstk_darwin(v25);
  v238 = &v211 - v26;
  __chkstk_darwin(v27);
  v227 = &v211 - v28;
  __chkstk_darwin(v29);
  v31 = &v211 - v30;
  __chkstk_darwin(v32);
  v218 = &v211 - v33;
  __chkstk_darwin(v34);
  v225 = &v211 - v35;
  __chkstk_darwin(v36);
  v216 = &v211 - v37;
  __chkstk_darwin(v38);
  v217 = &v211 - v39;
  __chkstk_darwin(v40);
  v222 = &v211 - v41;
  __chkstk_darwin(v42);
  v224 = &v211 - v43;
  __chkstk_darwin(v44);
  v46 = &v211 - v45;
  __chkstk_darwin(v47);
  v223 = &v211 - v48;
  v49 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v49 - 8);
  v51 = &v211 - v50;
  v234 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v234);
  v239 = &v211 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  __chkstk_darwin(v54);
  v56 = &v211 - v55;
  __chkstk_darwin(v57);
  __chkstk_darwin(v58);
  v60 = &v211 - v59;
  __chkstk_darwin(v61);
  v65 = &v211 - v62;
  if (*(a5 + 16))
  {
    v213 = v64;
    v214 = v63;
    v228 = a1;
    v215 = v31;
    sub_1000DFE98(a5, &v211 - v62);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v66 = sub_1004A70C4();
    v67 = v65;
    v68 = a5;
    v232 = v65;
    if (v66)
    {
      goto LABEL_22;
    }

    v212 = a5;
    MessageIdentifierSet.ranges.getter(v51);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v69 = sub_1004A7044();
    v70 = sub_1004A7074();
    v71 = sub_1004A7044();
    v72 = sub_1004A7074();
    if (v69 < v71 || v72 < v69)
    {
      __break(1u);
    }

    else
    {
      v73 = sub_1004A7044();
      v74 = sub_1004A7074();
      sub_100025F40(v51, &qword_1005CD7A0, &unk_1004CF590);
      if (v70 >= v73 && v74 >= v70)
      {
        if (!__OFSUB__(v70, v69))
        {
          if (v70 - v69 > 19)
          {
            v107 = v241;
            v108 = v224;
            sub_1000E300C(v241, v224, type metadata accessor for MailboxTaskLogger);
            v109 = v222;
            sub_1000E300C(v107, v222, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v67 = v232;
            sub_10000E268(v232, v56, &unk_1005D91B0, &unk_1004CF400);
            v110 = v214;
            sub_10000E268(v67, v214, &unk_1005D91B0, &unk_1004CF400);
            v111 = sub_1004A4A54();
            v112 = sub_1004A6034();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = v109;
              v114 = swift_slowAlloc();
              v223 = swift_slowAlloc();
              v244 = v223;
              *v114 = 68159747;
              *(v114 + 4) = 2;
              *(v114 + 8) = 256;
              v115 = v240;
              v116 = v113 + *(v240 + 20);
              *(v114 + 10) = *v116;
              *(v114 + 11) = 2082;
              v117 = v108 + *(v115 + 20);
              *(v114 + 13) = sub_10015BA6C(*(v117 + 8), *(v117 + 16), &v244);
              *(v114 + 21) = 1040;
              *(v114 + 23) = 2;
              *(v114 + 27) = 512;
              LOWORD(v116) = *(v116 + 24);
              sub_1000E3074(v113, type metadata accessor for MailboxTaskLogger);
              *(v114 + 29) = v116;
              *(v114 + 31) = 2160;
              *(v114 + 33) = 0x786F626C69616DLL;
              *(v114 + 41) = 2085;
              v118 = *(v117 + 32);
              LODWORD(v117) = *(v117 + 40);

              sub_1000E3074(v108, type metadata accessor for MailboxTaskLogger);
              v242 = v118;
              v243 = v117;
              v119 = sub_1004A5824();
              v121 = sub_10015BA6C(v119, v120, &v244);

              *(v114 + 43) = v121;
              *(v114 + 51) = 2048;
              v122 = v234;
              v123 = MessageIdentifierSet.count.getter();
              sub_100025F40(v56, &unk_1005D91B0, &unk_1004CF400);
              *(v114 + 53) = v123;
              *(v114 + 61) = 2082;
              v124 = v239;
              MessageIdentifierSet.suffix(_:)(20, v122, v239);
              v125 = MessageIdentifierSet.debugDescription.getter();
              v127 = v126;
              sub_100025F40(v124, &unk_1005D91B0, &unk_1004CF400);
              v67 = v232;
              sub_100025F40(v110, &unk_1005D91B0, &unk_1004CF400);
              v128 = sub_10015BA6C(v125, v127, &v244);

              *(v114 + 63) = v128;
              _os_log_impl(&_mh_execute_header, v111, v112, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: ... %{public}s", v114, 0x47u);
              swift_arrayDestroy();

              goto LABEL_21;
            }

            sub_100025F40(v56, &unk_1005D91B0, &unk_1004CF400);
            sub_1000E3074(v109, type metadata accessor for MailboxTaskLogger);

            sub_100025F40(v110, &unk_1005D91B0, &unk_1004CF400);
            v129 = v108;
          }

          else
          {
            v75 = v241;
            v76 = v223;
            sub_1000E300C(v241, v223, type metadata accessor for MailboxTaskLogger);
            sub_1000E300C(v75, v46, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v67 = v232;
            sub_10000E268(v232, v60, &unk_1005D91B0, &unk_1004CF400);
            v77 = v213;
            sub_10000E268(v67, v213, &unk_1005D91B0, &unk_1004CF400);
            v78 = sub_1004A4A54();
            v79 = sub_1004A6034();
            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v224 = swift_slowAlloc();
              v244 = v224;
              *v80 = 68159747;
              *(v80 + 4) = 2;
              *(v80 + 8) = 256;
              v81 = v240;
              v82 = &v46[*(v240 + 20)];
              *(v80 + 10) = *v82;
              *(v80 + 11) = 2082;
              v83 = v76 + *(v81 + 20);
              *(v80 + 13) = sub_10015BA6C(*(v83 + 8), *(v83 + 16), &v244);
              *(v80 + 21) = 1040;
              *(v80 + 23) = 2;
              *(v80 + 27) = 512;
              LOWORD(v82) = *(v82 + 12);
              sub_1000E3074(v46, type metadata accessor for MailboxTaskLogger);
              *(v80 + 29) = v82;
              *(v80 + 31) = 2160;
              *(v80 + 33) = 0x786F626C69616DLL;
              *(v80 + 41) = 2085;
              v84 = *(v83 + 32);
              LODWORD(v82) = *(v83 + 40);

              sub_1000E3074(v76, type metadata accessor for MailboxTaskLogger);
              v242 = v84;
              v243 = v82;
              v85 = sub_1004A5824();
              v87 = sub_10015BA6C(v85, v86, &v244);

              *(v80 + 43) = v87;
              *(v80 + 51) = 2048;
              v88 = MessageIdentifierSet.count.getter();
              sub_100025F40(v60, &unk_1005D91B0, &unk_1004CF400);
              *(v80 + 53) = v88;
              *(v80 + 61) = 2082;
              v89 = MessageIdentifierSet.debugDescription.getter();
              v91 = v90;
              v67 = v232;
              sub_100025F40(v77, &unk_1005D91B0, &unk_1004CF400);
              v92 = sub_10015BA6C(v89, v91, &v244);

              *(v80 + 63) = v92;
              _os_log_impl(&_mh_execute_header, v78, v79, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: %{public}s", v80, 0x47u);
              swift_arrayDestroy();

LABEL_21:
              v68 = v212;
LABEL_22:
              v130 = v235;
              v131 = HIDWORD(v235) & 1;
              v132 = v239;
              v133 = sub_1000E1570(v68, v235 | (v131 << 32));
              __chkstk_darwin(v133);
              *(&v211 - 2) = v132;
              v134 = sub_1000DCD18(0, sub_10002A5BC, (&v211 - 4), v68);
              sub_100025F40(v132, &unk_1005D91B0, &unk_1004CF400);
              v136 = v237;
              v135 = v238;
              v137 = v228;
              if (v134 < 1)
              {
                goto LABEL_25;
              }

              v138 = v130 | (v131 << 32);
              v139 = v231;
              sub_1000E0110(0x455, v68, v138, v231);
              if ((*(v229 + 48))(v139, 1, v230) == 1)
              {
                sub_100025F40(v139, &qword_1005CD798, &unk_1004D3640);
LABEL_25:
                if (v236)
                {
LABEL_26:
                  v140 = v241;
                  sub_1000E300C(v241, v135, type metadata accessor for MailboxTaskLogger);
                  sub_1000E300C(v140, v136, type metadata accessor for MailboxTaskLogger);
                  variable initialization expression of Engine.isProcessingUpdates();
                  variable initialization expression of Engine.isProcessingUpdates();
                  variable initialization expression of Engine.isProcessingUpdates();
                  variable initialization expression of Engine.isProcessingUpdates();
                  variable initialization expression of Engine.isProcessingUpdates();
                  variable initialization expression of Engine.isProcessingUpdates();
                  v141 = sub_1004A4A54();
                  v142 = sub_1004A6034();
                  if (os_log_type_enabled(v141, v142))
                  {
                    v143 = swift_slowAlloc();
                    v244 = swift_slowAlloc();
                    *v143 = 68159235;
                    *(v143 + 4) = 2;
                    *(v143 + 8) = 256;
                    v144 = v240;
                    v145 = v136 + *(v240 + 20);
                    *(v143 + 10) = *v145;
                    *(v143 + 11) = 2082;
                    v146 = v135 + *(v144 + 20);
                    *(v143 + 13) = sub_10015BA6C(*(v146 + 8), *(v146 + 16), &v244);
                    *(v143 + 21) = 1040;
                    *(v143 + 23) = 2;
                    *(v143 + 27) = 512;
                    LOWORD(v145) = *(v145 + 24);
                    sub_1000E3074(v136, type metadata accessor for MailboxTaskLogger);
                    *(v143 + 29) = v145;
                    *(v143 + 31) = 2160;
                    *(v143 + 33) = 0x786F626C69616DLL;
                    *(v143 + 41) = 2085;
                    v147 = *(v146 + 32);
                    LODWORD(v146) = *(v146 + 40);

                    sub_1000E3074(v135, type metadata accessor for MailboxTaskLogger);
                    v242 = v147;
                    v243 = v146;
                    v148 = sub_1004A5824();
                    v150 = sub_10015BA6C(v148, v149, &v244);

                    *(v143 + 43) = v150;
                    _os_log_impl(&_mh_execute_header, v141, v142, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did not remove any pending expunge.", v143, 0x33u);
                    swift_arrayDestroy();

LABEL_45:
                    v210 = v67;
                    goto LABEL_46;
                  }

                  sub_1000E3074(v136, type metadata accessor for MailboxTaskLogger);

                  v171 = v135;
LABEL_44:
                  sub_1000E3074(v171, type metadata accessor for MailboxTaskLogger);
                  goto LABEL_45;
                }

LABEL_39:
                v195 = v137 + *(type metadata accessor for MailboxSyncState(0) + 48);
                sub_1000FFB58(v233);
                v196 = *(v195 + 40);
                if ((*(v195 + 48) & 1) == 0)
                {
                  v196 = *(v196 + 16);
                }

                v197 = v227;
                v198 = v241;
                v199 = v215;
                sub_1000E300C(v241, v215, type metadata accessor for MailboxTaskLogger);
                sub_1000E300C(v198, v197, type metadata accessor for MailboxTaskLogger);
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                v200 = sub_1004A4A54();
                v201 = sub_1004A6034();
                if (os_log_type_enabled(v200, v201))
                {
                  v202 = swift_slowAlloc();
                  v244 = swift_slowAlloc();
                  *v202 = 68159747;
                  *(v202 + 4) = 2;
                  *(v202 + 8) = 256;
                  v203 = v240;
                  v204 = v197 + *(v240 + 20);
                  *(v202 + 10) = *v204;
                  *(v202 + 11) = 2082;
                  v205 = v199 + *(v203 + 20);
                  *(v202 + 13) = sub_10015BA6C(*(v205 + 8), *(v205 + 16), &v244);
                  *(v202 + 21) = 1040;
                  *(v202 + 23) = 2;
                  *(v202 + 27) = 512;
                  LOWORD(v204) = *(v204 + 24);
                  sub_1000E3074(v197, type metadata accessor for MailboxTaskLogger);
                  *(v202 + 29) = v204;
                  *(v202 + 31) = 2160;
                  *(v202 + 33) = 0x786F626C69616DLL;
                  *(v202 + 41) = 2085;
                  v206 = *(v205 + 32);
                  LODWORD(v205) = *(v205 + 40);

                  sub_1000E3074(v199, type metadata accessor for MailboxTaskLogger);
                  v242 = v206;
                  v243 = v205;
                  v207 = sub_1004A5824();
                  v209 = sub_10015BA6C(v207, v208, &v244);

                  *(v202 + 43) = v209;
                  *(v202 + 51) = 2048;
                  *(v202 + 53) = v233;
                  *(v202 + 61) = 2048;
                  *(v202 + 63) = v196;
                  _os_log_impl(&_mh_execute_header, v200, v201, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld pending expunge, %ld remaining.", v202, 0x47u);
                  swift_arrayDestroy();

                  v210 = v232;
LABEL_46:
                  sub_100025F40(v210, &unk_1005D91B0, &unk_1004CF400);
                  return;
                }

                sub_1000E3074(v197, type metadata accessor for MailboxTaskLogger);

                v171 = v199;
                goto LABEL_44;
              }

              v151 = v226;
              sub_1000E2FA4(v139, v226, _s15MissingMessagesO10NewMissingVMa);
              if (v134 > 0x13)
              {
                v172 = v241;
                sub_1000E300C(v241, v225, type metadata accessor for MailboxTaskLogger);
                v173 = v218;
                sub_1000E300C(v172, v218, type metadata accessor for MailboxTaskLogger);
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                v174 = v220;
                sub_1000E300C(v151, v220, _s15MissingMessagesO10NewMissingVMa);
                v175 = v221;
                sub_1000E300C(v151, v221, _s15MissingMessagesO10NewMissingVMa);
                v156 = sub_1004A4A54();
                v176 = sub_1004A6014();
                if (os_log_type_enabled(v156, v176))
                {
                  v177 = swift_slowAlloc();
                  v235 = swift_slowAlloc();
                  v244 = v235;
                  *v177 = 68160003;
                  LODWORD(v231) = v176;
                  *(v177 + 4) = 2;
                  *(v177 + 8) = 256;
                  v178 = v240;
                  v179 = v174;
                  v180 = v173 + *(v240 + 20);
                  *(v177 + 10) = *v180;
                  *(v177 + 11) = 2082;
                  v181 = v225;
                  v182 = v225 + *(v178 + 20);
                  *(v177 + 13) = sub_10015BA6C(*(v182 + 8), *(v182 + 16), &v244);
                  *(v177 + 21) = 1040;
                  *(v177 + 23) = 2;
                  *(v177 + 27) = 512;
                  LOWORD(v180) = *(v180 + 24);
                  sub_1000E3074(v173, type metadata accessor for MailboxTaskLogger);
                  *(v177 + 29) = v180;
                  *(v177 + 31) = 2160;
                  *(v177 + 33) = 0x786F626C69616DLL;
                  *(v177 + 41) = 2085;
                  v183 = *(v182 + 32);
                  LODWORD(v182) = *(v182 + 40);

                  sub_1000E3074(v181, type metadata accessor for MailboxTaskLogger);
                  v242 = v183;
                  v243 = v182;
                  v135 = v238;
                  v184 = sub_1004A5824();
                  v186 = sub_10015BA6C(v184, v185, &v244);

                  *(v177 + 43) = v186;
                  *(v177 + 51) = 2048;
                  *(v177 + 53) = v134;
                  *(v177 + 61) = 2048;
                  v187 = v234;
                  v188 = MessageIdentifierSet.count.getter();
                  sub_1000E3074(v179, _s15MissingMessagesO10NewMissingVMa);
                  *(v177 + 63) = v188;
                  *(v177 + 71) = 2082;
                  v136 = v237;
                  v189 = v239;
                  MessageIdentifierSet.suffix(_:)(20, v187, v239);
                  v190 = MessageIdentifierSet.debugDescription.getter();
                  v192 = v191;
                  sub_100025F40(v189, &unk_1005D91B0, &unk_1004CF400);
                  sub_1000E3074(v175, _s15MissingMessagesO10NewMissingVMa);
                  v193 = sub_10015BA6C(v190, v192, &v244);

                  *(v177 + 73) = v193;
                  _os_log_impl(&_mh_execute_header, v156, v231, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs, adding %ld UIDs as missing: ... %{public}s", v177, 0x51u);
                  swift_arrayDestroy();
                  goto LABEL_34;
                }

                sub_1000E3074(v174, _s15MissingMessagesO10NewMissingVMa);
                sub_1000E3074(v173, type metadata accessor for MailboxTaskLogger);

                sub_1000E3074(v175, _s15MissingMessagesO10NewMissingVMa);
                v194 = v225;
              }

              else
              {
                v152 = v241;
                v153 = v217;
                sub_1000E300C(v241, v217, type metadata accessor for MailboxTaskLogger);
                v154 = v216;
                sub_1000E300C(v152, v216, type metadata accessor for MailboxTaskLogger);
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                v155 = v219;
                sub_1000E300C(v151, v219, _s15MissingMessagesO10NewMissingVMa);
                v156 = sub_1004A4A54();
                v157 = sub_1004A6014();
                if (os_log_type_enabled(v156, v157))
                {
                  v158 = swift_slowAlloc();
                  v244 = swift_slowAlloc();
                  *v158 = 68159747;
                  LODWORD(v239) = v157;
                  *(v158 + 4) = 2;
                  *(v158 + 8) = 256;
                  v159 = v240;
                  v160 = v153;
                  v161 = v154 + *(v240 + 20);
                  *(v158 + 10) = *v161;
                  *(v158 + 11) = 2082;
                  v162 = v160 + *(v159 + 20);
                  *(v158 + 13) = sub_10015BA6C(*(v162 + 8), *(v162 + 16), &v244);
                  *(v158 + 21) = 1040;
                  *(v158 + 23) = 2;
                  *(v158 + 27) = 512;
                  LOWORD(v161) = *(v161 + 24);
                  sub_1000E3074(v154, type metadata accessor for MailboxTaskLogger);
                  *(v158 + 29) = v161;
                  *(v158 + 31) = 2160;
                  *(v158 + 33) = 0x786F626C69616DLL;
                  *(v158 + 41) = 2085;
                  v163 = *(v162 + 32);
                  LODWORD(v162) = *(v162 + 40);

                  sub_1000E3074(v160, type metadata accessor for MailboxTaskLogger);
                  v242 = v163;
                  v243 = v162;
                  v135 = v238;
                  v164 = sub_1004A5824();
                  v166 = sub_10015BA6C(v164, v165, &v244);

                  *(v158 + 43) = v166;
                  *(v158 + 51) = 2048;
                  *(v158 + 53) = v134;
                  *(v158 + 61) = 2082;
                  v136 = v237;
                  v167 = MessageIdentifierSet.debugDescription.getter();
                  v169 = v168;
                  sub_1000E3074(v155, _s15MissingMessagesO10NewMissingVMa);
                  v170 = sub_10015BA6C(v167, v169, &v244);

                  *(v158 + 63) = v170;
                  _os_log_impl(&_mh_execute_header, v156, v239, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs: %{public}s", v158, 0x47u);
                  swift_arrayDestroy();
LABEL_34:
                  v151 = v226;

                  v137 = v228;

                  goto LABEL_38;
                }

                sub_1000E3074(v154, type metadata accessor for MailboxTaskLogger);

                sub_1000E3074(v155, _s15MissingMessagesO10NewMissingVMa);
                v194 = v153;
              }

              sub_1000E3074(v194, type metadata accessor for MailboxTaskLogger);
LABEL_38:
              type metadata accessor for MailboxSyncState(0);
              sub_1000E3CF8(v151);
              sub_1000E3074(v151, _s15MissingMessagesO10NewMissingVMa);
              v67 = v232;
              if (v236)
              {
                goto LABEL_26;
              }

              goto LABEL_39;
            }

            sub_100025F40(v60, &unk_1005D91B0, &unk_1004CF400);
            sub_1000E3074(v46, type metadata accessor for MailboxTaskLogger);

            sub_100025F40(v77, &unk_1005D91B0, &unk_1004CF400);
            v129 = v76;
          }

          sub_1000E3074(v129, type metadata accessor for MailboxTaskLogger);
          goto LABEL_21;
        }

LABEL_50:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v93 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v94 = *(v93 + 40);
  v95 = v94;
  if ((*(v93 + 48) & 1) == 0)
  {
    v95 = *(v94 + 16);
  }

  sub_10002A758(v94, *(v93 + 48));
  *(v93 + 40) = _swiftEmptyArrayStorage;
  *(v93 + 48) = 0;
  v96 = v241;
  sub_1000E300C(v241, v22, type metadata accessor for MailboxTaskLogger);
  sub_1000E300C(v96, v19, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v97 = sub_1004A4A54();
  v98 = sub_1004A6034();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v244 = swift_slowAlloc();
    *v99 = 68159491;
    *(v99 + 4) = 2;
    *(v99 + 8) = 256;
    v100 = v240;
    v101 = &v19[*(v240 + 20)];
    *(v99 + 10) = *v101;
    *(v99 + 11) = 2082;
    v102 = &v22[*(v100 + 20)];
    *(v99 + 13) = sub_10015BA6C(*(v102 + 1), *(v102 + 2), &v244);
    *(v99 + 21) = 1040;
    *(v99 + 23) = 2;
    *(v99 + 27) = 512;
    LOWORD(v101) = *(v101 + 12);
    sub_1000E3074(v19, type metadata accessor for MailboxTaskLogger);
    *(v99 + 29) = v101;
    *(v99 + 31) = 2160;
    *(v99 + 33) = 0x786F626C69616DLL;
    *(v99 + 41) = 2085;
    v103 = *(v102 + 4);
    LODWORD(v101) = *(v102 + 10);

    sub_1000E3074(v22, type metadata accessor for MailboxTaskLogger);
    v242 = v103;
    v243 = v101;
    v104 = sub_1004A5824();
    v106 = sub_10015BA6C(v104, v105, &v244);

    *(v99 + 43) = v106;
    *(v99 + 51) = 2048;
    *(v99 + 53) = v95;
    _os_log_impl(&_mh_execute_header, v97, v98, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Local mailbox is empty. Removed %ld pending expunge.", v99, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000E3074(v19, type metadata accessor for MailboxTaskLogger);

    sub_1000E3074(v22, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1000DFE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  v22 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v22);
  v9 = v21 - v8;
  v10 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016D2C();
  v23 = a2;
  result = sub_1004A7114();
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(v10 + 28);
    v21[0] = *(v10 + 24);
    v21[1] = v16;
    v17 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = v5;
    v19 = *(v11 + 72);
    v20 = (v18 + 16);
    do
    {
      sub_1000E300C(v17, v13, type metadata accessor for MessagesToRemoveHelper.Range);
      MessageIdentifierSet.subtracting(_:)(&v13[v21[0]], v9);
      (*v20)(v7, v9, v4);
      sub_1004A7104();
      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
      result = sub_1000E3074(v13, type metadata accessor for MessagesToRemoveHelper.Range);
      v17 += v19;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1000E0110@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesO10NewMissingVMa(0);
  v28 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  __chkstk_darwin(v19);
  v21 = &v28 - v20;
  sub_1000E1570(a2, a3 | ((HIDWORD(a3) & 1) << 32));
  sub_100016D2C();
  sub_1004A7114();
  sub_1004A7114();
  sub_100025FDC(v15, v9, &unk_1005D91B0, &unk_1004CF400);
  sub_100025FDC(v18, v12, &unk_1005D91B0, &unk_1004CF400);
  v22 = &v12[*(v10 + 20)];
  *v22 = 0;
  v22[4] = 1;
  *(v22 + 2) = 0;
  v22[12] = 1;
  *(v22 + 4) = 0;
  v22[20] = 1;
  sub_1000E2FA4(v9, &v12[*(v10 + 24)], _s15MissingMessagesO11QueriedUIDsVMa);
  v23 = 0;
  v24 = *(a2 + 16);
  while (v24 != v23)
  {
    v25 = *(type metadata accessor for MessagesToRemoveHelper.Range(0) - 8);
    sub_1000E186C(v12, a2 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23++, a1, v21);
  }

  v26 = v29;
  sub_1000E2FA4(v12, v29, _s15MissingMessagesO10NewMissingVMa);
  (*(v28 + 56))(v26, 0, 1, v10);
  return sub_100025F40(v21, &unk_1005D91B0, &unk_1004CF400);
}

Swift::Int sub_1000E0488(uint64_t a1)
{
  sub_1004A6E94();
  sub_1004A6EB4(*v1);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  sub_1004A5564();
  sub_1004A5564();
  sub_1004A6EC4(*(v1 + *(a1 + 32)));
  return sub_1004A6F14();
}

void sub_1000E055C(uint64_t a1, uint64_t a2)
{
  sub_1004A6EB4(*v2);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  sub_1004A5564();
  sub_1004A5564();
  sub_1004A6EC4(*(v2 + *(a2 + 32)));
}

Swift::Int sub_1000E0618(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  sub_1004A6EB4(*v2);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  sub_1004A5564();
  sub_1004A5564();
  sub_1004A6EC4(*(v2 + *(a2 + 32)));
  return sub_1004A6F14();
}

void *sub_1000E06EC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_1000E06FC()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1000E0770(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

uint64_t sub_1000E07B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  v12 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v17 - v13;
  sub_10000E268(a2, &v17 - v13, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100016D2C();
  sub_1004A7114();
  sub_1004A7114();
  *a3 = a1;
  v15 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  sub_100025FDC(v14, a3 + v15[5], &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100025FDC(v11, a3 + v15[6], &unk_1005D91B0, &unk_1004CF400);
  result = sub_100025FDC(v8, a3 + v15[7], &unk_1005D91B0, &unk_1004CF400);
  *(a3 + v15[8]) = 0;
  return result;
}

uint64_t sub_1000E0974@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v3 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v3 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v32 = *(type metadata accessor for MessagesToRemoveHelper.Range(0) + 20);
  v33 = a1;
  sub_10000E268(a1 + v32, v10, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100025FDC(v10, v13, &unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v7);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v14 = sub_1004A7044();
  v15 = sub_1004A7074();
  v16 = sub_1004A7044();
  result = sub_1004A7074();
  if (v14 < v16 || result < v14)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = sub_1004A7044();
  v20 = sub_1004A7074();
  result = sub_100025F40(v7, &qword_1005CD7A0, &unk_1004CF590);
  if (v15 < v19 || v20 < v15)
  {
    goto LABEL_17;
  }

  if (__OFSUB__(v15, v14))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 - v14 <= 1)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
LABEL_15:
    sub_1004A6934();
    v27 = v35;
    v28 = v36;
    v29 = v34;
    result = sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
    *v29 = v27;
    v29[1] = v28;
    return result;
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_10000E268(v33 + v32, v10, &qword_1005CD1D0, &unk_1004CF2C0);
  v22 = MessageIdentifierSet.count.getter();
  sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
  v37 = v22;
  v38._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v38);

  v39._countAndFlagsBits = 544106784;
  v39._object = 0xE400000000000000;
  sub_1004A5994(v39);
  result = sub_1000E5314();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_19;
  }

  LODWORD(v37) = result;
  sub_1004A6934();
  v40._countAndFlagsBits = 58;
  v40._object = 0xE100000000000000;
  sub_1004A5994(v40);
  v23 = v31;
  MessageIdentifierSet.ranges.getter(v31);
  v24 = sub_1000E4C0C();
  v26 = v25;
  result = sub_100025F40(v23, &qword_1005CD7A0, &unk_1004CF590);
  if ((v26 & 1) == 0)
  {
    LODWORD(v37) = HIDWORD(v24);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}