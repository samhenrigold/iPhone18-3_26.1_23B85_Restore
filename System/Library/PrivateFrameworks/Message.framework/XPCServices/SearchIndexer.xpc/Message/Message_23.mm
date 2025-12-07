uint64_t sub_100184CB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100184D20(uint64_t a1)
{

  sub_100014D40(*(v1 + 32), *(v1 + 40));

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100184D6C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100184DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadMessages.PendingUpload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for UploadMessages.CompletedUpload.Status(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UploadMessages.CompletedUpload.Status(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UploadMessages.CompletedUpload.Status(uint64_t result, int a2, int a3)
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_100184E68(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100184E84(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

BOOL sub_100184EC0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a1 + 24);
  if (sub_10003A194(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    if (v5)
    {
      if (v3 && (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5, v3) & 1) != 0)
      {
        return v2 == v4;
      }
    }

    else if (!v3)
    {
      return v2 == v4;
    }
  }

  return 0;
}

uint64_t sub_100184F4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100184FA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100185010(char *a1, uint64_t a2)
{
  v43 = a2;
  v38 = a1;
  v3 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v3 - 8);
  v39 = &v35 - v4;
  v5 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v42 = &v35 - v11;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  v18 = _s19UserInitiatedSearchV5StateOMa(0);
  __chkstk_darwin(v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  __chkstk_darwin(MessagesVMa);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2 + *(_s19UserInitiatedSearchVMa(0) + 20);
  sub_100185CDC(v24, v20);
  v41 = v18;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_100185DA4(v20, _s19UserInitiatedSearchV5StateOMa);
  }

  sub_100185D40(v20, v23);
  sub_10000E268(v23, v7, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.intersection(_:)(v7, v14);
  v38 = v7;
  sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.union(_:)(v14, v17);
  sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
  v25 = v39;
  sub_10000E268(&v23[*(MessagesVMa + 24)], v39, &qword_1005CD510, &unk_1004CF2E0);
  v26 = *(v44 + 48);
  v27 = v26(v25, 1, v8);
  v36 = MessagesVMa;
  v37 = v17;
  if (v27 == 1)
  {
    sub_100016D2C();
    v28 = v40;
    sub_1004A7114();
    if (v26(v25, 1, v8) != 1)
    {
      sub_100025F40(v25, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v28 = v40;
    sub_100020950(v25, v40);
  }

  v30 = v38;
  sub_10000E268(v23, v38, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.intersection(_:)(v30, v14);
  v31 = v8;
  sub_100025F40(v30, &unk_1005D91B0, &unk_1004CF400);
  v32 = v42;
  MessageIdentifierSet.union(_:)(v14, v42);
  sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
  sub_100185DA4(v24, _s19UserInitiatedSearchV5StateOMa);
  sub_10000E268(v23, v24, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100185DA4(v23, _s19UserInitiatedSearchV13FetchMessagesVMa);
  v33 = v36;
  v34 = *(v36 + 24);
  sub_100020950(v32, v24 + v34);
  (*(v44 + 56))(v24 + v34, 0, 1, v31);
  sub_100020950(v37, v24 + *(v33 + 20));
  return swift_storeEnumTagMultiPayload();
}

BOOL sub_100185554(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((static SearchKey.__derived_enum_equals(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(v2, v3, v4, v5, v6, v7);
}

BOOL sub_100185614(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10000C9C0(&qword_1005CE810, &unk_1004D1120);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v15 = *(MessagesVMa + 24);
  v16 = a1 + v15;
  v17 = *(v11 + 48);
  sub_10000E268(v16, v13, &qword_1005CD510, &unk_1004CF2E0);
  sub_10000E268(a2 + v15, &v13[v17], &qword_1005CD510, &unk_1004CF2E0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_100025F40(v13, &qword_1005CD510, &unk_1004CF2E0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_10000E268(v13, v10, &qword_1005CD510, &unk_1004CF2E0);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
LABEL_8:
    sub_100025F40(v13, &qword_1005CE810, &unk_1004D1120);
    return 0;
  }

  sub_100020950(&v13[v17], v7);
  v20 = sub_1004A7034();
  sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v13, &qword_1005CD510, &unk_1004CF2E0);
  return (v20 & 1) != 0;
}

BOOL sub_10018595C(uint64_t a1, uint64_t a2)
{
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  __chkstk_darwin(MessagesVMa - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19UserInitiatedSearchV5StateOMa(0);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = sub_10000C9C0(&qword_1005D0948, &unk_1004DAB60);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v17 = &v29 + *(v16 + 56) - v14;
  sub_100185CDC(a1, &v29 - v14);
  sub_100185CDC(a2, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100185CDC(v15, v12);
    v20 = *v12;
    v19 = *(v12 + 1);
    v21 = *(v12 + 2);
    v22 = v12[24];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *v17;
      v23 = *(v17 + 1);
      v25 = *(v17 + 2);
      v26 = v17[24];
      if (static SearchKey.__derived_enum_equals(_:_:)(v20, v24))
      {
        v27 = static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(v19, v21, v22, v23, v25, v26);
        sub_1000B37D8(v24);

        sub_1000B37D8(v20);

        if (v27)
        {
          sub_100185DA4(v15, _s19UserInitiatedSearchV5StateOMa);
          return 1;
        }
      }

      else
      {
        sub_1000B37D8(v24);

        sub_1000B37D8(v20);
      }

      sub_100185DA4(v15, _s19UserInitiatedSearchV5StateOMa);
      return 0;
    }

    sub_1000B37D8(v20);

LABEL_7:
    sub_100025F40(v15, &qword_1005D0948, &unk_1004DAB60);
    return 0;
  }

  sub_100185CDC(v15, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100185DA4(v9, _s19UserInitiatedSearchV13FetchMessagesVMa);
    goto LABEL_7;
  }

  sub_100185D40(v17, v6);
  v18 = sub_100185614(v9, v6);
  sub_100185DA4(v6, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_100185DA4(v9, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_100185DA4(v15, _s19UserInitiatedSearchV5StateOMa);
  return v18;
}

uint64_t sub_100185CDC(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100185D40(uint64_t a1, uint64_t a2)
{
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  (*(*(MessagesVMa - 8) + 32))(a2, a1, MessagesVMa);
  return a2;
}

uint64_t sub_100185DA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100185E04(uint64_t a1)
{
  result = _s19UserInitiatedSearchV13FetchMessagesVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100185E70(void *a1)
{
  v1 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  if (v1 == 31)
  {
    return (*a1 >> 3) + 31;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100185E94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100185EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100185F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1001860BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10018622C(uint64_t a1)
{
  sub_1000E2E4C(319, &qword_1005CE2B8, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v1 <= 0x3F)
  {
    sub_1000E2E4C(319, &qword_1005CDDC0, type metadata accessor for MessageIdentifierSet);
    if (v2 <= 0x3F)
    {
      sub_100035D34(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100186314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = _s19UserInitiatedSearchV5StateOMa(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1001863A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = _s19UserInitiatedSearchV5StateOMa(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10018643C(uint64_t a1)
{
  result = _s19UserInitiatedSearchV5StateOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001864B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_10015C0B4(a2, v4, v9, v8, (*v3 + 16), *v3 + 32);
    v12 = v11;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_10015C014(a2, v4, v9, v8);
    v12 = 0;
    if (v20)
    {
LABEL_3:
      if ((a1 & 0x100000000) != 0)
      {
      }

      else
      {
        sub_100187EA0(a2, v4, v12);

        v16 = v3[2];
        v14 = v3 + 2;
        v15 = v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v14 = v16;
        if ((result & 1) == 0)
        {
          result = sub_100091BA8(0, *(v15 + 16) + 1, 1);
          v15 = *v14;
        }

        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_100091BA8((v18 > 1), v19 + 1, 1);
          v15 = *v14;
        }

        *(v15 + 16) = v19 + 1;
        *(v15 + 4 * v19 + 32) = a1;
        *v14 = v15;
      }

      return result;
    }
  }

  v21 = v10;

  if ((a1 & 0x100000000) != 0)
  {
    sub_1001891EC(v21, v12, v22);

    return sub_1001895C0(v21, sub_100141960);
  }

  else
  {
    v23 = v3[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100141960(v23);
      v23 = result;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v23 + 16))
    {
      *(v23 + 4 * v21 + 32) = a1;
      v3[2] = v23;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100186664(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = result;
  v9 = v4[1];
  v10 = *(v9 + 16);
  if (*v4)
  {
    result = sub_100166A50();
    if ((v11 & 1) == 0)
    {
      v12 = result;
      if (a3 == 1)
      {
LABEL_4:
        sub_100189330(v12, v10);
        sub_100189520(v12, v23);
      }

LABEL_17:
      v20 = v4[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100141A78(v20);
        v20 = result;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v12 < *(v20 + 16))
      {
        v21 = v20 + 24 * v12;
        *(v21 + 32) = v8;
        *(v21 + 40) = a2;
        *(v21 + 48) = a3;

        v4[2] = v20;
        return result;
      }

      __break(1u);
      return result;
    }
  }

  else if (v10)
  {
    v12 = 0;
    while (*(v9 + 32 + 4 * v12) != a4)
    {
      if (v10 == ++v12)
      {
        v10 = 0;
        goto LABEL_10;
      }
    }

    v10 = 0;
    if (a3 == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

LABEL_10:
  if (a3 != 1)
  {
    sub_100188018(v5, v10, sub_100091DA8);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((result & 1) == 0)
    {
      result = sub_100091FE8(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = v16 + 1;
    if (v16 >= v17 >> 1)
    {
      v22 = *(v14 + 16);
      result = sub_100091FE8((v17 > 1), v16 + 1, 1);
      v16 = v22;
      v14 = *v13;
    }

    *(v14 + 16) = v18;
    v19 = v14 + 24 * v16;
    *(v19 + 32) = v8;
    *(v19 + 40) = a2;
    *(v19 + 48) = a3;
    *v13 = v14;
  }

  return result;
}

uint64_t sub_10018682C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_10015C0B4(a2, v4, v9, v8, (*v3 + 16), *v3 + 32);
    v12 = v11;
    v13 = a1[9];
    v94 = a1[8];
    v95 = v13;
    v96 = a1[10];
    v14 = a1[5];
    v90 = a1[4];
    v91 = v14;
    v15 = a1[7];
    v92 = a1[6];
    v93 = v15;
    v16 = a1[1];
    v86 = *a1;
    v87 = v16;
    v17 = a1[3];
    v88 = a1[2];
    v89 = v17;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_10015C014(a2, v4, v9, v8);
    v12 = 0;
    v20 = a1[9];
    v94 = a1[8];
    v95 = v20;
    v96 = a1[10];
    v21 = a1[5];
    v90 = a1[4];
    v91 = v21;
    v22 = a1[7];
    v92 = a1[6];
    v93 = v22;
    v23 = a1[1];
    v86 = *a1;
    v87 = v23;
    v24 = a1[3];
    v88 = a1[2];
    v89 = v24;
    if (v25)
    {
LABEL_3:
      v83 = v94;
      v84 = v95;
      v85 = v96;
      v79 = v90;
      v80 = v91;
      v81 = v92;
      v82 = v93;
      v75 = v86;
      v76 = v87;
      v77 = v88;
      v78 = v89;
      if (sub_1000CBCC8(&v75) == 1)
      {
      }

      v72 = v94;
      v73 = v95;
      v74 = v96;
      v68 = v90;
      v69 = v91;
      v70 = v92;
      v71 = v93;
      v64 = v86;
      v65 = v87;
      v66 = v88;
      v67 = v89;
      sub_100187EA0(a2, v4, v12);

      v30 = v3[2];
      v29 = v3 + 2;
      v28 = v30;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v29 = v30;
      if ((result & 1) == 0)
      {
        result = sub_1000919E8(0, *(v28 + 16) + 1, 1);
        v28 = *v29;
      }

      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_1000919E8((v31 > 1), v32 + 1, 1);
        v28 = *v29;
      }

      *(v28 + 16) = v32 + 1;
      v33 = (v28 + 176 * v32);
      v34 = v64;
      v35 = v66;
      v33[3] = v65;
      v33[4] = v35;
      v33[2] = v34;
      v36 = v67;
      v37 = v68;
      v38 = v70;
      v33[7] = v69;
      v33[8] = v38;
      v33[5] = v36;
      v33[6] = v37;
      v39 = v71;
      v40 = v72;
      v41 = v74;
      v33[11] = v73;
      v33[12] = v41;
      v33[9] = v39;
      v33[10] = v40;
      *v29 = v28;
      return result;
    }
  }

  v26 = v10;

  v83 = v94;
  v84 = v95;
  v85 = v96;
  v79 = v90;
  v80 = v91;
  v81 = v92;
  v82 = v93;
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  if (sub_1000CBCC8(&v75) == 1)
  {
    sub_1001891EC(v26, v12, v27);

    sub_10018964C(v26, v63);
    return sub_10000E0E8(v63);
  }

  v60 = v94;
  v61 = v95;
  v62 = v96;
  v56 = v90;
  v57 = v91;
  v58 = v92;
  v59 = v93;
  v52 = v86;
  v53 = v87;
  v54 = v88;
  v55 = v89;
  v42 = v3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141AFC(v42);
    v42 = result;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v26 < *(v42 + 16))
  {
    v43 = (v42 + 176 * v26);
    v44 = v43[2];
    v45 = v43[4];
    v63[1] = v43[3];
    v63[2] = v45;
    v63[0] = v44;
    v46 = v43[5];
    v47 = v43[6];
    v48 = v43[8];
    v63[5] = v43[7];
    v63[6] = v48;
    v63[3] = v46;
    v63[4] = v47;
    v49 = v43[9];
    v50 = v43[10];
    v51 = v43[12];
    v63[9] = v43[11];
    v63[10] = v51;
    v63[7] = v49;
    v63[8] = v50;
    v43[10] = v60;
    v43[11] = v61;
    v43[12] = v62;
    v43[6] = v56;
    v43[7] = v57;
    v43[8] = v58;
    v43[9] = v59;
    v43[2] = v52;
    v43[3] = v53;
    v43[4] = v54;
    v43[5] = v55;
    result = sub_10000E0E8(v63);
    v3[2] = v42;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100186BA4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = a1;
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_10015C0B4(a2, v4, v9, v8, (*v3 + 16), *v3 + 32);
    v12 = v11;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_10015C014(a2, v4, v9, v8);
    v12 = 0;
    if (v15)
    {
LABEL_3:
      if ((~v6 & 0xF8FC) != 0)
      {
        sub_100187EA0(a2, v4, v12);

        v20 = v3[2];
        v19 = v3 + 2;
        v18 = v20;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v19 = v20;
        if ((result & 1) == 0)
        {
          result = sub_1000923E8(0, *(v18 + 16) + 1, 1);
          v18 = *v19;
        }

        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_1000923E8((v21 > 1), v22 + 1, 1);
          v18 = *v19;
        }

        *(v18 + 16) = v22 + 1;
        *(v18 + 2 * v22 + 32) = v6;
        *v19 = v18;
      }

      else
      {
      }

      return result;
    }
  }

  v16 = v10;

  if ((~v6 & 0xF8FC) == 0)
  {
    sub_1001891EC(v16, v12, v17);

    return sub_100189704(v16);
  }

  v23 = v3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141B5C(v23);
    v23 = result;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(v23 + 16))
  {
    *(v23 + 2 * v16 + 32) = v6;
    v3[2] = v23;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100186D4C(unsigned __int16 a1)
{
  if ((a1 >> 14) <= 1u)
  {
    if (!(a1 >> 14))
    {
      sub_1004A6724(29);
      v5._countAndFlagsBits = 0xD000000000000016;
      v5._object = 0x80000001004AB100;
      sub_1004A5994(v5);
      sub_1004A6934();
      v6._countAndFlagsBits = 8236;
      v6._object = 0xE200000000000000;
      sub_1004A5994(v6);
      v7._countAndFlagsBits = sub_1004A5824();
      sub_1004A5994(v7);

LABEL_8:
      v8._countAndFlagsBits = 41;
      v8._object = 0xE100000000000000;
      sub_1004A5994(v8);
      return 0;
    }

    sub_1004A6724(23);
    v1._object = 0x80000001004AB0E0;
    v1._countAndFlagsBits = 0xD000000000000014;
LABEL_7:
    sub_1004A5994(v1);
    sub_1004A6934();
    goto LABEL_8;
  }

  if (a1 >> 14 == 2)
  {
    v1._countAndFlagsBits = 0x6154657669746361;
    v1._object = 0xEB00000000286B73;
    goto LABEL_7;
  }

  v3 = 0x6973695672657375;
  v4 = 0x6E7953736465656ELL;
  if (a1 != 49154)
  {
    v4 = 0x797469726F697270;
  }

  if (a1 != 49152)
  {
    v3 = 0x7953657669746361;
  }

  if (a1 <= 0xC001u)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_100186F80(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100141B70(v2);
  }

  v3 = v2[2];
  v4 = v2 + 4;
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 28);
          if (*(v12 + 12) >= v13)
          {
            break;
          }

          v14 = v12[2];
          v15 = *(v12 + 6);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v15;
          *(v12 + 12) = v13;
          v12 -= 2;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 2;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000C9C0(&qword_1005D14B0, &unk_1004DB0F0);
      v8 = sub_1004A5C64();
      v8[2] = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v17[0] = v8 + 4;
    v17[1] = v7;
    sub_100188688(v17, v18, v19, v6);
    v8[2] = 0;
  }

  *a1 = v2;
  return result;
}

BOOL sub_1001870E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return (sub_100104744(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_10010463C(v2, v3) & 1) != 0;
}

uint64_t sub_100187138(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  memcpy(v50, v3, sizeof(v50));
  v8 = LOBYTE(v50[3]);
  v44 = BYTE1(v50[3]);
  v9 = v50[4];
  v10 = sub_10012E208();
  v11 = v50[7];

  sub_100166D28();
  v13 = v12;
  v42 = a1;
  v43 = a2;
  v41 = a3;
  if (v9 == 3 || v9 == 2)
  {

    v14 = 1;
    goto LABEL_4;
  }

  v32 = sub_100166E18(v12);
  if (v44)
  {
    goto LABEL_12;
  }

  if (v9 == 1)
  {
    if (v8)
    {
      v14 = v8 == 1;
      goto LABEL_13;
    }

LABEL_12:
    v14 = v32 ^ 1;
    goto LABEL_13;
  }

  if (v9 || (v8 - 1) >= 2)
  {
    goto LABEL_12;
  }

  v14 = 0;
LABEL_13:
  sub_100013AD0(&off_100598658, v11);
  sub_100166E18(v13);
  v33 = sub_100013CF4(v11);

  if (v33 & 1) == 0 && (v44)
  {
    sub_100166E18(v13);
  }

LABEL_4:

  v15 = v50[32];
  v16 = sub_1000CF79C(v50[21], v50[22], v50[23], v50[24] & 1, v50[15], v10, v14 & 1, v50[26]);
  v18 = v17;
  v20 = v19;

  v40 = &v36;
  __chkstk_darwin(v21);
  v35[2] = v4;
  v35[3] = v16;
  v35[4] = v18;
  v35[5] = v20;
  v22 = sub_100187AB0(v16, v18, v20);
  v38 = v23;
  v39 = v22;
  v37 = v24;
  __chkstk_darwin(v22);
  v34[2] = v4;
  v25 = *(v4 + 200);
  v48[3] = *(v4 + 184);
  v48[4] = v25;
  v49[0] = *(v4 + 216);
  *(v49 + 12) = *(v4 + 228);
  v48[2] = *(v4 + 168);

  v26 = sub_1000B6A4C();
  v27 = *(v4 + 184);
  v28 = *(v4 + 216);
  v47 = *(v4 + 200);
  v48[0] = v28;
  *(v48 + 12) = *(v4 + 228);
  v45 = *(v4 + 168);
  v46 = v27;
  v29 = sub_1000B52D4();
  v30 = sub_10018B248(v42, v43, v41 & 1, sub_10018CA44, v35, v39, v38, v37, sub_10018CA70, v34, v15, v26, v29, v44 & 1);

  return v30;
}

void *sub_100187434(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[24])
  {
    v1 = __dst[22];
    v2 = __dst[23];
    v3 = __dst[26];
    v4 = __dst[21];
    v5 = __dst[15];
    v33[0] = __dst[15];
    if (__dst[15])
    {
      v6 = LOBYTE(__dst[3]);
      v7 = BYTE1(__dst[3]);
      v8 = __dst[4];
      v24 = LOBYTE(__dst[5]);
      v9 = __dst[7];
      swift_bridgeObjectRetain_n();
      sub_100020D10(v4, v1, v2, 1);
      sub_10000E268(v33, v25, &qword_1005CF820, &qword_1004D2D00);

      sub_100166D28();
      v11 = v10;
      if (v8 == 2 || v8 == 3)
      {

        sub_100166D28();

        v12 = 0;
        LOBYTE(v6) = 1;
LABEL_6:
        v13 = BYTE1(__dst[2]);
        v14 = swift_allocObject();
        memcpy((v14 + 16), __dst, 0x108uLL);
        sub_1000CECCC(__dst, v25);
        sub_10012DCC8();
        *&v27 = v4;
        *(&v27 + 1) = v5;
        LOBYTE(v28) = v13;
        *(&v28 + 1) = v3;
        LOBYTE(v29) = v6 & 1;
        BYTE1(v29) = v12;
        *(&v29 + 1) = sub_1000CECC4;
        *&v30 = v14;
        *(&v30 + 1) = 7;
        v31 = v15;
        v26 = v15;
        v25[2] = v29;
        v25[3] = v30;
        v25[0] = v27;
        v25[1] = v28;
        v16 = sub_1000CC9D4();
        sub_1000CED28(&v27);
        return v16;
      }

      v18 = sub_100166E18(v10);
      if (v7)
      {
        goto LABEL_16;
      }

      if (v8 == 1)
      {
        if (!v6)
        {
LABEL_16:
          LOBYTE(v6) = v18 ^ 1;
LABEL_17:
          sub_100013AD0(&off_100598658, v9);
          sub_100166E18(v11);
          v19 = sub_100013CF4(v9);

          if (v19 & 1) == 0 && (v7)
          {
            sub_100166E18(v11);
          }

          sub_100166D28();
          v21 = v20;
          sub_100166E18(v20);
          sub_100013AD0(&off_100598658, v9);
          sub_100166E18(v21);
          v22 = sub_100013CF4(v9);

          if (v22)
          {

            v12 = 0;
          }

          else if (v7)
          {
            v23 = sub_100166E18(v21);

            v12 = v23 & 1;
          }

          else
          {

            v12 = 1;
          }

          if (v24 >= 2)
          {
            if (v24 == 2)
            {
              v12 *= 2;
            }
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_6;
        }

        if (v6 == 1)
        {
          goto LABEL_17;
        }
      }

      else if (v8 || (v6 - 1) >= 2)
      {
        goto LABEL_16;
      }

      LOBYTE(v6) = 0;
      goto LABEL_17;
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_100187728()
{
  sub_10018A510(v0[2], v0[3], v0[4]);

  return swift_deallocClassInstance();
}

uint64_t sub_100187788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001877D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100187820(unsigned __int8 a1)
{
  sub_1004A6E94();
  if ((a1 - 5) >= 6u)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    a1 -= 4;
  }

  sub_1004A6EB4(a1);
  return sub_1004A6F14();
}

void sub_100187894()
{
  v1 = *v0;
  if ((v1 - 5) >= 6)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    LOBYTE(v1) = v1 - 4;
  }

  sub_1004A6EB4(v1);
}

Swift::Int sub_1001878E0(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  if ((v2 - 5) >= 6)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    LOBYTE(v2) = v2 - 4;
  }

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

uint64_t sub_100187950()
{
  v1 = *v0;
  v2 = 0x6E776F4472657375;
  v3 = 1668184435;
  v4 = 0x6E7953736465656ELL;
  v5 = 0x797469726F697270;
  if (v1 != 10)
  {
    v5 = 0x6E776F4472657375;
  }

  if (v1 != 9)
  {
    v4 = v5;
  }

  if (v1 != 8)
  {
    v3 = v4;
  }

  if (v1 == 7)
  {
    v2 = 1802723700;
  }

  if (v1 == 6)
  {
    v2 = 0x656C6269736976;
  }

  if (v1 == 5)
  {
    v2 = 0x7261655372657375;
  }

  if (*v0 <= 7u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100187A40()
{
  v1 = 1668184435;
  v2 = 0x686372616573;
  if (*v0 != 2)
  {
    v2 = 45;
  }

  if (*v0)
  {
    v1 = 0x64616F6C6E776F64;
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

uint64_t sub_100187AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {

    sub_1000923C8(0, v4, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (a3 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      v13 = v6;
      v11 = v6[2];
      v10 = v6[3];
      if (v11 >= v10 >> 1)
      {
        sub_1000923C8((v10 > 1), v11 + 1, 1);
        v6 = v13;
      }

      v6[2] = v11 + 1;
      *(v6 + v11 + 32) = (v8 & 0x40000000) != 0;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_100187BC8()
{
  if (*v0)
  {
    return 0x69736956746F6E2ELL;
  }

  else
  {
    return 0x656C62697369762ELL;
  }
}

uint64_t sub_100187C0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a2();
    swift_beginAccess();
    *v3 = v4;
  }

  return v4;
}

void sub_100187C94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = *a1, v6 = *(a1 + 8), v7 = sub_100063B5C(*a1, v6), (v8 & 1) != 0))
  {
    v9 = *(*(a2 + 56) + v7);
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 12) = v9;
  }

  else
  {
    *a3 = 0;
    *(a3 + 12) = 0;
    *(a3 + 8) = 0;
  }
}

double sub_100187D24@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  *a2 = *a1;
  *(a2 + 8) = v2;

  return result;
}

void sub_100187D3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (sub_100011B00(*a1, v5, a2))
  {
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
}

void sub_100187D9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 12))
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

double sub_100187DE4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = MailboxesSelectionUsage.subscript.getter(*a1, v5, a2);
  if ((v7 & 0x100) == 0 && (v7 & 1) != 0 && v6)
  {
    *a3 = v4;
    *(a3 + 8) = v5;
    if (v6 == 1)
    {
      v9 = 8;
    }

    else
    {
      v9 = 7;
    }

    *(a3 + 12) = v9;
  }

  else
  {
    *a3 = 0;
    *(a3 + 12) = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t sub_100187EA0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = sub_1000919C8(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_1000919C8((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  if (*v4)
  {
    swift_beginAccess();
    if (sub_1004A4754() > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v4;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = sub_1004A4774();

        *v4 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return sub_1004A4714();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_100188190();
}

uint64_t sub_100188018(int a1, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v5 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = a3(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = a3(v11 > 1, v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  *(v8 + 4 * v12 + 32) = a1;
  v5[1] = v8;
  if (*v5)
  {
    swift_beginAccess();
    if (sub_1004A4754() > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v13 = *v5;
      if ((result & 1) == 0)
      {
        if (!v13)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v14 = sub_1004A4774();

        *v5 = v14;
        v13 = v14;
      }

      if (v13)
      {
        return sub_1004A4714();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_100188234();
}

uint64_t sub_100188190()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_1004A4784();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_1001882D4(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_100188234()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_1004A4784();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_100188354(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1001882D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_1004A4784();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = sub_1004A4794();
    sub_1001883D4(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

uint64_t sub_100188354(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_1004A4784();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = sub_1004A4794();
    sub_100188424(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

Swift::Int sub_100188474(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v7 = result + 8;
      while (1)
      {
        v8 = *(v7 + 16 * v6);
        sub_1004A6E94();
        sub_1004A6EB4(v8 | (v8 << 32));
        result = sub_1004A6F14();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            sub_1004A4744();
          }
        }

        result = sub_1004A4734();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100188580(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        v8 = *(v6 + 4 * v7);
        sub_1004A6E94();
        sub_1004A6EE4(v8);
        result = sub_1004A6F14();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            sub_1004A4744();
          }
        }

        result = sub_1004A4734();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100188688(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_91:
    v94 = *v94;
    if (!v94)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_100141810(v9);
      v9 = result;
    }

    v86 = v9 + 16;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = &v9[16 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_100188C30((*a3 + 16 * *v88), (*a3 + 16 * *v90), (*a3 + 16 * v91), v94);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_115;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_116;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_117;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8 + 12);
      v12 = 16 * v10;
      v13 = *a3 + 16 * v10;
      v14 = *(v13 + 12);
      v15 = v10 + 2;
      v16 = (v13 + 44);
      while (v6 != v15)
      {
        v17 = *(v16 - 16) >= *v16;
        ++v15;
        v16 += 16;
        if ((((v14 < v11) ^ v17) & 1) == 0)
        {
          v8 = v15 - 1;
          if (v14 >= v11)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v14 >= v11)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_120;
      }

      if (v10 < v8)
      {
        v18 = 16 * v8 - 16;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v23 = (v22 + v12);
            v24 = (v22 + v18);
            v25 = *(v22 + v12);
            v26 = *(v22 + v12 + 8);
            v27 = *(v22 + v12 + 12);
            if (v12 != v18 || v23 >= v24 + 1)
            {
              *v23 = *v24;
            }

            v21 = v22 + v18;
            *v21 = v25;
            *(v21 + 8) = v26;
            *(v21 + 12) = v27;
          }

          ++v20;
          v18 -= 16;
          v12 += 16;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_119;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_121;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100085288((v39 > 1), v40 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v10;
    *(v42 + 5) = v8;
    v43 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v9 + 4);
          v46 = *(v9 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_60:
          if (v48)
          {
            goto LABEL_106;
          }

          v61 = &v9[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_109;
          }

          v67 = &v9[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_113;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v71 = &v9[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_74:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = &v9[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_111;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_81:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v83 = *&v9[16 * v82 + 32];
        v84 = *&v9[16 * v44 + 40];
        sub_100188C30((*a3 + 16 * v83), (*a3 + 16 * *&v9[16 * v44 + 32]), (*a3 + 16 * v84), v43);
        if (v4)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100141810(v9);
        }

        if (v82 >= *(v9 + 2))
        {
          goto LABEL_103;
        }

        v85 = &v9[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        result = sub_100141784(v44);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v9[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_104;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_105;
      }

      v56 = &v9[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_107;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_110;
      }

      if (v60 >= v52)
      {
        v78 = &v9[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_114;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v8 + 12;
  v30 = v10 - v8;
LABEL_33:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *v32;
    if (*(v32 - 16) >= v33)
    {
LABEL_32:
      ++v8;
      v29 += 16;
      --v30;
      if (v8 != v6)
      {
        goto LABEL_33;
      }

      v8 = v6;
      goto LABEL_40;
    }

    if (!v28)
    {
      break;
    }

    v34 = v32 - 12;
    v35 = *(v32 - 28);
    *(v32 - 16) = v33;
    v32 -= 16;
    v36 = *(v32 + 4);
    v37 = *(v32 + 3);
    *v34 = v35;
    *(v32 - 12) = v36;
    *(v32 - 1) = v37;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_100188C30(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
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

      if (v4[12] < v6[12])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v19 = v5 + 16;
      if (*(v6 - 4) < *(v15 - 4))
      {
        v21 = v6 - 16;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 16, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 16;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v15 -= 16;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_100188E2C(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1000919C8(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = sub_1004A4784();
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = sub_1004A4784();
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = sub_1004A4784();
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_1001882D4(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = sub_1004A4774();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_10018900C(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_100091DA8(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = sub_1004A4784();
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = sub_1004A4784();
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = sub_1004A4784();
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_100188354(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = sub_1004A4774();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_1001891EC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = v3[1];
  v6 = *(v5 + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    return sub_100189494(a1);
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else if (v6 <= sub_1004A4764())
  {
LABEL_16:
    v13 = sub_100189494(a1);
    sub_100188190();
    return v13;
  }

  result = swift_isUniquelyReferenced_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = sub_1004A4774();

    *v3 = v11;
    v10 = v11;
  }

  if (v10)
  {
    result = sub_100189788(a2, (v10 + 16), v10 + 32, v3);
    v12 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v12 >= a1)
    {
      sub_100189B48(a1, v12, v5, (v10 + 16), v10 + 32);
      return sub_100189494(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100189330(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1001895C0(a1, sub_100141A40);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= sub_1004A4764())
  {
LABEL_16:
    v12 = sub_1001895C0(a1, sub_100141A40);
    sub_100188234();
    return v12;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_1004A4774();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {
    result = sub_100189968(a2, (v9 + 16), v9 + 32, v2);
    v11 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v11 >= a1)
    {
      sub_100189F38(a1, v11, v4, (v9 + 16), v9 + 32);
      return sub_1001895C0(a1, sub_100141A40);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_100189494(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141998(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100189520@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141A78(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    result = memmove(v9, (v9 + 24), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1001895C0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 4 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 36), 4 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

uint64_t sub_10018964C@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141AFC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 176 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 13, 176 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

char *sub_100189704(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141B5C(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = *(v7 + 16);
    memmove(v7 + 32, v7 + 34, 2 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_100189788(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = sub_1004A46F4();
  sub_1004A4744();
  if (v15)
  {
    v7 = sub_1004A4704();
    while (1)
    {
      result = sub_1004A4724();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 16 * result + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v11 | (v11 << 32));
      result = sub_1004A6F14();
      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_19;
      }

      v13 = (v12 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v13 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_1004A4724();
      v6 = a1;
      sub_1004A4714();
LABEL_3:
      sub_1004A4744();
    }

    if (v13 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v13)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_1004A4714();
}

unint64_t sub_100189968(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = sub_1004A46F4();
  sub_1004A4744();
  if (v15)
  {
    v7 = sub_1004A4704();
    while (1)
    {
      result = sub_1004A4724();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 4 * result + 32);
      sub_1004A6E94();
      sub_1004A6EE4(v11);
      result = sub_1004A6F14();
      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_19;
      }

      v13 = (v12 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v13 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_1004A4724();
      v6 = a1;
      sub_1004A4714();
LABEL_3:
      sub_1004A4744();
    }

    if (v13 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v13)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_1004A4714();
}

void sub_100189B48(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_54;
  }

  if (v6 >= 1)
  {
    v10 = *(a3 + 16);
    if (result < (v10 - v6) / 2)
    {
      if (sub_1004A4754() / 3 > result)
      {
        if (result < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v10 < result)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (result)
        {
          v11 = 0;
          v12 = a3 + 40;
          while (1)
          {
            v13 = *(v12 + 16 * v11);
            sub_1004A6E94();
            sub_1004A6EB4(v13 | (v13 << 32));
            sub_1004A6F14();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004A46F4())
            {
              while (1)
              {
                v14 = sub_1004A4724();
                if ((v15 & 1) == 0 && v14 == v11)
                {
                  break;
                }

                sub_1004A4744();
              }
            }

            if (__OFADD__(v11, v6))
            {
              goto LABEL_51;
            }

            ++v11;
            sub_1004A4734();
            if (v11 == result)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_1004A46F4();
      v21 = sub_1004A4724();
      if ((v22 & 1) != 0 || v21 >= result)
      {
LABEL_29:
        sub_1004A4744();
LABEL_17:
        v16 = a4[1];
        if (__OFSUB__(v16 >> 6, v6))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v17 = 1 << *a4;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v20 = (v19 & (((v16 >> 6) - v6) >> 63)) + (v16 >> 6) - v6;
        if (v20 < v19)
        {
          v19 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v20 - v19) << 6);
        return;
      }

      if (!__OFADD__(v21, v6))
      {
        sub_1004A4734();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_1004A46F4();
      v23 = sub_1004A4724();
      if ((v24 & 1) == 0 && v23 >= v5)
      {
        if (__OFSUB__(v23, v6))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_1004A4734();
      }

      sub_1004A4744();
      return;
    }

    v5 = a2;
    if (__OFSUB__(v10, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ((v10 - a2) >= sub_1004A4754() / 3)
    {
      goto LABEL_35;
    }

    if (v10 < v5)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v5 < 0)
    {
LABEL_61:
      __break(1u);
      return;
    }

    if (v10 != v5)
    {
      v25 = a3 + 40;
      while (1)
      {
        v26 = *(v25 + 16 * v5);
        sub_1004A6E94();
        sub_1004A6EB4(v26 | (v26 << 32));
        sub_1004A6F14();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            v27 = sub_1004A4724();
            if ((v28 & 1) == 0 && v27 == v5)
            {
              break;
            }

            sub_1004A4744();
          }
        }

        sub_1004A4734();
        if (++v5 == v10)
        {
          return;
        }
      }

      goto LABEL_53;
    }
  }
}

void sub_100189F38(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v6 >= 1)
  {
    v10 = *(a3 + 16);
    if (result < (v10 - v6) / 2)
    {
      if (sub_1004A4754() / 3 > result)
      {
        if (result < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v10 < result)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (result)
        {
          v11 = 0;
          while (1)
          {
            v12 = *(a3 + 32 + 4 * v11);
            sub_1004A6E94();
            sub_1004A6EE4(v12);
            sub_1004A6F14();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004A46F4())
            {
              while (1)
              {
                v13 = sub_1004A4724();
                if ((v14 & 1) == 0 && v13 == v11)
                {
                  break;
                }

                sub_1004A4744();
              }
            }

            if (__OFADD__(v11, v6))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_1004A4734();
            if (v11 == result)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        goto LABEL_17;
      }

      sub_1004A46F4();
      v25 = sub_1004A4724();
      if ((v26 & 1) != 0 || v25 >= result)
      {
LABEL_42:
        sub_1004A4744();
LABEL_17:
        v15 = a4[1];
        if (__OFSUB__(v15 >> 6, v6))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v16 = 1 << *a4;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v19 = (v18 & (((v15 >> 6) - v6) >> 63)) + (v15 >> 6) - v6;
        if (v19 < v18)
        {
          v18 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v19 - v18) << 6);
        return;
      }

      if (!__OFADD__(v25, v6))
      {
        sub_1004A4734();
        goto LABEL_42;
      }

      __break(1u);
LABEL_48:
      sub_1004A46F4();
      v27 = sub_1004A4724();
      if ((v28 & 1) == 0 && v27 >= v5)
      {
        if (__OFSUB__(v27, v6))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_1004A4734();
      }

      sub_1004A4744();
      return;
    }

    v5 = a2;
    if (__OFSUB__(v10, a2))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if ((v10 - a2) >= sub_1004A4754() / 3)
    {
      goto LABEL_48;
    }

    if (v10 < v5)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v5 < 0)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v10 != v5)
    {
      if (v10 <= v5)
      {
LABEL_68:
        __break(1u);
        return;
      }

      while (1)
      {
        v20 = *(a3 + 32 + 4 * v5);
        sub_1004A6E94();
        sub_1004A6EE4(v20);
        sub_1004A6F14();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            v21 = sub_1004A4724();
            if ((v22 & 1) == 0 && v21 == v5)
            {
              break;
            }

            sub_1004A4744();
          }
        }

        v23 = v5 + 1;
        v24 = __OFADD__(v5, 1);
        if (__OFSUB__(v5, v6))
        {
          goto LABEL_58;
        }

        sub_1004A4734();
        if (v24)
        {
          goto LABEL_59;
        }

        ++v5;
        if (v23 == v10)
        {
          return;
        }
      }
    }
  }
}

void sub_10018A334(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 2);
    *a2 = v3;
    *(a2 + 8) = v5;
    *(a2 + 12) = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_10018A360(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = *(a1 + 2);
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_10018A380(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 7u)
  {
    switch(a1)
    {
      case 5u:
        return a2 == 5;
      case 6u:
        return a2 == 6;
      case 7u:
        return a2 == 7;
    }

LABEL_16:
    if (a2 - 5 >= 6)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 8)
  {
    return a2 == 8;
  }

  if (a1 != 9)
  {
    if (a1 == 10)
    {
      return a2 == 10;
    }

    goto LABEL_16;
  }

  return a2 == 9;
}

BOOL sub_10018A440(unsigned __int16 a1, unsigned __int16 a2)
{
  if ((a1 >> 14) > 1u)
  {
    if (a1 >> 14 == 2)
    {
      if ((a2 & 0xC000) == 0x8000)
      {
        return (a2 ^ a1) == 0;
      }
    }

    else if (a1 > 0xC001u)
    {
      if (a1 == 49154)
      {
        if (a2 == 49154)
        {
          return 1;
        }
      }

      else if (a2 == 49155)
      {
        return 1;
      }
    }

    else if (a1 == 49152)
    {
      if (a2 == 49152)
      {
        return 1;
      }
    }

    else if (a2 == 49153)
    {
      return 1;
    }
  }

  else
  {
    if (!(a1 >> 14))
    {
      if (a2 < 0x4000u)
      {
        return a1 == a2;
      }

      return 0;
    }

    if ((a2 & 0xC000) == 0x4000)
    {
      return (a2 ^ a1) == 0;
    }
  }

  return 0;
}

uint64_t sub_10018A510(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return v3;
}

uint64_t sub_10018A560(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100188E2C(v2, 0);
  sub_100091BA8(0, v2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 44);
  while (1)
  {
    v4 = *(v3 - 1);
    v5 = *v3;
    result = sub_10015C014(*(v3 - 3), v4, &_swiftEmptyArrayStorage[4], _swiftEmptyArrayStorage[2]);
    if ((v7 & 1) == 0)
    {
      break;
    }

    sub_100187EA0(v8, v4, 0);
    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_100091BA8((v9 > 1), v10 + 1, 1);
    }

    v3 += 4;
    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v5;
    if (!--v2)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

void sub_10018A6B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10018900C(v2, 0);
  sub_100091FE8(0, v2, 0);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    do
    {
      v5 = v4 + 32 * v3;
      v6 = *(v5 + 16);
      v7 = *v5;
      v8 = *(v5 + 24);
      v9 = *(v5 + 8);

      if (v8 == 1)
      {
        break;
      }

      v10 = &_swiftEmptyArrayStorage[4];
      v11 = _swiftEmptyArrayStorage[2];
      if (v11)
      {
        while (1)
        {
          v12 = *v10++;
          if (v12 == v7)
          {
            break;
          }

          if (!--v11)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        return;
      }

LABEL_7:
      sub_100188018(v7, v11, sub_100091DA8);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100091FE8((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[3 * v14];
      v15[4] = v9;
      ++v3;
      *(v15 + 40) = v6;
      v15[6] = v8;
    }

    while (v3 != v2);
  }
}

uint64_t sub_10018A834(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100188E2C(v2, 0);
  sub_1000923E8(0, v2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 44);
  while (1)
  {
    v4 = *v3;
    v5 = *(v3 - 1);
    result = sub_10015C014(*(v3 - 6), v5, &_swiftEmptyArrayStorage[4], _swiftEmptyArrayStorage[2]);
    if ((v7 & 1) == 0)
    {
      break;
    }

    sub_100187EA0(v8, v5, 0);
    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_1000923E8((v9 > 1), v10 + 1, 1);
    }

    v3 += 8;
    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v4;
    if (!--v2)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10018A98C(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v10 = result;
  v55[0] = a4;
  v55[1] = a5;
  v55[2] = a6;
  v55[3] = sub_100187D9C;
  v55[4] = 0;
  v55[5] = sub_10018D138;
  v55[6] = 0;
  v55[7] = sub_10018D14C;
  v55[8] = 0;
  v55[9] = result;
  if (!result)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
LABEL_53:
    v49 = 1;
    goto LABEL_54;
  }

  v11 = *(a6 + 16);
  v54 = a2 + 56;
  swift_retain_n();
  swift_retain_n();
  result = swift_retain_n();
  v12 = 0;
  v13 = a5 + 40;
  while (2)
  {
    if (v12 >= v11)
    {
      goto LABEL_53;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    --v10;
    v14 = (v13 + 16 * v12);
    while (1)
    {
      if (v12 >= *(a5 + 16))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (v12 >= *(a6 + 16))
      {
        goto LABEL_56;
      }

      v15 = *v14;
      v16 = *(v14 - 1);
      v17 = *(a6 + 32 + v12);

      if (v17 != 1)
      {
        break;
      }

LABEL_8:
      ++v12;

      v14 += 4;
      if (v11 == v12)
      {
        goto LABEL_53;
      }
    }

    if (!v16)
    {
      goto LABEL_8;
    }

    if (*(a2 + 16))
    {
      sub_1004A6E94();
      sub_1004A6EB4(v15 | (v15 << 32));
      v18 = sub_1004A6F14();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if ((*(v54 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        do
        {
          v22 = (*(a2 + 48) + 16 * v20);
          if ((v22[2] | (v22[2] << 32)) == (v15 | (v15 << 32)))
          {
            v23 = *v22;
            v24 = *(*v22 + 16);
            if (v24 == *(v16 + 16))
            {
              if (v24)
              {
                v25 = v23 == v16;
              }

              else
              {
                v25 = 1;
              }

              if (v25)
              {
                goto LABEL_32;
              }

              v26 = (v23 + 32);
              v27 = (v16 + 32);
              while (1)
              {
                v29 = *v26++;
                v28 = v29;
                v30 = *v27++;
                if (v28 != v30)
                {
                  break;
                }

                if (!--v24)
                {
                  goto LABEL_32;
                }
              }
            }
          }

          v20 = (v20 + 1) & v21;
        }

        while (((*(v54 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
      }
    }

    v31 = a3[1];
    v32 = *(v31 + 16);
    v33 = v31 + 32;
    if (!*a3)
    {
      sub_10015C014(v16, v15, v33, v32);
      if ((v35 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      if (a8)
      {

        goto LABEL_49;
      }

      v36 = a3[1];
      v37 = *(v36 + 16);
      v38 = v36 + 32;
      if (*a3)
      {
        v39 = sub_10015C0B4(v16, v15, v38, v37, (*a3 + 16), *a3 + 32);
        if ((v41 & 1) == 0)
        {
LABEL_43:
          v47 = v39;

          v48 = a3[2];
          result = swift_isUniquelyReferenced_nonNull_native();
          a3[2] = v48;
          if ((result & 1) == 0)
          {
            result = sub_100141B5C(v48);
            v48 = result;
            a3[2] = result;
          }

          if ((v47 & 0x8000000000000000) == 0)
          {
            if (v47 >= *(v48 + 16))
            {
              goto LABEL_61;
            }

            v46 = v48 + 2 * v47;
            goto LABEL_48;
          }

LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          return result;
        }
      }

      else
      {
        v39 = sub_10015C014(v16, v15, v38, v37);
        if ((v42 & 1) == 0)
        {
          goto LABEL_43;
        }

        v40 = 0;
      }

      sub_100187EA0(v16, v15, v40);

      v43 = a3[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      a3[2] = v43;
      if ((result & 1) == 0)
      {
        result = sub_1000923E8(0, *(v43 + 16) + 1, 1);
        v43 = a3[2];
      }

      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      if (v45 >= v44 >> 1)
      {
        result = sub_1000923E8((v44 > 1), v45 + 1, 1);
        v43 = a3[2];
      }

      *(v43 + 16) = v45 + 1;
      v46 = v43 + 2 * v45;
LABEL_48:
      *(v46 + 32) = -16384;
LABEL_49:
      if (*(a3[1] + 16) < a7)
      {
        goto LABEL_50;
      }

LABEL_57:
      v49 = 0;
      break;
    }

    sub_10015C0B4(v16, v15, v33, v32, (*a3 + 16), *a3 + 32);
    if (v34)
    {
      goto LABEL_29;
    }

LABEL_32:

LABEL_50:
    ++v12;
    v49 = 1;
    v13 = a5 + 40;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_54:
  sub_100025F40(v55, &qword_1005D2D28, &qword_1004DB0E0);

  return v49;
}

void sub_10018ADEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a10;
  v54[0] = a3;
  v54[1] = a4;
  v54[2] = a5;
  v54[3] = sub_10018D148;
  v54[4] = 0;
  v54[5] = sub_10018CB8C;
  v54[6] = v14;
  v54[7] = sub_10018D138;
  v54[8] = 0;
  v54[9] = sub_10018D14C;
  v54[10] = 0;
  v15 = *(a5 + 16);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  if (!v15)
  {
LABEL_46:
    sub_100025F40(v54, &qword_1005D2D30, &qword_1004DB0E8);

    return;
  }

  v16 = 0;
  v17 = (a4 + 40);
  v47 = v14;
  v48 = a3;
  while (v16 < *(a4 + 16))
  {
    if (v16 >= *(a5 + 16))
    {
      goto LABEL_48;
    }

    v18 = *v17;
    v19 = *(v17 - 1);

    if ((sub_100011B00(v20, v18, *(v14 + 16)) & 1) == 0)
    {

LABEL_16:

      goto LABEL_17;
    }

    if (!v19 || (sub_100011B00(v19, v18, a1) & 1) != 0)
    {
      goto LABEL_16;
    }

    v21 = a2[1];
    v22 = *(v21 + 16);
    v23 = v21 + 32;
    if (*a2)
    {
      sub_10015C0B4(v19, v18, v23, v22, (*a2 + 16), *a2 + 32);
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_10015C014(v19, v18, v23, v22);
      if ((v29 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v25 = *(a4 + 16);
    v26 = a4 + 32;
    if (a3)
    {
      v27 = sub_10015C0B4(v19, v18, v26, v25, (a3 + 16), a3 + 32);
      if (v28)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v27 = sub_10015C014(v19, v18, v26, v25);
      if (v30)
      {
        goto LABEL_23;
      }
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    if (v27 >= *(a5 + 16))
    {
      goto LABEL_51;
    }

    if (*(a5 + 32 + v27) != 1)
    {
LABEL_24:
      v33 = 0x4000;
      goto LABEL_31;
    }

LABEL_23:
    v31 = sub_100187C0C(a6, a7);
    v32 = sub_100011B00(v19, v18, v31);

    if (v32)
    {
      goto LABEL_24;
    }

    if (*(a9 + 16) && (sub_100063B5C(v19, v18), (v34 & 1) != 0))
    {
      v33 = 16385;
    }

    else if (sub_100011B00(v19, v18, a10))
    {
      v33 = 16386;
    }

    else
    {
      v33 = 16387;
    }

LABEL_31:
    v51 = v33;
    v35 = a2[1];
    v36 = *(v35 + 16);
    v37 = v35 + 32;
    if (*a2)
    {
      v38 = sub_10015C0B4(v19, v18, v37, v36, (*a2 + 16), *a2 + 32);
      if ((v40 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v38 = sub_10015C014(v19, v18, v37, v36);
      if ((v41 & 1) == 0)
      {
LABEL_41:
        v45 = v38;

        v42 = a2[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a2[2] = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = sub_100141B5C(v42);
          a2[2] = v42;
        }

        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        if (v45 >= *(v42 + 2))
        {
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      v39 = 0;
    }

    sub_100187EA0(v19, v18, v39);

    v42 = a2[2];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    a2[2] = v42;
    if ((v43 & 1) == 0)
    {
      sub_1000923E8(0, *(v42 + 2) + 1, 1);
      v42 = a2[2];
    }

    v45 = *(v42 + 2);
    v44 = *(v42 + 3);
    if (v45 >= v44 >> 1)
    {
      sub_1000923E8((v44 > 1), v45 + 1, 1);
      v42 = a2[2];
    }

    *(v42 + 2) = v45 + 1;
LABEL_45:
    *&v42[2 * v45 + 32] = v51;
    v14 = v47;
    a3 = v48;
    if (*(a2[1] + 16) >= a11)
    {
      goto LABEL_46;
    }

LABEL_17:
    ++v16;
    v17 += 4;
    if (v15 == v16)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_10018B248(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v18 = a12;
  v19 = sub_10018A834(_swiftEmptyArrayStorage);
  v21 = v20;
  v170 = v19;
  v171 = v20;
  v172 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = a12;
  v173[0] = a6;
  v173[1] = a7;
  v173[2] = a8;
  v173[3] = sub_10018D148;
  v173[4] = 0;
  v173[5] = sub_10018CAB0;
  v173[6] = v24;
  v173[7] = sub_10018D138;
  v173[8] = 0;
  v173[9] = sub_10018A334;
  v173[10] = 0;

  v162 = a8;

  v169[0] = sub_1000664DC(v173);
  sub_100186F80(v169);
  v25 = a13;
  sub_100025F40(v173, &qword_1005D2D18, &qword_1004DB0D0);
  v26 = v169[0];
  v27 = *(v169[0] + 16);
  v163 = a7;
  v160 = v23;
  v158 = a3;
  if (!v27)
  {

    v54 = v162;
    if (a14)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (a3)
    {
      v55 = 0;
    }

    else
    {
      v56 = a2;
      if (a2 >= a1)
      {
        v56 = a1;
      }

      v57 = __OFSUB__(v56, 2);
      v58 = v56 - 2;
      if (v57)
      {
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);

        __break(1u);
        return result;
      }

      v55 = v58 & ~(v58 >> 63);
    }

    if (sub_10018A98C(v55, a11, &v170, a6, a7, v54, a2, a3 & 1))
    {
      goto LABEL_50;
    }

    goto LABEL_195;
  }

  for (i = 0; i != v27; ++i)
  {
    if (i >= *(v26 + 16))
    {
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
      goto LABEL_225;
    }

    v30 = v26 + 32 + 16 * i;
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 12);
    if ((sub_100011B00(*v30, *(v30 + 8), a11) & 1) == 0)
    {
      v34 = v21 + 32;
      v35 = *(v21 + 16);
      if (v170)
      {
        sub_10015C0B4(v31, v32, v34, v35, (v170 + 16), v170 + 32);
        if ((v36 & 1) == 0)
        {
          continue;
        }
      }

      else if (v35)
      {
        for (j = 0; j != v35; ++j)
        {
          v38 = (v34 + 16 * j);
          if ((v38[2] | (v38[2] << 32)) == (v32 | (v32 << 32)))
          {
            v39 = *v38;
            v40 = *(*v38 + 16);
            if (v40 == *(v31 + 16))
            {
              if (v40)
              {
                v41 = v39 == v31;
              }

              else
              {
                v41 = 1;
              }

              if (v41)
              {
                goto LABEL_6;
              }

              v42 = (v39 + 32);
              v43 = (v31 + 32);
              while (1)
              {
                v45 = *v42++;
                v44 = v45;
                v46 = *v43++;
                if (v44 != v46)
                {
                  break;
                }

                if (!--v40)
                {
                  goto LABEL_6;
                }
              }
            }
          }
        }
      }

      v47 = *(a7 + 16);
      if (a6)
      {
        v48 = sub_10015C0B4(v31, v32, a7 + 32, v47, (a6 + 16), a6 + 32);
        if (v49)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v48 = sub_10015C014(v31, v32, a7 + 32, v47);
        if (v50)
        {
          goto LABEL_32;
        }
      }

      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_218;
      }

      if (v48 >= *(v162 + 16))
      {
        goto LABEL_219;
      }

      if ((*(v162 + 32 + v48) & 1) == 0)
      {

        v29 = 0;
        goto LABEL_5;
      }

LABEL_32:

      v51 = sub_100187C0C(v23, a9);
      v52 = sub_100011B00(v31, v32, v51);

      if (v52)
      {
        v29 = 0;
      }

      else if (*(a12 + 16) && (sub_100063B5C(v31, v32), (v53 & 1) != 0))
      {
        v29 = 1;
      }

      else if (sub_100011B00(v31, v32, a13))
      {
        v29 = 2;
      }

      else
      {
        v29 = 3;
      }

      a7 = v163;
LABEL_5:
      sub_100186BA4(v29 | (v33 << 8), v31, v32);
      v21 = v171;
      if (*(v171 + 16) >= a2)
      {

        goto LABEL_198;
      }

      continue;
    }

LABEL_6:
    ;
  }

  v54 = v162;
  v25 = a13;
  v18 = a12;
  a3 = v158;
  if ((a14 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_50:
  sub_10018ADEC(a11, &v170, a6, a7, v54, v23, a9, a10, v18, v25, a2);
  if (v59)
  {
    v60 = a4();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    v169[0] = a6;
    v169[1] = a7;
    v169[2] = v54;
    v169[3] = sub_10018D148;
    v169[4] = 0;
    v169[5] = sub_10018CAB8;
    v169[6] = v61;
    v169[7] = sub_10018D138;
    v169[8] = 0;
    v169[9] = sub_10018A334;
    v169[10] = 0;
    v62 = *(v54 + 16);

    sub_10000E268(v169, &v166, &qword_1005D2D20, &qword_1004DB0D8);
    if (v62)
    {
      v63 = a7;
      v64 = 0;
      v155 = v54 + 32;
      v157 = v61;
      v65 = (v63 + 40);
      v159 = v62;
      do
      {
        if (v64 >= *(v163 + 16))
        {
          goto LABEL_214;
        }

        if (v64 >= *(v54 + 16))
        {
          goto LABEL_215;
        }

        v66 = *v65;
        v67 = *(v65 - 1);

        v164 = v67;
        v165 = v66;
        sub_100187DE4(&v164, *(v61 + 16), &v166);

        v68 = v166;
        if (!v166 || (v69 = v167 | (v168 << 32), (sub_100011B00(v166, v167, a11) & 1) != 0))
        {

          goto LABEL_54;
        }

        v71 = v170;
        v70 = v171;
        v72 = *(v171 + 16);
        v73 = v171 + 32;
        if (v170)
        {
          sub_10015C0B4(v68, v69, v73, v72, (v170 + 16), v170 + 32);
          if ((v74 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          sub_10015C014(v68, v69, v73, v72);
          if ((v78 & 1) == 0)
          {
LABEL_69:

            v54 = v162;
            v62 = v159;
            goto LABEL_54;
          }
        }

        if (BYTE4(v69) > 7u)
        {
          switch(BYTE4(v69))
          {
            case 8u:
              v79 = -16383;
              goto LABEL_131;
            case 9u:
              v79 = -16382;
              goto LABEL_131;
            case 0xAu:
              v79 = -16381;
              if (v158)
              {
                goto LABEL_74;
              }

              goto LABEL_83;
          }

LABEL_79:
          v83 = *(v163 + 16);
          if (a6)
          {
            v84 = sub_10015C0B4(v68, v69, v163 + 32, v83, (a6 + 16), a6 + 32);
            if (v85)
            {
              goto LABEL_97;
            }
          }

          else
          {
            v84 = sub_10015C014(v68, v69, v163 + 32, v83);
            if (v94)
            {
              goto LABEL_97;
            }
          }

          if ((v84 & 0x8000000000000000) != 0)
          {
            goto LABEL_229;
          }

          if (v84 >= *(v162 + 16))
          {
            goto LABEL_232;
          }

          if (*(v155 + v84))
          {
LABEL_97:
            v95 = sub_100187C0C(v160, a9);
            v96 = sub_100011B00(v68, v69, v95);

            if (v96)
            {
              goto LABEL_98;
            }

            if (*(a12 + 16) && (sub_100063B5C(v68, v69), (v105 & 1) != 0))
            {
              v97 = 1;
            }

            else if (sub_100011B00(v68, v69, a13))
            {
              v97 = 2;
            }

            else
            {
              v97 = 3;
            }
          }

          else
          {
LABEL_98:
            v97 = 0;
          }

          v79 = v97 | (BYTE4(v69) << 8);
          goto LABEL_131;
        }

        if (BYTE4(v69) == 5)
        {
          v80 = *(v163 + 16);
          if (a6)
          {
            v81 = sub_10015C0B4(v68, v69, v163 + 32, v80, (a6 + 16), a6 + 32);
            if (v82)
            {
              goto LABEL_91;
            }
          }

          else
          {
            v81 = sub_10015C014(v68, v69, v163 + 32, v80);
            if (v91)
            {
LABEL_91:
              v92 = sub_100187C0C(v160, a9);
              v93 = sub_100011B00(v68, v69, v92);

              if (v93)
              {
                goto LABEL_92;
              }

              if (*(a12 + 16) && (sub_100063B5C(v68, v69), (v104 & 1) != 0))
              {
                v79 = 16385;
              }

              else if (sub_100011B00(v68, v69, a13))
              {
                v79 = 16386;
              }

              else
              {
                v79 = 16387;
              }

              goto LABEL_131;
            }
          }

          if ((v81 & 0x8000000000000000) != 0)
          {
            goto LABEL_226;
          }

          if (v81 >= *(v162 + 16))
          {
            goto LABEL_233;
          }

          if ((*(v155 + v81) & 1) == 0)
          {
LABEL_92:
            v79 = 0x4000;
            goto LABEL_131;
          }

          goto LABEL_91;
        }

        if (BYTE4(v69) == 6)
        {
          v79 = -16384;
          if (v158)
          {
LABEL_74:

            v54 = v162;
            v62 = v159;
            goto LABEL_148;
          }

LABEL_83:
          v86 = *(v70 + 16);
          v87 = v70 + 32;
          if (v71)
          {
            v88 = sub_10015C0B4(v68, v69, v87, v86, (v71 + 16), v71 + 32);
            if ((v90 & 1) == 0)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v88 = sub_10015C014(v68, v69, v87, v86);
            if ((v101 & 1) == 0)
            {
LABEL_107:
              v102 = v88;
              v54 = v162;
              v62 = v159;

              v103 = v172;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v103 = sub_100141B5C(v103);
              }

              if ((v102 & 0x8000000000000000) != 0)
              {
                goto LABEL_227;
              }

              if (v102 >= *(v103 + 2))
              {
                goto LABEL_230;
              }

              goto LABEL_147;
            }

            v89 = 0;
          }

          goto LABEL_133;
        }

        if (BYTE4(v69) != 7)
        {
          goto LABEL_79;
        }

        v75 = *(v163 + 16);
        if (a6)
        {
          v76 = sub_10015C0B4(v68, v69, v163 + 32, v75, (a6 + 16), a6 + 32);
          if ((v77 & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v76 = sub_10015C014(v68, v69, v163 + 32, v75);
          if ((v98 & 1) == 0)
          {
LABEL_100:
            if ((v76 & 0x8000000000000000) != 0)
            {
              goto LABEL_228;
            }

            if (v76 >= *(v162 + 16))
            {
              goto LABEL_231;
            }

            if ((*(v155 + v76) & 1) == 0)
            {
LABEL_104:
              v79 = 0x8000;
              goto LABEL_131;
            }
          }
        }

        v99 = sub_100187C0C(v160, a9);
        v100 = sub_100011B00(v68, v69, v99);

        if (v100)
        {
          goto LABEL_104;
        }

        if (*(a12 + 16) && (sub_100063B5C(v68, v69), (v106 & 1) != 0))
        {
          v79 = -32767;
        }

        else if (sub_100011B00(v68, v69, a13))
        {
          v79 = -32766;
        }

        else
        {
          v79 = -32765;
        }

LABEL_131:
        v107 = *(v70 + 16);
        v108 = v70 + 32;
        if (v71)
        {
          v109 = sub_10015C0B4(v68, v69, v108, v107, (v71 + 16), v71 + 32);
          if ((v110 & 1) == 0)
          {
            v102 = v109;
            v54 = v162;
            v62 = v159;
            goto LABEL_143;
          }

LABEL_133:
          v54 = v162;
          v62 = v159;
          goto LABEL_136;
        }

        v111 = sub_10015C014(v68, v69, v108, v107);
        v54 = v162;
        v62 = v159;
        if ((v112 & 1) == 0)
        {
          v102 = v111;
LABEL_143:

          v103 = v172;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_100141B5C(v103);
          }

          if ((v102 & 0x8000000000000000) != 0)
          {
            goto LABEL_222;
          }

          if (v102 >= *(v103 + 2))
          {
            goto LABEL_223;
          }

LABEL_147:
          *&v103[2 * v102 + 32] = v79;
          v172 = v103;
          goto LABEL_148;
        }

        v89 = 0;
LABEL_136:
        sub_100187EA0(v68, v69, v89);

        v113 = v172;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000923E8(0, *(v113 + 2) + 1, 1);
          v113 = v172;
        }

        v115 = *(v113 + 2);
        v114 = *(v113 + 3);
        if (v115 >= v114 >> 1)
        {
          sub_1000923E8((v114 > 1), v115 + 1, 1);
          v113 = v172;
        }

        *(v113 + 2) = v115 + 1;
        *&v113[2 * v115 + 32] = v79;
LABEL_148:
        v61 = v157;
        if (*(v171 + 16) >= a2)
        {

          sub_100025F40(v169, &qword_1005D2D20, &qword_1004DB0D8);

          goto LABEL_197;
        }

LABEL_54:
        ++v64;
        v65 += 4;
      }

      while (v62 != v64);
    }

    sub_100025F40(v169, &qword_1005D2D20, &qword_1004DB0D8);

    v116 = v163;

    v117 = swift_allocObject();
    v117[2] = v160;
    v117[3] = a9;
    v117[4] = a10;
    v118 = swift_allocObject();
    *(v118 + 16) = sub_10018CAF8;
    *(v118 + 24) = v117;
    v119 = *(v54 + 16);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    if (v119)
    {
      for (k = 0; k != v119; ++k)
      {
        if (k >= *(v116 + 16))
        {
          goto LABEL_216;
        }

        if (k >= *(v162 + 16))
        {
          goto LABEL_217;
        }

        v121 = v163 + 32 + 16 * k;
        v122 = *v121;
        v123 = *(v121 + 8);

        if ((*(v118 + 16))(v124, v123) & 1) == 0 || (sub_100011B00(v122, v123, a11))
        {
LABEL_153:

          v116 = v163;
          continue;
        }

        v125 = v170;
        v126 = v171;
        v127 = *(v171 + 16);
        if (v170)
        {
          sub_10015C0B4(v122, v123, v171 + 32, v127, (v170 + 16), v170 + 32);
          if ((v128 & 1) == 0)
          {
            goto LABEL_153;
          }

          v129 = sub_10015C0B4(v122, v123, v126 + 32, *(v126 + 16), (v125 + 16), v125 + 32);
          if (v131)
          {
            goto LABEL_178;
          }
        }

        else
        {
          if (v127)
          {
            for (m = 0; m != v127; ++m)
            {
              v133 = (v171 + 32 + 16 * m);
              if ((v133[2] | (v133[2] << 32)) == (v123 | (v123 << 32)))
              {
                v134 = *v133;
                v135 = *(*v133 + 16);
                if (v135 == *(v122 + 16))
                {
                  if (v135)
                  {
                    v136 = v134 == v122;
                  }

                  else
                  {
                    v136 = 1;
                  }

                  if (v136)
                  {
                    goto LABEL_153;
                  }

                  v137 = (v134 + 32);
                  v138 = (v122 + 32);
                  while (1)
                  {
                    v140 = *v137++;
                    v139 = v140;
                    v141 = *v138++;
                    if (v139 != v141)
                    {
                      break;
                    }

                    if (!--v135)
                    {
                      goto LABEL_153;
                    }
                  }
                }
              }
            }
          }

          v129 = sub_10015C014(v122, v123, v171 + 32, v127);
          if (v142)
          {
            v130 = 0;
LABEL_178:
            sub_100187EA0(v122, v123, v130);

            v143 = v172;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000923E8(0, *(v143 + 2) + 1, 1);
              v143 = v172;
            }

            v116 = v163;
            v145 = *(v143 + 2);
            v144 = *(v143 + 3);
            if (v145 >= v144 >> 1)
            {
              sub_1000923E8((v144 > 1), v145 + 1, 1);
              v143 = v172;
            }

            *(v143 + 2) = v145 + 1;
            *&v143[2 * v145 + 32] = -16382;
            v126 = v171;
            goto LABEL_188;
          }
        }

        v146 = v129;

        v143 = v172;
        v116 = v163;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_100141B5C(v143);
        }

        if ((v146 & 0x8000000000000000) != 0)
        {
          goto LABEL_220;
        }

        if (v146 >= *(v143 + 2))
        {
          goto LABEL_221;
        }

        *&v143[2 * v146 + 32] = -16382;
LABEL_188:
        v172 = v143;
        if (*(v126 + 16) >= a2)
        {

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
            goto LABEL_207;
          }

          return v170;
        }
      }
    }

    v147 = swift_isEscapingClosureAtFileLocation();

    if ((v147 & 1) == 0)
    {
      LOBYTE(v123) = v158;
      if ((sub_10018A98C(0x7FFFFFFFFFFFFFFFLL, a11, &v170, a6, v116, v162, a2, v158 & 1) & 1) == 0 || !*(v116 + 16))
      {

        goto LABEL_197;
      }

      isEscapingClosureAtFileLocation = *(v116 + 32);
      v118 = *(v116 + 40);
      if (sub_100011B00(isEscapingClosureAtFileLocation, *(v116 + 40), a11))
      {

        goto LABEL_210;
      }

      v152 = *(v171 + 16);
      v151 = v171 + 32;
      if (v170)
      {
        sub_10015C0B4(isEscapingClosureAtFileLocation, v118, v151, v152, (v170 + 16), v170 + 32);
      }

      else
      {
LABEL_207:
        sub_10015C014(isEscapingClosureAtFileLocation, v118, v151, v152);
      }

      v153 = v149;

      if ((v153 & 1) != 0 && (v123 & 1) == 0)
      {
        sub_100186BA4(0xC003u, isEscapingClosureAtFileLocation, v118);
      }

      else
      {
LABEL_210:
      }

      goto LABEL_196;
    }

    goto LABEL_224;
  }

LABEL_195:

LABEL_196:

LABEL_197:

LABEL_198:

  return v170;
}

void sub_10018C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v72 = a6;
  v64 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v64);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v60 - v14;
  v17 = a5[2];
  v16 = a5[3];
  v18 = a5[4];
  if (!v16 || (sub_100104744(a5[3], a2) & 1) == 0 || (sub_10010463C(v18, a3) & 1) == 0)
  {
    a5[2] = a1;
    a5[3] = a2;
    a5[4] = a3;
    sub_10018A510(v17, v16, v18);
    v19 = *(a3 + 16);
    if (v19)
    {
      v20 = 255;
      if (v19 < 0xFF)
      {
        v20 = *(a3 + 16);
      }

      v68 = v20;
      v60[1] = a1;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v21 = 0;
      v22 = (a2 + 40);
      *&v23 = 68160003;
      v61 = v23;
      v70 = v12;
      v71 = a2;
      v62 = a3;
      v63 = a4;
      v69 = v19;
      while (1)
      {
        if (v21 >= *(a2 + 16))
        {
          __break(1u);
          return;
        }

        v25 = *(v22 - 1);
        v26 = *v22;
        v27 = *(a3 + 2 * v21 + 32);
        v28 = v21 + 1;
        v29 = v21 > 0xFE;
        v30 = v68;
        if (v29)
        {
          v30 = -1;
        }

        v74 = v30;
        v75 = v27;
        v31 = v29 ? -1 : v28;
        v73 = v31;
        v32 = sub_1000B7840(v25, v26, v72);
        if (v33)
        {
          v35 = v32;
          v36 = v33;
          v37 = v34;
        }

        else
        {

          v35 = -1;
          v36 = v25;
          v37 = v26;
        }

        sub_10018C9E0(a4, v12);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v38 = sub_1004A4A54();
        v39 = sub_1004A6034();
        if (os_log_type_enabled(v38, v39))
        {
          break;
        }

        sub_10010E8C4(v12);

        swift_bridgeObjectRelease_n();
LABEL_9:
        v22 += 4;
        v21 = v28;
        v12 = v70;
        v24 = v69 == v28;
        a2 = v71;
        if (v24)
        {

          return;
        }
      }

      v66 = v39;
      v67 = v28;
      v40 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v78[0] = v65;
      *v40 = v61;
      *(v40 + 4) = 2;
      *(v40 + 8) = 256;
      v41 = v12[*(v64 + 20)];
      sub_10010E8C4(v12);
      *(v40 + 10) = v41;
      *(v40 + 11) = 1040;
      *(v40 + 13) = 2;
      *(v40 + 17) = 512;
      *(v40 + 19) = v35;

      *(v40 + 21) = 2160;
      *(v40 + 23) = 0x786F626C69616DLL;
      *(v40 + 31) = 2085;
      v76 = v36;
      v77 = v37;
      v42 = sub_1004A5824();
      v44 = sub_10015BA6C(v42, v43, v78);

      *(v40 + 33) = v44;
      *(v40 + 41) = 256;
      v45 = v74;
      *(v40 + 43) = v73;
      *(v40 + 44) = 256;
      *(v40 + 46) = v45;
      v46 = v75;
      v47 = v75 >> 14;
      *(v40 + 47) = 2082;
      if (v46 >> 14 > 1)
      {
        if (v47 != 2)
        {
          v28 = v67;
          v49 = v66;
          v48 = 0xA090806u >> (8 * v46);
          goto LABEL_29;
        }

        LOBYTE(v48) = 7;
      }

      else if (v47)
      {
        LOBYTE(v48) = 5;
      }

      else
      {
        v48 = v46 >> 8;
      }

      v28 = v67;
      v49 = v66;
LABEL_29:
      LOBYTE(v76) = v48;
      v50 = sub_1004A5824();
      v52 = sub_10015BA6C(v50, v51, v78);

      *(v40 + 49) = v52;
      *(v40 + 57) = 2082;
      if (v47 > 2)
      {
        LOBYTE(v46) = 0;
      }

      LOBYTE(v76) = v46;
      v53 = sub_1004A5824();
      v55 = sub_10015BA6C(v53, v54, v78);

      *(v40 + 59) = v55;
      _os_log_impl(&_mh_execute_header, v38, v49, "[%.*hhx] [{%.*hx}%{sensitive,mask.mailbox}s] [MailboxesToSelect] %hhu/%hhu: %{public}s - %{public}s", v40, 0x43u);
      swift_arrayDestroy();

      a3 = v62;
      a4 = v63;
      goto LABEL_9;
    }

    sub_10018C9E0(a4, v15);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v56 = sub_1004A4A54();
    v57 = sub_1004A6034();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 68157952;
      *(v58 + 4) = 2;
      *(v58 + 8) = 256;
      v59 = v15[*(v64 + 20)];
      sub_10010E8C4(v15);
      *(v58 + 10) = v59;
      _os_log_impl(&_mh_execute_header, v56, v57, "[%.*hhx] [MailboxesToSelect] None.", v58, 0xBu);
    }

    else
    {
      sub_10010E8C4(v15);
    }
  }
}

uint64_t sub_10018C9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State.Logger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018CA78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018CAC0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10018CAF8(uint64_t a1, unsigned int a2)
{
  v5 = sub_100187C0C(*(v2 + 16), *(v2 + 24));
  LOBYTE(a2) = sub_100011B00(a1, a2, v5);

  return a2 & 1;
}

uint64_t sub_10018CB54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018CB94()
{

  if (*(v0 + 160))
  {
  }

  sub_100020D58(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208));

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t _s17MailboxesToSelectV6ReasonO4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t _s17MailboxesToSelectV6ReasonO4KindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
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

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10018CD88(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10018CD9C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t _s17MailboxesToSelectV6ReasonOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FD)
  {
    goto LABEL_17;
  }

  if (a2 + 63491 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 63491 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 63491;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 63491;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 63491;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFC | (*a1 >> 14) | (*a1 >> 3) & 0x700) ^ 0x7FF;
  if (v6 >= 0x7FC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *_s17MailboxesToSelectV6ReasonOwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63491 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 63491 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7FD)
  {
    v4 = 0;
  }

  if (a2 > 0x7FC)
  {
    v5 = ((a2 - 2045) >> 16) + 1;
    *result = a2 - 2045;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 2) & 0x1FF) - (a2 << 9);
    *result = (32 * v6) & 0xF800 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10018CF4C(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 14;
  v3 = (v1 & 3 | (4 * ((v1 >> 8) & 7))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_WORD *sub_10018CF80(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x703 | (a2 << 14);
  }

  else
  {
    *result = ((a2 - 3) << 6) & 0x700 | (a2 - 3) & 3 | 0xC000;
  }

  return result;
}

unint64_t sub_10018CFCC()
{
  result = qword_1005D2D38;
  if (!qword_1005D2D38)
  {
    v3 = sub_10000DEFC(&qword_1005D2D40, qword_1004DB148);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D2D38);
  }

  return result;
}

unint64_t sub_10018D034()
{
  result = qword_1005D2D48;
  if (!qword_1005D2D48)
  {
    result = swift_getWitnessTable(byte_1004DB188, &_s11UserVisibleON, v0, v1);
    atomic_store(result, &qword_1005D2D48);
  }

  return result;
}

unint64_t sub_10018D08C()
{
  result = qword_1005D2D50;
  if (!qword_1005D2D50)
  {
    result = swift_getWitnessTable(aY_23, &_s17MailboxesToSelectV6ReasonO4WorkON, v0, v1);
    atomic_store(result, &qword_1005D2D50);
  }

  return result;
}

unint64_t sub_10018D0E4()
{
  result = qword_1005D2D58;
  if (!qword_1005D2D58)
  {
    result = swift_getWitnessTable(byte_1004DB258, &_s17MailboxesToSelectV6ReasonO4KindON, v0, v1);
    atomic_store(result, &qword_1005D2D58);
  }

  return result;
}

BOOL sub_10018D150(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  v5 = v4 >> 60 == 15 && v3 >> 60 == 15;
  if (v3 >> 60 == 15 || v4 >> 60 == 15)
  {
    return v5;
  }

  else
  {
    return sub_10003A194(*a1, v3, *a2, v4);
  }
}

BOOL sub_10018D194(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v13[4] = a2[4];
  v8 = *a2;
  v13[1] = a2[1];
  v12[4] = v3;
  v13[0] = v8;
  v10 = *(a2 + 10);
  v9 = *(a2 + 11);
  if ((sub_1001EFF14(v12, v13) & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 != 15)
  {
    return v9 >> 60 != 15 && sub_10003A194(v5, v6, v10, v9);
  }

  return v9 >> 60 == 15;
}

uint64_t sub_10018D254()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 15)
  {
    sub_10018D6F4();
    swift_allocError();
    *v3 = xmmword_1004DB2C0;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_100014CEC(v1, *(v0 + 88));
    sub_1000CBB68(v1, v2);
    *(v0 + 80) = xmmword_1004D25F0;
  }

  return v1;
}

uint64_t sub_10018D300()
{
  sub_10018D6F4();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  return swift_willThrow();
}

double variable initialization expression of CommandConnection.idle@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 44) = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10018D390@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004A5214();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10018D410(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10018D46C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

_WORD *sub_10018D4F0@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

void sub_10018D55C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10018D5C4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018D5EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 96))
  {
    return (*a1 + 58);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x39)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_10018D65C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 96) = 0;
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

unint64_t sub_10018D6F4()
{
  result = qword_1005D2E48;
  if (!qword_1005D2E48)
  {
    result = swift_getWitnessTable(asc_1004DC4C4, &type metadata for Authentication.Error, v0, v1);
    atomic_store(result, &qword_1005D2E48);
  }

  return result;
}

uint64_t sub_10018D748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018D79C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_10018D80C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018D854(uint64_t a1)
{
  v16 = xmmword_1004DC1F0;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    while (1)
    {
      v14 = &type metadata for Data;
      v15 = &protocol witness table for Data;
      v13 = *(v3 + 16 * v2);
      v12 = v13;
      v4 = sub_10002587C(&v13, &type metadata for Data);
      v5 = *v4;
      v6 = v4[1] >> 62;
      if (v6 > 1)
      {
        if (v6 != 2)
        {
LABEL_18:
          sub_100014CEC(v12, *(&v12 + 1));
          sub_100014CEC(v12, *(&v12 + 1));
          goto LABEL_19;
        }

        v7 = *(v5 + 16);
        v8 = *(v5 + 24);
        sub_100014CEC(v12, *(&v12 + 1));
        sub_100014CEC(v12, *(&v12 + 1));
        if (sub_1004A40D4() && __OFSUB__(v7, sub_1004A4104()))
        {
          goto LABEL_25;
        }

        if (__OFSUB__(v8, v7))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (!v6)
        {
          goto LABEL_18;
        }

        v9 = v5;
        if (v5 >> 32 < v5)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
        }

        sub_100014CEC(v12, *(&v12 + 1));
        sub_100014CEC(v12, *(&v12 + 1));
        if (sub_1004A40D4() && __OFSUB__(v9, sub_1004A4104()))
        {
          goto LABEL_26;
        }
      }

      sub_1004A40F4();
LABEL_19:
      sub_1004A43F4();
      sub_1000197E0(&v13);
      if (v2 >= v1 - 1)
      {
        sub_100014D40(v12, *(&v12 + 1));
      }

      else
      {
        v10 = sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
        v14 = v10;
        v15 = sub_10000DF44(&qword_1005D2F10, &unk_1005D8FF0, &unk_1004DC230, &protocol conformance descriptor for <A> [A]);
        *&v13 = &off_1005A3840;
        sub_10002587C(&v13, v10);
        sub_1004A43F4();
        sub_100014D40(v12, *(&v12 + 1));
        sub_1000197E0(&v13);
      }

      if (v1 == ++v2)
      {
        return v16;
      }
    }
  }

  return 0;
}

__n128 sub_10018DBD8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10018DBE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_100014CEC(v2, v3);
}

void *sub_10018DC04(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a2 >> 62;
  v29 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v36 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v5 & ~(v5 >> 63), 0);
    v28 = v3;
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(v3 + 16);
      }

      else
      {
        v9 = v3;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v36;
    v27 = v3 >> 32;
    v26 = &v34 + v9;
    v31 = v4;
    v32 = v3;
    v30 = v5;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
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

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v4 == 2)
      {
        if (v12 < *(v3 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(v3 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_1004A40D4();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_1004A4104();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          LOWORD(v34) = v3;
          BYTE2(v34) = BYTE2(v3);
          BYTE3(v34) = BYTE3(v3);
          BYTE4(v34) = v29;
          BYTE5(v34) = BYTE5(v3);
          BYTE6(v34) = BYTE6(v3);
          HIBYTE(v34) = HIBYTE(v3);
          LOWORD(v35) = a2;
          BYTE2(v35) = BYTE2(a2);
          BYTE3(v35) = BYTE3(a2);
          BYTE4(v35) = BYTE4(a2);
          BYTE5(v35) = BYTE5(a2);
          v19 = v26[v10];
          goto LABEL_36;
        }

        if (v12 < v28 || v12 >= v27)
        {
          goto LABEL_44;
        }

        v13 = sub_1004A40D4();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_1004A4104();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      LOBYTE(v34) = v19;
      sub_10014F900();
      v37._countAndFlagsBits = sub_1004A5A84();
      v34 = 30768;
      v35 = 0xE200000000000000;
      sub_1004A5994(v37);

      v21 = v34;
      v20 = v35;
      v36 = v8;
      v23 = v8[2];
      v22 = v8[3];
      if (v23 >= v22 >> 1)
      {
        sub_100091A08((v22 > 1), v23 + 1, 1);
        v8 = v36;
      }

      v8[2] = v23 + 1;
      v24 = &v8[2 * v23];
      v24[4] = v21;
      v24[5] = v20;
      ++v10;
      v5 = v30;
      LODWORD(v4) = v31;
      v3 = v32;
    }

    while (v11 != v30);
  }

  return v8;
}

uint64_t sub_10018DF50()
{
  sub_10018DC04(*v0, v0[1]);
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
  v1 = sub_1004A5614();

  return v1;
}

uint64_t sub_10018E008(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v3)
    {
      goto LABEL_11;
    }

    if (result == 32 && a2 == 0xE100000000000000)
    {
      result = 32;
      a2 = 0xE100000000000000;
LABEL_11:
      sub_10018E150(result, a2, 0);
      return 0;
    }

    v4 = result;
    v5 = a2;
    if (sub_1004A6D34())
    {
      result = v4;
      a2 = v5;
      goto LABEL_11;
    }

    sub_10018E0FC();
    swift_allocError();
    swift_willThrow();
    return sub_10018E150(v4, v5, 0);
  }

  return result;
}

unint64_t sub_10018E0FC()
{
  result = qword_1005D2F18;
  if (!qword_1005D2F18)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for Authentication.Challenge.ReceivedTextAsAuthenticationQuery, v0, v1);
    atomic_store(result, &qword_1005D2F18);
  }

  return result;
}

uint64_t sub_10018E150(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_100014D40(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_10018E170(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t sub_10018E190(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for MailboxSyncStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataTransferReportAccumulator.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_10018E210(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
    if (a2)
    {
      *result = xmmword_1004DA580;
    }
  }

  return result;
}

uint64_t sub_10018E27C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10018E2D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t static AuthenticationFailure.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      return !a6;
    }

    if (a3 == 1)
    {
      return a6 == 1;
    }

LABEL_10:
    if (a6 >= 4)
    {
      return static ResponseText.__derived_struct_equals(_:_:)(a1, a2);
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      return a6 == 3;
    }

    goto LABEL_10;
  }

  return a6 == 2;
}

void AuthenticationFailure.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v5 = 3;
      goto LABEL_12;
    }

    if (a4 == 3)
    {
      v5 = 4;
      goto LABEL_12;
    }
  }

  else
  {
    if (!a4)
    {
      v5 = 1;
      goto LABEL_12;
    }

    if (a4 == 1)
    {
      v5 = 2;
LABEL_12:
      sub_1004A6EB4(v5);
      return;
    }
  }

  sub_1004A6EB4(0);
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(a1, a2);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int AuthenticationFailure.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      sub_1004A6EB4(3uLL);
      return sub_1004A6F14();
    }

    if (a3 == 3)
    {
      sub_1004A6EB4(4uLL);
      return sub_1004A6F14();
    }
  }

  else
  {
    if (!a3)
    {
      sub_1004A6EB4(1uLL);
      return sub_1004A6F14();
    }

    if (a3 == 1)
    {
      sub_1004A6EB4(2uLL);
      return sub_1004A6F14();
    }
  }

  sub_1004A6EB4(0);
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(v6, a1);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

Swift::Int sub_10018E5A0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1004A6E94();
  AuthenticationFailure.hash(into:)(v6, v2, v3, v4);
  return sub_1004A6F14();
}

uint64_t sub_10018E5F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      return v5 == 2;
    }

    if (v4 == 3)
    {
      return v5 == 3;
    }
  }

  else
  {
    if (!v4)
    {
      return v5 == 0;
    }

    if (v4 == 1)
    {
      return v5 == 1;
    }
  }

  if (v5 >= 4)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(v3, a1[1]);
  }

  else
  {
    return 0;
  }
}

unint64_t AuthenticationFailure.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x6F7571207265766FLL;
  v4 = 0x6B63757473;
  v5 = 0x726568746FLL;
  if (a3 != 3)
  {
    v5 = 0x6F7571207265766FLL;
  }

  if (a3 != 2)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v3 = 0xD000000000000015;
  }

  if (!a3)
  {
    v3 = 0x6465726320646162;
  }

  if (a3 <= 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10018E72C()
{
  result = qword_1005D2F20;
  if (!qword_1005D2F20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticationFailure, &type metadata for AuthenticationFailure, v0, v1);
    atomic_store(result, &qword_1005D2F20);
  }

  return result;
}

unint64_t sub_10018E780()
{
  v1 = *(v0 + 16);
  v2 = 0x6F7571207265766FLL;
  v3 = 0x6B63757473;
  v4 = 0x726568746FLL;
  if (v1 != 3)
  {
    v4 = 0x6F7571207265766FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!v1)
  {
    v2 = 0x6465726320646162;
  }

  if (v1 <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10018E834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10018E84C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 24))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018E8A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

void *sub_10018E900(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

unint64_t sub_10018E934(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((~result & 0xF000000000000007) == 0)
  {
    goto LABEL_5;
  }

  if (((result >> 59) & 0x1E | (result >> 2) & 1) != 0x11 || __ROR8__(result + 0x7FFFFFFFFFFFFF94, 3) != 14)
  {
    sub_10001114C(result);
LABEL_5:

    return 0;
  }

  return result;
}

void sub_10018EA84(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa(0);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  if ((a1 & 1) == 0)
  {
    v27 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v27 > 2)
    {
      if ((v27 - 5) >= 2)
      {
        if (v27 == 3)
        {
          if (qword_1005D2DA8 != -1)
          {
            swift_once();
          }

          v28 = &qword_1005DE0A0;
        }

        else
        {
          if (qword_1005D2DB0 != -1)
          {
            swift_once();
          }

          v28 = &qword_1005DE0B0;
        }
      }

      else
      {
        if (qword_1005D2DA0 != -1)
        {
          swift_once();
        }

        v28 = &qword_1005DE090;
      }
    }

    else if (v27)
    {
      if (v27 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v28 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v28 = &qword_1005DE080;
      }
    }

    else
    {
      v28 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v33 = *v28;
    v32 = v28[1];

    v34 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_54;
  }

  v14 = v3[11];
  if (v14 >> 60 == 11)
  {
    v29 = 0;
    v14 = 0xC000000000000000;
LABEL_18:
    v30 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v30 > 2)
    {
      if ((v30 - 5) >= 2)
      {
        if (v30 == 3)
        {
          if (qword_1005D2DA8 != -1)
          {
            swift_once();
          }

          v31 = &qword_1005DE0A0;
        }

        else
        {
          if (qword_1005D2DB0 != -1)
          {
            swift_once();
          }

          v31 = &qword_1005DE0B0;
        }
      }

      else
      {
        if (qword_1005D2DA0 != -1)
        {
          swift_once();
        }

        v31 = &qword_1005DE090;
      }
    }

    else if (v30)
    {
      if (v30 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v31 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v31 = &qword_1005DE080;
      }
    }

    else
    {
      v31 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v33 = *v31;
    v32 = v31[1];

    v34 = sub_100190D98(v29, v14, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    v35 = v37;
    v36 = v38;
    sub_1000CBB68(v29, v14);
LABEL_54:
    *a3 = v33;
    *(a3 + 8) = v32;
    *(a3 + 16) = v34;
    *(a3 + 24) = v35;
    *(a3 + 32) = v36;
    *(a3 + 38) = BYTE6(v36);
    *(a3 + 36) = WORD2(v36);
    *(a3 + 64) = 1;
    return;
  }

  if (v14 >> 60 != 15)
  {
    v29 = v3[10];
    sub_100014CEC(v29, v3[11]);
    sub_100073A18(v29, v14);
    *(v3 + 5) = xmmword_1004D25F0;
    goto LABEL_18;
  }

  v15 = v11;
  sub_10018D6F4();
  swift_allocError();
  *v16 = xmmword_1004DB2C0;
  *(v16 + 16) = 1;
  swift_willThrow();
  sub_100190B00(a2, v13);
  sub_100190B00(a2, v9);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_errorRetain();
  v17 = sub_1004A4A54();
  v18 = sub_1004A6014();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v19 = 68158466;
    *(v19 + 4) = 2;
    *(v19 + 8) = 256;
    v21 = v9[*(v15 + 20)];
    sub_100190CD4(v9);
    *(v19 + 10) = v21;
    *(v19 + 11) = 2082;
    v22 = *&v13[*(v15 + 20) + 4];
    sub_100190CD4(v13);
    v23 = ConnectionID.debugDescription.getter(v22);
    v25 = sub_10015BA6C(v23, v24, &v41);

    *(v19 + 13) = v25;
    *(v19 + 21) = 2112;
    v26 = sub_1004A4264();
    *(v19 + 23) = v26;
    *v20 = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%.*hhx-%{public}s] Authentication failed: %@", v19, 0x1Fu);
    sub_100190D30(v20);

    sub_1000197E0(v40);
  }

  else
  {
    sub_100190CD4(v9);

    sub_100190CD4(v13);
  }

  swift_willThrow();
}

void sub_10018F108(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa(0);
  __chkstk_darwin(v7);
  v9 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v70[-v11];
  __chkstk_darwin(v13);
  v15 = &v70[-v14];
  __chkstk_darwin(v16);
  v19 = &v70[-v18];
  if ((a1 & 1) == 0)
  {
    v32 = (*(v3 + 14) >> 59) & 6 | ((*(v3 + 12) & 0x2000000000000000) != 0);
    if (v32 <= 2)
    {
      if (!v32)
      {
LABEL_24:
        v33 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_39:
        v61 = *v33;
        v60 = v33[1];

        v62 = 0;
        v63 = 0;
        v64 = 0;
LABEL_40:
        *a3 = v61;
        *(a3 + 8) = v60;
        *(a3 + 16) = v62;
        *(a3 + 24) = v63;
        *(a3 + 38) = BYTE6(v64);
        *(a3 + 36) = WORD2(v64);
        *(a3 + 32) = v64;
        *(a3 + 39) = v91[0];
        *(a3 + 48) = *(v91 + 9);
        *(a3 + 64) = 1;
        return;
      }

LABEL_7:
      if (v32 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v33 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v33 = &qword_1005DE080;
      }

      goto LABEL_39;
    }

LABEL_25:
    if ((v32 - 5) >= 2)
    {
      if (v32 == 3)
      {
        if (qword_1005D2DA8 != -1)
        {
          swift_once();
        }

        v33 = &qword_1005DE0A0;
      }

      else
      {
        if (qword_1005D2DB0 != -1)
        {
          swift_once();
        }

        v33 = &qword_1005DE0B0;
      }
    }

    else
    {
      if (qword_1005D2DA0 != -1)
      {
        swift_once();
      }

      v33 = &qword_1005DE090;
    }

    goto LABEL_39;
  }

  v20 = v3 + 120;
  v21 = *(v3 + 15);
  v22 = *(v3 + 18);
  if ((v22 - 1) < 2)
  {
    v74 = v3;
    v75 = v17;
    sub_100190B00(a2, v12);
    sub_100190B00(a2, v9);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v23 = sub_1004A4A54();
    v24 = sub_1004A5FF4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v76[0] = v73;
      *v25 = 68158210;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      v26 = v75;
      v27 = v9[*(v75 + 20)];
      sub_100190CD4(v9);
      *(v25 + 10) = v27;
      *(v25 + 11) = 2082;
      v28 = *&v12[*(v26 + 20) + 4];
      sub_100190CD4(v12);
      v29 = ConnectionID.debugDescription.getter(v28);
      v31 = sub_10015BA6C(v29, v30, v76);

      *(v25 + 13) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%.*hhx-%{public}s] Authentication implementation has no initial response", v25, 0x15u);
      sub_1000197E0(v73);
    }

    else
    {
      sub_100190CD4(v9);

      sub_100190CD4(v12);
    }

    v32 = (v74[14] >> 59) & 6 | ((v74[12] & 0x2000000000000000) != 0);
    if (v32 <= 2)
    {
      if (!v32)
      {
        goto LABEL_24;
      }

      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if (!v22)
  {
    *v20 = 0;
    *(v3 + 16) = 0;
    *(v3 + 17) = 0;
    *(v3 + 18) = 1;
    *(v3 + 19) = 0;
    *(v3 + 20) = 0;
    *(v3 + 42) = 0;
    v34 = *v3;
    v82 = 0;
    v83 = 0xE000000000000000;
    v84 = 0;
    v85 = 0xE000000000000000;
    v86 = (v34 & 1) == 0;
    v35 = v3;
    v36 = sub_1001F0F00();
    v38 = v37;
    v39 = (*(v35 + 14) >> 59) & 6 | ((*(v35 + 12) & 0x2000000000000000) != 0);
    if (v39 <= 2)
    {
      if (v39)
      {
        goto LABEL_14;
      }

      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v75 = v17;
  v72 = *(v3 + 16);
  v73 = v21;
  v41 = *(v3 + 42);
  v42 = *(v3 + 19);
  v43 = *(v3 + 20);
  v71 = v3[136];
  *v20 = 0;
  *(v3 + 16) = 0;
  *(v3 + 17) = 0;
  *(v3 + 18) = 2;
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v3 + 42) = 0;
  v44 = *(v3 + 1);
  v45 = *(v3 + 2);
  v46 = *(v3 + 3);
  v47 = *(v3 + 4);
  v69 = *v3;
  v74 = v42;
  v48 = v92;
  sub_1001F57E4(v44, v45, v46, v47, v22, v42, v43, v41, &v78, v69);
  if (!v48)
  {
    v92 = 0;
    sub_100191644(v73, v72, v71);

    v76[0] = v80;
    v76[1] = v79;
    v76[2] = v78;
    *&v77[0] = 0;
    *(&v77[0] + 1) = 0xE000000000000000;
    *&v77[1] = 0;
    DWORD2(v77[1]) = v81 & 0x80201;
    BYTE12(v77[1]) = 0;
    v89 = v78;
    v90[0] = v77[0];
    v87 = v80;
    v88 = v79;
    *(v90 + 13) = *(v77 + 13);

    v65 = v3;
    v36 = sub_1001F1DEC();
    v38 = v66;
    sub_100191670(v76);
    sub_1001916C4(&v78);
    v39 = (*(v65 + 14) >> 59) & 6 | ((*(v65 + 12) & 0x2000000000000000) != 0);
    if (v39 <= 2)
    {
      if (v39)
      {
LABEL_14:
        if (v39 == 1)
        {
          if (qword_1005D2D90 != -1)
          {
            swift_once();
          }

          v40 = &qword_1005DE070;
        }

        else
        {
          if (qword_1005D2D98 != -1)
          {
            swift_once();
          }

          v40 = &qword_1005DE080;
        }

        goto LABEL_60;
      }

LABEL_43:
      v40 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_60:
      v61 = *v40;
      v60 = v40[1];

      v62 = sub_100190D98(v36, v38, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v63 = v67;
      v64 = v68;
      sub_100014D40(v36, v38);
      goto LABEL_40;
    }

LABEL_44:
    if ((v39 - 5) >= 2)
    {
      if (v39 == 3)
      {
        if (qword_1005D2DA8 != -1)
        {
          swift_once();
        }

        v40 = &qword_1005DE0A0;
      }

      else
      {
        if (qword_1005D2DB0 != -1)
        {
          swift_once();
        }

        v40 = &qword_1005DE0B0;
      }
    }

    else
    {
      if (qword_1005D2DA0 != -1)
      {
        swift_once();
      }

      v40 = &qword_1005DE090;
    }

    goto LABEL_60;
  }

  sub_100191644(v73, v72, v71);

  sub_100190B00(a2, v19);
  sub_100190B00(a2, v15);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_errorRetain();
  v49 = sub_1004A4A54();
  v50 = sub_1004A6014();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v76[0] = v92;
    *v51 = 68158466;
    *(v51 + 4) = 2;
    *(v51 + 8) = 256;
    v52 = v75;
    v53 = v15[*(v75 + 20)];
    sub_100190CD4(v15);
    *(v51 + 10) = v53;
    *(v51 + 11) = 2082;
    v54 = *&v19[*(v52 + 20) + 4];
    sub_100190CD4(v19);
    v55 = ConnectionID.debugDescription.getter(v54);
    v57 = sub_10015BA6C(v55, v56, v76);

    *(v51 + 13) = v57;
    *(v51 + 21) = 2112;
    v58 = sub_1004A4264();
    *(v51 + 23) = v58;
    v59 = v74;
    *v74 = v58;
    _os_log_impl(&_mh_execute_header, v49, v50, "[%.*hhx-%{public}s] Authentication failed: %@", v51, 0x1Fu);
    sub_100190D30(v59);

    sub_1000197E0(v92);
  }

  else
  {
    sub_100190CD4(v15);

    sub_100190CD4(v19);
  }

  swift_willThrow();
}

void sub_10018FAA8(char a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, unint64_t)@<X2>, uint64_t a4@<X8>)
{
  v10 = _s6LoggerVMa(0);
  __chkstk_darwin(v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  if ((a1 & 1) == 0)
  {
    v30 = (v4[9] >> 59) & 6 | ((v4[7] & 0x2000000000000000) != 0);
    v43 = v5;
    if (v30 > 2)
    {
      if ((v30 - 5) >= 2)
      {
        if (v30 == 3)
        {
          if (qword_1005D2DA8 != -1)
          {
            swift_once();
          }

          v31 = &qword_1005DE0A0;
        }

        else
        {
          if (qword_1005D2DB0 != -1)
          {
            swift_once();
          }

          v31 = &qword_1005DE0B0;
        }
      }

      else
      {
        if (qword_1005D2DA0 != -1)
        {
          swift_once();
        }

        v31 = &qword_1005DE090;
      }
    }

    else if (v30)
    {
      if (v30 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v31 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v31 = &qword_1005DE080;
      }
    }

    else
    {
      v31 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v35 = *v31;
    v36 = v31[1];

    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_51;
  }

  v17 = v4[11];
  if (v17 >> 60 != 15)
  {
    v32 = v4[10];
    *(v4 + 5) = xmmword_1004D25F0;
    sub_100014CEC(v32, v17);
    a3(v32, v17);
    v33 = (v4[9] >> 59) & 6 | ((v4[7] & 0x2000000000000000) != 0);
    v43 = v5;
    if (v33 > 2)
    {
      if ((v33 - 5) >= 2)
      {
        if (v33 == 3)
        {
          if (qword_1005D2DA8 != -1)
          {
            swift_once();
          }

          v34 = &qword_1005DE0A0;
        }

        else
        {
          if (qword_1005D2DB0 != -1)
          {
            swift_once();
          }

          v34 = &qword_1005DE0B0;
        }
      }

      else
      {
        if (qword_1005D2DA0 != -1)
        {
          swift_once();
        }

        v34 = &qword_1005DE090;
      }
    }

    else if (v33)
    {
      if (v33 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v34 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v34 = &qword_1005DE080;
      }
    }

    else
    {
      v34 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v35 = *v34;
    v36 = v34[1];

    v37 = sub_100190D98(v32, v17, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    v38 = v40;
    v39 = v41;
    a3(v32, v17);
LABEL_51:
    *a4 = v35;
    *(a4 + 8) = v36;
    *(a4 + 16) = v37;
    *(a4 + 24) = v38;
    *(a4 + 32) = v39;
    *(a4 + 38) = BYTE6(v39);
    *(a4 + 36) = WORD2(v39);
    *(a4 + 39) = *v44;
    *(a4 + 48) = *&v44[9];
    *(a4 + 64) = 1;
    return;
  }

  v18 = v14;
  sub_10018D6F4();
  swift_allocError();
  *v19 = xmmword_1004DB2C0;
  *(v19 + 16) = 1;
  swift_willThrow();
  sub_100190B00(a2, v16);
  sub_100190B00(a2, v12);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_errorRetain();
  v20 = sub_1004A4A54();
  v21 = sub_1004A6014();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v24 = v12[*(v18 + 20)];
    sub_100190CD4(v12);
    *(v22 + 10) = v24;
    *(v22 + 11) = 2082;
    v25 = *&v16[*(v18 + 20) + 4];
    sub_100190CD4(v16);
    v26 = ConnectionID.debugDescription.getter(v25);
    v28 = sub_10015BA6C(v26, v27, &v45);

    *(v22 + 13) = v28;
    *(v22 + 21) = 2112;
    v29 = sub_1004A4264();
    *(v22 + 23) = v29;
    *v23 = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%.*hhx-%{public}s] Authentication failed: %@", v22, 0x1Fu);
    sub_100190D30(v23);

    sub_1000197E0(v43);
  }

  else
  {
    sub_100190CD4(v12);

    sub_100190CD4(v16);
  }

  swift_willThrow();
}

void sub_100190148(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa(0);
  __chkstk_darwin(v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  __chkstk_darwin(v16);
  v19 = &v57 - v18;
  if ((a1 & 1) == 0)
  {
    v30 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v30 <= 2)
    {
      if (!v30)
      {
LABEL_26:
        v31 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_40:
        v51 = *v31;
        v50 = v31[1];

        v52 = 0;
        v53 = 0;
        v54 = 0;
LABEL_41:
        *a3 = v51;
        *(a3 + 8) = v50;
        *(a3 + 16) = v52;
        *(a3 + 24) = v53;
        *(a3 + 32) = v54;
        *(a3 + 38) = BYTE6(v54);
        *(a3 + 36) = WORD2(v54);
        *(a3 + 39) = *v59;
        *(a3 + 48) = *&v59[9];
        *(a3 + 64) = 1;
        return;
      }

LABEL_8:
      if (v30 == 1)
      {
        if (qword_1005D2D90 != -1)
        {
          swift_once();
        }

        v31 = &qword_1005DE070;
      }

      else
      {
        if (qword_1005D2D98 != -1)
        {
          swift_once();
        }

        v31 = &qword_1005DE080;
      }

      goto LABEL_40;
    }

LABEL_27:
    if ((v30 - 5) >= 2)
    {
      if (v30 == 3)
      {
        if (qword_1005D2DA8 != -1)
        {
          swift_once();
        }

        v31 = &qword_1005DE0A0;
      }

      else
      {
        if (qword_1005D2DB0 != -1)
        {
          swift_once();
        }

        v31 = &qword_1005DE0B0;
      }
    }

    else
    {
      if (qword_1005D2DA0 != -1)
      {
        swift_once();
      }

      v31 = &qword_1005DE090;
    }

    goto LABEL_40;
  }

  v20 = v3[11];
  if (v20 >> 60 != 11)
  {
    if (v20 >> 60 != 15)
    {
      v44 = v3[10];
      *(v3 + 5) = xmmword_1004DA570;
      sub_100014CEC(v44, v20);
      sub_100073A18(v44, v20);
      v45 = sub_1001CF7D0(v3[12], v3[13], v3[14], v3[15], v44, v20);
      v47 = v46;
      sub_100073A18(v44, v20);
      v48 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
      if (v48 > 2)
      {
        if ((v48 - 5) >= 2)
        {
          if (v48 == 3)
          {
            if (qword_1005D2DA8 != -1)
            {
              swift_once();
            }

            v49 = &qword_1005DE0A0;
          }

          else
          {
            if (qword_1005D2DB0 != -1)
            {
              swift_once();
            }

            v49 = &qword_1005DE0B0;
          }
        }

        else
        {
          if (qword_1005D2DA0 != -1)
          {
            swift_once();
          }

          v49 = &qword_1005DE090;
        }
      }

      else if (v48)
      {
        if (v48 == 1)
        {
          if (qword_1005D2D90 != -1)
          {
            swift_once();
          }

          v49 = &qword_1005DE070;
        }

        else
        {
          if (qword_1005D2D98 != -1)
          {
            swift_once();
          }

          v49 = &qword_1005DE080;
        }
      }

      else
      {
        v49 = AuthenticationMechanism.plain.unsafeMutableAddressor();
      }

      v51 = *v49;
      v50 = v49[1];

      v52 = sub_100190D98(v45, v47, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v53 = v55;
      v54 = v56;
      sub_100014D40(v45, v47);
      goto LABEL_41;
    }

    v21 = v17;
    v58 = v3;
    sub_100190B00(a2, v12);
    sub_100190B00(a2, v9);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v22 = sub_1004A4A54();
    v23 = sub_1004A5FF4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v60 = v57;
      *v24 = 68158210;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      v25 = v9[*(v21 + 20)];
      sub_100190CD4(v9);
      *(v24 + 10) = v25;
      *(v24 + 11) = 2082;
      v26 = *&v12[*(v21 + 20) + 4];
      sub_100190CD4(v12);
      v27 = ConnectionID.debugDescription.getter(v26);
      v29 = sub_10015BA6C(v27, v28, &v60);

      *(v24 + 13) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%.*hhx-%{public}s] Authentication implementation has no initial response", v24, 0x15u);
      sub_1000197E0(v57);
    }

    else
    {
      sub_100190CD4(v9);

      sub_100190CD4(v12);
    }

    v30 = (v58[9] >> 59) & 6 | ((v58[7] & 0x2000000000000000) != 0);
    if (v30 <= 2)
    {
      if (!v30)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    goto LABEL_27;
  }

  v32 = v17;
  sub_10018D6F4();
  swift_allocError();
  *v33 = xmmword_1004DB2C0;
  *(v33 + 16) = 1;
  swift_willThrow();
  sub_100190B00(a2, v19);
  sub_100190B00(a2, v15);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_errorRetain();
  v34 = sub_1004A4A54();
  v35 = sub_1004A6014();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v60 = v58;
    *v36 = 68158466;
    *(v36 + 4) = 2;
    *(v36 + 8) = 256;
    v38 = v15[*(v32 + 20)];
    sub_100190CD4(v15);
    *(v36 + 10) = v38;
    *(v36 + 11) = 2082;
    v39 = *&v19[*(v32 + 20) + 4];
    sub_100190CD4(v19);
    v40 = ConnectionID.debugDescription.getter(v39);
    v42 = sub_10015BA6C(v40, v41, &v60);

    *(v36 + 13) = v42;
    *(v36 + 21) = 2112;
    v43 = sub_1004A4264();
    *(v36 + 23) = v43;
    *v37 = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "[%.*hhx-%{public}s] Authentication failed: %@", v36, 0x1Fu);
    sub_100190D30(v37);

    sub_1000197E0(v58);
  }

  else
  {
    sub_100190CD4(v15);

    sub_100190CD4(v19);
  }

  swift_willThrow();
}

__n128 sub_1001909C0@<Q0>(char a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, unint64_t)@<X4>, uint64_t a4@<X8>)
{
  sub_10018FAA8(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a4 + 32) = v8[2];
    *(a4 + 48) = v7;
    *(a4 + 64) = v9;
    result = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = result;
  }

  return result;
}

__n128 sub_100190A18@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v15 = v1[2];
  v16 = v3;
  v17 = v1[4];
  v4 = v1[1];
  v14[0] = *v1;
  v14[1] = v4;
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = *(&v15 + 1) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(&v16 + 1) | 0x1000000000000000;
  v11 = v4;
  v12 = v14[0];
  sub_1001915E8(v14, v13);
  result = v12;
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 48) = v6;
  *(a1 + 56) = v9;
  *(a1 + 64) = v7;
  return result;
}

__n128 sub_100190AAC@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100190148(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_100190B00(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100190B64@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  v15 = *(v1 + 72);
  v16 = v3;
  v17 = *(v1 + 104);
  v4 = *(v1 + 56);
  v14[0] = *(v1 + 40);
  v14[1] = v4;
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = *(&v15 + 1) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(&v16 + 1) | 0x1000000000000000;
  v11 = v4;
  v12 = v14[0];
  sub_1001915E8(v14, v13);
  result = v12;
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 48) = v6;
  *(a1 + 56) = v9;
  *(a1 + 64) = v7;
  return result;
}

__n128 sub_100190C00@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10018F108(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

__n128 sub_100190C54@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10018EA84(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_100190CD4(uint64_t a1)
{
  v2 = _s6LoggerVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100190D30(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D51A0, &qword_1004D0940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100190D98(uint64_t result, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = result;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    result = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    result = BYTE6(a2);
    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    result = HIDWORD(v7) - v7;
LABEL_10:
    if (result < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_11:
    if (result)
    {
      v11 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(result, a3, a4, a5, a6);
      swift_beginAccess();
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = *(v11 + 16);
      goto LABEL_14;
    }

LABEL_13:
    v17 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
    v11 = *v17;
    v12 = *(v17 + 2);
    v13 = *(v17 + 3);
    v16 = *(v17 + 4);
    v14 = *(v17 + 10);
    v15 = *(v17 + 22);

LABEL_14:
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v21 = v16;
    v22 = v14;
    v23 = v15;
    result = sub_1001912C8(v7, a2, &v18, v13);
    if ((result & 0x100000000) != 0)
    {
      result = sub_100190F04(v7, a2, v13);
    }

    if (!__CFADD__(v20, result))
    {
      return v18;
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_100190F04(uint64_t a1, unint64_t a2, Swift::UInt32 a3)
{
  v4 = v3;
  v32 = sub_1004A4444();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8);
  if (result == &type metadata for Data)
  {
    goto LABEL_31;
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v11 != 2)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v12 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v12 = HIDWORD(a1) - a1;
  }

LABEL_12:
  v15 = a3 + v12;
  if (__CFADD__(a3, v12))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = *(v4 + 16);
    v17 = v15 >= v16;
    v18 = v15 - v16;
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v19, v20 & 1);
  }

  v30 = v8;
  sub_10019118C(v12, v4, a3);
  v21 = sub_1004A43B4();
  sub_100191590();
  result = sub_1004A6414();
  if (v34 != 1)
  {
    v23 = a3;
    v24 = a3;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (HIDWORD(v22))
      {
        goto LABEL_28;
      }

      v25 = v33;
      ByteBuffer._ensureAvailableCapacity(_:at:)(v21 + 1, v23);
      v26 = *v4;
      v27 = *(v4 + 20);
      v28 = *(v4 + 22);
      swift_beginAccess();
      *(*(v26 + 24) + (v28 | (v27 << 8)) + v24 + v21) = v25;
      result = sub_1004A6414();
      ++v21;
      if (v34 == 1)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = v21;
LABEL_25:
  (*(v30 + 8))(v31, v32);
  return v22;
}

unint64_t sub_10019118C(unint64_t result, uint64_t *a2, Swift::UInt32 at)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(result, at);
    v5 = *a2;
    v6 = *(a2 + 10);
    v7 = *(a2 + 22);
    swift_beginAccess();
    return *(v5 + 24) + (v7 | (v6 << 8)) + at;
  }

  __break(1u);
  return result;
}

uint64_t sub_10019120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1004A40D4();
  v9 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_1004A40F4();
  if (v9)
  {
    if (v12 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    v14 = v13 + v9;
    v15 = v9;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  ByteBuffer._setBytes(_:at:)(v15, v14, a5);
  return result;
}

unint64_t sub_1001912C8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v5 = a4;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 == 2)
    {
      result = sub_10019120C(*(a1 + 16), *(a1 + 24), a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
      if (v4)
      {
        return result;
      }

      LODWORD(v8) = result;
      v15 = HIDWORD(result) & 1;
    }

    else
    {
      memset(v21, 0, 14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(a3 + 4);
        v11 = v5 >= v17;
        v18 = v5 - v17;
        if (v11)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v19, v20 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(0, v5);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v21, v21, v5);
      LODWORD(v8) = 0;
      LOBYTE(v15) = 0;
    }

    goto LABEL_23;
  }

  if (!v7)
  {
    v21[0] = a1;
    LOWORD(v21[1]) = a2;
    BYTE2(v21[1]) = BYTE2(a2);
    BYTE3(v21[1]) = BYTE3(a2);
    BYTE4(v21[1]) = BYTE4(a2);
    v8 = BYTE6(a2);
    BYTE5(v21[1]) = BYTE5(a2);
    v9 = a4 + BYTE6(a2);
    if (!__CFADD__(a4, BYTE6(a2)))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(a3 + 4);
        v11 = v9 >= v10;
        v12 = v9 - v10;
        if (v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v13, v14 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(v8, v5);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v21, v21 + v8, v5);
      LOBYTE(v15) = 0;
      goto LABEL_23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (a1 >> 32 < a1)
  {
    goto LABEL_26;
  }

  result = sub_10019120C(a1, a1 >> 32, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
  if (v4)
  {
    return result;
  }

  LODWORD(v8) = result;
  v15 = HIDWORD(result) & 1;
LABEL_23:
  LOBYTE(v21[0]) = v15;
  return v8 | (v15 << 32);
}

uint64_t _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(int a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
    v11 = v10 | HIWORD(v10);
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = 0;
  }

  result = a2(v14);
  if (result)
  {
    v16 = result;
    type metadata accessor for ByteBuffer._Storage();
    result = swift_allocObject();
    *(result + 16) = v14;
    *(result + 24) = v16;
    *(result + 32) = a2;
    *(result + 40) = a3;
    *(result + 48) = a4;
    *(result + 56) = a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100191590()
{
  result = qword_1005D2F30;
  if (!qword_1005D2F30)
  {
    v3 = sub_1004A4444();
    result = swift_getWitnessTable(&protocol conformance descriptor for Data.Iterator, v3, v0, v1);
    atomic_store(result, &qword_1005D2F30);
  }

  return result;
}

uint64_t sub_100191644(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100191658(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100191658(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

double sub_100191724@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Authenticator(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UnauthenticatedState(0);
  __chkstk_darwin(v7);
  v9 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v51[-v11];
  __chkstk_darwin(v13);
  v15 = &v51[-v14];
  v17 = __chkstk_darwin(v16);
  v19 = &v51[-v18];
  sub_100191C2C(v2, &v51[-v18], v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 10)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_100191C2C(v19, v15, v21);
        v22 = *v15;
        *&v51[120] = *(v15 + 120);
        *&v51[136] = *(v15 + 136);
        *&v51[152] = *(v15 + 152);
        *&v51[168] = *(v15 + 168);
        *&v51[56] = *(v15 + 56);
        *&v51[72] = *(v15 + 72);
        *&v51[88] = *(v15 + 88);
        *&v51[104] = *(v15 + 104);
        *&v51[8] = *(v15 + 8);
        *&v51[24] = *(v15 + 24);
        *&v51[40] = *(v15 + 40);
        *v51 = v22;
        sub_100191E88(v51);
LABEL_16:
        v60 = *&v51[128];
        v61 = *&v51[144];
        v62[0] = *&v51[160];
        *(v62 + 9) = *&v51[169];
        v56 = *&v51[64];
        v57 = *&v51[80];
        v58 = *&v51[96];
        v59 = *&v51[112];
        v52 = *v51;
        v53 = *&v51[16];
        v54 = *&v51[32];
        v55 = *&v51[48];
        UInt32.init(_:)(&v52);
        v74 = v60;
        v75 = v61;
        v76[0] = v62[0];
        v36 = *(v62 + 9);
        goto LABEL_17;
      }

LABEL_19:
      sub_100191C90(&v66);
      goto LABEL_20;
    }

    sub_100191C2C(v19, v12, v21);
    v23 = *v12;
    v24 = *(v12 + 1);
    v25 = *(v12 + 2);
    v26 = v12[24];
    v27 = v26 >> 6;
    if (v26 >> 6 > 1)
    {
      if (v27 != 2)
      {
        v44 = v25 | v24;
        if (v25 | v24 | v23 || v26 != 192)
        {
          v45 = v26 == 192 && v23 == 1;
          v46 = v45 && v44 == 0;
          if (v46 || (v26 == 192 ? (v47 = v23 == 2) : (v47 = 0), v47 ? (v48 = v44 == 0) : (v48 = 0), !v48 && (v26 == 192 ? (v49 = v23 == 3) : (v49 = 0), v49 ? (v50 = v44 == 0) : (v50 = 0), v50)))
          {
            *v51 = 0;
            *&v51[8] = 0;
            v37 = 1;
            goto LABEL_14;
          }
        }

LABEL_13:
        *v51 = 0;
        *&v51[8] = 0;
        v37 = 3;
LABEL_14:
        *&v51[16] = v37;
        goto LABEL_15;
      }
    }

    else if (!v27)
    {
      *v51 = *v12;
      *&v51[8] = v24;
      *&v51[16] = v25;
LABEL_15:
      sub_100191DA0(v51);
      goto LABEL_16;
    }

    sub_100191E14(v23, v24, v25, v26);
    goto LABEL_13;
  }

  sub_100191C2C(v19, v9, v21);
  v28 = sub_100191CBC(v9, v6);
  __chkstk_darwin(v28);
  *&v51[-16] = v6;
  sub_100195F08(sub_100191D20, v29, &v66);
  v63[2] = v68;
  v64 = v69;
  v65 = v70;
  v63[0] = v66;
  v63[1] = v67;
  if ((~*(&v68 + 1) & 0x3000000000000000) != 0 || (*(&v64 + 1) & 0x1000000000000000) == 0)
  {
    sub_100191DAC(v63);
    sub_100191D40(v6, type metadata accessor for Authenticator);
    goto LABEL_19;
  }

  sub_100195004();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_100191D40(v6, type metadata accessor for Authenticator);
  *v51 = v31;
  *&v51[8] = v33;
  *&v51[16] = v35;
  sub_100191DA0(v51);
  v60 = *&v51[128];
  v61 = *&v51[144];
  v62[0] = *&v51[160];
  *(v62 + 9) = *&v51[169];
  v56 = *&v51[64];
  v57 = *&v51[80];
  v58 = *&v51[96];
  v59 = *&v51[112];
  v52 = *v51;
  v53 = *&v51[16];
  v54 = *&v51[32];
  v55 = *&v51[48];
  UInt32.init(_:)(&v52);
  v74 = v60;
  v75 = v61;
  v76[0] = v62[0];
  v36 = *(v62 + 9);
LABEL_17:
  *(v76 + 9) = v36;
  v70 = v56;
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v66 = v52;
  v67 = v53;
  v68 = v54;
  v69 = v55;
LABEL_20:
  sub_100191D40(v19, type metadata accessor for UnauthenticatedState);
  v38 = v75;
  a1[8] = v74;
  a1[9] = v38;
  a1[10] = v76[0];
  *(a1 + 169) = *(v76 + 9);
  v39 = v71;
  a1[4] = v70;
  a1[5] = v39;
  v40 = v73;
  a1[6] = v72;
  a1[7] = v40;
  v41 = v67;
  *a1 = v66;
  a1[1] = v41;
  result = *&v68;
  v43 = v69;
  a1[2] = v68;
  a1[3] = v43;
  return result;
}