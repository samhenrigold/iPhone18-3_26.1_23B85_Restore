uint64_t sub_100001718()
{
  v0 = sub_100005764();
  sub_100005460(v0, qword_10000C620);
  sub_1000051E4(v0, qword_10000C620);
  return sub_100005754();
}

uint64_t sub_100001798()
{
  sub_100005400(v0 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportCredentialData, &qword_10000C228, &qword_100005D88);
  sub_100004FF4(*(v0 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData), *(v0 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData + 8));
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10000182C(uint64_t a1)
{
  v2 = sub_1000054C4(&qword_10000C1F0, type metadata accessor for AppMigrationHandler, &unk_100005D10);

  return AppMigrationExtension.configuration.getter(a1, v2);
}

double sub_1000018A8@<D0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(NSProgress) init];
  v3 = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportCredentialData;
  v4 = sub_100005734();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  result = 0.0;
  *(v2 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData) = xmmword_100005B10;
  *a1 = v2;
  return result;
}

uint64_t sub_100001960()
{
  v1[5] = v0;
  v2 = sub_100005574();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_1000055F4();
  v1[9] = swift_task_alloc();
  v3 = sub_100005704();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = sub_100004D84(&qword_10000C228, &qword_100005D88);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = sub_100005624();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = sub_1000056F4();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_100001BA8, 0, 0);
}

uint64_t sub_100001BA8()
{
  v1 = objc_opt_self();
  v2 = &AppMigrationHandler;
  v3 = [v1 sharedStore];
  v4 = [v3 savedAccounts];

  sub_100004E3C();
  v5 = sub_100005774();

  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100005824())
  {
    v11 = v1;
    v12 = v0;
    v2 = 0;
    v0 = &AppMigrationHandler;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000057D4();
      }

      else
      {
        if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v5 + 8 * v2 + 32);
      }

      v8 = v7;
      v1 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if ([v7 canBeExportedViaCredentialExchange])
      {
        sub_1000057E4();
        sub_100005804();
        sub_100005814();
        sub_1000057F4();
      }

      else
      {
      }

      ++v2;
      if (v1 == i)
      {
        v0 = v12;
        v1 = v11;
        v2 = 0x10000C000;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v0[2].base_meths = _swiftEmptyArrayStorage;

  v0[2].base_prots = [v1 *(v2 + 184)];
  v9 = swift_task_alloc();
  v0[2].ivars = v9;
  *v9 = v0;
  v9[1] = sub_100001DE8;

  return WBSSavedAccountStore.importableItems(for:)(_swiftEmptyArrayStorage);
}

uint64_t sub_100001DE8(uint64_t a1)
{
  v2 = *(*v1 + 184);
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_100001F20, 0, 0);
}

uint64_t sub_100001F20()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v24 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v27 = v0[15];
  v33 = v0[14];
  v6 = v0[11];
  v25 = v0[12];
  v26 = v0[10];
  v29 = v0[8];
  v30 = v0[7];
  v32 = v0[6];
  v28 = v0[5];
  sub_100005614();
  sub_100005604();
  (*(v5 + 8))(v3, v4);
  sub_1000056E4();
  sub_100004D84(&qword_10000C238, &qword_100005D98);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100005B20;
  (*(v1 + 16))(v8 + v7, v2, v24);
  (*(v6 + 104))(v25, enum case for ASExportedCredentialData.FormatVersion.v1(_:), v26);
  sub_1000055E4();
  sub_100005714();
  v9 = sub_100005734();
  (*(*(v9 - 8) + 56))(v27, 0, 1, v9);
  v10 = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportCredentialData;
  swift_beginAccess();
  sub_100004E88(v27, v28 + v10);
  swift_endAccess();
  sub_1000055B4();
  swift_allocObject();
  sub_1000055A4();
  *v29 = sub_10000236C;
  v29[1] = 0;
  (*(v30 + 104))(v29, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v32);
  sub_100005584();
  sub_100004DCC(v28 + v10, v33);
  sub_100004EF8();
  v11 = sub_100005594();
  v12 = v0[20];
  v13 = v0[21];
  v14 = v0[19];
  v15 = v0[14];
  v17 = v16;
  v18 = v0[5];
  v31 = v11;

  sub_100005400(v15, &qword_10000C228, &qword_100005D88);
  (*(v12 + 8))(v13, v14);
  v19 = (v18 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData);
  v20 = *(v18 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData);
  v21 = *(v18 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData + 8);
  *v19 = v31;
  v19[1] = v17;
  sub_100004FF4(v20, v21);

  v22 = v0[1];

  return v22();
}

void sub_10000236C(uint64_t a1, void *a2)
{
  sub_1000055D4();
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    sub_10000505C(a2, a2[3]);
    sub_100005844();
    sub_1000050A0(v4, v4[3]);
    sub_100005834();
    sub_1000050F0(v4);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100002454()
{
  v1[5] = v0;
  sub_100004D84(&qword_10000C228, &qword_100005D88);
  v1[6] = swift_task_alloc();
  v2 = sub_100005734();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100002558, 0, 0);
}

uint64_t sub_100002558()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportCredentialData;
  v0[11] = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportCredentialData;
  swift_beginAccess();
  sub_100004DCC(v4 + v5, v3);
  v6 = *(v2 + 48);
  v0[12] = v6;
  v0[13] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v1) == 1)
  {
    sub_100005400(v0[6], &qword_10000C228, &qword_100005D88);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_100002718;

    return sub_100001960();
  }

  else
  {
    v9 = v0[10];
    v10 = v0[7];
    v11 = v0[8];
    (*(v11 + 32))(v9, v0[6], v10);
    v12 = *(sub_100005724() + 16);

    (*(v11 + 8))(v9, v10);

    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_100002718()
{

  if (v0)
  {

    v1 = sub_100005514;
  }

  else
  {
    v1 = sub_100002830;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100002830()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  if ((*(v0 + 96))(v3 + v1, 1, v2))
  {
    v4 = 0;
  }

  else
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    (*(v6 + 16))(v5, v3 + v1, v2);
    v7 = sub_100005724();
    (*(v6 + 8))(v5, v2);
    v4 = *(v7 + 16);
  }

  v8 = *(v0 + 8);

  return v8(v4);
}

uint64_t sub_100002934(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100002954, 0, 0);
}

uint64_t sub_100002954()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData;
  v0[6] = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData;
  v3 = (v1 + v2);
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_100002AB4;

    return sub_100001960();
  }

  else
  {
    v0[8] = v4;
    v7 = *v3;
    v0[9] = *v3;
    v0[2] = v7;
    v0[3] = v4;
    sub_10000513C(v7, v4);
    v8 = swift_task_alloc();
    v0[10] = v8;
    v11 = sub_100005190(v8, v9, v10);
    *v8 = v0;
    v8[1] = sub_100002CEC;

    return SerializedDataExportStream.append<A>(contentsOf:)(v0 + 2, &type metadata for Data, v11);
  }
}

uint64_t sub_100002AB4()
{

  if (v0)
  {

    v1 = sub_10000551C;
  }

  else
  {
    v1 = sub_100002BCC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100002BCC()
{
  v1 = (v0[5] + v0[6]);
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[8] = v2;
    v5 = *v1;
    v0[9] = *v1;
    v0[2] = v5;
    v0[3] = v2;
    sub_10000513C(v5, v2);
    v6 = swift_task_alloc();
    v0[10] = v6;
    v9 = sub_100005190(v6, v7, v8);
    *v6 = v0;
    v6[1] = sub_100002CEC;

    return SerializedDataExportStream.append<A>(contentsOf:)(v0 + 2, &type metadata for Data, v9);
  }
}

uint64_t sub_100002CEC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100002E64;
  }

  else
  {
    v2 = sub_100002E00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002E00()
{
  sub_100004FF4(v0[9], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100002E64()
{
  sub_100004FF4(v0[9], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100002EE8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData;
  v0[3] = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData;
  v3 = (v1 + v2);
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_10000302C;

    return sub_100001960();
  }

  result = *v3;
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      sub_100004FF4(result, v4);
      result = 0;
      goto LABEL_15;
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    result = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    result = HIDWORD(result) - result;
    goto LABEL_15;
  }

  if (v7)
  {
    goto LABEL_12;
  }

  sub_100004FF4(result, v4);
  result = BYTE6(v4);
LABEL_15:
  v10 = v0[1];

  return v10(result);
}

uint64_t sub_10000302C()
{

  if (v0)
  {

    v1 = sub_100005510;
  }

  else
  {
    v1 = sub_100003144;
  }

  return _swift_task_switch(v1, 0, 0);
}

void sub_100003144()
{
  v1 = (*(v0 + 16) + *(v0 + 24));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    goto LABEL_2;
  }

  v4 = *v1;
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2)
    {
LABEL_2:
      v3 = 0;
LABEL_3:
      (*(v0 + 8))(v3);
      return;
    }

    v7 = v4 + 16;
    v4 = *(v4 + 16);
    v6 = *(v7 + 8);
    v3 = v6 - v4;
    if (!__OFSUB__(v6, v4))
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  else if (!v5)
  {
    (*(v0 + 8))(BYTE6(v2));
    return;
  }

  v8 = __OFSUB__(HIDWORD(v4), v4);
  v9 = HIDWORD(v4) - v4;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    (*(v0 + 8))(v9);
  }
}

uint64_t sub_1000031C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005518;

  return sub_100002454();
}

uint64_t sub_100003250(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005518;

  return DataclassSerializedDataExporting.serializedDataErrorCount.getter(a1, a2);
}

uint64_t sub_1000032F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003390;

  return sub_100002934(a1);
}

uint64_t sub_100003390()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003484()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003514;

  return sub_100002EC8();
}

uint64_t sub_100003514(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100003624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a1;
  v5[13] = a3;
  v7 = sub_100005734();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v8 = sub_100005524();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = *(a3 - 8);
  v5[25] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[26] = AssociatedTypeWitness;
  v5[27] = *(AssociatedTypeWitness - 8);
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_100003860, 0, 0);
}

uint64_t sub_100003860()
{
  (*(*(v0 + 192) + 16))(*(v0 + 200), *(v0 + 96), *(v0 + 104));
  sub_100005794();
  *(v0 + 80) = xmmword_100005B30;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_1000039A8;
  v3 = *(v0 + 208);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 288, v3, AssociatedConformanceWitness);
}

uint64_t sub_1000039A8()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100004510;
  }

  else
  {
    v2 = sub_100003AE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003AE8()
{
  if (*(v0 + 289))
  {
    if (qword_10000C280 != -1)
    {
      swift_once();
    }

    v1 = sub_100005764();
    *(v0 + 248) = sub_1000051E4(v1, qword_10000C620);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    sub_10000513C(v2, v3);
    v4 = sub_100005744();
    v5 = sub_1000057A4();
    if (!os_log_type_enabled(v4, v5))
    {
      sub_100005008(v2, v3);
LABEL_21:
      v17 = *(v0 + 240);
      v19 = *(v0 + 176);
      v18 = *(v0 + 184);
      v20 = *(v0 + 168);

      sub_100005564();
      swift_allocObject();
      *(v0 + 256) = sub_100005554();
      (*(v19 + 104))(v18, enum case for JSONDecoder.DateDecodingStrategy.secondsSince1970(_:), v20);
      sub_100005534();
      swift_beginAccess();
      sub_1000054C4(&qword_10000C258, &type metadata accessor for ASExportedCredentialData, &protocol conformance descriptor for ASExportedCredentialData);
      sub_100005544();
      if (v17)
      {
        (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

        sub_100005008(*(v0 + 80), *(v0 + 88));

        v21 = *(v0 + 8);
      }

      else
      {
        v22 = *(*(v0 + 136) + 16);
        v22(*(v0 + 152), *(v0 + 160), *(v0 + 128));
        v23 = sub_100005744();
        v24 = sub_1000057A4();
        v25 = os_log_type_enabled(v23, v24);
        v26 = *(v0 + 152);
        v27 = *(v0 + 128);
        v28 = *(v0 + 136);
        if (v25)
        {
          v29 = swift_slowAlloc();
          *v29 = 134217984;
          v42 = v22;
          v30 = *(sub_100005724() + 16);

          v31 = *(v28 + 8);
          v31(v26, v27);
          *(v29 + 4) = v30;
          v22 = v42;
          _os_log_impl(&_mh_execute_header, v23, v24, "During import, decoded %ld items", v29, 0xCu);
        }

        else
        {
          v31 = *(v28 + 8);
          v31(*(v0 + 152), *(v0 + 128));
        }

        *(v0 + 264) = v31;

        v32 = sub_100005744();
        v33 = sub_1000057A4();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Starting import of decoded items", v34, 2u);
        }

        v35 = *(v0 + 160);
        v36 = *(v0 + 144);
        v37 = *(v0 + 128);

        v22(v36, v35, v37);
        v38 = [objc_opt_self() sharedStore];
        sub_1000056C4();
        swift_allocObject();

        *(v0 + 272) = sub_100005694();
        v39 = async function pointer to dispatch thunk of PMCredentialExchangeDataImportModel.startImportAsync();
        v40 = swift_task_alloc();
        *(v0 + 280) = v40;
        *v40 = v0;
        v40[1] = sub_100004208;
        v21 = (&async function pointer to dispatch thunk of PMCredentialExchangeDataImportModel.startImportAsync() + v39);
      }

      return v21();
    }

    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = v3 >> 62;
    if ((v3 >> 62) <= 1)
    {
      if (v7)
      {
        LODWORD(v8) = HIDWORD(v2) - v2;
        if (__OFSUB__(HIDWORD(v2), v2))
        {
          __break(1u);
        }

        v8 = v8;
      }

      else
      {
        v8 = BYTE6(v3);
      }

      goto LABEL_20;
    }

    if (v7 != 2)
    {
      v8 = 0;
LABEL_20:
      *(v6 + 4) = v8;
      v16 = v6;
      sub_100005008(v2, v3);
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting import with %ld bytes of data", v16, 0xCu);

      goto LABEL_21;
    }

    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v11)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    LOBYTE(v3) = *(v0 + 288);
  }

  v12 = sub_100004D84(&qword_10000C260, &qword_100005DB8);
  *(v0 + 40) = v12;
  *(v0 + 48) = sub_10000539C();
  *(v0 + 16) = v3;
  *(v0 + 290) = *sub_10000505C((v0 + 16), v12);
  sub_1000055C4();
  sub_1000050F0((v0 + 16));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_task_alloc();
  *(v0 + 232) = v14;
  *v14 = v0;
  v14[1] = sub_1000039A8;
  v15 = *(v0 + 208);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 288, v15, AssociatedConformanceWitness);
}

uint64_t sub_100004208()
{

  return _swift_task_switch(sub_100004330, 0, 0);
}

uint64_t sub_100004330(uint64_t a1)
{
  v2 = sub_100005744();
  v3 = sub_1000057A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished import", v4, 2u);
  }

  v6 = v1[27];
  v5 = v1[28];
  v13 = v1[33];
  v14 = v1[26];
  v7 = v1[20];
  v8 = v1[16];

  v12 = sub_1000056B4();
  v9 = sub_1000056A4();

  v13(v7, v8);
  (*(v6 + 8))(v5, v14);
  sub_100005008(v1[10], v1[11]);

  v10 = v1[1];

  return v10(v12, v9);
}

uint64_t sub_100004510()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_100005008(v0[10], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100004610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000046C0;

  return sub_100003624(a1, v9, a3, a4);
}

uint64_t sub_1000046C0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1000047D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1000054C4(&qword_10000C278, type metadata accessor for AppMigrationHandler, &unk_100005BF8);
  *v11 = v5;
  v11[1] = sub_10000550C;

  return DataclassSerializedDataImporting.importSerializedData<A>(from:request:)(a1, a2, a5, a3, v12, a4);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppMigrationHandler(0);
  sub_1000054C4(&qword_10000C130, type metadata accessor for AppMigrationHandler, &unk_100005D40);
  sub_1000056D4();
  return 0;
}

uint64_t type metadata accessor for AppMigrationHandler(uint64_t a1)
{
  result = qword_10000C288;
  if (!qword_10000C288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000049C4(uint64_t a1)
{
  sub_100004A6C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100004A6C(uint64_t a1)
{
  if (!qword_10000C160)
  {
    sub_100005734();
    v1 = sub_1000057C4();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C160);
    }
  }
}

uint64_t sub_100004D84(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D84(&qword_10000C228, &qword_100005D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100004E3C()
{
  result = qword_10000C230;
  if (!qword_10000C230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C230);
  }

  return result;
}

uint64_t sub_100004E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D84(&qword_10000C228, &qword_100005D88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100004EF8()
{
  result = qword_10000C240;
  if (!qword_10000C240)
  {
    sub_100004FAC(&qword_10000C228, &qword_100005D88);
    sub_1000054C4(&qword_10000C248, &type metadata accessor for ASExportedCredentialData, &protocol conformance descriptor for ASExportedCredentialData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C240);
  }

  return result;
}

uint64_t sub_100004FAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004FF4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005008(result, a2);
  }

  return result;
}

uint64_t sub_100005008(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_10000505C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000050A0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000050F0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000513C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100005190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10000C250;
  if (!qword_10000C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C250);
  }

  return result;
}

uint64_t sub_1000051E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10000521C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v3 + 16);
  [v5 setTotalUnitCount:a2];
  [v5 setCompletedUnitCount:a1];
  if (qword_10000C280 != -1)
  {
    swift_once();
  }

  v6 = sub_100005764();
  sub_1000051E4(v6, qword_10000C620);

  oslog = sub_100005744();
  v7 = sub_1000057A4();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v7, "During import, progress updated to %@", v8, 0xCu);
    sub_100005400(v9, &qword_10000C270, &qword_100005DC0);
  }
}

unint64_t sub_10000539C()
{
  result = qword_10000C268;
  if (!qword_10000C268)
  {
    sub_100004FAC(&qword_10000C260, &qword_100005DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C268);
  }

  return result;
}

uint64_t sub_100005400(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004D84(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100005460(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000054C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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