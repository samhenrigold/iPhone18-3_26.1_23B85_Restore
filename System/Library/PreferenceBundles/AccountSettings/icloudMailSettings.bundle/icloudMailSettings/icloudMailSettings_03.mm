uint64_t sub_544C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v7 = sub_D6450();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_D6480();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26338();
  v14 = sub_D6900();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1;
  aBlock[4] = v19;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_219D0;
  aBlock[3] = v20;
  v16 = _Block_copy(aBlock);

  sub_D6470();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_5673C(&qword_122400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_66D4(&qword_122408, &qword_DC730);
  sub_56620();
  sub_D6990();
  sub_D6910();
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v21);
}

uint64_t sub_5477C(uint64_t a1, char a2)
{
  v4[3] = &type metadata for Bool;
  v2 = a2 & 1;
  LOBYTE(v4[0]) = a2;
  sub_55318(0x6669746E6F507369, 0xEC0000006E4F7865, v4);
  sub_67D4(v4);
  if (qword_120E58 != -1)
  {
    swift_once();
  }

  LOBYTE(v4[0]) = v2;

  sub_D54E0();
}

uint64_t sub_54838(int a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_D6450();
  v31 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_D6480();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    LODWORD(v31) = a1;
    swift_errorRetain();
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v17 = sub_6610(v6, qword_137988);
    (*(v7 + 16))(v9, v17, v6);
    swift_errorRetain();
    v18 = sub_D5320();
    v19 = sub_D68B0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_D6C60();
      v24 = sub_558F0(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "EndToEndEncryption status fetch failed. Error: %s", v20, 0xCu);
      sub_67D4(v21);
    }

    else
    {
    }

    (*(v7 + 8))(v9, v6);
    v28 = v31;
  }

  else
  {
    sub_26338();
    v25 = sub_D6900();
    v26 = swift_allocObject();
    *(v26 + 16) = a1 & 1;
    aBlock[4] = sub_5681C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_219D0;
    aBlock[3] = &unk_116A40;
    v27 = _Block_copy(aBlock);

    sub_D6470();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_5673C(&qword_122400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_66D4(&qword_122408, &qword_DC730);
    sub_56620();
    sub_D6990();
    sub_D6910();
    _Block_release(v27);

    (*(v31 + 8))(v12, v10);
    (*(v14 + 8))(v16, v13);
    v28 = a1;
  }

  return v33(v28 & 1);
}

uint64_t sub_54D18(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5)
{
  v33[1] = a5;
  v34 = a4;
  v33[0] = a2;
  v7 = sub_D5340();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_D6450();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_D6480();
  __chkstk_darwin(v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v19 = sub_6610(v7, qword_137988);
    (*(v8 + 16))(v10, v19, v7);
    swift_errorRetain();
    v20 = sub_D5320();
    v21 = sub_D68B0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = sub_D6C60();
      v26 = sub_558F0(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_0, v20, v21, "EndToEndEncryption status save failed. Error: %s", v22, 0xCu);
      sub_67D4(v23);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
    v31 = v33[0];
    swift_beginAccess();
    *(v31 + 16) = 0;
  }

  else
  {
    v27 = v16;
    sub_26338();
    v28 = sub_D6900();
    v29 = swift_allocObject();
    *(v29 + 16) = a3 & 1;
    aBlock[4] = sub_56604;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_219D0;
    aBlock[3] = &unk_1169A0;
    v30 = _Block_copy(aBlock);

    sub_D6470();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_5673C(&qword_122400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_66D4(&qword_122408, &qword_DC730);
    sub_56620();
    sub_D6990();
    sub_D6910();
    _Block_release(v30);

    (*(v12 + 8))(v14, v11);
    (*(v27 + 8))(v18, v15);
    v31 = v33[0];
  }

  swift_beginAccess();
  return v34(*(v31 + 16));
}

uint64_t sub_55224(char a1)
{
  if (qword_120E58 != -1)
  {
    swift_once();
  }

  sub_D54E0();
}

void sub_552AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_55318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_66D4(&qword_124C58, &qword_DFDA0);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  v7 = sub_D53C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263D4(a3, v14);
  sub_66D4(&qword_124C60, &qword_DC750);
  if (swift_dynamicCast())
  {
    sub_38BDC(v12, v15);
    sub_6648(v15, v15[3]);
    sub_D53D0();
    (*(v8 + 16))(v6, v10, v7);
    (*(v8 + 56))(v6, 0, 1, v7);

    sub_D5460();
    (*(v8 + 8))(v10, v7);
    return sub_67D4(v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    return sub_FC3C(v12, &qword_124C68, &qword_DC758);
  }
}

uint64_t sub_5554C()
{

  sub_FC3C(v0 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView27EndToEndEncryptionViewModel_signingUIUrl, &qword_123340, qword_DC760);

  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s27EndToEndEncryptionViewModelCMa(uint64_t a1)
{
  result = qword_124B70;
  if (!qword_124B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_55634(uint64_t a1)
{
  sub_556E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_556E0(uint64_t a1)
{
  if (!qword_124B80)
  {
    sub_D4F20();
    v1 = sub_D6930();
    if (!v2)
    {
      atomic_store(v1, &qword_124B80);
    }
  }
}

uint64_t sub_55738()
{
  v0 = [objc_allocWithZone(ACAccount) init];
  type metadata accessor for EndToEndEncryptionLiftUIDataSource();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1379A8 = result;
  return result;
}

id sub_55790()
{
  result = [objc_allocWithZone(sub_D5410()) init];
  qword_1379B0 = result;
  return result;
}

uint64_t sub_557C4()
{
  sub_66D4(&qword_124C50, &unk_DC740);
  swift_allocObject();
  result = sub_D5510();
  qword_1379B8 = result;
  return result;
}

uint64_t sub_55820(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_55894(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_558F0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_558F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_559BC(v11, 0, 0, 1, a1, a2);
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
    sub_263D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_67D4(v11);
  return v7;
}

unint64_t sub_559BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_55AC8(a5, a6);
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
    result = sub_D6A30();
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

void *sub_55AC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_55B14(a1, a2);
  sub_55C44(&off_113250);
  return v3;
}

void *sub_55B14(uint64_t a1, unint64_t a2)
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

  v6 = sub_55D30(v5, 0);
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

  result = sub_D6A30();
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
        v10 = sub_D66F0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_55D30(v10, 0);
        result = sub_D6A00();
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

uint64_t sub_55C44(uint64_t result)
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

  result = sub_55DA4(result, v11, 1, v3);
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

void *sub_55D30(uint64_t a1, uint64_t a2)
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

  sub_66D4(&qword_124C48, &qword_DC738);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_55DA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_124C48, &qword_DC738);
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

_BYTE **sub_55E98(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

id sub_55EA8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_D5450();
  swift_allocObject();
  *(v3 + 16) = sub_D5440();
  sub_D4F10();
  v8 = OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView27EndToEndEncryptionViewModel_account;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v21 = 0u;
  v22 = 0;
  sub_66D4(&qword_124C70, &qword_DFBA0);
  swift_allocObject();
  *(v3 + v8) = sub_D5510();
  *(v3 + 24) = a1;
  *(v3 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView27EndToEndEncryptionViewModel_account) = a2;
  v9 = a1;

  v23 = &type metadata for Bool;
  LOBYTE(v21) = 0;
  sub_55318(0x6669746E6F507369, 0xEC0000006E4F7865, &v21);
  sub_67D4(&v21);
  if (qword_120E48 != -1)
  {
    swift_once();
  }

  type metadata accessor for EndToEndEncryptionLiftUIDataSource();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  qword_1379A8 = v10;
  v11 = v9;

  if (qword_120E58 != -1)
  {
    swift_once();
  }

  qword_1379B8 = a3;

  v12 = [objc_allocWithZone(sub_D5410()) init];
  type metadata accessor for EndToEndEncryptionView.ToggleEndToEndEncryption(0);
  sub_5673C(&qword_124C78, type metadata accessor for EndToEndEncryptionView.ToggleEndToEndEncryption, &unk_DFD50);
  sub_D5400();
  if (qword_120E50 != -1)
  {
    swift_once();
  }

  v13 = qword_1379B0;
  qword_1379B0 = v12;
  v14 = v12;

  result = [*(v4 + 24) aa_primaryEmail];
  if (result)
  {
    v16 = result;
    v17 = objc_allocWithZone(MCCSecretAgentController);

    v18 = [v17 init];
    v19 = swift_allocObject();
    *(v19 + 16) = sub_56784;
    *(v19 + 24) = v4;
    *&v24 = sub_567FC;
    *(&v24 + 1) = v19;
    *&v21 = _NSConcreteStackBlock;
    *(&v21 + 1) = 1107296256;
    v22 = sub_5F7FC;
    v23 = &unk_116AE0;
    v20 = _Block_copy(&v21);

    [v18 getIsSecureEmailEnabledForEmail:v16 completion:v20];
    _Block_release(v20);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_5628C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_D5340();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v12 = sub_6610(v8, qword_137988);
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_D5320();
  v14 = sub_D68A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = a5;
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Saving EndToEndEncryption status", v15, 2u);
    a5 = v23;
  }

  (*(v9 + 8))(v11, v8);
  v16 = [objc_allocWithZone(MCCSecretAgentController) init];
  v17 = swift_allocObject();
  *(v17 + 16) = 1;
  v18 = sub_D65C0();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = a1 & 1;
  *(v19 + 24) = v20;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  aBlock[4] = sub_565DC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_552AC;
  aBlock[3] = &unk_116950;
  v21 = _Block_copy(aBlock);

  [v16 setIsSecureEmailEnabled:v20 forEmail:v18 completion:v21];
  _Block_release(v21);
}

uint64_t sub_5659C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_565EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_56620()
{
  result = qword_122410;
  if (!qword_122410)
  {
    sub_6110(&qword_122408, &qword_DC730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122410);
  }

  return result;
}

uint64_t sub_566C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_56704()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_5673C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_56830(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  v49 = a2;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[Alias] update started", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v12 = (v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
  v13 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 8);
  *&v47 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
  swift_getKeyPath();
  swift_getKeyPath();
  *(&v47 + 1) = v13;

  sub_D5570();

  v14 = *&v58[0];
  v15 = *(*&v58[0] + 16);
  if (v15)
  {
    v45 = v12;
    v46 = v3;
    *&v58[0] = _swiftEmptyArrayStorage;
    sub_11BB0(0, v15, 0);
    v16 = *&v58[0];
    v44[1] = v14;
    v17 = (v14 + 64);
    do
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;
      *&v58[0] = v16;
      v22 = v16[2];
      v21 = v16[3];

      if (v22 >= v21 >> 1)
      {
        sub_11BB0((v21 > 1), v22 + 1, 1);
        v16 = *&v58[0];
      }

      v16[2] = v22 + 1;
      v23 = &v16[3 * v22];
      v23[4] = v18;
      v23[5] = v19;
      *(v23 + 48) = v20;
      v17 += 40;
      --v15;
    }

    while (v15);

    v12 = v45;
    v3 = v46;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v24 = v58[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v25 = v58[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v53 = v47;
  *v54 = v16;
  *&v54[8] = v24;
  *&v54[24] = v25;
  v54[40] = v58[0];
  v55 = v47;
  v56 = *v54;
  v57[0] = *&v54[16];
  *(v57 + 9) = *&v54[25];
  v26 = *v12;
  v27 = v12[1];
  v28 = v12[2];
  *(v59 + 9) = *(v12 + 41);
  v58[1] = v27;
  v59[0] = v28;
  v58[0] = v26;
  if (sub_B8D6C(&v55, v58))
  {
    sub_584E0(&v53);
    return v48(0);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v50[0]) = 1;

    sub_D5580();
    v30 = sub_6648((v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository), *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository + 24));
    v31 = *(*v30 + 16);
    v32 = *(*v30 + 24);
    v52[3] = &type metadata for Alias;
    v52[4] = sub_469C8();
    v33 = swift_allocObject();
    v52[0] = v33;
    v34 = v56;
    v33[1] = v55;
    v33[2] = v34;
    v33[3] = v57[0];
    *(v33 + 57) = *(v57 + 9);
    v35 = objc_allocWithZone(type metadata accessor for MSAliasUpdateAPIRequest(0));
    sub_13E28(v52, v51);
    v36 = v31;
    v37 = v32;
    sub_5842C(&v53, v50);
    v38 = sub_45BC4(v31, v37, v51);

    sub_13EF4(v52);
    v39 = sub_1EB80();

    v50[0] = v39;
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v42 = v56;
    *(v41 + 16) = v55;
    *(v41 + 32) = v42;
    *(v41 + 48) = v57[0];
    *(v41 + 57) = *(v57 + 9);
    *(v41 + 80) = v40;
    v43 = swift_allocObject();
    *(v43 + 16) = v48;
    *(v43 + 24) = v49;

    sub_66D4(&qword_121F38, &qword_D9CA0);
    sub_14038();
    sub_D55D0();

    swift_beginAccess();
    sub_D54B0();
    swift_endAccess();
  }
}

uint64_t sub_56E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  v52 = *(a1 + 24);
  v53 = v12;
  v54 = *(a1 + 32);
  v55 = v11;
  LODWORD(v14) = *(a1 + 40);
  if (v11)
  {
    if (sub_3E120())
    {
      v15 = sub_D6540();
      v17 = v16;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v18 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v10, v18, v4);

      v19 = sub_D5320();
      v20 = v5;
      v21 = sub_D68B0();

      if (os_log_type_enabled(v19, v21))
      {
        v22 = swift_slowAlloc();
        LODWORD(v50) = v14;
        v14 = v22;
        v23 = swift_slowAlloc();
        v51 = v13;
        v24 = v23;
        v58 = v23;
        *v14 = 136642819;
        v25 = sub_558F0(v15, v17, &v58);
        v26 = v20;
        v27 = v19;
        v28 = v25;

        *(v14 + 4) = v28;
        _os_log_impl(&dword_0, v27, v21, "[Alias] params: %{sensitive}s", v14, 0xCu);
        sub_67D4(v24);
        v13 = v51;

        LOBYTE(v14) = v50;

        (*(v26 + 8))(v10, v4);
        v5 = v26;
      }

      else
      {

        (*(v20 + 8))(v10, v4);
        v5 = v20;
      }
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v29 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v8, v29, v4);
    v30 = v55;

    v31 = v30;
    v32 = sub_D5320();
    v33 = sub_D68B0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v51 = v13;
      v35 = v34;
      v36 = v5;
      v37 = swift_slowAlloc();
      v64[0] = v37;
      *v35 = 136315138;
      v58 = v53;
      v59 = v31;
      v60 = v51;
      LOBYTE(v61) = v52 & 1;
      v62 = v54;
      v63 = v14 & 1;
      sub_6780();
      v38 = sub_D6C60();
      v40 = sub_558F0(v38, v39, v64);
      v50 = v4;
      v41 = v40;

      *(v35 + 4) = v41;
      _os_log_impl(&dword_0, v32, v33, "[Alias] update failed: %s", v35, 0xCu);
      sub_67D4(v37);

      v13 = v51;

      (*(v36 + 8))(v8, v50);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v42 = v55;
    if (v55)
    {
      v43 = v53;
    }

    else
    {
      v43 = 0;
    }

    if (v55)
    {
      v44 = v13;
    }

    else
    {
      v44 = 0;
    }

    if (v55)
    {
      v45 = v52 & 1;
    }

    else
    {
      v45 = 0;
    }

    if (v55)
    {
      v46 = v54;
    }

    else
    {
      v46 = 0;
    }

    if (v55)
    {
      v47 = v14 & 1;
    }

    else
    {
      v47 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v58 = v43;
    v59 = v42;
    v60 = v44;
    v61 = v45;
    v62 = v46;
    v63 = v47;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v57 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_57438(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Alias] update succeeded", v10, 2u);
  }

  (*(v4 + 8))(v6, v3);
  return a2(1);
}

uint64_t sub_575E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v10 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_D5320();
  v12 = sub_D68A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "[Alias] delete started", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v31[0]) = 1;

  sub_D5580();
  v14 = sub_6648((v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository), *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository + 24));
  v15 = (v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
  *&v32[9] = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 41);
  v16 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 32);
  v31[1] = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 16);
  *v32 = v16;
  v31[0] = *(v3 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
  v17 = *(*v14 + 16);
  v18 = *(*v14 + 24);
  v30[3] = &type metadata for Alias;
  v30[4] = sub_469C8();
  v19 = swift_allocObject();
  v30[0] = v19;
  v20 = v15[1];
  v19[1] = *v15;
  v19[2] = v20;
  v19[3] = v15[2];
  *(v19 + 57) = *(v15 + 41);
  v21 = objc_allocWithZone(type metadata accessor for MSAliasDeleteAPIRequest(0));
  sub_13E28(v30, v29);
  v22 = v17;
  v23 = v18;
  sub_5842C(v31, v28);
  v24 = sub_45BC4(v17, v23, v29);

  sub_13EF4(v30);
  v25 = sub_1EB80();

  v28[0] = v25;
  swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;

  sub_66D4(&qword_121F38, &qword_D9CA0);
  sub_14038();
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_579C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v51 - v8;
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 24);
  v58 = *(a1 + 16);
  v57 = *(a1 + 32);
  v13 = *(a1 + 40);
  v59 = v10;
  if (v10)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 16);
      v15 = *(Strong + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 32);
      v17 = *(Strong + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias + 41);
      v68[0] = *(Strong + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
      *(v69 + 9) = v17;
      v68[1] = v16;
      v69[0] = v15;
      sub_5842C(v68, &v60);

      v18 = sub_3E120();
      sub_584E0(v68);
      if (v18)
      {
        LODWORD(v54) = v13;
        v55 = v12;
        v52 = sub_D6550();
        v20 = v19;

        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v21 = sub_6610(v3, qword_137988);
        v53 = v4;
        (*(v4 + 16))(v9, v21, v3);

        v22 = sub_D5320();
        v23 = sub_D68B0();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v51 = v11;
          v25 = v24;
          v26 = swift_slowAlloc();
          v56 = v3;
          v27 = v26;
          v60 = v26;
          *v25 = 136642819;
          v28 = sub_558F0(v52, v20, &v60);

          *(v25 + 4) = v28;
          _os_log_impl(&dword_0, v22, v23, "[Alias] params: %{sensitive}s", v25, 0xCu);
          sub_67D4(v27);
          v3 = v56;

          v11 = v51;
        }

        else
        {
        }

        (v53[1].isa)(v9, v3);
        LOBYTE(v12) = v55;
        LOBYTE(v13) = v54;
      }
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v29 = sub_6610(v3, qword_137988);
    v30 = v4;
    (*(v4 + 16))(v7, v29, v3);

    v31 = sub_D5320();
    v32 = sub_D68B0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v56 = v3;
      v34 = v33;
      v55 = swift_slowAlloc();
      v67[0] = v55;
      *v34 = 136315138;
      v60 = v11;
      v61 = v59;
      v62 = v58;
      LOBYTE(v63) = v12 & 1;
      v64 = v57;
      v65 = v13 & 1;
      sub_6780();
      v53 = v31;
      v35 = sub_D6C60();
      v37 = sub_558F0(v35, v36, v67);
      v54 = v7;
      v38 = v32;
      v39 = v11;
      v40 = v37;

      *(v34 + 4) = v40;
      v11 = v39;
      v41 = v38;
      v42 = v53;
      _os_log_impl(&dword_0, v53, v41, "[Alias] delete failed: %s", v34, 0xCu);
      sub_67D4(v55);

      (*(v30 + 8))(v54, v56);
    }

    else
    {

      (*(v30 + 8))(v7, v3);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v43 = v13 & 1;
    v44 = v59;
    if (v59)
    {
      v45 = v11;
    }

    else
    {
      v45 = 0;
    }

    if (v59)
    {
      v46 = v58;
    }

    else
    {
      v46 = 0;
    }

    if (v59)
    {
      v47 = v12 & 1;
    }

    else
    {
      v47 = 0;
    }

    if (v59)
    {
      v48 = v57;
    }

    else
    {
      v48 = 0;
    }

    if (v59)
    {
      v49 = v43;
    }

    else
    {
      v49 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v45;
    v61 = v44;
    v62 = v46;
    v63 = v47;
    v64 = v48;
    v65 = v49;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v66 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_5805C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Alias] delete successful", v10, 2u);
  }

  v11 = (*(v4 + 8))(v6, v3);
  return a2(v11);
}

uint64_t sub_58204()
{

  return sub_67D4((v0 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository));
}

uint64_t sub_5826C()
{
  v0 = sub_11220();

  sub_67D4(&v0[OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository]);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MSAliasDetailViewModel(uint64_t a1)
{
  result = qword_124CB8;
  if (!qword_124CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_583DC()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_58488()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_58554()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_585B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_585FC()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_58644()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSUpdateServerPreferenceAPI(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSUpdateServerPreferenceAPI(uint64_t a1)
{
  result = qword_124FB8;
  if (!qword_124FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_586D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v37 - v12;
  __chkstk_darwin(v11);
  v15 = v37 - v14;
  if (!a2)
  {
    v18 = sub_D65C0();
    v19 = [v3 accountPropertyForKey:v18];

    if (!v19)
    {
      v40 = 0u;
      v41 = 0u;
      sub_5A408(&v40);
      return 0;
    }

    sub_D6980();
    swift_unknownObjectRelease();
    sub_5A408(&v40);
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v20 = sub_6610(v6, qword_137988);
    (*(v7 + 16))(v10, v20, v6);
    v21 = sub_D5320();
    v22 = sub_D68D0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "[setFullUserName] Has different FullUserName", v23, 2u);
    }

    (*(v7 + 8))(v10, v6);
    v24 = sub_D65C0();
    [v3 setAccountProperty:0 forKey:v24];

    return 1;
  }

  v16 = sub_D65C0();
  v17 = [v3 accountPropertyForKey:v16];

  if (v17)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    sub_5A408(&v40);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v26 = sub_6610(v6, qword_137988);
    (*(v7 + 16))(v13, v26, v6);
    v27 = sub_D5320();
    v28 = sub_D68D0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "[setFullUserName] Has different FullUserName", v29, 2u);
    }

    (*(v7 + 8))(v13, v6);
    goto LABEL_22;
  }

  if (v37[0] == a1 && v37[1] == a2)
  {

    return 0;
  }

  v32 = sub_D6C20();

  result = 0;
  if ((v32 & 1) == 0)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v33 = sub_6610(v6, qword_137988);
    (*(v7 + 16))(v15, v33, v6);
    v34 = sub_D5320();
    v35 = sub_D68D0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "[setFullUserName] Has different FullUserName", v36, 2u);
    }

    (*(v7 + 8))(v15, v6);
LABEL_22:
    v30 = sub_D65C0();
    v31 = sub_D65C0();
    [v3 setAccountProperty:v30 forKey:v31];

    return 1;
  }

  return result;
}

uint64_t sub_58C84(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = sub_D65C0();
    v8 = [v2 accountPropertyForKey:v7];

    if (!v8)
    {
      v17 = 0u;
      v18 = 0u;
      sub_5A408(&v17);
      return 0;
    }

    sub_D6980();
    swift_unknownObjectRelease();
    sub_5A408(&v17);
    v9 = sub_D65C0();
    [v2 setAccountProperty:0 forKey:v9];
LABEL_14:

    return 1;
  }

  v5 = sub_D65C0();
  v6 = [v2 accountPropertyForKey:v5];

  if (v6)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    sub_5A408(&v17);
LABEL_13:
    v10 = sub_D65C0();
    v9 = sub_D65C0();
    [v2 setAccountProperty:v10 forKey:v9];

    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (v13 == a1 && v14 == a2)
  {

    return 0;
  }

  v12 = sub_D6C20();

  result = 0;
  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_58EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BAC(_swiftEmptyArrayStorage);
  v5 = *(a3 + 16);
  if (!v5)
  {
LABEL_15:
    v24 = sub_59148();
    v25 = sub_598E8(v24, v4);

    if (v25)
    {
    }

    else
    {
      isa = sub_D6520().super.isa;

      v27 = sub_D65C0();
      [v29 setAccountProperty:isa forKey:v27];
    }

    return (v25 & 1) == 0;
  }

  v6 = (a3 + 48);
  while (1)
  {
    v8 = *v6;
    v10 = *(v6 - 2);
    v9 = *(v6 - 1);

    v33._countAndFlagsBits = 64;
    v33._object = 0xE100000000000000;
    sub_D66D0(v33);

    v34._countAndFlagsBits = v10;
    v34._object = v9;
    sub_D66D0(v34);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v4;
    v12 = sub_4BAD4(a1, a2);
    v14 = *(v4 + 16);
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (*(v4 + 24) < v17)
    {
      sub_4BF8C(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_4BAD4(a1, a2);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_10:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v12;
    sub_4C8BC();
    v12 = v23;
    if (v18)
    {
LABEL_3:
      v7 = v12;

      v4 = v32;
      *(v32[7] + v7) = v8;

      goto LABEL_4;
    }

LABEL_11:
    v4 = v32;
    v32[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v32[6] + 16 * v12);
    *v20 = a1;
    v20[1] = a2;
    *(v32[7] + v12) = v8;

    v21 = v32[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v32[2] = v22;
LABEL_4:
    v6 += 24;
    if (!--v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_D6C50();
  __break(1u);
  return result;
}

__int128 *sub_59148()
{
  v1 = v0;
  v52 = sub_D4DC0();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_D5340();
  v4 = *(isUniquelyReferenced_nonNull_native - 8);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v6 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_26BAC(_swiftEmptyArrayStorage);
  v8 = sub_D65C0();
  v9 = [v1 accountPropertyForKey:v8];

  if (v9)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56 = v54;
  v57 = v55;
  if (*(&v55 + 1))
  {
    if (swift_dynamicCast())
    {
      v56 = v53;
      *&v54 = 44;
      *(&v54 + 1) = 0xE100000000000000;
      sub_DFAC();
      v10 = sub_D6940();

      v11 = v10[2];
      if (!v11)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  else
  {
    sub_5A408(&v56);
  }

  v12 = sub_D65C0();
  v13 = [v1 accountPropertyForKey:v12];

  if (v13)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56 = v54;
  v57 = v55;
  if (*(&v55 + 1))
  {
    sub_66D4(&qword_121498, &qword_D99D0);
    if (swift_dynamicCast())
    {
      v10 = v53;
      v11 = *(v53 + 16);
      if (!v11)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  else
  {
    sub_5A408(&v56);
  }

  v14 = sub_D65C0();
  v15 = [v1 accountPropertyForKey:v14];

  if (v15)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56 = v54;
  v57 = v55;
  if (!*(&v55 + 1))
  {
    sub_5A408(&v56);
    goto LABEL_25;
  }

  sub_66D4(&qword_125188, &unk_DCA28);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v17 = sub_D65C0();
    v18 = [v1 accountPropertyForKey:v17];

    if (v18)
    {
      sub_D6980();
      swift_unknownObjectRelease();
      sub_5A408(&v56);
      if (qword_120E38 != -1)
      {
        goto LABEL_56;
      }

      goto LABEL_27;
    }

    v56 = 0u;
    v57 = 0u;
    sub_5A408(&v56);
LABEL_31:
    v10 = _swiftEmptyArrayStorage;
    v11 = _swiftEmptyArrayStorage[2];
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v16 = v53;

  v10 = _swiftEmptyArrayStorage;
  v7 = v16;
  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
LABEL_32:
    *&v54 = _swiftEmptyArrayStorage;
    sub_11B90(0, v11, 0);
    v23 = v54;
    v24 = (v50 + 1);
    v50 = v10;
    v25 = v10 + 5;
    do
    {
      v26 = *v25;
      *&v56 = *(v25 - 1);
      *(&v56 + 1) = v26;

      v27 = v51;
      sub_D4DB0();
      sub_DFAC();
      v6 = &v56;
      v28 = sub_D6950();
      v30 = v29;
      (*v24)(v27, v52);

      *&v54 = v23;
      v4 = *(v23 + 16);
      v31 = *(v23 + 24);
      isUniquelyReferenced_nonNull_native = v4 + 1;
      if (v4 >= v31 >> 1)
      {
        v6 = &v54;
        sub_11B90((v31 > 1), v4 + 1, 1);
        v23 = v54;
      }

      *(v23 + 16) = isUniquelyReferenced_nonNull_native;
      v32 = v23 + 16 * v4;
      *(v32 + 32) = v28;
      *(v32 + 40) = v30;
      v25 += 2;
      --v11;
    }

    while (v11);

    v52 = *(v23 + 16);
    if (!v52)
    {
LABEL_51:

      return v7;
    }

    v33 = 0;
    v34 = (v23 + 40);
    while (1)
    {
      if (v33 >= *(v23 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
LABEL_27:
        v19 = sub_6610(isUniquelyReferenced_nonNull_native, qword_137988);
        (*(v4 + 16))(v6, v19, isUniquelyReferenced_nonNull_native);
        v20 = sub_D5320();
        v21 = sub_D68B0();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_0, v20, v21, "[getPrimaryEmailAddresses] emailAddress is not nil and unhandled type", v22, 2u);
        }

        (*(v4 + 8))(v6, isUniquelyReferenced_nonNull_native);
        goto LABEL_31;
      }

      v4 = *(v34 - 1);
      v35 = *v34;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v56 = v7;
      v6 = v7;
      v36 = sub_4BAD4(v4, v35);
      v38 = *(v7 + 2);
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        goto LABEL_54;
      }

      v42 = v37;
      if (*(v7 + 3) < v41)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_46;
      }

      v6 = &v56;
      v47 = v36;
      sub_4C8BC();
      v36 = v47;
      if (v42)
      {
LABEL_38:
        v6 = v36;

        v7 = v56;
        *(v6 + *(v56 + 56)) = 1;
        goto LABEL_39;
      }

LABEL_47:
      v7 = v56;
      *(v56 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      v44 = (*(v7 + 6) + 16 * v36);
      *v44 = v4;
      v44[1] = v35;
      *(*(v7 + 7) + v36) = 1;
      v45 = *(v7 + 2);
      v40 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v40)
      {
        goto LABEL_55;
      }

      *(v7 + 2) = v46;
LABEL_39:
      ++v33;
      v34 += 2;
      if (v52 == v33)
      {
        goto LABEL_51;
      }
    }

    sub_4BF8C(v41, isUniquelyReferenced_nonNull_native);
    v6 = v56;
    v36 = sub_4BAD4(v4, v35);
    if ((v42 & 1) != (v43 & 1))
    {
      result = sub_D6C50();
      __break(1u);
      return result;
    }

LABEL_46:
    if (v42)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

LABEL_23:

  return v7;
}

uint64_t sub_598E8(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_4BAD4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_59A1C(uint64_t a1)
{
  v2 = sub_26BAC(_swiftEmptyArrayStorage);
  v66 = a1;
  v3 = *(a1 + 56);
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_32:
    if (*(v66 + 64))
    {
      v37 = *(v66 + 64);
    }

    else
    {
      v37 = _swiftEmptyArrayStorage;
    }

    v75 = v37[2];
    if (!v75)
    {

LABEL_56:

      v60 = sub_5A084();
      v61 = sub_598E8(v60, v2);

      if (v61)
      {
      }

      else
      {
        isa = sub_D6520().super.isa;

        v63 = sub_D65C0();
        [v65 setAccountProperty:isa forKey:v63];
      }

      return (v61 & 1) == 0;
    }

    v38 = 0;
    v39 = v37 + 6;
    v73 = v37;
    while (1)
    {
      if (v38 >= v37[2])
      {
        goto LABEL_63;
      }

      v77 = *(v39 + 16);
      v41 = v39[3];
      v42 = v39[4];
      v43 = *v39;
      v44 = v39[1];
      v81 = *(v39 - 1);

      swift_bridgeObjectRetain_n();

      v88._countAndFlagsBits = 64;
      v88._object = 0xE100000000000000;
      sub_D66D0(v88);

      v89._countAndFlagsBits = v43;
      v89._object = v44;
      sub_D66D0(v89);

      object = v81._object;
      countAndFlagsBits = v81._countAndFlagsBits;
      if (v42)
      {
        v47 = HIBYTE(v42) & 0xF;
        if ((v42 & 0x2000000000000000) == 0)
        {
          v47 = v41 & 0xFFFFFFFFFFFFLL;
        }

        if (v47)
        {

          v90._countAndFlagsBits = 15392;
          v90._object = 0xE200000000000000;
          sub_D66D0(v90);
          sub_D66D0(v81);

          v91._countAndFlagsBits = 62;
          v91._object = 0xE100000000000000;
          sub_D66D0(v91);
          countAndFlagsBits = v41;
          object = v42;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v2;
      v49 = sub_4BAD4(countAndFlagsBits, object);
      v51 = v2[2];
      v52 = (v50 & 1) == 0;
      v35 = __OFADD__(v51, v52);
      v53 = v51 + v52;
      if (v35)
      {
        goto LABEL_64;
      }

      v54 = v50;
      if (v2[3] < v53)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_50;
      }

      v59 = v49;
      sub_4C8BC();
      v49 = v59;
      if (v54)
      {
LABEL_37:
        v40 = v49;

        v2 = v82;
        *(v82[7] + v40) = v77;

        goto LABEL_38;
      }

LABEL_51:
      v2 = v82;
      v82[(v49 >> 6) + 8] |= 1 << v49;
      v56 = (v82[6] + 16 * v49);
      *v56 = countAndFlagsBits;
      v56[1] = object;
      *(v82[7] + v49) = v77;

      v57 = v82[2];
      v35 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v35)
      {
        goto LABEL_65;
      }

      v82[2] = v58;
LABEL_38:
      ++v38;
      v39 += 9;
      v37 = v73;
      if (v75 == v38)
      {
        goto LABEL_56;
      }
    }

    sub_4BF8C(v53, isUniquelyReferenced_nonNull_native);
    v49 = sub_4BAD4(countAndFlagsBits, object);
    if ((v54 & 1) != (v55 & 1))
    {
      goto LABEL_66;
    }

LABEL_50:
    if (v54)
    {
      goto LABEL_37;
    }

    goto LABEL_51;
  }

  v5 = 0;
  v6 = v3 + 32;
  v67 = v3 + 32;
  v68 = *(v3 + 16);
  while (1)
  {
    v7 = v6 + (v5 << 6);
    if (*(v7 + 56) == 1)
    {
      v8 = *(v7 + 16);
      v78 = *(v8 + 16);
      if (v78)
      {
        break;
      }
    }

LABEL_4:
    if (++v5 == v4)
    {
      goto LABEL_32;
    }
  }

  v9 = *(v7 + 8);
  v76 = *v7;
  v10 = *(v7 + 24);
  v11 = *(v7 + 32);
  v12 = HIBYTE(v11) & 0xF;
  v69 = v5;
  v70 = v10;
  v13 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v13;
  }

  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  v74 = v15;
  v79 = v9;

  swift_bridgeObjectRetain_n();
  v71 = v11;

  v16 = 0;
  v17 = (v8 + 48);
  v72 = v8;
  while (v16 < *(v8 + 16))
  {
    v18 = *v17;
    v19 = *(v17 - 2);
    v20 = *(v17 - 1);

    v83._countAndFlagsBits = 64;
    v83._object = 0xE100000000000000;
    sub_D66D0(v83);

    v84._countAndFlagsBits = v19;
    v84._object = v20;
    sub_D66D0(v84);

    v22 = v76;
    v21 = v79;
    v80 = v18;
    if ((v74 & 1) == 0)
    {

      v85._countAndFlagsBits = 15392;
      v85._object = 0xE200000000000000;
      sub_D66D0(v85);
      v86._countAndFlagsBits = v76;
      v86._object = v79;
      sub_D66D0(v86);

      v87._countAndFlagsBits = 62;
      v87._object = 0xE100000000000000;
      sub_D66D0(v87);
      v22 = v70;
      v21 = v71;
    }

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v25 = sub_4BAD4(v22, v21);
    v26 = v2[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_61;
    }

    v29 = v24;
    if (v2[3] >= v28)
    {
      if (v23)
      {
        v32 = v80;
        if ((v24 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_4C8BC();
        v32 = v80;
        if ((v29 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_4BF8C(v28, v23);
      v30 = sub_4BAD4(v22, v21);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_66;
      }

      v25 = v30;
      v32 = v80;
      if ((v29 & 1) == 0)
      {
LABEL_28:
        v2[(v25 >> 6) + 8] |= 1 << v25;
        v33 = (v2[6] + 16 * v25);
        *v33 = v22;
        v33[1] = v21;
        *(v2[7] + v25) = v32;

        v34 = v2[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_62;
        }

        v2[2] = v36;
        goto LABEL_17;
      }
    }

    *(v2[7] + v25) = v32;

LABEL_17:
    ++v16;
    v17 += 24;
    v8 = v72;
    if (v78 == v16)
    {

      swift_bridgeObjectRelease_n();

      v6 = v67;
      v4 = v68;
      v5 = v69;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_D6C50();
  __break(1u);
  return result;
}

void *sub_5A084()
{
  v1 = [v0 accountProperties];
  if (!v1)
  {
    goto LABEL_34;
  }

  v2 = v1;
  v3 = sub_D65C0();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    sub_D6980();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  sub_5A398(v29, &v27);
  if (*(&v28 + 1))
  {
    sub_66D4(&qword_125188, &unk_DCA28);
    if (swift_dynamicCast())
    {
      sub_5A408(v29);
      return v26;
    }
  }

  else
  {
    sub_5A408(&v27);
  }

  sub_5A398(v29, &v27);
  if (!*(&v28 + 1))
  {
    sub_5A408(&v27);
    goto LABEL_27;
  }

  sub_66D4(&qword_121498, &qword_D99D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v5 = sub_26BAC(_swiftEmptyArrayStorage);
LABEL_29:
    sub_5A408(v29);
    return v5;
  }

  v5 = sub_26BAC(_swiftEmptyArrayStorage);
  v6 = *(v26 + 16);
  if (!v6)
  {
LABEL_28:

    goto LABEL_29;
  }

  v7 = 0;
  v8 = (v26 + 40);
  while (v7 < *(v26 + 16))
  {
    v11 = *(v8 - 1);
    v10 = *v8;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = v5;
    v13 = sub_4BAD4(v11, v10);
    v15 = v5[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_32;
    }

    v19 = v14;
    if (v5[3] < v18)
    {
      sub_4BF8C(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_4BAD4(v11, v10);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_35;
      }

LABEL_21:
      if (v19)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v24 = v13;
    sub_4C8BC();
    v13 = v24;
    if (v19)
    {
LABEL_13:
      v9 = v13;

      v5 = v27;
      *(*(v27 + 56) + v9) = 1;
      goto LABEL_14;
    }

LABEL_22:
    v5 = v27;
    *(v27 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v21 = (v5[6] + 16 * v13);
    *v21 = v11;
    v21[1] = v10;
    *(v5[7] + v13) = 1;
    v22 = v5[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_33;
    }

    v5[2] = v23;
LABEL_14:
    ++v7;
    v8 += 2;
    if (v6 == v7)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_D6C50();
  __break(1u);
  return result;
}

uint64_t sub_5A398(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_125180, &qword_DCA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5A408(uint64_t a1)
{
  v2 = sub_66D4(&qword_125180, &qword_DCA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5A4AC()
{
  sub_66D4(qword_125190, &qword_E36A0);
  sub_D62E0();
  if (v8)
  {
  }

  sub_D6320();
  v6 = sub_D62E0();
  __chkstk_darwin(v6);
  sub_66D4(&qword_121178, &qword_DB0C0);
  sub_E000();
  sub_5A8D0();
  sub_D60E0();
}

uint64_t sub_5A6B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = *a3;
  v8[6] = a1;
  v8[7] = a2;
  v4 = *(a3 + 2);
  v9 = *(a3 + 1);
  v10[0] = v4;
  *(v10 + 9) = *(a3 + 41);
  v5 = swift_allocObject();
  v6 = *(a3 + 1);
  v5[1] = *a3;
  v5[2] = v6;
  v5[3] = *(a3 + 2);
  *(v5 + 57) = *(a3 + 41);

  sub_10578(&v11, v8);

  sub_5A854(&v9, v8);
  sub_DFAC();
  return sub_D6280();
}

uint64_t sub_5A7A0()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_5A854(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_120EE8, &qword_D8DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_5A8D0()
{
  result = qword_1211D0;
  if (!qword_1211D0)
  {
    sub_6110(&qword_121178, &qword_DB0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1211D0);
  }

  return result;
}

uint64_t sub_5A934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_5A97C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_5A998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_5A9E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5AA88@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = a1[3];
  v24 = a1[2];
  v25 = v3;
  v4 = a1[5];
  v22 = a1[4];
  v23 = v4;
  v27 = v3;
  v28 = v24;
  v29 = v4;
  v30 = v22;
  v5 = sub_D5830();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  v21 = *(v2 + 32);
  v17 = *(v2 + 40);
  v16 = *(v2 + 48);

  sub_5AC70(v12, v13, v14, v15, v21, v17, v16, v25, v24, v23, v22);
  swift_getWitnessTable();
  v18 = *(v6 + 16);
  v18(v11, v9, v5);
  v19 = *(v6 + 8);
  v19(v9, v5);
  v18(v26, v11, v5);
  return (v19)(v11, v5);
}

uint64_t sub_5AC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = __chkstk_darwin(a1);
  v12(v11);
  return sub_D5820();
}

id sub_5ADAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CreateAliasAPIRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CreateAliasAPIRequest(uint64_t a1)
{
  result = qword_125240;
  if (!qword_125240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5AE38()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_5AE80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSRuleListAPIRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSRuleListAPIRequest(uint64_t a1)
{
  result = qword_125430;
  if (!qword_125430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5AF1C(void *a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_125620, &qword_DCC38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_6648(a1, a1[3]);
  sub_5B3C8();
  sub_D6D00();
  v9[1] = a2;
  sub_66D4(&qword_125608, &qword_DCC30);
  sub_5B470(&qword_125628, sub_468A8, &protocol conformance descriptor for <A> [A]);
  sub_D6BF0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_5B0C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C75526C69616DLL && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_5B154(uint64_t a1)
{
  v2 = sub_5B3C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5B190(uint64_t a1)
{
  v2 = sub_5B3C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_5B1CC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_5B214(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_5B214(void *a1)
{
  v3 = sub_66D4(&qword_1255F8, &qword_DCC28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_6648(a1, a1[3]);
  sub_5B3C8();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_66D4(&qword_125608, &qword_DCC30);
    sub_5B470(&qword_125610, sub_5B41C, &protocol conformance descriptor for <A> [A]);
    sub_D6B70();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_67D4(a1);
  }

  return v7;
}

unint64_t sub_5B3C8()
{
  result = qword_125600;
  if (!qword_125600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125600);
  }

  return result;
}

unint64_t sub_5B41C()
{
  result = qword_125618;
  if (!qword_125618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125618);
  }

  return result;
}

uint64_t sub_5B470(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_6110(&qword_125608, &qword_DCC30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5B4FC()
{
  result = qword_125630;
  if (!qword_125630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125630);
  }

  return result;
}

unint64_t sub_5B554()
{
  result = qword_125638;
  if (!qword_125638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125638);
  }

  return result;
}

unint64_t sub_5B5AC()
{
  result = qword_125640;
  if (!qword_125640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125640);
  }

  return result;
}

uint64_t sub_5B610(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_1256B8, &qword_DD0F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_6648(a1, a1[3]);
  sub_5E448();
  sub_D6D00();
  LOBYTE(v16) = *v3;
  LOBYTE(v14[0]) = 0;
  sub_5E49C();
  sub_D6BF0();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v19[0] = *(v3 + 8);
    v19[1] = v9;
    v20[0] = *(v3 + 40);
    *(v20 + 9) = *(v3 + 49);
    v10 = *(v3 + 24);
    v16 = *(v3 + 8);
    v17 = v10;
    v18[0] = *(v3 + 40);
    *(v18 + 9) = *(v3 + 49);
    v22 = 1;
    sub_5E4F0(v19, v14);
    sub_5E528();
    sub_D6BF0();
    v14[0] = v16;
    v14[1] = v17;
    v15[0] = v18[0];
    *(v15 + 9) = *(v18 + 9);
    sub_5E57C(v14);
    v12 = *(v3 + 72);
    v21 = 2;
    sub_66D4(&qword_1256D8, &qword_DD0F8);
    sub_5E5AC(&qword_1256E0, &qword_1256D8, &qword_DD0F8, sub_5E628);
    sub_D6BF0();
    v12 = *(v3 + 80);
    v13 = *(v3 + 88);
    v21 = 3;
    sub_5E67C();
    sub_D6BB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_5B928()
{
  v1 = 0x6E69616D6F64;
  v2 = 0x69747265706F7270;
  if (*v0 != 2)
  {
    v2 = 0x7962726564726FLL;
  }

  if (*v0)
  {
    v1 = 0x7461636964657270;
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

uint64_t sub_5B9A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_5D7C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_5B9DC(uint64_t a1)
{
  v2 = sub_5E448();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5BA18(uint64_t a1)
{
  v2 = sub_5E448();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5BA6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x786F626C69616DLL;
  if (v2 != 1)
  {
    v4 = 0x646165726874;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C69616D65;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x786F626C69616DLL;
  if (*a2 != 1)
  {
    v8 = 0x646165726874;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C69616D65;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_D6C20();
  }

  return v11 & 1;
}

Swift::Int sub_5BB64()
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5BC00(uint64_t a1)
{
  sub_D6680();
}

Swift::Int sub_5BC88(uint64_t a1)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

unint64_t sub_5BD20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5D930(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_5BD50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x786F626C69616DLL;
  if (v2 != 1)
  {
    v5 = 0x646165726874;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C69616D65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_5BE0C(uint64_t a1)
{
  sub_D6680();
}

unint64_t sub_5BEDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5D97C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_5BF0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 29029;
  v5 = 0xE200000000000000;
  v6 = 29799;
  v7 = 0xE900000000000068;
  v8 = 0x6374614D74786574;
  if (v2 != 4)
  {
    v8 = 0x65756C615670616DLL;
    v7 = 0xEA0000000000664FLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 25964;
  if (v2 != 1)
  {
    v9 = 29804;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_5BFF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C615670616DLL;
  }

  else
  {
    v3 = 0x79747265706F7270;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA0000000000664FLL;
  }

  if (*a2)
  {
    v5 = 0x65756C615670616DLL;
  }

  else
  {
    v5 = 0x79747265706F7270;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000664FLL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_D6C20();
  }

  return v8 & 1;
}

Swift::Int sub_5C0A0()
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5C128(uint64_t a1)
{
  sub_D6680();
}

Swift::Int sub_5C19C(uint64_t a1)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5C220@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_113760;
  v8._object = v3;
  v5 = sub_D6AF0(v4, v8);

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

void sub_5C280(uint64_t *a1@<X8>)
{
  v2 = 0x79747265706F7270;
  if (*v1)
  {
    v2 = 0x65756C615670616DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000664FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_5C314(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6544786F624D7369;
  v4 = 0xED0000646574656CLL;
  if (v2 != 1)
  {
    v3 = 1701667182;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0x6544786F624D7369;
  v8 = 0xED0000646574656CLL;
  if (*a2 != 1)
  {
    v7 = 1701667182;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_D6C20();
  }

  return v11 & 1;
}

Swift::Int sub_5C420()
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5C4CC(uint64_t a1)
{
  sub_D6680();
}

Swift::Int sub_5C564(uint64_t a1)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

unint64_t sub_5C60C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5D9C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_5C63C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xED0000646574656CLL;
  v5 = 0x6544786F624D7369;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_5C6F4()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79747265706F7270;
  }
}

uint64_t sub_5C744@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_5DA14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_5C778(uint64_t a1)
{
  v2 = sub_5F408();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5C7B4(uint64_t a1)
{
  v2 = sub_5F408();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5C7F0(void *a1, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v14 = a4;
  v8 = sub_66D4(&qword_1257C8, &qword_DDAA8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  sub_6648(a1, a1[3]);
  sub_5F408();
  sub_D6D00();
  v22 = a2;
  v21 = 0;
  sub_5E628();
  sub_D6BF0();
  if (!v5)
  {
    v12 = v15;
    v20 = HIBYTE(a2) & 1;
    v19 = 1;
    sub_5F45C();
    sub_D6BF0();
    if (v12 > 1u)
    {
      if (v12 == 2)
      {
        v18 = 2;
        sub_D6BC0();
      }
    }

    else if (v12)
    {
      v17 = 2;
      sub_D6BD0();
    }

    else
    {
      v16 = 2;
      sub_D6BE0();
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_5CA24(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_5C7F0(a1, v2 | *v1, *(v1 + 1), *(v1 + 2), v1[24]);
}

uint64_t sub_5CA5C()
{
  v1 = 0x6973736572707865;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_5CAB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_5DB28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_5CAD8(uint64_t a1)
{
  v2 = sub_5ECD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5CB14(uint64_t a1)
{
  v2 = sub_5ECD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5CB50(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_125740, &qword_DD648);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_6648(a1, a1[3]);
  sub_5ECD0();
  sub_D6D00();
  v11[0] = *v3;
  v12 = 0;
  sub_5ED24();
  sub_D6BF0();
  if (!v2)
  {
    *v11 = *(v3 + 8);
    *&v11[9] = *(v3 + 17);
    v12 = 1;
    sub_5ED78();
    sub_D6BF0();
    v9 = *(v3 + 56);
    if (*(v3 + 56))
    {
      v11[0] = 2;
      if (v9 == 1)
      {
        sub_D6BD0();
      }

      else
      {
        sub_D6BC0();
      }
    }

    else
    {
      v11[0] = 2;
      sub_D6BE0();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_5CDA0(void *a1, uint64_t a2, char a3)
{
  v6 = sub_66D4(&qword_125768, &qword_DD650);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_6648(a1, a1[3]);
  sub_5EE20();
  sub_D6D00();
  v12 = a2;
  v11[15] = 0;
  sub_66D4(&qword_125778, &qword_DD658);
  sub_5E5AC(&qword_125780, &qword_125778, &qword_DD658, sub_5ED78);
  sub_D6BF0();
  if (!v3)
  {
    v11[14] = 1;
    sub_D6BD0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_5CF80(void *a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_125670, &qword_DCE00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_6648(a1, a1[3]);
  sub_5DDF8();
  sub_D6D00();
  v9[1] = a2;
  sub_66D4(&qword_125658, &qword_DCDF8);
  sub_5DEA0(&qword_125678, sub_5DF18, &protocol conformance descriptor for <A> [A]);
  sub_D6BF0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_5D10C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_66D4(&qword_1256B0, &qword_DD0E8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_6648(a1, a1[3]);
  sub_5E3F4();
  sub_D6D00();
  v14 = 0;
  sub_D6BC0();
  if (!v5)
  {
    v13 = 1;
    sub_D6BC0();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_5D2A0()
{
  if (*v0)
  {
    return 0x6E69646E65637361;
  }

  else
  {
    return 0x6973736572707865;
  }
}

uint64_t sub_5D2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973736572707865 && a2 == 0xEB00000000736E6FLL;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69646E65637361 && a2 == 0xE900000000000067)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

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

uint64_t sub_5D3D0(uint64_t a1)
{
  v2 = sub_5EE20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5D40C(uint64_t a1)
{
  v2 = sub_5EE20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5D48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x624F6E69616D6F64 && a2 == 0xED0000737463656ALL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_5D51C(uint64_t a1)
{
  v2 = sub_5DDF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5D558(uint64_t a1)
{
  v2 = sub_5DDF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_5D594@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_5DC44(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_5D5DC()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_5D614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

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

uint64_t sub_5D6F8(uint64_t a1)
{
  v2 = sub_5E3F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5D734(uint64_t a1)
{
  v2 = sub_5E3F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5D770@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_5E210(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_5D7C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7962726564726FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_5D930(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113648;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_5D97C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1136B0;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_5D9C8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1137B0;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5DA14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79747265706F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_5DB28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_5DC44(void *a1)
{
  v3 = sub_66D4(&qword_125648, &qword_DCDF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_6648(a1, a1[3]);
  sub_5DDF8();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_66D4(&qword_125658, &qword_DCDF8);
    sub_5DEA0(&qword_125660, sub_5DE4C, &protocol conformance descriptor for <A> [A]);
    sub_D6B70();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_67D4(a1);
  }

  return v7;
}

unint64_t sub_5DDF8()
{
  result = qword_125650;
  if (!qword_125650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125650);
  }

  return result;
}

unint64_t sub_5DE4C()
{
  result = qword_125668;
  if (!qword_125668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125668);
  }

  return result;
}

uint64_t sub_5DEA0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_6110(&qword_125658, &qword_DCDF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5DF18()
{
  result = qword_125680;
  if (!qword_125680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125680);
  }

  return result;
}

uint64_t sub_5DF78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_5DF8C(uint64_t a1, uint64_t a2)
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

uint64_t sub_5DFB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5DFF8(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_5E070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_5E0B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_5E10C()
{
  result = qword_125688;
  if (!qword_125688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125688);
  }

  return result;
}

unint64_t sub_5E164()
{
  result = qword_125690;
  if (!qword_125690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125690);
  }

  return result;
}

unint64_t sub_5E1BC()
{
  result = qword_125698;
  if (!qword_125698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125698);
  }

  return result;
}

uint64_t sub_5E210(void *a1)
{
  v3 = sub_66D4(&qword_1256A0, &qword_DD0E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_6648(a1, a1[3]);
  sub_5E3F4();
  sub_D6CF0();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_D6B40();
    v10 = 1;
    sub_D6B40();
    (*(v4 + 8))(v6, v3);
  }

  sub_67D4(a1);
  return v7;
}

unint64_t sub_5E3F4()
{
  result = qword_1256A8;
  if (!qword_1256A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256A8);
  }

  return result;
}

unint64_t sub_5E448()
{
  result = qword_1256C0;
  if (!qword_1256C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256C0);
  }

  return result;
}

unint64_t sub_5E49C()
{
  result = qword_1256C8;
  if (!qword_1256C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256C8);
  }

  return result;
}

unint64_t sub_5E528()
{
  result = qword_1256D0;
  if (!qword_1256D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256D0);
  }

  return result;
}

uint64_t sub_5E5AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5E628()
{
  result = qword_1256E8;
  if (!qword_1256E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256E8);
  }

  return result;
}

unint64_t sub_5E67C()
{
  result = qword_1256F0;
  if (!qword_1256F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DalRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DalRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_5E840(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_5E854(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_5E89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5E904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_5E948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_5E9C0()
{
  result = qword_1256F8;
  if (!qword_1256F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1256F8);
  }

  return result;
}

unint64_t sub_5EA18()
{
  result = qword_125700;
  if (!qword_125700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125700);
  }

  return result;
}

unint64_t sub_5EA70()
{
  result = qword_125708;
  if (!qword_125708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125708);
  }

  return result;
}

unint64_t sub_5EAC8()
{
  result = qword_125710;
  if (!qword_125710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125710);
  }

  return result;
}

unint64_t sub_5EB20()
{
  result = qword_125718;
  if (!qword_125718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125718);
  }

  return result;
}

unint64_t sub_5EB78()
{
  result = qword_125720;
  if (!qword_125720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125720);
  }

  return result;
}

unint64_t sub_5EBD0()
{
  result = qword_125728;
  if (!qword_125728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125728);
  }

  return result;
}

unint64_t sub_5EC28()
{
  result = qword_125730;
  if (!qword_125730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125730);
  }

  return result;
}

unint64_t sub_5EC7C()
{
  result = qword_125738;
  if (!qword_125738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125738);
  }

  return result;
}

unint64_t sub_5ECD0()
{
  result = qword_125748;
  if (!qword_125748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125748);
  }

  return result;
}

unint64_t sub_5ED24()
{
  result = qword_125750;
  if (!qword_125750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125750);
  }

  return result;
}

unint64_t sub_5ED78()
{
  result = qword_125758;
  if (!qword_125758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125758);
  }

  return result;
}

unint64_t sub_5EDCC()
{
  result = qword_125760;
  if (!qword_125760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125760);
  }

  return result;
}

unint64_t sub_5EE20()
{
  result = qword_125770;
  if (!qword_125770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125770);
  }

  return result;
}

__n128 sub_5EE94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_5EEA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_5EEF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_5EF4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_5EF60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t sub_5EFA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredicateOperator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PredicateOperator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_5F150()
{
  result = qword_125788;
  if (!qword_125788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125788);
  }

  return result;
}

unint64_t sub_5F1A8()
{
  result = qword_125790;
  if (!qword_125790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125790);
  }

  return result;
}

unint64_t sub_5F200()
{
  result = qword_125798;
  if (!qword_125798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125798);
  }

  return result;
}

unint64_t sub_5F258()
{
  result = qword_1257A0;
  if (!qword_1257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257A0);
  }

  return result;
}

unint64_t sub_5F2B0()
{
  result = qword_1257A8;
  if (!qword_1257A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257A8);
  }

  return result;
}

unint64_t sub_5F308()
{
  result = qword_1257B0;
  if (!qword_1257B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257B0);
  }

  return result;
}

unint64_t sub_5F360()
{
  result = qword_1257B8;
  if (!qword_1257B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257B8);
  }

  return result;
}

unint64_t sub_5F3B4()
{
  result = qword_1257C0;
  if (!qword_1257C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257C0);
  }

  return result;
}

unint64_t sub_5F408()
{
  result = qword_1257D0;
  if (!qword_1257D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257D0);
  }

  return result;
}

unint64_t sub_5F45C()
{
  result = qword_1257D8;
  if (!qword_1257D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RuleOperation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RuleOperation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_5F614()
{
  result = qword_1257E0;
  if (!qword_1257E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257E0);
  }

  return result;
}

unint64_t sub_5F66C()
{
  result = qword_1257E8;
  if (!qword_1257E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257E8);
  }

  return result;
}

unint64_t sub_5F6C4()
{
  result = qword_1257F0;
  if (!qword_1257F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257F0);
  }

  return result;
}

unint64_t sub_5F71C()
{
  result = qword_1257F8;
  if (!qword_1257F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1257F8);
  }

  return result;
}

unint64_t sub_5F770()
{
  result = qword_125800;
  if (!qword_125800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125800);
  }

  return result;
}

void sub_5F7FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_5F874(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x697373416C69616DLL;
  }

  else
  {
    v3 = 0x6F706D496C69616DLL;
  }

  if (v2)
  {
    v4 = 0xEA00000000007472;
  }

  else
  {
    v4 = 0xED0000746E617473;
  }

  if (*a2)
  {
    v5 = 0x697373416C69616DLL;
  }

  else
  {
    v5 = 0x6F706D496C69616DLL;
  }

  if (*a2)
  {
    v6 = 0xED0000746E617473;
  }

  else
  {
    v6 = 0xEA00000000007472;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_D6C20();
  }

  return v8 & 1;
}

Swift::Int sub_5F92C()
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5F9C0(uint64_t a1)
{
  sub_D6680();
}

Swift::Int sub_5FA40(uint64_t a1)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_5FAD0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_113818;
  v8._object = v3;
  v5 = sub_D6AF0(v4, v8);

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

void sub_5FB30(uint64_t *a1@<X8>)
{
  v2 = 0x6F706D496C69616DLL;
  if (*v1)
  {
    v2 = 0x697373416C69616DLL;
  }

  v3 = 0xEA00000000007472;
  if (*v1)
  {
    v3 = 0xED0000746E617473;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_5FBF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_5FC80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_5FCF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

__n128 sub_5FDCC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_5FEAC()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel____lazy_storage___mailImportViewModel;
  if (*(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel____lazy_storage___mailImportViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel____lazy_storage___mailImportViewModel);
  }

  else
  {
    v2 = sub_5FF14(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_5FF14(uint64_t a1)
{
  sub_2A5C4(a1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v15);
  v1 = sub_38BFC(v15, v15[3]);
  __chkstk_darwin(v1);
  v3 = (v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v3);
  v5 = *v3;
  v6 = type metadata accessor for MSRepositoryDefault();
  v14[3] = v6;
  v14[4] = &off_1188F0;
  v14[0] = v5;
  _s11descr1123A1O9ViewModelCMa(0);
  v7 = swift_allocObject();
  v8 = sub_38BFC(v14, v6);
  __chkstk_darwin(v8);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_63CEC(*v10, v7);
  sub_67D4(v14);
  sub_67D4(v15);
  return v12;
}

uint64_t sub_60104(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_601F0(v2);
  }

  return result;
}

uint64_t sub_60164(char *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_D5580();
  }

  return result;
}

void *sub_601F0(char a1)
{
  v2 = v1;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v9, v10, "[Unified Settings] enable mail: %{BOOL}d", v11, 8u);
  }

  (*(v5 + 8))(v7, v4);
  [*(v2 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount) setEnabled:a1 & 1 forDataclass:ACAccountDataclassMail];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result mailSettingsStateChangedWithEnabled:a1 & 1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_60434(const char *a1, uint64_t a2, const char **a3)
{
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v10 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_D5320();
  v12 = sub_D68A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, a1, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v14 = sub_78BC4(a2);
  v14();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_60618()
{
  v1 = v0;
  v2 = sub_66D4(&qword_125FB0, &qword_DE288);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v32 - v3;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = [*(v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount) aa_isAccountClass:AAAccountClassPrimary];
  swift_getKeyPath();
  swift_getKeyPath();
  if (v12)
  {
    v34 = 0uLL;

    sub_D5580();
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v13 = sub_6610(v5, qword_137988);
    (*(v6 + 16))(v11, v13, v5);
    v14 = sub_D5320();
    v15 = sub_D68A0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "[Unified Settings] getAllPreferences started", v16, 2u);
    }

    (*(v6 + 8))(v11, v5);
    v17 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository + 24));
    v18 = *(*v17 + 16);
    v19 = *(*v17 + 24);
    v20 = objc_allocWithZone(type metadata accessor for MSPreferencesAPIRequest(0));
    v21 = v18;
    v22 = v19;
    v23 = sub_324C4(v18, v22, 0, 0xF000000000000000);

    v24 = sub_1FD08();
    *&v34 = v24;
    sub_66D4(&qword_125FB8, &qword_DE2D8);
    sub_109A8(&qword_125FC0, &qword_125FB8, &qword_DE2D8, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_6780();
    sub_D55F0();

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    sub_109A8(&qword_125FC8, &qword_125FB0, &qword_DE288, &protocol conformance descriptor for Publishers.MapError<A, B>);
    v25 = sub_D55D0();

    result = (*(v33 + 8))(v4, v2);
    v27 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_refreshPublisher);
    *(v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_refreshPublisher) = v25;
    if (v27)
    {

      sub_D54C0();
    }
  }

  else
  {
    v34 = xmmword_DDC90;

    sub_D5580();
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v28 = sub_6610(v5, qword_137988);
    (*(v6 + 16))(v9, v28, v5);
    v29 = sub_D5320();
    v30 = sub_D68B0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "[Unified Settings] getAllPreferences is unavailable", v31, 2u);
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_60BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();

  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v17._object = 0x80000000000E8950;
  v17._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v17);
  v18._countAndFlagsBits = 2777980912;
  v18._object = 0xA400000000000000;
  sub_D66D0(v18);
  v25._countAndFlagsBits = 2777980912;
  v13._countAndFlagsBits = 0xE000000000000000;
  v19._object = 0x80000000000E8950;
  v19._countAndFlagsBits = 0xD000000000000015;
  v23.value._countAndFlagsBits = 0;
  v23.value._object = 0;
  v6.super.isa = v5;
  v25._object = 0xA400000000000000;
  sub_D4E80(v19, v23, v6, v25, 0, v13);

  v7 = [v4 bundleForClass:ObjCClassFromMetadata];
  v20._countAndFlagsBits = 0xD00000000000001ELL;
  v20._object = 0x80000000000E8970;
  sub_D66D0(v20);
  v21._countAndFlagsBits = 2777980912;
  v21._object = 0xA400000000000000;
  sub_D66D0(v21);
  v26._countAndFlagsBits = 2777980912;
  v14._countAndFlagsBits = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD00000000000001ELL;
  v22._object = 0x80000000000E8970;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v8.super.isa = v7;
  v26._object = 0xA400000000000000;
  sub_D4E80(v22, v24, v8, v26, 0, v14);

  sub_DFAC();
  v9 = sub_D6960();
  v11 = v10;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_60E44(uint64_t a1, uint64_t a2)
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = *(a1 + 24);
    v12 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v8;
    v22[2] = v12;
    v23 = v11 & 1;
    v24 = v10;
    v25 = v9 & 1;
    sub_6780();
    v13 = sub_D6C60();
    v15 = v14;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v16 = sub_6610(v3, qword_137988);
    (*(v4 + 16))(v7, v16, v3);

    v17 = sub_D5320();
    v18 = sub_D68A0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_558F0(v13, v15, v22);
      _os_log_impl(&dword_0, v17, v18, "[Unified Settings] getAllPreferences failed: %s", v19, 0xCu);
      sub_67D4(v20);
    }

    (*(v4 + 8))(v7, v3);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v21[0] = v13;
      v21[1] = v15;
      return sub_D5580();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_61104(uint64_t a1, uint64_t a2)
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = *(a1 + 208);
  v20[12] = *(a1 + 192);
  v20[13] = v7;
  v20[14] = *(a1 + 224);
  v21 = *(a1 + 240);
  v8 = *(a1 + 144);
  v20[8] = *(a1 + 128);
  v20[9] = v8;
  v9 = *(a1 + 176);
  v20[10] = *(a1 + 160);
  v20[11] = v9;
  v10 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v10;
  v11 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v11;
  v12 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v12;
  v13 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v15 = sub_6610(v3, qword_137988);
    (*(v4 + 16))(v6, v15, v3);
    v16 = sub_D5320();
    v17 = sub_D68A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "[Unified Settings] getAllPreferences successful", v18, 2u);
    }

    (*(v4 + 8))(v6, v3);
    sub_61B68(v20);
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = xmmword_DBAE0;
    return sub_D5580();
  }

  return result;
}

id sub_61364(uint64_t a1)
{
  v3 = sub_D50A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_D51D0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v44 - v12;
  result = [*(v1 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount) propertiesForDataclass:ACAccountDataclassMail];
  if (!result)
  {
    return result;
  }

  v14 = result;
  v15 = sub_D6530();

  v16 = *(a1 + 16);
  if (!v16)
  {
LABEL_76:

    return &dword_0 + 1;
  }

  v46 = v6;
  v47 = v3;
  v17 = (a1 + 32);
  v55 = 0x80000000000E8890;
  v56 = 0x80000000000E8860;
  v60 = 0x80000000000E88C0;
  v61 = 0x80000000000E8820;
  v53 = enum case for iCloudMailSettingsFeatureFlag.mailImport(_:);
  v52 = enum case for iCloudMailSettingsFeatureFlag.rules(_:);
  v51 = enum case for iCloudMailSettingsFeatureFlag.mailForwarding(_:);
  v59 = 0x80000000000E88F0;
  v50 = enum case for iCloudMailSettingsFeatureFlag.autoReply(_:);
  v49 = enum case for iCloudMailSettingsFeatureFlag.alias(_:);
  v58 = 0x80000000000E8920;
  v62 = (v8 + 104);
  v18 = (v8 + 8);
  v48 = enum case for iCloudMailSettingsFeatureFlag.mailAssistant(_:);
  v45 = (v4 + 8);
  v57 = 0xD000000000000020;
  while (1)
  {
    v20 = *v17++;
    v19 = v20;
    if (v20 > 2 && v19 != 3 && v19 != 4)
    {
      v23 = v61;

      v22 = 0xD00000000000003ELL;
      goto LABEL_26;
    }

    v21 = sub_D6C20();

    if ((v21 & 1) == 0)
    {
      break;
    }

    if (v19 <= 1)
    {
      if (v19)
      {
        v22 = 0xD000000000000024;
        v23 = v59;
      }

      else
      {
        v22 = v57;
        v23 = v58;
      }
    }

    else
    {
      v22 = 0xD000000000000024;
      if (v19 == 2)
      {
        v23 = v60;
      }

      else if (v19 == 3)
      {
        v22 = 0xD000000000000029;
        v23 = v55;
      }

      else
      {
        v22 = 0xD000000000000025;
        v23 = v56;
      }
    }

LABEL_26:
    v63 = v22;
    v64 = v23;
    sub_D69D0();
    if (*(v15 + 16) && (v26 = sub_4BA90(v65), (v27 & 1) != 0))
    {
      sub_263D4(*(v15 + 56) + 32 * v26, v66);
      sub_4C868(v65);
      if (swift_dynamicCast())
      {
        if (v63 != 1702195828 || v64 != 0xE400000000000000)
        {
          v28 = sub_D6C20();

          goto LABEL_34;
        }
      }
    }

    else
    {
      sub_4C868(v65);
    }

    v28 = 1;
LABEL_34:
    v29 = 0xD000000000000024;
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v29 = 0xD000000000000029;
        v30 = v55;
      }

      else if (v19 == 4)
      {
        v29 = 0xD000000000000025;
        v30 = v56;
      }

      else
      {
        v29 = 0xD00000000000003ELL;
        v30 = v61;
      }
    }

    else if (v19)
    {
      if (v19 == 1)
      {
        v30 = v59;
      }

      else
      {
        v30 = v60;
      }
    }

    else
    {
      v29 = v57;
      v30 = v58;
    }

    v63 = v29;
    v64 = v30;
    sub_D69D0();
    if (!*(v15 + 16) || (v31 = sub_4BA90(v65), (v32 & 1) == 0))
    {
      sub_4C868(v65);
      if ((v28 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_57;
    }

    sub_263D4(*(v15 + 56) + 32 * v31, v66);
    sub_4C868(v65);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if ((v28 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_57;
    }

LABEL_56:
    if ((v63 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_57:
    v35 = *v62;
    if (v19 <= 2)
    {
      v36 = v11;
      if (v19)
      {
        if (v19 != 1)
        {
          v38 = v52;
LABEL_68:
          v35(v36, v38, v7);
          v39 = sub_D51C0();
          (*v18)(v11, v7);
          if ((v39 & 1) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_69;
        }

        v37 = &v68;
      }

      else
      {
        v37 = &v67 + 4;
      }

LABEL_66:
      v38 = *(v37 - 64);
      goto LABEL_68;
    }

    if (v19 == 3)
    {
      v36 = v11;
      v37 = &v68 + 4;
      goto LABEL_66;
    }

    if (v19 == 4)
    {
      v36 = v11;
      v38 = v53;
      goto LABEL_68;
    }

    v40 = v54;
    v35(v54, v48, v7);
    v41 = sub_D51C0();
    (*v18)(v40, v7);
    if ((v41 & 1) == 0 || (sub_D52F0(), v42 = v46, sub_D5090(), sub_D5070(), (*v45)(v42, v47), v43 = sub_D52E0(), , v43 == 2) || (v43 & 1) == 0)
    {
LABEL_77:

      return 0;
    }

LABEL_69:
    if (!--v16)
    {
      goto LABEL_76;
    }
  }

  if (v19 <= 1)
  {
    if (v19)
    {
      v24 = 0xD000000000000024;
      v25 = v59;
    }

    else
    {
      v24 = v57;
      v25 = v58;
    }
  }

  else
  {
    v24 = 0xD000000000000024;
    if (v19 == 2)
    {
      v25 = v60;
    }

    else if (v19 == 3)
    {
      v24 = 0xD000000000000029;
      v25 = v55;
    }

    else
    {
      v24 = 0xD000000000000025;
      v25 = v56;
    }
  }

  v63 = v24;
  v64 = v25;
  sub_D69D0();
  if (*(v15 + 16))
  {
    v33 = sub_4BA90(v65);
    if (v34)
    {
      sub_263D4(*(v15 + 56) + 32 * v33, v66);
      sub_4C868(v65);
      if (!swift_dynamicCast())
      {
        goto LABEL_77;
      }

      goto LABEL_56;
    }
  }

  sub_4C868(v65);
  return 0;
}

uint64_t sub_61B68(uint64_t a1)
{
  v2 = v1;
  v63 = sub_D5340();
  v65 = *(v63 - 8);
  v4 = __chkstk_darwin(v63);
  v64 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v62 - v6;
  v8 = *(a1 + 48);
  v84 = *(a1 + 32);
  v85 = v8;
  v86 = *(a1 + 64);
  v9 = *(a1 + 16);
  v83[0] = *a1;
  v83[1] = v9;
  v89 = v84;
  v90 = v8;
  v91 = v86;
  v87 = v83[0];
  v88 = v9;
  sub_63AE8(v83, &v66);
  sub_B4EAC();
  v11 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v66 = v11;

  v12 = sub_D5580();
  v20 = sub_7F180(v12, v13, v14, v15, v16, v17, v18, v19);
  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v66 = v20;
  *(&v66 + 1) = v22;

  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v23 = v66;

  v24 = HIBYTE(*(&v23 + 1)) & 0xFLL;
  if ((*(&v23 + 1) & 0x2000000000000000) == 0)
  {
    v24 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v25 = v63;
    v26 = sub_6610(v63, qword_137988);
    v27 = v65;
    (*(v65 + 16))(v7, v26, v25);
    v28 = sub_D5320();
    v29 = sub_D68B0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "[Unified Settings] User has no default email", v30, 2u);
      v27 = v65;
    }

    (*(v27 + 8))(v7, v25);
  }

  sub_62404(v83);
  v68 = v89;
  v69 = v90;
  *&v70 = v91;
  v66 = v87;
  v67 = v88;
  sub_D5500();
  v62 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_autoReply);
  v31 = *(a1 + 88);
  v32 = *(a1 + 120);
  v79 = *(a1 + 104);
  v80 = v32;
  v81 = *(a1 + 136);
  v82 = *(a1 + 152);
  v77 = *(a1 + 72);
  v78 = v31;
  if (v31 == 1)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 1;
  }

  else
  {
    v37 = *(&v81 + 1);
    v38 = v82;
    v35 = *(&v80 + 1);
    v36 = v81;
    v34 = *(&v79 + 1);
    v39 = v80;
    v33 = v79;
    sub_3189C(v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82);
  }

  *&v73 = v33;
  *(&v73 + 1) = v34;
  *&v74 = v39;
  *(&v74 + 1) = v35;
  *&v75 = v36;
  *(&v75 + 1) = v37;
  v76 = v38;
  sub_FBD4(&v77, &v66, &qword_125930, &unk_DFB90);
  sub_D5500();
  v40 = *(a1 + 176);
  v73 = *(a1 + 160);
  v74 = v40;
  v42 = *(a1 + 160);
  v41 = *(a1 + 176);
  v75 = *(a1 + 192);
  v66 = v42;
  v67 = v41;
  v68 = *(a1 + 192);
  sub_FBD4(&v73, &v72, &qword_125FA8, &qword_DE088);
  sub_D5500();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v68 = v79;
  v69 = v80;
  v70 = v81;
  v71 = v82;
  v66 = v77;
  v67 = v78;

  sub_D5580();
  v44 = v86;
  v45 = *(*(&v85 + 1) + 16) + 1;
  if (v86)
  {
    v44 = *(v86 + 16);
  }

  v46 = v63;
  v47 = v45 + v44;
  if (__OFADD__(v45, v44))
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v66 = v47;

  sub_D5580();
  v48 = 0;
  if (v78 != 1 && v80 != 1)
  {
    v48 = v79;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v66) = v48 & 1;

  sub_D5580();
  v49 = *(a1 + 208);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v66) = v49 > 0;

  sub_D5580();
  v50 = (v78 != 1) & v77;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v66) = v50;

  sub_D5580();
  v51 = sub_62B14();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v66) = v51 & 1;

  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v66 = v49;

  sub_D5580();
  if ((*(a1 + 240) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxAliasCountAllowed) = *(a1 + 232);
  }

  KeyPath = v64;
  v47 = v65;
  if ((*(a1 + 224) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxRuleCountAllowed) = *(a1 + 216);
  }

  if (qword_120E38 != -1)
  {
    goto LABEL_30;
  }

LABEL_23:
  v52 = sub_6610(v46, qword_137988);
  (*(v47 + 16))(KeyPath, v52, v46);
  sub_26D60(a1, &v66);
  v53 = sub_D5320();
  v54 = sub_D68A0();
  sub_26DBC(a1);
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v66 = v56;
    *v55 = 136642819;
    if (sub_3E318())
    {
      v57 = sub_D6550();
      v59 = v58;
      v47 = v65;
    }

    else
    {
      v57 = 0;
      v59 = 0xE000000000000000;
    }

    v61 = sub_558F0(v57, v59, &v66);

    *(v55 + 4) = v61;
    _os_log_impl(&dword_0, v53, v54, "[Unified Settings] API response: %{sensitive}s", v55, 0xCu);
    sub_67D4(v56);

    return (*(v47 + 8))(v64, v46);
  }

  else
  {

    return (*(v47 + 8))(KeyPath, v46);
  }
}

void sub_62404(uint64_t *a1)
{
  v49 = a1;
  v1 = sub_D5340();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v48 = &v48 - v7;
  v8 = __chkstk_darwin(v6);
  v51 = &v48 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v48 - v11;
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v1, qword_137988);
  v53 = *(v2 + 16);
  v53(v14, v15, v1);
  v16 = sub_D5320();
  v17 = sub_D68D0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "[syncWithLocalStorage] Sync with local storage", v18, 2u);
  }

  v19 = *(v2 + 8);
  v19(v14, v1);
  v20 = [*(v52 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount) aa_childMailAccount];
  if (v20)
  {
    v21 = v20;
    v53(v12, v15, v1);
    v22 = v21;
    v23 = sub_D5320();
    v24 = sub_D68A0();

    v25 = os_log_type_enabled(v23, v24);
    v50 = v19;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = [v22 accountProperties];
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_0, v23, v24, "BEFORE: %@", v26, 0xCu);
      sub_63C7C(v27);
      v19 = v50;
    }

    v19(v12, v1);
    v29 = v49;
    if (sub_586D0(v49[2], v49[3]) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_D5570(), , , v30 = sub_58C84(aBlock, v55), , (v30) || (sub_58EAC(v29[4], v29[5], v29[6]))
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_59A1C(v29);
    }

    v53(v51, v15, v1);
    v32 = v22;
    v33 = sub_D5320();
    v34 = sub_D68A0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = [v32 accountProperties];
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&dword_0, v33, v34, "AFTER: %@", v35, 0xCu);
      sub_63C7C(v36);
    }

    v50(v51, v1);
    if ((v31 & 1) == 0)
    {
      goto LABEL_19;
    }

    v38 = v48;
    v53(v48, v15, v1);
    v39 = sub_D5320();
    v40 = sub_D68D0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "There are new changes, saving them...", v41, 2u);
    }

    v50(v38, v1);
    v42 = [objc_opt_self() defaultStore];
    if (v42)
    {
      v43 = v42;
      v58 = sub_63658;
      v59 = 0;
      aBlock = _NSConcreteStackBlock;
      v55 = 1107296256;
      v56 = sub_5F7FC;
      v57 = &unk_117768;
      v44 = _Block_copy(&aBlock);
      [v43 saveVerifiedAccount:v32 withCompletionHandler:v44];
      _Block_release(v44);

LABEL_19:
      return;
    }

    __break(1u);
  }

  else
  {
    v53(v5, v15, v1);
    v45 = sub_D5320();
    v46 = sub_D68B0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "[syncWithLocalStorage] Unable to get iCloud Mail ACAccount", v47, 2u);
    }

    v19(v5, v1);
  }
}

uint64_t sub_62B14()
{
  v1 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount);
  v2 = sub_D65C0();
  v3 = [v1 propertiesForDataclass:v2];

  if (v3)
  {
    v4 = sub_D6530();

    sub_D69D0();
    if (*(v4 + 16) && (v5 = sub_4BA90(v8), (v6 & 1) != 0))
    {
      sub_263D4(*(v4 + 56) + 32 * v5, v9);
      sub_4C868(v8);

      if (swift_dynamicCast())
      {
        return 19;
      }
    }

    else
    {

      sub_4C868(v8);
    }
  }

  return 0;
}

uint64_t sub_62C64()
{
  sub_64170(v0 + 16);
  v1 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isDefaultEmailPresented;
  v2 = sub_66D4(&qword_121068, &qword_DBEE0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isMailForwardingPresented, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isAutoReplyPresented, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isAliasesPresented, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isRulesPresented, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isUnsubscribePresented, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isICloudMailEnabled, v2);
  v4 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__state;
  v5 = sub_66D4(&qword_125FD0, &qword_DE448);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__addressessCount;
  v7 = sub_66D4(&qword_125FD8, &unk_DFB70);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v9 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__emails;
  v10 = sub_66D4(&qword_125FE0, &unk_DFB80);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__defaultEmail;
  v12 = sub_66D4(&qword_121948, &unk_DC5C0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isAutoReplyEnabled, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isiCloudMailRulesEnabled, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isMailForwardingEnabled, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isEndToEndEncryptionEnabled, v2);

  v8(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__ruleCount, v7);
  v13 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__serverPreferences;
  v14 = sub_66D4(&qword_125FE8, qword_DE450);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isCustomDomainEnabled, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isCustomDomainSpinning, v2);

  v15 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__scrollTarget;
  v16 = sub_66D4(&qword_125FF0, &unk_DFB60);
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v15, v16);
  v17(v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__shouldScrollTo, v16);

  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository));

  return v0;
}

uint64_t sub_6311C()
{
  sub_62C64();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s9ViewModelCMa_3(uint64_t a1)
{
  result = qword_125900;
  if (!qword_125900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_631C8(uint64_t a1)
{
  sub_116AC(319, &qword_120ED8, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_116AC(319, &qword_125910, &_s9ViewStateON);
    if (v2 <= 0x3F)
    {
      sub_116AC(319, &qword_125918, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        sub_6158(319, &qword_125920, &qword_121498, &qword_D99D0);
        if (v4 <= 0x3F)
        {
          sub_116AC(319, &qword_121638, &type metadata for String);
          if (v5 <= 0x3F)
          {
            sub_6158(319, &qword_125928, &qword_125930, &unk_DFB90);
            if (v6 <= 0x3F)
            {
              sub_6158(319, &qword_125938, &unk_125940, &qword_DDCE8);
              if (v7 <= 0x3F)
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

uint64_t sub_634EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_63504(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_63560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_635C4()
{
  result = qword_125FA0;
  if (!qword_125FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_125FA0);
  }

  return result;
}

uint64_t sub_63618@<X0>(uint64_t *a2@<X8>)
{
  _s9ViewModelCMa_3(0);
  result = sub_D54D0();
  *a2 = result;
  return result;
}

uint64_t sub_63658(uint64_t a1, uint64_t a2)
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v8 = sub_6610(v3, qword_137988);
    (*(v4 + 16))(v7, v8, v3);
    swift_errorRetain();
    v9 = sub_D5320();
    v10 = sub_D68B0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_D6C60();
      v15 = sub_558F0(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v9, v10, "Unable to sync iCloud Mail Account with local persistent storage: %s", v11, 0xCu);
      sub_67D4(v12);
    }

    else
    {
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

void *sub_638A0(void *result)
{
  if (result <= 4u)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_D5580();
  }

  if (result > 7u)
  {
    return result;
  }

  if (result == 5)
  {

    return sub_603EC();
  }

  else
  {
    if (result != 6)
    {
      sub_5FEAC();
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_D5580();
    }

    return sub_6041C();
  }
}

uint64_t sub_63C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_63C7C(uint64_t a1)
{
  v2 = sub_66D4(&qword_1223E8, &qword_DA4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_63CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_121070, &qword_DAFE0);
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v27 = &v26 - v5;
  v6 = sub_66D4(&qword_122598, &qword_DA688);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_66D4(&qword_121068, &qword_DBEE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v32[3] = type metadata accessor for MSRepositoryDefault();
  v32[4] = &off_1188F0;
  v32[0] = a1;
  *(a2 + 56) = &_swiftEmptySetSingleton;
  v14 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportStartPresented;
  LOBYTE(v30) = 0;
  sub_D5530();
  v15 = *(v11 + 32);
  v15(a2 + v14, v13, v10);
  v16 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportStartPresentedDetail;
  LOBYTE(v30) = 0;
  sub_D5530();
  v15(a2 + v16, v13, v10);
  v17 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportSuccessPresented;
  LOBYTE(v30) = 0;
  sub_D5530();
  v15(a2 + v17, v13, v10);
  v18 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportListActive;
  LOBYTE(v30) = 0;
  sub_D5530();
  v15(a2 + v18, v13, v10);
  v19 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isLoading;
  LOBYTE(v30) = 1;
  sub_D5530();
  v15(a2 + v19, v13, v10);
  v20 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__importList;
  *&v30 = _swiftEmptyArrayStorage;
  sub_66D4(&qword_122178, &qword_DA110);
  sub_D5530();
  v21 = *(v7 + 32);
  v21(a2 + v20, v9, v6);
  v22 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__importHistory;
  *&v30 = _swiftEmptyArrayStorage;
  sub_D5530();
  v21(a2 + v22, v9, v6);
  v23 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__error;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  v24 = v27;
  sub_D5530();
  (*(v28 + 32))(a2 + v23, v24, v29);
  *(a2 + OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel_refreshPublisher) = 0;
  sub_2A5C4(v32, a2 + 16);
  sub_20750(0);
  sub_67D4(v32);
  return a2;
}

uint64_t sub_64100()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_64198()
{
  if (qword_120E40 != -1)
  {
    swift_once();
  }

  v0 = qword_1379A0;
  v1 = qword_1379A0;
  return v0;
}

id sub_6420C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudMailValidationRulesAPIRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for iCloudMailValidationRulesAPIRequest(uint64_t a1)
{
  result = qword_126020;
  if (!qword_126020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_64298(uint64_t a1, uint64_t a2)
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

uint64_t sub_642BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_64304(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_64378()
{
  v1 = *v0;
  v2 = 1701606770;
  v3 = 0x646F43726F727265;
  v4 = 0x73654D726F727265;
  if (v1 != 3)
  {
    v4 = 0x614D646C756F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74697243656C7572;
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

uint64_t sub_64428@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_64664(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_6445C(uint64_t a1)
{
  v2 = sub_64BE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_64498(uint64_t a1)
{
  v2 = sub_64BE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_644D4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_64828(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_6453C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_645C0(uint64_t a1)
{
  v2 = sub_64E20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_645FC(uint64_t a1)
{
  v2 = sub_64E20();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_64638@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_64C9C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_64664(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701606770 && a2 == 0xE400000000000000;
  if (v3 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74697243656C7572 && a2 == 0xEC00000061697265 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614D646C756F6873 && a2 == 0xEB00000000686374)
  {

    return 4;
  }

  else
  {
    v6 = sub_D6C20();

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

uint64_t sub_64828@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_1261E8, &qword_DE588);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_6648(a1, a1[3]);
  sub_64BE0();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_D6B40();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = sub_D6B40();
  v29 = v12;
  v26 = v11;
  LOBYTE(v36[0]) = 2;
  v25 = sub_D6B40();
  v28 = v13;
  LOBYTE(v36[0]) = 3;
  v24 = sub_D6B40();
  v27 = v14;
  v39 = 4;
  v15 = sub_D6B50();
  (*(v6 + 8))(v8, v5);
  v38 = v15 & 1;
  v17 = v29;
  v16 = v30;
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v18 = v26;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  v19 = v28;
  *&v33 = v25;
  *(&v33 + 1) = v28;
  v20 = v27;
  *&v34 = v24;
  *(&v34 + 1) = v27;
  v35 = v38;
  sub_64C34(&v31, v36);
  sub_67D4(a1);
  v36[0] = v9;
  v36[1] = v16;
  v36[2] = v18;
  v36[3] = v17;
  v36[4] = v25;
  v36[5] = v19;
  v36[6] = v24;
  v36[7] = v20;
  v37 = v38;
  result = sub_64C6C(v36);
  v22 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v22;
  *(a2 + 64) = v35;
  v23 = v32;
  *a2 = v31;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_64BE0()
{
  result = qword_1261F0;
  if (!qword_1261F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1261F0);
  }

  return result;
}

void *sub_64C9C(void *a1)
{
  v3 = sub_66D4(&qword_1261F8, &qword_DE590);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_6648(a1, a1[3]);
  sub_64E20();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_66D4(&qword_126208, &qword_DE598);
    sub_64E74();
    sub_D6B70();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_67D4(a1);
  }

  return v7;
}

unint64_t sub_64E20()
{
  result = qword_126200;
  if (!qword_126200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126200);
  }

  return result;
}

unint64_t sub_64E74()
{
  result = qword_126210;
  if (!qword_126210)
  {
    sub_6110(&qword_126208, &qword_DE598);
    sub_64EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126210);
  }

  return result;
}

unint64_t sub_64EF8()
{
  result = qword_126218;
  if (!qword_126218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126218);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ValidationRule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ValidationRule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_650B0()
{
  result = qword_126220;
  if (!qword_126220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126220);
  }

  return result;
}

unint64_t sub_65108()
{
  result = qword_126228;
  if (!qword_126228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126228);
  }

  return result;
}

unint64_t sub_65160()
{
  result = qword_126230;
  if (!qword_126230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126230);
  }

  return result;
}

unint64_t sub_651B8()
{
  result = qword_126238;
  if (!qword_126238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126238);
  }

  return result;
}

unint64_t sub_65210()
{
  result = qword_126240;
  if (!qword_126240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126240);
  }

  return result;
}

unint64_t sub_65268()
{
  result = qword_126248;
  if (!qword_126248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126248);
  }

  return result;
}

uint64_t sub_652D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_123700, qword_DE7D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_653B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_123700, qword_DE7D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MAPreferencesView(uint64_t a1)
{
  result = qword_1262B8;
  if (!qword_1262B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_654C4(uint64_t a1)
{
  sub_65560(319);
  if (v1 <= 0x3F)
  {
    sub_655B8();
    if (v2 <= 0x3F)
    {
      sub_65608(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_65560(uint64_t a1)
{
  if (!qword_123770)
  {
    sub_D5710();
    v1 = sub_D5730();
    if (!v2)
    {
      atomic_store(v1, &qword_123770);
    }
  }
}

void sub_655B8()
{
  if (!qword_1262C8)
  {
    v0 = sub_D5730();
    if (!v1)
    {
      atomic_store(v0, &qword_1262C8);
    }
  }
}

void sub_65608(uint64_t a1)
{
  if (!qword_1262D0)
  {
    _s9ViewModelCMa_3(255);
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3, &unk_DDE0C);
    v1 = sub_D5890();
    if (!v2)
    {
      atomic_store(v1, &qword_1262D0);
    }
  }
}

uint64_t sub_656B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v47 = a1;
  v48 = a3;
  v4 = sub_D5910();
  v44 = *(v4 - 8);
  v45 = v4;
  v46 = *(v44 + 64);
  __chkstk_darwin(v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MAPreferencesView(0);
  v42 = *(v6 - 8);
  v41 = *(v42 + 64);
  __chkstk_darwin(v6);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_66D4(&qword_126310, &qword_DE870);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v39 = sub_66D4(&qword_126318, &qword_DE878);
  v12 = *(v39 - 8);
  __chkstk_darwin(v39);
  v14 = &v37 - v13;
  v38 = sub_66D4(&qword_126320, &qword_DE880);
  __chkstk_darwin(v38);
  v16 = &v37 - v15;
  v49 = a2;
  sub_66D4(&qword_126328, &qword_DE888);
  sub_109A8(&qword_126330, &qword_126328, &qword_DE888, &protocol conformance descriptor for TupleView<A>);
  sub_D5E60();
  v17 = sub_109A8(&qword_126338, &qword_126310, &qword_DE870, &protocol conformance descriptor for List<A, B>);
  sub_D5F90();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v52._countAndFlagsBits = 2777980912;
  v52._object = 0xA400000000000000;
  v53._countAndFlagsBits = 0x5241435F4C49414DLL;
  v53._object = 0xEF454C5449545F44;
  sub_D66D0(v53);
  v54._countAndFlagsBits = 2777980912;
  v54._object = 0xA400000000000000;
  sub_D66D0(v54);
  v36._countAndFlagsBits = 0xE000000000000000;
  v55._countAndFlagsBits = 0x5241435F4C49414DLL;
  v55._object = 0xEF454C5449545F44;
  v56.value._countAndFlagsBits = 0;
  v56.value._object = 0;
  v20.super.isa = v19;
  v21 = sub_D4E80(v55, v56, v20, v52, 0, v36);
  v23 = v22;

  v52._countAndFlagsBits = v21;
  v52._object = v23;
  v50 = v8;
  v51 = v17;
  swift_getOpaqueTypeConformance2();
  sub_DFAC();
  v24 = v39;
  sub_D6040();

  (*(v12 + 8))(v14, v24);
  v25 = v37;
  v26 = &v16[*(v38 + 36)];
  *v26 = sub_6829C;
  v26[1] = 0;
  v26[2] = 0;
  v26[3] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v27 = v40;
  sub_68C84(v25, v40);
  v29 = v43;
  v28 = v44;
  v30 = v45;
  (*(v44 + 16))(v43, v47, v45);
  v31 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v32 = v28;
  v33 = (v41 + *(v28 + 80) + v31) & ~*(v28 + 80);
  v34 = swift_allocObject();
  sub_68CF8(v27, v34 + v31);
  (*(v32 + 32))(v34 + v33, v29, v30);
  sub_66D4(&unk_125940, &qword_DDCE8);
  sub_70FD8();
  sub_7112C();
  sub_D6150();

  return sub_FC3C(v16, &qword_126320, &qword_DE880);
}

uint64_t sub_65D08@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v234 = a2;
  v211 = sub_66D4(&qword_126360, &qword_DE8E0);
  __chkstk_darwin(v211);
  v197 = &v177 - v3;
  v193 = sub_66D4(&qword_126368, &qword_DE8E8);
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v179 = &v177 - v4;
  v5 = sub_66D4(&qword_126370, &qword_DE8F0);
  v6 = __chkstk_darwin(v5 - 8);
  v196 = &v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v212 = &v177 - v8;
  v191 = sub_66D4(&qword_126378, &qword_DE8F8);
  v198 = *(v191 - 8);
  __chkstk_darwin(v191);
  v178 = &v177 - v9;
  v10 = sub_66D4(&qword_126380, &qword_DE900);
  v11 = __chkstk_darwin(v10 - 8);
  v195 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v210 = &v177 - v13;
  v219 = sub_66D4(&qword_126388, &qword_DE908);
  v233 = *(v219 - 8);
  v14 = __chkstk_darwin(v219);
  v194 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v218 = &v177 - v16;
  v189 = sub_66D4(&qword_126390, &qword_DE910);
  v201 = *(v189 - 8);
  __chkstk_darwin(v189);
  v182 = &v177 - v17;
  v18 = sub_66D4(&qword_126398, &qword_DE918);
  v19 = __chkstk_darwin(v18 - 8);
  v209 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v221 = &v177 - v21;
  v200 = sub_66D4(&qword_1263A0, &qword_DE920);
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v181 = &v177 - v22;
  v203 = sub_D51D0();
  v213 = *(v203 - 1);
  v23 = __chkstk_darwin(v203);
  v190 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v188 = &v177 - v25;
  v26 = sub_66D4(&qword_1263A8, &qword_DE928);
  v27 = __chkstk_darwin(v26 - 8);
  v215 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v220 = &v177 - v29;
  v187 = sub_66D4(&qword_1263B0, &qword_DE930);
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v180 = &v177 - v30;
  v31 = sub_66D4(&qword_1263B8, &qword_DE938);
  v32 = __chkstk_darwin(v31 - 8);
  v214 = &v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v217 = &v177 - v34;
  v208 = sub_66D4(&qword_1263C0, &qword_DE940);
  v222 = *(v208 - 8);
  v35 = __chkstk_darwin(v208);
  v204 = &v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v216 = &v177 - v37;
  v205 = sub_66D4(&qword_1263C8, &qword_DE948);
  __chkstk_darwin(v205);
  v206 = &v177 - v38;
  v231 = sub_66D4(&qword_1263D0, &qword_DE950);
  __chkstk_darwin(v231);
  v207 = &v177 - v39;
  v202 = sub_66D4(&qword_1263D8, &qword_DE958);
  v185 = *(v202 - 8);
  __chkstk_darwin(v202);
  v184 = &v177 - v40;
  v223 = sub_66D4(&qword_1263E0, &qword_DE960);
  __chkstk_darwin(v223);
  v225 = &v177 - v41;
  v42 = sub_66D4(&qword_1263E8, &qword_DE968);
  __chkstk_darwin(v42);
  v44 = &v177 - v43;
  v224 = sub_66D4(&qword_1263F0, &unk_DE970);
  __chkstk_darwin(v224);
  v46 = &v177 - v45;
  v47 = sub_66D4(&qword_1263F8, &unk_E3D20);
  v183 = *(v47 - 8);
  __chkstk_darwin(v47);
  v49 = &v177 - v48;
  v50 = sub_66D4(&qword_126400, &qword_DE980);
  v51 = __chkstk_darwin(v50 - 8);
  v232 = &v177 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v228 = &v177 - v53;
  v54 = sub_66D4(&qword_126408, &qword_DE988);
  v229 = *(v54 - 8);
  v230 = v54;
  v55 = __chkstk_darwin(v54);
  v227 = &v177 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v58 = &v177 - v57;
  v235 = a1;
  sub_66D4(&qword_126410, &qword_DE990);
  sub_109A8(&qword_126418, &qword_126410, &qword_DE990, &protocol conformance descriptor for TupleView<A>);
  v226 = v58;
  sub_D6390();
  v59 = *(a1 + *(type metadata accessor for MAPreferencesView(0) + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  object = v236._object;
  if (v236._object)
  {
    if (v236._object == &dword_0 + 1)
    {
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v65 = objc_opt_self();
      v66 = [v65 bundleForClass:ObjCClassFromMetadata];
      v67 = v59;
      v236._countAndFlagsBits = 2777980912;
      v236._object = 0xA400000000000000;
      v244._countAndFlagsBits = 0xD000000000000013;
      v244._object = 0x80000000000E8AB0;
      sub_D66D0(v244);
      v245._countAndFlagsBits = 2777980912;
      v245._object = 0xA400000000000000;
      sub_D66D0(v245);
      v174._countAndFlagsBits = 0xE000000000000000;
      v246._countAndFlagsBits = 0xD000000000000013;
      v246._object = 0x80000000000E8AB0;
      v256.value._countAndFlagsBits = 0;
      v256.value._object = 0;
      v68.super.isa = v66;
      v69 = sub_D4E80(v246, v256, v68, v236, 0, v174);
      v71 = v70;

      v236._countAndFlagsBits = v69;
      v236._object = v71;
      __chkstk_darwin(v72);
      sub_66D4(&qword_126420, &qword_DE9E0);
      sub_109A8(&qword_126428, &qword_126420, &qword_DE9E0, &protocol conformance descriptor for TupleView<A>);
      v73 = sub_DFAC();
      sub_D6360();
      v202 = v67;
      v74 = sub_61364(&off_113868);
      v185 = ObjCClassFromMetadata;
      v177 = a1;
      v184 = v65;
      v183 = v73;
      if (v74)
      {
        v75 = [v65 bundleForClass:ObjCClassFromMetadata];
        v236._countAndFlagsBits = 2777980912;
        v236._object = 0xA400000000000000;
        v247._countAndFlagsBits = 0xD00000000000001DLL;
        v247._object = 0x80000000000E8B40;
        sub_D66D0(v247);
        v248._countAndFlagsBits = 2777980912;
        v248._object = 0xA400000000000000;
        sub_D66D0(v248);
        v175._countAndFlagsBits = 0xE000000000000000;
        v249._countAndFlagsBits = 0xD00000000000001DLL;
        v249._object = 0x80000000000E8B40;
        v257.value._countAndFlagsBits = 0;
        v257.value._object = 0;
        v76.super.isa = v75;
        v77 = sub_D4E80(v249, v257, v76, v236, 0, v175);
        v79 = v78;

        v236._countAndFlagsBits = v77;
        v236._object = v79;
        __chkstk_darwin(v80);
        sub_66D4(&qword_126508, &qword_DEA98);
        sub_109A8(&qword_126510, &qword_126508, &qword_DEA98, &protocol conformance descriptor for TupleView<A>);
        v81 = v180;
        sub_D6360();
        v82 = v186;
        v83 = v217;
        v84 = v81;
        v85 = v187;
        (*(v186 + 32))(v217, v84, v187);
        v86 = 0;
        v87 = v189;
      }

      else
      {
        v86 = 1;
        v83 = v217;
        v87 = v189;
        v85 = v187;
        v82 = v186;
      }

      v95 = 1;
      (*(v82 + 56))(v83, v86, 1, v85);
      v96 = v213;
      v97 = v213[13];
      v98 = v188;
      v99 = v203;
      v97(v188, enum case for iCloudMailSettingsFeatureFlag.mailboxSection(_:), v203);
      v100 = sub_D51C0();
      v101 = v96[1];
      v213 = v96 + 1;
      v102 = v101(v98, v99);
      if (v100)
      {
        __chkstk_darwin(v102);
        sub_66D4(&qword_1264F8, &qword_DEA90);
        sub_109A8(&qword_126500, &qword_1264F8, &qword_DEA90, &protocol conformance descriptor for TupleView<A>);
        v103 = v181;
        sub_D6390();
        (*(v199 + 32))(v220, v103, v200);
        v95 = 0;
      }

      v104 = 1;
      (*(v199 + 56))(v220, v95, 1, v200);
      v105 = sub_61364(&off_113890);
      v106 = v185;
      if (v105)
      {
        __chkstk_darwin(v105);
        sub_66D4(&qword_1264E8, &qword_DEA88);
        sub_109A8(&qword_1264F0, &qword_1264E8, &qword_DEA88, &protocol conformance descriptor for IDView<A, B>);
        v107 = v182;
        sub_D6390();
        (*(v201 + 32))(v221, v107, v87);
        v104 = 0;
      }

      v108 = 1;
      v109 = (*(v201 + 56))(v221, v104, 1, v87);
      __chkstk_darwin(v109);
      v110 = [v184 bundleForClass:v106];
      v236._countAndFlagsBits = 2777980912;
      v236._object = 0xA400000000000000;
      v250._countAndFlagsBits = 0xD00000000000001CLL;
      v250._object = 0x80000000000E8AD0;
      sub_D66D0(v250);
      v251._countAndFlagsBits = 2777980912;
      v251._object = 0xA400000000000000;
      sub_D66D0(v251);
      v175._countAndFlagsBits = 0xE000000000000000;
      v252._countAndFlagsBits = 0xD00000000000001CLL;
      v252._object = 0x80000000000E8AD0;
      v258.value._countAndFlagsBits = 0;
      v258.value._object = 0;
      v111.super.isa = v110;
      v112 = sub_D4E80(v252, v258, v111, v236, 0, v175);
      v114 = v113;

      v236._countAndFlagsBits = v112;
      v236._object = v114;
      v236._countAndFlagsBits = sub_D5F50();
      v236._object = v115;
      v237 = v116 & 1;
      v238 = v117;
      sub_66D4(&qword_126430, &qword_DE9E8);
      sub_7124C();
      sub_D6370();
      v118 = v190;
      v119 = v203;
      v97(v190, enum case for iCloudMailSettingsFeatureFlag.customEmailDomain(_:), v203);
      LOBYTE(v110) = sub_D51C0();
      v101(v118, v119);
      v120 = v210;
      v121 = v193;
      v122 = v192;
      v123 = v191;
      if (v110)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_D5570();

        if (LOBYTE(v236._countAndFlagsBits) == 1)
        {
          v213 = &v177;
          __chkstk_darwin(v124);
          v203 = &v177 - 4;
          v125 = [v184 bundleForClass:v185];
          v236._countAndFlagsBits = 2777980912;
          v236._object = 0xA400000000000000;
          v253._object = 0x80000000000E8B20;
          v253._countAndFlagsBits = 0xD000000000000012;
          sub_D66D0(v253);
          v254._countAndFlagsBits = 2777980912;
          v254._object = 0xA400000000000000;
          sub_D66D0(v254);
          v176._countAndFlagsBits = 0xE000000000000000;
          v255._object = 0x80000000000E8B20;
          v255._countAndFlagsBits = 0xD000000000000012;
          v259.value._countAndFlagsBits = 0;
          v259.value._object = 0;
          v126.super.isa = v125;
          v127 = sub_D4E80(v255, v259, v126, v236, 0, v176);
          v129 = v128;

          v236._countAndFlagsBits = v127;
          v236._object = v129;
          v240 = sub_D5F50();
          v241 = v130;
          v242 = v131 & 1;
          v243 = v132;
          sub_6FA00();
          sub_D5B60();
          v236._countAndFlagsBits = sub_D5F40();
          v236._object = v133;
          v237 = v134 & 1;
          v238 = v135;
          v239 = 256;
          sub_66D4(&qword_1264C8, &unk_DEA70);
          sub_66D4(&qword_1212E8, &qword_D8F60);
          sub_716A4();
          sub_4ABC8();
          v136 = v178;
          sub_D6380();
          (*(v198 + 32))(v120, v136, v123);
          v108 = 0;
        }
      }

      v137 = 1;
      (*(v198 + 56))(v120, v108, 1, v123);
      if (os_variant_has_internal_content())
      {
        v138 = sub_61364(&off_1138B8);
        if (v138)
        {
          __chkstk_darwin(v138);
          sub_D5B50();
          v236._countAndFlagsBits = sub_D5F40();
          v236._object = v139;
          v237 = v140 & 1;
          v238 = v141;
          sub_66D4(&qword_1264B8, &qword_DEA20);
          sub_109A8(&qword_1264C0, &qword_1264B8, &qword_DEA20, &protocol conformance descriptor for NavigationLink<A, B>);
          v142 = v179;
          sub_D6370();
          (*(v122 + 32))(v212, v142, v121);
          v137 = 0;
        }
      }

      v143 = v212;
      (*(v122 + 56))(v212, v137, 1, v121);
      v144 = *(v222 + 16);
      v145 = v204;
      v146 = v208;
      v144(v204, v216, v208);
      sub_FBD4(v217, v214, &qword_1263B8, &qword_DE938);
      sub_FBD4(v220, v215, &qword_1263A8, &qword_DE928);
      sub_FBD4(v221, v209, &qword_126398, &qword_DE918);
      v147 = *(v233 + 16);
      v148 = v194;
      v147(v194, v218, v219);
      v149 = v120;
      v150 = v195;
      sub_FBD4(v149, v195, &qword_126380, &qword_DE900);
      v151 = v143;
      v152 = v196;
      sub_FBD4(v151, v196, &qword_126370, &qword_DE8F0);
      v153 = v197;
      v144(v197, v145, v146);
      v154 = sub_66D4(&qword_126480, &qword_DEA10);
      sub_FBD4(v214, v153 + v154[12], &qword_1263B8, &qword_DE938);
      sub_FBD4(v215, v153 + v154[16], &qword_1263A8, &qword_DE928);
      v155 = v209;
      sub_FBD4(v209, v153 + v154[20], &qword_126398, &qword_DE918);
      v156 = v219;
      v147((v153 + v154[24]), v148, v219);
      sub_FBD4(v150, v153 + v154[28], &qword_126380, &qword_DE900);
      sub_FBD4(v152, v153 + v154[32], &qword_126370, &qword_DE8F0);
      sub_FC3C(v152, &qword_126370, &qword_DE8F0);
      sub_FC3C(v150, &qword_126380, &qword_DE900);
      v157 = *(v233 + 8);
      v233 += 8;
      v213 = v157;
      (v157)(v148, v156);
      sub_FC3C(v155, &qword_126398, &qword_DE918);
      sub_FC3C(v215, &qword_1263A8, &qword_DE928);
      sub_FC3C(v214, &qword_1263B8, &qword_DE938);
      v158 = *(v222 + 8);
      v222 += 8;
      v159 = v208;
      v158(v204, v208);
      sub_FBD4(v153, v206, &qword_126360, &qword_DE8E0);
      swift_storeEnumTagMultiPayload();
      sub_109A8(&qword_126488, &qword_126360, &qword_DE8E0, &protocol conformance descriptor for TupleView<A>);
      v160 = v207;
      sub_D5BF0();
      sub_FBD4(v160, v225, &qword_1263D0, &qword_DE950);
      swift_storeEnumTagMultiPayload();
      sub_713E8();
      sub_7158C();
      v161 = v228;
      sub_D5BF0();
      sub_FC3C(v160, &qword_1263D0, &qword_DE950);
      v62 = v161;
      sub_FC3C(v153, &qword_126360, &qword_DE8E0);
      sub_FC3C(v212, &qword_126370, &qword_DE8F0);
      sub_FC3C(v210, &qword_126380, &qword_DE900);
      (v213)(v218, v219);
      sub_FC3C(v221, &qword_126398, &qword_DE918);
      sub_FC3C(v220, &qword_1263A8, &qword_DE928);
      sub_FC3C(v217, &qword_1263B8, &qword_DE938);
      v158(v216, v159);
    }

    else
    {
      v62 = v228;
      if (v236._object == &dword_0 + 2)
      {
        swift_storeEnumTagMultiPayload();
        sub_109A8(&qword_126488, &qword_126360, &qword_DE8E0, &protocol conformance descriptor for TupleView<A>);
        v63 = v207;
        sub_D5BF0();
        sub_FBD4(v63, v225, &qword_1263D0, &qword_DE950);
        swift_storeEnumTagMultiPayload();
        sub_713E8();
        sub_7158C();
        sub_D5BF0();
        sub_FC3C(v63, &qword_1263D0, &qword_DE950);
      }

      else
      {
        countAndFlagsBits = v236._countAndFlagsBits;
        __chkstk_darwin(v60);
        v90 = v184;
        sub_D6390();
        sub_717A8(countAndFlagsBits, object);
        v91 = v185;
        v92 = v62;
        v93 = v202;
        (*(v185 + 16))(v44, v90, v202);
        swift_storeEnumTagMultiPayload();
        sub_71474();
        sub_71504();
        sub_D5BF0();
        sub_FBD4(v46, v225, &qword_1263F0, &unk_DE970);
        swift_storeEnumTagMultiPayload();
        sub_713E8();
        sub_7158C();
        sub_D5BF0();
        sub_FC3C(v46, &qword_1263F0, &unk_DE970);
        v94 = v93;
        v62 = v92;
        (*(v91 + 8))(v90, v94);
      }
    }
  }

  else
  {
    sub_66D4(&qword_121360, &unk_D8FE0);
    sub_F5B8();
    sub_D6390();
    v88 = v183;
    (*(v183 + 16))(v44, v49, v47);
    swift_storeEnumTagMultiPayload();
    sub_71474();
    sub_71504();
    sub_D5BF0();
    sub_FBD4(v46, v225, &qword_1263F0, &unk_DE970);
    swift_storeEnumTagMultiPayload();
    sub_713E8();
    sub_7158C();
    v62 = v228;
    sub_D5BF0();
    sub_FC3C(v46, &qword_1263F0, &unk_DE970);
    (*(v88 + 8))(v49, v47);
  }

  v163 = v229;
  v162 = v230;
  v164 = *(v229 + 16);
  v165 = v227;
  v166 = v226;
  v164(v227, v226, v230);
  v167 = v62;
  v168 = v62;
  v169 = v232;
  sub_FBD4(v167, v232, &qword_126400, &qword_DE980);
  v170 = v234;
  v164(v234, v165, v162);
  v171 = sub_66D4(&qword_1264B0, &qword_DEA18);
  sub_FBD4(v169, &v170[*(v171 + 48)], &qword_126400, &qword_DE980);
  sub_FC3C(v168, &qword_126400, &qword_DE980);
  v172 = *(v163 + 8);
  v172(v166, v162);
  sub_FC3C(v169, &qword_126400, &qword_DE980);
  return (v172)(v165, v162);
}

__n128 sub_68060@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_66D4(&qword_121238, &unk_D8E20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  sub_D5780();
  sub_D63E0();
  sub_D5930();
  (*(v3 + 32))(a1, v5, v2);
  v6 = a1 + *(sub_66D4(&qword_121360, &unk_D8FE0) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_681BC@<X0>(uint64_t a3@<X8>)
{
  sub_DFAC();

  v4 = sub_D5F50();
  v6 = v5;
  v8 = v7;
  sub_D61B0();
  v9 = sub_D5F00();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_F16C(v4, v6, v8 & 1);

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_6829C()
{
  v0 = sub_D4EC0();
  v43 = *(v0 - 8);
  __chkstk_darwin(v0);
  v46 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_D64C0();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = (v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_66D4(&qword_123340, qword_DC760);
  __chkstk_darwin(v3 - 8);
  v5 = v37 - v4;
  v6 = sub_D4F20();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_D5340();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v13 = sub_6610(v9, qword_137988);
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_D5320();
  v15 = sub_D68A0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "[Unified Settings] page viewed", v16, 2u);
  }

  (*(v10 + 8))(v12, v9);
  sub_D4F10();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_FC3C(v5, &qword_123340, qword_DC760);
  }

  (*(v7 + 32))(v42, v5, v6);
  sub_D64F0();
  v41 = v7;
  v40 = sub_D64E0();
  v18 = v44;
  *v44 = 0xD00000000000001ELL;
  v18[1] = 0x80000000000E8A50;
  (*(v45 + 104))();
  v39 = v0;
  v37[0] = "com.apple.graphic-icon.account";
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  v21 = [v20 bundleForClass:ObjCClassFromMetadata];
  v48._countAndFlagsBits = 2777980912;
  v48._object = 0xA400000000000000;
  v49._object = 0x80000000000E8A70;
  v49._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v49);
  v50._countAndFlagsBits = 2777980912;
  v50._object = 0xA400000000000000;
  sub_D66D0(v50);
  v33._countAndFlagsBits = 0xE000000000000000;
  v51._object = 0x80000000000E8A70;
  v51._countAndFlagsBits = 0xD000000000000011;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v22.super.isa = v21;
  sub_D4E80(v51, v61, v22, v48, 0, v33);
  v38 = v6;

  sub_D4EB0();
  sub_66D4(&qword_126358, &qword_DE8D8);
  v37[1] = 2 * *(v43 + 72);
  *(swift_allocObject() + 16) = xmmword_DE7C0;
  v23 = [v20 bundleForClass:ObjCClassFromMetadata];
  v48._countAndFlagsBits = 2777980912;
  v48._object = 0xA400000000000000;
  v52._countAndFlagsBits = 0xD000000000000013;
  v52._object = 0x80000000000E8A90;
  sub_D66D0(v52);
  v53._countAndFlagsBits = 2777980912;
  v53._object = 0xA400000000000000;
  sub_D66D0(v53);
  v34._countAndFlagsBits = 0xE000000000000000;
  v54._countAndFlagsBits = 0xD000000000000013;
  v54._object = 0x80000000000E8A90;
  v62.value._countAndFlagsBits = 0;
  v62.value._object = 0;
  v24.super.isa = v23;
  sub_D4E80(v54, v62, v24, v48, 0, v34);

  sub_D4EB0();
  v25 = [v20 bundleForClass:ObjCClassFromMetadata];
  v48._countAndFlagsBits = 2777980912;
  v48._object = 0xA400000000000000;
  v55._countAndFlagsBits = 0x4C5F44554F4C4349;
  v55._object = 0xEC0000004C454241;
  sub_D66D0(v55);
  v56._countAndFlagsBits = 2777980912;
  v56._object = 0xA400000000000000;
  sub_D66D0(v56);
  v35._countAndFlagsBits = 0xE000000000000000;
  v57._countAndFlagsBits = 0x4C5F44554F4C4349;
  v57._object = 0xEC0000004C454241;
  v63.value._countAndFlagsBits = 0;
  v63.value._object = 0;
  v26.super.isa = v25;
  sub_D4E80(v57, v63, v26, v48, 0, v35);

  sub_D4EB0();
  v27 = [v20 bundleForClass:ObjCClassFromMetadata];
  v48._countAndFlagsBits = 2777980912;
  v48._object = 0xA400000000000000;
  v28 = v37[0];
  v58._object = (v37[0] | 0x8000000000000000);
  v58._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v58);
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  sub_D66D0(v59);
  v36._countAndFlagsBits = 0xE000000000000000;
  v60._object = (v28 | 0x8000000000000000);
  v60._countAndFlagsBits = 0xD000000000000011;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v29.super.isa = v27;
  sub_D4E80(v60, v64, v29, v48, 0, v36);

  sub_D4EB0();
  v30 = v44;
  v31 = v46;
  v32 = v42;
  sub_D64D0();

  (*(v43 + 8))(v31, v39);
  (*(v45 + 8))(v30, v47);
  return (*(v41 + 8))(v32, v38);
}

void sub_68ACC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a2 != 2)
  {
    type metadata accessor for MAPreferencesView(0);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_D5580();
    sub_711B0();
    sub_D5900();
  }
}

uint64_t sub_68B98@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_68C84(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_68CF8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_68D5C;
  a2[1] = v7;
  return result;
}

uint64_t sub_68C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAPreferencesView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_68CEC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_68CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAPreferencesView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_68D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MAPreferencesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_656B8(a1, v6, a2);
}

uint64_t sub_68DE4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_66D4(&qword_121338, &qword_DF070);
  v19 = *(v1 - 8);
  v2 = v19;
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_66D4(&qword_1266B0, &qword_DF078);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  sub_6902C();
  sub_697E0();
  sub_FBD4(v13, v11, &qword_1266B0, &qword_DF078);
  v14 = *(v2 + 16);
  v14(v5, v7, v1);
  v15 = v20;
  sub_FBD4(v11, v20, &qword_1266B0, &qword_DF078);
  v16 = sub_66D4(&qword_1266B8, &qword_DF080);
  v14((v15 + *(v16 + 48)), v5, v1);
  v17 = *(v19 + 8);
  v17(v7, v1);
  sub_FC3C(v13, &qword_1266B0, &qword_DF078);
  v17(v5, v1);
  return sub_FC3C(v11, &qword_1266B0, &qword_DF078);
}

uint64_t sub_6902C()
{
  v1 = sub_66D4(&qword_1266C0, &qword_DF0D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v42 - v2;
  v4 = sub_66D4(&qword_1266C8, &qword_DF0D8);
  __chkstk_darwin(v4);
  v45 = &v42 - v5;
  v6 = sub_66D4(&qword_1266D0, &qword_DF0E0);
  v7 = __chkstk_darwin(v6);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v42 - v9;
  v49 = sub_66D4(&qword_1266D8, &qword_DF0E8);
  __chkstk_darwin(v49);
  v11 = &v42 - v10;
  v12 = sub_D6510();
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v47 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_D5B10();
  v14 = *(v43 - 8);
  __chkstk_darwin(v43);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for MAPreferencesView(0) + 20);
  v50 = v0;
  v18 = v0 + v17;
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    if ((v19 & 1) == 0)
    {
LABEL_3:
      *v3 = sub_D5BA0();
      *(v3 + 1) = 0x4028000000000000;
      v3[16] = 0;
      v20 = sub_66D4(&qword_1266E0, &qword_DF0F0);
      sub_6A04C(&v3[*(v20 + 44)]);
      sub_D63E0();
      sub_D5930();
      v21 = v45;
      sub_FEA4(v3, v45, &qword_1266C0, &qword_DF0D0);
      v22 = v21 + *(v4 + 36);
      v23 = v56;
      *(v22 + 64) = v55;
      *(v22 + 80) = v23;
      *(v22 + 96) = v57;
      v24 = v52;
      *v22 = v51;
      *(v22 + 16) = v24;
      v25 = v54;
      *(v22 + 32) = v53;
      *(v22 + 48) = v25;
      v26 = sub_D5B90();
      v27 = v44;
      sub_FEA4(v21, v44, &qword_1266C8, &qword_DF0D8);
      v28 = (v27 + *(v6 + 36));
      *v28 = v26;
      v28[1] = sub_6A5B4;
      v28[2] = 0;
      v29 = v46;
      sub_FEA4(v27, v46, &qword_1266D0, &qword_DF0E0);
      sub_FBD4(v29, v11, &qword_1266D0, &qword_DF0E0);
      swift_storeEnumTagMultiPayload();
      sub_72C3C(&qword_1266E8, &type metadata accessor for SettingsFeatureDescriptionView, &protocol conformance descriptor for SettingsFeatureDescriptionView);
      sub_72C84();
      sub_D5BF0();
      return sub_FC3C(v29, &qword_1266D0, &qword_DF0E0);
    }
  }

  else
  {

    sub_D68C0();
    v31 = sub_D5DB0();
    v42 = v4;
    v32 = v31;
    sub_D5310();

    v4 = v42;
    sub_D5B00();
    swift_getAtKeyPath();
    sub_68CEC(v19, 0);
    (*(v14 + 8))(v16, v43);
    if (LOBYTE(v51._countAndFlagsBits) != 1)
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v51._countAndFlagsBits = 2777980912;
  v51._object = 0xA400000000000000;
  v58._countAndFlagsBits = 0x5241435F4C49414DLL;
  v58._object = 0xEF454C5449545F44;
  sub_D66D0(v58);
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  sub_D66D0(v59);
  v41._countAndFlagsBits = 0xE000000000000000;
  v60._countAndFlagsBits = 0x5241435F4C49414DLL;
  v60._object = 0xEF454C5449545F44;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v35.super.isa = v34;
  v36 = sub_D4E80(v60, v61, v35, v51, 0, v41);
  v38 = v37;

  v51._countAndFlagsBits = v36;
  v51._object = v38;
  sub_DFAC();
  sub_D5F50();
  sub_69C94();
  sub_D5B60();
  sub_D5F40();
  v39 = v47;
  sub_D6500();
  v40 = v48;
  (*(v48 + 16))(v11, v39, v12);
  swift_storeEnumTagMultiPayload();
  sub_72C3C(&qword_1266E8, &type metadata accessor for SettingsFeatureDescriptionView, &protocol conformance descriptor for SettingsFeatureDescriptionView);
  sub_72C84();
  sub_D5BF0();
  return (*(v40 + 8))(v39, v12);
}

void sub_697E0()
{
  v0 = [objc_allocWithZone(AADeviceInfo) init];
  v1 = [v0 deviceClass];

  if (v1)
  {
    v2 = 0xD00000000000001FLL;
    sub_D65F0();

    v3 = sub_D6660();
    v5 = v4;

    v6 = v3 == 0x454E4F485049 && v5 == 0xE600000000000000;
    if (v6 || (sub_D6C20() & 1) != 0)
    {

      v7 = "MAIL_DATACLASS_SWITCH_TEXT_IPAD";
      v2 = 0xD000000000000021;
    }

    else
    {
      v11 = v3 == 1145131081 && v5 == 0xE400000000000000;
      if (v11 || (sub_D6C20() & 1) != 0)
      {

        v7 = "MAIL_DATACLASS_SWITCH_TEXT_IPOD";
      }

      else if (v3 == 1146048585 && v5 == 0xE400000000000000 || (sub_D6C20() & 1) != 0)
      {

        v7 = "WITCH_TEXT_IPHONE SIMULATOR";
      }

      else if (v3 == 0xD000000000000010 && 0x80000000000E8C20 == v5 || (sub_D6C20() & 1) != 0)
      {

        v7 = "WITCH_TEXT_REALITYDEVICE";
        v2 = 0xD00000000000002BLL;
      }

      else if (v3 == 0x445954494C414552 && v5 == 0xED00004543495645)
      {

        v7 = "WITCH_TEXT_OTHER";
        v2 = 0xD000000000000028;
      }

      else
      {
        v12 = sub_D6C20();

        if (v12)
        {
          v2 = 0xD000000000000028;
        }

        else
        {
          v2 = 0xD000000000000020;
        }

        if (v12)
        {
          v7 = "WITCH_TEXT_OTHER";
        }

        else
        {
          v7 = "IPHONE SIMULATOR";
        }
      }
    }

    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v13._object = 2777980912;
    v14._object = (v7 | 0x8000000000000000);
    v14._countAndFlagsBits = v2;
    sub_D66D0(v14);
    v15._countAndFlagsBits = 2777980912;
    v15._object = 0xA400000000000000;
    sub_D66D0(v15);
    v18._countAndFlagsBits = 2777980912;
    v13._countAndFlagsBits = 0xE000000000000000;
    v16._object = (v7 | 0x8000000000000000);
    v16._countAndFlagsBits = v2;
    v17.value._countAndFlagsBits = 0;
    v17.value._object = 0;
    v10.super.isa = v9;
    v18._object = 0xA400000000000000;
    sub_D4E80(v16, v17, v10, v18, 0, v13);

    type metadata accessor for MAPreferencesView(0);
    _s9ViewModelCMa_3(0);
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3, &unk_DDE0C);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    sub_DFAC();
    sub_D62D0();
  }

  else
  {
    __break(1u);
  }
}

id sub_69BF4()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = [objc_allocWithZone(ISImageDescriptor) initWithSize:60.0 scale:{60.0, v2}];
  result = [v3 setDrawBorder:1];
  qword_126250 = v3;
  return result;
}

void sub_69C94()
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass:ObjCClassFromMetadata];
  v23._object = 0x80000000000E8D60;
  v23._countAndFlagsBits = 0xD00000000000001DLL;
  sub_D66D0(v23);
  v24._countAndFlagsBits = 2777980912;
  v24._object = 0xA400000000000000;
  sub_D66D0(v24);
  v40._countAndFlagsBits = 2777980912;
  v20._countAndFlagsBits = 0xE000000000000000;
  v25._object = 0x80000000000E8D60;
  v25._countAndFlagsBits = 0xD00000000000001DLL;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v3.super.isa = v2;
  v40._object = 0xA400000000000000;
  v4 = sub_D4E80(v25, v37, v3, v40, 0, v20);
  v6 = v5;

  v7 = [v1 bundleForClass:ObjCClassFromMetadata];
  v26._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v26._object = 0xEA00000000004552;
  sub_D66D0(v26);
  v27._countAndFlagsBits = 2777980912;
  v27._object = 0xA400000000000000;
  sub_D66D0(v27);
  v41._countAndFlagsBits = 2777980912;
  v21._countAndFlagsBits = 0xE000000000000000;
  v28._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v28._object = 0xEA00000000004552;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v8.super.isa = v7;
  v41._object = 0xA400000000000000;
  v9 = sub_D4E80(v28, v38, v8, v41, 0, v21);
  v11 = v10;

  v29._countAndFlagsBits = v9;
  v29._object = v11;
  sub_D66D0(v29);

  v30._countAndFlagsBits = 10333;
  v30._object = 0xE200000000000000;
  sub_D66D0(v30);
  v31._countAndFlagsBits = v4;
  v31._object = v6;
  sub_D66D0(v31);

  v32._countAndFlagsBits = 41;
  v32._object = 0xE100000000000000;
  sub_D66D0(v32);
  v12 = [objc_allocWithZone(AADeviceInfo) init];
  v13 = [v12 deviceClass];

  if (v13)
  {
    sub_D65F0();

    v14 = sub_D6660();
    v16 = v15;

    v33._countAndFlagsBits = v14;
    v33._object = v16;
    sub_D66D0(v33);

    v17 = [v1 bundleForClass:ObjCClassFromMetadata];
    v34._countAndFlagsBits = 0xD000000000000012;
    v34._object = 0x80000000000E8D80;
    sub_D66D0(v34);
    v35._countAndFlagsBits = 2777980912;
    v35._object = 0xA400000000000000;
    sub_D66D0(v35);
    v42._countAndFlagsBits = 2777980912;
    v22._countAndFlagsBits = 0xE000000000000000;
    v36._countAndFlagsBits = 0xD000000000000012;
    v36._object = 0x80000000000E8D80;
    v39.value._countAndFlagsBits = 0;
    v39.value._object = 0;
    v18.super.isa = v17;
    v42._object = 0xA400000000000000;
    sub_D4E80(v36, v39, v18, v42, 0, v22);

    sub_66D4(&qword_121390, &qword_D9050);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_D8CB0;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_F7DC();
    *(v19 + 32) = 91;
    *(v19 + 40) = 0xE100000000000000;
    sub_D6610();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_6A04C@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = sub_66D4(&qword_126708, &qword_DF0F8);
  v2 = __chkstk_darwin(v1);
  v65 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v57 - v4;
  v6 = objc_allocWithZone(ISIcon);
  v7 = sub_D65C0();
  [v6 initWithBundleIdentifier:v7];

  if (qword_120E60 != -1)
  {
    swift_once();
  }

  v8 = qword_126250;
  sub_D5300();
  v9 = sub_D5DE0();
  v10 = &v5[*(v1 + 36)];
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v69._countAndFlagsBits = 2777980912;
  v69._object = 0xA400000000000000;
  v63 = v5;
  v76._countAndFlagsBits = 0x5241435F4C49414DLL;
  v76._object = 0xEF454C5449545F44;
  sub_D66D0(v76);
  v77._countAndFlagsBits = 2777980912;
  v77._object = 0xA400000000000000;
  sub_D66D0(v77);
  v56._countAndFlagsBits = 0xE000000000000000;
  v78._countAndFlagsBits = 0x5241435F4C49414DLL;
  v78._object = 0xEF454C5449545F44;
  v79.value._countAndFlagsBits = 0;
  v79.value._object = 0;
  v13.super.isa = v12;
  v14 = sub_D4E80(v78, v79, v13, v69, 0, v56);
  v16 = v15;

  v69._countAndFlagsBits = v14;
  v69._object = v16;
  sub_DFAC();
  v17 = sub_D5F50();
  v19 = v18;
  LOBYTE(v14) = v20;
  sub_D5E40();
  v21 = sub_D5F20();
  v23 = v22;
  v25 = v24;

  sub_F16C(v17, v19, v14 & 1);

  sub_D5E10();
  v61 = sub_D5E80();
  v59 = v26;
  v62 = v27;
  v60 = v28;
  sub_F16C(v21, v23, v25 & 1);

  sub_69C94();
  sub_D5B60();
  v29 = sub_D5F40();
  v31 = v30;
  v33 = v32;
  sub_D5E00();
  v34 = sub_D5F20();
  v36 = v35;
  v58 = v35;
  v38 = v37;
  v40 = v39;

  sub_F16C(v29, v31, v33 & 1);

  KeyPath = swift_getKeyPath();
  v42 = v38 & 1;
  LOBYTE(v69._countAndFlagsBits) = v38 & 1;
  v43 = v63;
  v44 = v65;
  sub_FBD4(v63, v65, &qword_126708, &qword_DF0F8);
  v45 = v64;
  sub_FBD4(v44, v64, &qword_126708, &qword_DF0F8);
  v46 = sub_66D4(&qword_126710, &unk_DF130);
  v47 = v45 + *(v46 + 48);
  v48 = v61;
  v49 = v59;
  *v47 = v61;
  *(v47 + 8) = v49;
  LOBYTE(v29) = v62 & 1;
  *(v47 + 16) = v62 & 1;
  *(v47 + 24) = v60;
  v50 = (v45 + *(v46 + 64));
  *&v67 = v34;
  *(&v67 + 1) = v36;
  v51 = v34;
  v68[0] = v42;
  *&v68[1] = v66[0];
  *&v68[4] = *(v66 + 3);
  *&v68[8] = v40;
  *&v68[16] = KeyPath;
  *&v68[24] = 1;
  v68[26] = 1;
  v52 = *v68;
  *v50 = v67;
  v50[1] = v52;
  *(v50 + 27) = *&v68[11];
  v53 = v48;
  v54 = v49;
  sub_166E0(v48, v49, v29);

  sub_FBD4(&v67, &v69, &qword_123668, &qword_DB360);
  sub_FC3C(v43, &qword_126708, &qword_DF0F8);
  v69._countAndFlagsBits = v51;
  v69._object = v58;
  v70 = v42;
  *v71 = v66[0];
  *&v71[3] = *(v66 + 3);
  v72 = v40;
  v73 = KeyPath;
  v74 = 1;
  v75 = 1;
  sub_FC3C(&v69, &qword_123668, &qword_DB360);
  sub_F16C(v53, v54, v29);

  return sub_FC3C(v44, &qword_126708, &qword_DF0F8);
}

uint64_t sub_6A5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v50 = sub_66D4(&qword_126648, &qword_DEDB8);
  __chkstk_darwin(v50);
  v4 = &v44 - v3;
  v49 = sub_66D4(&qword_126650, &qword_DEDC0);
  __chkstk_darwin(v49);
  v6 = &v44 - v5;
  v7 = type metadata accessor for MAPreferencesView(0);
  v8 = v7 - 8;
  v48 = *(v7 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v7);
  v10 = sub_66D4(&qword_126658, &qword_DEDC8);
  v11 = __chkstk_darwin(v10 - 8);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = a1 + *(v8 + 32);
  v16 = *(v15 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v16;
  sub_D5570();

  v17 = *(v55 + 16);

  v54 = v14;
  v46 = v15;
  v47 = a1;
  if (v17 < 2)
  {
    *v4 = sub_D5B40();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v25 = sub_66D4(&qword_126660, &qword_DEE18);
    sub_6B904(&v4[*(v25 + 44)]);
    sub_68C84(a1, &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = *(v48 + 80);
    v27 = swift_allocObject();
    sub_68CF8(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + ((v26 + 16) & ~v26));
    v28 = &v4[*(v50 + 36)];
    *v28 = sub_72220;
    *(v28 + 1) = v27;
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    sub_FBD4(v4, v6, &qword_126648, &qword_DEDB8);
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_126668, &qword_DEE20);
    sub_109A8(&qword_126670, &qword_126668, &qword_DEE20, &unk_DCAD0);
    sub_72284();
    sub_D5BF0();
    sub_FC3C(v4, &qword_126648, &qword_DEDB8);
    LODWORD(v20) = v26;
  }

  else
  {
    _s9ViewModelCMa_3(0);
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3, &unk_DDE0C);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    v18 = v55;
    v45 = v56;
    v19 = v57;
    sub_68C84(a1, &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = *(v48 + 80);
    v21 = (v20 + 16) & ~v20;
    v22 = swift_allocObject();
    sub_68CF8(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    sub_68C84(a1, &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = swift_allocObject();
    sub_68CF8(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
    v24 = v45;
    *v6 = v18;
    *(v6 + 1) = v24;
    v6[16] = v19;
    *(v6 + 3) = sub_72580;
    *(v6 + 4) = v22;
    *(v6 + 5) = sub_725F0;
    *(v6 + 6) = v23;
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_126668, &qword_DEE20);
    sub_109A8(&qword_126670, &qword_126668, &qword_DEE20, &unk_DCAD0);
    sub_72284();
    sub_D5BF0();
  }

  if (sub_61364(&off_1138E0))
  {
    _s9ViewModelCMa_3(0);
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3, &unk_DDE0C);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    v29 = v55;
    v30 = v56;
    v53 = v57;
    v31 = v47;
    sub_68C84(v47, &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = (v20 + 16) & ~v20;
    v33 = swift_allocObject();
    sub_68CF8(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
    sub_68C84(v31, &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = swift_allocObject();
    sub_68CF8(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v32);
    v50 = v29;

    v35 = sub_724C0;
    v36 = sub_72450;
  }

  else
  {
    v50 = 0;
    v30 = 0;
    v53 = 0;
    v36 = 0;
    v33 = 0;
    v35 = 0;
    v34 = 0;
  }

  v37 = v54;
  v38 = v51;
  sub_FBD4(v54, v51, &qword_126658, &qword_DEDC8);
  v39 = v52;
  sub_FBD4(v38, v52, &qword_126658, &qword_DEDC8);
  v40 = (v39 + *(sub_66D4(&qword_126690, &qword_DEE30) + 48));
  v41 = v50;
  v42 = v53;
  sub_7233C(v50, v30, v53, v36, v33, v35, v34);
  sub_7239C(v41, v30, v42, v36, v33, v35, v34);
  *v40 = v41;
  v40[1] = v30;
  v40[2] = v42;
  v40[3] = v36;
  v40[4] = v33;
  v40[5] = v35;
  v40[6] = v34;
  sub_FC3C(v37, &qword_126658, &qword_DEDC8);
  sub_7239C(v41, v30, v42, v36, v33, v35, v34);
  return sub_FC3C(v38, &qword_126658, &qword_DEDC8);
}