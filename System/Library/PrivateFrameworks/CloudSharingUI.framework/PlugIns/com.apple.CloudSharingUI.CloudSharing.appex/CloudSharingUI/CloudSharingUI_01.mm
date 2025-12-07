void sub_10002287C()
{
  if (!qword_100116AA0)
  {
    v0 = sub_1000C6BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_100116AA0);
    }
  }
}

void sub_1000228CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100010624(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100022970(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeMailView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000229B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000229C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100116A20, &qword_1000CCB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100022A44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100022A58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 41))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 40);
  if (v3 <= 0xD)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100022AA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100022B08(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  switch(*(v1 + 40))
  {
    case 1:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v24 = swift_allocObject();
      *a1 = v24;
      v24[2] = v3;
      v24[3] = v2;
      v24[4] = v4;
      v24[5] = v5;
      v24[6] = v6;

      v25 = v4;
      result = 1;
      break;
    case 2:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v18 = swift_allocObject();
      *a1 = v18;
      v18[2] = v3;
      v18[3] = v2;
      v18[4] = v4;
      v18[5] = v5;
      v18[6] = v6;

      v19 = v4;
      result = 2;
      break;
    case 3:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v20 = swift_allocObject();
      *a1 = v20;
      v20[2] = v3;
      v20[3] = v2;
      v20[4] = v4;
      v20[5] = v5;
      v20[6] = v6;

      v21 = v4;
      result = 3;
      break;
    case 4:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v12 = swift_allocObject();
      *a1 = v12;
      v12[2] = v3;
      v12[3] = v2;
      v12[4] = v4;
      v12[5] = v5;
      v12[6] = v6;

      v13 = v4;
      result = 4;
      break;
    case 5:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v26 = swift_allocObject();
      *a1 = v26;
      v26[2] = v3;
      v26[3] = v2;
      v26[4] = v4;
      v26[5] = v5;
      v26[6] = v6;

      v27 = v4;
      result = 5;
      break;
    case 6:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v30 = swift_allocObject();
      *a1 = v30;
      v30[2] = v3;
      v30[3] = v2;
      v30[4] = v4;
      v30[5] = v5;
      v30[6] = v6;

      v31 = v4;
      result = 6;
      break;
    case 7:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v22 = swift_allocObject();
      *a1 = v22;
      v22[2] = v3;
      v22[3] = v2;
      v22[4] = v4;
      v22[5] = v5;
      v22[6] = v6;

      v23 = v4;
      result = 7;
      break;
    case 8:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v34 = swift_allocObject();
      *a1 = v34;
      v34[2] = v3;
      v34[3] = v2;
      v34[4] = v4;
      v34[5] = v5;
      v34[6] = v6;

      v35 = v4;
      result = 8;
      break;
    case 9:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v16 = swift_allocObject();
      *a1 = v16;
      v16[2] = v3;
      v16[3] = v2;
      v16[4] = v4;
      v16[5] = v5;
      v16[6] = v6;

      v17 = v4;
      result = 9;
      break;
    case 0xA:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v32 = swift_allocObject();
      *a1 = v32;
      v32[2] = v3;
      v32[3] = v2;
      v32[4] = v4;
      v32[5] = v5;
      v32[6] = v6;

      v33 = v4;
      result = 10;
      break;
    case 0xB:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1001083A8;
      v10 = swift_allocObject();
      *a1 = v10;
      v10[2] = v3;
      v10[3] = v2;
      v10[4] = v4;
      v10[5] = v5;
      v10[6] = v6;

      v11 = v4;
      result = 11;
      break;
    case 0xC:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1001083A8;
      v14 = swift_allocObject();
      *a1 = v14;
      v14[2] = v3;
      v14[3] = v2;
      v14[4] = v4;
      v14[5] = v5;
      v14[6] = v6;

      v15 = v4;
      result = 12;
      break;
    case 0xD:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1001083A8;
      v28 = swift_allocObject();
      *a1 = v28;
      v28[2] = v3;
      v28[3] = v2;
      v28[4] = v4;
      v28[5] = v5;
      v28[6] = v6;

      v29 = v4;
      result = 13;
      break;
    default:
      v37[0] = *v1;
      v37[1] = v2;
      v38 = v4;
      v39[0] = v5;
      v39[1] = v6;
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1001083A8;
      v8 = swift_allocObject();
      *a1 = v8;
      v8[2] = v3;
      v8[3] = v2;
      v8[4] = v4;
      v8[5] = v5;
      v8[6] = v6;
      sub_10002388C(v37, v36);
      sub_100017574(&v38, v36, &unk_100116B10, &unk_1000CD080);
      sub_100017574(v39, v36, &qword_100116310, &qword_1000CBBC0);
      result = 0;
      break;
  }

  return result;
}

void *sub_10002308C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1000230B4()
{
  v1 = *v0;

  return v1;
}

void sub_1000230E4(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  type metadata accessor for BRError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    type metadata accessor for CKError(0);
    v14 = v3;
    if (swift_dynamicCast())
    {
      sub_10002372C(&qword_100116450, type metadata accessor for CKError, &unk_1000CC14C);
      sub_1000C5CA4();
    }

    return;
  }

  sub_10002372C(&qword_100116418, type metadata accessor for BRError, &unk_1000CC04C);
  sub_1000C5CA4();
  if (v15 != 17)
  {

    goto LABEL_9;
  }

  v4 = v16;
  v5 = sub_1000C5CD4();

  v6 = [v5 underlyingErrors];
  v7 = sub_1000C6E94();

  v8 = 0;
  v9 = *(v7 + 16);
  while (1)
  {
    if (v9 == v8)
    {
LABEL_7:

      return;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = v8 + 1;
    swift_errorRetain();
    v11 = sub_1000C5CD4();
    sub_1000230E4(a1);
    v13 = v12;

    v8 = v10;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_10002335C(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  type metadata accessor for BRError(0);
  if (swift_dynamicCast())
  {
    sub_10002372C(&qword_100116418, type metadata accessor for BRError, &unk_1000CC04C);
    sub_1000C5CA4();
    if (v30 == 17)
    {
      v4 = v31;
      v5 = sub_1000C5CD4();

      v6 = [v5 underlyingErrors];
      v7 = sub_1000C6E94();

      v8 = 0;
      v9 = *(v7 + 16);
      while (v9 != v8)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v10 = v8 + 1;
        swift_errorRetain();
        v11 = sub_1000C5CD4();
        sub_10002335C(a1);
        v13 = v12;

        v8 = v10;
        if (v13)
        {
          break;
        }
      }

LABEL_15:

      return;
    }
  }

  type metadata accessor for CKError(0);
  v14 = v3;
  if (swift_dynamicCast())
  {
    sub_10002372C(&qword_100116450, type metadata accessor for CKError, &unk_1000CC14C);
    sub_1000C5CA4();
    if (v30 == CKErrorCodeForUnderlyingErrorCode())
    {
      v4 = v31;
      v15 = sub_1000C5CD4();

      v16 = [v15 underlyingErrors];
      v17 = sub_1000C6E94();

      v18 = 0;
      v19 = *(v17 + 16);
      while (v19 != v18)
      {
        if (v18 >= *(v17 + 16))
        {
LABEL_24:
          __break(1u);
          return;
        }

        v20 = v18 + 1;
        swift_errorRetain();
        v21 = sub_1000C5CD4();
        sub_10002335C(a1);
        v23 = v22;

        v18 = v20;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_15;
    }
  }

  v24 = [v14 domain];
  v25 = sub_1000C6D84();
  v27 = v26;

  if (v25 == sub_1000C6D84() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_1000C73A4();

    if ((v29 & 1) == 0)
    {
      return;
    }
  }

  [v14 code];
}

uint64_t sub_10002372C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100023774(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002379C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000237E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100023844()
{

  return _swift_deallocObject(v0, 56, 7);
}

Class sub_1000238FC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100010778(0, &qword_100116760, NSObject_ptr);
    v4.super.isa = sub_1000C6CD4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100023998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1000305A8(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_100117090, &qword_1000CD970);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100071DEC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100030120(&qword_100117090, &qword_1000CD970);
        v14 = v16;
      }

      result = sub_1000303E4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_100023AEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100023B60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_100023CB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100023D3C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v3;
}

uint64_t sub_100023DBC(unsigned __int8 *a1, uint64_t a2, SEL *a3, const char *a4)
{
  v7 = sub_1000C5F74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = sub_1000077D8();
    if (v12)
    {
      [v12 *a3];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1000C5F54();
    v14 = sub_1000C5F64();
    v15 = sub_1000C6FD4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, a4, v16, 2u);
    }

    return (*(v8 + 8))(v10, v7);
  }
}

void sub_100023F84(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  if (!v2)
  {

    return;
  }

  v5 = v2;
  v6 = [v5 participants];
  sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
  v7 = sub_1000C6E94();

  *(v4 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts) = sub_10003586C(v7);

  v8 = v5;
  v9 = sub_1000367BC(v7, v8);

  v31 = v8;

  if (v9[2])
  {
    sub_100071F58(0);
    if (v10)
    {
    }
  }

  v34[0] = sub_100030F28(v11);
  sub_100037F18(v34, v4);

  v12 = v34[0];
  v13 = _swiftEmptyArrayStorage;
  if (v9[2])
  {
    sub_100071F58(1);
    if (v14)
    {
    }
  }

  v34[0] = sub_100030F28(v15);
  sub_100037F18(v34, v4);

  v16 = v34[0];
  if (v34[0] < 0 || (v34[0] & 0x4000000000000000) != 0)
  {
    v17 = sub_1000C72F4();
    if (v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = *(v34[0] + 16);
    if (v17)
    {
LABEL_13:
      v34[0] = _swiftEmptyArrayStorage;
      sub_1000C72A4();
      if (v17 < 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);

        __break(1u);
        return;
      }

      v18 = objc_opt_self();
      v19 = 0;
      v20 = v12;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v21 = sub_1000C7254();
        }

        else
        {
          v21 = *(v16 + 8 * v19 + 32);
        }

        v22 = v21;
        ++v19;
        type metadata accessor for OneTimeLinkRowViewModel(0);
        v23 = swift_allocObject();
        sub_1000C5E04();
        *(v23 + 16) = v22;
        *(v23 + 32) = 0;
        *(v23 + 24) = [v18 clearColor];
        sub_1000C7284();
        sub_1000C72B4();
        sub_1000C72C4();
        sub_1000C7294();
      }

      while (v17 != v19);
      v12 = v20;

      v24 = v34[0];
      v13 = _swiftEmptyArrayStorage;
      goto LABEL_22;
    }
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_22:
  swift_getKeyPath();
  swift_getKeyPath();
  v34[0] = v24;

  sub_1000C60A4();
  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    goto LABEL_36;
  }

  for (i = *(v12 + 16); i; i = sub_1000C72F4())
  {
    v34[0] = v13;
    sub_1000C72A4();
    if (i < 0)
    {
      goto LABEL_41;
    }

    v26 = 0;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v28 = sub_1000C7254();
      }

      else
      {
        if (v26 >= *(v12 + 16))
        {
          goto LABEL_35;
        }

        v28 = *(v12 + 8 * v26 + 32);
      }

      v29 = v28;
      v32 = v28;
      sub_100024464(&v32, v31, &v33);

      v13 = v33;
      sub_1000C7284();
      sub_1000C72B4();
      sub_1000C72C4();
      sub_1000C7294();
      ++v26;
      if (v27 == i)
      {

        v30 = v34[0];
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_38:
  swift_getKeyPath();
  swift_getKeyPath();
  v34[0] = v30;
  sub_1000C60A4();
}

void sub_100024464(id *a1@<X0>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  if ([*a1 permission] >= 4)
  {
    sub_1000C72E4();
    __break(1u);
  }

  else
  {
    v7 = [v6 userIdentity];
    v8 = [v7 lookupInfo];

    v47 = a3;
    if (v8 && (v9 = [v8 emailAddress], v8, v9))
    {
      v49 = sub_1000C6D84();
      v46 = v10;
    }

    else
    {
      v49 = 0;
      v46 = 0xE000000000000000;
    }

    v11 = [v6 userIdentity];
    v12 = [v11 lookupInfo];

    if (v12 && (v13 = [v12 phoneNumber], v12, v13))
    {
      v14 = sub_1000C6D84();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v17 = [v6 userIdentity];
    v18 = [v17 userRecordID];

    if (v18)
    {
      v19 = [v18 recordName];

      v18 = sub_1000C6D84();
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_100024A04(v18, v21);

    v23 = sub_100024B78(v6, 1);
    v44 = sub_100024C5C();
    v24 = v14;
    v45 = sub_100024D0C(v6, v49, v46, v14, v16);
    v40 = v25;
    v26 = sub_100038064(v6, [v47 publicPermission], 0);
    v38 = v27;
    v39 = v26;
    v28 = sub_1000C7064();
    v36 = v29;
    v37 = v28;
    v30 = v22;
    [v6 role];
    v48 = v44;
    v31 = v23;
    v43 = sub_10003C6B8([v6 role]);
    v42 = [v6 isCurrentUser];
    v41 = [v6 isOrgAdminUser];
    type metadata accessor for PersonRowViewModel(0);
    v32 = swift_allocObject();
    v33 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel__selectedPermission;
    sub_10000FEB8(&qword_100117018, &qword_1000CD830);
    sub_1000C6054();
    *(v32 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_requesterApprovedOrDenied) = 0;
    v32[2] = v37;
    v32[3] = v36;
    v32[4] = v45;
    v32[5] = v40;
    v32[6] = v39;
    v32[7] = v38;
    v32[8] = 0;
    v32[9] = 0xE000000000000000;
    v32[10] = v30;
    v32[11] = v24;
    v32[12] = v16;
    v32[13] = v49;
    v32[14] = v46;
    swift_beginAccess();
    v34 = sub_10000FEB8(&unk_100117020, &qword_1000CD838);
    (*(*(v34 - 8) + 8))(v32 + v33, v34);
    sub_1000C6054();
    swift_endAccess();
    swift_beginAccess();
    sub_1000C6054();
    swift_endAccess();
    *(v32 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_contact) = v31;
    *(v32 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_existingContact) = v44;
    *(v32 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role) = v43;
    *(v32 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe) = v42;
    *(v32 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isOrgAdmin) = v41;
    *(v32 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isRequester) = 0;
    if ([v6 isCurrentUser])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();

      sub_1000C60A4();

      v35 = v48;
    }

    else
    {

      v35 = v30;
    }

    *a4 = v32;
  }
}

id sub_100024A04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (*(v11 + 16) && (v4 = sub_100071DEC(a1, a2), (v5 & 1) != 0))
    {
      v6 = *(*(v11 + 56) + 8 * v4);
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 participantColor];
    if (!v7)
    {
      v7 = [objc_opt_self() clearColor];
    }

    v8 = v7;

    return v8;
  }

  else
  {
    v10 = [objc_opt_self() clearColor];

    return v10;
  }
}

id sub_100024B78(id a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = sub_1000C7064();
  if (!*(v5 + 16))
  {

    goto LABEL_6;
  }

  v8 = sub_100071DEC(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_6:

LABEL_7:
    v12 = [a1 userIdentity];
    v11 = sub_100036B00(v12, a2 & 1);

    return v11;
  }

  v11 = *(*(v5 + 56) + 8 * v8);

  return v11;
}

id sub_100024C5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts);
  if (v1)
  {

    v2 = sub_1000C7064();
    if (*(v1 + 16))
    {
      v4 = sub_100071DEC(v2, v3);
      v6 = v5;

      if (v6)
      {
        v7 = *(*(v1 + 56) + 8 * v4);

        return v7;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_100024D0C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v42 = a4;
  v41 = a5;
  v43 = a2;
  v7 = sub_1000C5C54();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  v15 = [a1 userIdentity];
  v16 = [v15 nameComponents];

  if (v16)
  {
    sub_1000C5C34();

    (*(v8 + 32))(v13, v11, v7);
    v17 = sub_1000C5C24();
    v18 = v14;
    v19 = [v14 stringFromPersonNameComponents:v17];

    v20 = sub_1000C6D84();
    v22 = v21;

    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v18 = v14;
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    v24 = sub_100024B78(a1, 0);
    v25 = [objc_opt_self() stringFromContact:v24 style:0];
    if (v25)
    {
      v26 = v25;
      v20 = sub_1000C6D84();
      v22 = v27;
    }

    else
    {

      v20 = 0;
      v22 = 0xE000000000000000;
    }
  }

  v28 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v28 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    v29 = HIBYTE(a3) & 0xF;
    v30 = v43;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v29 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      goto LABEL_19;
    }

    a3 = v41;
    v30 = v42;
    v31 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v31 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
LABEL_19:

      v20 = v30;
      v22 = a3;
    }
  }

  if (![a1 isOrgAdminUser])
  {
    if ([a1 role] == 1)
    {
      v32 = [objc_opt_self() mainBundle];
      v40._countAndFlagsBits = 0x80000001000D8010;
      v33._countAndFlagsBits = 0x656E774F28204025;
      v33._object = 0xEA00000000002972;
      v34.value._countAndFlagsBits = 0;
      v34.value._object = 0;
      v35.super.isa = v32;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v37 = 0xD00000000000001BLL;
LABEL_25:
      sub_1000C5B74(v33, v34, v35, v36, v37, v40);

      sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1000CB170;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = sub_1000382F4();
      *(v38 + 32) = v20;
      *(v38 + 40) = v22;
      v20 = sub_1000C6D54();

      goto LABEL_26;
    }

    if ([a1 isCurrentUser])
    {
      v32 = [objc_opt_self() mainBundle];
      v40._countAndFlagsBits = 0x80000001000D7FF0;
      v33._countAndFlagsBits = 0x29654D28204025;
      v37 = 0xD00000000000001ELL;
      v33._object = 0xE700000000000000;
      v34.value._countAndFlagsBits = 0;
      v34.value._object = 0;
      v35.super.isa = v32;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      goto LABEL_25;
    }
  }

LABEL_26:

  return v20;
}

uint64_t sub_10002517C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v6 = a1;
    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1000C60A4();
  }

  return result;
}

void sub_10002527C(char a1, int a2, int a3, void *a4, uint64_t a5)
{
  LODWORD(v7) = a2;
  v9 = sub_1000C5F74();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v39 = v9;
    sub_1000C5F54();
    v13 = a4;
    v14 = sub_1000C5F64();
    v15 = sub_1000C6FF4();
    v38 = v13;

    v37 = v15;
    v16 = os_log_type_enabled(v14, v15);
    v41 = a4;
    v40 = a3;
    if (v16)
    {
      v17 = v7;
      v7 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = v35;
      *v7 = 136315906;
      v36 = v17;
      if (v17)
      {
        if (v17 == 1)
        {
          v18 = 0x4D63696C6275702ELL;
        }

        else
        {
          v18 = 0x657461766972702ELL;
        }

        if (v17 == 1)
        {
          v19 = 0xEB0000000065646FLL;
        }

        else
        {
          v19 = 0xEC00000065646F4DLL;
        }
      }

      else
      {
        v19 = 0xE500000000000000;
        v18 = 0x656E6F6E2ELL;
      }

      v20 = sub_100071844(v18, v19, &v42);

      *(v7 + 4) = v20;
      *(v7 + 12) = 1024;
      v21 = a1 != 2 && (a1 & 1) != 0;
      v22 = v41;
      *(v7 + 14) = v21;
      *(v7 + 18) = 2080;
      if (v22)
      {
        v23 = [v38 allowsAccessRequests];
        v24 = v23 == 0;
        if (v23)
        {
          v25 = 1702195828;
        }

        else
        {
          v25 = 0x65736C6166;
        }

        if (v24)
        {
          v26 = 0xE500000000000000;
        }

        else
        {
          v26 = 0xE400000000000000;
        }
      }

      else
      {
        v26 = 0xE700000000000000;
        v25 = 0x6E776F6E6B6E75;
      }

      v27 = sub_100071844(v25, v26, &v42);

      *(v7 + 20) = v27;
      *(v7 + 28) = 1024;
      *(v7 + 30) = v40 & 1;
      _os_log_impl(&_mh_execute_header, v14, v37, "PeopleViewModel Combine3: sharingMode: %s, currentUserCanInvite: %{BOOL}d, ckShare.allowsAccessRequests: %s, isFolderSubshare: %{BOOL}d", v7, 0x22u);
      swift_arrayDestroy();

      (*(v10 + 8))(v12, v39);
      LOBYTE(v7) = v36;
    }

    else
    {

      (*(v10 + 8))(v12, v39);
    }

    v28 = 0;
    if (a1 != 2 && v7 == 2)
    {
      v28 = a1 & (v40 ^ 1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v42) = v28 & 1;

    sub_1000C60A4();
    if (v41)
    {
      v29 = v38;
      v30 = v29;
      if (v7 == 1)
      {
        v31 = 1;
      }

      else
      {
        v32 = [v29 participants];
        sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
        v33 = sub_1000C6E94();

        if (v33 >> 62)
        {
          v34 = sub_1000C72F4();
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v31 = v34 > 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v42) = v31;
      sub_1000C60A4();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v42) = 0;
      sub_1000C60A4();
    }
  }
}

uint64_t sub_10002574C(char a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_1000257E4(void **a1, void **a2, void *a3)
{
  v3 = *a1;
  v4 = *a2;
  sub_100010778(0, &qword_100116760, NSObject_ptr);
  if (sub_1000C7184())
  {
    goto LABEL_2;
  }

  v6 = [v3 isOrgAdminUser];
  if (v6 != [v4 isOrgAdminUser])
  {
    LOBYTE(v5) = [v3 isOrgAdminUser];
    return v5 & 1;
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v48)
  {
    v7 = [v48 currentUserParticipant];
    if (v7)
    {
      v8 = v7;
      sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
      v9 = v3;
      v5 = sub_1000C7184();
    }

    else
    {

      v5 = 0;
    }
  }

  else
  {

    v5 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v48)
  {
    v10 = [v48 currentUserParticipant];
    if (v10)
    {
      v11 = v10;
      sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
      v12 = v4;
      v13 = sub_1000C7184();

      if ((v5 ^ v13))
      {
        return v5 & 1;
      }
    }

    else
    {

      if (v5)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {

    if (v5)
    {
      goto LABEL_17;
    }
  }

  v5 = [v3 role] == 1;
  if (v5 == ([v4 role] != 1))
  {
    return v5 & 1;
  }

  v5 = [v3 acceptanceStatus] != 1;
  if (v5 == ([v4 acceptanceStatus] == 1))
  {
    return v5 & 1;
  }

  v14 = [v3 userIdentity];
  v15 = [v14 lookupInfo];

  if (v15)
  {
    v16 = [v15 phoneNumber];

    if (v16)
    {

      v17 = sub_100024C5C();
      if (!v17)
      {
        v18 = 1;
        goto LABEL_27;
      }
    }

    v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_27:
  v19 = [v4 userIdentity];
  v20 = [v19 lookupInfo];

  if (v20)
  {
    v21 = [v20 phoneNumber];

    if (v21)
    {

      v22 = sub_100024C5C();
      if (v22)
      {

        goto LABEL_31;
      }

      if (v18)
      {
        goto LABEL_32;
      }

LABEL_17:
      LOBYTE(v5) = 1;
      return v5 & 1;
    }
  }

LABEL_31:
  if (v18)
  {
LABEL_2:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

LABEL_32:
  v23 = [v3 userIdentity];
  v24 = [v23 lookupInfo];

  if (v24)
  {
    v25 = [v24 emailAddress];

    if (v25)
    {
      v24 = sub_1000C6D84();
      v27 = v26;

      goto LABEL_39;
    }

    v24 = 0;
  }

  v27 = 0xE000000000000000;
LABEL_39:
  v28 = [v3 userIdentity];
  v29 = [v28 lookupInfo];

  if (!v29)
  {
LABEL_43:
    v32 = 0xE000000000000000;
    goto LABEL_44;
  }

  v30 = [v29 phoneNumber];

  if (!v30)
  {
    v29 = 0;
    goto LABEL_43;
  }

  v29 = sub_1000C6D84();
  v32 = v31;

LABEL_44:
  v47 = sub_100024D0C(v3, v24, v27, v29, v32);

  v33 = [v4 userIdentity];
  v34 = [v33 lookupInfo];

  if (v34)
  {
    v35 = [v34 emailAddress];

    if (v35)
    {
      v34 = sub_1000C6D84();
      v37 = v36;
    }

    else
    {
      v34 = 0;
      v37 = 0xE000000000000000;
    }

    v38 = &unk_100113000;
  }

  else
  {
    v37 = 0xE000000000000000;
    v38 = &unk_100113000;
  }

  v39 = [v4 userIdentity];
  v40 = [v39 lookupInfo];

  if (v40 && (v41 = [v40 v38[355]], v40, v41))
  {
    v42 = sub_1000C6D84();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xE000000000000000;
  }

  sub_100024D0C(v4, v34, v37, v42, v44);

  sub_1000383C8();
  v45 = sub_1000C71D4();

  LOBYTE(v5) = v45 == -1;
  return v5 & 1;
}

void *sub_100025EE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v14)
  {
    v3 = [v14 participants];
    sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
    v4 = sub_1000C6E94();

    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000C72F4())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = sub_1000C7254();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (sub_1000C7064() == a1 && v10 == a2)
        {

          return v8;
        }

        v11 = sub_1000C73A4();

        if (v11)
        {

          return v8;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
  }

  return 0;
}

void sub_100026100(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (!v19)
  {
    return;
  }

  v4 = [v19 requesters];
  sub_100010778(0, &unk_100118660, CKShareAccessRequester_ptr);
  v5 = sub_1000C6E94();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_23:

    return;
  }

LABEL_22:
  v6 = sub_1000C72F4();
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_4:
  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_1000C7254();
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v11 = [v8 userIdentity];
    v12 = [v11 userRecordID];

    if (!v12)
    {
      break;
    }

    v13 = [v12 recordName];

    v14 = sub_1000C6D84();
    v16 = v15;

    if (v14 == a1 && v16 == a2)
    {

      return;
    }

    v18 = sub_1000C73A4();

    if (v18)
    {

      return;
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_100026394(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_1000C6F14();
  v2[8] = sub_1000C6F04();
  v4 = sub_1000C6ED4();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_10002642C, v4, v3);
}

uint64_t sub_10002642C()
{
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v1 = v0[5];
  v0[11] = v1;
  if (v1)
  {
    v2 = *(v0[6] + 16);
    v3 = [objc_opt_self() mainBundle];
    v11._countAndFlagsBits = 0x80000001000D8050;
    v13._object = 0x80000001000D8030;
    v13._countAndFlagsBits = 0xD00000000000001BLL;
    v14.value._countAndFlagsBits = 0;
    v14.value._object = 0;
    v4.super.isa = v3;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v5 = sub_1000C5B74(v13, v14, v4, v15, 0xD000000000000023, v11);
    v7 = v6;

    v0[12] = v7;
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_100026634;

    return sub_1000267E0(v2, v1, 0, v5, v7);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100026634()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_100026778, v3, v2);
}

uint64_t sub_100026778()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000267E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 520) = v5;
  *(v6 + 504) = a4;
  *(v6 + 512) = a5;
  *(v6 + 188) = a3;
  *(v6 + 488) = a1;
  *(v6 + 496) = a2;
  v7 = sub_1000C5C54();
  *(v6 + 528) = v7;
  *(v6 + 536) = *(v7 - 8);
  *(v6 + 544) = swift_task_alloc();
  v8 = sub_1000C5D84();
  *(v6 + 552) = v8;
  *(v6 + 560) = *(v8 - 8);
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  v9 = sub_1000C5F74();
  *(v6 + 584) = v9;
  *(v6 + 592) = *(v9 - 8);
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = swift_task_alloc();
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  *(v6 + 688) = swift_task_alloc();
  *(v6 + 696) = swift_task_alloc();
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  *(v6 + 720) = swift_task_alloc();
  sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  *(v6 + 728) = swift_task_alloc();
  *(v6 + 736) = swift_task_alloc();
  v10 = type metadata accessor for AlertViewModelButton(0);
  *(v6 + 744) = v10;
  *(v6 + 752) = *(v10 - 8);
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = sub_1000C6F14();
  *(v6 + 784) = sub_1000C6F04();
  v12 = sub_1000C6ED4();
  *(v6 + 792) = v12;
  *(v6 + 800) = v11;

  return _swift_task_switch(sub_100026B5C, v12, v11);
}

uint64_t sub_100026B5C()
{
  v125 = v0;
  v1 = [*(v0 + 496) participants];
  sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
  v2 = sub_1000C6E94();

  if (v2 >> 62)
  {
    v3 = sub_1000C72F4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 188);

  if (v4 == 1)
  {
    v5 = *(v0 + 768);
    v6 = *(v0 + 760);
    v7 = *(v0 + 744);
    v114 = *(v0 + 752);
    v116 = *(v0 + 736);
    v119 = *(v0 + 728);

    sub_1000C65D4();
    v106 = sub_1000C68C4();
    v9 = v8;
    v105 = v10;
    v12 = v11;
    v13 = v7[6];
    sub_1000C61C4();
    v14 = sub_1000C61F4();
    v109 = *(*(v14 - 8) + 56);
    v109(v5 + v13, 0, 1, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    sub_1000C5DB4();
    v112 = v5;
    v16 = v5 + v7[5];
    *v16 = v106;
    *(v16 + 8) = v9;
    *(v16 + 16) = v105 & 1;
    *(v16 + 24) = v12;
    v17 = (v5 + v7[7]);
    *v17 = sub_100038EB8;
    v17[1] = v15;
    sub_1000C65D4();
    v18 = sub_1000C68C4();
    v20 = v19;
    LOBYTE(v12) = v21;
    v23 = v22;
    v24 = v7[6];
    sub_1000C61D4();
    v109(v6 + v24, 0, 1, v14);
    sub_1000C5DB4();
    v25 = v6 + v7[5];
    *v25 = v18;
    *(v25 + 8) = v20;
    *(v25 + 16) = v12 & 1;
    *(v25 + 24) = v23;
    v26 = (v6 + v7[7]);
    *v26 = 0;
    v26[1] = 0;
    v27 = sub_100029F5C();
    v107 = v28;
    v110 = v27;
    v29 = sub_10002A4F0();
    v31 = v30;
    sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
    v32 = *(v114 + 72);
    v33 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1000CC5C0;
    sub_100039C64(v112, v34 + v33, type metadata accessor for AlertViewModelButton);
    sub_100039C64(v6, v34 + v33 + v32, type metadata accessor for AlertViewModelButton);
    sub_1000C5DB4();
    v35 = type metadata accessor for AlertViewModel(0);
    v36 = (v116 + v35[5]);
    *v36 = v110;
    v36[1] = v107;
    v37 = (v116 + v35[6]);
    *v37 = v29;
    v37[1] = v31;
    *(v116 + v35[7]) = v34;
    (*(*(v35 - 1) + 56))(v116, 0, 1, v35);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100017574(v116, v119, &qword_100116C80, &unk_1000CE870);

    sub_1000C60A4();
    v38 = v112;
    sub_100010F24(v116, &qword_100116C80, &unk_1000CE870);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 187) = 1;

LABEL_5:
    sub_1000C60A4();
    sub_100039644(v6, type metadata accessor for AlertViewModelButton);
    sub_100039644(v38, type metadata accessor for AlertViewModelButton);

    v39 = *(v0 + 8);

    return v39();
  }

  if (v3 <= 2 && ([*(v0 + 496) allowsAccessRequests] & 1) == 0)
  {
    v38 = *(v0 + 768);
    v43 = *(v0 + 744);
    v122 = *(v0 + 728);
    v113 = *(v0 + 752);
    v108 = *(v0 + 760);
    v111 = *(v0 + 512);
    v117 = *(v0 + 736);
    v120 = *(v0 + 504);

    sub_1000C65D4();
    v44 = sub_1000C68C4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = v43[6];
    sub_1000C61C4();
    v52 = sub_1000C61F4();
    v104 = *(*(v52 - 8) + 56);
    v104(v38 + v51, 0, 1, v52);
    v53 = swift_allocObject();
    swift_weakInit();
    sub_1000C5DB4();
    v54 = v38 + v43[5];
    *v54 = v44;
    *(v54 + 8) = v46;
    *(v54 + 16) = v48 & 1;
    *(v54 + 24) = v50;
    v55 = (v38 + v43[7]);
    *v55 = sub_100038CB4;
    v55[1] = v53;
    sub_1000C65D4();
    LOWORD(v103._object) = 256;
    v56 = sub_1000C68C4();
    v58 = v57;
    LOBYTE(v53) = v59;
    v61 = v60;
    v62 = v43[6];
    sub_1000C61D4();
    v63 = v108 + v62;
    v6 = v108;
    v104(v63, 0, 1, v52);
    sub_1000C5DB4();
    v64 = v108 + v43[5];
    *v64 = v56;
    *(v64 + 8) = v58;
    *(v64 + 16) = v53 & 1;
    *(v64 + 24) = v61;
    v65 = (v108 + v43[7]);
    *v65 = 0;
    v65[1] = 0;
    v66 = objc_opt_self();

    v67 = [v66 mainBundle];
    v103._countAndFlagsBits = 0xED00006567617373;
    v127._countAndFlagsBits = 0xD000000000000038;
    v127._object = 0x80000001000D8080;
    v128.value._countAndFlagsBits = 0;
    v128.value._object = 0;
    v68.super.isa = v67;
    v129._countAndFlagsBits = 0;
    v129._object = 0xE000000000000000;
    v69 = sub_1000C5B74(v127, v128, v68, v129, 0x656D207472656C41, v103);
    v71 = v70;

    sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
    v72 = *(v113 + 72);
    v73 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1000CC5C0;
    v75 = v74 + v73;
    sub_100039C64(v38, v75, type metadata accessor for AlertViewModelButton);
    sub_100039C64(v108, v75 + v72, type metadata accessor for AlertViewModelButton);
    sub_1000C5DB4();
    v76 = type metadata accessor for AlertViewModel(0);
    v77 = (v117 + v76[5]);
    *v77 = v120;
    v77[1] = v111;
    v78 = (v117 + v76[6]);
    *v78 = v69;
    v78[1] = v71;
    *(v117 + v76[7]) = v74;
    (*(*(v76 - 1) + 56))(v117, 0, 1, v76);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100017574(v117, v122, &qword_100116C80, &unk_1000CE870);

    sub_1000C60A4();
    sub_100010F24(v117, &qword_100116C80, &unk_1000CE870);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 185) = 1;

    goto LABEL_5;
  }

  v41 = *(v0 + 520);
  v42 = *(v0 + 488);
  swift_beginAccess();

  sub_10005539C(v42);

  v79 = *(v0 + 720);
  v80 = *(v0 + 712);
  v81 = *(v0 + 704);
  v82 = *(v0 + 520);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 186) = 1;

  sub_1000C60A4();
  v83 = sub_1000C6F44();
  (*(*(v83 - 8) + 56))(v79, 1, 1, v83);

  v84 = sub_1000C6F04();
  v85 = swift_allocObject();
  v85[2] = v84;
  v85[3] = &protocol witness table for MainActor;
  v85[4] = v82;
  sub_1000B82F8(0, 0, v79, &unk_1000CDD68, v85);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  sub_1000C5F54();
  sub_100017574(v80, v81, &qword_100116260, &qword_1000CD940);
  v86 = sub_1000C5F64();
  v87 = sub_1000C6FF4();
  v88 = os_log_type_enabled(v86, v87);
  v89 = *(v0 + 704);
  if (v88)
  {
    v90 = *(v0 + 696);
    v123 = v41;
    v115 = *(v0 + 592);
    v118 = *(v0 + 584);
    v121 = *(v0 + 672);
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v124[0] = v92;
    *v91 = 136315138;
    sub_100017574(v89, v90, &qword_100116260, &qword_1000CD940);
    v93 = sub_1000C6D94();
    v95 = v94;
    sub_100010F24(v89, &qword_100116260, &qword_1000CD940);
    v96 = sub_100071844(v93, v95, v124);
    v41 = v123;

    *(v91 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v86, v87, "askToRemoveFromMessagesConversation: Fetching sharing URL for file URL: %s", v91, 0xCu);
    sub_100010544(v92);

    v97 = *(v115 + 8);
    v97(v121, v118);
  }

  else
  {
    v98 = *(v0 + 672);
    v99 = *(v0 + 592);
    v100 = *(v0 + 584);

    sub_100010F24(v89, &qword_100116260, &qword_1000CD940);
    v97 = *(v99 + 8);
    v97(v98, v100);
  }

  *(v0 + 808) = v97;
  *(v0 + 816) = *(v41 + 16);

  v101 = swift_task_alloc();
  *(v0 + 824) = v101;
  *v101 = v0;
  v101[1] = sub_100027CB0;
  v102 = *(v0 + 712);

  return sub_100055638(v102);
}

uint64_t sub_100027CB0()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = *(v2 + 800);
  v4 = *(v2 + 792);
  if (v0)
  {
    v5 = sub_1000291D0;
  }

  else
  {
    v5 = sub_100027E04;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100027E04()
{
  v94 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 688);

    sub_100010F24(v4, &qword_100116260, &qword_1000CD940);
    sub_1000C5F54();
    v5 = sub_1000C5F64();
    v6 = sub_1000C6FD4();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 808);
    v9 = *(v0 + 712);
    v10 = *(v0 + 624);
    v11 = *(v0 + 584);
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "askToRemoveFromMessagesConversation: model missing share url", v12, 2u);
    }

    v8(v10, v11);
LABEL_30:
    sub_100010F24(v9, &qword_100116260, &qword_1000CD940);

    v77 = *(v0 + 8);

    return v77();
  }

  v13 = *(v0 + 488);
  (*(*(v0 + 560) + 32))(*(v0 + 576), *(v0 + 688), *(v0 + 552));
  v14 = [v13 userIdentity];
  v15 = [v14 nameComponents];

  if (!v15)
  {

    sub_1000C5F54();
    v46 = sub_1000C5F64();
    v47 = sub_1000C6FD4();
    v48 = os_log_type_enabled(v46, v47);
    v90 = *(v0 + 808);
    v9 = *(v0 + 712);
    v49 = *(v0 + 632);
    v50 = *(v0 + 584);
    v51 = *(v0 + 576);
    v52 = *(v0 + 560);
    v53 = *(v0 + 552);
    if (v48)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "askToRemoveFromMessagesConversation: participant missing name components", v54, 2u);
    }

    v90(v49, v50);
    (*(v52 + 8))(v51, v53);
    goto LABEL_30;
  }

  sub_1000C5C34();

  v16 = objc_opt_self();
  v17 = sub_1000C5C24();
  v18 = [v16 localizedStringFromPersonNameComponents:v17 style:0 options:0];

  if (!v18)
  {
    sub_1000C6D84();
    v18 = sub_1000C6D44();
  }

  v19 = [*(v0 + 488) userIdentity];
  v20 = [v19 lookupInfo];
  *(v0 + 840) = v20;

  if (!v20)
  {

    sub_1000C5F54();
    v55 = sub_1000C5F64();
    v56 = sub_1000C6FD4();
    v57 = os_log_type_enabled(v55, v56);
    v9 = *(v0 + 712);
    v58 = *(v0 + 640);
    v59 = *(v0 + 584);
    v60 = *(v0 + 576);
    v61 = *(v0 + 560);
    v87 = *(v0 + 808);
    v91 = *(v0 + 552);
    v62 = *(v0 + 536);
    v81 = *(v0 + 528);
    v84 = *(v0 + 544);
    if (v57)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "askToRemoveFromMessagesConversation: user identity missing lookup info", v63, 2u);
    }

    v87(v58, v59);
    (*(v62 + 8))(v84, v81);
    (*(v61 + 8))(v60, v91);
    goto LABEL_30;
  }

  v21 = [v20 emailAddress];
  if (!v21)
  {
    v22 = [v20 phoneNumber];
    if (v22)
    {
      goto LABEL_11;
    }

LABEL_21:

    sub_1000C5F54();
    v64 = sub_1000C5F64();
    v65 = sub_1000C6FD4();
    v66 = os_log_type_enabled(v64, v65);
    v9 = *(v0 + 712);
    v67 = *(v0 + 584);
    v68 = *(v0 + 576);
    v69 = *(v0 + 560);
    v88 = *(v0 + 808);
    v92 = *(v0 + 552);
    v85 = *(v0 + 544);
    v70 = *(v0 + 536);
    v80 = *(v0 + 648);
    v82 = *(v0 + 528);
    if (v66)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "askToRemoveFromMessagesConversation: lookup info missing email and phone number", v71, 2u);
    }

    v88(v80, v67);
    (*(v70 + 8))(v85, v82);
    (*(v69 + 8))(v68, v92);
    goto LABEL_30;
  }

  v22 = [v20 emailAddress];
  if (!v22)
  {
    goto LABEL_21;
  }

LABEL_11:
  v23 = *(v0 + 576);
  v24 = *(v0 + 568);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = v22;
  sub_1000C6D84();

  v28 = objc_allocWithZone(_SWPerson);
  v29 = sub_1000C6D44();

  *(v0 + 848) = [v28 initWithHandle:v29 identity:0 displayName:v18 thumbnailImageData:0];

  sub_1000C5F54();
  (*(v25 + 16))(v24, v23, v26);
  v30 = sub_1000C5F64();
  v31 = sub_1000C6FF4();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 808);
  v34 = *(v0 + 664);
  v35 = *(v0 + 584);
  v36 = *(v0 + 568);
  v37 = *(v0 + 560);
  v38 = *(v0 + 552);
  if (v32)
  {
    v89 = *(v0 + 664);
    v39 = swift_slowAlloc();
    v86 = v35;
    v40 = swift_slowAlloc();
    v93 = v40;
    *v39 = 136315138;
    sub_100038E04();
    v83 = v33;
    v41 = sub_1000C7374();
    v43 = v42;
    v79 = v31;
    v44 = *(v37 + 8);
    v44(v36, v38);
    v45 = sub_100071844(v41, v43, &v93);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v30, v79, "askToRemoveFromMessagesConversation: Fetching highlight for %s", v39, 0xCu);
    sub_100010544(v40);

    v83(v89, v86);
  }

  else
  {

    v44 = *(v37 + 8);
    v44(v36, v38);
    v33(v34, v35);
  }

  *(v0 + 856) = v44;
  v72 = *(v0 + 520);
  v73 = *(&v72->super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_highlightCenter);
  sub_1000C5D24(v72);
  v75 = v74;
  *(v0 + 864) = v74;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 472;
  *(v0 + 24) = sub_10002895C;
  v76 = swift_continuation_init();
  *(v0 + 136) = sub_10000FEB8(&unk_1001170B8, &qword_1000CDDB8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10002AE38;
  *(v0 + 104) = &unk_100108588;
  *(v0 + 112) = v76;
  [v73 getCollaborationHighlightForURL:v75 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10002895C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 872) = v2;
  v3 = *(v1 + 800);
  v4 = *(v1 + 792);
  if (v2)
  {
    v5 = sub_1000294FC;
  }

  else
  {
    v5 = sub_100028A8C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100028A8C()
{
  v1 = v0[108];
  v2 = v0[106];
  v3 = v0[59];
  v0[110] = v3;

  sub_1000C5F54();
  v4 = v2;
  v5 = v3;
  v6 = sub_1000C5F64();
  v7 = sub_1000C6FF4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[106];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v5;
    *v10 = v8;
    v10[1] = v5;
    v11 = v8;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "askToRemoveFromMessagesConversation: Person: %@ Highlight: %@", v9, 0x16u);
    sub_10000FEB8(&qword_100117080, &unk_1000CC350);
    swift_arrayDestroy();
  }

  v13 = v0[101];
  v14 = v0[82];
  v15 = v0[73];

  v13(v14, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[111] = Strong;
  if (Strong)
  {
    v17 = swift_task_alloc();
    v0[112] = v17;
    *v17 = v0;
    v17[1] = sub_100028E74;
    v18 = v0[106];

    return sub_10000D5C4(v18, v5);
  }

  else
  {
    v20 = v0[106];
    v21 = v0[105];

    v22 = v0[107];
    v23 = v0[89];
    v24 = v0[72];
    v25 = v0[69];
    (*(v0[67] + 8))(v0[68], v0[66]);
    v22(v24, v25);
    sub_100010F24(v23, &qword_100116260, &qword_1000CD940);

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_100028E74()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 800);
  v3 = *(v1 + 792);

  return _swift_task_switch(sub_100028FB8, v3, v2);
}

uint64_t sub_100028FB8()
{
  v1 = v0[110];
  v2 = v0[106];
  v3 = v0[105];

  v4 = v0[107];
  v5 = v0[89];
  v6 = v0[72];
  v7 = v0[69];
  (*(v0[67] + 8))(v0[68], v0[66]);
  v4(v6, v7);
  sub_100010F24(v5, &qword_100116260, &qword_1000CD940);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000291D0()
{
  v19 = v0;
  v1 = v0[89];

  sub_100010F24(v1, &qword_100116260, &qword_1000CD940);
  v2 = v0[104];
  sub_1000C5F54();
  swift_errorRetain();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FD4();

  if (os_log_type_enabled(v3, v4))
  {
    v16 = v0[75];
    v17 = v0[101];
    v5 = v0[73];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[58] = v2;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v8 = sub_1000C6D94();
    v10 = sub_100071844(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "askToRemoveFromMessagesConversation: Unexpected error: %s", v6, 0xCu);
    sub_100010544(v7);

    v17(v16, v5);
  }

  else
  {
    v11 = v0[101];
    v12 = v0[75];
    v13 = v0[73];

    v11(v12, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000294FC()
{
  v28 = v0;
  v22 = v0[107];
  v1 = v0[106];
  v2 = v0[105];
  v23 = v0[89];
  v25 = v0[108];
  v3 = v0[72];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];

  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  v22(v3, v4);
  sub_100010F24(v23, &qword_100116260, &qword_1000CD940);

  v8 = v0[109];
  sub_1000C5F54();
  swift_errorRetain();
  v9 = sub_1000C5F64();
  v10 = sub_1000C6FD4();

  if (os_log_type_enabled(v9, v10))
  {
    v24 = v0[75];
    v26 = v0[101];
    v11 = v0[73];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    v0[58] = v8;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v14 = sub_1000C6D94();
    v16 = sub_100071844(v14, v15, &v27);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "askToRemoveFromMessagesConversation: Unexpected error: %s", v12, 0xCu);
    sub_100010544(v13);

    v26(v24, v11);
  }

  else
  {
    v17 = v0[101];
    v18 = v0[75];
    v19 = v0[73];

    v17(v18, v19);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1000298A4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_1000C6F14();
  v2[8] = sub_1000C6F04();
  v4 = sub_1000C6ED4();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_10002993C, v4, v3);
}

uint64_t sub_10002993C()
{
  v1 = sub_100025EE0(*(v0[6] + 16), *(v0[6] + 24));
  v0[11] = v1;
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v3 = v0[5];
    v0[12] = v3;
    if (v3)
    {
      v4 = v0[6];
      v5 = *(v4 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe);
      v6 = sub_100029CA8(v4);
      v8 = v7;
      v0[13] = v7;
      v9 = swift_task_alloc();
      v0[14] = v9;
      *v9 = v0;
      v9[1] = sub_100029AF8;

      return sub_1000267E0(v2, v3, v5, v6, v8);
    }
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100029AF8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_100029C3C, v3, v2);
}

uint64_t sub_100029C3C()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100029CA8(void *a1)
{
  v1 = sub_10002D6D8(a1);
  v3 = v2;
  v4 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0x80000001000D8050;
  v10._object = 0x80000001000D8E10;
  v10._countAndFlagsBits = 0x1000000000000010;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v5.super.isa = v4;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1000C5B74(v10, v11, v5, v12, 0xD000000000000023, v9);

  sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000CB170;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000382F4();
  *(v6 + 32) = v1;
  *(v6 + 40) = v3;
  v7 = sub_1000C6D54();

  return v7;
}

uint64_t sub_100029DDC(uint64_t a1)
{
  v1 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v1 - 8);
  v3 = &v10[-v2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 16);
    v7 = sub_1000C6F44();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_1000C6F14();
    swift_retain_n();

    v8 = sub_1000C6F04();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v6;
    v9[5] = v5;
    sub_1000B82F8(0, 0, v3, &unk_1000CDDE8, v9);
  }

  return result;
}

uint64_t sub_100029F5C()
{
  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CD0A0;
  *(inited + 32) = 7;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v55._countAndFlagsBits = 0x80000001000D8890;
  v65._countAndFlagsBits = 0xD00000000000003ELL;
  v65._object = 0x80000001000D8850;
  v75.value._countAndFlagsBits = 0;
  v75.value._object = 0;
  v3.super.isa = v2;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  v4 = sub_1000C5B74(v65, v75, v3, v85, 0xD00000000000002ELL, v55);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 8;
  v7 = [v1 mainBundle];
  v56._countAndFlagsBits = 0x80000001000D8900;
  v66._countAndFlagsBits = 0xD00000000000003ALL;
  v66._object = 0x80000001000D88C0;
  v76.value._countAndFlagsBits = 0;
  v76.value._object = 0;
  v8.super.isa = v7;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  v9 = sub_1000C5B74(v66, v76, v8, v86, 0xD000000000000030, v56);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 9;
  v12 = [v1 mainBundle];
  v57._countAndFlagsBits = 0x80000001000D8980;
  v67._countAndFlagsBits = 0xD00000000000003FLL;
  v67._object = 0x80000001000D8940;
  v77.value._countAndFlagsBits = 0;
  v77.value._object = 0;
  v13.super.isa = v12;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v14 = sub_1000C5B74(v67, v77, v13, v87, 0xD000000000000030, v57);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 10;
  v17 = [v1 mainBundle];
  v58._countAndFlagsBits = 0x80000001000D8A10;
  v68._countAndFlagsBits = 0xD000000000000044;
  v68._object = 0x80000001000D89C0;
  v78.value._countAndFlagsBits = 0;
  v78.value._object = 0;
  v18.super.isa = v17;
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  v19 = sub_1000C5B74(v68, v78, v18, v88, 0xD000000000000035, v58);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 11;
  v22 = [v1 mainBundle];
  v59._countAndFlagsBits = 0x80000001000D8AA0;
  v69._countAndFlagsBits = 0xD000000000000040;
  v69._object = 0x80000001000D8A50;
  v79.value._countAndFlagsBits = 0;
  v79.value._object = 0;
  v23.super.isa = v22;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v24 = sub_1000C5B74(v69, v79, v23, v89, 0xD00000000000003ALL, v59);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  *(inited + 152) = 0;
  v27 = [v1 mainBundle];
  v60._countAndFlagsBits = 0x80000001000D8900;
  v70._countAndFlagsBits = 0xD00000000000003ALL;
  v70._object = 0x80000001000D88C0;
  v80.value._countAndFlagsBits = 0;
  v80.value._object = 0;
  v28.super.isa = v27;
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  v29 = sub_1000C5B74(v70, v80, v28, v90, 0xD000000000000030, v60);
  v31 = v30;

  *(inited + 160) = v29;
  *(inited + 168) = v31;
  *(inited + 176) = 1;
  v32 = [v1 mainBundle];
  v61._countAndFlagsBits = 0x80000001000D8B20;
  v71._countAndFlagsBits = 0xD00000000000003CLL;
  v71._object = 0x80000001000D8AE0;
  v81.value._countAndFlagsBits = 0;
  v81.value._object = 0;
  v33.super.isa = v32;
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  v34 = sub_1000C5B74(v71, v81, v33, v91, 0xD000000000000034, v61);
  v36 = v35;

  *(inited + 184) = v34;
  *(inited + 192) = v36;
  *(inited + 200) = 2;
  v37 = [v1 mainBundle];
  v62._countAndFlagsBits = 0x80000001000D8BA0;
  v72._countAndFlagsBits = 0xD00000000000003FLL;
  v72._object = 0x80000001000D8B60;
  v82.value._countAndFlagsBits = 0;
  v82.value._object = 0;
  v38.super.isa = v37;
  v92._countAndFlagsBits = 0;
  v92._object = 0xE000000000000000;
  v39 = sub_1000C5B74(v72, v82, v38, v92, 0xD000000000000035, v62);
  v41 = v40;

  *(inited + 208) = v39;
  *(inited + 216) = v41;
  *(inited + 224) = 3;
  v42 = [v1 mainBundle];
  v63._countAndFlagsBits = 0x80000001000D8C30;
  v73._countAndFlagsBits = 0xD000000000000040;
  v73._object = 0x80000001000D8BE0;
  v83.value._countAndFlagsBits = 0;
  v83.value._object = 0;
  v43.super.isa = v42;
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  v44 = sub_1000C5B74(v73, v83, v43, v93, 0xD000000000000036, v63);
  v46 = v45;

  *(inited + 232) = v44;
  *(inited + 240) = v46;
  *(inited + 248) = 13;
  v47 = [v1 mainBundle];
  v74._countAndFlagsBits = 0xD000000000000029;
  v64._countAndFlagsBits = 0x80000001000D8CA0;
  v74._object = 0x80000001000D8C70;
  v84.value._countAndFlagsBits = 0;
  v84.value._object = 0;
  v48.super.isa = v47;
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  v49 = sub_1000C5B74(v74, v84, v48, v94, 0xD000000000000027, v64);
  v51 = v50;

  *(inited + 256) = v49;
  *(inited + 264) = v51;
  v52 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  swift_beginAccess();

  v53 = sub_10003CC40(v52);

  return v53;
}

uint64_t sub_10002A4F0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v77._countAndFlagsBits = 0xD00000000000001FLL;
  v62._countAndFlagsBits = 0x80000001000D8180;
  v77._object = 0x80000001000D8160;
  v88.value._countAndFlagsBits = 0;
  v88.value._object = 0;
  v2.super.isa = v1;
  v99._countAndFlagsBits = 0;
  v99._object = 0xE000000000000000;
  v3 = sub_1000C5B74(v77, v88, v2, v99, 0xD000000000000056, v62);
  v5 = v4;

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v75)
  {
    v6 = v75;
    sub_1000C7154();
    v7 = sub_1000C7174();

    if (v7 && (sub_10000FEB8(&unk_1001162F0, &unk_1000CBB70), (swift_dynamicCast() & 1) != 0))
    {
      v8 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x2000000000000000) == 0)
      {
        v8 = v75 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {

        v9 = [v0 mainBundle];
        v63._countAndFlagsBits = 0x80000001000D8810;
        v78._object = 0x80000001000D87E0;
        v78._countAndFlagsBits = 0x1000000000000023;
        v89.value._countAndFlagsBits = 0;
        v89.value._object = 0;
        v10.super.isa = v9;
        v100._countAndFlagsBits = 0;
        v100._object = 0xE000000000000000;
        sub_1000C5B74(v78, v89, v10, v100, 0xD000000000000036, v63);

        sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1000CB170;
        *(v11 + 56) = &type metadata for String;
        *(v11 + 64) = sub_1000382F4();
        *(v11 + 32) = v75;
        *(v11 + 40) = v76;
        v64._object = sub_1000C6D54();
        v74 = v12;
      }

      else
      {
        v64._object = v3;
        v74 = v5;
      }
    }

    else
    {
      v64._object = v3;
      v74 = v5;
    }

    sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000CD0A0;
    *(inited + 32) = 7;
    v15 = [v0 mainBundle];
    v64._countAndFlagsBits = 0x80000001000D8240;
    v79._object = 0x80000001000D81E0;
    v79._countAndFlagsBits = 0xD000000000000056;
    v90.value._countAndFlagsBits = 0;
    v90.value._object = 0;
    v16.super.isa = v15;
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    v17 = sub_1000C5B74(v79, v90, v16, v101, 0xD000000000000032, v64);
    v19 = v18;

    *(inited + 40) = v17;
    *(inited + 48) = v19;
    *(inited + 56) = 8;
    v20 = [v0 mainBundle];
    v65._countAndFlagsBits = 0x80000001000D82F0;
    v80._countAndFlagsBits = 0xD00000000000006FLL;
    v80._object = 0x80000001000D8280;
    v91.value._countAndFlagsBits = 0;
    v91.value._object = 0;
    v21.super.isa = v20;
    v102._countAndFlagsBits = 0;
    v102._object = 0xE000000000000000;
    v22 = sub_1000C5B74(v80, v91, v21, v102, 0xD00000000000003ALL, v65);
    v24 = v23;

    *(inited + 64) = v22;
    *(inited + 72) = v24;
    *(inited + 80) = 9;
    v25 = [v0 mainBundle];
    v66._countAndFlagsBits = 0x80000001000D8390;
    v81._object = 0x80000001000D8330;
    v81._countAndFlagsBits = 0xD000000000000056;
    v92.value._countAndFlagsBits = 0;
    v92.value._object = 0;
    v26.super.isa = v25;
    v103._countAndFlagsBits = 0;
    v103._object = 0xE000000000000000;
    v27 = sub_1000C5B74(v81, v92, v26, v103, 0xD000000000000032, v66);
    v29 = v28;

    *(inited + 88) = v27;
    *(inited + 96) = v29;
    *(inited + 104) = 10;
    v30 = [v0 mainBundle];
    v82._countAndFlagsBits = 0xD000000000000055;
    v67._countAndFlagsBits = 0x80000001000D8430;
    v82._object = 0x80000001000D83D0;
    v93.value._countAndFlagsBits = 0;
    v93.value._object = 0;
    v31.super.isa = v30;
    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    v32 = sub_1000C5B74(v82, v93, v31, v104, 0xD000000000000037, v67);
    v34 = v33;

    *(inited + 112) = v32;
    *(inited + 120) = v34;
    *(inited + 128) = 11;
    v35 = [v0 mainBundle];
    v68._countAndFlagsBits = 0x80000001000D84D0;
    v83._countAndFlagsBits = 0xD000000000000058;
    v83._object = 0x80000001000D8470;
    v94.value._countAndFlagsBits = 0;
    v94.value._object = 0;
    v36.super.isa = v35;
    v105._countAndFlagsBits = 0;
    v105._object = 0xE000000000000000;
    v37 = sub_1000C5B74(v83, v94, v36, v105, 0xD000000000000033, v68);
    v39 = v38;

    *(inited + 136) = v37;
    *(inited + 144) = v39;
    *(inited + 152) = 0;
    v40 = [v0 mainBundle];
    v69._countAndFlagsBits = 0x80000001000D8580;
    v84._countAndFlagsBits = 0xD00000000000006ALL;
    v84._object = 0x80000001000D8510;
    v95.value._countAndFlagsBits = 0;
    v95.value._object = 0;
    v41.super.isa = v40;
    v106._countAndFlagsBits = 0;
    v106._object = 0xE000000000000000;
    v42 = sub_1000C5B74(v84, v95, v41, v106, 0xD000000000000034, v69);
    v44 = v43;

    *(inited + 160) = v42;
    *(inited + 168) = v44;
    *(inited + 176) = 1;
    v45 = [v0 mainBundle];
    v70._countAndFlagsBits = 0x80000001000D8630;
    v85._countAndFlagsBits = 0xD00000000000006ELL;
    v85._object = 0x80000001000D85C0;
    v96.value._countAndFlagsBits = 0;
    v96.value._object = 0;
    v46.super.isa = v45;
    v107._countAndFlagsBits = 0;
    v107._object = 0xE000000000000000;
    v47 = sub_1000C5B74(v85, v96, v46, v107, 0xD000000000000029, v70);
    v49 = v48;

    *(inited + 184) = v47;
    *(inited + 192) = v49;
    *(inited + 200) = 2;
    v50 = [v0 mainBundle];
    v71._countAndFlagsBits = 0x80000001000D86E0;
    v86._countAndFlagsBits = 0xD000000000000074;
    v86._object = 0x80000001000D8660;
    v97.value._countAndFlagsBits = 0;
    v97.value._object = 0;
    v51.super.isa = v50;
    v108._countAndFlagsBits = 0;
    v108._object = 0xE000000000000000;
    v52 = sub_1000C5B74(v86, v97, v51, v108, 0xD000000000000039, v71);
    v54 = v53;

    *(inited + 208) = v52;
    *(inited + 216) = v54;
    *(inited + 224) = 3;
    v55 = [v0 mainBundle];
    v72._countAndFlagsBits = 0x80000001000D87A0;
    v87._countAndFlagsBits = 0xD000000000000076;
    v87._object = 0x80000001000D8720;
    v98.value._countAndFlagsBits = 0;
    v98.value._object = 0;
    v56.super.isa = v55;
    v109._countAndFlagsBits = 0;
    v109._object = 0xE000000000000000;
    v57 = sub_1000C5B74(v87, v98, v56, v109, 0xD00000000000003ALL, v72);
    v59 = v58;

    *(inited + 232) = v57;
    *(inited + 240) = v59;
    *(inited + 248) = 13;
    *(inited + 256) = v73;
    *(inited + 264) = v74;
    v60 = sub_100078E3C(inited);
    swift_setDeallocating();
    sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
    swift_arrayDestroy();

    v13 = sub_10003CC40(v60);
  }

  else
  {

    return 0;
  }

  return v13;
}

uint64_t sub_10002ACA0(uint64_t a1)
{
  v1 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v1 - 8);
  v3 = &v9[-v2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    v9[7] = 1;

    sub_1000C60A4();
    v6 = sub_1000C6F44();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1000C6F14();

    v7 = sub_1000C6F04();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    sub_1000B82F8(0, 0, v3, &unk_1000CDDF0, v8);
  }

  return result;
}

uint64_t sub_10002AE38(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100011818((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

void sub_10002AF10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v10 = v18;
  if (v18)
  {
    if ([v18 publicPermission] == 1)
    {
      v11 = v3;
      v12 = sub_100025EE0(a1, a2);
      if (v12)
      {
        v13 = v12;
        if ((3 - a3) == [v12 permission])
        {
          v14 = v13;
          v13 = v10;
          v10 = v14;
        }

        else
        {
          [v13 setPermission:?];
          if (a3 == 1)
          {
            [v13 setRole:3];
          }

          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v18) = 1;

          sub_1000C60A4();
          v15 = sub_1000C6F44();
          (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
          sub_1000C6F14();

          v16 = sub_1000C6F04();
          v17 = swift_allocObject();
          v17[2] = v16;
          v17[3] = &protocol witness table for MainActor;
          v17[4] = v11;
          sub_1000B82F8(0, 0, v9, &unk_1000CDE70, v17);
        }
      }
    }
  }
}

void sub_10002B19C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v10 = v19;
  if (v19)
  {
    if ([v19 publicPermission] != 1)
    {
      goto LABEL_13;
    }

    v11 = sub_100025EE0(a1, a2);
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = v11;
    if ([v11 role] == 1)
    {
      v13 = v12;
      v12 = v10;
      v10 = v13;
    }

    else if (((([v12 role] != 2) ^ a3) & 1) == 0)
    {
      if (a3)
      {
        if ([v12 permission] != 3)
        {
          goto LABEL_12;
        }

        v14 = 2;
      }

      else
      {
        v14 = 3;
      }

      [v12 setRole:v14];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v19) = 1;

      sub_1000C60A4();
      v15 = sub_1000C6F44();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
      sub_1000C6F14();

      v16 = v3;
      v17 = sub_1000C6F04();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = &protocol witness table for MainActor;
      v18[4] = v16;
      sub_1000B82F8(0, 0, v9, &unk_1000CDE68, v18);
    }

LABEL_12:

LABEL_13:
  }
}

uint64_t sub_10002B454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a5;
  v5[16] = sub_1000C6F14();
  v5[17] = sub_1000C6F04();
  v6 = swift_task_alloc();
  v5[18] = v6;
  *v6 = v5;
  v6[1] = sub_10002B504;

  return sub_100056B08();
}

uint64_t sub_10002B504()
{
  *(*v1 + 152) = v0;

  v3 = sub_1000C6ED4();
  if (v0)
  {
    v4 = sub_10002B6C4;
  }

  else
  {
    v4 = sub_10002B660;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10002B660()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002B6C4()
{
  v1 = *(v0 + 152);

  *(v0 + 112) = v1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 41) = *(v0 + 89);
    sub_100038450(v0 + 16);
    sub_100038C28(v0 + 16);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002B7C8(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v2[51] = swift_task_alloc();
  v2[52] = type metadata accessor for SPIAnalyticsEvent(0);
  v2[53] = swift_task_alloc();
  v3 = sub_1000C5F74();
  v2[54] = v3;
  v2[55] = *(v3 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = sub_1000C6F14();
  v2[63] = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  v2[64] = v5;
  v2[65] = v4;

  return _swift_task_switch(sub_10002B968, v5, v4);
}

uint64_t sub_10002B968(uint64_t a1)
{
  v48 = v1;
  sub_1000C5F54();
  v2 = sub_1000C5F64();
  v3 = sub_1000C6FB4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 488);
  v6 = *(v1 + 432);
  v7 = *(v1 + 440);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v46 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, &v46);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Start", v8, 0xCu);
    sub_100010544(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 528) = v10;
  v11 = *(v1 + 392);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  sub_100026100(v12, v13);
  *(v1 + 536) = v14;
  if (v14)
  {
    v15 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v17 = 3;
    if (*(v1 + 57) > 1u)
    {
      if (*(v1 + 57) != 2)
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    else if (*(v1 + 57))
    {
      v17 = 2;
    }

    sub_1000C5F54();
    v24 = v15;
    v25 = sub_1000C5F64();
    v26 = sub_1000C6FB4();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v1 + 480);
    v29 = *(v1 + 432);
    if (v27)
    {
      v45 = *(v1 + 480);
      v30 = swift_slowAlloc();
      v31 = v17;
      v32 = swift_slowAlloc();
      v44 = v29;
      v33 = swift_slowAlloc();
      v46 = v33;
      *v30 = 136446722;
      *(v30 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, &v46);
      *(v30 + 12) = 2112;
      *(v30 + 14) = v24;
      *v32 = v15;
      *(v30 + 22) = 2050;
      *(v30 + 24) = v31;
      v34 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s Approving requester %@ with permission: %{public}ld", v30, 0x20u);
      sub_100010F24(v32, &qword_100117080, &unk_1000CC350);

      sub_100010544(v33);

      v35 = v45;
      v36 = v44;
    }

    else
    {

      v35 = v28;
      v36 = v29;
    }

    v10(v35, v36);
    v37 = *(v1 + 400);
    swift_beginAccess();
    *(v1 + 544) = *(v37 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v38 = 3;
    if (*(v1 + 58) <= 1u)
    {
      if (*(v1 + 58))
      {
        v38 = 2;
      }

      goto LABEL_17;
    }

    if (*(v1 + 58) == 2)
    {
LABEL_17:
      v39 = swift_task_alloc();
      *(v1 + 552) = v39;
      *v39 = v1;
      v39[1] = sub_10002C078;

      return sub_1000579C0(v24, v38);
    }

LABEL_24:
    __break(1u);
    return result;
  }

  sub_1000C5F54();

  v18 = sub_1000C5F64();
  v19 = sub_1000C6FD4();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v1 + 464);
  v22 = *(v1 + 432);
  if (v20)
  {
    v23 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v23 = 136446466;
    *(v23 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, &v46);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_100071844(v12, v13, &v46);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s No CKRequester for rowViewModel.id %s, will do nothing.", v23, 0x16u);
    swift_arrayDestroy();
  }

  v10(v21, v22);
  v40 = *(v1 + 424);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1000C7244(55);
  v50._countAndFlagsBits = 0xD000000000000023;
  v50._object = 0x80000001000D8D90;
  sub_1000C6E04(v50);
  v51._countAndFlagsBits = v12;
  v51._object = v13;
  sub_1000C6E04(v51);
  v52._countAndFlagsBits = 0xD000000000000012;
  v52._object = 0x80000001000D8DC0;
  sub_1000C6E04(v52);
  v41 = v46;
  v42 = v47;
  *v40 = xmmword_1000CD0B0;
  *(v40 + 16) = 0x80000001000D8D70;
  *(v40 + 24) = 0;
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  *(v40 + 48) = 11;
  swift_storeEnumTagMultiPayload();
  sub_1000391B4(v40);
  sub_100039644(v40, type metadata accessor for SPIAnalyticsEvent);
  sub_10002CE6C();

  v43 = *(v1 + 8);

  return v43();
}

uint64_t sub_10002C078()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = *(v2 + 520);
    v4 = *(v2 + 512);
    v5 = sub_10002C5DC;
  }

  else
  {

    v3 = *(v2 + 520);
    v4 = *(v2 + 512);
    v5 = sub_10002C19C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002C19C()
{
  v25 = v0;

  sub_1000C5F54();
  v1 = sub_1000C5F64();
  v2 = sub_1000C6FB4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 528);
  v5 = *(v0 + 472);
  v6 = *(v0 + 432);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, &v24);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s Successfully approved requester.", v7, 0xCu);
    sub_100010544(v8);
  }

  v4(v5, v6);
  v9 = *(v0 + 424);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  *v9 = *(v0 + 384);
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0;
  *(v9 + 48) = -1;
  swift_storeEnumTagMultiPayload();
  sub_1000391B4(v9);
  sub_100039644(v9, type metadata accessor for SPIAnalyticsEvent);
  v10 = *(v0 + 400);
  v11 = *(v0 + 408);
  v12 = *(v0 + 392);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 1;

  sub_1000C60A4();
  v13 = sub_1000C6F44();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);

  v14 = sub_1000C6F04();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v10;
  sub_1000B82F8(0, 0, v11, &unk_1000CDE58, v15);

  swift_getKeyPath();
  swift_getKeyPath();

  v16 = sub_1000C6084();
  v18 = v17;
  v19 = sub_100039990(v17, v12);

  if (*v18 >> 62)
  {
    result = sub_1000C72F4();
    v21 = result;
    if (result >= v19)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v21 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21 < v19)
  {
    goto LABEL_9;
  }

LABEL_5:
  v22 = *(v0 + 536);
  sub_1000397A4(v19, v21);
  v16(v0 + 304, 0);

  sub_10002CE6C();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10002C5DC()
{
  v51 = v0;
  v1 = v0 + 304;
  v2 = *(v0 + 560);

  *(v0 + 360) = v2;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 128);
    v48 = *(v0 + 112);
    *(v0 + 64) = v48;
    *(v0 + 80) = v3;
    *(v0 + 89) = *(v0 + 137);
    v45 = *(v0 + 128);
    v4 = *(v0 + 144);
    v46 = *(v0 + 152);
    sub_1000C5F54();
    sub_100038E5C(v0 + 64, v0 + 160);
    v5 = sub_1000C5F64();
    v6 = sub_1000C6FD4();
    sub_100038C28(v0 + 64);
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 528);
    v9 = *(v0 + 456);
    v10 = *(v0 + 432);
    if (v7)
    {
      v44 = *(v0 + 456);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v50[0] = v13;
      *v11 = 136446466;
      *(v11 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, v50);
      *(v11 + 12) = 2112;
      sub_1000100B0();
      swift_allocError();
      v14 = *(v0 + 89);
      v15 = *(v0 + 80);
      *v16 = *(v0 + 64);
      v16[1] = v15;
      *(v16 + 25) = v14;
      sub_100038E5C(v0 + 64, v0 + 256);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v17;
      *v12 = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s SharingError occurred while approving share: %@", v11, 0x16u);
      sub_100010F24(v12, &qword_100117080, &unk_1000CC350);
      v1 = v0 + 304;

      sub_100010544(v13);

      v8(v44, v10);
    }

    else
    {

      v8(v9, v10);
    }

    v25 = *(v0 + 424);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    *v25 = *(v0 + 376);
    *(v25 + 24) = v45;
    *(v25 + 8) = v48;
    *(v25 + 40) = v4;
    *(v25 + 48) = v46;
    swift_storeEnumTagMultiPayload();
    sub_100038E5C(v0 + 64, v0 + 208);
    sub_1000391B4(v25);
    sub_100039644(v25, type metadata accessor for SPIAnalyticsEvent);
    sub_100038450(v0 + 64);
    sub_100038C28(v0 + 64);
  }

  else
  {

    sub_1000C5F54();
    swift_errorRetain();
    v18 = sub_1000C5F64();
    v19 = sub_1000C6FD4();

    if (os_log_type_enabled(v18, v19))
    {
      v49 = *(v0 + 528);
      v47 = *(v0 + 448);
      v20 = *(v0 + 432);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v50[0] = v23;
      *v21 = 136446466;
      *(v21 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, v50);
      *(v21 + 12) = 2112;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v24;
      *v22 = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Unexpected error occurred approving share: %@", v21, 0x16u);
      sub_100010F24(v22, &qword_100117080, &unk_1000CC350);

      sub_100010544(v23);

      v49(v47, v20);
    }

    else
    {
      v26 = *(v0 + 528);
      v27 = *(v0 + 448);
      v28 = *(v0 + 432);

      v26(v27, v28);
    }

    v29 = *(v0 + 424);
    *(v0 + 16) = 0xD00000000000001BLL;
    *(v0 + 24) = 0x80000001000D8D70;
    *(v0 + 32) = xmmword_1000CD090;
    *(v0 + 48) = 0x80000001000D8DE0;
    *(v0 + 56) = 11;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    *v29 = *(v0 + 368);
    *(v29 + 8) = 0xD00000000000001BLL;
    *(v29 + 16) = 0x80000001000D8D70;
    *(v29 + 24) = xmmword_1000CD090;
    *(v29 + 40) = 0x80000001000D8DE0;
    *(v29 + 48) = 11;
    swift_storeEnumTagMultiPayload();
    sub_1000391B4(v29);
    sub_100039644(v29, type metadata accessor for SPIAnalyticsEvent);
    sub_100038450(v0 + 16);

    v1 = v0 + 304;
  }

  v30 = *(v0 + 400);
  v31 = *(v0 + 408);
  v32 = *(v0 + 392);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 1;

  sub_1000C60A4();
  v33 = sub_1000C6F44();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);

  v34 = sub_1000C6F04();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = &protocol witness table for MainActor;
  v35[4] = v30;
  sub_1000B82F8(0, 0, v31, &unk_1000CDE58, v35);

  swift_getKeyPath();
  swift_getKeyPath();

  v36 = sub_1000C6084();
  v38 = v37;
  v39 = sub_100039990(v37, v32);

  if (*v38 >> 62)
  {
    result = sub_1000C72F4();
    v41 = result;
    if (result >= v39)
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v41 = *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v41 < v39)
  {
    goto LABEL_16;
  }

LABEL_12:
  v42 = *(v0 + 536);
  sub_1000397A4(v39, v41);
  v36(v1, 0);

  sub_10002CE6C();

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_10002CE6C()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5F54();
  v4 = sub_1000C5F64();
  v5 = sub_1000C6FB4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Finish", v6, 0xCu);
    sub_100010544(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10002D004(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for SPIAnalyticsEvent(0);
  __chkstk_darwin(v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100026100(*(a1 + 16), *(a1 + 24));
  if (!v10)
  {
    *v9 = xmmword_1000CD0D0;
    *(v9 + 2) = 0x80000001000D8CD0;
    *(v9 + 24) = xmmword_1000CD0C0;
    *(v9 + 5) = 0x80000001000D8CF0;
    v9[48] = 11;
    swift_storeEnumTagMultiPayload();
    sub_1000391B4(v9);
    return sub_100039644(v9, type metadata accessor for SPIAnalyticsEvent);
  }

  v11 = v10;
  swift_beginAccess();

  sub_100058580(v11);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  *v9 = v23;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 5) = 0;
  v9[48] = -1;
  swift_storeEnumTagMultiPayload();
  sub_1000391B4(v9);
  sub_100039644(v9, type metadata accessor for SPIAnalyticsEvent);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v22) = 1;

  sub_1000C60A4();
  v12 = sub_1000C6F44();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000C6F14();

  v13 = sub_1000C6F04();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v2;
  sub_1000B82F8(0, 0, v6, &unk_1000CDDF8, v14);

  swift_getKeyPath();
  swift_getKeyPath();

  v15 = sub_1000C6084();
  v17 = v16;
  v18 = sub_100039990(v16, a1);

  if (*v17 >> 62)
  {
    result = sub_1000C72F4();
    v20 = result;
    if (result >= v18)
    {
      goto LABEL_6;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v20 = *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20 < v18)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_1000397A4(v18, v20);
  v15(&v22, 0);
}

uint64_t sub_10002D6D8(void *a1)
{
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (!v15)
  {
    return 0;
  }

  v2 = sub_10003907C(a1);
  v3 = [v15 currentUserParticipant];
  if (v3)
  {
    v4 = sub_1000C7064();
    v6 = v5;

    if (v4 == a1[2] && v6 == a1[3])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = sub_1000C73A4();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v15 == 1 && (v3 & 1) == 0)
  {
    v8 = [objc_allocWithZone(CNContactFormatter) init];
    v9 = [v8 stringFromContact:*(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_contact)];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1000C6D84();
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {

        return v11;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return v2;
}

uint64_t sub_10002D928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_1000C6F14();
  v4[19] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_10002D9C0, v6, v5);
}

uint64_t sub_10002D9C0()
{
  v1 = v0[18];
  swift_beginAccess();
  v0[22] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_10002DA7C;

  return sub_100052EEC(1);
}

uint64_t sub_10002DA7C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_100039E0C;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_100039DF4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002DB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_1000C6F14();
  v4[19] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_10002DC30, v6, v5);
}

uint64_t sub_10002DC30()
{
  v1 = v0[18];
  swift_beginAccess();
  v0[22] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_10002DCE8;

  return sub_100056B08();
}

uint64_t sub_10002DCE8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_10002DEB4;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_10002DE04;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002DE04()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 58) = 0;

  sub_1000C60A4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002DEB4()
{
  v1 = *(v0 + 192);

  *(v0 + 136) = v1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 41) = *(v0 + 89);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 57) = 0;

    sub_1000C60A4();
    sub_100038450(v0 + 16);
    sub_100038C28(v0 + 16);
  }

  v3 = *(v0 + 8);

  return v3();
}

id *sub_10002E018()
{
  v0 = sub_1000C5F74();
  v44 = *(v0 - 8);
  v45 = v0;
  v1 = __chkstk_darwin(v0);
  v2 = __chkstk_darwin(v1);
  v4 = &v42 - v3;
  __chkstk_darwin(v2);
  v43 = &v42 - v5;
  v6 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_1000C5D84();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v13 = *(v10 + 32);
    v13(v12, v8, v9);
    sub_10000FEB8(&qword_100116370, &qword_1000CDD30);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000CB170;
    *(v14 + 56) = v9;
    v15 = sub_100039C00((v14 + 32));
    v13(v15, v12, v9);
    return v14;
  }

  sub_100010F24(v8, &qword_100116260, &qword_1000CD940);

  v16 = sub_10003AB60();

  v17 = [objc_allocWithZone(NSItemProvider) init];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v18 = v46[0];
  if (v46[0])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (v46[0])
    {
      v19 = v43;
      if ((v46[0] & 2) == 0)
      {
        v24 = v46[0] & 4;
        if ((v46[0] & 4) != 0)
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v20 = 1;
        if ((v46[0] & 8) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v20 = 3;
    }

    else
    {
      v19 = v43;
      if ((v46[0] & 2) != 0)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }
    }

    v24 = v46[0] & 4;
    if ((v46[0] & 4) != 0)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    if ((v46[0] & 8) == 0)
    {
LABEL_23:
      v25 = v24 >> 2;
    }

LABEL_24:
    v26 = [objc_allocWithZone(CKAllowedSharingOptions) initWithAllowedParticipantPermissionOptions:v25 allowedParticipantAccessOptions:v20];
    sub_1000C5F54();
    v27 = v26;
    v28 = sub_1000C5F64();
    v29 = sub_1000C6FF4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = v17;
      v31 = v30;
      v46[0] = swift_slowAlloc();
      *v31 = 136315394;
      v32 = sub_10008BAB0();
      v34 = sub_100071844(v32, v33, v46);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      v35 = sub_10008BBE8();
      v37 = sub_100071844(v35, v36, v46);

      *(v31 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "itemsToShareForAddPeople creating item provider options-- access: %s, permission: %s", v31, 0x16u);
      swift_arrayDestroy();

      v17 = v43;
    }

    (*(v44 + 8))(v19, v45);
    v38.super.super.isa = v18;
    v39.super.isa = v16;
    v40.super.isa = v27;
    sub_1000C7004(v38, v39, v40);
    sub_10000FEB8(&qword_100116370, &qword_1000CDD30);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000CB170;
    *(v14 + 56) = sub_100010778(0, &qword_100117098, NSItemProvider_ptr);
    *(v14 + 32) = v17;

    return v14;
  }

  sub_1000C5F54();
  v21 = sub_1000C5F64();
  v22 = sub_1000C6FD4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "itemsToShareForAddPeople: ckShare is nil for CloudKit share", v23, 2u);
  }

  (*(v44 + 8))(v4, v45);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10002E7F0()
{

  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__requesters;
  v2 = sub_10000FEB8(&qword_100116E10, &qword_1000CD1E0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__participants, v2);
  v4 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__oneTimeLinkParticipants;
  v5 = sub_10000FEB8(&qword_100116E18, &qword_1000CD1E8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__currentUser;
  v7 = sub_10000FEB8(&unk_100116E20, &unk_1000CD1F0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__highlightChanges;
  v9 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__hideAlerts, v9);
  v11 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__hideAlertsOptions;
  v12 = sub_10000FEB8(&unk_100116E30, &unk_1000CD200);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v13(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__highlightChangesOptions, v12);
  v14 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__showingAlert;
  v15 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__showingAlertBool, v9);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowLoading, v9);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowFolderShareHeader, v9);
  v16 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__sectionTitleForAuxiliaryToggles;
  v17 = sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  v18 = *(*(v17 - 8) + 8);
  v18(v0 + v16, v17);
  v18(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__primaryToggleTitle, v17);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__primaryToggleState, v9);
  v18(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__secondaryToggleTitle, v17);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__secondaryToggleState, v9);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowAddPeople, v9);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowOpenRootSharedFolder, v9);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowCopyLink, v9);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowStopSharing, v9);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowPermissionAndRemovalSectionInMenu, v9);
  v19 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__itemThumbnail;
  v20 = sub_10000FEB8(&qword_100116E48, &qword_1000CD218);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v18(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__itemTitle, v17);
  v10(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__savingInProgress, v9);

  return v0;
}

uint64_t sub_10002ECC4()
{
  sub_10002E7F0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PeopleViewModel(uint64_t a1)
{
  result = qword_100116C28;
  if (!qword_100116C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002ED70(uint64_t a1)
{
  sub_10002F0A0(319, &qword_100116C38, &qword_100116C40, &qword_1000CD170);
  if (v1 <= 0x3F)
  {
    sub_10002F0A0(319, &qword_100116C48, &qword_100116C50, &qword_1000CD178);
    if (v2 <= 0x3F)
    {
      sub_10002F0A0(319, &qword_100116C58, &unk_100116C60, &unk_1000CD180);
      if (v3 <= 0x3F)
      {
        sub_10001D1A8(319, &qword_100117460, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_10001D1A8(319, &unk_100116C70, &type metadata for PostShareBooleanOptions);
          if (v5 <= 0x3F)
          {
            sub_10002F0A0(319, &unk_100117450, &qword_100116C80, &unk_1000CE870);
            if (v6 <= 0x3F)
            {
              sub_10001D1A8(319, &qword_100116C88, &type metadata for String);
              if (v7 <= 0x3F)
              {
                sub_10002F0F4(319);
                if (v8 <= 0x3F)
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

void sub_10002F0A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100010624(a3, a4);
    v5 = sub_1000C60B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002F0F4(uint64_t a1)
{
  if (!qword_100116C90[0])
  {
    sub_100010778(255, &qword_100118020, UIImage_ptr);
    v1 = sub_1000C60B4();
    if (!v2)
    {
      atomic_store(v1, qword_100116C90);
    }
  }
}

id sub_10002F15C()
{
  result = TCPContactStore();
  qword_100120E30 = result;
  return result;
}

uint64_t sub_10002F184()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5F54();
  v4 = sub_1000C5F64();
  v5 = sub_1000C6FF4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "fetchContactsForParticipants: finished", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10002F2B8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_10002F338(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1000C60A4();
}

uint64_t sub_10002F3B0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10002F430(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10002F52C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_10002F5AC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10002F650(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

id *sub_10002F6F0(uint64_t a1, uint64_t a2)
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

  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10002F78C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000FEB8(a3, a4);
  v37 = v6;
  result = sub_1000C7314();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1000C7464();
      sub_1000C6DD4();
      result = sub_1000C7494();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_10002FA28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000FEB8(&qword_100117068, &qword_1000CD948);
  v30 = v4;
  result = sub_1000C7314();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1000C7464();
      sub_1000C7484(v20);
      result = sub_1000C7494();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10002FCB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000FEB8(&unk_1001170A0, &qword_1000CDD38);
  v34 = v4;
  v6 = sub_1000C7314();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

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
  v14 = v6 + 64;
  while (v12)
  {
    v21 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v24 = v21 | (v8 << 6);
    v25 = *(*(v5 + 48) + v24);
    v26 = (*(v5 + 56) + 16 * v24);
    v27 = v26[1];
    v35 = *v26;
    if ((v34 & 1) == 0)
    {
    }

    sub_1000C7464();
    sub_1000C6DD4();

    v15 = sub_1000C7494();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = 0;
      v29 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v29 && (v28 & 1) != 0)
        {
          goto LABEL_36;
        }

        v30 = v18 == v29;
        if (v18 == v29)
        {
          v18 = 0;
        }

        v28 |= v30;
        v31 = *(v14 + 8 * v18);
      }

      while (v31 == -1);
      v19 = __clz(__rbit64(~v31)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v25;
    v20 = (*(v7 + 56) + 16 * v19);
    *v20 = v35;
    v20[1] = v27;
    ++*(v7 + 16);
  }

  v22 = v8;
  while (1)
  {
    v8 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x1000300D4);
    }

    if (v8 >= v13)
    {
      break;
    }

    v23 = v9[v8];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v12 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  if (v34)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

id sub_100030120(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000FEB8(a1, a2);
  v4 = *v2;
  v5 = sub_1000C7304();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

void *sub_10003027C()
{
  v1 = v0;
  sub_10000FEB8(&unk_1001170A0, &qword_1000CDD38);
  v2 = *v0;
  v3 = sub_1000C7304();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

uint64_t sub_1000303E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000C7214() + 1) & ~v5;
    do
    {
      sub_1000C7464();

      sub_1000C6DD4();
      v9 = sub_1000C7494();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000305A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100071DEC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_10002F78C(v20, a4 & 1, a5, a6);
      v15 = sub_100071DEC(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1000C73D4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      sub_100030120(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

unint64_t sub_100030744(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100071E64(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10002FCB8(v16, a4 & 1);
      result = sub_100071E64(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1000C73D4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10003027C();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_1000308A4(void **__src, void **a2, void **a3, unint64_t __dst, void *a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = v16 + v29;
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *--v32;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = sub_1000257E4(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = v6 + 1;
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = sub_1000257E4(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if ((v25 & 1) == 0)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if ((v18 - v20) >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t sub_100030C64(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100030CF0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

id *sub_100030D04(id *result, int64_t a2, char a3, id *a4)
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
    sub_10000FEB8(&qword_100117048, &qword_1000CD930);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100030E08(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1000C72F4();
  }

  return sub_1000C7264();
}

unint64_t sub_100030E6C(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_1000C72F4();
    }

    result = sub_1000C7264();
    *v2 = result;
  }

  return result;
}

id *sub_100030F28(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000C72F4();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10002F6F0(v3, 0);
  sub_100030FBC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100030FBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000C72F4();
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
      result = sub_1000C72F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001E490(&unk_100117058, &qword_100117050, &qword_1000CD938, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000FEB8(&qword_100117050, &qword_1000CD938);
            v9 = sub_1000725E8(v13, i, a3);
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
        sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
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

uint64_t *sub_100031184(uint64_t a1)
{
  v2 = v1;
  v299 = a1;
  v271 = *v1;
  v259 = sub_10000FEB8(&qword_100116E50, &qword_1000CD220);
  v258 = *(v259 - 8);
  __chkstk_darwin(v259);
  v257 = v213 - v3;
  v262 = sub_10000FEB8(&qword_100116E58, &qword_1000CD228);
  v261 = *(v262 - 8);
  __chkstk_darwin(v262);
  v260 = v213 - v4;
  v246 = sub_10000FEB8(&qword_100116E60, &qword_1000CD230);
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v244 = v213 - v5;
  v253 = sub_10000FEB8(&qword_100116E68, &qword_1000CD238);
  __chkstk_darwin(v253);
  v250 = v213 - v6;
  v243 = sub_10000FEB8(&unk_100116E70, &unk_1000CD240);
  v242 = *(v243 - 8);
  __chkstk_darwin(v243);
  v241 = v213 - v7;
  v248 = sub_10000FEB8(&qword_100117780, &qword_1000CEF20);
  __chkstk_darwin(v248);
  v247 = v213 - v8;
  v252 = sub_10000FEB8(&qword_100116E80, &qword_1000CD250);
  v251 = *(v252 - 8);
  __chkstk_darwin(v252);
  v249 = v213 - v9;
  v256 = sub_10000FEB8(&qword_100116E88, &qword_1000CD258);
  v255 = *(v256 - 8);
  __chkstk_darwin(v256);
  v254 = v213 - v10;
  v239 = sub_10000FEB8(&unk_100116E90, &unk_1000CD260);
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v237 = v213 - v11;
  v12 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  __chkstk_darwin(v12 - 8);
  v283 = v213 - v13;
  v227 = sub_10000FEB8(&qword_100116EA0, &qword_1000CD270);
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v225 = v213 - v14;
  v229 = sub_10000FEB8(&qword_100116EA8, &qword_1000CD278);
  __chkstk_darwin(v229);
  v228 = v213 - v15;
  v232 = sub_10000FEB8(&qword_100116EB0, &qword_1000CD280);
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v230 = v213 - v16;
  v235 = sub_10000FEB8(&qword_100116EB8, &qword_1000CD288);
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v233 = v213 - v17;
  v270 = sub_10000FEB8(&qword_100116EC0, &unk_1000CC930);
  v224 = *(v270 - 8);
  __chkstk_darwin(v270);
  v269 = v213 - v18;
  v218 = sub_10000FEB8(&qword_100116EC8, &qword_1000D0AB0);
  v216 = *(v218 - 8);
  __chkstk_darwin(v218);
  v214 = v213 - v19;
  v220 = sub_10000FEB8(&qword_100116ED0, &qword_1000CD290);
  v217 = *(v220 - 8);
  __chkstk_darwin(v220);
  v215 = v213 - v20;
  v222 = sub_10000FEB8(&qword_100116ED8, &qword_1000CD298);
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v219 = v213 - v21;
  v298 = sub_10000FEB8(&unk_100116EE0, &unk_1000CD2A0);
  v297 = *(v298 - 8);
  v22 = __chkstk_darwin(v298);
  v236 = v213 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v292 = v213 - v25;
  __chkstk_darwin(v24);
  v290 = v213 - v26;
  v293 = sub_10000FEB8(&qword_100117760, &qword_1000CEF00);
  v288 = *(v293 - 8);
  v27 = __chkstk_darwin(v293);
  v240 = v213 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v282 = v213 - v29;
  v281 = sub_10000FEB8(&qword_100116EF0, &qword_1000CD2B0);
  v287 = *(v281 - 8);
  v30 = __chkstk_darwin(v281);
  v278 = v213 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v268 = v213 - v32;
  v280 = sub_10000FEB8(&qword_100116EF8, &qword_1000CD2B8);
  v286 = *(v280 - 1);
  __chkstk_darwin(v280);
  v279 = v213 - v33;
  v296 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  v295 = *(v296 - 8);
  __chkstk_darwin(v296);
  v294 = v213 - v34;
  v291 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v35 = __chkstk_darwin(v291);
  v284 = v213 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v277 = v213 - v37;
  v276 = sub_10000FEB8(&unk_100116E30, &unk_1000CD200);
  v275 = *(v276 - 8);
  __chkstk_darwin(v276);
  v274 = v213 - v38;
  v300 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v273 = *(v300 - 8);
  __chkstk_darwin(v300);
  v40 = v213 - v39;
  v272 = sub_10000FEB8(&unk_100116E20, &unk_1000CD1F0);
  v267 = *(v272 - 1);
  __chkstk_darwin(v272);
  v266 = v213 - v41;
  v265 = sub_10000FEB8(&qword_100116E18, &qword_1000CD1E8);
  v264 = *(v265 - 8);
  __chkstk_darwin(v265);
  v43 = v213 - v42;
  v44 = sub_10000FEB8(&qword_100116E10, &qword_1000CD1E0);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = v213 - v46;
  v1[3] = &_swiftEmptySetSingleton;
  v289 = v1 + 3;
  *(v1 + 32) = 0;
  v48 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__requesters;
  v303 = _swiftEmptyArrayStorage;
  sub_10000FEB8(&qword_100116C40, &qword_1000CD170);
  sub_1000C6054();
  v49 = *(v45 + 32);
  v49(v1 + v48, v47, v44);
  v50 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__participants;
  v303 = _swiftEmptyArrayStorage;
  sub_1000C6054();
  v49(v1 + v50, v47, v44);
  v51 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__oneTimeLinkParticipants;
  v303 = _swiftEmptyArrayStorage;
  sub_10000FEB8(&qword_100116C50, &qword_1000CD178);
  sub_1000C6054();
  v264[4](v1 + v51, v43, v265);
  v52 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__currentUser;
  v303 = 0;
  sub_10000FEB8(&unk_100116C60, &unk_1000CD180);
  v53 = v266;
  sub_1000C6054();
  (*(v267 + 32))(v2 + v52, v53, v272);
  v54 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__highlightChanges;
  LOBYTE(v303) = 0;
  sub_1000C6054();
  v55 = v273[4];
  v56 = v300;
  v55(v2 + v54, v40, v300);
  v57 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__hideAlerts;
  LOBYTE(v303) = 0;
  sub_1000C6054();
  v55(v2 + v57, v40, v56);
  v58 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__hideAlertsOptions;
  LOBYTE(v303) = 1;
  v59 = v274;
  sub_1000C6054();
  v60 = v275[4];
  v61 = v276;
  v60(v2 + v58, v59, v276);
  v62 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__highlightChangesOptions;
  LOBYTE(v303) = 1;
  sub_1000C6054();
  v60(v2 + v62, v59, v61);
  v276 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__showingAlert;
  v63 = type metadata accessor for AlertViewModel(0);
  v64 = v277;
  (*(*(v63 - 8) + 56))(v277, 1, 1, v63);
  sub_100017574(v64, v284, &qword_100116C80, &unk_1000CE870);
  v65 = v294;
  sub_1000C6054();
  sub_100010F24(v64, &qword_100116C80, &unk_1000CE870);
  (*(v295 + 32))(v2 + v276, v65, v296);
  v66 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__showingAlertBool;
  LOBYTE(v303) = 0;
  sub_1000C6054();
  v55(v2 + v66, v40, v56);
  v67 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowLoading;
  LOBYTE(v303) = 0;
  sub_1000C6054();
  v55(v2 + v67, v40, v56);
  v68 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowFolderShareHeader;
  LOBYTE(v303) = 0;
  sub_1000C6054();
  v55(v2 + v68, v40, v56);
  v69 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowOpenRootSharedFolder;
  LOBYTE(v303) = 0;
  sub_1000C6054();
  v55(v2 + v69, v40, v56);
  v70 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowCopyLink;
  LOBYTE(v303) = 0;
  sub_1000C6054();
  v55(v2 + v70, v40, v56);
  v71 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowPermissionAndRemovalSectionInMenu;
  LOBYTE(v303) = 0;
  sub_1000C6054();
  v55(v2 + v71, v40, v56);
  v72 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_highlightCenter;
  *(v2 + v72) = [objc_allocWithZone(SWHighlightCenter) init];
  *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts) = 0;
  *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContactsForUserIdentity) = 0;
  v2[2] = v299;
  v223 = v2 + 2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v73 = v303;
  swift_beginAccess();
  v301 = v73;
  sub_100010778(0, &qword_100118020, UIImage_ptr);
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v74 = v303;
  v75 = v304;
  swift_beginAccess();
  v301 = v74;
  v302 = v75;
  sub_1000C6054();
  swift_endAccess();
  sub_10000FEB8(&qword_100116F00, &qword_1000CD350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CB180;
  *(inited + 32) = 0;
  v77 = objc_opt_self();
  v78 = [v77 mainBundle];
  v210._countAndFlagsBits = 0x80000001000D7E70;
  v305._object = 0x80000001000D7E50;
  v305._countAndFlagsBits = 0xD000000000000010;
  v308.value._countAndFlagsBits = 0;
  v308.value._object = 0;
  v79.super.isa = v78;
  v311._countAndFlagsBits = 0;
  v311._object = 0xE000000000000000;
  v80 = sub_1000C5B74(v305, v308, v79, v311, 0xD00000000000001CLL, v210);
  v82 = v81;

  *(inited + 40) = v80;
  *(inited + 48) = v82;
  *(inited + 56) = 1;
  v83 = [v77 mainBundle];
  v211._countAndFlagsBits = 0x80000001000D7E90;
  v306._countAndFlagsBits = 0x6C6E6F2077656956;
  v306._object = 0xE900000000000079;
  v309.value._countAndFlagsBits = 0;
  v309.value._object = 0;
  v84.super.isa = v83;
  v312._countAndFlagsBits = 0;
  v312._object = 0xE000000000000000;
  v85 = sub_1000C5B74(v306, v309, v84, v312, 0xD00000000000001BLL, v211);
  v87 = v86;

  *(inited + 64) = v85;
  *(inited + 72) = v87;
  *(inited + 80) = 2;
  v88 = [v77 mainBundle];
  v212._countAndFlagsBits = 0x80000001000D7EB0;
  v307._countAndFlagsBits = 0x61635F646578694DLL;
  v307._object = 0xEF657469766E496ELL;
  v313._countAndFlagsBits = 0x646578694DLL;
  v310.value._countAndFlagsBits = 0;
  v310.value._object = 0;
  v89.super.isa = v88;
  v313._object = 0xE500000000000000;
  v90 = sub_1000C5B74(v307, v310, v89, v313, 0xD00000000000003DLL, v212);
  v92 = v91;

  *(inited + 88) = v90;
  *(inited + 96) = v92;
  v93 = sub_100078F34(inited);
  swift_setDeallocating();
  sub_10000FEB8(&qword_100116F08, &qword_1000CD358);
  swift_arrayDestroy();
  *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_permissionLocalizedStrings) = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v94 = v303;
  v95 = v304;
  v96 = v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__sectionTitleForAuxiliaryToggles;
  swift_beginAccess();
  v301 = v94;
  v302 = v95;
  v295 = v96;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v97 = v303;
  v98 = v304;
  v99 = v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__primaryToggleTitle;
  swift_beginAccess();
  v301 = v97;
  v302 = v98;
  v296 = v99;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LOBYTE(v97) = v303;
  v100 = v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__primaryToggleState;
  swift_beginAccess();
  LOBYTE(v301) = v97;
  v267 = v100;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v101 = v303;
  v102 = v304;
  v103 = v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__secondaryToggleTitle;
  swift_beginAccess();
  v301 = v101;
  v302 = v102;
  v213[1] = v103;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LOBYTE(v101) = v303;
  v104 = v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__secondaryToggleState;
  swift_beginAccess();
  LOBYTE(v301) = v101;
  v213[2] = v104;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v105 = v303;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  LODWORD(v90) = v303;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v106 = 0;
  if (v90 == 2)
  {
    v106 = v105 & (v303 ^ 1);
  }

  swift_beginAccess();
  LOBYTE(v301) = v106 & 1;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v107 = v303;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v108 = v107 & ~v303;
  swift_beginAccess();
  LOBYTE(v301) = v108 & 1;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v109 = v303 - 6 < 0xFFFFFFFC;
  v285 = v2;
  v213[0] = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__savingInProgress;
  swift_beginAccess();
  LOBYTE(v301) = v109;
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  v110 = sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  v111 = v268;
  v112 = v110;
  sub_1000C6064();
  swift_endAccess();
  v273 = &protocol conformance descriptor for Published<A>.Publisher;
  v275 = sub_10001E490(&qword_100116F10, &qword_100116EF0, &qword_1000CD2B0, &protocol conformance descriptor for Published<A>.Publisher);
  v113 = v279;
  v114 = v281;
  sub_1000C6114();
  v115 = v287;
  v116 = v287[1];
  v274 = (v287 + 1);
  v116(v111, v114);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v284 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v276 = sub_10001E490(&qword_100116F18, &qword_100116EF8, &qword_1000CD2B8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v117 = v280;
  sub_1000C6134();
  v118 = *(v286 + 8);
  v286 += 8;
  v264 = v118;
  (v118)(v113, v117);
  v119 = v115[2];
  v287 = v115 + 2;
  v263 = v119;
  v119(v278, v111, v114);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v116(v111, v114);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v266 = v116;
  v116(v111, v114);
  swift_beginAccess();
  v265 = v112;
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6134();
  (v264)(v113, v117);
  v263(v278, v111, v114);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v116(v111, v114);
  swift_beginAccess();
  v120 = v290;
  sub_1000C6064();
  swift_endAccess();
  v296 = sub_10001E490(&unk_100116F20, &unk_100116EE0, &unk_1000CD2A0, v273);
  v121 = v282;
  v122 = v298;
  sub_1000C6114();
  v123 = v297;
  v124 = v297 + 8;
  v125 = *(v297 + 8);
  v125(v120, v122);
  v294 = v125;
  v295 = v124;
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v277 = sub_10001E490(&qword_100117890, &qword_100117760, &qword_1000CEF00, v284);
  v126 = v293;
  sub_1000C6134();
  v272 = *(v288 + 8);
  v288 += 8;
  v272(v121, v126);
  v127 = *(v123 + 16);
  v297 = v123 + 16;
  v291 = v127;
  v128 = v298;
  v127(v292, v120, v298);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v125(v120, v128);
  swift_beginAccess();
  v129 = v111;
  sub_1000C6064();
  swift_endAccess();
  v130 = v279;
  v131 = v281;
  sub_1000C6114();
  v132 = v266;
  (v266)(v129, v131);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v133 = v280;
  sub_1000C6134();
  (v264)(v130, v133);
  v263(v278, v129, v131);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v132(v129, v131);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v134 = v282;
  v135 = v298;
  sub_1000C6114();
  v136 = v294;
  (v294)(v120, v135);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v137 = v293;
  sub_1000C6134();
  v272(v134, v137);
  v291(v292, v120, v135);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v136(v120, v135);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v136(v120, v135);

  v138 = v293;
  sub_1000C6124();

  v272(v134, v138);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v139 = v290;
  sub_1000C6064();
  swift_endAccess();
  v140 = v298;
  sub_1000C6114();
  v136(v139, v140);
  v141 = v299;

  sub_1000C6124();

  v272(v134, v138);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  sub_10000FEB8(&qword_100116F30, &qword_1000CD630);
  v142 = v214;
  sub_1000C6064();
  swift_endAccess();
  v143 = v273;
  sub_10001E490(&qword_100116F38, &qword_100116EC8, &qword_1000D0AB0, v273);
  sub_100035088();
  v144 = v215;
  v145 = v218;
  sub_1000C6114();
  (*(v216 + 8))(v142, v145);
  sub_10001E490(&qword_100116F48, &qword_100116ED0, &qword_1000CD290, v284);
  v146 = v219;
  v147 = v220;
  sub_1000C60D4();
  (*(v217 + 8))(v144, v147);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100116F50, &qword_100116ED8, &qword_1000CD298, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v148 = v222;
  sub_1000C6134();
  (*(v221 + 8))(v146, v148);
  v149 = v298;
  v291(v292, v139, v298);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (v294)(v139, v149);
  swift_beginAccess();

  v272 = sub_10000FEB8(&unk_100118450, &qword_1000CC940);
  v150 = v269;
  sub_1000C6064();
  swift_endAccess();

  v151 = swift_allocObject();
  swift_weakInit();
  v152 = swift_allocObject();
  *(v152 + 16) = v151;
  *(v152 + 24) = v141;
  v267 = sub_10001E490(&qword_100116F60, &qword_100116EC0, &unk_1000CC930, v143);

  v153 = v270;
  sub_1000C6124();

  (*(v224 + 8))(v150, v153);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  sub_10000FEB8(&qword_100116E48, &qword_1000CD218);
  v154 = v225;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100116F68, &qword_100116EA0, &qword_1000CD270, v143);
  sub_10003515C(&qword_100116F70, &qword_100118020, UIImage_ptr, &protocol conformance descriptor for NSObject);
  v155 = v227;
  sub_1000C6114();
  (*(v226 + 8))(v154, v155);
  swift_beginAccess();
  v156 = v268;
  sub_1000C6064();
  swift_endAccess();
  v157 = v281;
  sub_1000C6114();
  (v266)(v156, v157);
  sub_10001E490(&qword_100116F78, &qword_100116EA8, &qword_1000CD278, v284);
  v158 = v230;
  sub_1000C5F84();
  v287 = objc_opt_self();
  v159 = [v287 mainRunLoop];
  v303 = v159;
  v281 = sub_1000C71A4();
  v160 = *(v281 - 8);
  v280 = *(v160 + 56);
  v286 = v160 + 56;
  v161 = v283;
  (v280)(v283, 1, 1, v281);
  v278 = sub_100010778(0, &qword_100116F80, NSRunLoop_ptr);
  v275 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  sub_10001E490(&qword_100116F88, &qword_100116EB0, &qword_1000CD280, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v276 = sub_10003515C(&qword_100116F90, &qword_100116F80, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v162 = v233;
  v163 = v232;
  sub_1000C6104();
  sub_100010F24(v161, &unk_100117770, &unk_1000CEF10);

  (*(v231 + 8))(v158, v163);
  v164 = swift_allocObject();
  swift_weakInit();
  v165 = swift_allocObject();
  *(v165 + 16) = sub_1000351A0;
  *(v165 + 24) = v164;
  v279 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001E490(&qword_100116F98, &qword_100116EB8, &qword_1000CD288, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v166 = v235;
  sub_1000C6124();

  (*(v234 + 8))(v162, v166);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v167 = v290;
  sub_1000C6064();
  swift_endAccess();
  swift_beginAccess();
  v168 = v292;
  sub_1000C6064();
  swift_endAccess();
  v169 = v298;
  sub_1000C6134();
  v170 = v167;
  v171 = v294;
  (v294)(v167, v169);
  v172 = v236;
  v291(v236, v168, v169);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v171(v168, v169);
  v288 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isFolderSubshare;
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v173 = v298;
  sub_1000C6134();
  v174 = v170;
  v175 = v294;
  (v294)(v174, v173);
  v291(v172, v168, v173);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v176 = v175;
  v175(v168, v173);
  swift_beginAccess();
  v177 = v290;
  sub_1000C6064();
  swift_endAccess();
  v178 = v237;
  sub_1000C60E4();
  v176(v177, v173);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100116FA0, &unk_100116E90, &unk_1000CD260, &protocol conformance descriptor for Publishers.Map<A, B>);
  v179 = v239;
  sub_1000C6134();
  (*(v238 + 8))(v178, v179);
  v291(v292, v177, v173);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v176(v177, v173);
  swift_beginAccess();
  swift_beginAccess();

  sub_10000FEB8(&unk_100117850, &qword_1000CC8C0);
  v180 = v241;
  sub_1000C6064();
  swift_endAccess();

  v181 = v273;
  sub_10001E490(&unk_100116FB0, &unk_100116E70, &unk_1000CD240, v273);
  sub_100035214();
  v182 = v243;
  sub_1000C6114();
  (*(v242 + 8))(v180, v182);
  swift_beginAccess();

  sub_10000FEB8(&unk_1001184A0, &qword_1000CC8A0);
  v183 = v244;
  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&unk_100116FD0, &qword_100116E60, &qword_1000CD230, v181);
  sub_100035290();
  v184 = v246;
  sub_1000C6114();
  (*(v245 + 8))(v183, v184);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v185 = v298;
  sub_1000C6114();
  (v294)(v177, v185);
  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  v186 = v284;
  sub_10001E490(&unk_100116FE0, &qword_100117780, &qword_1000CEF20, v284);
  sub_10001E490(&qword_1001177F0, &qword_100116E68, &qword_1000CD238, v186);
  v187 = v249;
  sub_1000C5FC4();
  v188 = [v287 mainRunLoop];
  v301 = v188;
  v189 = v283;
  (v280)(v283, 1, 1, v281);
  sub_10001E490(&qword_100116FF0, &qword_100116E80, &qword_1000CD250, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v190 = v254;
  v191 = v252;
  sub_1000C6104();
  sub_100010F24(v189, &unk_100117770, &unk_1000CEF10);

  (*(v251 + 8))(v187, v191);
  v192 = swift_allocObject();
  swift_weakInit();
  v193 = swift_allocObject();
  v194 = v271;
  *(v193 + 16) = v192;
  *(v193 + 24) = v194;
  v195 = swift_allocObject();
  *(v195 + 16) = sub_10003531C;
  *(v195 + 24) = v193;
  sub_10001E490(&qword_100116FF8, &qword_100116E88, &qword_1000CD258, v279);
  v196 = v256;
  sub_1000C6124();

  (*(v255 + 8))(v190, v196);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  sub_1000C6114();
  v197 = v294;
  (v294)(v177, v185);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v197(v177, v185);
  v198 = v257;
  sub_1000C5F84();
  v199 = [v287 mainRunLoop];
  v301 = v199;
  v200 = v283;
  (v280)(v283, 1, 1, v281);
  sub_10001E490(&qword_100117000, &qword_100116E50, &qword_1000CD220, v275);
  v201 = v260;
  v202 = v259;
  sub_1000C6104();
  sub_100010F24(v200, &unk_100117770, &unk_1000CEF10);

  (*(v258 + 8))(v198, v202);
  v203 = swift_allocObject();
  v204 = v285;
  swift_weakInit();

  v205 = swift_allocObject();
  v206 = v271;
  *(v205 + 16) = v203;
  *(v205 + 24) = v206;
  v207 = swift_allocObject();
  *(v207 + 16) = sub_10003535C;
  *(v207 + 24) = v205;
  sub_10001E490(&qword_100117008, &qword_100116E58, &qword_1000CD228, v279);
  v208 = v262;
  sub_1000C6124();

  (*(v261 + 8))(v201, v208);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  return v204;
}

unint64_t sub_100035088()
{
  result = qword_100116F40;
  if (!qword_100116F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116F40);
  }

  return result;
}

uint64_t sub_1000350DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035114()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003515C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100010778(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000351A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100035214()
{
  result = qword_100117860;
  if (!qword_100117860)
  {
    sub_100010624(&unk_100116FC0, &unk_1000CF2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117860);
  }

  return result;
}

unint64_t sub_100035290()
{
  result = qword_1001184B0;
  if (!qword_1001184B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001184B0);
  }

  return result;
}

uint64_t sub_1000352E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035498(void *a1)
{
  v2 = sub_1000C5F74();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = [a1 lookupInfo];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [v9 emailAddress];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1000C6D84();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [v10 phoneNumber];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1000C6D84();
    v20 = v19;

    if (!v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (!v15)
    {
LABEL_7:
      if (!v20)
      {
        goto LABEL_24;
      }

LABEL_16:
      v26 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v26 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        sub_1000C5F54();

        v27 = sub_1000C5F64();
        v28 = sub_1000C6FF4();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v33 = v30;
          *v29 = 136315138;
          *(v29 + 4) = sub_100071844(v18, v20, &v33);
          _os_log_impl(&_mh_execute_header, v27, v28, "handleForUserIdentity: user phone number: %s", v29, 0xCu);
          sub_100010544(v30);
        }

        else
        {
        }

        (*(v3 + 8))(v6, v2);
        return v18;
      }

LABEL_24:

      return 0;
    }
  }

  v21 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v21 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  sub_1000C5F54();

  v22 = sub_1000C5F64();
  v23 = sub_1000C6FF4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_100071844(v13, v15, &v33);
    _os_log_impl(&_mh_execute_header, v22, v23, "handleForUserIdentity: user email: %s", v24, 0xCu);
    sub_100010544(v25);
  }

  else
  {
  }

  (*(v3 + 8))(v8, v2);
  return v13;
}

void *sub_10003586C(unint64_t a1)
{
  v129 = a1;
  v115 = sub_1000C5F74();
  v1 = *(v115 - 8);
  v2 = __chkstk_darwin(v115);
  v4 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v111 = &v108 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v108 - v8;
  __chkstk_darwin(v7);
  v11 = &v108 - v10;
  sub_1000C5F54();
  v12 = sub_1000C5F64();
  v13 = sub_1000C6FF4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "fetchContactsForParticipants: started", v14, 2u);
  }

  v15 = *(v1 + 8);
  v113 = v1 + 8;
  v112 = v15;
  v15(v11, v115);
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000CD0E0;
  v17 = [objc_allocWithZone(CNAvatarViewController) init];
  v18 = [v17 descriptorForRequiredKeys];

  *(v16 + 32) = v18;
  v134 = &_swiftEmptyDictionarySingleton;
  v19 = (v129 >> 62);
  if (v129 >> 62)
  {
LABEL_129:
    v20 = sub_1000C72F4();
  }

  else
  {
    v20 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_10000FEB8(&qword_100117070, &unk_1000CD950);
  sub_1000C6D04(v20);
  v110 = v19;
  if (v19)
  {
    v22 = v129;
    v127 = v129 & 0xFFFFFFFFFFFFFF8;
    v130 = sub_1000C72F4();
    v21 = v22;
  }

  else
  {
    v21 = v129;
    v127 = v129 & 0xFFFFFFFFFFFFFF8;
    v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = 0;
  v109 = 0;
  v128 = v21 & 0xC000000000000001;
  v116 = v21 + 32;
  v24 = _swiftEmptyArrayStorage;
  while (v130 != v23)
  {
    if (v128)
    {
      v25 = sub_1000C7254();
    }

    else
    {
      if (v23 >= *(v127 + 16))
      {
        goto LABEL_120;
      }

      v25 = *(v21 + 8 * v23 + 32);
    }

    v26 = v25;
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
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
      goto LABEL_129;
    }

    v28 = [v25 userIdentity];
    v19 = sub_100035498(v28);
    v30 = v29;

    ++v23;
    v21 = v129;
    if (v30)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1000B1AD8(0, v24[2] + 1, 1, v24);
      }

      v32 = v24[2];
      v31 = v24[3];
      v21 = v129;
      if (v32 >= v31 >> 1)
      {
        v24 = sub_1000B1AD8((v31 > 1), v32 + 1, 1, v24);
        v21 = v129;
      }

      v24[2] = (v32 + 1);
      v33 = &v24[2 * v32];
      v33[4] = v19;
      v33[5] = v30;
      v23 = v27;
    }
  }

  v34 = objc_opt_self();
  isa = sub_1000C6E84().super.isa;

  v114 = [v34 predicateForContactsMatchingHandleStrings:isa];

  Current = CFAbsoluteTimeGetCurrent();
  if (qword_100115F78 != -1)
  {
    swift_once();
  }

  v37 = qword_100120E30;
  if (!qword_100120E30)
  {
    __break(1u);
  }

  sub_10000FEB8(&qword_100117078, &unk_1000CD960);
  v38 = sub_1000C6E84().super.isa;

  v133 = 0;
  v39 = [v37 unifiedContactsMatchingPredicate:v114 keysToFetch:v38 error:&v133];

  v40 = v133;
  if (v39)
  {
    sub_100010778(0, &qword_100117088, CNContact_ptr);
    v4 = sub_1000C6E94();
    v41 = v40;

    v42 = CFAbsoluteTimeGetCurrent();
    sub_1000C5F54();

    v43 = sub_1000C5F64();
    v44 = sub_1000C6FF4();
    v45 = os_log_type_enabled(v43, v44);
    v19 = (v4 >> 62);
    v117 = v4 >> 62;
    if (v45)
    {
      v46 = swift_slowAlloc();
      *v46 = 134218240;
      *(v46 + 4) = v42 - Current;
      *(v46 + 12) = 2048;
      if (v19)
      {
        v107 = v46;
        v47 = sub_1000C72F4();
        v46 = v107;
      }

      else
      {
        v47 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v46 + 14) = v47;
      v19 = v46;

      _os_log_impl(&_mh_execute_header, v43, v44, "fetchContactsForParticipants: unifiedContacts(matching:...) took: %f, total contacts found: %ld", v19, 0x16u);
    }

    else
    {
    }

    v112(v9, v115);
    if (v130)
    {
      v54 = 0;
      v55 = v4 & 0xFFFFFFFFFFFFFF8;
      v125 = v4 & 0xFFFFFFFFFFFFFF8;
      if ((v4 & 0x8000000000000000) != 0)
      {
        v55 = v4;
      }

      v108 = v55;
      v119 = v4 + 32;
      v120 = v4 & 0xC000000000000001;
      v118 = v4;
      do
      {
        if (v128)
        {
          v59 = sub_1000C7254();
          v60 = __OFADD__(v54, 1);
          v61 = v54 + 1;
          if (v60)
          {
            goto LABEL_123;
          }
        }

        else
        {
          if (v54 >= *(v127 + 16))
          {
            goto LABEL_126;
          }

          v59 = *(v116 + 8 * v54);
          v60 = __OFADD__(v54, 1);
          v61 = v54 + 1;
          if (v60)
          {
            goto LABEL_123;
          }
        }

        v126 = v61;
        v56 = v59;
        v62 = [(uint8_t *)v59 userIdentity:v108];
        v132 = sub_100035498(v62);
        v9 = v63;

        if (v9)
        {
          v131 = v9;
          v121 = v56;
          if (v117)
          {
            v19 = sub_1000C72F4();
            v122 = v19;
            if (v19)
            {
LABEL_49:
              v9 = 0;
              do
              {
                if (v120)
                {
                  v64 = sub_1000C7254();
                }

                else
                {
                  if (v9 >= *(v125 + 16))
                  {
                    goto LABEL_125;
                  }

                  v64 = *(v119 + 8 * v9);
                }

                v65 = v64;
                v60 = __OFADD__(v9++, 1);
                if (v60)
                {
                  goto LABEL_124;
                }

                v66 = [v64 emailAddresses];
                sub_10000FEB8(&qword_100117038, &unk_1000CD890);
                v4 = sub_1000C6E94();

                if (v4 >> 62)
                {
                  v19 = sub_1000C72F4();
                  v123 = v9;
                  v124 = v65;
                  if (v19)
                  {
LABEL_57:
                    v67 = 0;
                    while (1)
                    {
                      if ((v4 & 0xC000000000000001) != 0)
                      {
                        v68 = sub_1000C7254();
                      }

                      else
                      {
                        if (v67 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_118;
                        }

                        v68 = *(v4 + 8 * v67 + 32);
                      }

                      v69 = v68;
                      v9 = v67 + 1;
                      if (__OFADD__(v67, 1))
                      {
                        break;
                      }

                      v70 = [v68 value];
                      v71 = sub_1000C6D84();
                      v73 = v72;

                      if (v71 == v132 && v131 == v73)
                      {

LABEL_74:

                        v19 = v121;
                        v76 = sub_1000C7064();
                        v9 = v77;
                        v78 = v134;
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v133 = v78;
                        sub_1000305A8(v124, v76, v9, isUniquelyReferenced_nonNull_native, &qword_100117090, &qword_1000CD970);

                        v134 = v133;
                        v4 = v118;
                        goto LABEL_39;
                      }

                      v75 = sub_1000C73A4();

                      if (v75)
                      {
                        goto LABEL_74;
                      }

                      ++v67;
                      if (v9 == v19)
                      {
                        goto LABEL_50;
                      }
                    }

                    __break(1u);
LABEL_118:
                    __break(1u);
                    goto LABEL_119;
                  }
                }

                else
                {
                  v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v123 = v9;
                  v124 = v65;
                  if (v19)
                  {
                    goto LABEL_57;
                  }
                }

LABEL_50:

                v19 = v122;
                v9 = v123;
                v4 = v118;
              }

              while (v123 != v122);
            }
          }

          else
          {
            v19 = *(v125 + 16);
            v122 = v19;
            if (v19)
            {
              goto LABEL_49;
            }
          }

          v80 = objc_allocWithZone(CNPhoneNumber);
          v81 = sub_1000C6D44();

          v9 = [v80 initWithStringValue:v81];

          v82 = [v9 formattedInternationalStringValue];
          if (!v82)
          {

            goto LABEL_39;
          }

          v9 = sub_1000C6D84();
          v84 = v83;

          if (v19)
          {
            v85 = 0;
            do
            {
              if (v120)
              {
                v86 = sub_1000C7254();
                v60 = __OFADD__(v85, 1);
                v87 = v85 + 1;
                if (v60)
                {
                  goto LABEL_127;
                }
              }

              else
              {
                if (v85 >= *(v125 + 16))
                {
                  goto LABEL_128;
                }

                v86 = *(v119 + 8 * v85);
                v60 = __OFADD__(v85, 1);
                v87 = v85 + 1;
                if (v60)
                {
                  goto LABEL_127;
                }
              }

              v123 = v87;
              v124 = v86;
              v88 = [v86 phoneNumbers];
              sub_10000FEB8(&qword_100117038, &unk_1000CD890);
              v89 = sub_1000C6E94();

              if (v89 >> 62)
              {
                v19 = sub_1000C72F4();
                if (v19)
                {
LABEL_85:
                  v90 = 0;
                  v131 = v89 & 0xFFFFFFFFFFFFFF8;
                  v132 = v89 & 0xC000000000000001;
                  do
                  {
                    if (v132)
                    {
                      v91 = sub_1000C7254();
                    }

                    else
                    {
                      if (v90 >= *(v131 + 16))
                      {
                        goto LABEL_122;
                      }

                      v91 = *(v89 + 8 * v90 + 32);
                    }

                    v92 = v91;
                    v93 = (v90 + 1);
                    if (__OFADD__(v90, 1))
                    {
                      goto LABEL_121;
                    }

                    v94 = [v91 value];
                    v4 = [v94 formattedInternationalStringValue];

                    if (v4)
                    {
                      v95 = v84;
                      v96 = sub_1000C6D84();
                      v98 = v97;

                      v99 = v96;
                      v84 = v95;
                      if (v99 == v9 && v98 == v95)
                      {

                        goto LABEL_106;
                      }

                      v4 = sub_1000C73A4();

                      if (v4)
                      {

LABEL_106:

                        v4 = v118;
                        v9 = v124;
                        goto LABEL_37;
                      }
                    }

                    ++v90;
                  }

                  while (v93 != v19);
                }
              }

              else
              {
                v19 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v19)
                {
                  goto LABEL_85;
                }
              }

              v85 = v123;
              v4 = v118;
            }

            while (v123 != v122);
          }

          v9 = 0;
LABEL_37:
          v56 = v121;
          v57 = sub_1000C7064();
          sub_100023998(v9, v57, v58);
        }

LABEL_39:
        v54 = v126;
      }

      while (v126 != v130);
    }

    sub_1000C5F54();
    v101 = v134;

    v102 = sub_1000C5F64();
    v103 = sub_1000C6FF4();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 134218240;
      *(v104 + 4) = v101[2];

      *(v104 + 12) = 2048;
      if (v110)
      {
        v105 = sub_1000C72F4();
      }

      else
      {
        v105 = *(v127 + 16);
      }

      *(v104 + 14) = v105;

      _os_log_impl(&_mh_execute_header, v102, v103, "fetchContactsForParticipants: new contacts fetched: %ld for %ld participants", v104, 0x16u);
    }

    else
    {
    }

    v112(v111, v115);
  }

  else
  {
    v48 = v133;
    sub_1000C5CE4();

    swift_willThrow();
    sub_1000C5F54();
    swift_errorRetain();
    v49 = sub_1000C5F64();
    v50 = sub_1000C6FD4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      swift_errorRetain();
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v53;
      *v52 = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "fetchContactsForParticipants: Unexpected error: %@", v51, 0xCu);
      sub_100010F24(v52, &qword_100117080, &unk_1000CC350);
    }

    else
    {
    }

    v112(v4, v115);
    v101 = v134;
  }

  sub_10002F184();
  return v101;
}

void *sub_1000367BC(unint64_t a1, void *a2)
{
  v29 = a2;
  v3 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v33 = &_swiftEmptyDictionarySingleton;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyDictionarySingleton;
  }

LABEL_26:
  v6 = sub_1000C72F4();
  if (!v6)
  {
    return &_swiftEmptyDictionarySingleton;
  }

LABEL_3:
  v7 = 0;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = a1 & 0xC000000000000001;
  v8 = &_swiftEmptyDictionarySingleton;
  v28 = xmmword_1000CD0E0;
  v30 = a1;
  while (1)
  {
    if (v32)
    {
      v10 = sub_1000C7254();
    }

    else
    {
      if (v7 >= *(v31 + 16))
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
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

    if ([v10 acceptanceStatus] == 1)
    {
      sub_1000C7064();
      sub_1000C7134();

      v13 = sub_1000C5D84();
      a1 = (*(*(v13 - 8) + 48))(v5, 1, v13) != 1;
      sub_100010F24(v5, &qword_100116260, &qword_1000CD940);
    }

    else
    {
      a1 = 0;
    }

    v14 = sub_100071F58(a1);
    v16 = v8[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_24;
    }

    v20 = v15;
    if (v8[3] < v19)
    {
      sub_10002FA28(v19, 1);
      v8 = v33;
      v14 = sub_100071F58(a1);
      if ((v20 & 1) != (v21 & 1))
      {
        break;
      }
    }

    if (v20)
    {
      v9 = (v8[7] + 8 * v14);
      sub_1000C6E74();
      if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000C6EA4();
      }

      sub_1000C6EC4();
    }

    else
    {
      v22 = v14;
      sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
      v23 = swift_allocObject();
      *(v23 + 16) = v28;
      *(v23 + 32) = v11;
      v8[(v22 >> 6) + 8] |= 1 << v22;
      *(v8[6] + v22) = a1;
      *(v8[7] + 8 * v22) = v23;
      v24 = v8[2];
      v18 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

      v8[2] = v25;
    }

    a1 = v30;
    ++v7;
    if (v12 == v6)
    {
      return v8;
    }
  }

  result = sub_1000C73D4();
  __break(1u);
  return result;
}

id sub_100036B00(void *a1, int a2)
{
  v99 = a2;
  v98 = sub_1000C5C54();
  v3 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000FEB8(&qword_1001167C8, &qword_1000CC560);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v94 = &v89 - v10;
  __chkstk_darwin(v9);
  v12 = &v89 - v11;
  v13 = sub_1000C5F74();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a1;
  v17 = [a1 lookupInfo];
  v18 = v17;
  v96 = v8;
  v97 = v3;
  if (v17)
  {
    v19 = [v17 emailAddress];
    if (v19)
    {
      v20 = v19;
      v100 = sub_1000C6D84();
      v22 = v21;
    }

    else
    {
      v100 = 0;
      v22 = 0;
    }

    v24 = [v18 phoneNumber];
    if (v24)
    {
      v25 = v24;
      v93 = sub_1000C6D84();
      v23 = v26;
    }

    else
    {
      v93 = 0;
      v23 = 0;
    }
  }

  else
  {
    v93 = 0;
    v23 = 0;
    v100 = 0;
    v22 = 0;
  }

  sub_1000C5F54();

  v27 = sub_1000C5F64();
  v28 = sub_1000C6FF4();

  v29 = os_log_type_enabled(v27, v28);
  v101 = v22;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v90 = v13;
    v31 = v30;
    v32 = swift_slowAlloc();
    v91 = v23;
    v33 = v12;
    v34 = v32;
    v103 = v22;
    v104 = v32;
    *v31 = 136315138;
    v102 = v100;

    sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
    v35 = sub_1000C6D94();
    v37 = v18;
    v38 = sub_100071844(v35, v36, &v104);
    v22 = v101;

    *(v31 + 4) = v38;
    v18 = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "createContactFromParticipant: Creating contact for participant email: %s", v31, 0xCu);
    sub_100010544(v34);
    v12 = v33;
    v23 = v91;

    (*(v14 + 8))(v16, v90);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v39 = [objc_allocWithZone(CNMutableContact) init];
  if (v22)
  {

    v40 = CNLabelOther;
    v41 = sub_1000C6D44();

    v42 = [objc_allocWithZone(CNLabeledValue) initWithLabel:v40 value:v41];

    sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1000CD0E0;
    *(v43 + 32) = v42;
    v44 = v42;
    sub_10000FEB8(&qword_100117038, &unk_1000CD890);
    isa = sub_1000C6E84().super.isa;

    [v39 setEmailAddresses:isa];

    v22 = v101;
  }

  if (v23)
  {
    v46 = objc_allocWithZone(CNPhoneNumber);
    v47 = sub_1000C6D44();

    v48 = [v46 initWithStringValue:v47];

    v49 = [objc_allocWithZone(CNLabeledValue) initWithLabel:CNLabelPhoneNumberMain value:v48];
    sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1000CD0E0;
    *(v50 + 32) = v49;
    v51 = v49;
    sub_10000FEB8(&qword_100117038, &unk_1000CD890);
    v52 = sub_1000C6E84().super.isa;

    [v39 setPhoneNumbers:v52];

    v22 = v101;
  }

  v53 = [v95 nameComponents];
  if (v53)
  {
    v54 = v94;
    v55 = v53;
    sub_1000C5C34();

    v56 = 0;
    v58 = v97;
    v57 = v98;
  }

  else
  {
    v56 = 1;
    v58 = v97;
    v57 = v98;
    v54 = v94;
  }

  (*(v58 + 56))(v54, v56, 1, v57);
  sub_100038348(v54, v12);
  v59 = v96;
  sub_100017574(v12, v96, &qword_1001167C8, &qword_1000CC560);
  if ((*(v58 + 48))(v59, 1, v57) == 1)
  {
    sub_100010F24(v59, &qword_1001167C8, &qword_1000CC560);
    if ((v99 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v60 = v92;
    (*(v58 + 32))(v92, v59, v57);
    sub_1000C5C04();
    v61 = sub_1000C6D44();

    [v39 setNamePrefix:v61];

    sub_1000C5BD4();
    v62 = sub_1000C6D44();

    [v39 setGivenName:v62];

    sub_1000C5BF4();
    v63 = sub_1000C6D44();

    [v39 setMiddleName:v63];

    sub_1000C5BE4();
    v64 = sub_1000C6D44();

    [v39 setFamilyName:v64];

    sub_1000C5C14();
    v65 = sub_1000C6D44();

    [v39 setNameSuffix:v65];

    sub_1000C5C44();
    v66 = sub_1000C6D44();

    [v39 setNickname:v66];

    (*(v58 + 8))(v60, v57);
    if ((v99 & 1) == 0)
    {
LABEL_32:
      sub_100010F24(v12, &qword_1001167C8, &qword_1000CC560);

      return v39;
    }
  }

  v67 = [v39 givenName];
  v68 = sub_1000C6D84();
  v70 = v69;

  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (v71)
  {
    goto LABEL_32;
  }

  v72 = [v39 middleName];
  v73 = sub_1000C6D84();
  v75 = v74;

  v76 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v76 = v73 & 0xFFFFFFFFFFFFLL;
  }

  if (v76)
  {
    goto LABEL_32;
  }

  v77 = [v39 familyName];
  v78 = sub_1000C6D84();
  v80 = v79;

  v81 = HIBYTE(v80) & 0xF;
  if ((v80 & 0x2000000000000000) == 0)
  {
    v81 = v78 & 0xFFFFFFFFFFFFLL;
  }

  if (v81)
  {
    goto LABEL_32;
  }

  if (v22)
  {
    v83 = sub_1000C6D44();
    v84 = [v83 rangeOfComposedCharacterSequenceAtIndex:0];
    v86 = v85;

    v87 = sub_1000C6D44();

    v88 = [v87 substringWithRange:{v84, v86}];

    if (!v88)
    {
      sub_1000C6D84();
      v88 = sub_1000C6D44();
    }

    [v39 setGivenName:v88];

    sub_100010F24(v12, &qword_1001167C8, &qword_1000CC560);
  }

  else
  {
    sub_100010F24(v12, &qword_1001167C8, &qword_1000CC560);
  }

  return v39;
}

void sub_10003755C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a3[1];
  swift_retain_n();
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_89:
    __dst = *a1;
    if (*a1)
    {
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_91;
    }

    goto LABEL_130;
  }

  v104 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_20;
    }

    v13 = *a3;
    v14 = *(*a3 + 8 * v12);
    v113 = *(*a3 + 8 * v11);
    v15 = v113;
    v114 = v14;
    v16 = v14;
    v17 = v15;
    LODWORD(__dst) = sub_1000257E4(&v114, &v113, a5);
    if (v6)
    {

      return;
    }

    v18 = v11 + 2;
    v105 = v11;
    v19 = 8 * v11;
    v20 = (v13 + v19 + 16);
    while (v8 != v18)
    {
      v21 = *v20;
      v113 = *(v20 - 1);
      v22 = v113;
      v114 = v21;
      v23 = v21;
      v24 = v22;
      LODWORD(v22) = sub_1000257E4(&v114, &v113, a5);

      ++v18;
      ++v20;
      if ((__dst ^ v22))
      {
        v8 = v18 - 1;
        break;
      }
    }

    if ((__dst & 1) == 0)
    {
      goto LABEL_18;
    }

    v25 = v105;
    if (v8 < v105)
    {
      goto LABEL_124;
    }

    if (v105 < v8)
    {
      v26 = 8 * v8 - 8;
      v27 = v8;
      do
      {
        if (v25 != --v27)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v29 = *(v28 + v19);
          *(v28 + v19) = *(v28 + v26);
          *(v28 + v26) = v29;
        }

        ++v25;
        v26 -= 8;
        v19 += 8;
      }

      while (v25 < v27);
LABEL_18:
      v12 = v8;
      v11 = v105;
      goto LABEL_20;
    }

    v12 = v8;
    v11 = v105;
LABEL_20:
    v30 = a3[1];
    if (v12 >= v30)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_120;
    }

    if (v12 - v11 >= v104)
    {
      goto LABEL_133;
    }

    v31 = v11 + v104;
    if (__OFADD__(v11, v104))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:

      __break(1u);
LABEL_126:

      __break(1u);
      goto LABEL_127;
    }

    if (v31 >= v30)
    {
      v31 = a3[1];
    }

    if (v31 < v11)
    {
      goto LABEL_123;
    }

    if (v12 == v31)
    {
LABEL_133:
      if (v12 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v82 = *a3;
      v83 = *a3 + 8 * v12 - 8;
      v106 = v11;
      v84 = v11 - v12;
      v102 = v31;
      do
      {
        v109 = v12;
        __dst = v83;
        v85 = *(v82 + 8 * v12);
        v103 = v84;
        v86 = v84;
        do
        {
          v113 = *v83;
          v87 = v113;
          v114 = v85;
          v88 = v85;
          v89 = v87;
          v90 = sub_1000257E4(&v114, &v113, a5);
          if (v6)
          {

            return;
          }

          v91 = v90;

          if ((v91 & 1) == 0)
          {
            break;
          }

          if (!v82)
          {
            goto LABEL_126;
          }

          v92 = *v83;
          v85 = *(v83 + 8);
          *v83 = v85;
          *(v83 + 8) = v92;
          v83 -= 8;
        }

        while (!__CFADD__(v86++, 1));
        v12 = v109 + 1;
        v83 = __dst + 8;
        v84 = v103 - 1;
      }

      while (v109 + 1 != v102);
      v12 = v102;
      v11 = v106;
      if (v102 < v106)
      {
        goto LABEL_119;
      }
    }

    v108 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100030D04(0, v10[2] + 1, 1, v10);
    }

    v33 = v10[2];
    v32 = v10[3];
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v10 = sub_100030D04((v32 > 1), v33 + 1, 1, v10);
    }

    v10[2] = v34;
    v35 = &v10[2 * v33];
    v35[4] = v11;
    v35[5] = v108;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v33)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v108;
    if (v108 >= v8)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v36 = v34 - 1;
    if (v34 >= 4)
    {
      v41 = &v10[2 * v34 + 4];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v10[2 * v34];
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v10[2 * v36 + 4];
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v39 < v73)
        {
          v36 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v34 == 3)
    {
      v37 = v10[4];
      v38 = v10[5];
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_48:
      if (v40)
      {
        goto LABEL_108;
      }

      v53 = &v10[2 * v34];
      v55 = *v53;
      v54 = v53[1];
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v59 = &v10[2 * v36 + 4];
      v61 = *v59;
      v60 = v59[1];
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_115;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v63 = &v10[2 * v34];
    v65 = *v63;
    v64 = v63[1];
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_62:
    if (v58)
    {
      goto LABEL_110;
    }

    v66 = &v10[2 * v36];
    v68 = v66[4];
    v67 = v66[5];
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_113;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_69:
    v74 = v36 - 1;
    if (v36 - 1 >= v34)
    {
      break;
    }

    v75 = *a3;
    if (!*a3)
    {
      goto LABEL_125;
    }

    v76 = v10[2 * v74 + 4];
    v77 = v10[2 * v36 + 5];
    v78 = (v75 + 8 * v76);
    v79 = (v75 + 8 * v10[2 * v36 + 4]);
    v80 = (v75 + 8 * v77);

    sub_1000308A4(v78, v79, v80, __dst, a5);
    if (v6)
    {

      return;
    }

    if (v77 < v76)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100030CF0(v10);
    }

    if (v74 >= v10[2])
    {
      goto LABEL_105;
    }

    v81 = &v10[2 * v74];
    v81[4] = v76;
    v81[5] = v77;
    v115 = v10;
    sub_100030C64(v36);
    v10 = v115;
    v34 = v115[2];
    if (v34 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v10 = sub_100030CF0(v10);
LABEL_91:
  v115 = v10;
  v94 = v10[2];
  if (v94 < 2)
  {
LABEL_99:
  }

  else
  {
    while (1)
    {
      v95 = *a3;
      if (!*a3)
      {
        break;
      }

      v96 = v10[2 * v94];
      v97 = v10[2 * v94 + 3];
      v98 = (v95 + 8 * v96);
      v99 = (v95 + 8 * v10[2 * v94 + 2]);
      v100 = (v95 + 8 * v97);

      sub_1000308A4(v98, v99, v100, __dst, a5);
      if (v6)
      {
        goto LABEL_99;
      }

      if (v97 < v96)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100030CF0(v10);
      }

      if (v94 - 2 >= v10[2])
      {
        goto LABEL_117;
      }

      v101 = &v10[2 * v94];
      *v101 = v96;
      v101[1] = v97;
      v115 = v10;
      sub_100030C64(v94 - 1);
      v10 = v115;
      v94 = v115[2];
      if (v94 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_127:

    __break(1u);
LABEL_128:

    __break(1u);
LABEL_129:

    __break(1u);
LABEL_130:

    __break(1u);
  }
}

void sub_100037CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = sub_1000257E4(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

Swift::Int sub_100037DAC(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1000C7364(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
        v8 = sub_1000C6EB4();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9[1] = v7;

      sub_10003755C(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_100037CB4(0, v4, 1, a1, a2);
  }
}

uint64_t sub_100037F18(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100031170(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_100037DAC(v8, a2);

  sub_1000C7294();
}

uint64_t sub_100038064(void *a1, uint64_t a2, char a3)
{
  if ([a1 isOrgAdminUser])
  {
    v6 = [objc_opt_self() mainBundle];
    v8._countAndFlagsBits = 0xD000000000000011;
    v7 = 0xD000000000000021;
    v17._countAndFlagsBits = 0x80000001000D7FC0;
    v8._object = 0x80000001000D7FA0;
LABEL_5:
    v10.value._countAndFlagsBits = 0;
    v10.value._object = 0;
    v11.super.isa = v6;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
LABEL_6:
    v13 = sub_1000C5B74(v8, v10, v11, v12, v7, v17);

    return v13;
  }

  v9 = [a1 acceptanceStatus];
  if (v9 == 1)
  {
    v6 = [objc_opt_self() mainBundle];
    v7 = 0xD00000000000001CLL;
    v17._countAndFlagsBits = 0x80000001000D7F80;
    v8._countAndFlagsBits = 0x64657469766E49;
    v8._object = 0xE700000000000000;
    goto LABEL_5;
  }

  v15 = v9;
  if ([a1 role] != 4)
  {
    if ([a1 role] == 3)
    {
      if (v15 != 2)
      {
        return 0;
      }
    }

    else
    {
      v16 = [a1 role];
      v13 = 0;
      if (v15 != 2 || v16 != 2)
      {
        return v13;
      }
    }

    if ([a1 permission] == 2)
    {
LABEL_19:
      v6 = [objc_opt_self() mainBundle];
      v17._countAndFlagsBits = 0x80000001000D7F40;
      v8._countAndFlagsBits = 0x6C6E6F2077656956;
      v8._object = 0xE900000000000079;
      v10.value._countAndFlagsBits = 0;
      v10.value._object = 0;
      v11.super.isa = v6;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      v7 = 0xD000000000000030;
      goto LABEL_6;
    }

    return 0;
  }

  v13 = 0;
  if (v15 == 2 && (a3 & 1) == 0 && a2 == 2)
  {
    goto LABEL_19;
  }

  return v13;
}

unint64_t sub_1000382F4()
{
  result = qword_100117030;
  if (!qword_100117030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117030);
  }

  return result;
}

uint64_t sub_100038348(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_1001167C8, &qword_1000CC560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000383C8()
{
  result = qword_100117040;
  if (!qword_100117040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117040);
  }

  return result;
}

void sub_100038450(uint64_t a1)
{
  v2 = sub_1000C5F74();
  v3 = *(v2 - 8);
  v78 = v2;
  v79 = v3;
  v4 = __chkstk_darwin(v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v74 - v8;
  v10 = __chkstk_darwin(v7);
  v77 = &v74 - v11;
  __chkstk_darwin(v10);
  v13 = &v74 - v12;
  v14 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
  v15 = v14;
  v16 = *(a1 + 16);
  v17 = *(a1 + 40);
  if (v17 == 4)
  {
    goto LABEL_4;
  }

  v18 = 0xEE00726F72726520;
  v19 = 0x6C616E7265746E69;
  if (v17 == 11)
  {
    if (*(a1 + 32))
    {
      v19 = *(a1 + 24);
      v18 = *(a1 + 32);
    }

    goto LABEL_12;
  }

  if (v17 == 8)
  {
LABEL_4:

    if (!v16)
    {
      __break(1u);
      return;
    }

    v15 = v16;
    v20 = [v15 underlyingErrors];
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v21 = sub_1000C6E94();

    if (*(v21 + 16))
    {
      swift_errorRetain();

      v22 = sub_1000C5CD4();

      v15 = v22;
    }

    else
    {
    }

    v81 = 0x203A726F727265;
    v82 = 0xE700000000000000;
    v23 = [v15 description];
    v24 = sub_1000C6D84();
    v26 = v25;

    v83._countAndFlagsBits = v24;
    v83._object = v26;
    sub_1000C6E04(v83);

    v19 = v81;
    v18 = v82;
  }

LABEL_12:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v76 = v19;
  if (Strong)
  {
    v75 = v18;
    sub_1000C5F54();
    v28 = v15;
    v29 = sub_1000C5F64();
    v30 = sub_1000C6FD4();

    v31 = os_log_type_enabled(v29, v30);
    v74 = v28;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v80 = v33;
      *v32 = 136315138;
      v34 = v28;
      v35 = [v34 description];
      v36 = sub_1000C6D84();
      v38 = v37;

      v39 = sub_100071844(v36, v38, &v80);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "Handling final error: %s", v32, 0xCu);
      sub_100010544(v33);
    }

    v40 = v78;
    v41 = *(v79 + 8);
    v41(v13, v78);
    v42 = v77;
    sub_1000C5F54();
    v43 = sub_1000C5F64();
    v44 = sub_1000C6FD4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v80 = v46;
      *v45 = 136315138;
      v47 = v75;

      v48 = sub_100071844(v76, v47, &v80);

      *(v45 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v43, v44, "Handling final error message: %s", v45, 0xCu);
      sub_100010544(v46);

      v41(v77, v40);
    }

    else
    {

      v41(v42, v40);
    }

    v67 = v74;
    sub_10000B6FC(v74, 1u);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000C5F54();
    v49 = v15;
    v50 = sub_1000C5F64();
    v51 = sub_1000C6FD4();

    v52 = os_log_type_enabled(v50, v51);
    v77 = v49;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v80 = v54;
      *v53 = 136315138;
      v55 = v49;
      v56 = [v55 description];
      v57 = sub_1000C6D84();
      v75 = v9;
      v58 = v6;
      v59 = v18;
      v60 = v57;
      v62 = v61;

      v63 = v60;
      v18 = v59;
      v6 = v58;
      v64 = sub_100071844(v63, v62, &v80);

      *(v53 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to handle final error: %s", v53, 0xCu);
      sub_100010544(v54);

      v65 = *(v79 + 8);
      v66 = v75;
    }

    else
    {

      v65 = *(v79 + 8);
      v66 = v9;
    }

    v68 = v78;
    v65(v66, v78);
    sub_1000C5F54();
    v69 = sub_1000C5F64();
    v70 = sub_1000C6FD4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v80 = v72;
      *v71 = 136315138;

      v73 = sub_100071844(v76, v18, &v80);

      *(v71 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v69, v70, "Unable to handle final error message: %s", v71, 0xCu);
      sub_100010544(v72);
    }

    else
    {
    }

    v65(v6, v68);
  }
}

uint64_t sub_100038CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100017CBC;

  return sub_10002D928(a1, v4, v5, v6);
}

uint64_t sub_100038D8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100038E04()
{
  result = qword_100116300;
  if (!qword_100116300)
  {
    sub_1000C5D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116300);
  }

  return result;
}

uint64_t sub_100038EC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100038F08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_10002B454(a1, v4, v5, v7, v6);
}

uint64_t sub_100038FC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011080;

  return sub_10002DB98(a1, v4, v5, v6);
}

uint64_t sub_10003907C(void *a1)
{
  if (!*(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_existingContact))
  {
    goto LABEL_6;
  }

  v1 = a1[4];
  v2 = a1[5];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
  }

  else
  {
LABEL_6:
    v1 = a1[13];
    v4 = a1[14];
    v5 = v4 & 0x2000000000000000;
    v6 = HIBYTE(v4) & 0xF;
    v7 = v1 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v8 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      v1 = a1[11];
      v9 = a1[12];
      v5 = v9 & 0x2000000000000000;
      v6 = HIBYTE(v9) & 0xF;
      v7 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = v7;
    }

    if (!v10)
    {

      v11 = [objc_opt_self() mainBundle];
      v14._countAndFlagsBits = 0x80000001000D8E30;
      v15._countAndFlagsBits = 0x206E776F6E6B6E55;
      v15._object = 0xEC00000072657355;
      v16.value._countAndFlagsBits = 0;
      v16.value._object = 0;
      v12.super.isa = v11;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      v1 = sub_1000C5B74(v15, v16, v12, v17, 0xD000000000000026, v14);
    }
  }

  return v1;
}

uint64_t sub_1000391B4(uint64_t a1)
{
  v2 = sub_1000C5F74();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v37 = type metadata accessor for SPIAnalyticsEvent(0);
  v38 = &off_10010A4F0;
  v9 = sub_100039C00(v36);
  sub_100039C64(a1, v9, type metadata accessor for SPIAnalyticsEvent);
  sub_1000C5F54();
  sub_100039CCC(v36, aBlock);
  v10 = sub_1000C5F64();
  v11 = sub_1000C6FF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v35[0] = v13;
    *v12 = 136315394;
    sub_100011818(aBlock, v32);
    v14 = sub_100098B4C();
    v16 = v15;
    sub_100010544(aBlock);
    v17 = sub_100071844(v14, v16, v35);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1024;
    *(v12 + 14) = 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "Analytics event is: %s, will be built and sent: %{BOOL}d", v12, 0x12u);
    sub_100010544(v13);

    v18 = *(v3 + 8);
    v18(v8, v2);
  }

  else
  {

    v18 = *(v3 + 8);
    v18(v8, v2);
    sub_100010544(aBlock);
  }

  sub_100011818(v36, v37);
  sub_100098B4C();
  v19 = sub_1000C6D44();

  sub_100039CCC(v36, v35);
  v20 = swift_allocObject();
  sub_100039D68(v35, v20 + 16);
  v33 = sub_100039D80;
  v34 = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000238FC;
  v32 = &unk_100108650;
  v21 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);

  sub_1000C5F54();
  sub_100039CCC(v36, aBlock);
  v22 = sub_1000C5F64();
  v23 = sub_1000C6FF4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v35[0] = v25;
    *v24 = 136315138;
    sub_100011818(aBlock, v32);
    v26 = sub_100098B4C();
    v28 = v27;
    sub_100010544(aBlock);
    v29 = sub_100071844(v26, v28, v35);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Analytics event: %s sent lazily", v24, 0xCu);
    sub_100010544(v25);

    v18(v6, v2);
  }

  else
  {

    v18(v6, v2);
    sub_100010544(aBlock);
  }

  return sub_100010544(v36);
}

uint64_t sub_100039644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000396A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for PersonRowViewModel(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1000C72F4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1000C72F4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000397A4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1000C72F4();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1000C72F4();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100030E6C(result, 1);

  return sub_1000396A4(v5, v3, 0);
}

unint64_t sub_10003987C(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v5 = sub_1000C72F4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_1000C7254();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    if (*(v7 + 16) == *(a2 + 16) && *(v7 + 24) == *(a2 + 24))
    {
      break;
    }

    v9 = sub_1000C73A4();

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}