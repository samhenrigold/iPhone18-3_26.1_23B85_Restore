BOOL sub_1002B1A48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a4 != a1)
  {
    return 0;
  }

  if (BYTE4(a1) == 2)
  {
    if (BYTE4(a4) != 2)
    {
      return 0;
    }
  }

  else
  {
    if (BYTE4(a4) == 2)
    {
      return 0;
    }

    v6 = a3;
    v7 = a6;
    v8 = sub_1002BE1D4(__PAIR64__(a2, HIDWORD(a1)) & 0xFFFFFFFF01010101, SHIDWORD(a2), __PAIR64__(a5, HIDWORD(a4)) & 0xFFFFFFFF01010101, SHIDWORD(a5));
    a3 = v6;
    a6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    v9 = a6;
    v10 = a3;

    LOBYTE(v10) = sub_100083478(v10, v9);

    return (v10 & 1) != 0;
  }

  return !a6;
}

uint64_t sub_1002B1B1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  result = 0;
  if (a1 == a5 && a6 == a2)
  {
    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a3 == a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1002B1B64()
{
  result = qword_1005D6D08;
  if (!qword_1005D6D08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Action.Kind, &type metadata for Action.Kind, v0, v1);
    atomic_store(result, &qword_1005D6D08);
  }

  return result;
}

unint64_t sub_1002B1BBC()
{
  result = qword_1005D6D10;
  if (!qword_1005D6D10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionID, &type metadata for ActionID, v0, v1);
    atomic_store(result, &qword_1005D6D10);
  }

  return result;
}

uint64_t sub_1002B1C10(void *a1)
{
  if (*a1 >> 60 <= 0xAuLL)
  {
    return (*a1 >> 58) & 0x3C | (*a1 >> 1) & 3;
  }

  else
  {
    return (*a1 >> 3) + 44;
  }
}

uint64_t sub_1002B1C38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x54 && *(a1 + 8))
  {
    return (*a1 + 84);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x53)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002B1C94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x53)
  {
    *result = a2 - 84;
    if (a3 >= 0x54)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x54)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1002B1CF8(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x2C)
  {
    *result = ((a2 << 58) | (2 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 44)) | 0xB000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Action.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Action.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002B1EA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002B1EC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for MailboxSyncStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Action.UnreadCountOutsideWindowOfInterest(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 26))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Action.UnreadCountOutsideWindowOfInterest(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

  *(result + 26) = v3;
  return result;
}

uint64_t sub_1002B1FA4(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002B1FC0(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 25) = 1;
  }

  else
  {
    *(result + 25) = 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Action.FetchedWindowUpdate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

uint64_t sub_1002B2044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B20AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Activity.init(mailboxesWithPendingWork:accountError:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = sub_1002AE6E4(_swiftEmptyArrayStorage);
  v6 = *(type metadata accessor for Activity(0) + 24);
  v7 = type metadata accessor for ConnectionStatus.Error(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  a3[1] = a1;

  return sub_10024DB8C(a2, a3 + v6);
}

uint64_t Activity.MailboxStatus.Info.fetch.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t Activity.MailboxStatus.Info.FetchProgress.total.getter(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t static Activity.MailboxStatus.Info.__derived_struct_equals(_:_:)(int a1, uint64_t a2, uint64_t a3, __int16 a4, int a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if ((a1 ^ a5))
  {
    return 0;
  }

  if (a4)
  {
    if ((a8 & 1) == 0)
    {
      return 0;
    }

    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  result = 0;
  if ((a8 & 1) == 0 && a2 == a6 && a3 == a7)
  {
    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  return result;
}

uint64_t sub_1002B2288(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[25];
  if (a1[24])
  {
    if (!a2[24])
    {
      return 0;
    }

    return v3 ^ a2[25] ^ 1u;
  }

  result = 0;
  if ((a2[24] & 1) == 0)
  {
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
    if (v5 == *(a2 + 1) && v6 == *(a2 + 2))
    {
      return v3 ^ a2[25] ^ 1u;
    }
  }

  return result;
}

uint64_t Activity.MailboxStatus.isSelectedAndInSync.getter()
{
  v1 = type metadata accessor for Activity.MailboxStatus(0);
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002B4AFC(v0, v3, type metadata accessor for Activity.MailboxStatus);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1002B4A9C(v3, type metadata accessor for Activity.MailboxStatus);
  }

  else if ((*v3 & 1) == 0)
  {
    v4 = (v3[24] | (*(v3 + 1) == 0)) & (v3[25] ^ 1);
    return v4 & 1;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t Activity.subscript.getter@<X0>(uint64_t a1@<X0>, Swift::UInt a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = a2;
  v5 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for ConnectionStatus.Error(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Activity.MailboxStatus(0);
  v12 = *(v30 - 8);
  __chkstk_darwin(v30);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = v3;
  v19 = *v3;
  if (*(v19 + 16))
  {
    v20 = sub_100063C84(a1, v32);
    if (v21)
    {
      sub_1002B4AFC(*(v19 + 56) + *(v12 + 72) * v20, v14, type metadata accessor for Activity.MailboxStatus);
      sub_1002B4A34(v14, v17, type metadata accessor for Activity.MailboxStatus);
      v22 = v31;
      sub_1002B4A34(v17, v31, type metadata accessor for Activity.MailboxStatus);
      v23 = 0;
LABEL_10:
      v27 = v30;
      return (*(v12 + 56))(v22, v23, 1, v27);
    }
  }

  v24 = v32;
  v25 = type metadata accessor for Activity(0);
  sub_10000E268(v18 + *(v25 + 24), v7, &qword_1005CCEB0, &qword_1004E9140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100025F40(v7, &qword_1005CCEB0, &qword_1004E9140);
    v26 = sub_10001284C(a1, v24, v18[1]);
    v22 = v31;
    if ((v26 & 1) == 0)
    {
      v23 = 1;
      goto LABEL_10;
    }

    v27 = v30;
  }

  else
  {
    sub_1002B4A34(v7, v11, type metadata accessor for ConnectionStatus.Error);
    v22 = v31;
    sub_1002B4A34(v11, v31, type metadata accessor for ConnectionStatus.Error);
    v27 = v30;
  }

  swift_storeEnumTagMultiPayload();
  v23 = 0;
  return (*(v12 + 56))(v22, v23, 1, v27);
}

uint64_t Activity.subscript.setter(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  v18 = a3;
  v5 = sub_10000C9C0(qword_1005CCEE8, &unk_1004CDBA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for Activity.MailboxStatus(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E268(a1, v10, qword_1005CCEE8, &unk_1004CDBA0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100025F40(v10, qword_1005CCEE8, &unk_1004CDBA0);
    (*(v12 + 56))(v7, 1, 1, v11);

    v15 = v18;
    sub_1002B29C8(v7, a2, v18);
    sub_100140D50(a2, v15);

    return sub_100025F40(a1, qword_1005CCEE8, &unk_1004CDBA0);
  }

  else
  {
    sub_1002B4A34(v10, v14, type metadata accessor for Activity.MailboxStatus);
    sub_1002B4AFC(v14, v7, type metadata accessor for Activity.MailboxStatus);
    (*(v12 + 56))(v7, 0, 1, v11);
    sub_1002B29C8(v7, a2, v18);
    sub_100025F40(a1, qword_1005CCEE8, &unk_1004CDBA0);
    return sub_1002B4A9C(v14, type metadata accessor for Activity.MailboxStatus);
  }
}

uint64_t sub_1002B29C8(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  v7 = sub_10000C9C0(qword_1005CCEE8, &unk_1004CDBA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Activity.MailboxStatus(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_100025F40(a1, qword_1005CCEE8, &unk_1004CDBA0);
    sub_1002B3838(a2, a3, v9);

    return sub_100025F40(v9, qword_1005CCEE8, &unk_1004CDBA0);
  }

  else
  {
    sub_1002B4A34(a1, v13, type metadata accessor for Activity.MailboxStatus);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1002B3EE8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

void (*Activity.subscript.modify(void *a1, uint64_t a2, Swift::UInt a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(*(sub_10000C9C0(qword_1005CCEE8, &unk_1004CDBA0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v8[3] = malloc(v9);
    v10 = malloc(v9);
  }

  v8[4] = v10;
  Activity.subscript.getter(a2, a3, v10);
  return sub_1002B2C9C;
}

void sub_1002B2C9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = **a1;
  if (a2)
  {
    sub_10000E268((*a1)[4], v3, qword_1005CCEE8, &unk_1004CDBA0);

    Activity.subscript.setter(v3, v6, v5);
    sub_100025F40(v4, qword_1005CCEE8, &unk_1004CDBA0);
  }

  else
  {

    Activity.subscript.setter(v4, v6, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Activity.isServerUnavailable.getter()
{
  v1 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Activity(0);
  sub_10000E268(v0 + *(v8 + 24), v3, &qword_1005CCEB0, &qword_1004E9140);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100025F40(v3, &qword_1005CCEB0, &qword_1004E9140);
  }

  else
  {
    sub_1002B4A34(v3, v7, type metadata accessor for ConnectionStatus.Error);
    v9 = *v7;
    sub_1002B4A9C(v7, type metadata accessor for ConnectionStatus.Error);
    if (v9 == 2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Activity.accountStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for ConnectionStatus.Error(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = type metadata accessor for Activity.MailboxStatus(0);
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for Activity(0);
    sub_10000E268(v1 + *(v13 + 24), v5, &qword_1005CCEB0, &qword_1004E9140);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100025F40(v5, &qword_1005CCEB0, &qword_1004E9140);
    }

    else
    {
      sub_1002B4A34(v5, v9, type metadata accessor for ConnectionStatus.Error);
      sub_1002B4A34(v9, a1, type metadata accessor for ConnectionStatus.Error);
    }

    v14 = type metadata accessor for Activity.MailboxStatus(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }
}

uint64_t Activity.allMailboxIDs.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);

  result = sub_1002B31E0(v4, v3);
  *a1 = result;
  return result;
}

uint64_t sub_1002B31E0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1000883C4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B32E4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v13 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(v2 + 48) + ((v9 << 9) | (8 * v10)));

    sub_1002BDB88(&v12, v11);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v13;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void Activity.MailboxStatus.debugDescription.getter(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for ConnectionStatus.Error(0);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Activity.MailboxStatus(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002B4AFC(v2, v11, type metadata accessor for Activity.MailboxStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1002B4A34(v11, v8, type metadata accessor for ConnectionStatus.Error);
      sub_1002B4AFC(v8, v5, type metadata accessor for ConnectionStatus.Error);
      sub_1004A5824();
      sub_1002B4A9C(v8, type metadata accessor for ConnectionStatus.Error);
      return;
    }

    v13 = *(v11 + 1);
    v14 = *(v11 + 2);
    if (*v11)
    {
      if (v11[24])
      {
        return;
      }

      v18 = 0;
      v19 = 0xE000000000000000;
      sub_1004A6724(26);

      v18 = 0xD000000000000012;
      v19 = 0x80000001004ADF50;
      v17 = v14;
      v20._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v20);

      v21._countAndFlagsBits = 761687853;
      v21._object = 0xE400000000000000;
      sub_1004A5994(v21);
      v15 = v13 + v14;
      if (!__OFADD__(v13, v14))
      {
LABEL_14:
        v17 = v15;
        v24._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v24);

        return;
      }

      __break(1u);
LABEL_13:
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_1004A6724(17);

      v18 = 0x676E696863746566;
      v19 = 0xE90000000000002DLL;
      v17 = v14;
      v22._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v22);

      v23._countAndFlagsBits = 761687853;
      v23._object = 0xE400000000000000;
      sub_1004A5994(v23);
      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        __break(1u);
        return;
      }

      goto LABEL_14;
    }

    if (!v11[24])
    {
      goto LABEL_13;
    }
  }
}

unint64_t sub_1002B375C(uint64_t a1)
{
  v1 = a1;
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  v2 = sub_1004A6F14();

  return sub_1002B37C8(v1, v2);
}

unint64_t sub_1002B37C8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1002B3838@<X0>(uint64_t a1@<X0>, Swift::UInt a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100063C84(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002B40F8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Activity.MailboxStatus(0);
    v19 = *(v12 - 8);
    sub_1002B4A34(v11 + *(v19 + 72) * v8, a3, type metadata accessor for Activity.MailboxStatus);
    sub_1002B3D14(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Activity.MailboxStatus(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1002B39A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Activity.MailboxStatus(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000C9C0(&qword_1005D6CF8, &qword_1004EDBE8);
  v40 = v4;
  result = sub_1004A6A64();
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
        sub_1002B4A34(v28, v41, type metadata accessor for Activity.MailboxStatus);
      }

      else
      {
        sub_1002B4AFC(v28, v41, type metadata accessor for Activity.MailboxStatus);
      }

      sub_1004A6E94();
      sub_1004A6EB4(v26);
      result = sub_1004A6F14();
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
      result = sub_1002B4A34(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Activity.MailboxStatus);
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

unint64_t sub_1002B3D14(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004A6564() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1004A6E94();
      sub_1004A6EB4(v9);
      result = sub_1004A6F14();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Activity.MailboxStatus(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1002B3EE8(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100063C84(a2, a3);
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
      sub_1002B40F8();
      goto LABEL_7;
    }

    sub_1002B39A4(v15, a4 & 1);
    v21 = sub_100063C84(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1004A6E24();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for Activity.MailboxStatus(0) - 8) + 72) * v12;

    sub_1002B50C8(a1, v20);
    return;
  }

LABEL_13:
  sub_1002B404C(v12, a2, a3, a1, v18);
}

uint64_t sub_1002B404C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Activity.MailboxStatus(0);
  result = sub_1002B4A34(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Activity.MailboxStatus);
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

void sub_1002B40F8()
{
  v1 = v0;
  v2 = type metadata accessor for Activity.MailboxStatus(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0(&qword_1005D6CF8, &qword_1004EDBE8);
  v4 = *v0;
  v5 = sub_1004A6A54();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
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
        v24 = *v22;
        v23 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1002B4AFC(*(v4 + 56) + v26, v30, type metadata accessor for Activity.MailboxStatus);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v24;
        v28[1] = v23;
        sub_1002B4A34(v25, *(v27 + 56) + v26, type metadata accessor for Activity.MailboxStatus);
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
}

BOOL _s16IMAP2Persistence8ActivityV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v5 = type metadata accessor for ConnectionStatus.Error(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_10000C9C0(&qword_1005D6E88, &qword_1004EE5A8);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  sub_1002D9DB4(*a1, *a2);
  if ((v15 & 1) == 0 || (sub_1002BF750(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for Activity(0) + 24);
  v17 = a1 + v16;
  v18 = *(v12 + 48);
  sub_10000E268(v17, v14, &qword_1005CCEB0, &qword_1004E9140);
  sub_10000E268(a2 + v16, &v14[v18], &qword_1005CCEB0, &qword_1004E9140);
  v19 = *(v6 + 48);
  if (v19(v14, 1, v5) == 1)
  {
    if (v19(&v14[v18], 1, v5) == 1)
    {
      sub_100025F40(v14, &qword_1005CCEB0, &qword_1004E9140);
      return 1;
    }

    goto LABEL_8;
  }

  sub_10000E268(v14, v11, &qword_1005CCEB0, &qword_1004E9140);
  if (v19(&v14[v18], 1, v5) == 1)
  {
    sub_1002B4A9C(v11, type metadata accessor for ConnectionStatus.Error);
LABEL_8:
    sub_100025F40(v14, &qword_1005D6E88, &qword_1004EE5A8);
    return 0;
  }

  sub_1002B4A34(&v14[v18], v8, type metadata accessor for ConnectionStatus.Error);
  v21 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v8);
  sub_1002B4A9C(v8, type metadata accessor for ConnectionStatus.Error);
  sub_1002B4A9C(v11, type metadata accessor for ConnectionStatus.Error);
  sub_100025F40(v14, &qword_1005CCEB0, &qword_1004E9140);
  return v21;
}

BOOL _s16IMAP2Persistence8ActivityV13MailboxStatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ConnectionStatus.Error(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Activity.MailboxStatus(0);
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_10000C9C0(&qword_1005D6E80, &qword_1004EE5A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v18 = &v27 + *(v17 + 56) - v15;
  sub_1002B4AFC(a1, &v27 - v15, type metadata accessor for Activity.MailboxStatus);
  sub_1002B4AFC(a2, v18, type metadata accessor for Activity.MailboxStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_14;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_14;
    }

LABEL_12:
    sub_1002B4A9C(v16, type metadata accessor for Activity.MailboxStatus);
    return 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1002B4AFC(v16, v13, type metadata accessor for Activity.MailboxStatus);
    v21 = *(v13 + 1);
    v20 = *(v13 + 2);
    v22 = v13[24];
    v23 = v13[25];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (*v13 != *v18)
      {
LABEL_5:
        sub_1002B4A9C(v16, type metadata accessor for Activity.MailboxStatus);
        return 0;
      }

      v26 = v18[24];
      if (v22)
      {
        if (!v18[24])
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v21 != *(v18 + 1))
        {
          v26 = 1;
        }

        if ((v26 & 1) != 0 || v20 != *(v18 + 2))
        {
          goto LABEL_5;
        }
      }

      if ((v23 ^ v18[25]))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }

LABEL_14:
    sub_100025F40(v16, &qword_1005D6E80, &qword_1004EE5A0);
    return 0;
  }

  sub_1002B4AFC(v16, v10, type metadata accessor for Activity.MailboxStatus);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1002B4A9C(v10, type metadata accessor for ConnectionStatus.Error);
    goto LABEL_14;
  }

  sub_1002B4A34(v18, v7, type metadata accessor for ConnectionStatus.Error);
  v24 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(v10, v7);
  sub_1002B4A9C(v7, type metadata accessor for ConnectionStatus.Error);
  sub_1002B4A9C(v10, type metadata accessor for ConnectionStatus.Error);
  sub_1002B4A9C(v16, type metadata accessor for Activity.MailboxStatus);
  return v24;
}

uint64_t sub_1002B4A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B4A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002B4AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B4B78(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1002B4C48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002B4CF8(uint64_t a1)
{
  sub_1002B4D94(319);
  if (v1 <= 0x3F)
  {
    sub_1002B4E00(319);
    if (v3 <= 0x3F)
    {
      sub_1002B4E5C(319, v2);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002B4D94(uint64_t a1)
{
  if (!qword_1005D6D88)
  {
    type metadata accessor for Activity.MailboxStatus(255);
    sub_10000E1AC();
    v1 = sub_1004A5524();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D6D88);
    }
  }
}

void sub_1002B4E00(uint64_t a1)
{
  if (!qword_1005D6D90)
  {
    sub_10000E1AC();
    v1 = sub_1004A5DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D6D90);
    }
  }
}

void sub_1002B4E5C(uint64_t a1, __n128 a2)
{
  if (!qword_1005D5BC8)
  {
    type metadata accessor for ConnectionStatus.Error(255);
    v2 = sub_1004A6374();
    if (!v3)
    {
      atomic_store(v2, &qword_1005D5BC8);
    }
  }
}

uint64_t sub_1002B4EB4(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ConnectionStatus.Error(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002B4F20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[26])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002B4F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1002B4FE0()
{
  result = qword_1005D6E70;
  if (!qword_1005D6E70)
  {
    v3 = sub_10000DEFC(&qword_1005D6E78, &unk_1004EE590);
    result = swift_getWitnessTable(&protocol conformance descriptor for Set<A>, v3, v0, v1);
    atomic_store(result, &qword_1005D6E70);
  }

  return result;
}

uint64_t sub_1002B5044(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      v5 = *(v3 - 1);

      sub_100088220(&v7, v5, v4);

      v3 += 4;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1002B50C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity.MailboxStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002B5130()
{
  result = qword_1005D6E90;
  if (!qword_1005D6E90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChangeID, &type metadata for ChangeID, v0, v1);
    atomic_store(result, &qword_1005D6E90);
  }

  return result;
}

uint64_t Configuration.connection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Configuration(0) + 20);

  return sub_1002B5234(v3, a1, v4);
}

uint64_t type metadata accessor for Configuration(uint64_t a1)
{
  result = qword_1005D6F00;
  if (!qword_1005D6F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002B5234(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ConnectionConfiguration(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Configuration.connection.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Configuration(0) + 20);

  return sub_1002B52DC(a1, v3, v4);
}

uint64_t sub_1002B52DC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ConnectionConfiguration(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t Configuration.mailboxFilter.setter(char a1)
{
  result = type metadata accessor for Configuration(0);
  *(v1 + *(result + 24)) = a1 & 1;
  return result;
}

uint64_t Configuration.fetchedMessageMetadata.setter(char a1)
{
  result = type metadata accessor for Configuration(0);
  *(v1 + *(result + 28)) = a1 & 1;
  return result;
}

uint64_t Configuration.init(logName:connection:mailboxFilter:fetchedMessageMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for Configuration(0);
  result = sub_1002B553C(a3, a6 + v10[5], v11);
  *(a6 + v10[6]) = a4 & 1;
  *(a6 + v10[7]) = a5 & 1;
  return result;
}

uint64_t sub_1002B553C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ConnectionConfiguration(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002B55A4()
{
  result = qword_1005D6E98;
  if (!qword_1005D6E98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Configuration.MailboxFilter, &type metadata for Configuration.MailboxFilter, v0, v1);
    atomic_store(result, &qword_1005D6E98);
  }

  return result;
}

unint64_t sub_1002B55FC()
{
  result = qword_1005D6EA0;
  if (!qword_1005D6EA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Configuration.FetchedMessageMetadata, &type metadata for Configuration.FetchedMessageMetadata, v0, v1);
    atomic_store(result, &qword_1005D6EA0);
  }

  return result;
}

uint64_t sub_1002B5664(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ConnectionConfiguration(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1002B5724(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ConnectionConfiguration(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1002B57C8(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ConnectionConfiguration(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ConnectionConfiguration.sourceApplicationKind.setter(char a1)
{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 36)) = a1 & 1;
  return result;
}

uint64_t ConnectionConfiguration.init(transportLayerSecurity:transportLayerSecurityOptions:endpoint:prohibitConstrainedPaths:prohibitedInterfaceTypes:sourceApplicationBundleIdentifier:sourceApplicationKind:networkAccountIdentifier:)@<X0>(char a1@<W0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{

  v16 = type metadata accessor for ConnectionConfiguration(0);
  v17 = (a9 + v16[8]);
  v18 = (a9 + v16[10]);
  v19 = v16[6];
  *(a9 + v16[7]) = a1;
  v20 = sub_1004A4C04();
  result = (*(*(v20 - 8) + 32))(a9, a3, v20);
  *(a9 + v16[5]) = a4;
  *(a9 + v19) = a5;
  *v17 = a6;
  v17[1] = a7;
  *(a9 + v16[9]) = a8 & 1;
  *v18 = a10;
  v18[1] = a11;
  return result;
}

unint64_t CertificateTrust.Policy.description.getter(unsigned __int8 a1)
{
  result = 0xD000000000000013;
  if (a1 >= 2u)
  {
    return 0xD000000000000011;
  }

  return result;
}

unint64_t sub_1002B5E58()
{
  result = qword_1005D6F40;
  if (!qword_1005D6F40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConnectionConfiguration.SourceApplicationKind, &type metadata for ConnectionConfiguration.SourceApplicationKind, v0, v1);
    atomic_store(result, &qword_1005D6F40);
  }

  return result;
}

unint64_t sub_1002B5EB0()
{
  result = qword_1005D6F48;
  if (!qword_1005D6F48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CertificateTrust.Policy, &type metadata for CertificateTrust.Policy, v0, v1);
    atomic_store(result, &qword_1005D6F48);
  }

  return result;
}

uint64_t sub_1002B5F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A4C04();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1002B5FFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A4C04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_1002B60B4(uint64_t a1)
{
  sub_1004A4C04();
  if (v1 <= 0x3F)
  {
    sub_1001B916C(319);
    if (v2 <= 0x3F)
    {
      sub_1001B91D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1002B61C0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s20IMAPSearchIndexerXPC11CredentialsO21__derived_enum_equalsySbAC_ACtFZ_0(v8, v9) & 1;
}

Swift::Int CredentialsRequestID.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  return sub_1004A6F14();
}

uint64_t _s20IMAPSearchIndexerXPC11CredentialsO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[7];
  v8 = a1[9];
  v9 = (v8 >> 59) & 6 | ((v7 & 0x2000000000000000) != 0);
  if (v9 <= 1)
  {
    if (v9)
    {
      v21 = a2[7];
      v22 = a2[9];
      if (((v22 >> 59) & 6 | ((v21 & 0x2000000000000000) != 0)) != 1)
      {
        return 0;
      }

      v31 = a1[5];
      v32 = a1[4];
      v23 = a2[2];
      v24 = a2[3];
      v25 = a2[4];
      v26 = a2[5];
      v29 = a2[6];
      v30 = a1[6];
      v27 = a2[8];
      v28 = a1[8];
      if (!sub_10003A194(v3, v4, *a2, a2[1]) || !sub_10003A194(v5, v6, v23, v24) || !sub_10003A194(v32, v31, v25, v26) || !sub_10003A194(v30, v7 & 0xDFFFFFFFFFFFFFFFLL, v29, v21 & 0xDFFFFFFFFFFFFFFFLL))
      {
        return 0;
      }

      v15 = v8 & 0xCFFFFFFFFFFFFFFFLL;
      v17 = v22 & 0xCFFFFFFFFFFFFFFFLL;
      v16 = v27;
      v3 = v28;
    }

    else
    {
      if ((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0))
      {
        return 0;
      }

      v13 = a2[2];
      v14 = a2[3];
      if (!sub_10003A194(v3, v4, *a2, a2[1]))
      {
        return 0;
      }

      v3 = v5;
      v15 = v6;
      v16 = v13;
      v17 = v14;
    }
  }

  else
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) == 3)
        {
          if (v10 = a2[2], v11 = a2[3], v3 == *a2) && v4 == a2[1] || (sub_1004A6D34())
          {
            if (v5 != v10 || v6 != v11)
            {

              return sub_1004A6D34();
            }

            return 1;
          }
        }
      }

      else
      {
        v18 = a2[7];
        v19 = a2[9];
        if (((v19 >> 59) & 6 | ((v18 & 0x2000000000000000) != 0)) == 4 && v19 == 0x2000000000000000)
        {
          v20 = vorrq_s8(*(a2 + 3), *(a2 + 5));
          if (!(*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | a2[8] | a2[2] | a2[1] | *a2 | v18))
          {
            return 1;
          }
        }
      }

      return 0;
    }

    if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 2)
    {
      return 0;
    }

    v16 = *a2;
    v17 = a2[1];
    v15 = a1[1];
  }

  return sub_10003A194(v3, v15, v16, v17);
}

unint64_t sub_1002B6574()
{
  result = qword_1005D6FF8;
  if (!qword_1005D6FF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CredentialsRequestID, &type metadata for CredentialsRequestID, v0, v1);
    atomic_store(result, &qword_1005D6FF8);
  }

  return result;
}

uint64_t sub_1002B65C8(uint64_t a1)
{
  if (((*(a1 + 72) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 72) >> 59) & 6 | ((*(a1 + 56) & 0x2000000000000000) != 0);
  }
}

uint64_t sub_1002B65F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 80))
  {
    return (*a1 + 60);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x3B)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1002B6664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1002B66E8(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    v3 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 60);
    *(result + 40) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 56) = v2;
    *(result + 72) = v3;
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0x2000000000000000;
  }

  return result;
}

ValueMetadata *type metadata accessor for Credentials()
{
  return &type metadata for Credentials;
}

{
  return &type metadata for Credentials;
}

IMAP2Persistence::DownloadPass_optional __swiftcall DownloadPass.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_1005AE9D0;
  v6._object = object;
  v3 = sub_1004A6AF4(v2, v6);

  if (v3 == 1)
  {
    v4.value = IMAP2Persistence_DownloadPass_second;
  }

  else
  {
    v4.value = IMAP2Persistence_DownloadPass_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t DownloadPass.rawValue.getter(char a1)
{
  if (a1)
  {
    return 6581810;
  }

  else
  {
    return 7631665;
  }
}

uint64_t sub_1002B67FC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6581810;
  }

  else
  {
    v2 = 7631665;
  }

  if (*a2)
  {
    v3 = 6581810;
  }

  else
  {
    v3 = 7631665;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1004A6D34();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1002B6878()
{
  result = qword_1005D7000;
  if (!qword_1005D7000)
  {
    result = swift_getWitnessTable(")~\t", &type metadata for DownloadPass, v0, v1);
    atomic_store(result, &qword_1005D7000);
  }

  return result;
}

Swift::Int sub_1002B68CC()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1002B6934(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1002B6980(uint64_t a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1002B69E4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005AE9D0;
  v8._object = v3;
  v5 = sub_1004A6AF4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1002B6A44(uint64_t *a1@<X8>)
{
  v2 = 7631665;
  if (*v1)
  {
    v2 = 6581810;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

unint64_t sub_1002B6A70()
{
  result = qword_1005D7008;
  if (!qword_1005D7008)
  {
    v3 = sub_10000DEFC(&qword_1005D7010, &qword_1004EEFE0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D7008);
  }

  return result;
}

uint64_t DownloadRequest.message.getter()
{
  v1 = *(v0 + 24);
  sub_100014CEC(v1, *(v0 + 32));
  return v1;
}

uint64_t DownloadRequest.message.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100014D40(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DownloadRequest.init(id:mailbox:message:kind:qos:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t static DownloadRequest.Kind.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(a1, a2);
    }

    return 0;
  }

  return !a2;
}

BOOL sub_1002B6BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s16IMAP2Persistence15DownloadRequestV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t sub_1002B6C30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t static DownloadRequest.QoS.current()()
{
  HIDWORD(v0) = qos_class_self() - 9;
  LODWORD(v0) = HIDWORD(v0);
  v1 = 0x4020302010200uLL >> (8 * (v0 >> 2));
  if ((v0 >> 2) >= 7)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

IMAP2Persistence::DownloadRequest::QoS_optional __swiftcall DownloadRequest.QoS.init(_:)(qos_class_t a1)
{
  HIDWORD(v1) = a1 - 9;
  LODWORD(v1) = a1 - 9;
  v2 = 0x4050302010500uLL >> (8 * (v1 >> 2));
  if ((v1 >> 2) >= 7)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

Swift::String __swiftcall String.init(_:)(IMAP2Persistence::SyncRequest::ID a1)
{
  v1 = sub_1004A6CE4();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

BOOL _s16IMAP2Persistence15DownloadRequestV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (*(a1 + 16) | (*(a1 + 16) << 32)) != (*(a2 + 16) | (*(a2 + 16) << 32)))
  {
    return 0;
  }

  if ((sub_1000FFC98(*(a1 + 8), *(a2 + 8)) & 1) != 0 && sub_10003A194(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
  {
    v4 = *(a1 + 40);
    v5 = *(a2 + 40);
    if (v4)
    {
      if (v5)
      {
        v6 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v4, v5);
        v7 = a2;
        v8 = a1;
        if (v6)
        {
          return *(v8 + 48) == *(v7 + 48);
        }
      }
    }

    else
    {
      v8 = a1;
      v7 = a2;
      if (!v5)
      {
        return *(v8 + 48) == *(v7 + 48);
      }
    }
  }

  return 0;
}

unint64_t sub_1002B6EB4()
{
  result = qword_1005D7018;
  if (!qword_1005D7018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DownloadRequest.ID, &type metadata for DownloadRequest.ID, v0, v1);
    atomic_store(result, &qword_1005D7018);
  }

  return result;
}

unint64_t sub_1002B6F0C()
{
  result = qword_1005D7020;
  if (!qword_1005D7020)
  {
    result = swift_getWitnessTable("a|\t", &type metadata for DownloadRequest.QoS, v0, v1);
    atomic_store(result, &qword_1005D7020);
  }

  return result;
}

unint64_t sub_1002B6F64()
{
  result = qword_1005D7028;
  if (!qword_1005D7028)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DownloadRequest.ID, &type metadata for DownloadRequest.ID, v0, v1);
    atomic_store(result, &qword_1005D7028);
  }

  return result;
}

uint64_t sub_1002B6FB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002B7000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002B7060(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002B70B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t Environment.init(power:appState:isLocked:thermalState:availableFileSystemSpace:unreconciledMessageCount:)(unsigned __int8 a1, char a2, char a3)
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return a1 | ((a2 & 1) << 8) | v3;
}

BOOL sub_1002B71A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *a1;
  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *a2;
  if (a2[2])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  return sub_1002B7E18(v3 | v4, *(a1 + 1), a1[16], *(a1 + 3), v6 | v7, *(a2 + 1), a2[16], *(a2 + 3));
}

uint64_t Environment.AppState.description.getter(char a1)
{
  if (a1)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x656C6269736976;
  }
}

uint64_t sub_1002B7274()
{
  if (*v0)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x656C6269736976;
  }
}

IMAP2Persistence::Environment::Power __swiftcall Environment.Power.init(inLowPowerMode:isPluggedIn:batteryPercentage:)(Swift::Bool inLowPowerMode, Swift::Bool isPluggedIn, Swift::Float_optional *batteryPercentage)
{
  if (inLowPowerMode)
  {
    return 0;
  }

  v4 = (batteryPercentage >> 32) & 1;
  if (*&batteryPercentage >= 0.2)
  {
    LODWORD(v4) = 1;
  }

  if (isPluggedIn)
  {
    v5 = IMAP2Persistence_Environment_Power_pluggedIn;
  }

  else
  {
    v5 = IMAP2Persistence_Environment_Power_onBattery;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t Environment.Power.description.getter(char a1)
{
  if (!a1)
  {
    return 0x7265776F50776F6CLL;
  }

  if (a1 == 1)
  {
    return 0x7265747461426E6FLL;
  }

  return 0x4964656767756C70;
}

uint64_t sub_1002B735C()
{
  v1 = 0x7265747461426E6FLL;
  if (*v0 != 1)
  {
    v1 = 0x4964656767756C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265776F50776F6CLL;
  }
}

IMAP2Persistence::Environment::AvailableFileSystemSpace __swiftcall Environment.AvailableFileSystemSpace.init(availableByteCount:bytesForOpportunisticUsage:)(Swift::Int availableByteCount, Swift::Int bytesForOpportunisticUsage)
{
  if (bytesForOpportunisticUsage <= 0x4650FFFFFLL && availableByteCount <= 1888485375)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (bytesForOpportunisticUsage <= 0x9C3FFFFFFLL)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (availableByteCount <= 0x270FFFFFFLL)
  {
    v5 = v4;
  }

  else
  {
    v5 = IMAP2Persistence_Environment_AvailableFileSystemSpace_abundant;
  }

  if (availableByteCount <= 105906175 && bytesForOpportunisticUsage < 1049624576)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

unint64_t Environment.AvailableFileSystemSpace.description.getter(unsigned __int8 a1)
{
  v1 = 7827308;
  v2 = 0x746E61646E756261;
  if (a1 == 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (a1)
  {
    v1 = 0xD000000000000022;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1002B74A0()
{
  v1 = 7827308;
  v2 = 0x746E61646E756261;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000022;
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

uint64_t Environment.description.getter(int a1, uint64_t a2, unsigned __int8 a3)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v5 = 0xE800000000000000;
        v6 = 0x6C61636974697263;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v5 = 0xE700000000000000;
    v6 = 0x73756F69726573;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v5 = 0xE400000000000000;
        v6 = 1919508838;
        goto LABEL_11;
      }

LABEL_8:
      v6 = sub_1004A6CE4();
      v5 = v7;
      goto LABEL_11;
    }

    v5 = 0xE700000000000000;
    v6 = 0x6C616E696D6F6ELL;
  }

LABEL_11:
  sub_1004A6724(52);
  v17._countAndFlagsBits = 0x203A7265776F70;
  v17._object = 0xE700000000000000;
  sub_1004A5994(v17);
  if (a1)
  {
    if (a1 == 1)
    {
      v8._countAndFlagsBits = 0x7265747461426E6FLL;
    }

    else
    {
      v8._countAndFlagsBits = 0x4964656767756C70;
    }

    if (a1 == 1)
    {
      v9 = 0xE900000000000079;
    }

    else
    {
      v9 = 0xE90000000000006ELL;
    }
  }

  else
  {
    v8._countAndFlagsBits = 0x7265776F50776F6CLL;
    v9 = 0xE800000000000000;
  }

  v8._object = v9;
  sub_1004A5994(v8);

  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  sub_1004A5994(v18);
  if ((a1 & 0x100) != 0)
  {
    v10._countAndFlagsBits = 0x756F72676B636162;
  }

  else
  {
    v10._countAndFlagsBits = 0x656C6269736976;
  }

  if ((a1 & 0x100) != 0)
  {
    v11 = 0xEC0000006465646ELL;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v10._object = v11;
  sub_1004A5994(v10);

  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  sub_1004A5994(v19);
  if ((a1 & 0x10000) != 0)
  {
    v12._countAndFlagsBits = 0x64656B636F6CLL;
  }

  else
  {
    v12._countAndFlagsBits = 0x64656B636F6C6E75;
  }

  if ((a1 & 0x10000) != 0)
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  v12._object = v13;
  sub_1004A5994(v12);

  v20._object = 0x80000001004AE040;
  v20._countAndFlagsBits = 0xD000000000000011;
  sub_1004A5994(v20);
  v21._countAndFlagsBits = v6;
  v21._object = v5;
  sub_1004A5994(v21);

  v22._countAndFlagsBits = 0x73206B736964202CLL;
  v22._object = 0xEE00203A65636170;
  sub_1004A5994(v22);
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v14 = 0x80000001004ADFF0;
      v15._countAndFlagsBits = 0xD00000000000001DLL;
    }

    else
    {
      v14 = 0xE800000000000000;
      v15._countAndFlagsBits = 0x746E61646E756261;
    }
  }

  else if (a3)
  {
    v14 = 0x80000001004AE010;
    v15._countAndFlagsBits = 0xD000000000000022;
  }

  else
  {
    v14 = 0xE300000000000000;
    v15._countAndFlagsBits = 7827308;
  }

  v15._object = v14;
  sub_1004A5994(v15);

  return 0;
}

uint64_t sub_1002B7850()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *v0;
  if (v0[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return Environment.description.getter(v2 | v3, *(v0 + 1), v0[16]);
}

uint64_t Environment.capturedValue.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v9._countAndFlagsBits = 0x7265747461426E6FLL;
    }

    else
    {
      v9._countAndFlagsBits = 0x4964656767756C70;
    }

    if (v8 == 1)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v10 = 0xE90000000000006ELL;
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    v9._countAndFlagsBits = 0x7265776F50776F6CLL;
  }

  v9._object = v10;
  sub_1004A5994(v9);

  if ((a1 & 0x100) != 0)
  {
    v11._countAndFlagsBits = 0x756F72676B636162;
  }

  else
  {
    v11._countAndFlagsBits = 0x656C6269736976;
  }

  v12 = 0xE700000000000000;
  if ((a1 & 0x100) != 0)
  {
    v13 = 0xEC0000006465646ELL;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  v11._object = v13;
  sub_1004A5994(v11);

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v12 = 0xE800000000000000;
        result = 0x6C61636974697263;
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    result = 0x73756F69726573;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE400000000000000;
        result = 1919508838;
        goto LABEL_25;
      }

LABEL_22:
      result = sub_1004A6CE4();
      v12 = v15;
      goto LABEL_25;
    }

    result = 0x6C616E696D6F6ELL;
  }

LABEL_25:
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v17 = 0xD00000000000001DLL;
      v16 = 0x80000001004ADFF0;
    }

    else
    {
      v16 = 0xE800000000000000;
      v17 = 0x746E61646E756261;
    }
  }

  else
  {
    v16 = 0xE300000000000000;
    if (a3)
    {
      v17 = 0xD000000000000022;
    }

    else
    {
      v17 = 7827308;
    }

    if (a3)
    {
      v16 = 0x80000001004AE010;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  *(a4 + 32) = BYTE2(a1) & 1;
  *(a4 + 40) = result;
  *(a4 + 48) = v12;
  *(a4 + 56) = v17;
  *(a4 + 64) = v16;
  return result;
}

uint64_t sub_1002B7ADC()
{
  v1 = *v0;
  v2 = 0x7265776F70;
  v3 = 0x64656B636F4C7369;
  v4 = 0x536C616D72656874;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574617453707061;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002B7B80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002B8214(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002B7BA8(uint64_t a1)
{
  v2 = sub_1002B7E60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002B7BE4(uint64_t a1)
{
  v2 = sub_1002B7E60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Environment.CapturedValue.encode(to:)(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005D7030, &qword_1004EF380);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002587C(a1, a1[3]);
  sub_1002B7E60();
  sub_1004A6FA4();
  v8[15] = 0;
  sub_1004A6C44();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1004A6C44();
  v8[13] = 2;
  sub_1004A6C54();
  v8[12] = 3;
  sub_1004A6C44();
  v8[11] = 4;
  sub_1004A6C44();
  return (*(v4 + 8))(v6, v3);
}

BOOL sub_1002B7E18(int a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6, char a7, uint64_t a8)
{
  v8 = a5 ^ a1;
  if (a5 != a1)
  {
    return 0;
  }

  v9 = (v8 >> 8) & 1;
  v10 = HIWORD(v8) & 1;
  v13 = a2 == a6 && a3 == a7 && a4 == a8;
  v14 = (v10 & 1) == 0 && v13;
  return (v9 & 1) == 0 && v14;
}

unint64_t sub_1002B7E60()
{
  result = qword_1005D7038;
  if (!qword_1005D7038)
  {
    result = swift_getWitnessTable(asc_1004EF75C, &type metadata for Environment.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D7038);
  }

  return result;
}

unint64_t sub_1002B7EB8()
{
  result = qword_1005D7040;
  if (!qword_1005D7040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Environment.AppState, &type metadata for Environment.AppState, v0, v1);
    atomic_store(result, &qword_1005D7040);
  }

  return result;
}

unint64_t sub_1002B7F10()
{
  result = qword_1005D7048;
  if (!qword_1005D7048)
  {
    v3 = sub_10000DEFC(&qword_1005D7050, &qword_1004EF418);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D7048);
  }

  return result;
}

unint64_t sub_1002B7F78()
{
  result = qword_1005D7058;
  if (!qword_1005D7058)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Environment.Power, &type metadata for Environment.Power, v0, v1);
    atomic_store(result, &qword_1005D7058);
  }

  return result;
}

unint64_t sub_1002B7FD0()
{
  result = qword_1005D7060;
  if (!qword_1005D7060)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Environment.AvailableFileSystemSpace, &type metadata for Environment.AvailableFileSystemSpace, v0, v1);
    atomic_store(result, &qword_1005D7060);
  }

  return result;
}

uint64_t sub_1002B8024(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002B8068(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1002B8110()
{
  result = qword_1005D7068;
  if (!qword_1005D7068)
  {
    result = swift_getWitnessTable("5v\t", &type metadata for Environment.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D7068);
  }

  return result;
}

unint64_t sub_1002B8168()
{
  result = qword_1005D7070;
  if (!qword_1005D7070)
  {
    result = swift_getWitnessTable(byte_1004EF6A4, &type metadata for Environment.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D7070);
  }

  return result;
}

unint64_t sub_1002B81C0()
{
  result = qword_1005D7078;
  if (!qword_1005D7078)
  {
    result = swift_getWitnessTable(byte_1004EF6CC, &type metadata for Environment.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D7078);
  }

  return result;
}

uint64_t sub_1002B8214(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265776F70 && a2 == 0xE500000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617453707061 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B636F4C7369 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x536C616D72656874 && a2 == 0xEC00000065746174 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004AE060 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t FlagsChange.flags.getter(uint64_t a1, uint64_t a2)
{
  v2 = &_mh_execute_header;
  if ((a2 & 1) == 0)
  {
    v2 = 0;
  }

  *(&v3 + 1) = a2;
  *&v3 = a1;
  return (v3 >> 32) & 0xFF000001010101 | v2 | (a2 << 32) & 0xFF00010000000000;
}

uint64_t FlagsChange.flags.setter(uint64_t result, uint64_t a2, __int16 a3)
{
  *(v3 + 4) = result;
  *(v3 + 12) = a2;
  *(v3 + 20) = a3;
  return result;
}

uint64_t static FlagsChange.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v22) = HIDWORD(a2);
  *(&v22 + 4) = a3;
  v8 = *(&v22 + 1);
  *v23 = HIDWORD(a6);
  *&v23[4] = a7;
  if (a5 != a1)
  {
    return 0;
  }

  v11 = *&v23[1];
  v12 = (a2 & 1) != 0 ? &_mh_execute_header : 0;
  *(&v13 + 1) = a2;
  *&v13 = a1;
  v14 = (v13 >> 32) & 0x1010101 | v12;
  LOBYTE(v20) = BYTE4(a2) & 1;
  *(&v20 + 1) = v8;
  BYTE9(v20) = BYTE5(a3);
  v15 = v20;
  v16 = WORD4(v20);
  v17 = (a6 & 1) != 0 ? &_mh_execute_header : 0;
  *(&v18 + 1) = a6;
  *&v18 = a5;
  LOBYTE(v21) = BYTE4(a6) & 1;
  *(&v21 + 1) = v11;
  BYTE9(v21) = BYTE5(a7);
  if ((sub_1002BE3A0(v14 | (a2 << 32) & 0xFF00010000000000, v15, v16, (v18 >> 32) & 0x1010101 | v17 | (a6 << 32) & 0xFF00010000000000, v21, WORD4(v21)) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B42A0(a4, a8);
}

uint64_t sub_1002B8588(uint64_t a1, uint64_t a2)
{
  if (*a2 != *a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a2 + 12);
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  v7 = *(a2 + 7);
  v8 = *(a2 + 6);
  v9 = *(a2 + 5);
  v10 = *(a2 + 4);
  v11 = *(a1 + 12);
  v12 = *(a1 + 9);
  v13 = *(a1 + 8);
  v14 = *(a1 + 7);
  v15 = *(a2 + 10);
  v16 = *(a1 + 21);
  v17 = *(a1 + 13);
  v18 = *(a1 + 10);
  v19 = *(a1 + 4) & 1;
  v20 = *(a2 + 21);
  v21 = *(a2 + 13);
  v22 = (*(a1 + 5) & 1) != 0 ? 256 : 0;
  v23 = (*(a1 + 6) & 1) == 0;
  v24 = *(a1 + 11);
  v25 = *(a2 + 11);
  v26 = v23 ? 0 : 0x10000;
  v27 = (v14 & 1) != 0 ? 0x1000000 : 0;
  v28 = (v13 & 1) != 0 ? &_mh_execute_header : 0;
  v29 = (v12 & 1) != 0 ? 0x10000000000 : 0;
  v30 = v19 | (v18 << 48) | v22 | v26 | v27 | v28 | v29 | (v24 << 56);
  LOBYTE(v40) = v11 & 1;
  *(&v40 + 1) = v17;
  BYTE9(v40) = v16;
  v31 = v40;
  v32 = WORD4(v40);
  v33 = v10 & 1;
  v34 = (v9 & 1) != 0 ? 256 : 0;
  v35 = (v8 & 1) != 0 ? 0x10000 : 0;
  v36 = (v7 & 1) != 0 ? 0x1000000 : 0;
  v37 = (v6 & 1) != 0 ? &_mh_execute_header : 0;
  v38 = (v5 & 1) != 0 ? 0x10000000000 : 0;
  LOBYTE(v41) = v4 & 1;
  *(&v41 + 1) = v21;
  BYTE9(v41) = v20;
  if ((sub_1002BE3A0(v30, v31, v32, v33 | (v15 << 48) | v34 | v35 | v36 | v37 | v38 | (v25 << 56), v41, WORD4(v41)) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B42A0(v2, v3);
}

uint64_t MailboxOfInterest.name.setter(uint64_t a1, int a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

Swift::Int MailboxToRename.hashValue.getter(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  sub_1004A6E94();
  sub_1004A6EB4(a2 | (a2 << 32));
  sub_1004A6EB4(a4 | (a4 << 32));
  return sub_1004A6F14();
}

Swift::Int sub_1002B885C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

void sub_1002B88BC()
{
  v1 = *(v0 + 24);
  sub_1004A6EB4(*(v0 + 8) | (*(v0 + 8) << 32));
  sub_1004A6EB4(v1 | (v1 << 32));
}

Swift::Int sub_1002B8900(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_1004A6E94();
  sub_1004A6EB4(v2 | (v2 << 32));
  sub_1004A6EB4(v3 | (v3 << 32));
  return sub_1004A6F14();
}

BOOL _s16IMAP2Persistence15MailboxToRenameV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (a2 != a6)
  {
    return 0;
  }

  v8 = *(result + 16);
  if (v8 != *(a5 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v9 = result == a5;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return a4 == a8 && (sub_1000FFC98(a3, a7) & 1) != 0;
  }

  v10 = (result + 32);
  v11 = (a5 + 32);
  while (v8)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v8)
    {
      return a4 == a8 && (sub_1000FFC98(a3, a7) & 1) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s16IMAP2Persistence5EventO6UpdateO21__derived_enum_equalsySbAE_AEtFZ_0(unint64_t a1, unint64_t a2)
{
  v218 = a2;
  v214 = sub_1004A44E4();
  v212 = *(v214 - 8);
  __chkstk_darwin(v214);
  v209 = &v186 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_10000C9C0(&qword_1005D6770, &qword_1004EC278);
  __chkstk_darwin(v211);
  v213 = &v186 - v4;
  v5 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v5 - 8);
  v210 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v215 = &v186 - v8;
  __chkstk_darwin(v9);
  v216 = &v186 - v10;
  v11 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v217 = &v186 - v15;
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v16 - 8);
  v18 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v186 - v20;
  __chkstk_darwin(v22);
  v24 = &v186 - v23;
  __chkstk_darwin(v25);
  v27 = &v186 - v26;
  __chkstk_darwin(v28);
  v30 = &v186 - v29;
  __chkstk_darwin(v31);
  v33 = &v186 - v32;
  __chkstk_darwin(v34);
  v36 = &v186 - v35;
  __chkstk_darwin(v37);
  v39 = &v186 - v38;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 1 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_164;
      }

      v125 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v126 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      return sub_1002BFAE4(v125, v126);
    case 2uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 2 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_164;
      }

      v76 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v77 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v78 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v79 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v80 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v81 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      switch(v76)
      {
        case 2:
          if (v79 != 2)
          {
            goto LABEL_164;
          }

          break;
        case 3:
          if (v79 != 3)
          {
            goto LABEL_164;
          }

          break;
        case 4:
          if (v79 != 4)
          {
            goto LABEL_164;
          }

          break;
        default:
          if (v79 - 2) < 3 || ((v79 ^ v76))
          {
            goto LABEL_164;
          }

          break;
      }

      if (v77)
      {
        if (v80 && (sub_1002BF750(v77, v80) & 1) != 0 && v78 == v81)
        {
          goto LABEL_151;
        }
      }

      else if (!v80 && ((v78 ^ v81) & 1) == 0)
      {
        goto LABEL_151;
      }

      goto LABEL_164;
    case 3uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 3 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_164;
      }

      v56 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14) ^ *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x14) ^ 1;
      return v56 & 1;
    case 4uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 4)
      {
        goto LABEL_164;
      }

      v57 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v58 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      return sub_1002C17F4(v57, v58);
    case 5uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 5)
      {
        goto LABEL_164;
      }

      v140 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v141 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if ((sub_1002BF750(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0 || (sub_1002C2AF8(v140, v141) & 1) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_151;
    case 6uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 6 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18) || (sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_151;
    case 7uLL:
      v121 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v220[0] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v220[1] = v121;
      v122 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v220[2] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v220[3] = v122;
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 7)
      {
        goto LABEL_164;
      }

      v123 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v221[0] = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v221[1] = v123;
      v124 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v221[2] = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v221[3] = v124;
      sub_100208C78(v221, v219);
      v56 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(v220, v221);
      sub_10021D02C(v221);
      return v56 & 1;
    case 8uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 8)
      {
        goto LABEL_164;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        goto LABEL_164;
      }

      v166 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v167 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v168 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v169 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        goto LABEL_164;
      }

      v56 = v168 == v166 && v169 == v167;
      return v56 & 1;
    case 9uLL:
      v66 = sub_10000C9C0(&qword_1005CDA40, &qword_1004CF7A0);
      v67 = swift_projectBox();
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 9)
      {
        goto LABEL_164;
      }

      v68 = *(v66 + 64);
      v216 = *(v67 + v68);
      v69 = v67[1];
      v217 = *v67;
      v70 = *(v66 + 48);
      v71 = v67;
      v72 = swift_projectBox();
      v74 = *v72;
      v73 = v72[1];
      v218 = *(v72 + v68);
      sub_10000E268(v71 + v70, v39, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v72 + v70, v36, &unk_1005D91B0, &unk_1004CF400);
      if (v69 == v73 && (sub_1000FFC98(v217, v74) & 1) != 0)
      {
        sub_100016D2C();
        v75 = sub_1004A7034();
        sub_100025F40(v36, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v39, &unk_1005D91B0, &unk_1004CF400);
        v56 = v75 & (v216 == v218);
        return v56 & 1;
      }

      v177 = &unk_1005D91B0;
      v178 = &unk_1004CF400;
      sub_100025F40(v36, &unk_1005D91B0, &unk_1004CF400);
      v174 = v39;
      goto LABEL_162;
    case 0xAuLL:
      v157 = swift_projectBox();
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0xA)
      {
        goto LABEL_164;
      }

      v158 = v157[1];
      v215 = *v157;
      v216 = v158;
      v159 = v157;
      v160 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
      v161 = *(v160 + 48);
      v162 = *(v160 + 64);
      v163 = swift_projectBox();
      v164 = v163[1];
      v218 = *v163;
      sub_10000E268(v159 + v161, v33, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v159 + v162, v217, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000E268(v163 + v161, v30, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v163 + v162, v13, &qword_1005CD1D0, &unk_1004CF2C0);
      if (v216 == v164 && (sub_1000FFC98(v215, v218) & 1) != 0)
      {
        sub_100016D2C();
        if (sub_1004A7034())
        {
          v165 = v217;
          v56 = sub_1004A7034();
          sub_100025F40(v13, &qword_1005CD1D0, &unk_1004CF2C0);
          sub_100025F40(v30, &unk_1005D91B0, &unk_1004CF400);
          sub_100025F40(v165, &qword_1005CD1D0, &unk_1004CF2C0);
          sub_100025F40(v33, &unk_1005D91B0, &unk_1004CF400);
          return v56 & 1;
        }
      }

      sub_100025F40(v13, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v30, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v217, &qword_1005CD1D0, &unk_1004CF2C0);
      v174 = v33;
      v175 = &unk_1005D91B0;
      v176 = &unk_1004CF400;
      goto LABEL_163;
    case 0xBuLL:
      v46 = sub_10000C9C0(&qword_1005CDC20, &qword_1004CF9E8);
      v47 = swift_projectBox();
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0xB)
      {
        goto LABEL_164;
      }

      v48 = *(v46 + 64);
      v216 = *(v47 + v48);
      v49 = v47[1];
      v217 = *v47;
      v50 = *(v46 + 48);
      v51 = v47;
      v52 = swift_projectBox();
      v54 = *v52;
      v53 = v52[1];
      v218 = *(v52 + v48);
      sub_10000E268(v51 + v50, v27, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v52 + v50, v24, &unk_1005D91B0, &unk_1004CF400);
      if (v49 == v53 && (sub_1000FFC98(v217, v54) & 1) != 0)
      {
        sub_100016D2C();
        v55 = sub_1004A7034();
        sub_100025F40(v24, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
        v56 = v55 & (v216 == v218);
        return v56 & 1;
      }

      sub_100025F40(v24, &unk_1005D91B0, &unk_1004CF400);
      v174 = v27;
      v175 = &unk_1005D91B0;
      v176 = &unk_1004CF400;
      goto LABEL_163;
    case 0xCuLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0xC)
      {
        goto LABEL_164;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        goto LABEL_164;
      }

      v60 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v61 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v62 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v63 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        goto LABEL_164;
      }

      if (v60)
      {
        v64 = 6581810;
      }

      else
      {
        v64 = 7631665;
      }

      if (v62)
      {
        v65 = 6581810;
      }

      else
      {
        v65 = 7631665;
      }

      if (v64 == v65)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v180 = sub_1004A6D34();
        swift_bridgeObjectRelease_n();
        if ((v180 & 1) == 0)
        {
          goto LABEL_164;
        }
      }

      return sub_1002C1AC8(v61, v63);
    case 0xDuLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0xD)
      {
        goto LABEL_164;
      }

      if ((*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) != (*((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        goto LABEL_164;
      }

      v144 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v145 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
      v146 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v147 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v148 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v149 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
      v150 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v151 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v152 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      if ((sub_1000FFC98(v144, *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        goto LABEL_164;
      }

      if (v145)
      {
        v153 = 6581810;
      }

      else
      {
        v153 = 7631665;
      }

      if (v149)
      {
        v154 = 6581810;
      }

      else
      {
        v154 = 7631665;
      }

      if (v153 == v154)
      {
        swift_bridgeObjectRelease_n();
        if (v150 != v146)
        {
          goto LABEL_164;
        }
      }

      else
      {
        v181 = sub_1004A6D34();
        swift_bridgeObjectRelease_n();
        v56 = 0;
        if ((v181 & 1) == 0 || v150 != v146)
        {
          return v56 & 1;
        }
      }

      if ((sub_1002C1B88(v147, v151) & 1) == 0)
      {
        goto LABEL_164;
      }

      v56 = v148 ^ v152 ^ 1;
      return v56 & 1;
    case 0xEuLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0xE)
      {
        goto LABEL_164;
      }

      if ((*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) != (*((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        goto LABEL_164;
      }

      v44 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v41 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v45 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v43 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0 || (sub_1002C1C40(v44, v45) & 1) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_134;
    case 0xFuLL:
      v82 = sub_10000C9C0(&qword_1005D22F0, &unk_1004EFDE0);
      v83 = swift_projectBox();
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0xF)
      {
        goto LABEL_164;
      }

      v84 = *v83;
      v85 = *(v83 + 24);
      v207 = *(v83 + 16);
      v206 = v85;
      v189 = *(v83 + 32);
      v188 = *(v83 + 33);
      v195 = *(v83 + 34);
      v198 = *(v83 + 35);
      v199 = *(v83 + 36);
      v201 = *(v83 + 37);
      v202 = *(v83 + 38);
      v204 = *(v83 + 39);
      v205 = *(v83 + 40);
      v86 = *(v82 + 96);
      v87 = *(v83 + v86 + 8);
      v187 = *(v83 + v86);
      v186 = v87;
      v88 = *(v83 + 8);
      v89 = *(v82 + 80);
      v90 = v83;
      v91 = swift_projectBox();
      v92 = *v91;
      v93 = *(v91 + 8);
      v94 = *(v91 + 24);
      v208 = *(v91 + 16);
      v191 = *(v91 + 32);
      v190 = *(v91 + 33);
      v192 = *(v91 + 34);
      v193 = *(v91 + 35);
      v194 = *(v91 + 36);
      v196 = *(v91 + 37);
      v197 = *(v91 + 38);
      v200 = *(v91 + 39);
      v203 = *(v91 + 40);
      v95 = *(v91 + v86 + 8);
      v217 = *(v91 + v86);
      v218 = v95;
      v96 = v90 + v89;
      v97 = v216;
      sub_10000E268(v96, v216, &qword_1005D0F20, &qword_1004E9390);
      v98 = v91 + v89;
      v99 = v215;
      sub_10000E268(v98, v215, &qword_1005D0F20, &qword_1004E9390);
      if ((v88 | (v88 << 32)) != (v93 | (v93 << 32)) || (sub_1000FFC98(v84, v92) & 1) == 0)
      {
        goto LABEL_161;
      }

      v100 = v208;
      v101 = v94;
      sub_100014CEC(v208, v94);
      v102 = v217;
      v103 = v218;
      sub_100014CEC(v217, v218);
      if (!sub_10003A194(v207, v206, v100, v94))
      {
        goto LABEL_159;
      }

      v104 = 256;
      if (v188)
      {
        v105 = 256;
      }

      else
      {
        v105 = 0;
      }

      if (v195)
      {
        v106 = 0x10000;
      }

      else
      {
        v106 = 0;
      }

      if (v198)
      {
        v107 = 0x1000000;
      }

      else
      {
        v107 = 0;
      }

      if (v199)
      {
        v108 = &_mh_execute_header;
      }

      else
      {
        v108 = 0;
      }

      if (v201)
      {
        v109 = 0x10000000000;
      }

      else
      {
        v109 = 0;
      }

      v110 = v189 & 1 | (v202 << 48) | v105 | v106 | v107 | v108 | v109 | (v204 << 56);
      if ((v190 & 1) == 0)
      {
        v104 = 0;
      }

      v111 = (v192 & 1) != 0 ? 0x10000 : 0;
      v112 = (v193 & 1) != 0 ? 0x1000000 : 0;
      v113 = (v194 & 1) != 0 ? &_mh_execute_header : 0;
      v114 = (v196 & 1) != 0 ? 0x10000000000 : 0;
      if ((sub_1002BE32C(v110, v205 & 1, v191 & 1 | (v197 << 48) | v104 | v111 | v112 | v113 | v114 | (v200 << 56), v203 & 1) & 1) == 0)
      {
LABEL_159:
        v179 = v102;
LABEL_160:
        sub_100014D40(v179, v103);
        sub_100014D40(v100, v101);
LABEL_161:
        v177 = &qword_1005D0F20;
        v178 = &qword_1004E9390;
        sub_100025F40(v99, &qword_1005D0F20, &qword_1004E9390);
        v174 = v97;
        goto LABEL_162;
      }

      v115 = *(v211 + 48);
      v116 = v213;
      sub_10000E268(v97, v213, &qword_1005D0F20, &qword_1004E9390);
      sub_10000E268(v99, v116 + v115, &qword_1005D0F20, &qword_1004E9390);
      v117 = v212;
      v118 = *(v212 + 48);
      v119 = v214;
      if (v118(v116, 1, v214) == 1)
      {
        if (v118(v116 + v115, 1, v119) == 1)
        {
          sub_100025F40(v116, &qword_1005D0F20, &qword_1004E9390);
          v103 = v218;
          v120 = v217;
          goto LABEL_193;
        }

        sub_100014D40(v217, v218);
        sub_100014D40(v100, v101);
        goto LABEL_191;
      }

      v182 = v210;
      sub_10000E268(v116, v210, &qword_1005D0F20, &qword_1004E9390);
      if (v118(v116 + v115, 1, v119) == 1)
      {
        sub_100014D40(v217, v218);
        sub_100014D40(v208, v101);
        (*(v117 + 8))(v182, v119);
LABEL_191:
        sub_100025F40(v116, &qword_1005D6770, &qword_1004EC278);
        goto LABEL_161;
      }

      v183 = v209;
      (*(v117 + 32))(v209, v116 + v115, v119);
      sub_100283BD4();
      v184 = sub_1004A5724();
      v185 = *(v117 + 8);
      v185(v183, v119);
      v185(v182, v119);
      sub_100025F40(v116, &qword_1005D0F20, &qword_1004E9390);
      v100 = v208;
      v103 = v218;
      v120 = v217;
      if ((v184 & 1) == 0)
      {
        v179 = v217;
        goto LABEL_160;
      }

LABEL_193:
      v56 = sub_10003A194(v187, v186, v120, v103);
      sub_100014D40(v120, v103);
      sub_100014D40(v100, v101);
      v134 = &qword_1005D0F20;
      v135 = &qword_1004E9390;
      sub_100025F40(v99, &qword_1005D0F20, &qword_1004E9390);
      v136 = v97;
LABEL_101:
      sub_100025F40(v136, v134, v135);
      return v56 & 1;
    case 0x10uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0x10)
      {
        goto LABEL_164;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        goto LABEL_164;
      }

      v40 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v41 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v42 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v43 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0 || (sub_1002C2370(v40, v42) & 1) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_134;
    case 0x11uLL:
      v127 = swift_projectBox();
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0x11)
      {
        goto LABEL_164;
      }

      v128 = v127[1];
      v217 = *v127;
      v129 = v127;
      v130 = *(sub_10000C9C0(&qword_1005D22E8, &unk_1004DA480) + 48);
      v131 = swift_projectBox();
      v133 = *v131;
      v132 = v131[1];
      sub_10000E268(v129 + v130, v21, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v131 + v130, v18, &unk_1005D91B0, &unk_1004CF400);
      if (v128 == v132 && (sub_1000FFC98(v217, v133) & 1) != 0)
      {
        sub_100016D2C();
        v56 = sub_1004A7034();
        v134 = &unk_1005D91B0;
        v135 = &unk_1004CF400;
        sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
        v136 = v21;
        goto LABEL_101;
      }

      v177 = &unk_1005D91B0;
      v178 = &unk_1004CF400;
      sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
      v174 = v21;
LABEL_162:
      v175 = v177;
      v176 = v178;
LABEL_163:
      sub_100025F40(v174, v175, v176);
LABEL_164:
      v56 = 0;
      return v56 & 1;
    case 0x12uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0x12)
      {
        goto LABEL_164;
      }

      if ((*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) != (*((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        goto LABEL_164;
      }

      v155 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v41 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v156 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v43 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0 || (sub_1002C2550(v155, v156) & 1) == 0)
      {
        goto LABEL_164;
      }

LABEL_134:
      v56 = v41 ^ v43 ^ 1;
      return v56 & 1;
    case 0x13uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0x13)
      {
        goto LABEL_164;
      }

      v171 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v172 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      v139 = sub_1000FFCF4(v171, v172);
      goto LABEL_154;
    case 0x14uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0x14)
      {
        goto LABEL_164;
      }

      v137 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v138 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      v139 = sub_1000FFDEC(v137, v138);
LABEL_154:
      v173 = v139;

      return v173 & 1;
    case 0x15uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) != 0x15)
      {
        goto LABEL_164;
      }

      if ((*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) != (*((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        goto LABEL_164;
      }

      v142 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v143 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        goto LABEL_164;
      }

      return sub_100115B88(v142, v143);
    case 0x16uLL:
      if (((v218 >> 59) & 0x1E | (v218 >> 2) & 1) == 0x16 && v218 == 0xB000000000000000)
      {
        goto LABEL_151;
      }

      goto LABEL_164;
    default:
      if ((v218 >> 59) & 0x1E | (v218 >> 2) & 1 || *(a1 + 16) != *(v218 + 16) || ((*(a1 + 17) ^ *(v218 + 17)) & 1) != 0 || ((*(a1 + 18) ^ *(v218 + 18)) & 1) != 0 || *(a1 + 24) != *(v218 + 24) || *(a1 + 32) != *(v218 + 32) || *(a1 + 40) != *(v218 + 40))
      {
        goto LABEL_164;
      }

LABEL_151:
      v56 = 1;
      return v56 & 1;
  }
}

unint64_t sub_1002BA3B0()
{
  result = qword_1005D7080;
  if (!qword_1005D7080)
  {
    result = swift_getWitnessTable(")u\t", &type metadata for MailboxToRename, v0, v1);
    atomic_store(result, &qword_1005D7080);
  }

  return result;
}

uint64_t sub_1002BA404(void *a1)
{
  if (*a1 >> 60 <= 0xAuLL)
  {
    return (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  }

  else
  {
    return (*a1 >> 3) + 22;
  }
}

uint64_t sub_1002BA448(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6A && *(a1 + 8))
  {
    return (*a1 + 106);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x69)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002BA4A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x69)
  {
    *result = a2 - 106;
    if (a3 >= 0x6A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1002BA508(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x16)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 22)) | 0xB000000000000000;
  }

  return result;
}

__n128 sub_1002BA564(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1002BA578(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1002BA5C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static FlagsWithModifications.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *&v11 = a2;
  WORD4(v11) = a3;
  v6 = *(&v11 + 1);
  *&v11 = a5;
  BYTE8(v11) = a6;
  v7 = *(&v11 + 1);
  LOBYTE(v11) = a2 & 1;
  *(&v11 + 1) = v6;
  v8 = v11;
  v9 = WORD4(v11);
  LOBYTE(v11) = a5 & 1;
  *(&v11 + 1) = v7;
  BYTE9(v11) = HIBYTE(a6);
  return sub_1002BE3A0(a1 & 0xFFFF010101010101, v8, v9, a4 & 0xFFFF010101010101, v11, WORD4(v11));
}

unint64_t Flags.init(unread:deleted:answered:draft:forwarded:redirected:junk:label:iCloudCleanup:)(char a1, char a2, char a3, char a4, char a5, char a6, unsigned __int8 a7, uint64_t a8)
{
  v8 = 256;
  if ((a2 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
  v10 = 0x10000;
  if ((a3 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((a4 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = v9 | v10 | v11;
  v13 = &_mh_execute_header;
  if ((a5 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x10000000000;
  if ((a6 & 1) == 0)
  {
    v14 = 0;
  }

  return v12 | v13 | v14 | (a7 << 48) | (a8 << 56);
}

void Flags.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  v5 = HIBYTE(a2);
  sub_1004A6EC4(a2 & 1);
  sub_1004A6EC4(BYTE1(a2) & 1);
  sub_1004A6EC4(BYTE2(a2) & 1);
  sub_1004A6EC4(BYTE3(a2) & 1);
  sub_1004A6EC4(BYTE4(a2) & 1);
  sub_1004A6EC4(BYTE5(a2) & 1);
  sub_1004A6EB4(BYTE6(a2));
  sub_1004A6EB4(v5);
  sub_1004A6EC4(a3 & 1);
}

Swift::Int Flags.hashValue.getter(uint64_t a1, char a2)
{
  sub_1004A6E94();
  Flags.hash(into:)(v5, a1 & 0xFFFF010101010101, a2);
  return sub_1004A6F14();
}

Swift::Int sub_1002BA880()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1004A6E94();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = &_mh_execute_header;
  if ((v5 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x10000000000;
  if ((v6 & 1) == 0)
  {
    v14 = 0;
  }

  Flags.hash(into:)(v16, v1 & 1 | (v7 << 48) | v10 | v11 | v12 | v13 | v14 | (v8 << 56), v9 & 1);
  return sub_1004A6F14();
}

void sub_1002BA964(uint64_t a1)
{
  v2 = 256;
  if ((v1[1] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = &_mh_execute_header;
  if ((v1[4] & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if ((v1[5] & 1) == 0)
  {
    v6 = 0;
  }

  Flags.hash(into:)(a1, *v1 & 1 | (v1[6] << 48) | v2 | v3 | v4 | v5 | v6 | (v1[7] << 56), v1[8] & 1);
}

Swift::Int sub_1002BA9EC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  sub_1004A6E94();
  v11 = 256;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v5 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = &_mh_execute_header;
  if ((v6 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 0x10000000000;
  if ((v7 & 1) == 0)
  {
    v15 = 0;
  }

  Flags.hash(into:)(v17, v2 & 1 | (v8 << 48) | v11 | v12 | v13 | v14 | v15 | (v9 << 56), v10 & 1);
  return sub_1004A6F14();
}

unint64_t sub_1002BAACC(_BYTE *a1, _BYTE *a2)
{
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (a1[2])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (a1[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = &_mh_execute_header;
  if (a1[4])
  {
    v10 = &_mh_execute_header;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if (a1[5])
  {
    v12 = 0x10000000000;
  }

  else
  {
    v12 = 0;
  }

  if ((a2[1] & 1) == 0)
  {
    v3 = 0;
  }

  if ((a2[2] & 1) == 0)
  {
    v5 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v7 = 0;
  }

  if ((a2[4] & 1) == 0)
  {
    v9 = 0;
  }

  if ((a2[5] & 1) == 0)
  {
    v11 = 0;
  }

  v13 = *a2 & 1 | (a2[6] << 48) | v3 | v5 | v7 | v9 | v11 | (a2[7] << 56);
  v14 = a2[8];
  v15 = a1[8] & 1;
  v16 = *a1 & 1 | (a1[6] << 48) | v4 | v6 | v8 | v10 | v12 | (a1[7] << 56);

  return sub_1002BE32C(v16, v15, v13, v14 & 1);
}

uint64_t Flags.description.getter(unint64_t a1, char a2)
{
  v2 = HIWORD(a1);
  v39 = HIBYTE(a1);
  sub_10000C9C0(&qword_1005D7088, &qword_1004EFE58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D0FC0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x646165726E75;
  *(inited + 48) = 0xE600000000000000;
  v4 = inited + 48;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x646574656C6564;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x6465726577736E61;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7466617264;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6564726177726F66;
  *(inited + 144) = 0xE900000000000064;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7463657269646572;
  *(inited + 168) = 0xEA00000000006465;
  v5 = 0;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "iCloudCleanup");
  *(inited + 198) = -4864;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v38 = v6;
    v7 = 7;
    if (v5 > 7)
    {
      v7 = v5;
    }

    v6 = -v7;
    v8 = (v4 + 24 * v5++);
    while (1)
    {
      if (&v6[v5] == 1)
      {
        __break(1u);
LABEL_71:
        v6 = sub_100085070(0, *(v6 + 2) + 1, 1, v6);
LABEL_17:
        v14 = v39;
        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v6 = sub_100085070((v15 > 1), v16 + 1, 1, v6);
        }

        v18 = 0xE400000000000000;
        v19 = 1802401130;
        goto LABEL_33;
      }

      v10 = *(v8 - 1);
      v9 = *v8;

      swift_getAtKeyPath();

      if (v40)
      {
        break;
      }

      ++v5;
      v8 += 3;
      if (v5 == 8)
      {
        v6 = v38;
        goto LABEL_14;
      }
    }

    v6 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100085070(0, *(v38 + 2) + 1, 1, v38);
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_100085070((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    v13 = &v6[16 * v12];
    *(v13 + 4) = v10;
    *(v13 + 5) = v9;
    v4 = inited + 48;
  }

  while (v5 != 7);
LABEL_14:

  if (!v2)
  {
    v14 = v39;
    if (v39 <= 3)
    {
      goto LABEL_34;
    }

LABEL_21:
    if (v14 > 5)
    {
      if (v14 == 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100085070(0, *(v6 + 2) + 1, 1, v6);
        }

        v21 = *(v6 + 2);
        v28 = *(v6 + 3);
        v22 = v21 + 1;
        if (v21 >= v28 >> 1)
        {
          v6 = sub_100085070((v28 > 1), v21 + 1, 1, v6);
        }

        v23 = 0xE600000000000000;
        v24 = 0x656C70727570;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100085070(0, *(v6 + 2) + 1, 1, v6);
        }

        v21 = *(v6 + 2);
        v31 = *(v6 + 3);
        v22 = v21 + 1;
        if (v21 >= v31 >> 1)
        {
          v6 = sub_100085070((v31 > 1), v21 + 1, 1, v6);
        }

        v23 = 0xE400000000000000;
        v24 = 2036429415;
      }
    }

    else if (v14 == 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100085070(0, *(v6 + 2) + 1, 1, v6);
      }

      v21 = *(v6 + 2);
      v20 = *(v6 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v6 = sub_100085070((v20 > 1), v21 + 1, 1, v6);
      }

      v23 = 0xE500000000000000;
      v24 = 0x6E65657267;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100085070(0, *(v6 + 2) + 1, 1, v6);
      }

      v21 = *(v6 + 2);
      v30 = *(v6 + 3);
      v22 = v21 + 1;
      if (v21 >= v30 >> 1)
      {
        v6 = sub_100085070((v30 > 1), v21 + 1, 1, v6);
      }

      v23 = 0xE400000000000000;
      v24 = 1702194274;
    }

    goto LABEL_68;
  }

  if (v2 == 1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_17;
    }

    goto LABEL_71;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_100085070(0, *(v6 + 2) + 1, 1, v6);
  }

  v14 = v39;
  v16 = *(v6 + 2);
  v25 = *(v6 + 3);
  v17 = v16 + 1;
  if (v16 >= v25 >> 1)
  {
    v6 = sub_100085070((v25 > 1), v16 + 1, 1, v6);
  }

  v18 = 0xE700000000000000;
  v19 = 0x6B6E754A746F6ELL;
LABEL_33:
  *(v6 + 2) = v17;
  v26 = &v6[16 * v16];
  *(v26 + 4) = v19;
  *(v26 + 5) = v18;
  if (v14 > 3)
  {
    goto LABEL_21;
  }

LABEL_34:
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100085070(0, *(v6 + 2) + 1, 1, v6);
      }

      v21 = *(v6 + 2);
      v29 = *(v6 + 3);
      v22 = v21 + 1;
      if (v21 >= v29 >> 1)
      {
        v6 = sub_100085070((v29 > 1), v21 + 1, 1, v6);
      }

      v23 = 0xE600000000000000;
      v24 = 0x65676E61726FLL;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100085070(0, *(v6 + 2) + 1, 1, v6);
      }

      v21 = *(v6 + 2);
      v32 = *(v6 + 3);
      v22 = v21 + 1;
      if (v21 >= v32 >> 1)
      {
        v6 = sub_100085070((v32 > 1), v21 + 1, 1, v6);
      }

      v23 = 0xE600000000000000;
      v24 = 0x776F6C6C6579;
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_69;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100085070(0, *(v6 + 2) + 1, 1, v6);
    }

    v21 = *(v6 + 2);
    v27 = *(v6 + 3);
    v22 = v21 + 1;
    if (v21 >= v27 >> 1)
    {
      v6 = sub_100085070((v27 > 1), v21 + 1, 1, v6);
    }

    v23 = 0xE300000000000000;
    v24 = 6579570;
  }

LABEL_68:
  *(v6 + 2) = v22;
  v33 = &v6[16 * v21];
  *(v33 + 4) = v24;
  *(v33 + 5) = v23;
LABEL_69:
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
  v34 = sub_1004A5614();
  v36 = v35;

  v41._countAndFlagsBits = v34;
  v41._object = v36;
  sub_1004A5994(v41);

  v42._countAndFlagsBits = 41;
  v42._object = 0xE100000000000000;
  sub_1004A5994(v42);

  return 0x287367616C46;
}

uint64_t sub_1002BB3D4()
{
  v1 = 256;
  if ((v0[1] & 1) == 0)
  {
    v1 = 0;
  }

  v2 = 0x10000;
  if ((v0[2] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if ((v0[3] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = &_mh_execute_header;
  if ((v0[4] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x10000000000;
  if ((v0[5] & 1) == 0)
  {
    v5 = 0;
  }

  return Flags.description.getter(*v0 & 1 | (v0[6] << 48) | v1 | v2 | v3 | v4 | v5 | (v0[7] << 56), v0[8] & 1);
}

uint64_t FlagsWithModifications.flags.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  return result;
}

uint64_t FlagsWithModifications.originalFlags.getter(uint64_t a1, uint64_t a2, char a3)
{
  *&v4 = a2;
  BYTE8(v4) = a3;
  return *(&v4 + 1);
}

uint64_t FlagsWithModifications.hasLocalChanges.getter(unint64_t a1, unint64_t a2, __int16 a3)
{
  *v5 = a2;
  v5[8] = a3;
  if (BYTE1(a2) == 2)
  {
    LOBYTE(v3) = a1 != 2;
  }

  else if (a1 == 2 || (((a2 >> 8) ^ a1) & 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = (*&v5[1] >> 8) & 1 ^ (a1 >> 8) & 1 | (*&v5[1] >> 16) & 1 ^ (a1 >> 16) & 1 | (*&v5[1] >> 24) & 1 ^ (a1 >> 24) & 1 | v5[5] & 1 ^ BYTE4(a1) & 1 | (*&v5[1] >> 40) & 1 ^ (a1 >> 40) & 1 | ((*&v5[1] ^ a1) >> 48 != 0) | a2 ^ ((a3 & 0x100) >> 8);
  }

  return v3 & 1;
}

uint64_t FlagsWithModifications.locallyModified.getter(unint64_t a1, uint64_t a2, __int16 a3)
{
  *v10 = a2;
  *&v10[8] = a3;
  v3 = *&v10[1];
  *v10 = _swiftEmptySetSingleton;
  if (v3 == 2)
  {

    return sub_1002BE494(&off_1005AEAC0);
  }

  else
  {
    v6 = a2;
    v8 = v3 ^ a1;
    if ((v3 ^ a1))
    {
      sub_1002BDA90(&v9, 0);
    }

    if (((v3 & 0x100) == 0) == ((a1 >> 8) & 1))
    {
      sub_1002BDA90(&v9, 1);
    }

    if (((v3 & 0x10000) == 0) == ((a1 >> 16) & 1))
    {
      sub_1002BDA90(&v9, 2);
    }

    if (((v3 & 0x1000000) == 0) == ((a1 >> 24) & 1))
    {
      sub_1002BDA90(&v9, 3);
    }

    if (((v3 & &_mh_execute_header) == 0) == (BYTE4(a1) & 1))
    {
      sub_1002BDA90(&v9, 4);
    }

    if (((v3 & 0x10000000000) == 0) == ((a1 >> 40) & 1))
    {
      sub_1002BDA90(&v9, 5);
    }

    if ((v8 & 0xFF000000000000) != 0)
    {
      sub_1002BDA90(&v9, 6);
    }

    if (HIBYTE(v8))
    {
      sub_1002BDA90(&v9, 7);
    }

    if ((v6 & 1) != (a3 & 0x100) >> 8)
    {
      sub_1002BDA90(&v9, 8);
    }

    return *v10;
  }
}

void FlagsWithModifications.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = HIBYTE(a4);
  *v6 = a3;
  v6[8] = a4;
  Flags.hash(into:)(a1, a2 & 0xFFFF010101010101, a3 & 1);
  if (v6[1] == 2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);

    Flags.hash(into:)(a1, *&v6[1] & 0xFFFF010101010101, v4 & 1);
  }
}

Swift::Int FlagsWithModifications.hashValue.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  v4 = a2;
  *v8 = a2;
  *&v8[8] = a3;
  v6 = *&v8[1];
  sub_1004A6E94();
  Flags.hash(into:)(v8, a1 & 0xFFFF010101010101, v4 & 1);
  if (v6 == 2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    Flags.hash(into:)(v8, v6 & 0xFFFF010101010101, v3 & 1);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1002BB878()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[9];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[13];
  v26 = v0[14];
  v27 = v0[15];
  v28 = v0[16];
  v29 = v0[17];
  v9 = v0[7];
  v10 = v0[8];
  sub_1004A6E94();
  v11 = 256;
  if ((v2 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  if (v5)
  {
    v14 = &_mh_execute_header;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = 0x10000000000;
  }

  else
  {
    v15 = 0;
  }

  Flags.hash(into:)(v30, v1 & 1 | (v7 << 48) | v11 | v12 | v13 | v14 | v15 | (v9 << 56), v10 & 1);
  if (v8 == 2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    v16 = 256;
    if ((v22 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = 0x10000;
    if ((v23 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 0x1000000;
    if ((v24 & 1) == 0)
    {
      v18 = 0;
    }

    if (v25)
    {
      v19 = &_mh_execute_header;
    }

    else
    {
      v19 = 0;
    }

    if (v26)
    {
      v20 = 0x10000000000;
    }

    else
    {
      v20 = 0;
    }

    Flags.hash(into:)(v30, v8 & 1 | (v27 << 48) | v16 | v17 | v18 | v19 | v20 | (v28 << 56), v29 & 1);
  }

  return sub_1004A6F14();
}

void sub_1002BBA30(uint64_t a1)
{
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v19 = v1[15];
  v20 = v1[16];
  v21 = v1[17];
  v9 = 256;
  if ((v1[1] & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v11 = 0;
  }

  if (v1[4])
  {
    v12 = &_mh_execute_header;
  }

  else
  {
    v12 = 0;
  }

  if (v1[5])
  {
    v13 = 0x10000000000;
  }

  else
  {
    v13 = 0;
  }

  Flags.hash(into:)(a1, *v1 & 1 | (v1[6] << 48) | v9 | v10 | v11 | v12 | v13 | (v1[7] << 56), v1[8] & 1);
  if (v3 == 2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    v14 = 256;
    if ((v4 & 1) == 0)
    {
      v14 = 0;
    }

    v15 = 0x10000;
    if ((v5 & 1) == 0)
    {
      v15 = 0;
    }

    v16 = 0x1000000;
    if ((v6 & 1) == 0)
    {
      v16 = 0;
    }

    if (v7)
    {
      v17 = &_mh_execute_header;
    }

    else
    {
      v17 = 0;
    }

    if (v8)
    {
      v18 = 0x10000000000;
    }

    else
    {
      v18 = 0;
    }

    Flags.hash(into:)(a1, v3 & 1 | (v19 << 48) | v14 | v15 | v16 | v17 | v18 | (v20 << 56), v21 & 1);
  }
}

Swift::Int sub_1002BBBE8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[9];
  v23 = v1[10];
  v24 = v1[11];
  v25 = v1[12];
  v26 = v1[13];
  v27 = v1[14];
  v28 = v1[15];
  v29 = v1[16];
  v30 = v1[17];
  v10 = v1[7];
  v11 = v1[8];
  sub_1004A6E94();
  v12 = 256;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x10000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x1000000;
  if ((v5 & 1) == 0)
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = &_mh_execute_header;
  }

  else
  {
    v15 = 0;
  }

  if (v7)
  {
    v16 = 0x10000000000;
  }

  else
  {
    v16 = 0;
  }

  Flags.hash(into:)(v31, v2 & 1 | (v8 << 48) | v12 | v13 | v14 | v15 | v16 | (v10 << 56), v11 & 1);
  if (v9 == 2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    v17 = 256;
    if ((v23 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 0x10000;
    if ((v24 & 1) == 0)
    {
      v18 = 0;
    }

    v19 = 0x1000000;
    if ((v25 & 1) == 0)
    {
      v19 = 0;
    }

    if (v26)
    {
      v20 = &_mh_execute_header;
    }

    else
    {
      v20 = 0;
    }

    if (v27)
    {
      v21 = 0x10000000000;
    }

    else
    {
      v21 = 0;
    }

    Flags.hash(into:)(v31, v9 & 1 | (v28 << 48) | v17 | v18 | v19 | v20 | v21 | (v29 << 56), v30 & 1);
  }

  return sub_1004A6F14();
}

uint64_t sub_1002BBD9C(char *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[8];
  v11 = *(a1 + 9);
  v12 = a1[17];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = a2[6];
  v20 = a2[8];
  v21 = *(a2 + 9);
  v22 = a2[17];
  v23 = a1[7];
  v24 = a2[7];
  v25 = v3 & 1;
  v26 = (v4 & 1) == 0;
  v27 = 256;
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = 256;
  }

  v26 = (v5 & 1) == 0;
  v29 = 0x10000;
  if (v26)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x10000;
  }

  v26 = (v6 & 1) == 0;
  v31 = 0x1000000;
  if (v26)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0x1000000;
  }

  v26 = (v7 & 1) == 0;
  v33 = &_mh_execute_header;
  if (v26)
  {
    v34 = 0;
  }

  else
  {
    v34 = &_mh_execute_header;
  }

  v26 = (v8 & 1) == 0;
  v35 = 0x10000000000;
  if (v26)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0x10000000000;
  }

  v37 = v25 | (v9 << 48) | v28 | v30 | v32 | v34 | v36 | (v23 << 56);
  LOBYTE(v41) = v10 & 1;
  *(&v41 + 1) = v11;
  BYTE9(v41) = v12;
  v38 = v41;
  v39 = WORD4(v41);
  if ((v14 & 1) == 0)
  {
    v27 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v29 = 0;
  }

  if ((v16 & 1) == 0)
  {
    v31 = 0;
  }

  if ((v17 & 1) == 0)
  {
    v33 = 0;
  }

  if ((v18 & 1) == 0)
  {
    v35 = 0;
  }

  v42[0] = v20 & 1;
  *&v42[1] = v21;
  v42[9] = v22;

  return sub_1002BE3A0(v37, v38, v39, v13 & 1 | (v19 << 48) | v27 | v29 | v31 | v33 | v35 | (v24 << 56), *v42, *&v42[8]);
}

char *FlagsWithModifications.description.getter(uint64_t a1, char *a2, __int16 a3)
{
  v3 = a2;
  v11 = a2;
  LOWORD(v12) = a3;
  LOBYTE(v11) = a2 & 1;
  v5 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, v11, a3);
  v6 = sub_1002BC110(v5);

  v11 = v6;

  sub_10020BFFC(&v11);

  if (*(v11 + 2))
  {
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
    v7 = sub_1004A5614();
    v9 = v8;
  }

  else
  {

    v9 = 0xE400000000000000;
    v7 = 1701736302;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1004A6724(36);

  v11 = 0xD000000000000013;
  v12 = 0x80000001004AE080;
  v13._countAndFlagsBits = Flags.description.getter(a1 & 0xFFFF010101010101, v3 & 1);
  sub_1004A5994(v13);

  v14._countAndFlagsBits = 0x696669646F6D202CLL;
  v14._object = 0xEC000000203A6465;
  sub_1004A5994(v14);
  v15._countAndFlagsBits = v7;
  v15._object = v9;
  sub_1004A5994(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  sub_1004A5994(v16);
  return v11;
}

uint64_t sub_1002BC110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = *(a1 + 16);
  sub_100091A08(0, v1, 0);
  v3 = a1 + 56;
  result = sub_1004A6554();
  v5 = v26;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_38;
    }

    v10 = *(*(a1 + 48) + result);
    if (v10 <= 3)
    {
      if (*(*(a1 + 48) + result) > 1u)
      {
        if (v10 == 2)
        {
          v11 = 0xE800000000000000;
          v12 = 0x6465726577736E61;
        }

        else
        {
          v11 = 0xE500000000000000;
          v12 = 0x7466617264;
        }
      }

      else if (*(*(a1 + 48) + result))
      {
        v11 = 0xE700000000000000;
        v12 = 0x646574656C6564;
      }

      else
      {
        v11 = 0xE600000000000000;
        v12 = 0x646165726E75;
      }
    }

    else if (*(*(a1 + 48) + result) <= 5u)
    {
      if (v10 == 4)
      {
        v11 = 0xE900000000000064;
        v12 = 0x6564726177726F66;
      }

      else
      {
        v11 = 0xEA00000000006465;
        v12 = 0x7463657269646572;
      }
    }

    else if (v10 == 6)
    {
      v11 = 0xE400000000000000;
      v12 = 1802401130;
    }

    else if (v10 == 7)
    {
      v11 = 0xE500000000000000;
      v12 = 0x6C6562616CLL;
    }

    else
    {
      v12 = 0x6C4364756F6C4369;
      v11 = 0xED000070756E6165;
    }

    v13 = *(a1 + 36);
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_100091A08((v14 > 1), v15 + 1, 1);
      v5 = v26;
      v13 = v24;
      result = v25;
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v12;
    v16[5] = v11;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_39;
    }

    v3 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v8);
    if ((v17 & v9) == 0)
    {
      goto LABEL_40;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_41;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v7 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v8 << 6;
      v20 = v8 + 1;
      v21 = (a1 + 64 + 8 * v8);
      while (v20 < (v7 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_100020944(result, v13, 0);
          v5 = v26;
          v7 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v13, 0);
      v5 = v26;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

char *sub_1002BC444()
{
  v1 = 256;
  if ((*(v0 + 1) & 1) == 0)
  {
    v1 = 0;
  }

  v2 = 0x10000;
  if ((*(v0 + 2) & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if ((*(v0 + 3) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = &_mh_execute_header;
  if ((*(v0 + 4) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x10000000000;
  if ((*(v0 + 5) & 1) == 0)
  {
    v5 = 0;
  }

  *&v7[1] = *(v0 + 9);
  v7[9] = *(v0 + 17);
  return FlagsWithModifications.description.getter(*v0 & 1 | (*(v0 + 6) << 48) | v1 | v2 | v3 | v4 | v5 | (*(v0 + 7) << 56), *v7, *&v7[8]);
}

BOOL static FlagsUpdate.Label.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1 == 8)
  {
    return a2 == 8;
  }

  if (a2 == 8)
  {
    return 0;
  }

  return a1 == a2;
}

void FlagsUpdate.Label.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 8)
  {
    v2 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
    v2 = a2;
  }

  sub_1004A6EB4(v2);
}

Swift::Int FlagsUpdate.Label.hashValue.getter(unsigned __int8 a1)
{
  v2 = a1;
  sub_1004A6E94();
  v3 = 0;
  if (v2 != 8)
  {
    sub_1004A6EB4(1uLL);
    v3 = a1;
  }

  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

Swift::Int sub_1002BC600()
{
  v1 = *v0;
  sub_1004A6E94();
  v2 = 0;
  if (v1 != 8)
  {
    sub_1004A6EB4(1uLL);
    v2 = v1;
  }

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

void sub_1002BC660()
{
  v1 = *v0;
  if (v1 == 8)
  {
    v1 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v1);
}

Swift::Int sub_1002BC6A8(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  if (v2 == 8)
  {
    v2 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

BOOL sub_1002BC708(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 8)
  {
    return v3 == 8;
  }

  if (v3 == 8)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t FlagsUpdate.init(unread:deleted:answered:draft:forwarded:redirected:junk:label:iCloudCleanup:)(char a1, char a2, char a3, char a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, uint64_t a8)
{
  v8 = 256;
  if ((a2 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
  v10 = 0x10000;
  if ((a3 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((a4 & 1) == 0)
  {
    v11 = 0;
  }

  return v9 | v10 | v11 | (a5 << 32) | (a6 << 40) | (a7 << 48) | (a8 << 56);
}

void FlagsUpdate.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  sub_1004A6EC4(a2 & 1);
  sub_1004A6EC4(BYTE1(a2) & 1);
  sub_1004A6EC4(BYTE2(a2) & 1);
  sub_1004A6EC4(BYTE3(a2) & 1);
  if ((a2 & 0xFF00000000) == 0x200000000)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    sub_1004A6EC4(1u);
    v5 = HIDWORD(a2) & 1;
  }

  sub_1004A6EC4(v5);
  if ((a2 & 0xFF0000000000) == 0x20000000000)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    sub_1004A6EC4(1u);
    v6 = (a2 >> 40) & 1;
  }

  v7 = HIBYTE(a2);
  sub_1004A6EC4(v6);
  if ((a2 & 0xFF000000000000) == 0x3000000000000)
  {
    sub_1004A6EC4(0);
    if (v7 != 8)
    {
LABEL_9:
      sub_1004A6EB4(1uLL);
      goto LABEL_12;
    }
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(BYTE6(a2));
    if (v7 != 8)
    {
      goto LABEL_9;
    }
  }

  v7 = 0;
LABEL_12:
  sub_1004A6EB4(v7);
  if (a3 == 2)
  {
    v8 = 0;
  }

  else
  {
    sub_1004A6EC4(1u);
    v8 = a3 & 1;
  }

  sub_1004A6EC4(v8);
}

Swift::Int FlagsUpdate.hashValue.getter(uint64_t a1, char a2)
{
  sub_1004A6E94();
  FlagsUpdate.hash(into:)(v5, a1 & 0xFFFFFFFF01010101, a2);
  return sub_1004A6F14();
}

Swift::Int sub_1002BC91C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1004A6E94();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  FlagsUpdate.hash(into:)(v14, (v5 << 32) | (v6 << 40) | (v7 << 48) | v1 & 1 | v10 | v11 | v12 | (v8 << 56), v9);
  return sub_1004A6F14();
}

void sub_1002BC9E8(uint64_t a1)
{
  v2 = 256;
  if ((v1[1] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v4 = 0;
  }

  FlagsUpdate.hash(into:)(a1, (v1[4] << 32) | (v1[5] << 40) | (v1[6] << 48) | *v1 & 1 | v2 | v3 | v4 | (v1[7] << 56), v1[8]);
}

Swift::Int sub_1002BCA54(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  sub_1004A6E94();
  v11 = 256;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v5 & 1) == 0)
  {
    v13 = 0;
  }

  FlagsUpdate.hash(into:)(v15, (v6 << 32) | (v7 << 40) | (v8 << 48) | v2 & 1 | v11 | v12 | v13 | (v9 << 56), v10);
  return sub_1004A6F14();
}

uint64_t sub_1002BCB1C(_BYTE *a1, _BYTE *a2)
{
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (a1[2])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (a1[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a1[4] << 32) | (a1[5] << 40) | (a1[6] << 48) | *a1 & 1 | v4 | v6 | v8 | (a1[7] << 56);
  if ((a2[1] & 1) == 0)
  {
    v3 = 0;
  }

  if ((a2[2] & 1) == 0)
  {
    v5 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v7 = 0;
  }

  v10 = (a2[4] << 32) | (a2[5] << 40) | (a2[6] << 48) | *a2 & 1 | v3 | v5 | v7 | (a2[7] << 56);
  v11 = a2[8];
  v12 = a1[8];

  return sub_1002BE1D4(v9, v12, v10, v11);
}

unint64_t Flags.init(_:)(uint64_t a1)
{
  v1 = a1 & 0xFF000000000000;
  if ((a1 & 0xFF000000000000) == 0x3000000000000)
  {
    v1 = 0;
  }

  v2 = a1 & 0xFF00000000000000;
  if ((a1 & 0xFF00000000000000) == 0x800000000000000)
  {
    v2 = 0x100000000000000;
  }

  return v1 | a1 & 0x10100000000 | v2 | a1 & 0x1010101;
}

unint64_t FlagsWithModifications.update(with:)(unint64_t result, char a2)
{
  v3 = *(v2 + 9);
  if (v3 != 2)
  {
    v4 = v3 & 1;
    v5 = result & 1;
    if (*v2 == v4)
    {
      *v2 = v5;
    }

    v2[9] = v5;
    v3 = *(v2 + 9);
    if (v3 != 2)
    {
      v6 = v2[1] ^ (v3 >> 8) & 1;
      v7 = (result >> 8) & 1;
      if ((v6 & 1) == 0)
      {
        v2[1] = v7;
      }

      v2[10] = v7;
      v3 = *(v2 + 9);
      if (v3 != 2)
      {
        if (((v2[2] ^ (v3 >> 16) & 1) & 1) == 0)
        {
          v2[2] = BYTE2(result) & 1;
        }

        v2[11] = BYTE2(result) & 1;
        v3 = *(v2 + 9);
        if (v3 != 2)
        {
          v8 = v2[3] ^ (v3 >> 24) & 1;
          v9 = BYTE3(result) & 1;
          if ((v8 & 1) == 0)
          {
            v2[3] = v9;
          }

          v2[12] = v9;
          v3 = *(v2 + 9);
        }
      }
    }
  }

  if ((result & 0xFF00000000) != 0x200000000 && v3 != 2)
  {
    if (((v2[4] ^ BYTE4(v3) & 1) & 1) == 0)
    {
      v2[4] = BYTE4(result) & 1;
    }

    v2[13] = BYTE4(result) & 1;
    v3 = *(v2 + 9);
  }

  if ((result & 0xFF0000000000) != 0x20000000000 && v3 != 2)
  {
    v10 = v2[5] ^ (v3 >> 40) & 1;
    v11 = (result >> 40) & 1;
    if ((v10 & 1) == 0)
    {
      v2[5] = v11;
    }

    v2[14] = v11;
    v3 = *(v2 + 9);
  }

  v12 = HIBYTE(result);
  if (BYTE6(result) != 3 && v3 != 2)
  {
    if (v2[6] == BYTE6(v3))
    {
      v2[6] = BYTE6(result);
    }

    v2[15] = BYTE6(result);
    v3 = *(v2 + 9);
  }

  if (v12 == 8)
  {
    if (v3 != 2 && !HIBYTE(v3))
    {
      if (v2[7] <= 1u)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = v2[7];
      }

      if (v2[7])
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if (v3 != 2)
  {
    if (v2[7] != HIBYTE(v3))
    {
LABEL_40:
      v2[16] = v12;
      goto LABEL_41;
    }

LABEL_39:
    v2[7] = v12;
    goto LABEL_40;
  }

LABEL_41:
  if (a2 != 2 && v2[9] != 2)
  {
    v13 = a2 & 1;
    if (v2[8] == v2[17])
    {
      v2[8] = v13;
    }

    v2[17] = v13;
  }

  return result;
}

void *sub_1002BCF18()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D70F8, &qword_1004F0368);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1002BD058()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D70E0, &qword_1004F0358);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1002BD1A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D70F8, &qword_1004F0368);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1004A6E94();
      sub_1004A6EB4(v16);
      result = sub_1004A6F14();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1002BD3C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D70E0, &qword_1004F0358);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1004A6E94();

      SectionSpecifier.Part.hash(into:)(v24, v16);
      result = sub_1004A6F14();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1002BD5F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D70F8, &qword_1004F0368);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1004A6E94();
      sub_1004A6EB4(v17);
      result = sub_1004A6F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1002BD840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D70E0, &qword_1004F0358);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1004A6E94();
      SectionSpecifier.Part.hash(into:)(v26, v17);
      result = sub_1004A6F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1002BDA90(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1004A6E94();
  sub_1004A6EB4(a2);
  v6 = sub_1004A6F14();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1002BDCC8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1002BDB88(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1004A6E94();
  SectionSpecifier.Part.hash(into:)(v15, a2);
  v6 = sub_1004A6F14();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *v2;

    sub_1002BDE14(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1002BDCC8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002BD5F0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1002BCF18();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1002BD1A8(v5 + 1);
  }

  v8 = *v3;
  sub_1004A6E94();
  sub_1004A6EB4(v4);
  result = sub_1004A6F14();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void sub_1002BDE14(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002BD840(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1002BD058();
      goto LABEL_12;
    }

    sub_1002BD3C8(v6 + 1);
  }

  v8 = *v3;
  sub_1004A6E94();
  SectionSpecifier.Part.hash(into:)(v18, a1);
  v9 = sub_1004A6F14();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {

      v13 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v12, a1);

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004A6E14();
  __break(1u);
}

void *sub_1002BDF84(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005D70E8, &qword_1004F0360);
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
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D70F0, &unk_1004F13C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002BE0B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D70D8, &qword_1004F0350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1002BE1D4(unint64_t a1, int a2, unint64_t a3, int a4)
{
  v4 = 0;
  if (((a1 >> 8) & 1) != ((a3 >> 8) & 1) || ((a1 ^ a3) & 1) != 0 || ((a1 >> 16) & 1) != ((a3 >> 16) & 1) || ((a1 >> 24) & 1) != ((a3 >> 24) & 1))
  {
    return v4;
  }

  if ((a1 & 0xFF00000000) == 0x200000000)
  {
    if (BYTE4(a3) != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE4(a3) == 2 || ((((a1 & &_mh_execute_header) == 0) ^ HIDWORD(a3)) & 1) == 0)
    {
      return v4;
    }
  }

  if ((a1 & 0xFF0000000000) == 0x20000000000)
  {
    if (BYTE5(a3) != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE5(a3) == 2 || ((((a1 & 0x10000000000) == 0) ^ (a3 >> 40)) & 1) == 0)
    {
      return v4;
    }
  }

  if ((a1 & 0xFF000000000000) == 0x3000000000000)
  {
    if (BYTE6(a3) != 3)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE6(a3) == 3 || ((a1 ^ a3) & 0xFF000000000000) != 0)
    {
      return v4;
    }
  }

  v5 = HIBYTE(a3);
  if (HIBYTE(a1) == 8)
  {
    if (v5 != 8)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (HIBYTE(a1) == v5)
  {
LABEL_24:
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 2 || ((a4 ^ a2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1002BE3A0(unint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  result = 0;
  *&v9 = a2;
  BYTE8(v9) = a3;
  v8 = *(&v9 + 1);
  *v10 = a5;
  v10[8] = a6;
  if (((a1 ^ a4) & 1) == 0 && ((a1 >> 8) & 1) == ((a4 >> 8) & 1) && ((a1 >> 16) & 1) == ((a4 >> 16) & 1) && ((a1 >> 24) & 1) == ((a4 >> 24) & 1) && (BYTE4(a1) & 1) == (BYTE4(a4) & 1) && ((a1 >> 40) & 1) == ((a4 >> 40) & 1) && !((a1 ^ a4) >> 48) && ((a2 ^ a5) & 1) == 0)
  {
    if (v8 == 2)
    {
      if (BYTE1(a5) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(a5) == 2 || (sub_1002BE32C(v8 & 0xFFFF010101010101, (a3 >> 8) & 1, *&v10[1] & 0xFFFF010101010101, (a6 >> 8) & 1) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1002BE494(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002BEC3C();
  result = sub_1004A5D64();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1002BDA90(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1002BE50C()
{
  result = qword_1005D7090;
  if (!qword_1005D7090)
  {
    result = swift_getWitnessTable("!n\t", &type metadata for Flags.JunkStatus, v0, v1);
    atomic_store(result, &qword_1005D7090);
  }

  return result;
}

unint64_t sub_1002BE564()
{
  result = qword_1005D7098;
  if (!qword_1005D7098)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Flags.Label, &type metadata for Flags.Label, v0, v1);
    atomic_store(result, &qword_1005D7098);
  }

  return result;
}

unint64_t sub_1002BE5BC()
{
  result = qword_1005D70A0;
  if (!qword_1005D70A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Flags, &type metadata for Flags, v0, v1);
    atomic_store(result, &qword_1005D70A0);
  }

  return result;
}

unint64_t sub_1002BE614()
{
  result = qword_1005D70A8;
  if (!qword_1005D70A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FlagsWithModifications, &type metadata for FlagsWithModifications, v0, v1);
    atomic_store(result, &qword_1005D70A8);
  }

  return result;
}

unint64_t sub_1002BE66C()
{
  result = qword_1005D70B0;
  if (!qword_1005D70B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FlagsUpdate.Label, &type metadata for FlagsUpdate.Label, v0, v1);
    atomic_store(result, &qword_1005D70B0);
  }

  return result;
}

unint64_t sub_1002BE6C4()
{
  result = qword_1005D70B8;
  if (!qword_1005D70B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FlagsUpdate, &type metadata for FlagsUpdate, v0, v1);
    atomic_store(result, &qword_1005D70B8);
  }

  return result;
}

unint64_t sub_1002BE71C()
{
  result = qword_1005D70C0;
  if (!qword_1005D70C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FlagKind, &type metadata for FlagKind, v0, v1);
    atomic_store(result, &qword_1005D70C0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Flags(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FlagsWithModifications(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FlagsWithModifications(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FlagsWithModifications(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1002BE8B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002BE910(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlagsUpdate.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 8;
  v9 = v7 - 8;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlagsUpdate.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002BEAB8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    return v1 - 7;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1002BEACC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MailboxAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MailboxAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002BEC3C()
{
  result = qword_1005D7100;
  if (!qword_1005D7100)
  {
    result = swift_getWitnessTable("1l\t", &type metadata for FlagKind, v0, v1);
    atomic_store(result, &qword_1005D7100);
  }

  return result;
}

uint64_t MessageMetadata.UnparsedHeader.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1002BED5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002BEDDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MessageHeader(uint64_t a1)
{
  result = qword_1005D7160;
  if (!qword_1005D7160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002BEE98(uint64_t a1)
{
  result = sub_1004A5384();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MailboxOfInterest.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void MailboxOfInterest.metadata.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 36);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

__n128 MailboxOfInterest.metadata.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  *(v1 + 64) = *(a1 + 32);
  return result;
}

unint64_t MailboxOfInterest.localModification.getter()
{
  v1 = *(v0 + 72);
  sub_1000CA1A0(v1);
  return v1;
}

unint64_t MailboxOfInterest.localModification.setter(uint64_t a1, int a2)
{
  result = sub_1000CB838(*(v2 + 72));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t MailboxOfInterest.latestLocalChange.setter(uint64_t result)
{
  *(v1 + 84) = result;
  *(v1 + 88) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxOfInterest.init(id:name:uidValidity:fetchedWindow:highestModificationSequenceValue:localModification:latestLocalChange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 84) = a14;
  *(a9 + 88) = a15 & 1;
  return result;
}

uint64_t sub_1002BF138(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s16IMAP2Persistence17MailboxOfInterestV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t *(*MailboxOfInterest.uidValidity.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 12) = *(v1 + 36);
  return sub_1002BF1FC;
}

uint64_t *sub_1002BF1FC(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 12);
  *(v1 + 32) = *(result + 2);
  *(v1 + 36) = v2;
  return result;
}

uint64_t MailboxOfInterest.highestModificationSequenceValue.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t (*MailboxOfInterest.highestModificationSequenceValue.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  return sub_1002BF268;
}

uint64_t sub_1002BF268(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

Swift::Int MailboxOfInterest.hashValue.getter()
{
  sub_1004A6E94();
  sub_1004A6EB4(*(v0 + 24) | (*(v0 + 24) << 32));
  return sub_1004A6F14();
}

Swift::Int sub_1002BF2F8()
{
  v1 = *(v0 + 24);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  return sub_1004A6F14();
}

Swift::Int sub_1002BF340(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1004A6E94();
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

double sub_1002BF384@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t _s16IMAP2Persistence17MailboxOfInterestV17LocalModificationO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, int a2, unint64_t a3, int a4)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a3 == 1)
      {
        return 1;
      }
    }

    else if (a1 == 2)
    {
      if (a3 == 2)
      {
        return 1;
      }
    }

    else if (a3 >= 3 && a2 == a4 && (sub_1000FFC98(a1, a3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a3)
  {
    return 1;
  }

  return 0;
}

uint64_t _s16IMAP2Persistence17MailboxOfInterestV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  if (*(result + 8) != a2[1])
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
LABEL_11:
    if ((*(result + 24) | (*(result + 24) << 32)) != (*(a2 + 6) | (*(a2 + 6) << 32)))
    {
      return 0;
    }

    v9 = result;
    if ((sub_1000FFC98(*(result + 16), a2[2]) & 1) == 0)
    {
      return 0;
    }

    v10 = *(v9 + 48);
    v15[0] = *(v9 + 32);
    v15[1] = v10;
    v16 = *(v9 + 64);
    v11 = *(a2 + 3);
    v13[0] = *(a2 + 2);
    v13[1] = v11;
    v14 = *(a2 + 64);
    if (!_s16IMAP2Persistence15MailboxMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(v15, v13) || (_s16IMAP2Persistence17MailboxOfInterestV17LocalModificationO21__derived_enum_equalsySbAE_AEtFZ_0(*(v9 + 72), *(v9 + 80), a2[9], *(a2 + 20)) & 1) == 0)
    {
      return 0;
    }

    v12 = *(a2 + 88);
    if (*(v9 + 88))
    {
      if ((a2[11] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v9 + 84) != *(a2 + 21))
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    return 1;
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
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002BF544()
{
  result = qword_1005D7198;
  if (!qword_1005D7198)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxOfInterest, &type metadata for MailboxOfInterest, v0, v1);
    atomic_store(result, &qword_1005D7198);
  }

  return result;
}

__n128 sub_1002BF59C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1002BF5C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1002BF608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002BF670(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 12))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BF6CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1002BF720(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

Swift::Int sub_1002BF750(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
LABEL_7:
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1004A6E94();
    sub_1004A6EB4(v14);
    result = sub_1004A6F14();
    v16 = -1 << *(a2 + 32);
    v17 = result & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(a2 + 48) + 16 * v17);
      if (v19[1] == v14)
      {
        v20 = *v19;
        v21 = *(*v19 + 16);
        if (v21 == *(v15 + 16))
        {
          break;
        }
      }

LABEL_16:
      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }
    }

    v22 = (v20 + 32);
    if (v21)
    {
      v23 = v20 == v15;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = (v15 + 32);
      while (v21)
      {
        if (*v22 != *v24)
        {
          goto LABEL_16;
        }

        ++v22;
        ++v24;
        if (!--v21)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1002BF928(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v20 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v21 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      sub_1004A6E94();

      SectionSpecifier.Part.hash(into:)(v22, v13);
      v14 = sub_1004A6F14();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {

        v19 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v18, v13);

        if (v19)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = v20;
      v7 = v21;
      if (!v21)
      {
        goto LABEL_8;
      }
    }

LABEL_21:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v21 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002BFAE4(uint64_t a1, uint64_t a2)
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
  for (i = v2 - 1; ; --i)
  {
    v6 = v3[3];
    v178 = v3[2];
    v179 = v6;
    v7 = v3[1];
    v176 = *v3;
    v177 = v7;
    v8 = v4[2];
    v9 = v4[3];
    v10 = *v4;
    *v182 = v4[1];
    *&v182[16] = v8;
    v11 = v4[4];
    *&v182[32] = v9;
    v183 = v11;
    v180 = v3[4];
    v181 = v10;
    v12 = *(&v177 + 1);
    v13 = v177;
    v14 = *(&v179 + 1);
    v15 = (*(&v180 + 1) >> 59) & 6 | ((*(&v179 + 1) & 0x2000000000000000) != 0);
    if (v15 <= 1)
    {
      break;
    }

    if (v15 == 2)
    {
      if (((*(&v183 + 1) >> 59) & 6 | ((*&v182[40] & 0x2000000000000000) != 0)) != 2)
      {
        return 0;
      }

      v27 = *(&v181 + 1);
      v28 = v181;
      v29 = *(&v176 + 1) >> 62;
      v30 = *(&v181 + 1) >> 62;
      if (*(&v176 + 1) >> 62 == 3)
      {
        v31 = 0;
        if (v176 == __PAIR128__(0xC000000000000000, 0) && *(&v181 + 1) >> 62 == 3)
        {
          v31 = 0;
          if (v181 == __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_378;
          }
        }

LABEL_80:
        if (v30 <= 1)
        {
          goto LABEL_81;
        }

LABEL_40:
        if (v30 != 2)
        {
          if (v31)
          {
            return 0;
          }

          goto LABEL_378;
        }

        v39 = *(v181 + 16);
        v38 = *(v181 + 24);
        v40 = __OFSUB__(v38, v39);
        v41 = v38 - v39;
        if (v40)
        {
          goto LABEL_387;
        }
      }

      else
      {
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v50 = *(v176 + 16);
            v49 = *(v176 + 24);
            v40 = __OFSUB__(v49, v50);
            v31 = v49 - v50;
            if (v40)
            {
              goto LABEL_401;
            }

            goto LABEL_80;
          }

          v31 = 0;
          if (v30 <= 1)
          {
            goto LABEL_81;
          }

          goto LABEL_40;
        }

        if (v29)
        {
          LODWORD(v31) = DWORD1(v176) - v176;
          if (__OFSUB__(DWORD1(v176), v176))
          {
            goto LABEL_403;
          }

          v31 = v31;
          goto LABEL_80;
        }

        v31 = BYTE14(v176);
        if (v30 > 1)
        {
          goto LABEL_40;
        }

LABEL_81:
        if (v30)
        {
          LODWORD(v41) = DWORD1(v181) - v181;
          if (__OFSUB__(DWORD1(v181), v181))
          {
            goto LABEL_384;
          }

          v41 = v41;
        }

        else
        {
          v41 = BYTE14(v181);
        }
      }

      if (v31 != v41)
      {
        return 0;
      }

      if (v31 < 1)
      {
        goto LABEL_378;
      }

      if (v29 > 1)
      {
        v173 = i;
        if (v29 == 2)
        {
          v57 = *(v176 + 16);
          v56 = *(v176 + 24);
          sub_1001F0C7C(&v181, v175);
          sub_1001F0C7C(&v176, v175);
          v58 = sub_1004A40D4();
          if (v58)
          {
            v59 = sub_1004A4104();
            if (__OFSUB__(v57, v59))
            {
              goto LABEL_426;
            }

            v58 += v57 - v59;
          }

          if (__OFSUB__(v56, v57))
          {
            goto LABEL_419;
          }

          goto LABEL_147;
        }

        memset(v174, 0, 14);
        sub_1001F0C7C(&v181, v175);
        sub_1001F0C7C(&v176, v175);
        sub_100066884(v174, v28, v27, v175);
        sub_1001F0CD8(&v181);
        sub_1001F0CD8(&v176);
        v73 = v175[0];
      }

      else
      {
        if (!v29)
        {
          v55 = i;
          LODWORD(v174[0]) = v176;
          WORD2(v174[0]) = WORD2(v176);
          *(v174 + 6) = *(&v176 + 6);
          sub_1001F0C7C(&v181, v175);
          sub_1001F0C7C(&v176, v175);
          sub_100066884(v174, v28, v27, v175);
          sub_1001F0CD8(&v181);
          sub_1001F0CD8(&v176);
          i = v55;
          if ((v175[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_378;
        }

        v173 = i;
        v71 = v176;
        if (v176 >> 32 < v176)
        {
          goto LABEL_416;
        }

        sub_1001F0C7C(&v181, v175);
        sub_1001F0C7C(&v176, v175);
        v58 = sub_1004A40D4();
        if (v58)
        {
          v72 = sub_1004A4104();
          if (__OFSUB__(v71, v72))
          {
            goto LABEL_431;
          }

          v58 += v71 - v72;
        }

LABEL_147:
        sub_1004A40F4();
        sub_100066884(v58, v28, v27, v175);
        sub_1001F0CD8(&v181);
        sub_1001F0CD8(&v176);
        v73 = v175[0];
      }

      i = v173;
      if ((v73 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_378;
    }

    if (v15 == 3)
    {
      if (((*(&v183 + 1) >> 59) & 6 | ((*&v182[40] & 0x2000000000000000) != 0)) != 3)
      {
        return 0;
      }

      v16 = *(&v177 + 1);
      v17 = i;
      v18 = *v182;
      v19 = *&v182[8];
      if (v176 != v181 && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      if (v13 == v18 && v16 == v19)
      {
        i = v17;
      }

      else
      {
        v48 = sub_1004A6D34();
        i = v17;
        if ((v48 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (((*(&v183 + 1) >> 59) & 6 | ((*&v182[40] & 0x2000000000000000) != 0)) != 4)
      {
        return 0;
      }

      if (*(&v183 + 1) != 0x2000000000000000)
      {
        return 0;
      }

      v32 = vorrq_s8(*&v182[8], *&v182[24]);
      if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v183 | *v182 | *(&v181 + 1) | v181 | *&v182[40])
      {
        return 0;
      }
    }

LABEL_378:
    if (!i)
    {
      return 1;
    }

    v4 += 5;
    v3 += 5;
  }

  v172 = i;
  if (!v15)
  {
    if ((*(&v183 + 1) >> 59) & 6 | ((*&v182[40] & 0x2000000000000000) != 0))
    {
      return 0;
    }

    v21 = *(&v181 + 1);
    v20 = v181;
    v22 = *v182;
    v23 = *&v182[8];
    v24 = *(&v176 + 1) >> 62;
    v25 = *(&v181 + 1) >> 62;
    if (*(&v176 + 1) >> 62 == 3)
    {
      v26 = 0;
      if (v176 == __PAIR128__(0xC000000000000000, 0) && *(&v181 + 1) >> 62 == 3)
      {
        v26 = 0;
        if (v181 == __PAIR128__(0xC000000000000000, 0))
        {
LABEL_112:
          sub_1001F0C7C(&v181, v175);
          sub_1001F0C7C(&v176, v175);
          goto LABEL_160;
        }
      }
    }

    else if (v24 > 1)
    {
      if (v24 != 2)
      {
        v26 = 0;
        if (v25 <= 1)
        {
LABEL_103:
          if (v25)
          {
            LODWORD(v44) = DWORD1(v181) - v181;
            if (__OFSUB__(DWORD1(v181), v181))
            {
              __break(1u);
LABEL_384:
              __break(1u);
LABEL_385:
              __break(1u);
LABEL_386:
              __break(1u);
LABEL_387:
              __break(1u);
LABEL_388:
              __break(1u);
LABEL_389:
              __break(1u);
LABEL_390:
              __break(1u);
LABEL_391:
              __break(1u);
LABEL_392:
              __break(1u);
LABEL_393:
              __break(1u);
LABEL_394:
              __break(1u);
LABEL_395:
              __break(1u);
LABEL_396:
              __break(1u);
LABEL_397:
              __break(1u);
LABEL_398:
              __break(1u);
LABEL_399:
              __break(1u);
LABEL_400:
              __break(1u);
LABEL_401:
              __break(1u);
LABEL_402:
              __break(1u);
LABEL_403:
              __break(1u);
LABEL_404:
              __break(1u);
LABEL_405:
              __break(1u);
LABEL_406:
              __break(1u);
LABEL_407:
              __break(1u);
LABEL_408:
              __break(1u);
LABEL_409:
              __break(1u);
LABEL_410:
              __break(1u);
LABEL_411:
              __break(1u);
LABEL_412:
              __break(1u);
LABEL_413:
              __break(1u);
LABEL_414:
              __break(1u);
LABEL_415:
              __break(1u);
LABEL_416:
              __break(1u);
LABEL_417:
              __break(1u);
LABEL_418:
              __break(1u);
LABEL_419:
              __break(1u);
LABEL_420:
              __break(1u);
LABEL_421:
              __break(1u);
LABEL_422:
              __break(1u);
LABEL_423:
              __break(1u);
LABEL_424:
              __break(1u);
LABEL_425:
              __break(1u);
LABEL_426:
              __break(1u);
LABEL_427:
              __break(1u);
LABEL_428:
              __break(1u);
LABEL_429:
              __break(1u);
LABEL_430:
              __break(1u);
LABEL_431:
              __break(1u);
            }

            v44 = v44;
          }

          else
          {
            v44 = BYTE14(v181);
          }

          goto LABEL_107;
        }

LABEL_47:
        if (v25 != 2)
        {
          if (v26)
          {
            return 0;
          }

          goto LABEL_112;
        }

        v43 = *(v181 + 16);
        v42 = *(v181 + 24);
        v40 = __OFSUB__(v42, v43);
        v44 = v42 - v43;
        if (v40)
        {
          goto LABEL_388;
        }

LABEL_107:
        if (v26 != v44)
        {
          return 0;
        }

        if (v26 < 1)
        {
          goto LABEL_112;
        }

        if (v24 > 1)
        {
          if (v24 != 2)
          {
            memset(v174, 0, 14);
            sub_1001F0C7C(&v181, v175);
            sub_1001F0C7C(&v176, v175);
            sub_100066884(v174, v20, v21, v175);
            if ((v175[0] & 1) == 0)
            {
              goto LABEL_382;
            }

LABEL_160:
            v77 = v12 >> 62;
            v78 = v23 >> 62;
            if (v12 >> 62 == 3)
            {
              v79 = 0;
              if (!v13 && v12 == 0xC000000000000000 && v23 >> 62 == 3)
              {
                v79 = 0;
                if (!v22 && v23 == 0xC000000000000000)
                {
                  goto LABEL_365;
                }
              }
            }

            else if (v77 > 1)
            {
              if (v77 != 2)
              {
                v79 = 0;
                if (v78 <= 1)
                {
LABEL_181:
                  if (v78)
                  {
                    LODWORD(v82) = HIDWORD(v22) - v22;
                    if (__OFSUB__(HIDWORD(v22), v22))
                    {
                      goto LABEL_390;
                    }

                    v82 = v82;
                  }

                  else
                  {
                    v82 = BYTE6(v23);
                  }

LABEL_185:
                  if (v79 != v82)
                  {
                    goto LABEL_382;
                  }

                  if (v79 < 1)
                  {
                    goto LABEL_365;
                  }

                  if (v77 > 1)
                  {
                    if (v77 != 2)
                    {
                      *&v175[6] = 0;
                      *v175 = 0;
                      sub_100014CEC(v22, v23);
                      sub_100014CEC(v22, v23);
                      sub_100066884(v175, v22, v23, v174);
                      sub_1001F0CD8(&v181);
                      sub_1001F0CD8(&v176);
                      sub_100014D40(v22, v23);
                      v86 = v22;
                      goto LABEL_244;
                    }

                    v85 = v22;
                    v87 = *(v13 + 16);
                    v88 = *(v13 + 24);
                  }

                  else
                  {
                    v85 = v22;
                    if (!v77)
                    {
                      *v175 = v13;
                      *&v175[8] = v12;
                      v175[10] = BYTE2(v12);
                      v175[11] = BYTE3(v12);
                      v175[12] = BYTE4(v12);
                      v175[13] = BYTE5(v12);
                      sub_100014CEC(v22, v23);
                      sub_100014CEC(v22, v23);
                      sub_100066884(v175, v22, v23, v174);
                      sub_1001F0CD8(&v181);
                      sub_1001F0CD8(&v176);
                      sub_100014D40(v22, v23);
                      v86 = v22;
LABEL_244:
                      v108 = v23;
                      goto LABEL_377;
                    }

                    v87 = v13;
                    v88 = v13 >> 32;
                    if (v88 < v87)
                    {
                      goto LABEL_422;
                    }
                  }

                  sub_100014CEC(v85, v23);
                  sub_100014CEC(v85, v23);
                  sub_100014CEC(v85, v23);
                  v105 = sub_10003A0DC(v87, v88, v12 & 0x3FFFFFFFFFFFFFFFLL, v85, v23);
                  sub_100014D40(v85, v23);
                  sub_1001F0CD8(&v181);
                  sub_1001F0CD8(&v176);
                  sub_100014D40(v85, v23);
                  v106 = v85;
                  v107 = v23;
LABEL_373:
                  sub_100014D40(v106, v107);
                  i = v172;
                  if ((v105 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_378;
                }

LABEL_170:
                if (v78 != 2)
                {
                  goto LABEL_347;
                }

                v81 = *(v22 + 16);
                v80 = *(v22 + 24);
                v40 = __OFSUB__(v80, v81);
                v82 = v80 - v81;
                if (v40)
                {
                  goto LABEL_391;
                }

                goto LABEL_185;
              }

              v84 = *(v13 + 16);
              v83 = *(v13 + 24);
              v40 = __OFSUB__(v83, v84);
              v79 = v83 - v84;
              if (v40)
              {
                goto LABEL_406;
              }
            }

            else
            {
              if (!v77)
              {
                v79 = BYTE6(v12);
                if (v78 <= 1)
                {
                  goto LABEL_181;
                }

                goto LABEL_170;
              }

              LODWORD(v79) = HIDWORD(v13) - v13;
              if (__OFSUB__(HIDWORD(v13), v13))
              {
                goto LABEL_405;
              }

              v79 = v79;
            }

            if (v78 <= 1)
            {
              goto LABEL_181;
            }

            goto LABEL_170;
          }

          v167 = *&v182[8];
          v170 = *v182;
          v61 = *(v176 + 16);
          v165 = *(v176 + 24);
          sub_1001F0C7C(&v181, v175);
          sub_1001F0C7C(&v176, v175);
          v62 = sub_1004A40D4();
          if (v62)
          {
            v63 = sub_1004A4104();
            if (__OFSUB__(v61, v63))
            {
              goto LABEL_427;
            }

            v62 += v61 - v63;
          }

          if (__OFSUB__(v165, v61))
          {
            goto LABEL_420;
          }

          sub_1004A40F4();
          sub_100066884(v62, v20, v21, v175);
          v60 = v175[0];
        }

        else
        {
          v170 = *v182;
          if (!v24)
          {
            LODWORD(v174[0]) = v176;
            WORD2(v174[0]) = WORD2(v176);
            *(v174 + 6) = *(&v176 + 6);
            sub_1001F0C7C(&v181, v175);
            sub_1001F0C7C(&v176, v175);
            sub_100066884(v174, v20, v21, v175);
            v60 = v175[0];
            goto LABEL_157;
          }

          v167 = *&v182[8];
          v154 = *(&v177 + 1);
          v74 = v176;
          if (v176 >> 32 < v176)
          {
            goto LABEL_417;
          }

          sub_1001F0C7C(&v181, v175);
          sub_1001F0C7C(&v176, v175);
          v75 = sub_1004A40D4();
          if (v75)
          {
            v76 = sub_1004A4104();
            if (__OFSUB__(v74, v76))
            {
              goto LABEL_430;
            }

            v75 += v74 - v76;
          }

          v12 = v154;
          sub_1004A40F4();
          sub_100066884(v75, v20, v21, v175);
          v60 = v175[0];
        }

        v23 = v167;
LABEL_157:
        v22 = v170;
        if ((v60 & 1) == 0)
        {
          goto LABEL_382;
        }

        goto LABEL_160;
      }

      v52 = *(v176 + 16);
      v51 = *(v176 + 24);
      v40 = __OFSUB__(v51, v52);
      v26 = v51 - v52;
      if (v40)
      {
        goto LABEL_399;
      }
    }

    else
    {
      if (!v24)
      {
        v26 = BYTE14(v176);
        if (v25 <= 1)
        {
          goto LABEL_103;
        }

        goto LABEL_47;
      }

      LODWORD(v26) = DWORD1(v176) - v176;
      if (__OFSUB__(DWORD1(v176), v176))
      {
        goto LABEL_400;
      }

      v26 = v26;
    }

    if (v25 <= 1)
    {
      goto LABEL_103;
    }

    goto LABEL_47;
  }

  v33 = *&v182[40];
  v158 = *(&v183 + 1);
  if (((*(&v183 + 1) >> 59) & 6 | ((*&v182[40] & 0x2000000000000000) != 0)) != 1)
  {
    return 0;
  }

  v159 = v179;
  v160 = *(&v180 + 1);
  v34 = *&v182[8];
  v164 = *(&v178 + 1);
  v166 = *v182;
  v162 = v178;
  v163 = *&v182[16];
  v169 = *&v182[24];
  v35 = *(&v176 + 1) >> 62;
  v36 = *(&v181 + 1) >> 62;
  v161 = *&v182[32];
  v156 = v180;
  v157 = v183;
  if (*(&v176 + 1) >> 62 == 3)
  {
    v37 = 0;
    if (v176 == __PAIR128__(0xC000000000000000, 0) && *(&v181 + 1) >> 62 == 3)
    {
      v37 = 0;
      if (v181 == __PAIR128__(0xC000000000000000, 0))
      {
LABEL_131:
        sub_1001F0C7C(&v181, v175);
        sub_1001F0C7C(&v176, v175);
        v67 = v33;
        goto LABEL_202;
      }
    }

LABEL_121:
    if (v36 <= 1)
    {
      goto LABEL_122;
    }

    goto LABEL_54;
  }

  if (v35 <= 1)
  {
    if (!v35)
    {
      v37 = BYTE14(v176);
      if (v36 <= 1)
      {
        goto LABEL_122;
      }

      goto LABEL_54;
    }

    LODWORD(v37) = DWORD1(v176) - v176;
    if (__OFSUB__(DWORD1(v176), v176))
    {
      goto LABEL_404;
    }

    v37 = v37;
    goto LABEL_121;
  }

  if (v35 == 2)
  {
    v54 = *(v176 + 16);
    v53 = *(v176 + 24);
    v40 = __OFSUB__(v53, v54);
    v37 = v53 - v54;
    if (v40)
    {
      goto LABEL_402;
    }

    goto LABEL_121;
  }

  v37 = 0;
  if (v36 <= 1)
  {
LABEL_122:
    if (v36)
    {
      LODWORD(v47) = DWORD1(v181) - v181;
      if (__OFSUB__(DWORD1(v181), v181))
      {
        goto LABEL_386;
      }

      v47 = v47;
    }

    else
    {
      v47 = BYTE14(v181);
    }

    goto LABEL_126;
  }

LABEL_54:
  if (v36 != 2)
  {
    if (v37)
    {
      return 0;
    }

    goto LABEL_131;
  }

  v46 = *(v181 + 16);
  v45 = *(v181 + 24);
  v40 = __OFSUB__(v45, v46);
  v47 = v45 - v46;
  if (v40)
  {
    goto LABEL_385;
  }

LABEL_126:
  if (v37 != v47)
  {
    return 0;
  }

  if (v37 < 1)
  {
    goto LABEL_131;
  }

  if (v35 <= 1)
  {
    v152 = *&v182[8];
    if (!v35)
    {
      LODWORD(v174[0]) = v176;
      WORD2(v174[0]) = WORD2(v176);
      *(v174 + 6) = *(&v176 + 6);
      v64 = *(&v181 + 1);
      v65 = v181;
      sub_1001F0C7C(&v181, v175);
      sub_1001F0C7C(&v176, v175);
      sub_100066884(v174, v65, v64, v175);
      v66 = v175[0];
      goto LABEL_199;
    }

    v151 = v181;
    v153 = *(&v177 + 1);
    v89 = v176;
    if (v176 >> 32 < v176)
    {
      goto LABEL_415;
    }

    sub_1001F0C7C(&v181, v175);
    sub_1001F0C7C(&v176, v175);
    v69 = sub_1004A40D4();
    if (v69)
    {
      v90 = sub_1004A4104();
      if (__OFSUB__(v89, v90))
      {
        goto LABEL_429;
      }

      v69 += v89 - v90;
    }

LABEL_198:
    sub_1004A40F4();
    sub_100066884(v69, v151, *(&v151 + 1), v175);
    v66 = v175[0];
    v12 = v153;
LABEL_199:
    v67 = v33;
    v34 = v152;
    if ((v66 & 1) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_202;
  }

  v151 = v181;
  if (v35 == 2)
  {
    v152 = *&v182[8];
    v153 = *(&v177 + 1);
    v68 = *(v176 + 16);
    v150 = *(v176 + 24);
    sub_1001F0C7C(&v181, v175);
    sub_1001F0C7C(&v176, v175);
    v69 = sub_1004A40D4();
    if (v69)
    {
      v70 = sub_1004A4104();
      if (__OFSUB__(v68, v70))
      {
        goto LABEL_428;
      }

      v69 += v68 - v70;
    }

    if (__OFSUB__(v150, v68))
    {
      goto LABEL_418;
    }

    goto LABEL_198;
  }

  memset(v174, 0, 14);
  sub_1001F0C7C(&v181, v175);
  sub_1001F0C7C(&v176, v175);
  sub_100066884(v174, v151, *(&v151 + 1), v175);
  v67 = v33;
  if ((v175[0] & 1) == 0)
  {
    goto LABEL_382;
  }

LABEL_202:
  v91 = v12 >> 62;
  v92 = v34 >> 62;
  if (v12 >> 62 == 3)
  {
    v93 = 0;
    v94 = v169;
    if (!v13 && v12 == 0xC000000000000000 && v34 >> 62 == 3)
    {
      v93 = 0;
      if (!v166 && v34 == 0xC000000000000000)
      {
LABEL_235:
        v100 = v161;
        v101 = v164;
        goto LABEL_249;
      }
    }

LABEL_224:
    if (v92 <= 1)
    {
      goto LABEL_225;
    }

    goto LABEL_212;
  }

  v94 = v169;
  if (v91 <= 1)
  {
    if (!v91)
    {
      v93 = BYTE6(v12);
      if (v92 <= 1)
      {
        goto LABEL_225;
      }

      goto LABEL_212;
    }

    LODWORD(v93) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_408;
    }

    v93 = v93;
    goto LABEL_224;
  }

  if (v91 == 2)
  {
    v99 = *(v13 + 16);
    v98 = *(v13 + 24);
    v40 = __OFSUB__(v98, v99);
    v93 = v98 - v99;
    if (v40)
    {
      goto LABEL_407;
    }

    goto LABEL_224;
  }

  v93 = 0;
  if (v92 <= 1)
  {
LABEL_225:
    if (v92)
    {
      LODWORD(v97) = HIDWORD(v166) - v166;
      if (__OFSUB__(HIDWORD(v166), v166))
      {
        goto LABEL_389;
      }

      v97 = v97;
    }

    else
    {
      v97 = BYTE6(v34);
    }

    goto LABEL_229;
  }

LABEL_212:
  if (v92 != 2)
  {
    v100 = v161;
    v101 = v164;
    if (v93)
    {
      goto LABEL_382;
    }

    goto LABEL_249;
  }

  v96 = *(v166 + 16);
  v95 = *(v166 + 24);
  v40 = __OFSUB__(v95, v96);
  v97 = v95 - v96;
  if (v40)
  {
    goto LABEL_392;
  }

LABEL_229:
  if (v93 != v97)
  {
    goto LABEL_382;
  }

  if (v93 < 1)
  {
    goto LABEL_235;
  }

  if (v91 > 1)
  {
    if (v91 == 2)
    {
      v103 = *(v13 + 24);
      v155 = *(v13 + 16);
      sub_100014CEC(v166, v34);
      sub_100014CEC(v166, v34);
      sub_100014CEC(v166, v34);
      v104 = sub_10003A0DC(v155, v103, v12 & 0x3FFFFFFFFFFFFFFFLL, v166, v34);
      sub_100014D40(v166, v34);
      sub_100014D40(v166, v34);
      sub_100014D40(v166, v34);
      v100 = v161;
      v94 = v169;
      v101 = v164;
      if ((v104 & 1) == 0)
      {
        goto LABEL_382;
      }
    }

    else
    {
      *&v175[6] = 0;
      *v175 = 0;
      sub_100014CEC(v166, v34);
      sub_100014CEC(v166, v34);
      sub_100066884(v175, v166, v34, v174);
      sub_100014D40(v166, v34);
      sub_100014D40(v166, v34);
      v100 = v161;
      v101 = v164;
      if ((v174[0] & 1) == 0)
      {
        goto LABEL_382;
      }
    }
  }

  else
  {
    v102 = v34;
    if (v91)
    {
      v109 = v13;
      v110 = v13 >> 32;
      if (v13 >> 32 < v13)
      {
        goto LABEL_421;
      }

      v111 = v102;
      sub_100014CEC(v166, v102);
      sub_100014CEC(v166, v111);
      sub_100014CEC(v166, v111);
      v112 = sub_10003A0DC(v109, v110, v12 & 0x3FFFFFFFFFFFFFFFLL, v166, v111);
      sub_100014D40(v166, v111);
      sub_100014D40(v166, v111);
      sub_100014D40(v166, v111);
      v100 = v161;
      v94 = v169;
      v101 = v164;
      if ((v112 & 1) == 0)
      {
        goto LABEL_382;
      }
    }

    else
    {
      *v175 = v13;
      *&v175[8] = v12;
      v175[10] = BYTE2(v12);
      v175[11] = BYTE3(v12);
      v175[12] = BYTE4(v12);
      v175[13] = BYTE5(v12);
      sub_100014CEC(v166, v34);
      sub_100014CEC(v166, v34);
      sub_100066884(v175, v166, v34, v174);
      sub_100014D40(v166, v34);
      sub_100014D40(v166, v34);
      v100 = v161;
      v101 = v164;
      if ((v174[0] & 1) == 0)
      {
        goto LABEL_382;
      }
    }
  }

LABEL_249:
  v113 = v101 >> 62;
  v114 = v94 >> 62;
  if (v101 >> 62 == 3)
  {
    v115 = 0;
    if (!v162 && v101 == 0xC000000000000000 && v94 >> 62 == 3)
    {
      v115 = 0;
      if (!v163 && v94 == 0xC000000000000000)
      {
        goto LABEL_291;
      }
    }

LABEL_271:
    if (v114 <= 1)
    {
      goto LABEL_272;
    }

    goto LABEL_259;
  }

  if (v113 <= 1)
  {
    if (!v113)
    {
      v115 = BYTE6(v101);
      if (v114 <= 1)
      {
        goto LABEL_272;
      }

      goto LABEL_259;
    }

    LODWORD(v115) = HIDWORD(v162) - v162;
    if (__OFSUB__(HIDWORD(v162), v162))
    {
      goto LABEL_409;
    }

    v115 = v115;
    goto LABEL_271;
  }

  if (v113 == 2)
  {
    v120 = *(v162 + 16);
    v119 = *(v162 + 24);
    v40 = __OFSUB__(v119, v120);
    v115 = v119 - v120;
    if (v40)
    {
      goto LABEL_410;
    }

    goto LABEL_271;
  }

  v115 = 0;
  if (v114 <= 1)
  {
LABEL_272:
    if (v114)
    {
      LODWORD(v118) = HIDWORD(v163) - v163;
      if (__OFSUB__(HIDWORD(v163), v163))
      {
        goto LABEL_393;
      }

      v118 = v118;
    }

    else
    {
      v118 = BYTE6(v94);
    }

    goto LABEL_276;
  }

LABEL_259:
  if (v114 != 2)
  {
    if (v115)
    {
      goto LABEL_382;
    }

    goto LABEL_291;
  }

  v117 = *(v163 + 16);
  v116 = *(v163 + 24);
  v40 = __OFSUB__(v116, v117);
  v118 = v116 - v117;
  if (v40)
  {
    goto LABEL_394;
  }

LABEL_276:
  if (v115 != v118)
  {
    goto LABEL_382;
  }

  if (v115 < 1)
  {
    goto LABEL_291;
  }

  if (v113 > 1)
  {
    if (v113 == 2)
    {
      v122 = v101;
      v168 = *(v162 + 24);
      v171 = *(v162 + 16);
      sub_100014CEC(v163, v94);
      sub_100014CEC(v163, v94);
      sub_100014CEC(v163, v94);
      LOBYTE(v122) = sub_10003A0DC(v171, v168, v122 & 0x3FFFFFFFFFFFFFFFLL, v163, v94);
      sub_100014D40(v163, v94);
      sub_100014D40(v163, v94);
      sub_100014D40(v163, v94);
      if ((v122 & 1) == 0)
      {
        goto LABEL_382;
      }

      goto LABEL_291;
    }

    *&v175[6] = 0;
    *v175 = 0;
    sub_100014CEC(v163, v94);
    sub_100014CEC(v163, v94);
    sub_100066884(v175, v163, v94, v174);
    sub_100014D40(v163, v94);
    v121 = v163;
    goto LABEL_290;
  }

  if (!v113)
  {
    *v175 = v162;
    *&v175[8] = v101;
    v175[10] = BYTE2(v101);
    v175[11] = BYTE3(v101);
    v175[12] = BYTE4(v101);
    v175[13] = BYTE5(v101);
    sub_100014CEC(v163, v94);
    sub_100014CEC(v163, v94);
    sub_100066884(v175, v163, v94, v174);
    sub_100014D40(v163, v94);
    v121 = v163;
LABEL_290:
    sub_100014D40(v121, v94);
    if ((v174[0] & 1) == 0)
    {
      goto LABEL_382;
    }

LABEL_291:
    v124 = v14 >> 62;
    v125 = v67 >> 62;
    if (v14 >> 62 == 3)
    {
      v126 = 0;
      if (!v159 && (v14 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v67 >> 62 == 3)
      {
        v126 = 0;
        if (!v100 && (v67 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
        {
          goto LABEL_324;
        }
      }
    }

    else if (v124 > 1)
    {
      if (v124 != 2)
      {
        v126 = 0;
        if (v125 <= 1)
        {
LABEL_314:
          if (v125)
          {
            LODWORD(v129) = HIDWORD(v100) - v100;
            if (__OFSUB__(HIDWORD(v100), v100))
            {
              goto LABEL_395;
            }

            v129 = v129;
          }

          else
          {
            v129 = BYTE6(v67);
          }

          goto LABEL_318;
        }

LABEL_301:
        if (v125 != 2)
        {
          v132 = v156;
          v133 = v157;
          v134 = v158;
          if (v126)
          {
            goto LABEL_382;
          }

          goto LABEL_333;
        }

        v128 = *(v100 + 16);
        v127 = *(v100 + 24);
        v40 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v40)
        {
          goto LABEL_396;
        }

LABEL_318:
        if (v126 != v129)
        {
          goto LABEL_382;
        }

        if (v126 >= 1)
        {
          if (v124 > 1)
          {
            if (v124 != 2)
            {
              *&v175[6] = 0;
              *v175 = 0;
              sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100066884(v175, v100, v67 & 0xDFFFFFFFFFFFFFFFLL, v174);
              sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              v132 = v156;
              v133 = v157;
              v134 = v158;
              if ((v174[0] & 1) == 0)
              {
                goto LABEL_382;
              }

LABEL_333:
              v138 = v134 & 0xCFFFFFFFFFFFFFFFLL;
              v139 = v160 >> 62;
              v140 = v134 >> 62;
              if (v160 >> 62 == 3)
              {
                v79 = 0;
                if (!v132 && (v160 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v134 >> 62 == 3)
                {
                  v79 = 0;
                  if (!v133 && v138 == 0xC000000000000000)
                  {
                    goto LABEL_365;
                  }
                }
              }

              else if (v139 > 1)
              {
                if (v139 != 2)
                {
                  v79 = 0;
                  if (v140 <= 1)
                  {
LABEL_356:
                    if (v140)
                    {
                      LODWORD(v143) = HIDWORD(v133) - v133;
                      if (__OFSUB__(HIDWORD(v133), v133))
                      {
                        goto LABEL_397;
                      }

                      v143 = v143;
                    }

                    else
                    {
                      v143 = BYTE6(v134);
                    }

                    goto LABEL_360;
                  }

LABEL_343:
                  if (v140 != 2)
                  {
LABEL_347:
                    if (v79)
                    {
                      goto LABEL_382;
                    }

LABEL_365:
                    sub_1001F0CD8(&v181);
                    sub_1001F0CD8(&v176);
                    i = v172;
                    goto LABEL_378;
                  }

                  v142 = *(v133 + 16);
                  v141 = *(v133 + 24);
                  v40 = __OFSUB__(v141, v142);
                  v143 = v141 - v142;
                  if (v40)
                  {
                    goto LABEL_398;
                  }

LABEL_360:
                  if (v79 != v143)
                  {
                    goto LABEL_382;
                  }

                  if (v79 < 1)
                  {
                    goto LABEL_365;
                  }

                  if (v139 > 1)
                  {
                    if (v139 != 2)
                    {
                      *&v175[6] = 0;
                      *v175 = 0;
                      sub_100014CEC(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                      sub_100014CEC(v133, v138);
                      goto LABEL_376;
                    }

                    v146 = *(v132 + 16);
                    v147 = *(v132 + 24);
                    sub_100014CEC(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                    sub_100014CEC(v133, v138);
                    sub_100014CEC(v133, v138);
                    v148 = v160 & 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    if (!v139)
                    {
                      *v175 = v132;
                      *&v175[8] = v160;
                      *&v175[12] = WORD2(v160);
                      sub_100014CEC(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                      sub_100014CEC(v133, v138);
LABEL_376:
                      sub_100066884(v175, v133, v138, v174);
                      sub_1001F0CD8(&v181);
                      sub_1001F0CD8(&v176);
                      sub_100014D40(v133, v138);
                      v86 = v133;
                      v108 = v138;
LABEL_377:
                      sub_100014D40(v86, v108);
                      i = v172;
                      if ((v174[0] & 1) == 0)
                      {
                        return 0;
                      }

                      goto LABEL_378;
                    }

                    v146 = v132;
                    v147 = v132 >> 32;
                    if (v132 >> 32 < v132)
                    {
                      goto LABEL_425;
                    }

                    sub_100014CEC(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                    sub_100014CEC(v133, v138);
                    sub_100014CEC(v133, v138);
                    v148 = v160 & 0xFFFFFFFFFFFFFFFLL;
                  }

                  v105 = sub_10003A0DC(v146, v147, v148, v133, v138);
                  sub_100014D40(v133, v138);
                  sub_1001F0CD8(&v181);
                  sub_1001F0CD8(&v176);
                  sub_100014D40(v133, v138);
                  v106 = v133;
                  v107 = v138;
                  goto LABEL_373;
                }

                v145 = *(v132 + 16);
                v144 = *(v132 + 24);
                v40 = __OFSUB__(v144, v145);
                v79 = v144 - v145;
                if (v40)
                {
                  goto LABEL_413;
                }
              }

              else
              {
                if (!v139)
                {
                  v79 = BYTE6(v160);
                  if (v140 <= 1)
                  {
                    goto LABEL_356;
                  }

                  goto LABEL_343;
                }

                LODWORD(v79) = HIDWORD(v132) - v132;
                if (__OFSUB__(HIDWORD(v132), v132))
                {
                  goto LABEL_414;
                }

                v79 = v79;
              }

              if (v140 <= 1)
              {
                goto LABEL_356;
              }

              goto LABEL_343;
            }

            v135 = *(v159 + 16);
            v136 = *(v159 + 24);
          }

          else
          {
            if (!v124)
            {
              *v175 = v159;
              *&v175[8] = v14;
              v175[10] = BYTE2(v14);
              v175[11] = BYTE3(v14);
              v175[12] = BYTE4(v14);
              v175[13] = BYTE5(v14);
              sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100066884(v175, v100, v67 & 0xDFFFFFFFFFFFFFFFLL, v174);
              sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
              v132 = v156;
              v133 = v157;
              v134 = v158;
              if ((v174[0] & 1) == 0)
              {
                goto LABEL_382;
              }

              goto LABEL_333;
            }

            v135 = v159;
            v136 = v159 >> 32;
            if (v159 >> 32 < v159)
            {
              goto LABEL_424;
            }
          }

          sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014CEC(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          v137 = sub_10003A0DC(v135, v136, v14 & 0x1FFFFFFFFFFFFFFFLL, v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
          v132 = v156;
          v133 = v157;
          v134 = v158;
          if ((v137 & 1) == 0)
          {
            goto LABEL_382;
          }

          goto LABEL_333;
        }

LABEL_324:
        v132 = v156;
        v133 = v157;
        v134 = v158;
        goto LABEL_333;
      }

      v131 = *(v159 + 16);
      v130 = *(v159 + 24);
      v40 = __OFSUB__(v130, v131);
      v126 = v130 - v131;
      if (v40)
      {
        goto LABEL_411;
      }
    }

    else
    {
      if (!v124)
      {
        v126 = BYTE6(v14);
        if (v125 <= 1)
        {
          goto LABEL_314;
        }

        goto LABEL_301;
      }

      LODWORD(v126) = HIDWORD(v159) - v159;
      if (__OFSUB__(HIDWORD(v159), v159))
      {
        goto LABEL_412;
      }

      v126 = v126;
    }

    if (v125 <= 1)
    {
      goto LABEL_314;
    }

    goto LABEL_301;
  }

  if (v162 >> 32 < v162)
  {
    goto LABEL_423;
  }

  sub_100014CEC(v163, v94);
  sub_100014CEC(v163, v94);
  sub_100014CEC(v163, v94);
  v123 = sub_10003A0DC(v162, v162 >> 32, v164 & 0x3FFFFFFFFFFFFFFFLL, v163, v94);
  sub_100014D40(v163, v94);
  sub_100014D40(v163, v94);
  sub_100014D40(v163, v94);
  if (v123)
  {
    goto LABEL_291;
  }

LABEL_382:
  sub_1001F0CD8(&v181);
  sub_1001F0CD8(&v176);
  return 0;
}