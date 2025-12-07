uint64_t sub_10058505C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  *(v6 + 180) = a2;
  *(v6 + 48) = a1;
  *(v6 + 56) = a4;
  type metadata accessor for NewLicenseBatch(0);
  *(v6 + 80) = swift_task_alloc();
  v8 = type metadata accessor for LicenseUtilities.Batch(0);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  v9 = *(a4 - 8);
  *(v6 + 112) = v9;
  *(v6 + 120) = swift_task_alloc();
  (*(v9 + 16))();

  return _swift_task_switch(sub_1005851D0, 0, 0);
}

uint64_t sub_1005851D0()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 128) = v2;
  if (v2)
  {
    v3 = *(v0 + 96);
    v4 = *(v3 + 80);
    *(v0 + 176) = v4;
    *(v0 + 136) = *(v3 + 72);
    *(v0 + 144) = 0;
    *(v0 + 181) = 1;
    sub_10058900C(v1 + ((v4 + 32) & ~v4), *(v0 + 104), type metadata accessor for LicenseUtilities.Batch);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(v0 + 104);
    if (EnumCaseMultiPayload == 1)
    {
      sub_100588FA4(v6, *(v0 + 80), type metadata accessor for NewLicenseBatch);
      v7 = swift_task_alloc();
      *(v0 + 152) = v7;
      *v7 = v0;
      v7[1] = sub_100585404;
      v8 = *(v0 + 120);
      v9 = *(v0 + 72);
      v10 = *(v0 + 80);
      v11 = *(v0 + 56);
      v12 = *(v0 + 64);
      v13 = *(v0 + 180);

      return sub_100585AB8(v10, v13, v8, v11, v12, v9);
    }

    else
    {
      v16 = *v6;
      *(v0 + 160) = *v6;
      v17 = swift_task_alloc();
      *(v0 + 168) = v17;
      *v17 = v0;
      v17[1] = sub_100585768;
      v18 = *(v0 + 120);
      v19 = *(v0 + 64);
      v20 = *(v0 + 72);
      v21 = *(v0 + 56);
      v22 = *(v0 + 180);

      return sub_1005865B0(v16, v22, v18, v21, v19, v20);
    }
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 56));

    v15 = *(v0 + 8);

    return v15(1);
  }
}

uint64_t sub_100585404(char a1)
{
  v2 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 16) = v1;

  return _swift_task_switch(sub_100585508, 0, 0);
}

uint64_t sub_100585508()
{
  sub_100589074(*(v0 + 80), type metadata accessor for NewLicenseBatch);
  v1 = *(v0 + 144) + 1;
  v2 = *(v0 + 24) & *(v0 + 181);
  if (v1 == *(v0 + 128))
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3(v2 & 1);
  }

  else
  {
    *(v0 + 144) = v1;
    *(v0 + 181) = v2 & 1;
    sub_10058900C(*(v0 + 48) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(v0 + 136) * v1, *(v0 + 104), type metadata accessor for LicenseUtilities.Batch);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(v0 + 104);
    if (EnumCaseMultiPayload == 1)
    {
      sub_100588FA4(v6, *(v0 + 80), type metadata accessor for NewLicenseBatch);
      v7 = swift_task_alloc();
      *(v0 + 152) = v7;
      *v7 = v0;
      v7[1] = sub_100585404;
      v8 = *(v0 + 120);
      v9 = *(v0 + 72);
      v10 = *(v0 + 80);
      v11 = *(v0 + 56);
      v12 = *(v0 + 64);
      v13 = *(v0 + 180);

      return sub_100585AB8(v10, v13, v8, v11, v12, v9);
    }

    else
    {
      v14 = *v6;
      *(v0 + 160) = *v6;
      v15 = swift_task_alloc();
      *(v0 + 168) = v15;
      *v15 = v0;
      v15[1] = sub_100585768;
      v16 = *(v0 + 120);
      v17 = *(v0 + 64);
      v18 = *(v0 + 72);
      v19 = *(v0 + 56);
      v20 = *(v0 + 180);

      return sub_1005865B0(v14, v20, v16, v19, v17, v18);
    }
  }
}

uint64_t sub_100585768(char a1)
{
  v2 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_10058586C, 0, 0);
}

uint64_t sub_10058586C()
{

  v1 = *(v0 + 144) + 1;
  v2 = *(v0 + 40) & *(v0 + 181);
  if (v1 == *(v0 + 128))
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3(v2 & 1);
  }

  else
  {
    *(v0 + 144) = v1;
    *(v0 + 181) = v2 & 1;
    sub_10058900C(*(v0 + 48) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(v0 + 136) * v1, *(v0 + 104), type metadata accessor for LicenseUtilities.Batch);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(v0 + 104);
    if (EnumCaseMultiPayload == 1)
    {
      sub_100588FA4(v6, *(v0 + 80), type metadata accessor for NewLicenseBatch);
      v7 = swift_task_alloc();
      *(v0 + 152) = v7;
      *v7 = v0;
      v7[1] = sub_100585404;
      v8 = *(v0 + 120);
      v9 = *(v0 + 72);
      v10 = *(v0 + 80);
      v11 = *(v0 + 56);
      v12 = *(v0 + 64);
      v13 = *(v0 + 180);

      return sub_100585AB8(v10, v13, v8, v11, v12, v9);
    }

    else
    {
      v14 = *v6;
      *(v0 + 160) = *v6;
      v15 = swift_task_alloc();
      *(v0 + 168) = v15;
      *v15 = v0;
      v15[1] = sub_100585768;
      v16 = *(v0 + 120);
      v17 = *(v0 + 64);
      v18 = *(v0 + 72);
      v19 = *(v0 + 56);
      v20 = *(v0 + 180);

      return sub_1005865B0(v14, v20, v16, v19, v17, v18);
    }
  }
}

uint64_t sub_100585AB8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 208) = a2;
  *(v6 + 96) = a1;
  *(v6 + 104) = type metadata accessor for NewLicenseBatch(0);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v6 + 128) = v11;
  *(v6 + 136) = *(v11 - 8);
  *(v6 + 144) = swift_task_alloc();
  sub_1001F0C48(&qword_1007812A0, &qword_1006A0E70);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = type metadata accessor for ADPNewLicenseTask(0);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  v12 = sub_10020A748((v6 + 16));
  (*(*(a4 - 8) + 16))(v12, a3, a4);

  return _swift_task_switch(sub_100585C80, 0, 0);
}

uint64_t sub_100585C80()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 208);
  sub_10058900C(*(v0 + 96), v1, type metadata accessor for NewLicenseBatch);
  v4 = sub_100625FA0();
  sub_10020AB78(v0 + 16, v1 + v2[7]);
  *(v1 + v2[5]) = v3;
  *(v1 + v2[6]) = v4;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_100585D68;

  return sub_1003AD104();
}

uint64_t sub_100585D68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_100586178;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_100585E90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100585E90()
{
  v1 = v0[19];
  v2 = sub_100006D8C(v0 + 2, v0[5]);
  sub_100005934(*v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v1, &qword_1007812A0, &qword_1006A0E70);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_100585F68;
  v4 = v0[24];
  v5 = v0[19];

  return sub_1005874F0(v4, v5, 0);
}

uint64_t sub_100585F68()
{
  v1 = *(*v0 + 152);

  sub_1000032A8(v1, &qword_1007812A0, &qword_1006A0E70);

  return _swift_task_switch(sub_1005860AC, 0, 0);
}

uint64_t sub_1005860AC()
{
  sub_100589074(v0[21], type metadata accessor for ADPNewLicenseTask);
  sub_10000710C(v0 + 2);

  v1 = v0[1];
  v2 = v0[23] == 0;

  return v1(v2);
}

uint64_t sub_100586178()
{
  v35 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  sub_100589074(v0[21], type metadata accessor for ADPNewLicenseTask);
  static Logger.ald.getter();
  sub_10058900C(v3, v1, type metadata accessor for NewLicenseBatch);
  sub_10058900C(v3, v2, type metadata accessor for NewLicenseBatch);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v31 = v0[17];
    v6 = v0[15];
    v32 = v0[16];
    v33 = v0[18];
    v7 = v0[14];
    v30 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v8 = 138413058;
    v10 = sub_100625FA0();
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2082;
    v11 = v6[3];
    v12 = v6[4];
    sub_100006D8C(v6, v11);
    v13 = (*(v12 + 40))(v11, v12);
    v15 = v14;
    sub_100589074(v6, type metadata accessor for NewLicenseBatch);
    v16 = sub_1002346CC(v13, v15, &v34);

    *(v8 + 14) = v16;
    *(v8 + 22) = 2050;
    v17 = *(v7 + *(v30 + 36));
    sub_100589074(v7, type metadata accessor for NewLicenseBatch);
    *(v8 + 24) = v17;
    *(v8 + 32) = 2082;
    swift_getErrorValue();
    v18 = *(v0[9] - 8);
    swift_task_alloc();
    (*(v18 + 16))();
    v19 = String.init<A>(describing:)();
    v21 = v20;

    v22 = sub_1002346CC(v19, v21, &v34);

    *(v8 + 34) = v22;
    sub_1000032A8(v9, &qword_10077F920, &qword_10069E6A0);

    swift_arrayDestroy();

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v24 = v0[17];
    v23 = v0[18];
    v26 = v0[15];
    v25 = v0[16];
    sub_100589074(v0[14], type metadata accessor for NewLicenseBatch);

    (*(v24 + 8))(v23, v25);
    sub_100589074(v26, type metadata accessor for NewLicenseBatch);
  }

  sub_10000710C(v0 + 2);

  v27 = v0[1];
  v28 = v0[23] == 0;

  return v27(v28);
}

uint64_t sub_1005865B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 240) = a2;
  *(v6 + 168) = a1;
  v11 = type metadata accessor for Logger();
  *(v6 + 176) = v11;
  *(v6 + 184) = *(v11 - 8);
  *(v6 + 192) = swift_task_alloc();
  sub_1001F0C48(&qword_1007812A0, &qword_1006A0E70);
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 112) = a4;
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  v12 = sub_10020A748((v6 + 88));
  (*(*(a4 - 8) + 16))(v12, a3, a4);

  return _swift_task_switch(sub_100586704, 0, 0);
}

uint64_t sub_100586704(uint64_t a1)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 168);
  v4 = sub_100625FA0();
  sub_10020AB78(v1 + 88, v1 + 40);
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  *(v1 + 32) = v4;

  v5 = swift_task_alloc();
  *(v1 + 208) = v5;
  *v5 = v1;
  v5[1] = sub_1005867D0;

  return sub_100480A98();
}

uint64_t sub_1005867D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_100586B9C;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_1005868F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005868F8()
{
  v1 = v0[25];
  v2 = sub_100006D8C(v0 + 11, v0[14]);
  sub_100005934(*v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v1, &qword_1007812A0, &qword_1006A0E70);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_1005869D0;
  v4 = v0[28];
  v5 = v0[25];

  return sub_1005874F0(v4, v5, 1);
}

uint64_t sub_1005869D0()
{
  v1 = *(*v0 + 200);

  sub_1000032A8(v1, &qword_1007812A0, &qword_1006A0E70);

  return _swift_task_switch(sub_100586B14, 0, 0);
}

uint64_t sub_100586B14()
{
  sub_100484694((v0 + 2));
  sub_10000710C(v0 + 11);

  v1 = v0[1];
  v2 = v0[27] == 0;

  return v1(v2);
}

uint64_t sub_100586B9C()
{
  v27 = v0;
  sub_100484694((v0 + 2));
  static Logger.ald.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v23 = v0[23];
    v3 = v0[21];
    v24 = v0[22];
    v25 = v0[24];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v4 = 138413058;
    v6 = sub_100625FA0();
    *(v4 + 4) = v6;
    *v5 = v6;
    *(v4 + 12) = 2082;
    v7 = v3[10];
    v8 = v3[11];
    sub_100006D8C(v3 + 7, v7);
    v9 = (*(v8 + 40))(v7, v8);
    v11 = sub_1002346CC(v9, v10, &v26);

    *(v4 + 14) = v11;
    *(v4 + 22) = 2082;
    *(v4 + 24) = sub_1002346CC(v3[5], v3[6], &v26);
    *(v4 + 32) = 2082;
    swift_getErrorValue();
    v12 = *(v0[18] - 8);
    swift_task_alloc();
    (*(v12 + 16))();
    v13 = String.init<A>(describing:)();
    v15 = v14;

    v16 = sub_1002346CC(v13, v15, &v26);

    *(v4 + 34) = v16;
    sub_1000032A8(v5, &qword_10077F920, &qword_10069E6A0);

    swift_arrayDestroy();

    (*(v23 + 8))(v25, v24);
  }

  else
  {
    v18 = v0[23];
    v17 = v0[24];
    v19 = v0[22];

    (*(v18 + 8))(v17, v19);
  }

  sub_10000710C(v0 + 11);

  v20 = v0[1];
  v21 = v0[27] == 0;

  return v20(v21);
}

uint64_t sub_100586F04(uint64_t a1, char a2)
{
  *(v2 + 104) = a2;
  *(v2 + 72) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100586FF4, 0, 0);
}

uint64_t sub_100586FF4()
{
  v42 = v0;
  if ((*(v0 + 104) & 1) == 0)
  {
    v1 = **(v0 + 72);
    v2 = objc_allocWithZone(LSApplicationRecord);
    *(v0 + 40) = 0;
    v3 = [v2 initWithStoreItemIdentifier:v1 error:v0 + 40];
    v4 = *(v0 + 40);
    if (v3)
    {
      v5 = v3;
      v6 = v4;
      v7 = [v5 bundleIdentifier];
      if (v7)
      {
        v8 = v7;
        v9 = [objc_allocWithZone(IXApplicationIdentity) initWithBundleID:v7];

        v10 = objc_opt_self();
        isa = Data._bridgeToObjectiveC()().super.isa;
        *(v0 + 64) = 0;
        v12 = [v10 updateSINFForAppWithIdentity:v9 sinfData:isa options:0 error:v0 + 64];

        v13 = *(v0 + 64);
        if (v12)
        {
          v14 = v13;

          goto LABEL_12;
        }

        v21 = v13;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      else
      {
        type metadata accessor for InternalError(0);
        sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
        swift_allocError();
        v17 = v16;
        _StringGuts.grow(_:)(26);

        v40 = 0xD000000000000018;
        v41 = 0x80000001006CD510;
        *(v0 + 56) = v1;
        v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v18);

        v19 = v40;
        v20 = v41;
        *v17 = 0x726961706572;
        v17[1] = 0xE600000000000000;
        v17[2] = v19;
        v17[3] = v20;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    else
    {
      v15 = v4;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    static Logger.ald.getter();
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 88);
    v39 = *(v0 + 96);
    v26 = *(v0 + 80);
    if (v24)
    {
      v27 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = v37;
      *v27 = 138412546;
      v28 = sub_100625FA0();
      *(v27 + 4) = v28;
      *v36 = v28;
      *(v27 + 12) = 2082;
      swift_getErrorValue();
      v38 = v26;
      v29 = *(*(v0 + 24) - 8);
      swift_task_alloc();
      (*(v29 + 16))();
      v30 = String.init<A>(describing:)();
      v32 = v31;

      v33 = sub_1002346CC(v30, v32, &v40);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Error saving app key: : %{public}s", v27, 0x16u);
      sub_1000032A8(v36, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v37);

      (*(v25 + 8))(v39, v38);
    }

    else
    {

      (*(v25 + 8))(v39, v26);
    }
  }

LABEL_12:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1005874F0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 372) = a3;
  *(v3 + 256) = a1;
  *(v3 + 264) = a2;
  v4 = type metadata accessor for LogKey.Prefix();
  *(v3 + 272) = v4;
  *(v3 + 280) = *(v4 - 8);
  *(v3 + 288) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v3 + 296) = v5;
  *(v3 + 304) = *(v5 - 8);
  *(v3 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100587610, 0, 0);
}

uint64_t sub_100587610()
{
  v1 = *(v0 + 256);
  v2 = *(v1 + 16);
  *(v0 + 320) = v2;
  if (v2)
  {
    v3 = v0 + 16;
    *(v0 + 368) = enum case for LogKey.Prefix.undefined(_:);
    *(v0 + 328) = 0;
    v4 = *(v1 + 32);
    v5 = *(v1 + 48);
    v6 = *(v1 + 64);
    *(v0 + 64) = *(v1 + 80);
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    *(v0 + 16) = v4;
    if (*(v0 + 48))
    {
      sub_100588E7C(v0 + 16, v0 + 72);
      v7 = swift_task_alloc();
      *(v0 + 344) = v7;
      *(v7 + 16) = v3;
      v8 = swift_task_alloc();
      *(v0 + 352) = v8;
      *v8 = v0;
      v8[1] = sub_100587AF8;

      return (sub_10052FC18)();
    }

    else
    {
      sub_100588E7C(v0 + 16, v0 + 128);
      v11 = swift_task_alloc();
      *(v0 + 336) = v11;
      *v11 = v0;
      v11[1] = sub_1005877FC;
      v12 = *(v0 + 372);

      return sub_100586F04(v3, v12);
    }
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1005877FC()
{

  return _swift_task_switch(sub_1005878F8, 0, 0);
}

uint64_t sub_1005878F8()
{
  v1 = (v0 + 16);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328) + 1;
  sub_100588EF4(v0 + 16);
  if (v3 == v2)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 328);
    *(v0 + 328) = v6 + 1;
    v7 = *(v0 + 256) + 56 * v6;
    v8 = *(v7 + 104);
    v9 = *(v7 + 88);
    v10 = *(v7 + 120);
    *(v0 + 64) = *(v7 + 136);
    *(v0 + 32) = v8;
    *(v0 + 48) = v10;
    *v1 = v9;
    if (*(v0 + 48))
    {
      sub_100588E7C(v0 + 16, v0 + 72);
      v11 = swift_task_alloc();
      *(v0 + 344) = v11;
      *(v11 + 16) = v1;
      v12 = swift_task_alloc();
      *(v0 + 352) = v12;
      *v12 = v0;
      v12[1] = sub_100587AF8;

      return sub_10052FC18(sub_10052FC18, sub_100588ED8, v11);
    }

    else
    {
      sub_100588E7C(v0 + 16, v0 + 128);
      v13 = swift_task_alloc();
      *(v0 + 336) = v13;
      *v13 = v0;
      v13[1] = sub_1005877FC;
      v14 = *(v0 + 372);

      return sub_100586F04(v1, v14);
    }
  }
}

uint64_t sub_100587AF8()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_100587C14;
  }

  else
  {

    v2 = sub_10058A164;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100587C14()
{
  v1 = (v0 + 16);

  static Logger.ald.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v36 = v3;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *(v0 + 240) = v35;
    *v4 = 138412546;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v6 = *(v0 + 192);
    if (!v6 || (, , , os_unfair_lock_lock((v6 + 24)), v7 = *(v6 + 16), v8 = v7, os_unfair_lock_unlock((v6 + 24)), , !v7))
    {
      (*(*(v0 + 280) + 104))(*(v0 + 288), *(v0 + 368), *(v0 + 272));
      v9 = objc_allocWithZone(type metadata accessor for LogKey());
      v8 = LogKey.init(prefix:)();
    }

    v10 = *(v0 + 304);
    v34 = *(v0 + 312);
    v33 = *(v0 + 296);
    *(v4 + 4) = v8;
    *v5 = v8;
    *(v4 + 12) = 2082;
    swift_getErrorValue();
    v11 = v5;
    v12 = *(*(v0 + 224) - 8);
    swift_task_alloc();
    (*(v12 + 16))();
    v13 = String.init<A>(describing:)();
    v15 = v14;

    v16 = sub_1002346CC(v13, v15, (v0 + 240));

    *(v4 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v2, v36, "[%@] Error saving license key: : %{public}s", v4, 0x16u);
    sub_1000032A8(v11, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v35);

    (*(v10 + 8))(v34, v33);
  }

  else
  {
    v18 = *(v0 + 304);
    v17 = *(v0 + 312);
    v19 = *(v0 + 296);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 320);
  v21 = *(v0 + 328) + 1;
  sub_100588EF4(v0 + 16);
  if (v21 == v20)
  {

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 328);
    *(v0 + 328) = v24 + 1;
    v25 = *(v0 + 256) + 56 * v24;
    v26 = *(v25 + 104);
    v27 = *(v25 + 88);
    v28 = *(v25 + 120);
    *(v0 + 64) = *(v25 + 136);
    *(v0 + 32) = v26;
    *(v0 + 48) = v28;
    *v1 = v27;
    if (*(v0 + 48))
    {
      sub_100588E7C(v0 + 16, v0 + 72);
      v29 = swift_task_alloc();
      *(v0 + 344) = v29;
      *(v29 + 16) = v1;
      v30 = swift_task_alloc();
      *(v0 + 352) = v30;
      *v30 = v0;
      v30[1] = sub_100587AF8;

      return sub_10052FC18(sub_10052FC18, sub_100588ED8, v29);
    }

    else
    {
      sub_100588E7C(v0 + 16, v0 + 128);
      v31 = swift_task_alloc();
      *(v0 + 336) = v31;
      *v31 = v0;
      v31[1] = sub_1005877FC;
      v32 = *(v0 + 372);

      return sub_100586F04(v1, v32);
    }
  }
}

uint64_t sub_100588148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100588320, 0, 0);
}

uint64_t sub_100588320(__n128 a1)
{
  static Logger.ald.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = sub_100625FA0();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Starting license repair request", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920, &qword_10069E6A0);
  }

  v7 = v2;
  v8 = v1[24];
  v10 = v1[21];
  v9 = v1[22];
  v11 = v1[19];
  v12 = v1[17];
  v40 = v1[20];
  v41 = v1[18];
  v13 = v1[15];
  v14 = v1[13];
  v15 = v1[14];
  v38 = v1[16];
  v39 = v1[12];

  v16 = *(v9 + 8);
  v1[25] = v16;
  v1[26] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v8, v10);
  (*(v12 + 56))(v13, 1, 1, v38);
  (*(v14 + 104))(v15, enum case for URL.DirectoryHint.inferFromPath(_:), v39);

  URL.init(filePath:directoryHint:relativeTo:)();
  URL.deletingLastPathComponent()();
  v17 = *(v12 + 8);
  v1[27] = v17;
  v1[28] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v11, v38);
  (*(v12 + 16))(v41, v40, v38);
  v18 = objc_allocWithZone(LSApplicationRecord);
  v19 = sub_100579388(v41, 0);
  v1[29] = v19;
  v22 = v19;
  v23 = [v19 bundleIdentifier];
  if (v23)
  {
    v24 = v1[11];
    v25 = v23;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    sub_1001F0C48(&qword_100787080, &qword_1006B4B00);
    inited = swift_initStackObject();
    v1[30] = inited;
    *(inited + 16) = xmmword_10069E680;
    *(inited + 32) = v26;
    *(inited + 40) = v28;
    *(inited + 48) = 1;
    v30 = v24[3];
    v31 = v24[4];
    v32 = v24[5];
    v33 = sub_100006D8C(v24, v30);
    v34 = swift_task_alloc();
    v1[31] = v34;
    *v34 = v1;
    v34[1] = sub_1005887DC;

    return sub_10057A038(inited, 0, 0, v33, v30, v31, v32);
  }

  else
  {
    v35 = v1[20];
    v36 = v1[16];
    type metadata accessor for InternalError(0);
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    *v37 = 0x726961706572;
    v37[1] = 0xE600000000000000;
    v37[2] = 0xD000000000000016;
    v37[3] = 0x80000001006CD4D0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v17(v35, v36);

    v20 = v1[1];

    return v20();
  }
}

uint64_t sub_1005887DC(uint64_t a1)
{
  v2 = *(*v1 + 240);
  *(*v1 + 256) = a1;

  swift_setDeallocating();
  sub_100588E00(v2 + 32);

  return _swift_task_switch(sub_100588904, 0, 0);
}

uint64_t sub_100588904()
{
  v1 = v0[32];
  if (v1)
  {
    v2 = v0[11];
    v3 = v2[3];
    v4 = v2[4];
    v5 = v2[5];
    v6 = sub_100006D8C(v2, v3);
    v7 = swift_task_alloc();
    v0[33] = v7;
    *v7 = v0;
    v7[1] = sub_100588B20;

    return sub_10058505C(v1, 0, v6, v3, v4, v5);
  }

  else
  {
    v9 = v0[29];
    v10 = v0[27];
    v11 = v0[20];
    v12 = v0[16];
    type metadata accessor for InternalError(0);
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    *v13 = 0x726961706572;
    v13[1] = 0xE600000000000000;
    v13[2] = 0xD000000000000014;
    v13[3] = 0x80000001006CD4F0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v10(v11, v12);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100588B20()
{

  return _swift_task_switch(sub_100588C38, 0, 0);
}

uint64_t sub_100588C38(__n128 a1)
{
  static Logger.ald.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = sub_100625FA0();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] License repair request complete", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920, &qword_10069E6A0);
  }

  v7 = v2;
  v8 = v1[29];
  v9 = v1[27];
  v10 = v1[25];
  v11 = v1[23];
  v13 = v1[20];
  v12 = v1[21];
  v14 = v1[16];

  v10(v11, v12);
  v9(v13, v14);

  v15 = v1[1];

  return v15();
}

uint64_t type metadata accessor for LicenseUtilities.Batch(uint64_t a1)
{
  result = qword_100787E60;
  if (!qword_100787E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100588FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10058900C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100589074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005890D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = a4;
  *(v4 + 208) = a3;
  *(v4 + 72) = a1;
  sub_1001F0C48(&qword_10077EF30, &unk_1006AA6D0);
  *(v4 + 96) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_10058923C, 0, 0);
}

uint64_t sub_10058923C(__n128 a1)
{
  v27 = v1;
  static Logger.ald.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[19];
  v7 = v1[16];
  v6 = v1[17];
  if (v4)
  {
    v9 = v1[9];
    v8 = v1[10];
    v25 = v1[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 138412546;
    v13 = sub_100625FA0();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_1002346CC(v9, v8, &v26);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Starting license repair request for %{public}s", v10, 0x16u);
    sub_1000032A8(v11, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v12);

    v14 = *(v6 + 8);
    v14(v25, v7);
  }

  else
  {

    v14 = *(v6 + 8);
    v14(v5, v7);
  }

  v1[20] = v14;
  v15 = v1[10];
  v16 = v1[11];
  v17 = v1[9];
  sub_1001F0C48(&qword_100787080, &qword_1006B4B00);
  inited = swift_initStackObject();
  v1[21] = inited;
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = v17;
  *(inited + 40) = v15;
  *(inited + 48) = 1;
  v19 = v16[3];
  v20 = v16[4];
  v21 = v16[5];
  v22 = sub_100006D8C(v16, v19);

  v23 = swift_task_alloc();
  v1[22] = v23;
  *v23 = v1;
  v23[1] = sub_1005894DC;

  return sub_10057A038(inited, 0, 0, v22, v19, v20, v21);
}

uint64_t sub_1005894DC(uint64_t a1)
{
  v2 = *(*v1 + 168);
  *(*v1 + 184) = a1;

  swift_setDeallocating();
  sub_100588E00(v2 + 32);

  return _swift_task_switch(sub_100589604, 0, 0);
}

uint64_t sub_100589604()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = v2[3];
    v4 = v2[4];
    v5 = v2[5];
    v6 = sub_100006D8C(v2, v3);
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v7[1] = sub_1005897DC;
    v8 = *(v0 + 208);

    return sub_10058505C(v1, v8, v6, v3, v4, v5);
  }

  else
  {
    type metadata accessor for InternalError(0);
    sub_10058A07C(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    *v10 = 0x726961706572;
    v10[1] = 0xE600000000000000;
    v10[2] = 0xD000000000000014;
    v10[3] = 0x80000001006CD4F0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1005897DC(char a1)
{
  *(*v1 + 209) = a1;

  return _swift_task_switch(sub_1005898DC, 0, 0);
}

uint64_t sub_1005898DC()
{
  if (*(v0 + 209) == 1 && *(v0 + 208) == 1)
  {
    if (qword_10077E550 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 96);
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = qword_100787DC8;
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    os_unfair_lock_lock((v4 + 24));
    sub_100589F88((v4 + 16), v1);
    os_unfair_lock_unlock((v4 + 24));
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);

    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      sub_1000032A8(*(v0 + 96), &qword_10077EF30, &unk_1006AA6D0);
LABEL_13:
      v25 = *(v0 + 72);
      v24 = *(v0 + 80);
      v26 = swift_task_alloc();
      *(v26 + 16) = v25;
      *(v26 + 24) = v24;
      os_unfair_lock_lock((v4 + 24));
      sub_100589FA4(v4 + 16);
      os_unfair_lock_unlock((v4 + 24));

      v27 = swift_task_alloc();
      *(v0 + 200) = v27;
      *v27 = v0;
      v27[1] = sub_100589CA4;
      v29 = *(v0 + 72);
      v28 = *(v0 + 80);

      return sub_10036FECC(v29, v28, 0, 0);
    }

    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 104);
    (*(v10 + 32))(v9, *(v0 + 96), v11);
    Date.timeIntervalSinceNow.getter();
    v13 = v12;
    (*(v10 + 8))(v9, v11);
    if (v13 <= -60.0)
    {
      goto LABEL_13;
    }
  }

  static Logger.ald.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = sub_100625FA0();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%@] License repair request complete", v16, 0xCu);
    sub_1000032A8(v17, &qword_10077F920, &qword_10069E6A0);
  }

  v19 = *(v0 + 160);
  v20 = *(v0 + 144);
  v21 = *(v0 + 128);

  v19(v20, v21);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100589CA4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100589E08, 0, 0);
  }
}

uint64_t sub_100589E08(__n128 a1)
{
  static Logger.ald.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = sub_100625FA0();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] License repair request complete", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920, &qword_10069E6A0);
  }

  v7 = v1[20];
  v8 = v1[18];
  v9 = v1[16];

  v7(v8, v9);

  v10 = v1[1];

  return v10();
}

uint64_t sub_100589FC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F0E54;

  return sub_100575984(a1, v4);
}

uint64_t sub_10058A07C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10058A0C4(uint64_t a1)
{
  result = type metadata accessor for LicenseRenewalBatch(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NewLicenseBatch(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10058A178(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_10058A1D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_10058A248(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1001F0C48(&qword_100787EA8, &qword_1006B4E30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100006D8C(a1, a1[3]);
  sub_10058A978();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_10020ABFC(a2, a3);
  sub_100329F2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100007158(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10058A3B0(uint64_t a1)
{
  v2 = sub_10058A978();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058A3EC(uint64_t a1)
{
  v2 = sub_10058A978();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10058A428@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10058A804(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10058A470(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100787EC0, &qword_1006B4E40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10058AC74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v11[0] = *v3;
  v12[23] = 0;
  sub_1003973C8(&v13, v12);
  sub_100329F2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100007158(*&v11[0], *(&v11[0] + 1));
  if (!v2)
  {
    v9 = v3[2];
    v11[0] = v3[1];
    v11[1] = v9;
    v11[2] = v3[3];
    v12[0] = 1;
    sub_1004EAF68();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10058A628()
{
  if (*v0)
  {
    return 0x747365676964;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_10058A658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10058A730(uint64_t a1)
{
  v2 = sub_10058AC74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10058A76C(uint64_t a1)
{
  v2 = sub_10058AC74();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10058A7A8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10058A9CC(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

void *sub_10058A804(void *a1)
{
  v3 = sub_1001F0C48(&qword_100787E98, &qword_1006B4E28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100006D8C(a1, a1[3]);
  sub_10058A978();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000710C(a1);
  }

  else
  {
    sub_100329ED8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_10000710C(a1);
  }

  return v7;
}

unint64_t sub_10058A978()
{
  result = qword_100787EA0;
  if (!qword_100787EA0)
  {
    result = swift_getWitnessTable(byte_1006B5014, &type metadata for Sinf.CodingKeys, v0, v1);
    atomic_store(result, &qword_100787EA0);
  }

  return result;
}

uint64_t sub_10058A9CC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100787EB0, &qword_1006B4E38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10058AC74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v20) = 0;
  sub_100329ED8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v24;
  v9 = v25;
  v37 = 1;
  sub_1004EAD04();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v19 = v31;
  v11 = v32;
  v12 = v33;
  v13 = v34;
  v18 = v35;
  v36 = v34;
  *&v20 = v10;
  *(&v20 + 1) = v9;
  LOBYTE(v21) = v31;
  *(&v21 + 1) = v32;
  v22 = v33;
  LOBYTE(v23) = v34;
  *(&v23 + 1) = v35;
  sub_10058ACC8(&v20, &v24);
  sub_10000710C(a1);
  v24 = v10;
  v25 = v9;
  v26 = v19;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v18;
  result = sub_10058AD00(&v24);
  v15 = v21;
  *a2 = v20;
  a2[1] = v15;
  v16 = v23;
  a2[2] = v22;
  a2[3] = v16;
  return result;
}

unint64_t sub_10058AC74()
{
  result = qword_100787EB8;
  if (!qword_100787EB8)
  {
    result = swift_getWitnessTable(aE_21, &type metadata for DPInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_100787EB8);
  }

  return result;
}

unint64_t sub_10058AD54()
{
  result = qword_100787EC8;
  if (!qword_100787EC8)
  {
    result = swift_getWitnessTable(byte_1006B4EE4, &type metadata for Sinf.CodingKeys, v0, v1);
    atomic_store(result, &qword_100787EC8);
  }

  return result;
}

unint64_t sub_10058ADAC()
{
  result = qword_100787ED0;
  if (!qword_100787ED0)
  {
    result = swift_getWitnessTable(byte_1006B4F9C, &type metadata for DPInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_100787ED0);
  }

  return result;
}

unint64_t sub_10058AE04()
{
  result = qword_100787ED8;
  if (!qword_100787ED8)
  {
    result = swift_getWitnessTable(byte_1006B4F0C, &type metadata for DPInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_100787ED8);
  }

  return result;
}

unint64_t sub_10058AE5C()
{
  result = qword_100787EE0;
  if (!qword_100787EE0)
  {
    result = swift_getWitnessTable(byte_1006B4F34, &type metadata for DPInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_100787EE0);
  }

  return result;
}

unint64_t sub_10058AEB4()
{
  result = qword_100787EE8;
  if (!qword_100787EE8)
  {
    result = swift_getWitnessTable(byte_1006B4E54, &type metadata for Sinf.CodingKeys, v0, v1);
    atomic_store(result, &qword_100787EE8);
  }

  return result;
}

unint64_t sub_10058AF0C()
{
  result = qword_100787EF0;
  if (!qword_100787EF0)
  {
    result = swift_getWitnessTable(aU_20, &type metadata for Sinf.CodingKeys, v0, v1);
    atomic_store(result, &qword_100787EF0);
  }

  return result;
}

uint64_t sub_10058AF60(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = type metadata accessor for ApprovedDeveloper();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10058BEFC();
  if (result)
  {
    v8 = result;
    v9 = 0;
    v10 = *(result + 16);
    v15[1] = v4 + 16;
    v16 = v10;
    v11 = (v4 + 8);
    while (1)
    {
      v13 = v16 != v9;
      if (v16 == v9)
      {
        goto LABEL_9;
      }

      if (v9 >= *(v8 + 16))
      {
        break;
      }

      (*(v4 + 16))(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, v3);
      if (ApprovedDeveloper.identifier.getter() == a1 && v14 == v17)
      {

        (*v11)(v6, v3);
LABEL_9:

        return v13;
      }

      ++v9;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = (*v11)(v6, v3);
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_10058B130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a3;
  v38 = a5;
  v39 = a6;
  v41 = a4;
  v45 = a2;
  v46 = a1;
  v7 = type metadata accessor for Logger();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ApprovedDeveloper();
  v9 = *(v47 - 8);
  v10 = __chkstk_darwin(v47);
  v40 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  v37 = v6;
  v14 = sub_10058BEFC();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v16 = v15[2];
  v17 = v9 + 16;
  v18 = (v9 + 8);

  v19 = 0;
  while (v16 != v19)
  {
    v21 = v45;
    if (v19 >= v15[2])
    {
      __break(1u);
      goto LABEL_22;
    }

    (*(v9 + 16))(v13, v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v47);
    if (ApprovedDeveloper.identifier.getter() == v46 && v22 == v21)
    {

      (*v18)(v13, v47);
LABEL_11:
      swift_bridgeObjectRelease_n();
LABEL_12:
      static PrivateNotifications.priorityOrAllowedDevelopersChangedNotificationName.getter();
      v23 = String.utf8CString.getter();

      notify_post((v23 + 32));
    }

    ++v19;
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v18)(v13, v47);
    if (v20)
    {
      goto LABEL_11;
    }
  }

  v17 = v41;

  v21 = v45;

  v19 = v40;
  ApprovedDeveloper.init(name:identifier:supportURL:)();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_14;
  }

LABEL_22:
  v15 = sub_100362D58(0, v15[2] + 1, 1, v15);
LABEL_14:
  v25 = v44;
  v27 = v15[2];
  v26 = v15[3];
  if (v27 >= v26 >> 1)
  {
    v15 = sub_100362D58((v26 > 1), v27 + 1, 1, v15);
  }

  v15[2] = v27 + 1;
  (*(v9 + 32))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v19, v47);
  v48 = v15;

  sub_10058E9AC(&v48);
  if (!v25)
  {

    v28 = v48;

    v29 = v42;
    static Logger.general.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v21;
      v33 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v33 = 136446466;
      *(v33 + 4) = sub_1002346CC(v46, v32, &v48);
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_1002346CC(v43, v17, &v48);

      _os_log_impl(&_mh_execute_header, v30, v31, "Added approved developerID: %{public}s name:  %{public}s", v33, 0x16u);
      swift_arrayDestroy();

      (*(v35 + 8))(v29, v36);
    }

    else
    {

      (*(v35 + 8))(v29, v36);
    }

    sub_10058C654(v28);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_10058B67C(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v5 = type metadata accessor for ApprovedDeveloper();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v31 = v29 - v10;
  __chkstk_darwin(v9);
  v12 = v29 - v11;
  v13 = sub_10058BEFC();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v29[0] = v8;
  v29[1] = v2;
  v30 = v3;
  v38 = v13;
  v15 = v13[2];

  v16 = v36;
  v32 = v15;
  if (!v15)
  {
LABEL_9:
    swift_bridgeObjectRelease_n();
    return;
  }

  v17 = 0;
  v33 = v35 + 16;
  v34 = (v35 + 8);
  while (1)
  {
    if (v17 >= v14[2])
    {
      __break(1u);
      goto LABEL_18;
    }

    v18 = v14 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v17;
    v19 = *(v35 + 16);
    v19(v12, v18, v16);
    if (ApprovedDeveloper.identifier.getter() == a1 && v20 == v37)
    {

      v24 = *v34;
      v16 = v36;
      (*v34)(v12, v36);
      goto LABEL_13;
    }

    v21 = v19;
    v22 = a1;
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = *v34;
    v16 = v36;
    (*v34)(v12, v36);
    if (v23)
    {
      break;
    }

    ++v17;
    a1 = v22;
    if (v32 == v17)
    {
      goto LABEL_9;
    }
  }

  v19 = v21;
LABEL_13:

  if (v17 >= v14[2])
  {
LABEL_18:
    __break(1u);
    return;
  }

  v25 = v31;
  v19(v31, v18, v16);
  v26 = v29[0];
  sub_100669ED4(v17, v29[0]);
  v24(v26, v16);
  v27 = v30;
  sub_10058C654(v38);
  if (!v27)
  {
    static PrivateNotifications.priorityOrAllowedDevelopersChangedNotificationName.getter();
    v28 = String.utf8CString.getter();

    notify_post((v28 + 32));

    ApprovedDeveloper.name.getter();
  }

  v24(v25, v16);
}

void sub_10058B9E4(char *a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v16 = container_system_path_for_identifier();
  v17 = v16;
  if (v43 <= 1 && v16)
  {
    v40 = v3;
    v41 = v2;
    v42 = *(v13 + 56);
    v42(v11, 1, 1, v12);
    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_1000032A8(v11, &unk_1007809F0, &unk_10069E8F0);
    v18 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v44[0] = 0;
    v22 = [v18 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:v44];

    if (v22)
    {
      v23 = v44[0];
    }

    else
    {
      v27 = v44[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.general.getter();
      swift_errorRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v39 = a1;
        v31 = v30;
        v32 = swift_slowAlloc();
        v38 = v28;
        v33 = v32;
        *v31 = 138412290;
        swift_errorRetain();
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v34;
        *v33 = v34;
        v35 = v29;
        v36 = v38;
        _os_log_impl(&_mh_execute_header, v38, v35, "Unable to obtain container path: error %@", v31, 0xCu);
        sub_1000032A8(v33, &qword_10077F920, &qword_10069E6A0);

        a1 = v39;
      }

      else
      {
      }

      (*(v40 + 8))(v6, v41);
    }

    (*(v13 + 32))(a1, v15, v12);
    v42(a1, 0, 1, v12);
LABEL_14:
    free(v17);
    return;
  }

  static Logger.general.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    swift_beginAccess();
    *(v26 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v24, v25, "Unable to obtain container path: error %llu", v26, 0xCu);
  }

  (*(v3 + 8))(v8, v2);
  (*(v13 + 56))(a1, 1, 1, v12);
  if (v17)
  {
    goto LABEL_14;
  }
}

uint64_t sub_10058BEFC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v53 = &v49 - v7;
  __chkstk_darwin(v6);
  v54 = &v49 - v8;
  v9 = sub_1001F0C48(&unk_10077F8E0, &qword_10069F380);
  v10 = __chkstk_darwin(v9 - 8);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v49 - v13;
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v49 - v18;
  v20 = type metadata accessor for URL();
  __chkstk_darwin(v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon22ApprovedDeveloperStore_containerURL;
  v25 = v24;
  v27 = v26;
  sub_100005934(v23, v19, &unk_1007809F0, &unk_10069E8F0);
  if ((*(v25 + 48))(v19, 1, v27) == 1)
  {
    sub_1000032A8(v19, &unk_1007809F0, &unk_10069E8F0);
    static Logger.general.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to save events without a container url", v30, 2u);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  else
  {
    v51 = v25;
    v52 = v27;
    v32 = v22;
    (*(v25 + 32))(v22, v19, v27);
    v50 = v2;
    (*(v2 + 56))(v16, 1, 1, v1);
    sub_100005934(v16, v14, &unk_10077F8E0, &qword_10069F380);
    type metadata accessor for LogActivity();
    v33 = swift_allocObject();
    v34 = v1;
    v35 = v14;
    if (qword_10077E5A8 != -1)
    {
      swift_once();
    }

    v36 = _os_activity_create(&_mh_execute_header, "Loading developer list", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v36, &state);
    swift_unknownObjectRelease();
    v33[1] = state;
    v37 = v55;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v38 = state.opaque[1];
    v39 = v32;
    if (state.opaque[1])
    {
    }

    else
    {
      sub_1001F0C48(&qword_100784310, &unk_10069FA00);
      v38 = swift_allocObject();
      *(v38 + 24) = 0;
      *(v38 + 16) = 0;
    }

    sub_100005934(v35, v37, &unk_10077F8E0, &qword_10069F380);
    v40 = v50;
    if ((*(v50 + 48))(v37, 1, v34) == 1)
    {
      sub_1000032A8(v35, &unk_10077F8E0, &qword_10069F380);
      v41 = 0;
    }

    else
    {
      v42 = v54;
      (*(v40 + 32))(v54, v37, v34);
      v43 = *(v40 + 16);
      v55 = v35;
      v44 = v53;
      v43(v53, v42, v34);
      type metadata accessor for SignpostInterval(0);
      swift_allocObject();
      v45 = v40;
      v41 = sub_1005AD4D8("Loading developer list", 22, 2, v44);
      (*(v45 + 8))(v42, v34);
      sub_1000032A8(v55, &unk_10077F8E0, &qword_10069F380);
    }

    state.opaque[0] = v33;
    state.opaque[1] = v38;
    v57 = 0;
    v58 = v41;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    sub_1001F0C48(&qword_100783D78, &qword_1006B5090);
    swift_task_localValuePush();
    os_unfair_lock_lock((v38 + 24));
    v46 = *(v38 + 16);
    v47 = v46;
    os_unfair_lock_unlock((v38 + 24));
    if (v46)
    {
      sub_100625B04();
    }

    sub_10058CE3C(&state);
    v31 = state.opaque[0];
    swift_task_localValuePop();

    sub_1000032A8(v16, &unk_10077F8E0, &qword_10069F380);
    (*(v51 + 8))(v39, v52);
  }

  return v31;
}

uint64_t sub_10058C654(void *a1)
{
  v58 = a1;
  v2 = type metadata accessor for Logger();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = __chkstk_darwin(v2);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v57 = &v52 - v5;
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for URL();
  v14 = __chkstk_darwin(v13);
  v55 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v52 - v17;
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  v21 = v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon22ApprovedDeveloperStore_containerURL;
  v23 = v22;
  v25 = v24;
  sub_100005934(v21, v12, &unk_1007809F0, &unk_10069E8F0);
  v62 = v23;
  v26 = *(v23 + 48);
  v64 = v25;
  if (v26(v12, 1, v25) == 1)
  {
    sub_1000032A8(v12, &unk_1007809F0, &unk_10069E8F0);
    v27 = v56;
    static Logger.general.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to save events without a container url", v30, 2u);
    }

    return (*(v59 + 8))(v27, v60);
  }

  else
  {
    (*(v62 + 32))(v20, v12, v64);
    v63[0] = 0xD000000000000013;
    v63[1] = 0x80000001006C3870;
    (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
    sub_100005E50();
    URL.appending<A>(component:directoryHint:)();
    (*(v7 + 8))(v9, v6);
    v32 = v57;
    static Logger.general.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v53 = v20;
    v54 = v18;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v63[0] = v37;
      *v36 = 136380675;
      swift_beginAccess();
      sub_10059032C(&qword_10077EE18, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = sub_1002346CC(v38, v39, v63);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "Saving approved events to: %{private}s", v36, 0xCu);
      sub_10000710C(v37);
    }

    (*(v59 + 8))(v32, v60);
    v41 = v61;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    if (v58)
    {
      v42 = v58;
    }

    else
    {
      v42 = _swiftEmptyArrayStorage;
    }

    v63[0] = v42;

    sub_1001F0C48(&qword_100787690, &qword_1006B2C58);
    sub_100590290(&qword_100787FB0, &qword_100787FB8, &protocol conformance descriptor for ApprovedDeveloper, &protocol conformance descriptor for <A> [A]);
    v43 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v41)
    {

      v45 = *(v62 + 8);
      v46 = v64;
      v45(v53, v64);
      return (v45)(v54, v46);
    }

    else
    {
      v47 = v43;
      v48 = v44;

      v49 = v54;
      swift_beginAccess();
      v50 = v55;
      (*(v62 + 16))(v55, v49, v64);
      Data.write(to:options:)();
      v51 = *(v62 + 8);
      v51(v50, v64);
      swift_beginAccess();
      LOBYTE(v50) = sub_1005D835C();
      swift_endAccess();
      if (v50)
      {
        swift_beginAccess();
        sub_1005D79D0(0);
        swift_endAccess();
        sub_100007158(v47, v48);
        v51(v53, v64);
      }

      else
      {
        v51(v53, v64);
        sub_100007158(v47, v48);
      }

      return (v51)(v49, v64);
    }
  }
}

uint64_t sub_10058CE3C@<X0>(void *a1@<X8>)
{
  v42 = a1;
  v1 = type metadata accessor for Logger();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v41[0] = 0xD000000000000013;
  v41[1] = 0x80000001006C3870;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_100005E50();
  URL.appending<A>(component:directoryHint:)();
  (*(v5 + 8))(v7, v4);
  static Logger.general.getter();
  (*(v9 + 16))(v12, v14, v8);
  v36 = v3;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v40 = v9;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v14;
    v20 = v19;
    v41[0] = v19;
    *v18 = 136380675;
    sub_10059032C(&qword_10077EE18, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v24 = *(v9 + 8);
    v24(v12, v8);
    v25 = sub_1002346CC(v21, v23, v41);

    *(v18 + 4) = v25;
    v26 = v16;
    v27 = v24;
    _os_log_impl(&_mh_execute_header, v15, v26, "Loading developer list from: %{private}s", v18, 0xCu);
    sub_10000710C(v20);
    v14 = v35;
  }

  else
  {

    v27 = *(v9 + 8);
    v27(v12, v8);
  }

  (*(v37 + 8))(v36, v38);
  v28 = v39;
  v29 = Data.init(contentsOf:options:)();
  if (v28)
  {

    result = (v27)(v14, v8);
    v34 = _swiftEmptyArrayStorage;
  }

  else
  {
    v31 = v29;
    v32 = v30;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1001F0C48(&qword_100787690, &qword_1006B2C58);
    sub_100590290(&qword_100787698, &qword_1007876A0, &protocol conformance descriptor for ApprovedDeveloper, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v27(v14, v8);

    result = sub_100007158(v31, v32);
    v34 = v41[0];
  }

  *v42 = v34;
  return result;
}

uint64_t sub_10058D37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for ApprovedDeveloper();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[12] = v9;
  *v9 = v5;
  v9[1] = sub_10058D514;

  return sub_1003B7380(sub_10058E4F0, 0, a4);
}

uint64_t sub_10058D514(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10058D684, 0, 0);
  }
}

uint64_t sub_10058D684(uint64_t a1)
{
  v2 = *(v1 + 104);
  if (!v2)
  {
LABEL_15:

    v39 = *(v1 + 8);

    return v39();
  }

  static Logger.general.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Migration] Migrating approved developers", v5, 2u);
  }

  v6 = *(v1 + 88);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  v9 = *(v8 + 8);
  *(v1 + 120) = v9;
  v9(v6, v7);
  v10 = *(v2 + 16);
  *(v1 + 128) = v10;
  if (!v10)
  {
LABEL_12:

    static Logger.general.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v1 + 120);
    v36 = *(v1 + 80);
    v37 = *(v1 + 56);
    if (v34)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "[Migration] Migrated approved developers", v38, 2u);
    }

    v35(v36, v37);
    goto LABEL_15;
  }

  v11 = 0;
  v12 = *(v1 + 40);
  v13 = *(v12 + 80);
  *(v1 + 184) = v13;
  v14 = *(v12 + 72);
  *(v1 + 136) = v14;
  v15 = *(v12 + 16);
  *(v1 + 144) = v15;
  v16 = *(v1 + 112);
  while (1)
  {
    *(v1 + 152) = v11;
    v15(*(v1 + 48), *(v1 + 104) + ((v13 + 32) & ~v13) + v14 * v11, *(v1 + 32));
    v17 = ApprovedDeveloper.identifier.getter();
    v19 = v18;
    v20 = ApprovedDeveloper.name.getter();
    v22 = v21;
    v23 = ApprovedDeveloper.supportURL.getter();
    sub_10058B130(v17, v19, v20, v22, v23, v24);
    if (!v16)
    {
      break;
    }

    static Logger.general.getter();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to migrate developers approvals due to error: %{public}@", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920, &qword_10069E6A0);
    }

    else
    {
    }

    (*(v1 + 120))(*(v1 + 72), *(v1 + 56));
    v30 = *(v1 + 128);
    v31 = *(v1 + 152) + 1;
    (*(*(v1 + 40) + 8))(*(v1 + 48), *(v1 + 32));
    if (v31 == v30)
    {
      goto LABEL_12;
    }

    v16 = 0;
    v15 = *(v1 + 144);
    v11 = *(v1 + 152) + 1;
    v14 = *(v1 + 136);
    LOBYTE(v13) = *(v1 + 184);
  }

  v41 = *(v1 + 48);

  v42 = swift_task_alloc();
  *(v1 + 160) = v42;
  *(v42 + 16) = v41;
  v43 = swift_task_alloc();
  *(v1 + 168) = v43;
  *v43 = v1;
  v43[1] = sub_10058DB6C;
  v44 = *(v1 + 16);

  return sub_10052F6E8(sub_10052F6E8, sub_100590374, v42, v44);
}

uint64_t sub_10058DB6C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10058E0DC;
  }

  else
  {
    v2 = sub_10058DCA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10058DCA0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 152) + 1;
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  if (v3 == v2)
  {
LABEL_2:

    static Logger.general.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 120);
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "[Migration] Migrated approved developers", v10, 2u);
    }

    v7(v8, v9);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    while (1)
    {
      v15 = *(v0 + 144);
      v16 = *(v0 + 152) + 1;
      *(v0 + 152) = v16;
      v15(*(v0 + 48), *(v0 + 104) + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(v0 + 136) * v16, *(v0 + 32));
      v17 = ApprovedDeveloper.identifier.getter();
      v19 = v18;
      v20 = ApprovedDeveloper.name.getter();
      v22 = v21;
      v23 = ApprovedDeveloper.supportURL.getter();
      sub_10058B130(v17, v19, v20, v22, v23, v24);
      if (!v1)
      {
        break;
      }

      static Logger.general.getter();
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138543362;
        swift_errorRetain();
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to migrate developers approvals due to error: %{public}@", v27, 0xCu);
        sub_1000032A8(v28, &qword_10077F920, &qword_10069E6A0);
      }

      else
      {
      }

      (*(v0 + 120))(*(v0 + 72), *(v0 + 56));
      v13 = *(v0 + 128);
      v14 = *(v0 + 152) + 1;
      (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
      v1 = 0;
      if (v14 == v13)
      {
        goto LABEL_2;
      }
    }

    v30 = *(v0 + 48);

    v31 = swift_task_alloc();
    *(v0 + 160) = v31;
    *(v31 + 16) = v30;
    v32 = swift_task_alloc();
    *(v0 + 168) = v32;
    *v32 = v0;
    v32[1] = sub_10058DB6C;
    v33 = *(v0 + 16);

    return sub_10052F6E8(sub_10052F6E8, sub_100590374, v31, v33);
  }
}

uint64_t sub_10058E0DC(uint64_t a1)
{
  static Logger.general.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to migrate developers approvals due to error: %{public}@", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {
  }

  (*(v1 + 120))(*(v1 + 72), *(v1 + 56));
  v7 = *(v1 + 128);
  v8 = *(v1 + 152) + 1;
  (*(*(v1 + 40) + 8))(*(v1 + 48), *(v1 + 32));
  if (v8 == v7)
  {

    static Logger.general.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v1 + 120);
    v23 = *(v1 + 80);
    v24 = *(v1 + 56);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "[Migration] Migrated approved developers", v25, 2u);
    }

    v22(v23, v24);

    v26 = *(v1 + 8);

    return v26();
  }

  else
  {
    v9 = *(v1 + 144);
    v10 = *(v1 + 152) + 1;
    *(v1 + 152) = v10;
    v9(*(v1 + 48), *(v1 + 104) + ((*(v1 + 184) + 32) & ~*(v1 + 184)) + *(v1 + 136) * v10, *(v1 + 32));
    v11 = ApprovedDeveloper.identifier.getter();
    v13 = v12;
    v14 = ApprovedDeveloper.name.getter();
    v16 = v15;
    v17 = ApprovedDeveloper.supportURL.getter();
    sub_10058B130(v11, v13, v14, v16, v17, v18);
    v28 = *(v1 + 48);

    v29 = swift_task_alloc();
    *(v1 + 160) = v29;
    *(v29 + 16) = v28;
    v30 = swift_task_alloc();
    *(v1 + 168) = v30;
    *v30 = v1;
    v30[1] = sub_10058DB6C;
    v31 = *(v1 + 16);

    return sub_10052F6E8(sub_10052F6E8, sub_100590374, v29, v31);
  }
}

uint64_t sub_10058E4F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002FA824(3, *a1);
  *a2 = result;
  return result;
}

uint64_t sub_10058E528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApprovedDeveloper();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Logger();
  v37 = *(v11 - 8);
  v38 = v11;
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v14 = *(v5 + 16);
  v14(v10, a2, v4);
  v39 = a2;
  v14(v8, a2, v4);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v16;
    v18 = v17;
    v35 = swift_slowAlloc();
    v40 = v35;
    *v18 = 136446466;
    v33 = v15;
    v19 = ApprovedDeveloper.identifier.getter();
    v21 = v20;
    v36 = a1;
    v22 = *(v5 + 8);
    v22(v10, v4);
    v23 = sub_1002346CC(v19, v21, &v40);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2082;
    v24 = ApprovedDeveloper.name.getter();
    v26 = v25;
    v22(v8, v4);
    v27 = sub_1002346CC(v24, v26, &v40);

    *(v18 + 14) = v27;
    v28 = v33;
    _os_log_impl(&_mh_execute_header, v33, v34, "[Migration] Removing DB approved developerID: %{public}s name:  %{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v5 + 8);
    v29(v8, v4);
    v29(v10, v4);
  }

  (*(v37 + 8))(v13, v38);
  v30 = ApprovedDeveloper.identifier.getter();
  sub_1003ACB10(v30, v31);
}

uint64_t sub_10058E8A0()
{
  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon22ApprovedDeveloperStore_containerURL, &unk_1007809F0, &unk_10069E8F0);

  return swift_deallocClassInstance();
}

void sub_10058E91C(uint64_t a1)
{
  sub_10037F89C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

Swift::Int sub_10058E9AC(uint64_t *a1)
{
  v2 = *(type metadata accessor for ApprovedDeveloper() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100590268(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10058EA54(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10058EA54(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ApprovedDeveloper();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ApprovedDeveloper() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10058EE8C(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10058EB80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10058EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ApprovedDeveloper();
  v9 = __chkstk_darwin(v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v34 - v12;
  result = __chkstk_darwin(v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = ApprovedDeveloper.name.getter();
      v27 = v26;
      if (v25 == ApprovedDeveloper.name.getter() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10058EE8C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = type metadata accessor for ApprovedDeveloper();
  v10 = __chkstk_darwin(v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v149 = &v128 - v13;
  v14 = __chkstk_darwin(v12);
  v154 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v153 = &v128 - v17;
  v18 = __chkstk_darwin(v16);
  v146 = &v128 - v19;
  v20 = __chkstk_darwin(v18);
  v145 = &v128 - v21;
  v22 = __chkstk_darwin(v20);
  v133 = &v128 - v23;
  result = __chkstk_darwin(v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_10058FA48(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_100590170(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_1005900E4(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_100590170(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = _swiftEmptyArrayStorage;
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = ApprovedDeveloper.name.getter();
      v37 = v36;
      v38 = ApprovedDeveloper.name.getter();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = ApprovedDeveloper.name.getter();
        v52 = v51;
        if (v50 == ApprovedDeveloper.name.getter() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100362C54(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_100362C54((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_10058FA48(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_100590170(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_1005900E4(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = ApprovedDeveloper.name.getter();
    v69 = v68;
    if (v5 == ApprovedDeveloper.name.getter() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_10058FA48(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = type metadata accessor for ApprovedDeveloper();
  v8 = *(v71 - 8);
  v9 = __chkstk_darwin(v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v67 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v59 - v14;
  result = __chkstk_darwin(v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = ApprovedDeveloper.name.getter();
            v52 = v51;
            if (v50 == ApprovedDeveloper.name.getter() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = ApprovedDeveloper.name.getter();
        v32 = v31;
        if (v30 == ApprovedDeveloper.name.getter() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_100590184(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_1005900E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100590170(v3);
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

uint64_t sub_100590184(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ApprovedDeveloper();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100590290(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_1001F76D0(&qword_100787690, &qword_1006B2C58);
    v10 = sub_10059032C(a2, &type metadata accessor for ApprovedDeveloper, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10059032C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1005903AC(uint64_t a1, unint64_t a2)
{
  result = sub_100590450(a1, a2, &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1005903E0()
{
  result = sub_10000B0AC(*(v0 + 8));
  if (result)
  {
    v2 = result;
    sub_100590978();
    swift_allocError();
    *v3 = v2;
    *(v3 + 8) = xmmword_1006B50A0;
    *(v3 + 24) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100590450@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v18, 0, 14);
      v5 = v18;
      v4 = v18;
      return sub_10064D294(v5, v4, a3);
    }

    v6 = a3;
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v9 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      a3 = (v7 - a1);
      if (__OFSUB__(v7, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 += a3;
    }

    v10 = __OFSUB__(v8, v7);
    v11 = v8 - v7;
    if (!v10)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v18[0] = a1;
    LOWORD(v18[1]) = a2;
    BYTE2(v18[1]) = BYTE2(a2);
    BYTE3(v18[1]) = BYTE3(a2);
    BYTE4(v18[1]) = BYTE4(a2);
    BYTE5(v18[1]) = BYTE5(a2);
    v4 = v18 + BYTE6(a2);
    v5 = v18;
    return sub_10064D294(v5, v4, a3);
  }

  v12 = a1;
  v11 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v6 = a3;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v13 = __DataStorage._offset.getter();
    if (!__OFSUB__(v12, v13))
    {
      v9 += v12 - v13;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v14 = __DataStorage._length.getter();
  if (v14 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  v16 = (v15 + v9);
  if (v9)
  {
    v4 = v16;
  }

  else
  {
    v4 = 0;
  }

  a3 = v6;
  v5 = v9;
  return sub_10064D294(v5, v4, a3);
}

uint64_t sub_100590620(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v32 = *a1;
  sub_1003973C8(&v32, v30);
  sub_10064DB34();
  if (v3)
  {
    goto LABEL_34;
  }

  v31[0] = 0;
  v8 = *(&v32 + 1) >> 62;
  if ((*(&v32 + 1) >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_29;
    }

    v10 = *(v32 + 16);
    v9 = *(v32 + 24);
    v11 = __DataStorage._bytes.getter();
    if (v11)
    {
      v12 = __DataStorage._offset.getter();
      if (__OFSUB__(v10, v12))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v11 += v10 - v12;
    }

    v13 = __OFSUB__(v9, v10);
    v14 = v9 - v10;
    if (!v13)
    {
      v15 = __DataStorage._length.getter();
      if (v15 >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      if (v11)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if ((v17 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v17))
        {
          sub_100164808();
          if (!v18)
          {
            goto LABEL_30;
          }

          goto LABEL_33;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v8)
  {
    *v30 = v32;
    *&v30[8] = DWORD2(v32);
    *&v30[12] = WORD6(v32);
    goto LABEL_32;
  }

  v19 = v32;
  v20 = (v32 >> 32) - v32;
  if (v32 >> 32 < v32)
  {
    __break(1u);
    goto LABEL_37;
  }

  v21 = __DataStorage._bytes.getter();
  if (!v21)
  {
    __DataStorage._length.getter();
    goto LABEL_32;
  }

  v22 = v21;
  v23 = __DataStorage._offset.getter();
  if (__OFSUB__(v19, v23))
  {
LABEL_41:
    __break(1u);
  }

  v24 = v19 - v23 + v22;
  v25 = __DataStorage._length.getter();
  if (v24)
  {
    v26 = v25 >= v20 ? v20 : v25;
    if (v26 < 0)
    {
      __break(1u);
LABEL_29:
      *&v30[6] = 0;
      *v30 = 0;
      sub_100164808();
      if (!v18)
      {
        goto LABEL_30;
      }

LABEL_33:
      v4 = v18;
      sub_100590978();
      swift_allocError();
      *v28 = v4;
      *(v28 + 8) = xmmword_1006B50A0;
      *(v28 + 24) = 0;
      swift_willThrow();
LABEL_34:
      sub_1000032A8(a2, &unk_1007803F0, &unk_1006A1770);
      sub_100590924(&v32);
      sub_10058AD00(a1);
      sub_1000032A8(a3, &qword_10077E968, &unk_1006A30E0);
      return v4;
    }
  }

LABEL_32:
  sub_100164808();
  if (v18)
  {
    goto LABEL_33;
  }

LABEL_30:
  sub_100590924(&v32);
  v27 = v31[0];
  v31[3] = &type metadata for FairPlayDecryptionSession;
  v31[4] = &off_10076C3E8;
  LODWORD(v31[0]) = 0x8000;
  v31[1] = v27;
  sub_1003ACAA0(a3, v30);
  v4 = sub_1003AC8A4(v31, a2, v30);
  sub_1000032A8(a3, &qword_10077E968, &unk_1006A30E0);
  sub_10058AD00(a1);
  return v4;
}

unint64_t sub_100590978()
{
  result = qword_100787FC0;
  if (!qword_100787FC0)
  {
    result = swift_getWitnessTable(byte_1006BA888, &type metadata for FairPlay.Error, v0, v1);
    atomic_store(result, &qword_100787FC0);
  }

  return result;
}

uint64_t sub_1005909DC(uint64_t a1)
{
  v22 = type metadata accessor for LocalizedStringResource();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationOptions();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  String.LocalizationOptions.init()();
  sub_100590C70();
  LocalizedStringResource.bundle.getter();
  v15 = sub_10059100C(v7);
  if (v15)
  {
    v16 = v15;
    sub_100590EFC();
  }

  String.LocalizationOptions._localization.setter();
  v17 = a1;
  v18 = v22;
  (*(v2 + 16))(v4, a1, v22);
  (*(v9 + 16))(v12, v14, v8);
  v19 = String.init(localized:options:)();
  (*(v2 + 8))(v17, v18);
  (*(v9 + 8))(v14, v8);
  return v19;
}

unint64_t sub_100590C70()
{
  result = qword_100787FC8;
  if (!qword_100787FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100787FC8);
  }

  return result;
}

uint64_t sub_100590CBC()
{
  v0 = sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.isDirectory(_:), v3);
  (*(v8 + 56))(v2, 1, 1, v7);
  URL.init(filePath:directoryHint:relativeTo:)();
  v11 = objc_allocWithZone(NSBundle);
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = [v11 initWithURL:v13];

  result = (*(v8 + 8))(v10, v7);
  if (v15)
  {
    qword_1007B88B0 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100590EFC()
{
  isa = [v0 localizations];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v2 = objc_opt_self();
  static Locale.preferredLanguages.getter();
  v3 = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 preferredLocalizationsFromArray:isa forPreferences:v3];

  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v5 + 16))
  {
  }

  else
  {
    __break(1u);
  }
}

id sub_10059100C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for LocalizedStringResource.BundleDescription.forClass(_:))
  {
    (*(v10 + 96))(v12, v9);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [ObjCClassFromMetadata bundleForClass:swift_getObjCClassFromMetadata()];
LABEL_7:
    (*(v10 + 8))(a1, v9);
    return v15;
  }

  if (v13 == enum case for LocalizedStringResource.BundleDescription.atURL(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v3 + 32))(v6, v12, v2);
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v15 = [v16 initWithURL:v18];

    (*(v10 + 8))(a1, v9);
    (*(v3 + 8))(v6, v2);
    return v15;
  }

  if (v13 == enum case for LocalizedStringResource.BundleDescription.main(_:))
  {
    v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v21 = [objc_opt_self() mainBundle];
    v22 = [v21 bundleURL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    (*(v3 + 8))(v8, v2);
    v15 = [v20 initWithURL:v25];

    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005913D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = [objc_opt_self() sharedScheduler];
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_100592C28;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100225DB4;
  aBlock[3] = &unk_10076C438;
  v17 = _Block_copy(aBlock);

  v18 = [v12 registerForTaskWithIdentifier:v15 usingQueue:0 launchHandler:v17];
  _Block_release(v17);

  if (v18)
  {
    static Logger.daemon.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1002346CC(v13, v14, aBlock);
      _os_log_impl(&_mh_execute_header, v19, v20, "Background task '%{public}s' handler has been registered", v21, 0xCu);
      sub_10000710C(v22);
    }

    return (*(v28 + 8))(v11, v29);
  }

  else
  {
    static Logger.daemon.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1002346CC(v13, v14, aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "Background task '%{public}s' handler could not be registered", v26, 0xCu);
      sub_10000710C(v27);
    }

    return (*(v28 + 8))(v9, v29);
  }
}

uint64_t sub_10059178C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v7 = sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a4;
    v17 = a1;
    v18 = v16;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1002346CC(*(a2 + 16), *(a2 + 24), aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "Background task '%{public}s' has started", v18, 0xCu);
    sub_10000710C(v19);

    a1 = v17;
    a4 = v27;
  }

  (*(v11 + 8))(v13, v10);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v28;
  v21[5] = a4;
  v21[6] = a2;
  v21[7] = a1;

  v22 = a1;
  v23 = sub_1004A673C(0, 0, v9, &unk_1006B5140, v21);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = v23;
  aBlock[4] = sub_100592D10;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100592B78;
  aBlock[3] = &unk_10076C4B0;
  v25 = _Block_copy(aBlock);

  [v22 setExpirationHandlerWithReason:v25];
  _Block_release(v25);
}

uint64_t sub_100591AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100591B24, 0, 0);
}

uint64_t sub_100591B24()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_100591C3C;
  v6 = *(v0 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1006B5160, v3, sub_100592EA0, v4, 0, 0, &type metadata for () + 8);
}

uint64_t sub_100591C3C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_100591D78(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for Logger();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[8] = v8;
  *v8 = v5;
  v8[1] = sub_100591ED8;

  return v10();
}

uint64_t sub_100591ED8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100592184;
  }

  else
  {
    v2 = sub_100591FEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100591FEC(uint64_t a1)
{
  v14 = v1;
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    static Logger.daemon.getter();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 56);
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (v4)
    {
      v8 = *(v1 + 16);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1002346CC(*(v8 + 16), *(v8 + 24), &v13);
      _os_log_impl(&_mh_execute_header, v2, v3, "Background task '%{public}s' has completed", v9, 0xCu);
      sub_10000710C(v10);
    }

    (*(v7 + 8))(v5, v6);
    [*(v1 + 24) setTaskCompleted];
  }

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_100592184(uint64_t a1)
{
  v26 = v1;
  static Logger.daemon.getter();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7 = *(v1 + 32);
  if (v4)
  {
    v24 = *(v1 + 48);
    v8 = *(v1 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_1002346CC(*(v8 + 16), *(v8 + 24), &v25);
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Background task '%{public}s' failed: %{public}@", v9, 0x16u);
    sub_1001F8084(v10);

    sub_10000710C(v11);

    (*(v6 + 8))(v24, v7);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    static Logger.daemon.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v1 + 56);
    v17 = *(v1 + 32);
    v18 = *(v1 + 40);
    if (v15)
    {
      v19 = *(v1 + 16);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1002346CC(*(v19 + 16), *(v19 + 24), &v25);
      _os_log_impl(&_mh_execute_header, v13, v14, "Background task '%{public}s' has completed", v20, 0xCu);
      sub_10000710C(v21);
    }

    (*(v18 + 8))(v16, v17);
    [*(v1 + 24) setTaskCompleted];
  }

  v22 = *(v1 + 8);

  return v22();
}

id sub_100592494(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v8 = [a1 setTaskExpiredWithRetryAfter:&v20 error:3600.0];
  v9 = v20;
  if (v8)
  {

    return v9;
  }

  else
  {
    v19 = v20;
    v11 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.daemon.getter();

    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v19 = a1;
      v15 = v14;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v15 = 136446466;
      *(v15 + 4) = sub_1002346CC(*(a2 + 16), *(a2 + 24), &v20);
      *(v15 + 12) = 2114;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v18;
      *v16 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Background task '%{public}s' expired, and retry was denied: %{public}@", v15, 0x16u);
      sub_1001F8084(v16);

      sub_10000710C(v17);

      a1 = v19;
    }

    (*(v5 + 8))(v7, v4);
    [a1 setTaskCompleted];
  }
}

uint64_t sub_100592778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a1;
  v10[6] = a3;

  sub_1004A673C(0, 0, v8, &unk_1006B5150, v10);
}

uint64_t sub_1005928A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_100592964, 0, 0);
}

uint64_t sub_100592964(uint64_t a1)
{
  v19 = v1;
  static Logger.daemon.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[7];
    v4 = v1[8];
    v6 = v1[6];
    v7 = v1[3];
    v8 = v1[4];
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1002346CC(*(v7 + 16), *(v7 + 24), &v18);
    *(v9 + 12) = 2082;
    v1[2] = v8;
    type metadata accessor for BGSystemTaskExpirationReason(0);
    v10 = String.init<A>(describing:)();
    v12 = sub_1002346CC(v10, v11, &v18);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Background task '%{public}s' expired: %{public}s", v9, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v14 = v1[7];
    v13 = v1[8];
    v15 = v1[6];

    (*(v14 + 8))(v13, v15);
  }

  Task.cancel()();

  v16 = v1[1];

  return v16();
}

uint64_t sub_100592B78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100592BCC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100592C3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100214EFC;

  return sub_100591AFC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100592D18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_1005928A0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100592DE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F0E54;

  return sub_100591D78(a1, v4, v5, v7, v6);
}

uint64_t sub_100592EB0(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 320) = a5;
  *(v6 + 328) = v5;
  *(v6 + 569) = a3;
  *(v6 + 568) = a2;
  *(v6 + 304) = a1;
  *(v6 + 312) = a4;
  v7 = sub_1001F0C48(&unk_100784B60, &qword_1006ACE20);
  *(v6 + 336) = v7;
  *(v6 + 344) = *(v7 - 8);
  *(v6 + 352) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v6 + 360) = v8;
  *(v6 + 368) = *(v8 - 8);
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();

  return _swift_task_switch(sub_100593094, 0, 0);
}

uint64_t sub_100593094(uint64_t a1)
{
  v2 = *(v1 + 312);
  v3 = *(v1 + 320);
  static Logger.restore.getter();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v1 + 312);
    v8 = *(v1 + 320);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v8;
    *v11 = v9;
    v11[1] = v8;
    v12 = v9;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@][%@)] Hard failing restore", v10, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
  }

  v14 = *(v1 + 464);
  v15 = *(v1 + 360);
  v16 = *(v1 + 368);

  v17 = *(v16 + 8);
  *(v1 + 472) = v17;
  *(v1 + 480) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v14, v15);
  v18 = _convertErrorToNSError(_:)();
  v19 = IXCreateUserPresentableError();
  *(v1 + 488) = v19;

  if (!v19)
  {
    v24 = *(v1 + 312);
    v25 = *(v1 + 320);
    static Logger.restore.getter();
    v26 = v24;
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = *(v1 + 312);
      v30 = *(v1 + 320);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412546;
      *(v32 + 4) = v31;
      *(v32 + 12) = 2112;
      *(v32 + 14) = v30;
      *v33 = v31;
      v33[1] = v30;
      v34 = v31;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%@][%@] Failed to create error", v32, 0x16u);
      sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
      swift_arrayDestroy();
    }

    v36 = *(v1 + 416);
    v37 = *(v1 + 360);

    v38 = v36;
    v39 = v37;
    goto LABEL_30;
  }

  v20 = [*(v1 + 328) conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithUserDataPromise];
  v21 = *(v1 + 328);
  if ((v20 & 1) == 0)
  {
    v40 = _convertErrorToNSError(_:)();
    *(v1 + 272) = 0;
    v41 = [v21 cancelForReason:v40 client:28 error:v1 + 272];

    v42 = *(v1 + 272);
    v43 = *(v1 + 312);
    v44 = *(v1 + 320);
    if (v41)
    {
      v45 = v42;
      static Logger.restore.getter();
      v46 = v43;
      v47 = v44;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v51 = *(v1 + 312);
        v50 = *(v1 + 320);
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412546;
        *(v52 + 4) = v51;
        *(v52 + 12) = 2112;
        *(v52 + 14) = v50;
        *v53 = v51;
        v53[1] = v50;
        v54 = v51;
        v55 = v50;
        _os_log_impl(&_mh_execute_header, v48, v49, "[%@][%@] Canceled app coordinator", v52, 0x16u);
        sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
        swift_arrayDestroy();
      }

      v56 = *(v1 + 456);
      goto LABEL_20;
    }

    v74 = v42;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.restore.getter();
    v75 = v43;
    v76 = v44;
    swift_errorRetain();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v77, v78))
    {
      log = v77;
      v79 = *(v1 + 312);
      v80 = *(v1 + 320);
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412802;
      *(v81 + 4) = v79;
      *(v81 + 12) = 2112;
      *(v81 + 14) = v80;
      *v82 = v79;
      v82[1] = v80;
      *(v81 + 22) = 2112;
      v83 = v79;
      v84 = v80;
      swift_errorRetain();
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 24) = v85;
      v82[2] = v85;
      _os_log_impl(&_mh_execute_header, log, v78, "[%@][%@] Unable to cancel coordinator due to error: %@", v81, 0x20u);
      sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
      swift_arrayDestroy();
    }

    else
    {
    }

    v38 = *(v1 + 408);
LABEL_29:
    v39 = *(v1 + 360);
    goto LABEL_30;
  }

  if ([*(v1 + 328) conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise])
  {
    v22 = swift_task_alloc();
    *(v1 + 496) = v22;
    *v22 = v1;
    v22[1] = sub_100593AC0;

    return sub_1005F7114();
  }

  v57 = *(v1 + 328);
  v58 = _convertErrorToNSError(_:)();
  *(v1 + 280) = 0;
  v59 = [v57 cancelForReason:v58 client:28 error:v1 + 280];

  v60 = *(v1 + 280);
  v61 = *(v1 + 312);
  v62 = *(v1 + 320);
  if (!v59)
  {
    v86 = v60;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.restore.getter();
    v87 = v61;
    v88 = v62;
    swift_errorRetain();
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      loga = v89;
      v91 = *(v1 + 312);
      v92 = *(v1 + 320);
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412802;
      *(v93 + 4) = v91;
      *(v93 + 12) = 2112;
      *(v93 + 14) = v92;
      *v94 = v91;
      v94[1] = v92;
      *(v93 + 22) = 2112;
      v95 = v91;
      v96 = v92;
      swift_errorRetain();
      v97 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 24) = v97;
      v94[2] = v97;
      _os_log_impl(&_mh_execute_header, loga, v90, "[%@][%@] Unable to cancel coordinator due to error: %@", v93, 0x20u);
      sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
      swift_arrayDestroy();
    }

    else
    {
    }

    v38 = *(v1 + 376);
    goto LABEL_29;
  }

  v63 = v60;
  static Logger.restore.getter();
  v64 = v61;
  v65 = v62;
  v48 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v66))
  {
    v68 = *(v1 + 312);
    v67 = *(v1 + 320);
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v69 = 138412546;
    *(v69 + 4) = v68;
    *(v69 + 12) = 2112;
    *(v69 + 14) = v67;
    *v70 = v68;
    v70[1] = v67;
    v71 = v68;
    v72 = v67;
    _os_log_impl(&_mh_execute_header, v48, v66, "[%@][%@] Canceled app coordinator", v69, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
  }

  v56 = *(v1 + 424);
LABEL_20:
  v73 = *(v1 + 360);

  v38 = v56;
  v39 = v73;
LABEL_30:
  v17(v38, v39);

  v98 = *(v1 + 8);

  return v98();
}

uint64_t sub_100593AC0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 504) = a1;
  *(v3 + 512) = v1;

  if (v1)
  {
    v4 = sub_100594D10;
  }

  else
  {
    v4 = sub_100593C00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100593C00(uint64_t a1)
{
  v2 = *(v1 + 504);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v5 = *(v1 + 312);
    v6 = *(v1 + 320);
    static Logger.restore.getter();
    v7 = v5;
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v1 + 312);
      v11 = *(v1 + 320);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v12;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v11;
      *v14 = v12;
      v14[1] = v11;
      v15 = v12;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@][%@] Creating app asset promise", v13, 0x16u);
      sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
      swift_arrayDestroy();
    }

    v17 = *(v1 + 472);
    v18 = *(v1 + 448);
    v19 = *(v1 + 360);

    v17(v18, v19);
    sub_100528C10(_swiftEmptyArrayStorage);
    v20 = objc_allocWithZone(IXPromisedStreamingZipTransfer);
    v21 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v23 = [v20 initWithName:v21 client:28 streamingZipOptions:isa archiveSize:0 diskSpaceNeeded:0];
    *(v1 + 520) = v23;

    if (!v23)
    {
      v4 = *(v1 + 488);
      goto LABEL_16;
    }

    *(v1 + 288) = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
    v3 = v23;
    v24 = swift_dynamicCastObjCProtocolConditional();
    if (!v24)
    {
      __break(1u);
      return _swift_continuation_await(v24);
    }

    v25 = v24;
    v26 = *(v1 + 328);
    *(v1 + 296) = 0;
    v27 = v26;
    v28 = [v25 setAppAssetPromise:v3 error:v1 + 296];
    v29 = *(v1 + 296);
    if (v28)
    {
      v30 = v1 + 80;
      v32 = *(v1 + 344);
      v31 = *(v1 + 352);
      v34 = *(v1 + 328);
      v33 = *(v1 + 336);
      v35 = v29;

      v36 = _convertErrorToNSError(_:)();
      *(v1 + 528) = v36;
      *(v1 + 80) = v1;
      *(v1 + 88) = sub_100594404;
      swift_continuation_init();
      *(v1 + 264) = v33;
      v37 = sub_10020A748((v1 + 240));
      sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
      CheckedContinuation.init(continuation:function:)();
      (*(v32 + 32))(v37, v31, v33);
      *(v1 + 208) = _NSConcreteStackBlock;
      *(v1 + 216) = 1107296256;
      *(v1 + 224) = sub_10041D918;
      *(v1 + 232) = &unk_10076C5F0;
      goto LABEL_12;
    }

    v41 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v42 = *(v1 + 320);
    v43 = *(v1 + 312);

    static Logger.restore.getter();
    v44 = v43;
    v45 = v42;
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v1 + 520);
    if (v48)
    {
      v51 = *(v1 + 312);
      v50 = *(v1 + 320);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412802;
      *(v52 + 4) = v51;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v50;
      *v53 = v51;
      v53[1] = v50;
      *(v52 + 22) = 2112;
      v54 = v51;
      v55 = v50;
      swift_errorRetain();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 24) = v56;
      v53[2] = v56;
      _os_log_impl(&_mh_execute_header, v46, v47, "[%@][%@] Unable to cancel app asset promise due to error: %@", v52, 0x20u);
      sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
      swift_arrayDestroy();
    }

    else
    {
    }

    v57 = *(v1 + 520);
    (*(v1 + 472))(*(v1 + 392), *(v1 + 360));
    v58 = v57;
    v3 = *(v1 + 520);
  }

  *(v1 + 544) = v3;
  if (([v3 isComplete] & 1) == 0)
  {
    v30 = v1 + 16;
    v32 = *(v1 + 344);
    v38 = *(v1 + 352);
    v33 = *(v1 + 336);
    v36 = _convertErrorToNSError(_:)();
    *(v1 + 552) = v36;
    *(v1 + 16) = v1;
    *(v1 + 24) = sub_100594974;
    swift_continuation_init();
    *(v1 + 200) = v33;
    v37 = sub_10020A748((v1 + 176));
    sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
    CheckedContinuation.init(continuation:function:)();
    (*(v32 + 32))(v37, v38, v33);
    *(v1 + 144) = _NSConcreteStackBlock;
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = sub_10041D918;
    *(v1 + 168) = &unk_10076C5C8;
LABEL_12:
    [v3 cancelForReason:v36 client:28 completion:?];
    (*(v32 + 8))(v37, v33);
    v24 = v30;

    return _swift_continuation_await(v24);
  }

  v4 = *(v1 + 488);

LABEL_16:

  v39 = *(v1 + 8);

  return v39();
}

uint64_t sub_100594404()
{
  v1 = *(*v0 + 112);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_100595660;
  }

  else
  {
    v2 = sub_100594540;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100594540()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  static Logger.restore.getter();
  v3 = v1;
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 520);
  if (v7)
  {
    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v9;
    *v12 = v10;
    v12[1] = v9;
    v13 = v10;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@][%@] Set app asset fake promise", v11, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();

    v15 = v5;
  }

  else
  {
    v15 = *(v0 + 520);
    v8 = v5;
  }

  (*(v0 + 472))(*(v0 + 440), *(v0 + 360));
  v16 = *(v0 + 520);
  *(v0 + 544) = v16;
  v17 = v16;
  if ([v17 isComplete])
  {
    v18 = *(v0 + 488);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v22 = *(v0 + 344);
    v21 = *(v0 + 352);
    v23 = *(v0 + 336);
    v24 = _convertErrorToNSError(_:)();
    *(v0 + 552) = v24;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100594974;
    swift_continuation_init();
    *(v0 + 200) = v23;
    v25 = sub_10020A748((v0 + 176));
    sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
    CheckedContinuation.init(continuation:function:)();
    (*(v22 + 32))(v25, v21, v23);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10041D918;
    *(v0 + 168) = &unk_10076C5C8;
    [v17 cancelForReason:v24 client:28 completion:?];
    (*(v22 + 8))(v25, v23);

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100594974()
{
  v1 = *(*v0 + 48);
  *(*v0 + 560) = v1;
  if (v1)
  {
    v2 = sub_100595ADC;
  }

  else
  {
    v2 = sub_100594AB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100594AB0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  static Logger.restore.getter();
  v3 = v1;
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v7;
    *v10 = v8;
    v10[1] = v7;
    v11 = v8;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@][%@] Canceled app asset promise", v9, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 544);
  v14 = *(v0 + 472);
  v15 = *(v0 + 432);
  v16 = *(v0 + 360);

  v14(v15, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100594D10(uint64_t a1)
{
  v3 = *(v1 + 312);
  v2 = *(v1 + 320);
  static Logger.restore.getter();
  v4 = v3;
  v5 = v2;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v1 + 312);
    v8 = *(v1 + 320);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412802;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v8;
    *v11 = v9;
    v11[1] = v8;
    *(v10 + 22) = 2112;
    v12 = v9;
    v13 = v8;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    v11[2] = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@][%@] Unable get asset promise due to error: %@", v10, 0x20u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v1 + 472))(*(v1 + 400), *(v1 + 360));
  v15 = *(v1 + 312);
  v16 = *(v1 + 320);
  static Logger.restore.getter();
  v17 = v15;
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = *(v1 + 312);
    v21 = *(v1 + 320);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412546;
    *(v23 + 4) = v22;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v21;
    *v24 = v22;
    v24[1] = v21;
    v25 = v22;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%@][%@] Creating app asset promise", v23, 0x16u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
  }

  v27 = *(v1 + 472);
  v28 = *(v1 + 448);
  v29 = *(v1 + 360);

  v27(v28, v29);
  sub_100528C10(_swiftEmptyArrayStorage);
  v30 = objc_allocWithZone(IXPromisedStreamingZipTransfer);
  v31 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v30 initWithName:v31 client:28 streamingZipOptions:isa archiveSize:0 diskSpaceNeeded:0];
  *(v1 + 520) = v33;

  if (v33)
  {
    *(v1 + 288) = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
    v34 = v33;
    v35 = swift_dynamicCastObjCProtocolConditional();
    if (!v35)
    {
      __break(1u);
      return _swift_continuation_await(v35);
    }

    v36 = v35;
    v37 = *(v1 + 328);
    *(v1 + 296) = 0;
    v38 = v37;
    v39 = [v36 setAppAssetPromise:v34 error:v1 + 296];
    v40 = *(v1 + 296);
    if (v39)
    {
      v41 = v1 + 80;
      v43 = *(v1 + 344);
      v42 = *(v1 + 352);
      v45 = *(v1 + 328);
      v44 = *(v1 + 336);
      v46 = v40;

      v47 = _convertErrorToNSError(_:)();
      *(v1 + 528) = v47;
      *(v1 + 80) = v1;
      *(v1 + 88) = sub_100594404;
      swift_continuation_init();
      *(v1 + 264) = v44;
      v48 = sub_10020A748((v1 + 240));
      sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
      CheckedContinuation.init(continuation:function:)();
      (*(v43 + 32))(v48, v42, v44);
      *(v1 + 208) = _NSConcreteStackBlock;
      *(v1 + 216) = 1107296256;
      *(v1 + 224) = sub_10041D918;
      *(v1 + 232) = &unk_10076C5F0;
      goto LABEL_20;
    }

    v50 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v51 = *(v1 + 320);
    v52 = *(v1 + 312);

    static Logger.restore.getter();
    v53 = v52;
    v54 = v51;
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v1 + 520);
    if (v57)
    {
      v60 = *(v1 + 312);
      v59 = *(v1 + 320);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412802;
      *(v61 + 4) = v60;
      *(v61 + 12) = 2112;
      *(v61 + 14) = v59;
      *v62 = v60;
      v62[1] = v59;
      *(v61 + 22) = 2112;
      v63 = v60;
      v64 = v59;
      swift_errorRetain();
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 24) = v65;
      v62[2] = v65;
      _os_log_impl(&_mh_execute_header, v55, v56, "[%@][%@] Unable to cancel app asset promise due to error: %@", v61, 0x20u);
      sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
      swift_arrayDestroy();
    }

    else
    {
    }

    v66 = *(v1 + 520);
    (*(v1 + 472))(*(v1 + 392), *(v1 + 360));
    v34 = *(v1 + 520);
    *(v1 + 544) = v34;
    v67 = v66;
    if (([v34 isComplete] & 1) == 0)
    {
      v41 = v1 + 16;
      v43 = *(v1 + 344);
      v70 = *(v1 + 352);
      v44 = *(v1 + 336);
      v47 = _convertErrorToNSError(_:)();
      *(v1 + 552) = v47;
      *(v1 + 16) = v1;
      *(v1 + 24) = sub_100594974;
      swift_continuation_init();
      *(v1 + 200) = v44;
      v48 = sub_10020A748((v1 + 176));
      sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
      CheckedContinuation.init(continuation:function:)();
      (*(v43 + 32))(v48, v70, v44);
      *(v1 + 144) = _NSConcreteStackBlock;
      *(v1 + 152) = 1107296256;
      *(v1 + 160) = sub_10041D918;
      *(v1 + 168) = &unk_10076C5C8;
LABEL_20:
      [v34 cancelForReason:v47 client:28 completion:?];
      (*(v43 + 8))(v48, v44);
      v35 = v41;

      return _swift_continuation_await(v35);
    }

    v49 = *(v1 + 488);
  }

  else
  {
    v49 = *(v1 + 488);
  }

  v68 = *(v1 + 8);

  return v68();
}

uint64_t sub_100595660(uint64_t a1)
{
  swift_willThrow();
  v3 = *(v1 + 312);
  v2 = *(v1 + 320);

  static Logger.restore.getter();
  v4 = v3;
  v5 = v2;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 520);
  if (v8)
  {
    v11 = *(v1 + 312);
    v10 = *(v1 + 320);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412802;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v10;
    *v13 = v11;
    v13[1] = v10;
    *(v12 + 22) = 2112;
    v14 = v11;
    v15 = v10;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    v13[2] = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@][%@] Unable to cancel app asset promise due to error: %@", v12, 0x20u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = *(v1 + 520);
  (*(v1 + 472))(*(v1 + 392), *(v1 + 360));
  v18 = *(v1 + 520);
  *(v1 + 544) = v18;
  v19 = v17;
  if ([v18 isComplete])
  {
    v20 = *(v1 + 488);

    v21 = *(v1 + 8);

    return v21();
  }

  else
  {
    v24 = *(v1 + 344);
    v23 = *(v1 + 352);
    v25 = *(v1 + 336);
    v26 = _convertErrorToNSError(_:)();
    *(v1 + 552) = v26;
    *(v1 + 16) = v1;
    *(v1 + 24) = sub_100594974;
    swift_continuation_init();
    *(v1 + 200) = v25;
    v27 = sub_10020A748((v1 + 176));
    sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
    CheckedContinuation.init(continuation:function:)();
    (*(v24 + 32))(v27, v23, v25);
    *(v1 + 144) = _NSConcreteStackBlock;
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = sub_10041D918;
    *(v1 + 168) = &unk_10076C5C8;
    [v18 cancelForReason:v26 client:28 completion:?];
    (*(v24 + 8))(v27, v25);

    return _swift_continuation_await(v1 + 16);
  }
}

uint64_t sub_100595ADC(uint64_t a1)
{
  v2 = *(v1 + 552);
  v4 = *(v1 + 312);
  v3 = *(v1 + 320);
  swift_willThrow();

  static Logger.restore.getter();
  v5 = v4;
  v6 = v3;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 488);
    v11 = *(v1 + 312);
    v10 = *(v1 + 320);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412802;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v10;
    *v13 = v11;
    v13[1] = v10;
    *(v12 + 22) = 2112;
    v14 = v11;
    v15 = v10;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    v13[2] = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%@][%@] Unable to cancel app asset promise due to error: %@", v12, 0x20u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();

    v17 = *(v1 + 544);
    v7 = v17;
  }

  else
  {
    v18 = *(v1 + 544);

    v17 = *(v1 + 544);
  }

  v19 = *(v1 + 472);
  v20 = *(v1 + 384);
  v21 = *(v1 + 360);

  v19(v20, v21);

  v22 = *(v1 + 8);

  return v22();
}

uint64_t sub_100595DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[36] = a5;
  v6[37] = v5;
  v6[34] = a3;
  v6[35] = a4;
  v6[32] = a1;
  v6[33] = a2;
  v7 = sub_1001F0C48(&unk_100784B60, &qword_1006ACE20);
  v6[38] = v7;
  v6[39] = *(v7 - 8);
  v6[40] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v6[41] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[42] = v8;
  v6[43] = *(v8 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = type metadata accessor for MediaAPIMetadata(0);
  v6[46] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[47] = v9;
  v6[48] = *(v9 - 8);
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();

  return _swift_task_switch(sub_100595FDC, 0, 0);
}

uint64_t sub_100595FDC()
{
  if ([*(v0 + 296) creatorIdentifier] != 28 || (objc_msgSend(*(v0 + 296), "hasPlaceholderPromise") & 1) != 0)
  {
LABEL_15:

    v36 = *(v0 + 8);

    return v36();
  }

  v1 = *(v0 + 288);
  static Logger.restore.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Configuring placeholder promise", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920, &qword_10069E6A0);
  }

  v9 = *(v0 + 408);
  v10 = *(v0 + 376);
  v11 = *(v0 + 384);
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);

  v14 = *(v11 + 8);
  *(v0 + 416) = v14;
  *(v0 + 424) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v9, v10);
  sub_100006190(0, &unk_100788070, IXPlaceholder_ptr);
  swift_bridgeObjectRetain_n();
  v15 = sub_1005F75EC(v13, v12, v13, v12, 2);
  *(v0 + 432) = v15;
  v16 = v15;
  if (!v15)
  {
    sub_100476890();
    swift_allocError();
    *v35 = 3;
    swift_willThrow();
    goto LABEL_15;
  }

  v17 = [objc_allocWithZone(IXPlaceholderAttributes) init];
  *(v0 + 440) = v17;
  *(v0 + 216) = 0;
  v18 = [v16 setPlaceholderAttributes:v17 error:v0 + 216];
  v19 = *(v0 + 216);
  if (!v18 || (v20 = *(v0 + 272), *(v0 + 224) = 0, v21 = v19, v22 = [v16 setMetadata:v20 error:v0 + 224], v19 = *(v0 + 224), !v22))
  {
    v34 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_15;
  }

  v23 = *(v0 + 272);
  v24 = v19;
  v25 = [v23 itemID];
  if (v25)
  {
    v26 = *(v0 + 280);
    v27 = *(v0 + 288);
    v28 = v25;
    v29 = [v25 unsignedLongLongValue];

    sub_10020A980(v26, v0 + 112);
    *(v0 + 80) = v29;
    *(v0 + 88) = 0;
    *(v0 + 96) = 1;
    *(v0 + 104) = v27;
    v30 = v27;
    v31 = swift_task_alloc();
    *(v0 + 448) = v31;
    *v31 = v0;
    v31[1] = sub_100596814;
    v32 = *(v0 + 368);

    return sub_10033EF00(v32);
  }

  else
  {
    v37 = *(v0 + 432);
    *(v0 + 232) = 0;
    v38 = [v37 setConfigurationCompleteWithError:v0 + 232];
    v39 = *(v0 + 232);
    if (!v38)
    {
      v59 = *(v0 + 432);
      v58 = *(v0 + 440);
      v60 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_15;
    }

    v40 = *(v0 + 432);
    v41 = *(v0 + 296);
    *(v0 + 240) = 0;
    v42 = v39;
    v43 = [v41 setPlaceholderPromise:v40 error:v0 + 240];
    v44 = *(v0 + 240);
    if (v43)
    {
      v45 = *(v0 + 288);
      v46 = v44;
      static Logger.restore.getter();
      v47 = v45;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = *(v0 + 288);
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        *(v51 + 4) = v50;
        *v52 = v50;
        v53 = v50;
        _os_log_impl(&_mh_execute_header, v48, v49, "[%@] Placeholder promise configured", v51, 0xCu);
        sub_1000032A8(v52, &qword_10077F920, &qword_10069E6A0);
      }

      v54 = *(v0 + 432);
      v55 = *(v0 + 416);
      v56 = *(v0 + 400);
      v57 = *(v0 + 376);

      v55(v56, v57);
      goto LABEL_15;
    }

    v68 = *(v0 + 432);
    v62 = *(v0 + 312);
    v61 = *(v0 + 320);
    v63 = *(v0 + 304);
    v64 = v44;
    *(v0 + 464) = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100476890();
    swift_allocError();
    *v65 = 2;
    v66 = _convertErrorToNSError(_:)();
    *(v0 + 472) = v66;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100597670;
    swift_continuation_init();
    *(v0 + 208) = v63;
    v67 = sub_10020A748((v0 + 184));
    sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
    CheckedContinuation.init(continuation:function:)();
    (*(v62 + 32))(v67, v61, v63);
    *(v0 + 152) = _NSConcreteStackBlock;
    *(v0 + 160) = 1107296256;
    *(v0 + 168) = sub_10041D918;
    *(v0 + 176) = &unk_10076C500;
    [v68 cancelForReason:v66 client:28 completion:v0 + 152];
    (*(v62 + 8))(v67, v63);

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100596814()
{
  v2 = *v1;
  *(v2 + 456) = v0;

  sub_1002232F0(v2 + 80);
  if (v0)
  {
    v3 = sub_100597098;
  }

  else
  {
    v3 = sub_100596964;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100596964()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  sub_100337114(*(v0 + 368) + *(*(v0 + 360) + 28), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 328);
    sub_1004A637C(*(v0 + 368));
    sub_1000032A8(v4, &unk_1007809F0, &unk_10069E8F0);
    goto LABEL_12;
  }

  v5 = *(v0 + 352);
  v6 = *(v0 + 288);
  (*(*(v0 + 344) + 32))(v5, *(v0 + 328), *(v0 + 336));
  v7 = sub_100598524(v5, v6);
  if (!v7)
  {
    v18 = *(v0 + 368);
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
    v17 = v18;
    goto LABEL_7;
  }

  v8 = v7;
  v9 = *(v0 + 432);
  *(v0 + 248) = 0;
  v10 = [v9 setIconPromise:v8 error:v0 + 248];
  v11 = *(v0 + 248);
  v12 = *(v0 + 368);
  v14 = *(v0 + 344);
  v13 = *(v0 + 352);
  v15 = *(v0 + 336);
  if (v10)
  {
    v16 = v11;

    (*(v14 + 8))(v13, v15);
    v17 = v12;
LABEL_7:
    sub_1004A637C(v17);
    goto LABEL_12;
  }

  v19 = v11;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v14 + 8))(v13, v15);
  sub_1004A637C(v12);
  static Logger.restore.getter();
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to set artwork: %@", v22, 0xCu);
    sub_1000032A8(v23, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {
  }

  (*(v0 + 416))(*(v0 + 392), *(v0 + 376));
LABEL_12:
  v25 = *(v0 + 432);
  *(v0 + 232) = 0;
  v26 = [v25 setConfigurationCompleteWithError:v0 + 232];
  v27 = *(v0 + 232);
  if (!v26)
  {
    v48 = *(v0 + 432);
    v47 = *(v0 + 440);
    v49 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v46 = *(v0 + 8);
LABEL_18:

    return v46();
  }

  v28 = *(v0 + 432);
  v29 = *(v0 + 296);
  *(v0 + 240) = 0;
  v30 = v27;
  v31 = [v29 setPlaceholderPromise:v28 error:v0 + 240];
  v32 = *(v0 + 240);
  if (v31)
  {
    v33 = *(v0 + 288);
    v34 = v32;
    static Logger.restore.getter();
    v35 = v33;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 288);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v38;
      *v40 = v38;
      v41 = v38;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%@] Placeholder promise configured", v39, 0xCu);
      sub_1000032A8(v40, &qword_10077F920, &qword_10069E6A0);
    }

    v42 = *(v0 + 432);
    v43 = *(v0 + 416);
    v44 = *(v0 + 400);
    v45 = *(v0 + 376);

    v43(v44, v45);

    v46 = *(v0 + 8);
    goto LABEL_18;
  }

  v58 = *(v0 + 432);
  v52 = *(v0 + 312);
  v51 = *(v0 + 320);
  v53 = *(v0 + 304);
  v54 = v32;
  *(v0 + 464) = _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100476890();
  swift_allocError();
  *v55 = 2;
  v56 = _convertErrorToNSError(_:)();
  *(v0 + 472) = v56;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100597670;
  swift_continuation_init();
  *(v0 + 208) = v53;
  v57 = sub_10020A748((v0 + 184));
  sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
  CheckedContinuation.init(continuation:function:)();
  (*(v52 + 32))(v57, v51, v53);
  *(v0 + 152) = _NSConcreteStackBlock;
  *(v0 + 160) = 1107296256;
  *(v0 + 168) = sub_10041D918;
  *(v0 + 176) = &unk_10076C500;
  [v58 cancelForReason:v56 client:28 completion:v0 + 152];
  (*(v52 + 8))(v57, v53);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100597098(uint64_t a1)
{
  static Logger.restore.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to set artwork: %@", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920, &qword_10069E6A0);
  }

  else
  {
  }

  (*(v1 + 416))(*(v1 + 392), *(v1 + 376));
  v7 = *(v1 + 432);
  *(v1 + 232) = 0;
  v8 = [v7 setConfigurationCompleteWithError:v1 + 232];
  v9 = *(v1 + 232);
  if ((v8 & 1) == 0)
  {
    v30 = *(v1 + 432);
    v29 = *(v1 + 440);
    v31 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v28 = *(v1 + 8);
LABEL_10:

    return v28();
  }

  v10 = *(v1 + 432);
  v11 = *(v1 + 296);
  *(v1 + 240) = 0;
  v12 = v9;
  v13 = [v11 setPlaceholderPromise:v10 error:v1 + 240];
  v14 = *(v1 + 240);
  if (v13)
  {
    v15 = *(v1 + 288);
    v16 = v14;
    static Logger.restore.getter();
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v1 + 288);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v20;
      *v22 = v20;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Placeholder promise configured", v21, 0xCu);
      sub_1000032A8(v22, &qword_10077F920, &qword_10069E6A0);
    }

    v24 = *(v1 + 432);
    v25 = *(v1 + 416);
    v26 = *(v1 + 400);
    v27 = *(v1 + 376);

    v25(v26, v27);

    v28 = *(v1 + 8);
    goto LABEL_10;
  }

  v40 = *(v1 + 432);
  v34 = *(v1 + 312);
  v33 = *(v1 + 320);
  v35 = *(v1 + 304);
  v36 = v14;
  *(v1 + 464) = _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100476890();
  swift_allocError();
  *v37 = 2;
  v38 = _convertErrorToNSError(_:)();
  *(v1 + 472) = v38;

  *(v1 + 16) = v1;
  *(v1 + 24) = sub_100597670;
  swift_continuation_init();
  *(v1 + 208) = v35;
  v39 = sub_10020A748((v1 + 184));
  sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
  CheckedContinuation.init(continuation:function:)();
  (*(v34 + 32))(v39, v33, v35);
  *(v1 + 152) = _NSConcreteStackBlock;
  *(v1 + 160) = 1107296256;
  *(v1 + 168) = sub_10041D918;
  *(v1 + 176) = &unk_10076C500;
  [v40 cancelForReason:v38 client:28 completion:v1 + 152];
  (*(v34 + 8))(v39, v35);

  return _swift_continuation_await(v1 + 16);
}

uint64_t sub_100597670()
{
  v1 = *(*v0 + 48);
  *(*v0 + 480) = v1;
  if (v1)
  {
    v2 = sub_1005978AC;
  }

  else
  {
    v2 = sub_1005977AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005977AC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);

  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1005978AC(uint64_t a1)
{
  v2 = v1[59];
  v4 = v1[54];
  v3 = v1[55];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

void sub_1005979B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v57 = a5;
  v8 = type metadata accessor for Logger();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    swift_errorRetain();
    static Logger.install.getter();
    swift_errorRetain();
    v24 = a4;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock = v54;
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = v24;
      *(v27 + 12) = 2082;
      swift_getErrorValue();
      v29 = v24;
      v30 = Error.localizedDescription.getter();
      v32 = sub_1002346CC(v30, v31, &aBlock);

      *(v27 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Error fetching artwork data: %{public}s", v27, 0x16u);
      sub_1000032A8(v28, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v54);
    }

    (*(v55 + 8))(v16, v56);
    v33 = _convertErrorToNSError(_:)();
    v62 = nullsub_1;
    v63 = 0;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_100491B44;
    v61 = &unk_10076C5A0;
    v34 = _Block_copy(&aBlock);
    [v57 cancelForReason:v33 client:28 completion:v34];
    _Block_release(v34);
  }

  else
  {
    sub_100337114(a1, v19);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1000032A8(v19, &unk_1007809F0, &unk_10069E8F0);
      static Logger.install.getter();
      v35 = a4;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v35;
        *v39 = v35;
        v40 = v35;
        _os_log_impl(&_mh_execute_header, v36, v37, "[%@] Error fetching artwork data", v38, 0xCu);
        sub_1000032A8(v39, &qword_10077F920, &qword_10069E6A0);
      }

      (*(v55 + 8))(v11, v56);
      sub_100476890();
      swift_allocError();
      *v41 = 3;
      v42 = _convertErrorToNSError(_:)();

      v62 = nullsub_1;
      v63 = 0;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100491B44;
      v61 = &unk_10076C578;
      v43 = _Block_copy(&aBlock);
      [v57 cancelForReason:v42 client:28 completion:v43];
      _Block_release(v43);
    }

    else
    {
      (*(v21 + 32))(v23, v19, v20);
      static Logger.install.getter();
      v44 = a4;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        *(v47 + 4) = v44;
        *v48 = v44;
        v49 = v44;
        _os_log_impl(&_mh_execute_header, v45, v46, "[%@] Artwork request completed successfully", v47, 0xCu);
        sub_1000032A8(v48, &qword_10077F920, &qword_10069E6A0);
      }

      (*(v55 + 8))(v14, v56);
      v50 = v57;
      [v57 setShouldCopy:0];
      URL._bridgeToObjectiveC()(v51);
      v53 = v52;
      [v50 setTransferPath:v52];

      [v50 setComplete:1];
      (*(v21 + 8))(v23, v20);
    }
  }
}

uint64_t sub_10059810C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_1000032A8(v10, &unk_1007809F0, &unk_10069E8F0);
}

void sub_100598288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLRequest();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() ephemeralSessionConfiguration];
  v14 = [objc_opt_self() sessionWithConfiguration:v13];

  (*(v6 + 16))(v8, a1, v5);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v12, v9);
  aBlock[4] = v19;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10059810C;
  aBlock[3] = &unk_10076C550;
  v16 = _Block_copy(aBlock);

  v17 = [v14 downloadTaskWithRequest:isa completionHandler:v16];
  _Block_release(v16);

  [v17 resume];
}

id sub_100598524(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006190(0, &qword_100788080, IXPromisedTransferToPath_ptr);
  v8 = sub_1005F74C4(0x6B726F77747261, 0xE700000000000000, 0);
  if (URL.isFileURL.getter())
  {
    [v8 setShouldCopy:1];
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    [v8 setTransferPath:v10];

    [v8 setComplete:1];
  }

  else
  {
    static Logger.install.getter();
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Starting artwork request", v15, 0xCu);
      sub_1000032A8(v16, &qword_10077F920, &qword_10069E6A0);
    }

    (*(v5 + 8))(v7, v4);
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *(v18 + 24) = v8;
    v19 = v12;
    v20 = v8;
    sub_100598288(a1, sub_1005987D0, v18);
  }

  return v8;
}

uint64_t sub_1005987D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100598810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[98] = v4;
  v5[97] = a4;
  v5[96] = a3;
  v5[95] = a2;
  v5[94] = a1;
  sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  v5[99] = swift_task_alloc();
  v9 = sub_1001F0C48(&unk_100784B60, &qword_1006ACE20);
  v5[100] = v9;
  v5[101] = *(v9 - 8);
  v5[102] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C68, &unk_1006AA340);
  v5[103] = swift_task_alloc();
  v10 = type metadata accessor for ConfirmationSheetButtonStyle();
  v5[104] = v10;
  v5[105] = *(v10 - 8);
  v5[106] = swift_task_alloc();
  type metadata accessor for ConfirmationSheetButton();
  v5[107] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C70, &unk_1006B5220);
  v5[108] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C80, &qword_1006AA358);
  v5[109] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C78, &qword_1006AA350);
  v5[110] = swift_task_alloc();
  v11 = type metadata accessor for LogKey.Prefix();
  v5[111] = v11;
  v5[112] = *(v11 - 8);
  v5[113] = swift_task_alloc();
  v12 = type metadata accessor for ConfirmationSheetContext();
  v5[114] = v12;
  v5[115] = *(v12 - 8);
  v5[116] = swift_task_alloc();
  v5[117] = swift_task_alloc();
  v13 = type metadata accessor for ExceptionRequestMetadata();
  v5[118] = v13;
  v5[119] = *(v13 - 8);
  v5[120] = swift_task_alloc();
  v14 = type metadata accessor for AppLibrary.ExceptionRequest();
  v5[121] = v14;
  v15 = *(v14 - 8);
  v5[122] = v15;
  v5[123] = *(v15 + 64);
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  v5[127] = swift_task_alloc();
  sub_1001F0C48(&qword_100782F00, &qword_1006A8358);
  v5[128] = swift_task_alloc();
  v16 = swift_task_alloc();
  v5[129] = v16;
  v17 = swift_task_alloc();
  v5[130] = v17;
  *v17 = v5;
  v17[1] = sub_100598CD0;

  return sub_10059EFEC(v16, a1, a2, a3);
}

uint64_t sub_100598CD0()
{

  return _swift_task_switch(sub_100598DCC, 0, 0);
}

uint64_t sub_100598DCC()
{
  v35 = v0;
  v1 = *(v0 + 1024);
  v2 = *(v0 + 976);
  v3 = *(v0 + 968);
  sub_100005934(*(v0 + 1032), v1, &qword_100782F00, &qword_1006A8358);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = *(v0 + 1024);
  if (v4 == 1)
  {
    sub_1000032A8(*(v0 + 1024), &qword_100782F00, &qword_1006A8358);
    if (qword_10077E568 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1002710CC(v6, qword_1007880E8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 752);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v34 = v11;
      *v10 = 136315138;
      *(v0 + 720) = v9;
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = sub_1002346CC(v12, v13, &v34);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "[AskForException] No pending exception request found for item ID %s", v10, 0xCu);
      sub_10000710C(v11);
    }

    v15 = *(v0 + 1032);
    v16 = type metadata accessor for MarketplaceKitError();
    sub_1005A4614(&qword_10077F950, &type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, enum case for MarketplaceKitError.missingAgeRatingExceptionRequest(_:), v16);
    swift_willThrow();
    sub_1000032A8(v15, &qword_100782F00, &qword_1006A8358);

    v18 = *(v0 + 8);

    return v18(0);
  }

  v20 = *(v0 + 1016);
  v21 = *(v0 + 976);
  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  v25 = *(v0 + 944);
  v26 = *(v0 + 768);
  v27 = *(v21 + 32);
  *(v0 + 1048) = v27;
  *(v0 + 1056) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v27(v20, v5, v22);
  AppLibrary.ExceptionRequest.metadata.getter();
  v28 = ExceptionRequestMetadata.distributorType.getter();
  v30 = v29;
  (*(v24 + 8))(v23, v25);
  if (v28 == 6448503 && v30 == 0xE300000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {

      v32 = *(v0 + 760);
      goto LABEL_15;
    }
  }

  v32 = 0;
  v26 = 0;
LABEL_15:
  *(v0 + 1072) = v26;
  *(v0 + 1064) = v32;
  *(v0 + 392) = 72;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0;
  *(v0 + 456) = 41;
  v33 = swift_task_alloc();
  *(v0 + 1080) = v33;
  *v33 = v0;
  v33[1] = sub_100599304;

  return sub_1006600F0(v0 + 392);
}

uint64_t sub_100599304(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 1088) = a1;
  *(v3 + 1096) = a2;

  *(v3 + 464) = 73;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0;
  *(v3 + 528) = 41;
  v4 = swift_task_alloc();
  *(v3 + 1104) = v4;
  *v4 = v6;
  v4[1] = sub_100599480;

  return sub_1006600F0(v3 + 464);
}

uint64_t sub_100599480(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  *(v3 + 1112) = a1;
  *(v3 + 1120) = a2;

  *(v3 + 536) = 11;
  *(v3 + 544) = 0u;
  *(v3 + 560) = 0u;
  *(v3 + 576) = 0u;
  *(v3 + 592) = 0;
  *(v3 + 600) = 41;
  v4 = swift_task_alloc();
  *(v3 + 1128) = v4;
  *v4 = v6;
  v4[1] = sub_1005995F8;

  return sub_1006600F0(v3 + 536);
}

uint64_t sub_1005995F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1136) = a1;
  *(v3 + 1144) = a2;

  return _swift_task_switch(sub_1005996FC, 0, 0);
}

uint64_t sub_1005996FC()
{
  v27 = v0[117];
  v28 = v0[116];
  v1 = v0[115];
  v29 = v0[114];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v25 = v0[106];
  v5 = v0[105];
  v26 = v0[104];
  v6 = v0[103];
  v7 = v0[94];
  (*(v0[112] + 104))(v0[113], enum case for LogKey.Prefix.general(_:), v0[111]);
  v8 = objc_allocWithZone(type metadata accessor for LogKey());
  v9 = LogKey.init(prefix:)();
  LogKey.stringValue.getter();

  v10 = type metadata accessor for ConfirmationSheetSymbol();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = type metadata accessor for ConfirmationSheetMoreInformationLink();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v0[91] = v7;

  dispatch thunk of CustomStringConvertible.description.getter();
  ConfirmationSheetMiniProductPageConfiguration.init(itemID:versionID:distributorID:isForAppStore:)();
  v12 = type metadata accessor for ConfirmationSheetMiniProductPageConfiguration();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  (*(v5 + 104))(v25, enum case for ConfirmationSheetButtonStyle.white(_:), v26);

  ConfirmationSheetButton.init(text:style:)();
  v13 = enum case for ConfirmationSheetPostPrimaryButtonAction.parentScreentimePinCode(_:);
  v14 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v6, v13, v14);
  (*(v15 + 56))(v6, 0, 1, v14);

  ConfirmationSheetContext.init(logKey:symbolConfiguration:title:subtitle:moreInformationLink:bulletPoints:miniProductPageConfiguration:primaryButton:secondaryButtonText:postPrimaryButtonAction:)();
  v16 = *(v1 + 16);
  v16(v28, v27, v29);
  type metadata accessor for ConfirmationSheetTask(0);
  v17 = swift_allocObject();
  v0[144] = v17;
  v16(v17 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v28, v29);
  v18 = ConfirmationSheetContext.logKey.getter();
  v20 = v19;
  v21 = *(v1 + 8);
  v0[145] = v21;
  v0[146] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v28, v29);
  v22 = (v17 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_logKey);
  *v22 = v18;
  v22[1] = v20;
  v23 = swift_task_alloc();
  v0[147] = v23;
  *v23 = v0;
  v23[1] = sub_100599B34;

  return sub_100652C68();
}

uint64_t sub_100599B34(char a1)
{
  v4 = *v2;
  *(*v2 + 1184) = v1;

  if (v1)
  {

    v5 = sub_10059A84C;
  }

  else
  {
    *(v4 + 457) = a1 & 1;
    v5 = sub_100599C7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100599C7C()
{
  v39 = v0;
  if (*(v0 + 457) == 1)
  {
    v1 = *(*(v0 + 784) + 16);
    os_unfair_lock_lock(v1 + 30);
    v2 = sub_100005934(&v1[4], v0 + 184, &qword_1007881A0, &qword_1006B51C0);
    if (*(v0 + 208))
    {
      sub_1005A0980((v0 + 184), v0 + 80);
      os_unfair_lock_unlock(v1 + 30);

      if (qword_10077E568 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 1016);
      v4 = *(v0 + 1008);
      v5 = *(v0 + 976);
      v6 = *(v0 + 968);
      v7 = type metadata accessor for Logger();
      *(v0 + 1192) = sub_1002710CC(v7, qword_1007880E8);
      v8 = *(v5 + 16);
      *(v0 + 1200) = v8;
      *(v0 + 1208) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v8(v4, v3, v6);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 1008);
      v13 = *(v0 + 976);
      v14 = *(v0 + 968);
      if (v11)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v38 = v16;
        *v15 = 136315138;
        v35 = AppLibrary.ExceptionRequest.id.getter();
        v18 = v17;
        v19 = *(v13 + 8);
        v19(v12, v14);
        v20 = sub_1002346CC(v35, v18, &v38);

        *(v15 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v9, v10, "[AskForException] Locally approved request:  %s", v15, 0xCu);
        sub_10000710C(v16);
      }

      else
      {

        v19 = *(v13 + 8);
        v19(v12, v14);
      }

      *(v0 + 1216) = v19;
      v28 = *(v0 + 816);
      v29 = *(v0 + 808);
      v30 = *(v0 + 800);
      v37 = objc_opt_self();
      AppLibrary.ExceptionRequest.id.getter();
      v31 = String._bridgeToObjectiveC()();
      *(v0 + 1224) = v31;

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_10059A298;
      swift_continuation_init();
      *(v0 + 664) = v30;
      v32 = sub_10020A748((v0 + 640));
      sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
      CheckedContinuation.init(continuation:function:)();
      (*(v29 + 32))(v32, v28, v30);
      *(v0 + 608) = _NSConcreteStackBlock;
      *(v0 + 616) = 1107296256;
      *(v0 + 624) = sub_10041D918;
      *(v0 + 632) = &unk_10076C690;
      [v37 updateExceptionRequestWithUniqueIdentifier:v31 action:0 completionHandler:v0 + 608];
      (*(v29 + 8))(v32, v30);
      v2 = v0 + 16;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v2);
  }

  else
  {
    v21 = *(v0 + 1160);
    v22 = *(v0 + 1152);
    v34 = *(v0 + 1016);
    v36 = *(v0 + 1032);
    v23 = *(v0 + 976);
    v33 = *(v0 + 968);
    v24 = *(v0 + 936);
    v25 = *(v0 + 912);
    swift_setDeallocating();
    v21(v22 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v25);

    swift_deallocClassInstance();

    v21(v24, v25);
    (*(v23 + 8))(v34, v33);
    sub_1000032A8(v36, &qword_100782F00, &qword_1006A8358);

    v26 = *(v0 + 8);

    return v26(0);
  }
}

uint64_t sub_10059A298()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1232) = v1;
  if (v1)
  {
    v2 = sub_10059ABFC;
  }

  else
  {
    v2 = sub_10059A3A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10059A3A8()
{
  v38 = v0;
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 968);

  v1(v3, v2, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1216);
  v9 = *(v0 + 1000);
  v10 = *(v0 + 968);
  if (v7)
  {
    v35 = *(v0 + 1216);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = v12;
    *v11 = 136315138;
    v13 = AppLibrary.ExceptionRequest.id.getter();
    v15 = v14;
    v35(v9, v10);
    v16 = sub_1002346CC(v13, v15, &v37);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[AskForException] APRequestHandler updated exception request to approved: %s", v11, 0xCu);
    sub_10000710C(v12);
  }

  else
  {

    v8(v9, v10);
  }

  v17 = *(v0 + 1200);
  v32 = *(v0 + 1160);
  v18 = *(v0 + 1152);
  v30 = *(v0 + 1048);
  v34 = *(v0 + 1032);
  v36 = *(v0 + 1216);
  v19 = *(v0 + 1016);
  v20 = *(v0 + 992);
  v21 = *(v0 + 984);
  v22 = *(v0 + 976);
  v23 = *(v0 + 968);
  v33 = *(v0 + 936);
  v31 = *(v0 + 912);
  v24 = *(v0 + 792);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v17(v20, v19, v23);
  sub_1004B1358(v0 + 80, v0 + 288);
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v30(v27 + v26, v20, v23);
  sub_1005A0980((v0 + 288), v27 + ((v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1004A673C(0, 0, v24, &unk_1006B5248, v27);

  swift_setDeallocating();
  v32(v18 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v31);

  swift_deallocClassInstance();
  sub_10000710C((v0 + 80));
  v32(v33, v31);
  v36(v19, v23);
  sub_1000032A8(v34, &qword_100782F00, &qword_1006A8358);

  v28 = *(v0 + 8);

  return v28(1);
}

uint64_t sub_10059A84C()
{
  v22 = v0;
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[117];
  v4 = v0[114];
  swift_setDeallocating();
  v1(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v4);

  swift_deallocClassInstance();
  v1(v3, v4);
  if (qword_10077E568 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1002710CC(v5, qword_1007880E8);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[129];
  v10 = v0[127];
  v11 = v0[122];
  v12 = v0[121];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v20 = v10;
    v17 = sub_1002346CC(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error when presenting the approve age exception in-person sheet: %s", v13, 0xCu);
    sub_10000710C(v14);

    (*(v11 + 8))(v20, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  sub_1000032A8(v9, &qword_100782F00, &qword_1006A8358);

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_10059ABFC(uint64_t a1)
{
  v29 = v1;
  v2 = v1[153];
  swift_willThrow();
  sub_10000710C(v1 + 10);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v21 = v1[145];
    v5 = v1[144];
    v26 = v1[152];
    v27 = v1[129];
    v23 = v1[121];
    v24 = v1[127];
    v22 = v1[117];
    v6 = v1[114];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1002346CC(v9, v10, &v28);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[AskForException] Error when APRequestHandler was updating the exception request: %s", v7, 0xCu);
    sub_10000710C(v8);

    swift_setDeallocating();
    v21(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v6);

    swift_deallocClassInstance();

    v21(v22, v6);
    v12 = v23;
    v13 = v24;
  }

  else
  {
    v14 = v1[145];
    v15 = v1[144];
    v26 = v1[152];
    v27 = v1[129];
    v25 = v1[127];
    v16 = v1[121];
    v17 = v1[117];
    v18 = v1[114];
    swift_setDeallocating();
    v14(v15 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon21ConfirmationSheetTask_context, v18);

    swift_deallocClassInstance();

    v14(v17, v18);
    v13 = v25;
    v12 = v16;
  }

  v26(v13, v12);
  sub_1000032A8(v27, &qword_100782F00, &qword_1006A8358);

  v19 = v1[1];

  return v19(1);
}

void sub_10059B018(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F0C48(&qword_1007881C8, &qword_1006B51F8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_10020A6D0(*(a1 + 56) + 32 * v12, v26);
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v23[2] = v25;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v16 = v25;
    sub_1001F6498(v24, v23);
    sub_100006190(0, &qword_100782DF0, NSObject_ptr);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_10052213C(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }
}

void sub_10059B28C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F0C48(&unk_100786F18, &unk_1006B2130);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_10043A310(*(a1 + 48) + 40 * v11, v27);
    sub_10020A6D0(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_10043A310(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_10020A6D0(v25 + 8, v20);
    sub_1000032A8(v24, &unk_100786690, &qword_1006B5210);
    v21 = v18;
    sub_1001F6498(v20, v22);
    v12 = v21;
    sub_1001F6498(v22, v23);
    sub_1001F6498(v23, &v21);
    v13 = sub_10052213C(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_10000710C(v9);
      sub_1001F6498(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_1001F6498(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_1000032A8(v24, &unk_100786690, &qword_1006B5210);
}

uint64_t sub_10059B568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v8 = type metadata accessor for AppLibrary.ExceptionRequest.Status();
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for AppLibrary.ExceptionRequest();
  v5[11] = v9;
  v5[12] = *(v9 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[17] = v10;
  *v10 = v5;
  v10[1] = sub_10059B710;

  return sub_1005A09B0(a4, a5);
}

uint64_t sub_10059B710(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10059B810, 0, 0);
}

void sub_10059B810()
{
  v1 = v0[18];
  v43 = *(v1 + 16);
  if (v43)
  {
    v2 = 0;
    v3 = v0[12];
    v4 = v0[8];
    v38 = v0[6];
    v41 = enum case for AppLibrary.ExceptionRequest.Status.approved(_:);
    v5 = (v4 + 8);
    v39 = (v3 + 32);
    v40 = (v4 + 104);
    v45 = _swiftEmptyArrayStorage;
    v42 = v0[18];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v6 = v0[10];
      v7 = v0[9];
      v8 = v0[7];
      v47 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v9 = *(v3 + 72);
      (*(v3 + 16))(v0[16], v0[18] + v47 + v9 * v2, v0[11]);
      AppLibrary.ExceptionRequest.status.getter();
      (*v40)(v7, v41, v8);
      sub_1005A4614(&qword_1007881A8, &type metadata accessor for AppLibrary.ExceptionRequest.Status, &protocol conformance descriptor for AppLibrary.ExceptionRequest.Status);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v10 = *v5;
      (*v5)(v7, v8);
      v10(v6, v8);
      if (v0[2] == v0[3])
      {
        v11 = AppLibrary.ExceptionRequest.bundleIdentifier.getter();
        if (v12)
        {
          if (v11 == v0[5] && v12 == v38)
          {

LABEL_12:
            v14 = *v39;
            (*v39)(v0[14], v0[16], v0[11]);
            v15 = v45;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1005263A8(0, v45[2] + 1, 1);
              v15 = v45;
            }

            v1 = v42;
            v17 = v15[2];
            v16 = v15[3];
            if (v17 >= v16 >> 1)
            {
              sub_1005263A8((v16 > 1), v17 + 1, 1);
              v15 = v45;
            }

            v18 = v0[14];
            v19 = v0[11];
            v15[2] = v17 + 1;
            v45 = v15;
            v14(v15 + v47 + v17 * v9, v18, v19);
            goto LABEL_4;
          }

          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            goto LABEL_12;
          }
        }
      }

      (*(v3 + 8))(v0[16], v0[11]);
      v1 = v42;
LABEL_4:
      if (v43 == ++v2)
      {
        v20 = v45;
        goto LABEL_19;
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_19:

  v21 = v20[2];
  if (!v21)
  {

    v28 = 1;
    goto LABEL_23;
  }

  v22 = v0[12];
  v46 = v20;
  v48 = *(v22 + 16);
  v44 = v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v48(v0[15]);
  v23 = v20;
  if (v21 == 1)
  {
LABEL_21:
    v24 = v0[15];
    v26 = v0[11];
    v25 = v0[12];
    v27 = v0[4];

    (*(v25 + 32))(v27, v24, v26);
    v28 = 0;
LABEL_23:
    (*(v0[12] + 56))(v0[4], v28, 1, v0[11]);

    v29 = v0[1];

    v29();
    return;
  }

  v30 = v0[12];
  v31 = 1;
  while (v31 < v23[2])
  {
    (v48)(v0[13], &v44[*(v30 + 72) * v31], v0[11]);
    v32 = AppLibrary.ExceptionRequest.exceptedRatingValue.getter();
    v33 = AppLibrary.ExceptionRequest.exceptedRatingValue.getter();
    v34 = *(v30 + 8);
    if (v32 >= v33)
    {
      v34(v0[13], v0[11]);
    }

    else
    {
      v35 = v0[15];
      v36 = v0[13];
      v37 = v0[11];
      v34(v35, v37);
      (*(v30 + 32))(v35, v36, v37);
    }

    ++v31;
    v23 = v46;
    if (v21 == v31)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_10059BD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v7 = type metadata accessor for AppLibrary.ExceptionRequest.Status();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for AppLibrary.ExceptionRequest();
  v4[10] = v8;
  v4[11] = *(v8 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[16] = v9;
  *v9 = v4;
  v9[1] = sub_10059BEB0;

  return sub_1005A09B0(a3, a4);
}

uint64_t sub_10059BEB0(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10059BFB0, 0, 0);
}

void *sub_10059BFB0()
{
  result = v0[17];
  v43 = result[2];
  if (v43)
  {
    v2 = 0;
    v3 = v0[11];
    v4 = v0[7];
    v39 = enum case for AppLibrary.ExceptionRequest.Status.approved(_:);
    v5 = (v4 + 8);
    v37 = (v3 + 8);
    v38 = (v4 + 104);
    v40 = v3;
    v36 = (v3 + 32);
    v45 = _swiftEmptyArrayStorage;
    v41 = v0[17];
    while (v2 < result[2])
    {
      v6 = v0[9];
      v7 = v0[8];
      v8 = v0[6];
      v9 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v10 = *(v40 + 72);
      (*(v40 + 16))(v0[15], v0[17] + v9 + v10 * v2, v0[10]);
      AppLibrary.ExceptionRequest.status.getter();
      (*v38)(v7, v39, v8);
      sub_1005A4614(&qword_1007881A8, &type metadata accessor for AppLibrary.ExceptionRequest.Status, &protocol conformance descriptor for AppLibrary.ExceptionRequest.Status);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v11 = *v5;
      (*v5)(v7, v8);
      v11(v6, v8);
      if (v0[2] == v0[3] && (v12 = v0[5], AppLibrary.ExceptionRequest.appleItemID.getter() == v12))
      {
        v13 = *v36;
        (*v36)(v0[13], v0[15], v0[10]);
        v14 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1005263A8(0, v45[2] + 1, 1);
          v14 = v45;
        }

        v16 = v14[2];
        v15 = v14[3];
        if (v16 >= v15 >> 1)
        {
          sub_1005263A8((v15 > 1), v16 + 1, 1);
          v14 = v45;
        }

        v17 = v0[13];
        v18 = v0[10];
        v14[2] = v16 + 1;
        v45 = v14;
        v13(v14 + v9 + v16 * v10, v17, v18);
      }

      else
      {
        (*v37)(v0[15], v0[10]);
      }

      ++v2;
      result = v41;
      if (v43 == v2)
      {
        v19 = v45;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_15:

  v20 = v19[2];
  if (v20)
  {
    v21 = v0[11];
    v44 = *(v21 + 16);
    v46 = v19;
    v42 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v44(v0[14]);
    result = v19;
    if (v20 != 1)
    {
      v28 = v0[11];
      v29 = 1;
      while (v29 < result[2])
      {
        (v44)(v0[12], &v42[*(v28 + 72) * v29], v0[10]);
        v30 = AppLibrary.ExceptionRequest.exceptedRatingValue.getter();
        v31 = AppLibrary.ExceptionRequest.exceptedRatingValue.getter();
        v32 = *(v28 + 8);
        if (v30 >= v31)
        {
          v32(v0[12], v0[10]);
        }

        else
        {
          v33 = v0[14];
          v34 = v0[12];
          v35 = v0[10];
          v32(v33, v35);
          (*(v28 + 32))(v33, v34, v35);
        }

        ++v29;
        result = v46;
        if (v20 == v29)
        {
          goto LABEL_17;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

LABEL_17:
    v22 = v0[14];
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[4];

    (*(v23 + 32))(v25, v22, v24);
    v26 = 0;
  }

  else
  {

    v26 = 1;
  }

  (*(v0[11] + 56))(v0[4], v26, 1, v0[10]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_10059C45C(uint64_t a1)
{
  v2[65] = v1;
  v2[64] = a1;
  v3 = type metadata accessor for URL();
  v2[66] = v3;
  v2[67] = *(v3 - 8);
  v2[68] = swift_task_alloc();
  v4 = type metadata accessor for LogKey.Prefix();
  v2[69] = v4;
  v2[70] = *(v4 - 8);
  v2[71] = swift_task_alloc();
  type metadata accessor for UUID();
  v2[72] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v5 = type metadata accessor for BagService();
  v2[76] = v5;
  v2[77] = *(v5 - 8);
  v2[78] = swift_task_alloc();
  sub_1001F0C48(&unk_1007843C0, &qword_1006B2900);
  v2[79] = swift_task_alloc();
  v6 = type metadata accessor for AppInstallRequestType();
  v2[80] = v6;
  v2[81] = *(v6 - 8);
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v7 = type metadata accessor for ExceptionRequestMetadata();
  v2[84] = v7;
  v2[85] = *(v7 - 8);
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();

  return _swift_task_switch(sub_10059C774, 0, 0);
}

uint64_t sub_10059C774()
{
  v61 = v0;
  if (qword_10077E568 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 712);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 512);
  v5 = type metadata accessor for Logger();
  *(v0 + 720) = sub_1002710CC(v5, qword_1007880E8);
  v6 = *(v2 + 16);
  *(v0 + 728) = v6;
  *(v0 + 736) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 712);
  v11 = *(v0 + 680);
  v12 = *(v0 + 672);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v60 = v14;
    *v13 = 136315138;
    v58 = v6;
    v15 = ExceptionRequestMetadata.appBundleID.getter();
    v17 = v16;
    v59 = *(v11 + 8);
    v59(v10, v12);
    v18 = sub_1002346CC(v15, v17, &v60);
    v6 = v58;

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "[AskForException] Reconstructing install for app: %s", v13, 0xCu);
    sub_10000710C(v14);
  }

  else
  {

    v59 = *(v11 + 8);
    v59(v10, v12);
  }

  if (ExceptionRequestMetadata.distributorType.getter() == 0x65766974616ELL && v19 == 0xE600000000000000)
  {

    goto LABEL_10;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
LABEL_10:
    v21 = ExceptionRequestMetadata.distributorBundleID.getter();
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      *(v0 + 344) = &type metadata for NativeDistributor;
      v25 = sub_1003000A4();
      goto LABEL_16;
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "[AskForException] Missing bundle ID for native distributor";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v26, v27, v29, v28, 2u);

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v30 = ExceptionRequestMetadata.distributorDomain.getter();
  if (!v31)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "[AskForException] Missing domain for web distributor";
      goto LABEL_27;
    }

LABEL_28:

LABEL_29:

    v57 = *(v0 + 8);

    return v57();
  }

  v23 = v30;
  v24 = v31;
  *(v0 + 344) = &type metadata for WebDistributor;
  v25 = sub_100231E84();
LABEL_16:
  *(v0 + 352) = v25;
  v32 = *(v0 + 648);
  v33 = *(v0 + 640);
  v34 = *(v0 + 632);
  *(v0 + 320) = v23;
  *(v0 + 328) = v24;
  ExceptionRequestMetadata.installTypeRawValue.getter();
  AppInstallRequestType.init(rawValue:)();
  if ((*(v32 + 48))(v34, 1, v33) == 1)
  {
    v35 = *(v0 + 688);
    v36 = *(v0 + 672);
    v37 = *(v0 + 512);
    sub_1000032A8(*(v0 + 632), &unk_1007843C0, &qword_1006B2900);
    v6(v35, v37, v36);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 688);
    v42 = *(v0 + 672);
    if (v40)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v60 = v44;
      *v43 = 136315138;
      v45 = ExceptionRequestMetadata.installTypeRawValue.getter();
      v47 = v46;
      v59(v41, v42);
      v48 = sub_1002346CC(v45, v47, &v60);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "[AskForException] Invalid install type raw value: %s", v43, 0xCu);
      sub_10000710C(v44);
    }

    else
    {

      v59(v41, v42);
    }

    sub_10000710C((v0 + 320));
    goto LABEL_29;
  }

  v49 = *(v0 + 520);
  (*(*(v0 + 648) + 32))(*(v0 + 664), *(v0 + 632), *(v0 + 640));
  v50 = *(v49 + 16);
  os_unfair_lock_lock(v50 + 30);
  result = sub_100005934(&v50[4], v0 + 120, &qword_1007881A0, &qword_1006B51C0);
  if (*(v0 + 144))
  {
    v52 = *(v0 + 624);
    v53 = *(v0 + 616);
    v54 = *(v0 + 608);
    sub_1005A0980((v0 + 120), v0 + 16);
    os_unfair_lock_unlock(v50 + 30);
    v55 = sub_100006D8C((v0 + 16), *(v0 + 40));
    (*(v53 + 16))(v52, *v55 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v54);
    v56 = swift_task_alloc();
    *(v0 + 744) = v56;
    *v56 = v0;
    v56[1] = sub_10059CE8C;

    return sub_100324268(v0 + 360);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10059CE8C()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  (*(v2[77] + 8))(v2[78], v2[76]);
  if (v0)
  {
    v3 = sub_10059DE28;
  }

  else
  {
    v3 = sub_10059CFF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10059CFF4()
{
  v122 = v0;
  v1 = ExceptionRequestMetadata.originallyRequestedVersionID.getter();
  v3 = v2;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

  v117 = v4;
  sub_100006D8C((v0 + 16), *(v0 + 40));

  v5 = ExceptionRequestMetadata.developerID.getter();
  v7 = sub_10058AF60(v5, v6);

  if ((v7 & 1) == 0)
  {
    v8 = *(v0 + 600);
    v9 = *(v0 + 536);
    v10 = *(v0 + 528);
    sub_100006D8C((v0 + 16), *(v0 + 40));

    v11 = ExceptionRequestMetadata.developerID.getter();
    v13 = v12;
    v119 = ExceptionRequestMetadata.developerName.getter();
    v15 = v14;
    ExceptionRequestMetadata.developerSupportURL.getter();
    if ((*(v9 + 48))(v8, 1, v10) == 1)
    {
      sub_1000032A8(*(v0 + 600), &unk_1007809F0, &unk_10069E8F0);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v18 = *(v0 + 536);
      v114 = *(v0 + 528);
      v19 = v13;
      v20 = v3;
      v21 = v11;
      v22 = *(v0 + 600);
      v16 = URL.absoluteString.getter();
      v17 = v23;
      v24 = v22;
      v11 = v21;
      v3 = v20;
      v13 = v19;
      (*(v18 + 8))(v24, v114);
    }

    v25 = *(v0 + 752);
    sub_10058B130(v11, v13, v119, v15, v16, v17);
    if (v25)
    {
      v26 = *(v0 + 664);
      v27 = *(v0 + 648);
      v28 = *(v0 + 640);

      sub_10000710C((v0 + 360));
      (*(v27 + 8))(v26, v28);
      sub_10000710C((v0 + 320));
      sub_10000710C((v0 + 16));
      swift_errorRetain();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v121[0] = v32;
        *v31 = 136315138;
        swift_getErrorValue();
        v33 = Error.localizedDescription.getter();
        v35 = sub_1002346CC(v33, v34, v121);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "[AskForException] Failed to reconstruct and continue install: %s", v31, 0xCu);
        sub_10000710C(v32);
      }

      else
      {
      }

      v84 = *(v0 + 8);

      return v84();
    }
  }

  v107 = v3;
  v115 = (v0 + 792);
  v110 = *(v0 + 704);
  v111 = *(v0 + 672);
  v112 = *(v0 + 728);
  v36 = *(v0 + 656);
  v103 = *(v0 + 664);
  v105 = v36;
  v37 = *(v0 + 648);
  v101 = *(v0 + 640);
  v92 = *(v0 + 584);
  v93 = *(v0 + 592);
  v109 = *(v0 + 576);
  v38 = *(v0 + 568);
  v39 = *(v0 + 560);
  v40 = *(v0 + 552);
  v94 = *(v0 + 544);
  v41 = *(v0 + 512);
  v108 = type metadata accessor for ADPInstallConfiguration(0);
  UUID.init()();
  (*(v39 + 104))(v38, enum case for LogKey.Prefix.adp(_:), v40);
  v42 = objc_allocWithZone(type metadata accessor for LogKey());
  v106 = LogKey.init(prefix:)();
  sub_10020A980(v0 + 320, v0 + 400);
  (*(v37 + 16))(v36, v103, v101);
  v43 = ExceptionRequestMetadata.oAuthToken.getter();
  v102 = v44;
  v104 = v43;
  v100 = ExceptionRequestMetadata.installVerificationToken.getter();
  v99 = v45;
  v46 = ExceptionRequestMetadata.accountID.getter();
  v97 = v47;
  v98 = v46;
  v48 = ExceptionRequestMetadata.clientID.getter();
  v95 = v49;
  v96 = v48;
  ExceptionRequestMetadata.url.getter();
  ExceptionRequestMetadata.referrer.getter();
  sub_10020A980(v0 + 360, v0 + 440);
  v50 = ExceptionRequestMetadata.authenticationContextData.getter();
  v90 = v51;
  v91 = v50;
  v89 = ExceptionRequestMetadata.userInitiatedOverride.getter();
  v88 = ExceptionRequestMetadata.allowAccountPrompt.getter();
  v87 = ExceptionRequestMetadata.itemIDFromButtonConfiguration.getter();
  v86 = v52;
  ExceptionRequestMetadata.appShareURL.getter();
  v53 = *(v0 + 40);
  v85 = *(v0 + 88);
  v54 = sub_100006D8C((v0 + 16), v53);
  v55 = *(v0 + 424);
  v56 = *(v0 + 432);
  v57 = sub_100231ED8(v0 + 400, v55);
  v58 = *(v55 - 8);
  v59 = swift_task_alloc();
  (*(v58 + 16))(v59, v57, v55);
  v60 = *(v53 - 8);
  v61 = swift_task_alloc();
  (*(v60 + 16))(v61, v54, v53);
  v62 = sub_10038B61C(v109, v106, v59, v105, v104, v102, v100, v99, v98, v97, v96, v95, v94, v93, (v0 + 440), v91, v90, v89, v88 & 1, v117, v107 & 1, v87, v86 & 1, v92, 1u, v61, v108, v55, v53, v56, v85);
  *(v0 + 760) = v62;

  sub_10000710C((v0 + 400));

  v63 = *(v62 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v64 = v63 + *(*v63 + class metadata base offset for ManagedBuffer + 16);
  v65 = (*(*v63 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v63 + v65));
  *(v64 + *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 40)) = 0;
  os_unfair_lock_unlock((v63 + v65));
  v112(v110, v41, v111);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  v68 = os_log_type_enabled(v66, v67);
  v69 = *(v0 + 704);
  v70 = *(v0 + 680);
  v71 = *(v0 + 672);
  if (v68)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v121[0] = v73;
    *v72 = 136315138;
    v74 = ExceptionRequestMetadata.appBundleID.getter();
    v76 = v75;
    (*(v70 + 8))(v69, v71);
    v77 = sub_1002346CC(v74, v76, v121);

    *(v72 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v66, v67, "[AskForException] Starting reconstructed install for %s", v72, 0xCu);
    sub_10000710C(v73);
  }

  else
  {

    (*(v70 + 8))(v69, v71);
  }

  *v115 = 0u;
  *(v0 + 808) = 0u;
  *(v0 + 824) = 1;
  type metadata accessor for ADPInstallTask(0);
  swift_allocObject();

  *(v0 + 768) = sub_100400560(v78, v115);
  v79 = *(v0 + 40);
  v118 = *(v0 + 72);
  v120 = *(v0 + 56);
  v113 = *(v0 + 104);
  v116 = *(v0 + 88);
  v80 = sub_100006D8C((v0 + 16), v79);
  *(v0 + 248) = v79;
  *(v0 + 256) = v120;
  *(v0 + 272) = v118;
  *(v0 + 288) = v116;
  *(v0 + 304) = v113;
  v81 = sub_10020A748((v0 + 224));
  (*(*(v79 - 8) + 16))(v81, v80, v79);
  v82 = swift_task_alloc();
  *(v0 + 776) = v82;
  *v82 = v0;
  v82[1] = sub_10059DA34;

  return sub_1003FF6B0(v0 + 224);
}

uint64_t sub_10059DA34()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v3 = sub_10059E080;
  }

  else
  {
    sub_10000710C((v2 + 224));
    v3 = sub_10059DB50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10059DB50()
{
  v22 = v0;
  (*(v0 + 728))(*(v0 + 696), *(v0 + 512), *(v0 + 672));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 696);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  v8 = *(v0 + 648);
  v9 = *(v0 + 640);
  if (v3)
  {
    v18 = v2;
    v10 = swift_slowAlloc();
    v20 = v7;
    v21 = swift_slowAlloc();
    v11 = v21;
    *v10 = 136315138;
    v19 = v9;
    v12 = ExceptionRequestMetadata.appBundleID.getter();
    v14 = v13;
    (*(v5 + 8))(v4, v6);
    v15 = sub_1002346CC(v12, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v1, v18, "[AskForException] Successfully completed reconstructed install for %s", v10, 0xCu);
    sub_10000710C(v11);

    sub_10000710C((v0 + 360));
    (*(v8 + 8))(v20, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
    sub_10000710C((v0 + 360));
    (*(v8 + 8))(v7, v9);
  }

  sub_10000710C((v0 + 320));
  sub_10000710C((v0 + 16));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10059DE28()
{
  v11 = v0;
  (*(v0[81] + 8))(v0[83], v0[80]);
  sub_10000710C(v0 + 40);
  sub_10000710C(v0 + 2);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1002346CC(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "[AskForException] Failed to reconstruct and continue install: %s", v3, 0xCu);
    sub_10000710C(v4);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10059E080()
{
  v14 = v0;
  v1 = v0[83];
  v2 = v0[81];
  v3 = v0[80];

  sub_10000710C(v0 + 45);
  (*(v2 + 8))(v1, v3);
  sub_10000710C(v0 + 40);
  sub_10000710C(v0 + 28);
  sub_10000710C(v0 + 2);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002346CC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[AskForException] Failed to reconstruct and continue install: %s", v6, 0xCu);
    sub_10000710C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

NSString sub_10059E304()
{
  result = String._bridgeToObjectiveC()();
  qword_1007B88B8 = result;
  return result;
}

uint64_t sub_10059E33C()
{
  sub_100006190(0, &qword_1007881D0, NSDistributedNotificationCenter_ptr);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver:v0];

  return swift_deallocClassInstance();
}

void sub_10059E418()
{
  v1 = v0;
  v2 = sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v5 = type metadata accessor for ExceptionRequestMetadata();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v52 - v11;
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  v15 = Notification.userInfo.getter();
  if (v15)
  {
    sub_10059B28C(v15);
    v17 = v16;

    if (v17)
    {
      if (*(v17 + 16) && (v18 = sub_10052213C(0x766F727070417369, 0xEA00000000006465), (v19 & 1) != 0) && (sub_10020A6D0(*(v17 + 56) + 32 * v18, v64), (swift_dynamicCast() & 1) != 0))
      {
        if (*(v17 + 16) && (v20 = v63, v21 = sub_10052213C(0x617461646174656DLL, 0xE800000000000000), (v22 & 1) != 0))
        {
          sub_10020A6D0(*(v17 + 56) + 32 * v21, v64);

          sub_1001F0C48(&qword_100782D80, &qword_1006B0420);
          if (swift_dynamicCast())
          {
            LODWORD(v62) = v20;
            static ExceptionRequestMetadata.from(dictionary:)();

            v33 = 0x6465696E6564;
            if (v62)
            {
              v33 = 0x6465766F72707061;
            }

            v56 = v33;
            if (v62)
            {
              v34 = 0xE800000000000000;
            }

            else
            {
              v34 = 0xE600000000000000;
            }

            if (qword_10077E568 != -1)
            {
              swift_once();
            }

            v35 = type metadata accessor for Logger();
            v36 = sub_1002710CC(v35, qword_1007880E8);
            v58 = *(v6 + 16);
            v59 = v6 + 16;
            v58(v12, v14, v5);

            v57 = v36;
            v61 = Logger.logObject.getter();
            LODWORD(v36) = static os_log_type_t.default.getter();

            v55 = v36;
            if (os_log_type_enabled(v61, v36))
            {
              v37 = swift_slowAlloc();
              v52 = v37;
              v54 = swift_slowAlloc();
              v64[0] = v54;
              *v37 = 136315394;
              v53 = v34;
              v38 = ExceptionRequestMetadata.appBundleID.getter();
              v40 = v39;
              v60 = *(v6 + 8);
              v60(v12, v5);
              v41 = sub_1002346CC(v38, v40, v64);

              v42 = v52;
              *(v52 + 1) = v41;
              *(v42 + 6) = 2080;
              v43 = sub_1002346CC(v56, v53, v64);

              *(v42 + 14) = v43;
              v44 = v61;
              _os_log_impl(&_mh_execute_header, v61, v55, "[AskForException] Received notification response for bundle ID: %s, answer: %s", v42, 0x16u);
              swift_arrayDestroy();

              v45 = v62;
            }

            else
            {

              v60 = *(v6 + 8);
              v60(v12, v5);
              v45 = v62;
            }

            if (v45)
            {
              v46 = type metadata accessor for TaskPriority();
              (*(*(v46 - 8) + 56))(v4, 1, 1, v46);
              v58(v9, v14, v5);
              v47 = (*(v6 + 80) + 40) & ~*(v6 + 80);
              v48 = swift_allocObject();
              *(v48 + 2) = 0;
              *(v48 + 3) = 0;
              *(v48 + 4) = v1;
              (*(v6 + 32))(&v48[v47], v9, v5);

              sub_1004A673C(0, 0, v4, &unk_1006B51B0, v48);
            }

            else
            {
              v49 = Logger.logObject.getter();
              v50 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v49, v50))
              {
                v51 = swift_slowAlloc();
                *v51 = 0;
                _os_log_impl(&_mh_execute_header, v49, v50, "[AskForException] Request was denied, no further action needed", v51, 2u);
              }
            }

            v60(v14, v5);
            return;
          }
        }

        else
        {
        }

        if (qword_10077E568 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_1002710CC(v32, qword_1007880E8);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v28, v29))
        {
LABEL_22:

          return;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "[AskForException] Missing or invalid metadata field in notification userInfo";
      }

      else
      {

        if (qword_10077E568 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_1002710CC(v27, qword_1007880E8);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v28, v29))
        {
          goto LABEL_22;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "[AskForException] Missing or invalid isApproved field in notification userInfo";
      }

      _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);

      goto LABEL_22;
    }
  }

  if (qword_10077E568 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1002710CC(v23, qword_1007880E8);
  v62 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v62, v24, "[AskForException] No userInfo found in notification or invalid format", v25, 2u);
  }

  v26 = v62;
}

uint64_t sub_10059EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1001F0E54;

  return sub_10059C45C(a5);
}

uint64_t sub_10059EF64(uint64_t a1, uint64_t a2)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1001F0C48(&qword_100780DF0, &qword_1006A2E50);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1001F0C48(&qword_1007881B8, &qword_1006B51E0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10059EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v7 = type metadata accessor for Date();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for AppLibrary.ExceptionRequest.Status();
  v4[10] = v8;
  v4[11] = *(v8 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v9 = type metadata accessor for AppLibrary.ExceptionRequest();
  v4[14] = v9;
  v4[15] = *(v9 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[20] = v10;
  *v10 = v4;
  v10[1] = sub_10059F1F8;

  return sub_1005A09B0(a3, a4);
}

uint64_t sub_10059F1F8(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_10059F2F8, 0, 0);
}

void *sub_10059F2F8()
{
  result = v0[21];
  v48 = result[2];
  if (v48)
  {
    v2 = 0;
    v3 = v0[15];
    v4 = v0[11];
    v43 = enum case for AppLibrary.ExceptionRequest.Status.pending(_:);
    v5 = (v4 + 8);
    v41 = (v3 + 8);
    v42 = (v4 + 104);
    v44 = v3;
    v40 = (v3 + 32);
    v49 = _swiftEmptyArrayStorage;
    v46 = v0[21];
    while (v2 < result[2])
    {
      v6 = v0[13];
      v7 = v0[12];
      v8 = v0[10];
      v9 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v10 = *(v44 + 72);
      (*(v44 + 16))(v0[19], v0[21] + v9 + v10 * v2, v0[14]);
      AppLibrary.ExceptionRequest.status.getter();
      (*v42)(v7, v43, v8);
      sub_1005A4614(&qword_1007881A8, &type metadata accessor for AppLibrary.ExceptionRequest.Status, &protocol conformance descriptor for AppLibrary.ExceptionRequest.Status);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v11 = *v5;
      (*v5)(v7, v8);
      v11(v6, v8);
      if (v0[2] == v0[3] && (v12 = v0[5], AppLibrary.ExceptionRequest.appleItemID.getter() == v12))
      {
        v13 = *v40;
        (*v40)(v0[17], v0[19], v0[14]);
        v14 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1005263A8(0, v49[2] + 1, 1);
          v14 = v49;
        }

        v16 = v14[2];
        v15 = v14[3];
        if (v16 >= v15 >> 1)
        {
          sub_1005263A8((v15 > 1), v16 + 1, 1);
          v14 = v49;
        }

        v17 = v0[17];
        v18 = v0[14];
        v14[2] = v16 + 1;
        v49 = v14;
        v13(v14 + v9 + v16 * v10, v17, v18);
      }

      else
      {
        (*v41)(v0[19], v0[14]);
      }

      ++v2;
      result = v46;
      if (v48 == v2)
      {
        v19 = v49;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_15:

  v20 = v19[2];
  if (v20)
  {
    v21 = v0[15];
    v50 = v19;
    v45 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v47 = *(v21 + 16);
    v47(v0[18]);
    if (v20 != 1)
    {
      v28 = v0[15];
      v29 = (v0[7] + 8);
      result = v19;
      v30 = 1;
      while (v30 < result[2])
      {
        v32 = v0[8];
        v31 = v0[9];
        v33 = v0[6];
        (v47)(v0[16], &v45[*(v28 + 72) * v30], v0[14]);
        AppLibrary.ExceptionRequest.timestamp.getter();
        AppLibrary.ExceptionRequest.timestamp.getter();
        v34 = static Date.< infix(_:_:)();
        v35 = *v29;
        (*v29)(v32, v33);
        v35(v31, v33);
        v36 = *(v28 + 8);
        if (v34)
        {
          v37 = v0[18];
          v38 = v0[16];
          v39 = v0[14];
          v36(v37, v39);
          (*(v28 + 32))(v37, v38, v39);
        }

        else
        {
          v36(v0[16], v0[14]);
        }

        ++v30;
        result = v50;
        if (v20 == v30)
        {
          goto LABEL_17;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

LABEL_17:
    v22 = v0[18];
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[4];

    (*(v23 + 32))(v25, v22, v24);
    v26 = 0;
  }

  else
  {

    v26 = 1;
  }

  (*(v0[15] + 56))(v0[4], v26, 1, v0[14]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_10059F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[12] = a1;
  v6 = type metadata accessor for Logger();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0, &qword_10069F380);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for LogKey.Prefix();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_10059F9C0, 0, 0);
}

uint64_t sub_10059F9C0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for LogKey.Prefix.adp(_:), *(v0 + 176));
  objc_allocWithZone(type metadata accessor for LogKey());
  *(v0 + 200) = LogKey.init(prefix:)();
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *(v4 + 16) = v6;

  return _swift_task_switch(sub_10059FAE4, 0, 0);
}

uint64_t sub_10059FAE4()
{
  sub_100005934(*(v0 + 168), *(v0 + 160), &unk_10077F8E0, &qword_10069F380);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 216) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Reconstructing install after in person approval", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 200);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;

    v5 = v4;
    os_unfair_lock_lock((v3 + 24));
    sub_100231C24((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310, &unk_10069FA00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 224) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 232) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  sub_100005934(*(v0 + 160), v9, &unk_10077F8E0, &qword_10069F380);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 160), &unk_10077F8E0, &qword_10069F380);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    v23 = *(v0 + 160);
    (*(v15 + 32))(v13, *(v0 + 152), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v12 = sub_1005AD4D8("Reconstructing install after in person approval", 47, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v23, &unk_10077F8E0, &qword_10069F380);
  }

  *(v0 + 240) = v12;
  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 248) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006B5260;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 256) = v20;
  *v20 = v0;
  v20[1] = sub_1005A001C;
  v21 = *(v0 + 96);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v0 + 48, &unk_10069F3A0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1005A001C()
{

  if (v0)
  {

    v1 = sub_100448038;
  }

  else
  {

    v1 = sub_1005A01DC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1005A01DC()
{
  v1 = *(v0 + 168);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005A0314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for ExceptionRequestMetadata();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for AppLibrary.ExceptionRequest();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1005A0430, 0, 0);
}

uint64_t sub_1005A0430()
{
  v22 = v0;
  if (qword_10077E568 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_1002710CC(v5, qword_1007880E8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = AppLibrary.ExceptionRequest.id.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1002346CC(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "[AskForException] Reconstructing and continuing the install %s", v12, 0xCu);
    sub_10000710C(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  *(v0 + 80) = *(*sub_100006D8C(*(v0 + 24), *(*(v0 + 24) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_exceptionRequestService);

  AppLibrary.ExceptionRequest.metadata.getter();
  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = sub_1005A06A0;
  v19 = *(v0 + 48);

  return sub_10059C45C(v19);
}

uint64_t sub_1005A06A0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1005A083C()
{
  v0 = type metadata accessor for Logger();
  sub_100367DEC(v0, qword_1007880E8);
  sub_1002710CC(v0, qword_1007880E8);
  return static Logger.install.getter();
}

uint64_t sub_1005A0888(uint64_t a1)
{
  v4 = *(type metadata accessor for ExceptionRequestMetadata() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_10059EDB8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1005A0980(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[2];
  *(a2 + 16) = a1[1];
  *(a2 + 32) = v3;
  *a2 = v2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  *(a2 + 96) = *(a1 + 12);
  *(a2 + 64) = v5;
  *(a2 + 80) = v6;
  *(a2 + 48) = v4;
  return a2;
}

uint64_t sub_1005A09B0(uint64_t a1, uint64_t a2)
{
  v2[136] = a2;
  v2[135] = a1;
  v3 = type metadata accessor for AppLibrary.ExceptionRequest();
  v2[137] = v3;
  v2[138] = *(v3 - 8);
  v2[139] = swift_task_alloc();
  v2[140] = swift_task_alloc();
  v2[141] = swift_task_alloc();
  v2[142] = swift_task_alloc();
  v2[143] = swift_task_alloc();
  v2[144] = swift_task_alloc();
  v2[145] = swift_task_alloc();
  v2[146] = swift_task_alloc();
  v4 = type metadata accessor for ExceptionRequestMetadata();
  v2[147] = v4;
  v2[148] = *(v4 - 8);
  v2[149] = swift_task_alloc();
  v2[150] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[151] = v5;
  v2[152] = *(v5 - 8);
  v2[153] = swift_task_alloc();
  v2[154] = swift_task_alloc();
  sub_1001F0C48(&qword_1007881B0, &qword_1006B51D8);
  v2[155] = swift_task_alloc();
  v6 = type metadata accessor for AppLibrary.ExceptionRequest.Status();
  v2[156] = v6;
  v2[157] = *(v6 - 8);
  v2[158] = swift_task_alloc();
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  v7 = sub_1001F0C48(&qword_1007881B8, &qword_1006B51E0);
  v2[161] = v7;
  v2[162] = *(v7 - 8);
  v2[163] = swift_task_alloc();

  return _swift_task_switch(sub_1005A0CAC, 0, 0);
}