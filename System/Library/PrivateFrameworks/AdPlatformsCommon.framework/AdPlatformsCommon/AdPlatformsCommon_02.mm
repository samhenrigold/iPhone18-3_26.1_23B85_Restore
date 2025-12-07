uint64_t DiagnosticBag.__allocating_init(diagnosticKeysType:)(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  v4 = APPerfLogForCategory();
  sub_1BB0148F8();
  v5 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_activeSignPosts;
  *(v2 + v5) = sub_1BB013EC4(MEMORY[0x1E69E7CC0]);
  v6 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_lock;
  *(v2 + v6) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v7 = (v2 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys);
  *v7 = 0x6F436E6F73616572;
  v7[1] = 0xEA00000000006564;
  v7[2] = 0xD000000000000014;
  v7[3] = 0x80000001BB021420;
  v7[4] = 0x7453646C6F437369;
  v7[5] = 0xEB00000000747261;
  v7[6] = 0x6E6F697461727564;
  v7[7] = 0xE800000000000000;
  v7[8] = 0x6164696C61766E69;
  v7[9] = 0xEB00000000646574;
  if (v3 == 2)
  {
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    if (v3)
    {
      if (qword_1EBC3AE78 != -1)
      {
        swift_once();
      }

      v8 = &qword_1EBC3B640;
    }

    else
    {
      if (qword_1EDD4FA90 != -1)
      {
        swift_once();
      }

      v8 = &qword_1EDD4FA98;
    }

    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    v13 = v8[5];
    *(v2 + 16) = *v8;
    *(v2 + 24) = v9;
    *(v2 + 32) = v10;
    *(v2 + 40) = v11;
    *(v2 + 48) = v12;
    *(v2 + 56) = v13;
  }

  return v2;
}

uint64_t DiagnosticBag.init(diagnosticKeysType:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = APPerfLogForCategory();
  sub_1BB0148F8();
  v4 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_activeSignPosts;
  *(v1 + v4) = sub_1BB013EC4(MEMORY[0x1E69E7CC0]);
  v5 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_lock;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v6 = (v1 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys);
  *v6 = 0x6F436E6F73616572;
  v6[1] = 0xEA00000000006564;
  v6[2] = 0xD000000000000014;
  v6[3] = 0x80000001BB021420;
  v6[4] = 0x7453646C6F437369;
  v6[5] = 0xEB00000000747261;
  v6[6] = 0x6E6F697461727564;
  v6[7] = 0xE800000000000000;
  v6[8] = 0x6164696C61766E69;
  v6[9] = 0xEB00000000646574;
  if (v2 == 2)
  {
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  else
  {
    if (v2)
    {
      if (qword_1EBC3AE78 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EBC3B640;
    }

    else
    {
      if (qword_1EDD4FA90 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EDD4FA98;
    }

    v8 = v7[1];
    v9 = v7[2];
    v10 = v7[3];
    v11 = v7[4];
    v12 = v7[5];
    *(v1 + 16) = *v7;
    *(v1 + 24) = v8;
    *(v1 + 32) = v9;
    *(v1 + 40) = v10;
    *(v1 + 48) = v11;
    *(v1 + 56) = v12;
  }

  return v1;
}

uint64_t sub_1BAFFB458(const char *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v27 = sub_1BB0148E8();
  v6 = *(v27 - 8);
  v7 = MEMORY[0x1EEE9AC00](v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(v3 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_lock);
  [v12 lock];
  v28 = sub_1BB014BB8();
  v14 = v13;
  v15 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_activeSignPosts;
  swift_beginAccess();
  if (*(*(v3 + v15) + 16))
  {

    sub_1BAFDCCAC(v28, v14);
    if (v16)
    {

      return [v12 unlock];
    }
  }

  v25 = v14;
  v26 = v12;
  sub_1BB0148D8();
  v17 = sub_1BB014908();
  v18 = sub_1BB014E38();
  result = sub_1BB014E58();
  if ((result & 1) == 0)
  {
LABEL_14:

    v22 = v27;
    (*(v6 + 16))(v9, v11, v27);
    sub_1BB014958();
    swift_allocObject();
    v23 = sub_1BB014948();
    (*(v6 + 8))(v11, v22);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v3 + v15);
    *(v3 + v15) = 0x8000000000000000;
    sub_1BAFDD610(v23, v28, v25, isUniquelyReferenced_nonNull_native);

    *(v3 + v15) = v30;
    swift_endAccess();

    v12 = v26;
    return [v12 unlock];
  }

  if ((v4 & 1) == 0)
  {
    if (a1)
    {
LABEL_13:
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1BB0148C8();
      _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v17, v18, v21, a1, "", v20, 2u);
      MEMORY[0x1BFB07C70](v20, -1, -1);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v29;
      goto LABEL_13;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_1BAFFB78C(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a3;
  v8 = sub_1BB014928();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - v12;
  v14 = sub_1BB0148E8();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v50 - v18);
  v56 = *(v4 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_lock);
  [v56 lock];
  v53 = a1;
  v20 = sub_1BB014BB8();
  v22 = v21;
  swift_beginAccess();
  v23 = sub_1BAFFC870(v20, v22);
  swift_endAccess();
  if (!v23)
  {
    goto LABEL_7;
  }

  v24 = sub_1BB014908();
  if ((a4 & 1) == 0)
  {
    sub_1BB014938();
    v13 = sub_1BB014E28();
    if ((sub_1BB014E58() & 1) == 0)
    {

LABEL_34:
      v19 = v17;
      goto LABEL_35;
    }

    if ((v6 & 1) == 0)
    {

      v26 = v53;
      if (!v53)
      {
        __break(1u);
        goto LABEL_12;
      }

      goto LABEL_28;
    }

    v27 = v53;
    v28 = HIDWORD(v53);
    if (HIDWORD(v53))
    {
      goto LABEL_38;
    }

    v28 = v53 & 0xFFFFF800;
    v29 = 55296;
    if (v28 == 55296)
    {
      goto LABEL_48;
    }

    v28 = v53 >> 16;
    if (v53 >> 16 > 0x10)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v53 > 0x7F)
    {
      v45 = (v53 & 0x3F) << 8;
      if (v53 >= 0x800)
      {
        v49 = (v45 | (v53 >> 6) & 0x3F) << 8;
        if (!v28)
        {
          v34 = (v53 >> 12) + v49 + 8487393;
          goto LABEL_27;
        }

        v46 = (v53 >> 18) + ((v49 | (v53 >> 12) & 0x3F) << 8);
        v47 = -2122219023;
      }

      else
      {
        v46 = (v53 >> 6) + v45;
        v47 = 33217;
      }

      v34 = v46 + v47;
    }

    else
    {
      v34 = v53 + 1;
    }

LABEL_27:
    v57[0] = (v34 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v34) & 0x18)));

    v26 = v57;
LABEL_28:
    v36 = v51;
    v35 = v52;

    sub_1BB014968();

    if ((*(v36 + 88))(v11, v35) == *MEMORY[0x1E69E93E8])
    {
      v37 = "[Error] Interval already ended";
    }

    else
    {
      (*(v36 + 8))(v11, v35);
      v37 = "";
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_1BB0148C8();
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v24, v13, v41, v26, v37, v40, 2u);
    MEMORY[0x1BFB07C70](v40, -1, -1);

    goto LABEL_34;
  }

  sub_1BB014938();
  LOBYTE(v11) = sub_1BB014E28();
  if ((sub_1BB014E58() & 1) == 0)
  {
LABEL_12:

LABEL_35:
    (*(v54 + 8))(v19, v55);
    return [v56 unlock];
  }

  if (v6)
  {
    v27 = v53;
    v28 = HIDWORD(v53);
    if (!HIDWORD(v53))
    {
      v28 = v53 & 0xFFFFF800;
      v29 = 55296;
      if (v28 != 55296)
      {
        v28 = v53 >> 16;
        if (v53 >> 16 <= 0x10)
        {
          v17 = v24;
          if (v53 <= 0x7F)
          {
            v30 = v53 + 1;
LABEL_19:
            v57[0] = (v30 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v30) & 0x18)));

            v25 = v57;
            goto LABEL_20;
          }

LABEL_41:
          v29 = (v27 & 0x3F) << 8;
          if (v27 < 0x800)
          {
            v43 = (v53 >> 6) + v29;
            v44 = 33217;
LABEL_43:
            v30 = v43 + v44;
            goto LABEL_19;
          }

LABEL_49:
          v48 = (v29 | (v53 >> 6) & 0x3F) << 8;
          if (!v28)
          {
            v30 = (v53 >> 12) + v48 + 8487393;
            goto LABEL_19;
          }

          v43 = (v53 >> 18) + ((v48 | (v53 >> 12) & 0x3F) << 8);
          v44 = -2122219023;
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v17 = v24;

  v25 = v53;
  if (v53)
  {
LABEL_20:
    v32 = v51;
    v31 = v52;

    sub_1BB014968();

    if ((*(v32 + 88))(v13, v31) == *MEMORY[0x1E69E93E8])
    {
      v33 = "[Error] Interval already ended";
    }

    else
    {
      (*(v32 + 8))(v13, v31);
      v33 = "enableTelemetry=YES";
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_1BB0148C8();
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v17, v11, v39, v25, v33, v38, 2u);
    MEMORY[0x1BFB07C70](v38, -1, -1);

    goto LABEL_35;
  }

  __break(1u);
LABEL_7:

  return [v56 unlock];
}

void sub_1BAFFBE00()
{
  if (*(v0 + 24))
  {
    v1 = objc_opt_self();
    v2 = sub_1BB014B38();
    [v1 sendEvent_];
  }
}

uint64_t sub_1BAFFBE94(uint64_t result, char a2)
{
  v3 = v2[3];
  if (v3)
  {
    v5 = result;
    v7 = v2[6];
    v6 = v2[7];
    v9 = v2[4];
    v8 = v2[5];
    v10 = v2[2];
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v3;
    *(v11 + 32) = v9;
    *(v11 + 40) = v8;
    *(v11 + 48) = v7;
    *(v11 + 56) = v6;
    *(v11 + 64) = v2;
    *(v11 + 72) = v5;
    *(v11 + 80) = a2 & 1;
    sub_1BAFFAF7C(v10, v3, v9, v8, v7, v6);

    sub_1BB014768();
  }

  return result;
}

void sub_1BAFFBFA0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *a1;
  v17 = objc_opt_self();
  v8 = sub_1BB014B38();
  sub_1BAFD86D0(&qword_1EBC3B558, &qword_1BB01A7F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187D0;
  v10 = (a3 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys);
  v11 = *(a3 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 8);
  *(inited + 32) = *(a3 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys);
  *(inited + 40) = v11;

  *(inited + 48) = sub_1BB014D48();
  v12 = v10[3];
  *(inited + 56) = v10[2];
  *(inited + 64) = v12;
  v13 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 72) = [v13 initWithBool_];
  v14 = v10[5];
  *(inited + 80) = v10[4];
  *(inited + 88) = v14;
  v15 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 96) = [v15 initWithBool_];
  sub_1BB013814(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&unk_1EBC3B560, &qword_1BB01A7F8);
  swift_arrayDestroy();
  sub_1BAFFCCB4();
  v16 = sub_1BB014A78();

  [v17 sendEvent:v8 customPayload:v16];
}

void sub_1BAFFC15C(void *a1, char a2)
{
  if (*(v2 + 24))
  {
    v5 = objc_opt_self();
    v6 = sub_1BB014B38();
    sub_1BAFD86D0(&qword_1EBC3B558, &qword_1BB01A7F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BB018AE0;
    v8 = v2 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys;
    v9 = *(v2 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 48);
    v10 = *(v2 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 56);
    *(inited + 32) = v9;
    *(inited + 40) = v10;
    *(inited + 48) = a1;
    v11 = *(v8 + 72);
    *(inited + 56) = *(v8 + 64);
    *(inited + 64) = v11;
    v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v13 = a1;

    *(inited + 72) = [v12 initWithBool_];
    sub_1BB013814(inited);
    swift_setDeallocating();
    sub_1BAFD86D0(&unk_1EBC3B560, &qword_1BB01A7F8);
    swift_arrayDestroy();
    sub_1BAFFCCB4();
    v14 = sub_1BB014A78();

    [v5 sendEvent:v6 customPayload:v14];
  }
}

char *DiagnosticBag.deinit()
{
  sub_1BAFFCD00(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7]);
  v1 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_signposter;
  v2 = sub_1BB014918();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DiagnosticBag.__deallocating_deinit()
{
  sub_1BAFFCD00(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7]);
  v1 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_signposter;
  v2 = sub_1BB014918();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BAFFC534()
{
  if (*(*v0 + 24))
  {
    v1 = objc_opt_self();
    v2 = sub_1BB014B38();
    [v1 sendEvent_];
  }
}

uint64_t sub_1BAFFC5CC(uint64_t result, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4)
  {
    v6 = result;
    v8 = v3[6];
    v7 = v3[7];
    v10 = v3[4];
    v9 = v3[5];
    v11 = v3[2];
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v4;
    *(v12 + 32) = v10;
    *(v12 + 40) = v9;
    *(v12 + 48) = v8;
    *(v12 + 56) = v7;
    *(v12 + 64) = v3;
    *(v12 + 72) = v6;
    *(v12 + 80) = a2 & 1;
    sub_1BAFFAF7C(v11, v4, v10, v9, v8, v7);

    sub_1BB014768();
  }

  return result;
}

uint64_t sub_1BAFFC700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1BAFDCCAC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BAFDBFDC();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1BB0144A8();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1BAFFC908(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1BB0144A8();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1BAFFC870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1BAFDCCAC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1BAFDC3CC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1BAFFCAF4(v6, v8);
  *v3 = v8;
  return v9;
}

unint64_t sub_1BAFFC908(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BB014EF8() + 1) & ~v5;
    while (1)
    {
      sub_1BB0151B8();

      sub_1BB014BD8();
      v9 = sub_1BB0151F8();

      v10 = v9 & v7;
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
      v15 = *(*(sub_1BB0144A8() - 8) + 72);
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

uint64_t sub_1BAFFCAF4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BB014EF8() + 1) & ~v5;
    do
    {
      sub_1BB0151B8();

      sub_1BB014BD8();
      v9 = sub_1BB0151F8();

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

unint64_t sub_1BAFFCCB4()
{
  result = qword_1EDD4FFC8;
  if (!qword_1EDD4FFC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD4FFC8);
  }

  return result;
}

void sub_1BAFFCD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

unint64_t sub_1BAFFCD54()
{
  result = qword_1EBC3B670;
  if (!qword_1EBC3B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B670);
  }

  return result;
}

__n128 sub_1BAFFCE0C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1BAFFCE28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BAFFCE70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAFFCED4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BAFFCF1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for DiagnosticBag(uint64_t a1)
{
  result = qword_1EDD4FA58;
  if (!qword_1EDD4FA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAFFCFDC(uint64_t a1)
{
  result = sub_1BB014918();
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

uint64_t sub_1BAFFD17C()
{

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t StoredFeatureFlag.init(source:fallback:)(__int128 *a1, __int128 *a2)
{
  sub_1BAFC6D0C(a1, v2 + 16);
  sub_1BAFC6D0C(a2, v2 + 56);
  return v2;
}

uint64_t StoredFeatureFlag.deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));
  return v0;
}

uint64_t StoredFeatureFlag.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t Double.milliseconds.getter(double a1)
{
  v1 = round(a1 * 1000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Double.decisecondsAsMilliseconds.getter(double a1)
{
  v1 = round(a1 * 10.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = 100 * v1;
  if ((v1 * 100) >> 64 != result >> 63)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t IdentifierType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      return 0x644974656B637542;
    case 1:
      return 0xD000000000000012;
    case 0:
      return 0xD000000000000012;
  }

  result = sub_1BB015138();
  __break(1u);
  return result;
}

unint64_t IdentifierType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BAFFD414()
{
  result = qword_1EBC3B678;
  if (!qword_1EBC3B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B678);
  }

  return result;
}

unint64_t *sub_1BAFFD468@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_1BAFFD54C()
{
  result = qword_1EDD4F7F8;
  if (!qword_1EDD4F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4F7F8);
  }

  return result;
}

uint64_t EventCapsule.init(event:purpose:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for EventCapsule(0, a4, v9, v10);
  *(a5 + *(result + 28)) = a2;
  *(a5 + *(result + 32)) = a3;
  return result;
}

BOOL static EventCapsule<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1BB014B18() & 1) != 0 && (v9 = type metadata accessor for EventCapsule(0, a3, v7, v8), *(a1 + *(v9 + 28)) == *(a2 + *(v9 + 28))))
  {
    return *(a1 + *(v9 + 32)) == *(a2 + *(v9 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t EventCapsule.debugDescription.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1BB014F58();
  MEMORY[0x1BFB06D20](0x203A746E657665, 0xE700000000000000);
  (*(v4 + 16))(v6, v1, v3);
  v7 = sub_1BB014B98();
  MEMORY[0x1BFB06D20](v7);

  MEMORY[0x1BFB06D20](0x736F70727570202CLL, 0xEB00000000203A65);
  v11 = *(v1 + *(a1 + 28));
  v8 = sub_1BB0150F8();
  MEMORY[0x1BFB06D20](v8);

  MEMORY[0x1BFB06D20](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  v11 = *(v1 + *(a1 + 32));
  type metadata accessor for APMetricOptions(0);
  sub_1BB014FF8();
  return v12;
}

uint64_t sub_1BAFFD8CC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1BAFFD9D8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t ContentVerifierError.hashValue.getter(unsigned __int8 a1)
{
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](a1);
  return sub_1BB0151F8();
}

unint64_t sub_1BAFFDBE8()
{
  result = qword_1EBC3B680;
  if (!qword_1EBC3B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B680);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentVerifierError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContentVerifierError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t FFIF.init(value:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BAFDB9B0(a1, v8);
  if (swift_dynamicCast())
  {
    result = sub_1BAFC6A68(a1);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
  }

  else
  {
    sub_1BAFDC53C(a1, v8);
    result = swift_dynamicCast();
    if (result)
    {
      *a2 = v6;
      *(a2 + 8) = 0;
      v5 = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      v5 = -1;
    }

    *(a2 + 16) = v5;
  }

  return result;
}

uint64_t _s17AdPlatformsCommon4FFIFO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_1BAFD8408(*a1, v2, 1);
      sub_1BAFD8408(v6, v5, 1);
      result = 1;
      if (*&v3 == *&v6)
      {
        return result;
      }

      return 0;
    }

LABEL_7:
    sub_1BAFFE148(v6, v5, v7);
    sub_1BAFD8408(v3, v2, v4);
    sub_1BAFD8408(v6, v5, v7);
    return 0;
  }

  if (*(a2 + 16))
  {

    goto LABEL_7;
  }

  v9 = *a1;
  if (v3 == v6 && v2 == v5)
  {
    sub_1BAFFE148(v9, v2, 0);
    sub_1BAFFE148(v3, v2, 0);
    sub_1BAFD8408(v3, v2, 0);
    sub_1BAFD8408(v3, v2, 0);
    return 1;
  }

  else
  {
    v11 = sub_1BB015118();
    sub_1BAFFE148(v6, v5, 0);
    sub_1BAFFE148(v3, v2, 0);
    sub_1BAFD8408(v3, v2, 0);
    sub_1BAFD8408(v6, v5, 0);
    return v11 & 1;
  }
}

__n128 sub_1BAFFE08C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BAFFE0A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BAFFE0E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1BAFFE148(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t Storefront.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Storefront.languageIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Storefront.platform.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1BAFFE238()
{
  v0 = sub_1BAFD86D0(&qword_1EBC3B6B0, &qword_1BB01BB00);
  sub_1BAFFF6EC(v0, qword_1EBC3B688);
  sub_1BAFE833C(v0, qword_1EBC3B688);
  sub_1BAFD86D0(&qword_1EBC3B6B8, &qword_1BB01BB60);
  sub_1BAFF2764(&qword_1EBC3B6C0, &qword_1EBC3B6B0, &qword_1BB01BB00, MEMORY[0x1E69E9290]);
  return sub_1BB014888();
}

uint64_t sub_1BAFFE310@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v125 = sub_1BAFD86D0(&qword_1EBC3B6C8, &qword_1BB01BB68);
  v127 = *(v125 - 8);
  v1 = MEMORY[0x1EEE9AC00](v125);
  v124 = &v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v136 = &v111 - v3;
  v121 = sub_1BAFD86D0(&qword_1EBC3B6D0, &qword_1BB01BB70);
  v122 = *(v121 - 8);
  v4 = MEMORY[0x1EEE9AC00](v121);
  v119 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v120 = &v111 - v6;
  v7 = sub_1BB0147E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1BAFD86D0(&qword_1EBC3B6D8, &qword_1BB01BB78);
  v145 = *(v129 - 8);
  v11 = MEMORY[0x1EEE9AC00](v129);
  v130 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v128 = &v111 - v13;
  v14 = sub_1BAFD86D0(&qword_1EBC3B6E0, &qword_1BB01BB80);
  v15 = *(v14 - 8);
  v153 = v14;
  v154 = v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v151 = &v111 - v19;
  v135 = sub_1BAFD86D0(&qword_1EBC3B6E8, &qword_1BB01BB88);
  v123 = *(v135 - 8);
  v20 = MEMORY[0x1EEE9AC00](v135);
  v134 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v149 = &v111 - v22;
  v23 = sub_1BB014868();
  v142 = v23;
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v111 - v28;
  v155 = sub_1BAFD86D0(&qword_1EBC3B6F0, &qword_1BB01BB90);
  v152 = *(v155 - 8);
  v30 = MEMORY[0x1EEE9AC00](v155);
  v118 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v146 = &v111 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v140 = &v111 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v148 = &v111 - v36;
  sub_1BB0147D8();
  sub_1BB014878();
  v115 = v27;
  sub_1BB0147D8();
  v132 = sub_1BAFFF750();
  v37 = MEMORY[0x1E69E67B0];
  v114 = v18;
  v111 = v10;
  v131 = v7;
  sub_1BB014858();
  v38 = *(v24 + 8);
  v38(v27, v23);
  v139 = v38;
  v138 = v24 + 8;
  v39 = *(v8 + 8);
  v116 = v8 + 8;
  v117 = v39;
  v39(v10, v7);
  v40 = v130;
  MEMORY[0x1BFB06930](v18, v37);
  v41 = sub_1BAFF2764(&qword_1EBC3B700, &qword_1EBC3B6D8, &qword_1BB01BB78, MEMORY[0x1E69E8270]);
  v42 = v128;
  v43 = v129;
  v113 = v41;
  MEMORY[0x1BFB068E0](v40, v129, v41);
  v45 = v145 + 8;
  v44 = *(v145 + 8);
  v44(v40, v43);
  v112 = v44;
  v145 = v45;
  v46 = v151;
  sub_1BB0147C8();
  v44(v42, v43);
  v47 = sub_1BAFD86D0(&qword_1EBC3B708, &qword_1BB01BB98);
  v133 = MEMORY[0x1E69E9290];
  v144 = sub_1BAFF2764(&qword_1EBC3B710, &qword_1EBC3B6E0, &qword_1BB01BB80, MEMORY[0x1E69E9290]);
  v48 = v149;
  v137 = v47;
  v49 = v153;
  sub_1BB014848();
  v50 = *(v154 + 8);
  v154 += 8;
  v143 = v50;
  v50(v46, v49);
  v38(v29, v142);
  v51 = v140;
  MEMORY[0x1BFB06940](v48, v47);
  v150 = sub_1BAFF2764(&qword_1EBC3B718, &qword_1EBC3B6F0, &qword_1BB01BB90, MEMORY[0x1E69E8278]);
  v52 = v155;
  MEMORY[0x1BFB068E0](v51, v155, v150);
  v53 = *(v152 + 8);
  v152 += 8;
  v141 = v53;
  v53(v51, v52);
  v158 = 45;
  v159 = 0xE100000000000000;
  v147 = sub_1BAFFF7A8();
  MEMORY[0x1BFB068E0](v160, &v158, MEMORY[0x1E69E6158], v147);
  sub_1BB0147D8();
  v54 = v111;
  sub_1BB014878();
  v55 = v119;
  sub_1BB0147F8();
  v56 = sub_1BAFF2764(&qword_1EBC3B728, &qword_1EBC3B6D0, &qword_1BB01BB70, MEMORY[0x1E69E8258]);
  v57 = v120;
  v58 = v121;
  MEMORY[0x1BFB068E0](v55, v121, v56);
  v59 = *(v122 + 8);
  v59(v55, v58);
  v60 = v151;
  sub_1BB0147C8();
  v59(v57, v58);
  v61 = v149;
  v62 = v137;
  v63 = v153;
  sub_1BB014848();
  v143(v60, v63);
  v64 = v142;
  v139(v29, v142);
  v65 = v146;
  MEMORY[0x1BFB06940](v61, v62);
  v66 = v155;
  MEMORY[0x1BFB068E0](v65, v155, v150);
  v141(v65, v66);
  v156 = 44;
  v157 = 0xE100000000000000;
  MEMORY[0x1BFB068E0](&v158, &v156, MEMORY[0x1E69E6158], v147);
  sub_1BB0147D8();
  v67 = v54;
  sub_1BB014878();
  v68 = v115;
  sub_1BB0147D8();
  v69 = v114;
  v70 = MEMORY[0x1E69E67B0];
  v71 = v131;
  sub_1BB014858();
  v72 = v139;
  v139(v68, v64);
  v117(v67, v71);
  v73 = v130;
  MEMORY[0x1BFB06930](v69, v70);
  v74 = v128;
  v75 = v129;
  MEMORY[0x1BFB068E0](v73, v129, v113);
  v76 = v73;
  v77 = v112;
  v112(v76, v75);
  v78 = v151;
  sub_1BB0147C8();
  v77(v74, v75);
  v79 = v149;
  v80 = v137;
  v81 = v153;
  sub_1BB014848();
  v82 = v78;
  v83 = v143;
  v143(v82, v81);
  v72(v29, v64);
  v84 = v118;
  MEMORY[0x1BFB06940](v79, v80);
  v85 = v155;
  MEMORY[0x1BFB068E0](v84, v155, v150);
  v141(v84, v85);
  sub_1BB0147C8();
  v86 = v160[0];
  v87 = v160[1];
  sub_1BB0147D8();
  v156 = v86;
  v157 = v87;
  v88 = v151;
  sub_1BB014838();

  sub_1BAFF2764(&qword_1EBC3B730, &qword_1EBC3B6E8, &qword_1BB01BB88, v133);
  v89 = v153;
  sub_1BB014828();
  v83(v88, v89);
  v90 = v142;
  v91 = v139;
  v139(v29, v142);
  sub_1BB0147D8();
  sub_1BAFD86D0(&qword_1EBC3B738, &unk_1BB01BBA0);
  sub_1BB014828();
  v92 = v91;
  v91(v29, v90);
  v93 = v158;
  v94 = v159;
  sub_1BB0147D8();
  v156 = v93;
  v157 = v94;
  v95 = v151;
  sub_1BB014838();

  sub_1BAFF2764(&qword_1EBC3B740, &qword_1EBC3B6C8, &qword_1BB01BB68, v133);
  v96 = v124;
  v97 = v95;
  v98 = v125;
  v99 = v153;
  sub_1BB014828();
  v143(v97, v99);
  v100 = v90;
  v92(v29, v90);
  v101 = v92;
  sub_1BB0147D8();
  sub_1BAFD86D0(&qword_1EBC3B6B8, &qword_1BB01BB60);
  v102 = v96;
  v103 = v146;
  v104 = v98;
  sub_1BB014828();
  v101(v29, v100);
  v105 = *(v127 + 8);
  v105(v102, v104);
  v105(v136, v104);
  v106 = *(v123 + 8);
  v107 = v135;
  v106(v134, v135);
  v106(v149, v107);
  v108 = v155;
  v109 = v141;
  v141(v103, v155);
  v109(v140, v108);
  return (v109)(v148, v108);
}

void __swiftcall Storefront.init(_:)(AdPlatformsCommon::Storefront_optional *__return_ptr retstr, Swift::String a2)
{
  v3 = sub_1BAFD86D0(&qword_1EBC3B6A0, &qword_1BB01BAF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_1BAFD86D0(&qword_1EBC3B6A8, &qword_1BB01BAF8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  if (qword_1EBC3AE88 != -1)
  {
    swift_once();
  }

  v10 = sub_1BAFD86D0(&qword_1EBC3B6B0, &qword_1BB01BB00);
  sub_1BAFE833C(v10, qword_1EBC3B688);
  sub_1BB014898();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BAFFF674(v5);
    if (qword_1EDD4E200 != -1)
    {
      swift_once();
    }

    v11 = sub_1BB0149A8();
    sub_1BAFE833C(v11, qword_1EDD51B20);
    v12 = sub_1BB014988();
    v13 = sub_1BB014DB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BAFC4000, v12, v13, "String does not match expected pattern.", v14, 2u);
      MEMORY[0x1BFB07C70](v14, -1, -1);
    }

    retstr->value.languageIdentifier = 0u;
    retstr->value.platform = 0u;
    retstr->value.identifier = 0u;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_1BB0148A8();

    v15 = v39;
    v16 = v40;
    v17 = v41;
    v18 = v42;
    v31 = v44;
    v32 = v43;
    v19 = v46;
    v30 = v45;
    v20 = MEMORY[0x1BFB06CF0](v35, v36, v37, v38);
    v33 = v21;
    v34 = v20;

    v22 = MEMORY[0x1BFB06CF0](v15, v16, v17, v18);
    v24 = v23;

    v25 = MEMORY[0x1BFB06CF0](v32, v31, v30, v19);
    v27 = v26;

    (*(v7 + 8))(v9, v6);
    v28 = v33;
    retstr->value.identifier._countAndFlagsBits = v34;
    retstr->value.identifier._object = v28;
    retstr->value.languageIdentifier._countAndFlagsBits = v22;
    retstr->value.languageIdentifier._object = v24;
    retstr->value.platform._countAndFlagsBits = v25;
    retstr->value.platform._object = v27;
  }
}

uint64_t sub_1BAFFF674(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3B6A0, &qword_1BB01BAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1BAFFF6EC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1BAFFF750()
{
  result = qword_1EBC3B6F8;
  if (!qword_1EBC3B6F8)
  {
    sub_1BB0147E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B6F8);
  }

  return result;
}

unint64_t sub_1BAFFF7A8()
{
  result = qword_1EBC3B720;
  if (!qword_1EBC3B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B720);
  }

  return result;
}

uint64_t sub_1BAFFF7FC()
{
  v1 = v0;
  v2 = sub_1BB014398();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v73 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v73 - v10;
  v11 = type metadata accessor for IdentifierData(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v88 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v73 - v14);
  v16 = v0[6];
  v17 = v0[7];
  sub_1BAFC6AB4(v0 + 3, v16);
  v18 = (*(v17 + 8))(v16, v17);
  if (!*(v18 + 16) || (v19 = sub_1BAFDCCAC(0x644974656B637562, 0xE900000000000073), (v20 & 1) == 0))
  {

LABEL_34:
    LOBYTE(v92[0]) = 5;
    idmanagerError(errorType:description:)(v92, 0);
    return 0;
  }

  sub_1BAFDB9B0(*(v18 + 56) + 32 * v19, v92);

  sub_1BAFD86D0(&qword_1EBC3B590, &qword_1BB01ACC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  v81 = v11;
  v82 = v6;
  v77 = v9;
  v83 = v2;
  v21 = 0;
  v22 = v90;
  v23 = v90 + 64;
  v24 = 1 << *(v90 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v90 + 64);
  v27 = (v24 + 63) >> 6;
  v75 = (v3 + 8);
  v74 = (v3 + 32);
  result = MEMORY[0x1E69E7CC8];
  v79 = v90;
  v76 = v27;
  while (v26)
  {
    v29 = v81;
LABEL_14:
    v31 = __clz(__rbit64(v26)) | (v21 << 6);
    v32 = *(*(v22 + 56) + 8 * v31);
    if (!*(v32 + 16))
    {
      goto LABEL_40;
    }

    v84 = result;
    v33 = (*(v22 + 48) + 16 * v31);
    v34 = v33[1];
    v86 = *v33;
    v87 = v34;

    v35 = sub_1BAFDCCAC(0x615274656B637562, 0xEB0000000065676ELL);
    if ((v36 & 1) == 0 || (sub_1BAFDB9B0(*(v32 + 56) + 32 * v35, v92), (swift_dynamicCast() & 1) == 0) || !*(v32 + 16) || (v37 = v91, v38 = sub_1BAFDCCAC(0x69746172656E6567, 0xEA00000000006E6FLL), (v39 & 1) == 0) || (sub_1BAFDB9B0(*(v32 + 56) + 32 * v38, v92), (swift_dynamicCast() & 1) == 0) || !*(v32 + 16) || (v85 = v91, v40 = sub_1BAFDCCAC(0x73656372756F73, 0xE700000000000000), (v41 & 1) == 0) || (sub_1BAFDB9B0(*(v32 + 56) + 32 * v40, v92), sub_1BAFD86D0(&qword_1EBC3B0C8, &qword_1BB01ACC0), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_39;
    }

    v80 = v91;
    if (!*(v32 + 16) || (v42 = sub_1BAFDCCAC(0x4C545478616DLL, 0xE600000000000000), (v43 & 1) == 0) || (sub_1BAFDB9B0(*(v32 + 56) + 32 * v42, v92), (swift_dynamicCast() & 1) == 0) || !*(v32 + 16))
    {

LABEL_39:

LABEL_40:

      LOBYTE(v92[0]) = 5;
      idmanagerError(errorType:description:)(v92, 0);

      return 0;
    }

    v44 = sub_1BAFDCCAC(0x776F6C6C4178616DLL, 0xEF65756C61566465);
    if ((v45 & 1) == 0)
    {

      goto LABEL_40;
    }

    sub_1BAFDB9B0(*(v32 + 56) + 32 * v44, v92);

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_40;
    }

    v46 = sub_1BB000084(v37, v86, v87, v85, v91);
    v48 = v47;
    v49 = v77;
    sub_1BB014388();
    sub_1BB014378();
    (*v75)(v49, v83);
    sub_1BB014388();
    v50 = v1[2];
    if (v50)
    {
      v51 = (v50 + OBJC_IVAR___APRotatingIdentifier_value);
      swift_beginAccess();
      v52 = *v51;
      v53 = v51[1];
      v78 = v52;
    }

    else
    {
      v53 = 0xE200000000000000;
      v78 = 12589;
    }

    v26 &= v26 - 1;
    *v15 = v46;
    v15[1] = v48;
    v54 = *v74;
    v55 = v83;
    (*v74)(v15 + v29[5], v89, v83);
    v54(v15 + v29[6], v82, v55);
    *(v15 + v29[7]) = v80;
    v56 = (v15 + v29[8]);
    v57 = v29;
    v58 = v86;
    v59 = v87;
    *v56 = v86;
    v56[1] = v59;
    v60 = v15 + v57[9];
    v61 = v78;
    *v60 = v85;
    *(v60 + 1) = v61;
    *(v60 + 2) = v53;
    *(v60 + 3) = 0;
    v60[32] = 2;
    v62 = v88;
    sub_1BAFD9E38(v15, v88);

    v63 = v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92[0] = v63;
    sub_1BAFDD094(v62, v58, v59, isUniquelyReferenced_nonNull_native);

    sub_1BAFD9F70(v15);
    result = v92[0];
    v22 = v79;
    v27 = v76;
  }

  v29 = v81;
  while (1)
  {
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v65 = result;

      v66 = sub_1BB014DA8();
      sub_1BAFC5D64();
      v67 = sub_1BB014E68();
      sub_1BAFD86D0(&qword_1EBC3B098, &qword_1BB018850);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_1BB0187E0;
      v69 = MEMORY[0x1E69E6158];
      v70 = sub_1BB014A98();
      v72 = v71;
      *(v68 + 56) = v69;
      *(v68 + 64) = sub_1BAFD9D38();
      *(v68 + 32) = v70;
      *(v68 + 40) = v72;
      sub_1BB0148B8(v66, &dword_1BAFC4000, v67, "[BucketIdDataBuilder] New BucketId Data generated: %{public}@", 61, 2, v68);

      return v65;
    }

    v26 = *(v23 + 8 * v30);
    ++v21;
    if (v26)
    {
      v21 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB000084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[23] = *MEMORY[0x1E69E9840];
  v10 = sub_1BB014B78();
  MEMORY[0x1EEE9AC00](v10 - 8);
  if (sub_1BB0003A4(a2, a3))
  {
    v11 = -1;
  }

  else
  {
    if (a1 < 1)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v11 = sub_1BB0009B8(a1) + 1;
  }

  if (!a5)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a4 == 0x8000000000000000 && a5 == -1)
  {
LABEL_16:
    __break(1u);
  }

  v12 = a4 % a5;
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187D0;
  *(inited + 32) = 0x614E74656B637562;
  v14 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xEF6563617073656DLL;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  *(inited + 72) = v14;
  *(inited + 80) = 0x644974656B637562;
  v15 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v11;
  *(inited + 120) = v15;
  *(inited + 128) = 0x69746172656E6567;
  *(inited + 168) = v15;
  *(inited + 136) = 0xEA00000000006E6FLL;
  *(inited + 144) = v12;

  sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  v16 = objc_opt_self();
  v17 = sub_1BB014A78();

  v29[0] = 0;
  v18 = [v16 dataWithJSONObject:v17 options:0 error:v29];

  v19 = v29[0];
  if (v18)
  {
    v20 = sub_1BB014308();
    v22 = v21;

    sub_1BB014B68();
    v23 = sub_1BB014B58();
    v25 = v24;
    sub_1BAFE84B8(v20, v22);
    if (v25)
    {
      return v23;
    }
  }

  else
  {
    v27 = v19;
    v28 = sub_1BB014288();

    swift_willThrow();
  }

  LOBYTE(v29[0]) = 17;
  idmanagerError(errorType:description:)(v29, 0);
  return 12589;
}

uint64_t sub_1BB0003A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BB014398();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v36 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v36 - v10;
  v11 = sub_1BAFD86D0(&qword_1EBC3B748, &qword_1BB01BBF8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = sub_1BAFD86D0(&qword_1EBC3B538, &unk_1BB01BC00);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  sub_1BAFC6AB4((v2 + 64), *(v2 + 88));
  sub_1BAFF0BDC(a1, a2, 2uLL, v22);
  sub_1BB0008F8(v22, v20, &qword_1EBC3B538, &unk_1BB01BC00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v20;
    v42 = 10;
    v41 = v23;
    sub_1BAFD9FCC();
    v24 = sub_1BB015168();
    v26 = v25;
    v27.value._countAndFlagsBits = v24;
    v27.value._object = v26;
    idmanagerError(errorType:description:)(&v42, v27);

    sub_1BAFE2D64(v22, &qword_1EBC3B538, &unk_1BB01BC00);
    return 1;
  }

  sub_1BB000888(v20, v16);
  sub_1BB0008F8(v16, v14, &qword_1EBC3B748, &qword_1BB01BBF8);
  v29 = type metadata accessor for IdentifierData(0);
  if ((*(*(v29 - 8) + 48))(v14, 1, v29) == 1)
  {
    sub_1BAFE2D64(v16, &qword_1EBC3B748, &qword_1BB01BBF8);
    sub_1BAFE2D64(v22, &qword_1EBC3B538, &unk_1BB01BC00);
    sub_1BAFE2D64(v14, &qword_1EBC3B748, &qword_1BB01BBF8);
  }

  else
  {
    v31 = v39;
    v30 = v40;
    v32 = v36;
    (*(v39 + 16))(v36, &v14[*(v29 + 20)], v40);
    sub_1BAFD9F70(v14);
    v33 = v37;
    (*(v31 + 32))(v37, v32, v30);
    v34 = v38;
    sub_1BB014388();
    sub_1BB000960();
    LOBYTE(v32) = sub_1BB014B08();
    v35 = *(v31 + 8);
    v35(v34, v30);
    v35(v33, v30);
    sub_1BAFE2D64(v16, &qword_1EBC3B748, &qword_1BB01BBF8);
    sub_1BAFE2D64(v22, &qword_1EBC3B538, &unk_1BB01BC00);
    if ((v32 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BB0007F8()
{
  sub_1BAFC6A68((v0 + 24));
  sub_1BAFC6A68((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1BB000888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B748, &qword_1BB01BBF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB0008F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BAFD86D0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BB000960()
{
  result = qword_1EDD4FF68;
  if (!qword_1EDD4FF68)
  {
    sub_1BB014398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4FF68);
  }

  return result;
}

unint64_t sub_1BB0009B8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1BFB07C90](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1BFB07C90](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL static PolicyRule.Audience.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t PolicyRule.Audience.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1BFB072F0](1);
  }

  return MEMORY[0x1BFB072F0](v1);
}

uint64_t PolicyRule.Audience.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BB0151B8();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1BFB072F0](1);
    v3 = v1;
  }

  MEMORY[0x1BFB072F0](v3);
  return sub_1BB0151F8();
}

uint64_t sub_1BB000B28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BB0151B8();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1BFB072F0](1);
    v3 = v1;
  }

  MEMORY[0x1BFB072F0](v3);
  return sub_1BB0151F8();
}

uint64_t sub_1BB000B88()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1BFB072F0](1);
  }

  return MEMORY[0x1BFB072F0](v1);
}

uint64_t sub_1BB000BD0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1BB0151B8();
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1BFB072F0](1);
  }

  MEMORY[0x1BFB072F0](v2);
  return sub_1BB0151F8();
}

BOOL sub_1BB000C30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL static PolicyRule.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9))
  {
    return (*(a2 + 9) & 1) != 0;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  else
  {
    return (*(a2 + 8) & 1) == 0 && *a1 == *a2;
  }
}

uint64_t PolicyRule.hash(into:)()
{
  if (*(v0 + 9))
  {
    v1 = 1;
  }

  else
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    MEMORY[0x1BFB072F0](0);
    v1 = 0;
    if ((v3 & 1) == 0)
    {
      MEMORY[0x1BFB072F0](1);
      v1 = v2;
    }
  }

  return MEMORY[0x1BFB072F0](v1);
}

uint64_t PolicyRule.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1BB0151B8();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x1BFB072F0](0);
    v4 = 0;
    if ((v2 & 1) == 0)
    {
      MEMORY[0x1BFB072F0](1);
      v4 = v1;
    }
  }

  MEMORY[0x1BFB072F0](v4);
  return sub_1BB0151F8();
}

uint64_t sub_1BB000DAC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1BB0151B8();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x1BFB072F0](0);
    v4 = 0;
    if ((v2 & 1) == 0)
    {
      MEMORY[0x1BFB072F0](1);
      v4 = v1;
    }
  }

  MEMORY[0x1BFB072F0](v4);
  return sub_1BB0151F8();
}

uint64_t sub_1BB000E30()
{
  if (*(v0 + 9))
  {
    v1 = 1;
  }

  else
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    MEMORY[0x1BFB072F0](0);
    v1 = 0;
    if ((v3 & 1) == 0)
    {
      MEMORY[0x1BFB072F0](1);
      v1 = v2;
    }
  }

  return MEMORY[0x1BFB072F0](v1);
}

uint64_t sub_1BB000E94(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  sub_1BB0151B8();
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    MEMORY[0x1BFB072F0](0);
    v5 = 0;
    if ((v3 & 1) == 0)
    {
      MEMORY[0x1BFB072F0](1);
      v5 = v2;
    }
  }

  MEMORY[0x1BFB072F0](v5);
  return sub_1BB0151F8();
}

unint64_t sub_1BB000F18()
{
  result = qword_1EBC3B750;
  if (!qword_1EBC3B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B750);
  }

  return result;
}

unint64_t sub_1BB000F70()
{
  result = qword_1EBC3B758;
  if (!qword_1EBC3B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B758);
  }

  return result;
}

uint64_t sub_1BB000FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 9);
  v4 = *(a2 + 9);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    if (*(a1 + 8))
    {
      if ((*(a2 + 8) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 8) & 1) != 0 || *a1 != *a2)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyRule(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PolicyRule(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1BB001064(uint64_t a1)
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

uint64_t initializeBufferWithCopyOfBuffer for PolicyRule.Audience(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PolicyRule.Audience(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PolicyRule.Audience(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1BB0010E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BB001110(uint64_t a1, uint64_t a2)
{
  sub_1BAFC6AB4(v2 + 2, v2[5]);
  v5 = sub_1BAFF16B4(a1, a2, v2[7]);
  if (v5 == 10)
  {
    v6 = sub_1BB014DA8();
    sub_1BAFC5D64();
    v7 = sub_1BB014E68();
    sub_1BAFD86D0(&qword_1EBC3B098, &qword_1BB018850);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BB0187E0;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1BAFD9D38();
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;

    sub_1BB0148B8(v6, &dword_1BAFC4000, v7, "[BucketIdDataBuilder] Updating bucketId linked anonymousSessionId: %@", 69, 2, v8);
  }

  else
  {
    v9 = v5;
    v10 = sub_1BB014DB8();
    sub_1BAFC5D64();
    v11 = sub_1BB014E68();
    sub_1BAFD86D0(&qword_1EBC3B098, &qword_1BB018850);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BB0187E0;
    v13 = sub_1BAFE5B44(v9);
    v15 = v14;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1BAFD9D38();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_1BB0148B8(v10, &dword_1BAFC4000, v11, "[BucketIdDataBuilder] Error, couldn't update anonymousSessionId: %@", 67, 2, v12);

    v21 = 6;
    v16 = sub_1BAFE5B44(v9);
    v18 = v17;
    v19.value._countAndFlagsBits = v16;
    v19.value._object = v18;
    idmanagerError(errorType:description:)(&v21, v19);
  }
}

uint64_t sub_1BB001350()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BB0013AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1BAFC6AB4(a3, a3[3]);

  return sub_1BB001408(a1, a2, v5);
}

uint64_t sub_1BB001408(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1BB014398();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &type metadata for RotatingIdentifierTelemetryDelivery;
  v37 = &off_1F390D430;
  v35[0] = a3;
  v10 = type metadata accessor for IdentifierData(0);
  v11 = *(v10 + 36);
  v12 = (a1 + v11);
  if (*(a1 + v11 + 32) == 2 && (v13 = (a2 + v11), *(a2 + v11 + 32) == 2))
  {
    v14 = v13[1];
    v15 = v13[2];
    if (v12[1] != v14 || v12[2] != v15)
    {
      v17 = *v12;
      v18 = *v13;
      v34 = v10;
      if ((sub_1BB015118() & 1) == 0)
      {
        if (v17 == v18)
        {
          v24 = a3;
          sub_1BB014388();
          v25 = sub_1BB014348();
          (*(v7 + 8))(v9, v6);
          if (v25)
          {
            sub_1BB001110(v14, v15);
            goto LABEL_10;
          }

          v33 = *sub_1BAFC6AB4(v35, v36);
          v31 = a1 + *(v34 + 24);
          v32 = 0;
        }

        else
        {
          v26 = v34;
          v27 = sub_1BAFC6AB4(v35, &type metadata for RotatingIdentifierTelemetryDelivery);
          v28 = *(v26 + 24);
          v29 = *v27;
          v30 = a3;
          v31 = a1 + v28;
          v32 = 4;
          v33 = v29;
        }

        sub_1BAFF3160(2, v32, v31, v33);
        v22 = 1;
        goto LABEL_11;
      }
    }

    v19 = a3;
  }

  else
  {
    v20 = a3;
    v21 = sub_1BB014B38();
    APSimulateCrash();
  }

LABEL_10:
  v22 = 0;
LABEL_11:
  sub_1BAFC6A68(v35);
  return v22;
}

uint64_t PolicyRuleEligibility.IneligibleReason.FailCloseReason.MissingData.hashValue.getter()
{
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](0);
  return sub_1BB0151F8();
}

uint64_t PolicyRuleEligibility.IneligibleReason.Audience.hashValue.getter()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

BOOL static PolicyRuleEligibility.IneligibleReason.== infix(_:_:)(char *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((*a1 & 0x80000000) == 0)
  {
    return (v2 & 0x80) == 0;
  }

  if ((v2 & 0x80) == 0)
  {
    return 0;
  }

  return ((v2 ^ *a1) & 1) == 0;
}

BOOL sub_1BB0017E8(char *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((*a1 & 0x80000000) == 0)
  {
    return (v2 & 0x80) == 0;
  }

  if ((v2 & 0x80) == 0)
  {
    return 0;
  }

  return ((v2 ^ *a1) & 1) == 0;
}

BOOL static PolicyRuleEligibility.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >= 0xFE)
  {
    return v3 > 0xFD;
  }

  if (v3 > 0xFD)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && ((v3 ^ v2) & 1) == 0;
  }

  else
  {
    return (v3 & 0x80) == 0;
  }
}

unint64_t sub_1BB001878()
{
  result = qword_1EBC3B760;
  if (!qword_1EBC3B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B760);
  }

  return result;
}

unint64_t sub_1BB0018D0()
{
  result = qword_1EBC3B768;
  if (!qword_1EBC3B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B768);
  }

  return result;
}

BOOL sub_1BB001924(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >= 0xFE)
  {
    return v3 > 0xFD;
  }

  if (v3 > 0xFD)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && ((v3 ^ v2) & 1) == 0;
  }

  return (v3 & 0x80) == 0;
}

uint64_t getEnumTagSinglePayload for PolicyRuleEligibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_20;
  }

  v2 = a2 + 130;
  if (a2 + 130 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 130;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 130;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 130;
    }
  }

LABEL_20:
  v7 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v7 >= 0x7E)
  {
    v7 = -1;
  }

  if (v7 + 1 >= 2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PolicyRuleEligibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 130;
  if (a3 + 130 >= 0xFFFF00)
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

  if (a3 < 0x7E)
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BB001AD8(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BB001AF8(_BYTE *result, unsigned int a2)
{
  if (a2 > 0x7E)
  {
    LOBYTE(v2) = a2 - 127;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PolicyRuleEligibility.IneligibleReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PolicyRuleEligibility.IneligibleReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BB001CE8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB001D44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = OBJC_IVAR___APRotatingIdentifier_expirationDate;
    swift_beginAccess();
    v5 = sub_1BB014398();
    return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  }

  else
  {
    v7 = 4;
    idmanagerError(errorType:description:)(&v7, 0);

    return sub_1BB014388();
  }
}

unint64_t sub_1BB001E3C()
{
  v1 = *v0;
  v2 = 0x30506163646FLL;
  v3 = 0x3356706C73;
  if (v1 != 5)
  {
    v3 = 0x4B41417377656ELL;
  }

  v4 = 0x317530506163646FLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x31506163646FLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BB001F18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BB003F50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BB001F4C(uint64_t a1)
{
  v2 = sub_1BB002A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB001F88(uint64_t a1)
{
  v2 = sub_1BB002A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB001FD0(uint64_t a1)
{
  v2 = sub_1BB002A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB00200C(uint64_t a1)
{
  v2 = sub_1BB002A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB002048(uint64_t a1)
{
  v2 = sub_1BB002C0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB002084(uint64_t a1)
{
  v2 = sub_1BB002C0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB0020C0(uint64_t a1)
{
  v2 = sub_1BB002B64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB0020FC(uint64_t a1)
{
  v2 = sub_1BB002B64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB002138(uint64_t a1)
{
  v2 = sub_1BB002BB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB002174(uint64_t a1)
{
  v2 = sub_1BB002BB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB0021B0(uint64_t a1)
{
  v2 = sub_1BB002C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB0021EC(uint64_t a1)
{
  v2 = sub_1BB002C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB002228(uint64_t a1)
{
  v2 = sub_1BB002ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB002264(uint64_t a1)
{
  v2 = sub_1BB002ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB0022A0(uint64_t a1)
{
  v2 = sub_1BB002B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB0022DC(uint64_t a1)
{
  v2 = sub_1BB002B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AdFeature.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BAFD86D0(&qword_1EBC3B770, &qword_1BB01BF90);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v38 - v5;
  v6 = sub_1BAFD86D0(&qword_1EBC3B778, &qword_1BB01BF98);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v38 - v7;
  v8 = sub_1BAFD86D0(&qword_1EBC3B780, &qword_1BB01BFA0);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = sub_1BAFD86D0(&qword_1EBC3B788, &qword_1BB01BFA8);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v11;
  v39 = sub_1BAFD86D0(&qword_1EBC3B790, &qword_1BB01BFB0);
  v55 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v54 = &v38 - v12;
  v38 = sub_1BAFD86D0(&qword_1EBC3B798, &qword_1BB01BFB8);
  v53 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v38 - v13;
  v15 = sub_1BAFD86D0(&qword_1EBC3B7A0, &qword_1BB01BFC0);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v57 = sub_1BAFD86D0(&qword_1EBC3B7A8, &qword_1BB01BFC8);
  v18 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v20 = &v38 - v19;
  v21 = *v2;
  sub_1BAFC6AB4(a1, a1[3]);
  sub_1BB002A14();
  v56 = v20;
  sub_1BB015228();
  v22 = (v18 + 8);
  if (v21 <= 2)
  {
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    if (v21)
    {
      if (v21 == 1)
      {
        v59 = 1;
        sub_1BB002C0C();
        v33 = v56;
        v32 = v57;
        sub_1BB0150A8();
        (*(v29 + 8))(v14, v38);
      }

      else
      {
        v60 = 2;
        sub_1BB002BB8();
        v37 = v30;
        v33 = v56;
        v32 = v57;
        sub_1BB0150A8();
        (*(v31 + 8))(v37, v39);
      }

      return (*v22)(v33, v32);
    }

    else
    {
      v58 = 0;
      sub_1BB002C60();
      v34 = v56;
      v35 = v57;
      sub_1BB0150A8();
      (*(v28 + 8))(v17, v15);
      return (*v22)(v34, v35);
    }
  }

  else
  {
    if (v21 > 4)
    {
      if (v21 == 5)
      {
        v63 = 5;
        sub_1BB002ABC();
        v23 = v46;
        v24 = v56;
        v25 = v57;
        sub_1BB0150A8();
        v27 = v47;
        v26 = v48;
      }

      else
      {
        v64 = 6;
        sub_1BB002A68();
        v23 = v49;
        v24 = v56;
        v25 = v57;
        sub_1BB0150A8();
        v27 = v50;
        v26 = v51;
      }
    }

    else if (v21 == 3)
    {
      v61 = 3;
      sub_1BB002B64();
      v23 = v40;
      v24 = v56;
      v25 = v57;
      sub_1BB0150A8();
      v27 = v41;
      v26 = v42;
    }

    else
    {
      v62 = 4;
      sub_1BB002B10();
      v23 = v43;
      v24 = v56;
      v25 = v57;
      sub_1BB0150A8();
      v27 = v44;
      v26 = v45;
    }

    (*(v27 + 8))(v23, v26);
    return (*v22)(v24, v25);
  }
}

unint64_t sub_1BB002A14()
{
  result = qword_1EBC3B7B0;
  if (!qword_1EBC3B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7B0);
  }

  return result;
}

unint64_t sub_1BB002A68()
{
  result = qword_1EBC3B7B8;
  if (!qword_1EBC3B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7B8);
  }

  return result;
}

unint64_t sub_1BB002ABC()
{
  result = qword_1EBC3B7C0;
  if (!qword_1EBC3B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7C0);
  }

  return result;
}

unint64_t sub_1BB002B10()
{
  result = qword_1EBC3B7C8;
  if (!qword_1EBC3B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7C8);
  }

  return result;
}

unint64_t sub_1BB002B64()
{
  result = qword_1EBC3B7D0;
  if (!qword_1EBC3B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7D0);
  }

  return result;
}

unint64_t sub_1BB002BB8()
{
  result = qword_1EBC3B7D8;
  if (!qword_1EBC3B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7D8);
  }

  return result;
}

unint64_t sub_1BB002C0C()
{
  result = qword_1EBC3B7E0;
  if (!qword_1EBC3B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7E0);
  }

  return result;
}

unint64_t sub_1BB002C60()
{
  result = qword_1EBC3B7E8;
  if (!qword_1EBC3B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7E8);
  }

  return result;
}

uint64_t AdFeature.hashValue.getter()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

uint64_t AdFeature.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v69 = a2;
  v3 = sub_1BAFD86D0(&qword_1EBC3B7F0, &qword_1BB01BFD0);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v49[-v4];
  v5 = sub_1BAFD86D0(&qword_1EBC3B7F8, &qword_1BB01BFD8);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v49[-v6];
  v7 = sub_1BAFD86D0(&qword_1EBC3B800, &qword_1BB01BFE0);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v49[-v9];
  v10 = sub_1BAFD86D0(&qword_1EBC3B808, &qword_1BB01BFE8);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v49[-v12];
  v13 = sub_1BAFD86D0(&qword_1EBC3B810, &qword_1BB01BFF0);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v49[-v14];
  v15 = sub_1BAFD86D0(&qword_1EBC3B818, &qword_1BB01BFF8);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49[-v16];
  v18 = sub_1BAFD86D0(&qword_1EBC3B820, &qword_1BB01C000);
  v53 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49[-v19];
  v21 = sub_1BAFD86D0(&qword_1EBC3B828, &qword_1BB01C008);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49[-v23];
  v25 = a1[3];
  v72 = a1;
  sub_1BAFC6AB4(a1, v25);
  sub_1BB002A14();
  v26 = v73;
  sub_1BB015218();
  if (!v26)
  {
    v51 = v18;
    v27 = v70;
    v28 = v71;
    v52 = v22;
    v73 = v21;
    v29 = sub_1BB015098();
    if (*(v29 + 16) == 1)
    {
      v30 = *(v29 + 32);
      if (v30 != 7)
      {
        v50 = *(v29 + 32);
        if (v30 > 2)
        {
          if (v30 > 4)
          {
            v31 = v30 == 5;
            v32 = v69;
            v41 = v73;
            if (v31)
            {
              v79 = 5;
              sub_1BB002ABC();
              sub_1BB015048();
              v46 = v52;
              (*(v62 + 8))(v28, v63);
            }

            else
            {
              v80 = 6;
              sub_1BB002A68();
              v45 = v68;
              sub_1BB015048();
              v46 = v52;
              (*(v64 + 8))(v45, v65);
            }

            (*(v46 + 8))(v24, v41);
          }

          else
          {
            v31 = v30 == 3;
            v32 = v69;
            v33 = v73;
            if (v31)
            {
              v77 = 3;
              sub_1BB002B64();
              v34 = v66;
              sub_1BB015048();
              v44 = v52;
              (*(v59 + 8))(v34, v58);
            }

            else
            {
              v78 = 4;
              sub_1BB002B10();
              v43 = v67;
              sub_1BB015048();
              v44 = v52;
              (*(v61 + 8))(v43, v60);
            }

            (*(v44 + 8))(v24, v33);
          }

          swift_unknownObjectRelease();
          v47 = v72;
          goto LABEL_25;
        }

        if (v30)
        {
          if (v30 == 1)
          {
            v75 = 1;
            sub_1BB002C0C();
            v39 = v24;
            v40 = v73;
            sub_1BB015048();
            (*(v54 + 8))(v17, v55);
            (*(v52 + 8))(v39, v40);
LABEL_21:
            swift_unknownObjectRelease();
            v47 = v72;
            v32 = v69;
LABEL_25:
            *v32 = v50;
            return sub_1BAFC6A68(v47);
          }

          v76 = 2;
          sub_1BB002BB8();
          v42 = v73;
          sub_1BB015048();
          (*(v56 + 8))(v27, v57);
        }

        else
        {
          v74 = 0;
          sub_1BB002C60();
          v42 = v73;
          sub_1BB015048();
          (*(v53 + 8))(v20, v51);
        }

        (*(v52 + 8))(v24, v42);
        goto LABEL_21;
      }
    }

    v35 = sub_1BB014F98();
    swift_allocError();
    v37 = v36;
    sub_1BAFD86D0(&qword_1EBC3B830, &qword_1BB01C010);
    *v37 = &type metadata for AdFeature;
    v38 = v73;
    sub_1BB015058();
    sub_1BB014F88();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v52 + 8))(v24, v38);
    swift_unknownObjectRelease();
  }

  v47 = v72;
  return sub_1BAFC6A68(v47);
}

unint64_t sub_1BB0036BC()
{
  result = qword_1EBC3B838;
  if (!qword_1EBC3B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B838);
  }

  return result;
}

unint64_t sub_1BB003744()
{
  result = qword_1EBC3B840;
  if (!qword_1EBC3B840)
  {
    sub_1BAFD9DF0(&qword_1EBC3B848, &qword_1BB01C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B840);
  }

  return result;
}

uint64_t sub_1BB0037B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BB003848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BB00397C()
{
  result = qword_1EBC3B850;
  if (!qword_1EBC3B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B850);
  }

  return result;
}

unint64_t sub_1BB0039D4()
{
  result = qword_1EBC3B858;
  if (!qword_1EBC3B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B858);
  }

  return result;
}

unint64_t sub_1BB003A2C()
{
  result = qword_1EBC3B860;
  if (!qword_1EBC3B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B860);
  }

  return result;
}

unint64_t sub_1BB003A84()
{
  result = qword_1EBC3B868;
  if (!qword_1EBC3B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B868);
  }

  return result;
}

unint64_t sub_1BB003ADC()
{
  result = qword_1EBC3B870;
  if (!qword_1EBC3B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B870);
  }

  return result;
}

unint64_t sub_1BB003B34()
{
  result = qword_1EBC3B878;
  if (!qword_1EBC3B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B878);
  }

  return result;
}

unint64_t sub_1BB003B8C()
{
  result = qword_1EBC3B880;
  if (!qword_1EBC3B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B880);
  }

  return result;
}

unint64_t sub_1BB003BE4()
{
  result = qword_1EBC3B888;
  if (!qword_1EBC3B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B888);
  }

  return result;
}

unint64_t sub_1BB003C3C()
{
  result = qword_1EBC3B890;
  if (!qword_1EBC3B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B890);
  }

  return result;
}

unint64_t sub_1BB003C94()
{
  result = qword_1EBC3B898;
  if (!qword_1EBC3B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B898);
  }

  return result;
}

unint64_t sub_1BB003CEC()
{
  result = qword_1EBC3B8A0;
  if (!qword_1EBC3B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8A0);
  }

  return result;
}

unint64_t sub_1BB003D44()
{
  result = qword_1EBC3B8A8;
  if (!qword_1EBC3B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8A8);
  }

  return result;
}

unint64_t sub_1BB003D9C()
{
  result = qword_1EBC3B8B0;
  if (!qword_1EBC3B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8B0);
  }

  return result;
}

unint64_t sub_1BB003DF4()
{
  result = qword_1EBC3B8B8;
  if (!qword_1EBC3B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8B8);
  }

  return result;
}

unint64_t sub_1BB003E4C()
{
  result = qword_1EBC3B8C0;
  if (!qword_1EBC3B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8C0);
  }

  return result;
}

unint64_t sub_1BB003EA4()
{
  result = qword_1EBC3B8C8;
  if (!qword_1EBC3B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8C8);
  }

  return result;
}

unint64_t sub_1BB003EFC()
{
  result = qword_1EBC3B8D0;
  if (!qword_1EBC3B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8D0);
  }

  return result;
}

uint64_t sub_1BB003F50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001BB0217D0 == a2 || (sub_1BB015118() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x30506163646FLL && a2 == 0xE600000000000000 || (sub_1BB015118() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x31506163646FLL && a2 == 0xE600000000000000 || (sub_1BB015118() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x317530506163646FLL && a2 == 0xE800000000000000 || (sub_1BB015118() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001BB0204F0 == a2 || (sub_1BB015118() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x3356706C73 && a2 == 0xE500000000000000 || (sub_1BB015118() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4B41417377656ELL && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v5 = sub_1BB015118();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

AdPlatformsCommon::StorefrontID_optional __swiftcall StorefrontID.init(value:)(Swift::String value)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1BB014248();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BB014BE8() == 6 && (sub_1BB0144C8(), v9 = sub_1BB014BA8(), (*(v6 + 8))(v8, v5), (v9 & 1) != 0) && (v10 = sub_1BB014C18(), (v10 & 1) != 0))
  {
    *v4 = countAndFlagsBits;
    v4[1] = object;
  }

  else
  {

    *v4 = 0;
    v4[1] = 0;
  }

  result.value.value._object = v11;
  result.value.value._countAndFlagsBits = v10;
  result.is_nil = v12;
  return result;
}

uint64_t StorefrontID.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static StorefrontID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BB015118();
  }
}

uint64_t StorefrontID.hashValue.getter()
{
  sub_1BB0151B8();
  sub_1BB014BD8();
  return sub_1BB0151F8();
}

uint64_t sub_1BB0043A4()
{
  sub_1BB0151B8();
  sub_1BB014BD8();
  return sub_1BB0151F8();
}

uint64_t sub_1BB0043F8(uint64_t a1)
{
  sub_1BB0151B8();
  sub_1BB014BD8();
  return sub_1BB0151F8();
}

unint64_t sub_1BB004444()
{
  result = qword_1EBC3B8D8;
  if (!qword_1EBC3B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8D8);
  }

  return result;
}

uint64_t sub_1BB004498(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BB015118();
  }
}

uint64_t sub_1BB004514()
{
  v0 = sub_1BB0149A8();
  sub_1BAFFF6EC(v0, qword_1EDD51B20);
  sub_1BAFE833C(v0, qword_1EDD51B20);
  return sub_1BB014998();
}

uint64_t StorefrontTerritorySource.__allocating_init(storefrontIDSource:converter:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1BAFC6D0C(a1, v4 + 16);
  sub_1BAFC6D0C(a2, v4 + 56);
  return v4;
}

uint64_t StorefrontTerritorySource.init(storefrontIDSource:converter:)(__int128 *a1, __int128 *a2)
{
  sub_1BAFC6D0C(a1, v2 + 16);
  sub_1BAFC6D0C(a2, v2 + 56);
  return v2;
}

uint64_t StorefrontTerritorySource.territory()@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - v3;
  v4 = sub_1BB0144A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = sub_1BAFD86D0(&qword_1EBC3B420, &qword_1BB019E00);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v17 = v1[5];
  v16 = v1[6];
  sub_1BAFC6AB4(v1 + 2, v17);
  (*(v16 + 8))(v35, v17, v16);
  v18 = v35[0];
  v19 = v35[1];
  sub_1BAFC6DB4((v1 + 7), v32);
  if (v19)
  {
    v20 = v33;
    v21 = v34;
    sub_1BAFC6AB4(v32, v33);
    v31[0] = v18;
    v31[1] = v19;
    (*(v21 + 8))(v31, v20, v21);
  }

  else
  {
    (*(v5 + 56))(v15, 1, 1, v4);
  }

  sub_1BAFC6A68(v32);
  sub_1BAFE9540(v15, v13);
  v22 = 1;
  v23 = (*(v5 + 48))(v13, 1, v4);
  v24 = v30;
  if (v23 != 1)
  {
    (*(v5 + 32))(v9, v13, v4);
    (*(v5 + 16))(v28, v9, v4);
    v25 = sub_1BB014648();
    (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
    sub_1BB014788();
    (*(v5 + 8))(v9, v4);
    v22 = 0;
  }

  sub_1BAFE95B0(v15);
  v26 = sub_1BB0147A8();
  return (*(*(v26 - 8) + 56))(v24, v22, 1, v26);
}

uint64_t StorefrontTerritorySource.deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));
  return v0;
}

uint64_t StorefrontTerritorySource.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t *OverrideFeatureAbilitySource.__allocating_init(wrapping:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1BAFD7BD4(a1, v3);
  v6 = sub_1BB004DA4(v5, v1, v3, v4);
  sub_1BAFC6A68(a1);
  return v6;
}

void *OverrideFeatureAbilitySource.init(wrapping:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1BAFD7BD4(a1, v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_1BB004D34(v7, v1, v3, v4);
  sub_1BAFC6A68(a1);
  return v9;
}

uint64_t OverrideFeatureAbilitySource.abilityFor(name:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  sub_1BAFC6AB4(v2 + 2, v5);
  MEMORY[0x1BFB06D20](a1, a2);
  v7 = (*(v6 + 8))(0x656469727265766FLL, 0xE90000000000005FLL, v5, v6);

  return v7;
}

uint64_t OverrideFeatureAbilitySource.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_1BB004D34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  v7 = sub_1BAFD87F0(a2 + 2);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  return a2;
}

uint64_t *sub_1BB004DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  v11 = sub_1BAFD87F0(v10 + 2);
  (*(v7 + 32))(v11, v9, a3);
  return v10;
}

uint64_t EventCollectionFeatureFlags.hashValue.getter()
{
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](0);
  return sub_1BB0151F8();
}

unint64_t sub_1BB004F88()
{
  result = qword_1EBC3B8E0;
  if (!qword_1EBC3B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8E0);
  }

  return result;
}

uint64_t PCDBackingStore.__allocating_init(database:accountProvider:featureFlags:)(void *a1, void *a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1BB006B24(a1, a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t PCDBackingStore.init(database:accountProvider:featureFlags:)(void *a1, void *a2, void *a3)
{
  v4 = sub_1BB006B24(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t PCDBackingStore.getIdentifiers(type:source:processId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BB014398();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 72) != 1)
  {
    sub_1BAFD86D0(&qword_1EBC3B8E8, &qword_1BB01CA80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BB01CA60;
    sub_1BB014388();
    v18 = type metadata accessor for RotatingIdentifier(0);
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR___APRotatingIdentifier_value];
    *v20 = 12845;
    *(v20 + 1) = 0xE200000000000000;
    *&v19[OBJC_IVAR___APRotatingIdentifier_type] = a1;
    *&v19[OBJC_IVAR___APRotatingIdentifier_source] = a2;
    (*(v10 + 16))(&v19[OBJC_IVAR___APRotatingIdentifier_expirationDate], v12, v9);
    v21 = &v19[OBJC_IVAR___APRotatingIdentifier_processId];
    *v21 = a3;
    *(v21 + 1) = a4;
    v32.receiver = v19;
    v32.super_class = v18;

    v22 = objc_msgSendSuper2(&v32, sel_init);
    (*(v10 + 8))(v12, v9);
    result = v17;
    *(v17 + 32) = v22;
    return result;
  }

  v14 = *(v4 + 16);
  v13 = *(v4 + 24);
  v31[3] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v31[4] = &off_1F390D430;
  v31[0] = v14;
  if (a1 == 2)
  {
    v24 = *sub_1BAFC6AB4(v31, &type metadata for RotatingIdentifierTelemetryDelivery);
    v25 = v14;
    sub_1BB006438(a2, a3, a4, v13, v4 + 32, v24);
  }

  else if (a1 == 1)
  {
    v15 = *sub_1BAFC6AB4(v31, &type metadata for RotatingIdentifierTelemetryDelivery);
    v16 = v14;
    sub_1BB005E24(a2, a3, a4, v13, v4 + 32, v15);
  }

  else
  {
    if (a1)
    {
      v30 = a1;
      v29 = v14;
      result = sub_1BB015138();
      __break(1u);
      return result;
    }

    v26 = *sub_1BAFC6AB4(v31, &type metadata for RotatingIdentifierTelemetryDelivery);
    v27 = v14;
    sub_1BB005928(a2, a3, a4, v13, v4 + 32, v26);
  }

  sub_1BAFC6A68(v31);
  v28 = sub_1BAFD8A44();

  return v28;
}

uint64_t PCDBackingStore.deinit()
{

  sub_1BAFC6A68((v0 + 32));
  return v0;
}

uint64_t PCDBackingStore.__deallocating_deinit()
{

  sub_1BAFC6A68((v0 + 32));

  return swift_deallocClassInstance();
}

void *sub_1BB005438(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for IdentifierNodeFetcher();
  v20[3] = v8;
  v20[4] = &off_1F390C278;
  v20[0] = a1;
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187D0;
  *(inited + 32) = 5002324;
  v10 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a3;
  *(inited + 72) = v10;
  *(inited + 80) = 0x73656372756F73;
  *(inited + 88) = 0xE700000000000000;
  v11 = sub_1BAFD86D0(&qword_1EBC3B0C8, &qword_1BB01ACC0);
  *(inited + 96) = a4;
  *(inited + 120) = v11;
  *(inited + 128) = 0x63617073656D616ELL;
  *(inited + 168) = MEMORY[0x1E69E6158];
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = 0x45524F5453505041;
  *(inited + 152) = 0xE800000000000000;
  v12 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  a2[7] = v12;
  v13 = sub_1BAFD7BD4(v20, v8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 168);
  (*(v16 + 16))(v15);
  v17 = *v15;
  a2[5] = v8;
  a2[6] = &off_1F390C278;
  a2[2] = v17;
  sub_1BAFC6A68(v20);
  return a2;
}

void *sub_1BB00564C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for IdentifierNodeFetcher();
  v18[3] = v4;
  v18[4] = &off_1F390C278;
  v18[0] = a1;
  a2[7] = &unk_1F390BB70;
  sub_1BAFD86D0(&qword_1EBC3B8F0, &qword_1BB01CAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187E0;
  *(inited + 32) = 0x45524F5453505041;
  *(inited + 40) = 0xE800000000000000;
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1BB01CA70;
  *(v6 + 32) = 0x69746172656E6567;
  v7 = MEMORY[0x1E69E6530];
  *(v6 + 40) = 0xEA00000000006E6FLL;
  *(v6 + 48) = 1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x615274656B637562;
  *(v6 + 88) = 0xEB0000000065676ELL;
  *(v6 + 96) = 25600;
  *(v6 + 120) = v7;
  *(v6 + 128) = 0x73656372756F73;
  *(v6 + 136) = 0xE700000000000000;
  v8 = sub_1BAFD86D0(&qword_1EBC3B0C8, &qword_1BB01ACC0);
  *(v6 + 144) = &unk_1F390BBA8;
  *(v6 + 168) = v8;
  *(v6 + 176) = 0x4C545478616DLL;
  *(v6 + 184) = 0xE600000000000000;
  *(v6 + 192) = 31536000;
  *(v6 + 216) = v7;
  *(v6 + 224) = 0x776F6C6C4178616DLL;
  *(v6 + 264) = v7;
  *(v6 + 232) = 0xEF65756C61566465;
  *(v6 + 240) = 20;
  v9 = sub_1BB0136E4(v6);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  *(inited + 48) = v9;
  v10 = sub_1BB013DC0(inited);
  swift_setDeallocating();
  sub_1BB006E78(inited + 32);
  a2[8] = v10;
  v11 = sub_1BAFD7BD4(v18, v4);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 312);
  (*(v14 + 16))(v13);
  v15 = *v13;
  a2[5] = v4;
  a2[6] = &off_1F390C278;
  a2[2] = v15;
  sub_1BAFC6A68(v18);
  return a2;
}

void *sub_1BB005928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v45 = a4;
  v46 = a1;
  v41 = a2;
  v65[3] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v65[4] = &off_1F390D430;
  v65[0] = a6;
  v44 = type metadata accessor for AnonymousSessionIdRotation();
  v43 = swift_allocObject();
  v10 = type metadata accessor for AnonymousSessionIdCacheTTL();
  v42 = swift_allocObject();
  v63 = type metadata accessor for IdentifierNodeFetcher();
  v64 = &off_1F390C278;
  *&v62 = swift_allocObject();
  v11 = type metadata accessor for AnonymousSessionIdDatasource();
  v12 = swift_allocObject();
  v13 = sub_1BAFD7BD4(&v62, v63);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = a6;
  v19 = sub_1BB005438(v17, v12, 900, &unk_1F390BB10);
  sub_1BAFC6A68(&v62);
  v63 = v11;
  v64 = &off_1F390D5E8;
  *&v62 = v19;
  sub_1BAFC6DB4(a5, &v59);
  v20 = type metadata accessor for AnonymousSessionIdDataBuilder();
  v21 = swift_allocObject();
  sub_1BAFC6D0C(&v62, v21 + 16);
  *(v21 + 56) = a2;
  *(v21 + 64) = a3;
  sub_1BAFC6D0C(&v59, v21 + 72);
  sub_1BAFC6DB4(v65, &v62);
  v22 = sub_1BAFD7BD4(&v62, v63);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v27 = type metadata accessor for IdentifierDataStore();
  v60 = v27;
  v61 = &off_1F390D328;
  *&v59 = v45;
  v58 = &off_1F390D5F8;
  v57 = v44;
  v55 = &off_1F390D608;
  *&v56 = v43;
  v54 = v10;
  *&v53 = v42;
  v51 = v20;
  v52 = &off_1F390D618;
  *&v50 = v21;
  v49 = &off_1F390D430;
  v48 = &type metadata for RotatingIdentifierTelemetryDelivery;
  v47[0] = v26;
  type metadata accessor for IdentifierBuilder();
  v28 = swift_allocObject();
  v29 = sub_1BAFD7BD4(&v59, v27);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = sub_1BAFD7BD4(v47, v48);
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v41 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v31;
  v38 = *v35;
  v28[9] = v27;
  v28[10] = &off_1F390D328;
  v28[5] = a3;
  v28[6] = v37;
  v28[29] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v28[30] = &off_1F390D430;
  v28[26] = v38;
  v39 = v46;
  v28[2] = 0;
  v28[3] = v39;
  v28[4] = v41;
  sub_1BAFC6D0C(&v56, (v28 + 11));
  sub_1BAFC6D0C(&v53, (v28 + 16));
  sub_1BAFC6D0C(&v50, (v28 + 21));
  swift_bridgeObjectRetain_n();

  sub_1BAFC6A68(v47);
  sub_1BAFC6A68(&v59);
  sub_1BAFC6A68(&v62);
  sub_1BAFC6A68(v65);
  return v28;
}

void *sub_1BB005E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v51 = a4;
  v52 = a1;
  v53 = a2;
  v54 = a3;
  v73[3] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v73[4] = &off_1F390D430;
  v73[0] = a6;
  v8 = type metadata accessor for RotatedAnonymousIdRotation();
  v50 = swift_allocObject();
  v9 = type metadata accessor for RotatedAnonymousIdCacheTTL();
  v49 = swift_allocObject();
  v71 = type metadata accessor for IdentifierNodeFetcher();
  v72 = &off_1F390C278;
  *&v70 = swift_allocObject();
  v10 = type metadata accessor for RotatedAnonymousIdDatasource();
  v11 = swift_allocObject();
  v12 = sub_1BAFD7BD4(&v70, v71);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v17 = a6;
  v18 = sub_1BB005438(v16, v11, 1209600, &unk_1F390BB40);
  sub_1BAFC6A68(&v70);
  sub_1BAFC6DB4(a5, &v70);
  v68 = v10;
  v69 = &off_1F390D490;
  *&v67 = v18;
  v65 = &type metadata for PAStatusProvider;
  v66 = &off_1F390CFF0;
  v19 = swift_allocObject();
  *&v64 = v19;
  v19[2] = 0xD000000000000018;
  v19[3] = 0x80000001BB021980;
  v19[4] = 0xD000000000000015;
  v19[5] = 0x80000001BB0219A0;
  v20 = type metadata accessor for RotatedAnonymousIdDataBuilder();
  v21 = swift_allocObject();
  v22 = sub_1BAFD7BD4(&v64, &type metadata for PAStatusProvider);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v48 = *v24;
  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  v21[15] = &type metadata for PAStatusProvider;
  v21[16] = &off_1F390CFF0;
  v28 = swift_allocObject();
  v21[12] = v28;
  *(v28 + 16) = v48;
  *(v28 + 32) = v27;
  *(v28 + 40) = v26;
  sub_1BAFC6D0C(&v67, (v21 + 2));
  sub_1BAFC6D0C(&v70, (v21 + 7));
  sub_1BAFC6A68(&v64);
  sub_1BAFC6DB4(v73, &v70);
  v29 = sub_1BAFD7BD4(&v70, v71);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;
  v34 = type metadata accessor for IdentifierDataStore();
  v68 = v34;
  v69 = &off_1F390D328;
  *&v67 = v51;
  v66 = &off_1F390C2C8;
  v65 = v8;
  v63 = &off_1F390C2A8;
  *&v64 = v50;
  v62 = v9;
  *&v61 = v49;
  v59 = v20;
  v60 = &off_1F390C298;
  *&v58 = v21;
  v57 = &off_1F390D430;
  v56 = &type metadata for RotatingIdentifierTelemetryDelivery;
  v55[0] = v33;
  type metadata accessor for IdentifierBuilder();
  v35 = swift_allocObject();
  v36 = sub_1BAFD7BD4(&v67, v34);
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v48 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = sub_1BAFD7BD4(v55, v56);
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v48 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v38;
  v45 = *v42;
  v35[9] = v34;
  v35[10] = &off_1F390D328;
  v35[29] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v35[30] = &off_1F390D430;
  v35[26] = v45;
  v35[2] = 1;
  v46 = v53;
  v35[3] = v52;
  v35[4] = v46;
  v35[5] = v54;
  v35[6] = v44;
  sub_1BAFC6D0C(&v64, (v35 + 11));
  sub_1BAFC6D0C(&v61, (v35 + 16));
  sub_1BAFC6D0C(&v58, (v35 + 21));

  sub_1BAFC6A68(v55);
  sub_1BAFC6A68(&v67);
  sub_1BAFC6A68(&v70);
  sub_1BAFC6A68(v73);
  return v35;
}

unint64_t sub_1BB006438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v93[3] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v93[4] = &off_1F390D430;
  v93[0] = a6;
  v12 = *sub_1BAFC6AB4(v93, &type metadata for RotatingIdentifierTelemetryDelivery);
  v13 = a6;
  v14 = sub_1BB005928(a1, a2, a3, a4, a5, v12);
  result = sub_1BAFD8A44();
  if (result >> 62)
  {
    v61 = result;
    v16 = sub_1BB015008();
    result = v61;
  }

  else
  {
    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = a2;
  v69 = a3;
  v67 = v14;
  if (!v16)
  {

    v18 = 0;
    goto LABEL_9;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1BFB070A0](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(result + 32);
LABEL_7:
    v18 = v17;

LABEL_9:
    v19 = type metadata accessor for IdentifierDataStore();
    v91 = v19;
    v92 = &off_1F390D328;
    *&v90 = a4;
    v65 = type metadata accessor for BucketIdRotation();
    v70 = a4;
    v20 = swift_allocObject();
    v21 = sub_1BAFD7BD4(&v90, v19);
    v74 = *(*(v19 - 8) + 64);
    MEMORY[0x1EEE9AC00](v21);
    v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = *(v24 + 16);
    v71 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
    v72 = v25;
    v73 = v24 + 16;
    v25(v23);
    v26 = *v23;
    v20[5] = v19;
    v20[6] = &off_1F390D328;
    v20[2] = v26;
    v20[7] = a1;

    sub_1BAFC6A68(&v90);
    v64 = type metadata accessor for BucketIdCacheTTL();
    v63 = swift_allocObject();
    *(v63 + 16) = v18;
    v27 = type metadata accessor for IdentifierNodeFetcher();
    v66 = a1;
    v28 = v27;
    v29 = swift_allocObject();
    v91 = v28;
    v92 = &off_1F390C278;
    *&v90 = v29;
    v30 = type metadata accessor for BucketIdDatasource();
    v31 = swift_allocObject();
    v32 = sub_1BAFD7BD4(&v90, v28);
    MEMORY[0x1EEE9AC00](v32);
    v34 = (v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v36 = *v34;
    v37 = v18;
    v38 = sub_1BB00564C(v36, v31);
    sub_1BAFC6A68(&v90);
    v91 = v30;
    v92 = &off_1F390D5A0;
    v89 = &off_1F390D328;
    *&v90 = v38;
    v88 = v19;
    v39 = v70;
    v87[0] = v70;
    v40 = type metadata accessor for BucketIdDataBuilder();
    v41 = swift_allocObject();
    v42 = sub_1BAFD7BD4(v87, v19);
    MEMORY[0x1EEE9AC00](v42);
    v43 = (v62 - v71);
    v72(v62 - v71);
    v44 = *v43;
    v41[11] = v19;
    v41[12] = &off_1F390D328;
    v41[8] = v44;
    sub_1BAFC6D0C(&v90, (v41 + 3));
    v41[2] = v18;

    sub_1BAFC6A68(v87);
    sub_1BAFC6DB4(v93, &v90);
    v45 = sub_1BAFD7BD4(&v90, v91);
    v62[1] = v62;
    MEMORY[0x1EEE9AC00](v45);
    v47 = (v62 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47);
    v49 = *v47;
    v88 = v19;
    v89 = &off_1F390D328;
    v87[0] = v39;
    v86 = &off_1F390E0F8;
    v85 = v65;
    v83 = &off_1F390E3D8;
    *&v84 = v20;
    v82 = v64;
    *&v81 = v63;
    v79 = v40;
    v80 = &off_1F390DFC8;
    *&v78 = v41;
    v77 = &off_1F390D430;
    v76 = &type metadata for RotatingIdentifierTelemetryDelivery;
    v75[0] = v49;
    type metadata accessor for IdentifierBuilder();
    v50 = swift_allocObject();
    v51 = sub_1BAFD7BD4(v87, v19);
    MEMORY[0x1EEE9AC00](v51);
    v52 = (v62 - v71);
    v72(v62 - v71);
    v53 = sub_1BAFD7BD4(v75, v76);
    MEMORY[0x1EEE9AC00](v53);
    v55 = (v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))(v55);
    v57 = *v52;
    v58 = *v55;
    v50[9] = v19;
    v50[10] = &off_1F390D328;
    v50[6] = v57;
    v50[29] = &type metadata for RotatingIdentifierTelemetryDelivery;
    v50[30] = &off_1F390D430;

    v50[26] = v58;
    v50[2] = 2;
    v59 = v68;
    v60 = v69;
    v50[3] = v66;
    v50[4] = v59;
    v50[5] = v60;
    sub_1BAFC6D0C(&v84, (v50 + 11));
    sub_1BAFC6D0C(&v81, (v50 + 16));
    sub_1BAFC6D0C(&v78, (v50 + 21));

    sub_1BAFC6A68(v75);
    sub_1BAFC6A68(v87);
    sub_1BAFC6A68(&v90);
    sub_1BAFC6A68(v93);
    return v50;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB006B24(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v16 = sub_1BB014DF8();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB014DE8();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1BB014A68();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1BAFC5BB4(0, &qword_1EDD4FFD0, 0x1E69E9610);
  sub_1BB014A58();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1BB006EE0();
  sub_1BAFD86D0(&qword_1EBC3B210, &unk_1BB019170);
  sub_1BAFE025C();
  sub_1BB014ED8();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v16);
  *(v3 + 16) = sub_1BB014E18();
  *(v3 + 72) = 1;
  type metadata accessor for IdentifierDataStore();
  v10 = swift_allocObject();
  sub_1BAFC5BB4(0, &qword_1EDD4FFC0, 0x1E69E9BF8);
  v11 = v17;
  sub_1BB014E68();
  sub_1BB0145C8();
  swift_allocObject();
  *(v10 + 16) = sub_1BB0145B8();
  *(v3 + 24) = v10;
  v12 = v18;
  sub_1BAFC6DB4(v18, v3 + 32);
  v13 = [v19 devicePipelinesEnabled];
  sub_1BAFC6A68(v12);
  *(v4 + 72) = v13;
  return v4;
}

uint64_t sub_1BB006E78(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3B8F8, &unk_1BB01CAF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BB006EE0()
{
  result = qword_1EDD4FFD8;
  if (!qword_1EDD4FFD8)
  {
    sub_1BB014DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4FFD8);
  }

  return result;
}

uint64_t CanonicalUAEFactory.__allocating_init(startingEventCount:handle:purpose:source:impressionId:options:trace:branch:orderVendor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 104) = 0;
  sub_1BAFD86D0(qword_1EBC3B188, &qword_1BB018FD0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v18 + 112) = v19;
  *(v18 + 120) = a1;
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  *(v18 + 88) = a10;
  *(v18 + 96) = a11;
  return v18;
}

uint64_t CanonicalUAEFactory.init(startingEventCount:handle:purpose:source:impressionId:options:trace:branch:orderVendor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 104) = 0;
  sub_1BAFD86D0(qword_1EBC3B188, &qword_1BB018FD0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v11 + 112) = v19;
  *(v11 + 120) = a1;
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 64) = a8;
  *(v11 + 72) = a9;
  *(v11 + 88) = a10;
  *(v11 + 96) = a11;
  return v11;
}

uint64_t sub_1BB007100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v42 = a1;
  v43 = a2;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*(v15 + 32))(v16, v15);
  v18 = v6[14];
  os_unfair_lock_lock(v18 + 4);
  v6[13] = sub_1BAFC6108(v17);
  result = swift_beginAccess();
  v20 = v6[15];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v6[15] = v22;
    os_unfair_lock_unlock(v18 + 4);
    v23 = v6[2];
    v24 = v6[3];
    v25 = v6[5];
    v40 = v6[4];
    v41 = v23;
    v26 = v6[7];
    v38 = v7[6];
    v39 = v25;
    v27 = v7[13];
    v28 = v7[9];
    v36 = v7[8];
    v37 = v27;
    v34 = v28;
    v35 = a6;
    v29 = v7[10];
    v30 = v7[11];
    (*(v12 + 16))(v14, v42, a4);
    v31 = *(a5 + 128);

    v32 = v43;

    return v31(v41, v24, v40, v39, v38, v26, v36, v37, v34, v29, v30, v14, v32, a3, a5);
  }

  return result;
}

void *CanonicalUAEFactory.deinit()
{

  return v0;
}

uint64_t CanonicalUAEFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t OnScreenUAE.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OnScreenUAE.impressionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t OnScreenUAE.trace.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t OnScreenUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
}

uint64_t OnScreenUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OnScreenUAE(0) + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OnScreenUAE(uint64_t a1)
{
  result = qword_1EDD4FE58;
  if (!qword_1EDD4FE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 OnScreenUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v23.n128_u64[0] = a7;
  v23.n128_u64[1] = a8;
  v19 = *a12;
  v20 = *(a12 + 8);
  type metadata accessor for OnScreenUAE(0);
  sub_1BB014368();
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3] = v23;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u8[8] = v19;
  a9[6].n128_u64[0] = v20;
  a9[6].n128_u64[1] = a13;
  return result;
}

uint64_t static OnScreenUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OnScreenUAE(0) + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB007710()
{
  result = qword_1EDD4EED0;
  if (!qword_1EDD4EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4EED0);
  }

  return result;
}

uint64_t sub_1BB00776C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
}

__n128 sub_1BB007780@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v22.n128_u64[0] = a7;
  v22.n128_u64[1] = a8;
  v21.n128_u64[0] = a5;
  v21.n128_u64[1] = a6;
  v18 = *a12;
  v19 = *(a12 + 8);
  sub_1BB014368();
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2] = v21;
  a9[3] = v22;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u8[8] = v18;
  a9[6].n128_u64[0] = v19;
  a9[6].n128_u64[1] = a13;
  return result;
}

unint64_t sub_1BB00783C(uint64_t a1)
{
  result = sub_1BB007864();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB007864()
{
  result = qword_1EDD4FE68[0];
  if (!qword_1EDD4FE68[0])
  {
    type metadata accessor for OnScreenUAE(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4FE68);
  }

  return result;
}

void sub_1BB0078E4(uint64_t a1)
{
  type metadata accessor for APMetricPurposeType(319);
  if (v1 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v3 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v5 <= 0x3F)
          {
            sub_1BB014398();
            if (v6 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v7 <= 0x3F)
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

uint64_t VisibleUAE.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VisibleUAE.impressionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t VisibleUAE.trace.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t VisibleUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t VisibleUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VisibleUAE(0) + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for VisibleUAE(uint64_t a1)
{
  result = qword_1EDD4FF40;
  if (!qword_1EDD4FF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 VisibleUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v24.n128_u64[1] = a6;
  v23.n128_u64[1] = a4;
  v24.n128_u64[0] = a5;
  v23.n128_u64[0] = a3;
  v16 = *a12;
  v17 = *(a12 + 8);
  v18 = *(a12 + 16);
  v19 = *(a12 + 24);
  v20 = *(a12 + 32);
  v21 = *(a12 + 40);
  type metadata accessor for VisibleUAE(0);
  sub_1BB014368();
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1] = v23;
  a9[2] = v24;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = v16;
  a9[6].n128_u64[0] = v17;
  a9[6].n128_u8[8] = v18;
  a9[7].n128_u64[0] = v19;
  a9[7].n128_u8[8] = v20;
  a9[8].n128_u64[0] = v21;
  a9[8].n128_u64[1] = a13;
  return result;
}

uint64_t static VisibleUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for VisibleUAE(0) + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB007D50()
{
  result = qword_1EDD4EF78;
  if (!qword_1EDD4EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4EF78);
  }

  return result;
}

uint64_t sub_1BB007DAC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

__n128 sub_1BB007DE0@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v25.n128_u64[0] = a7;
  v25.n128_u64[1] = a8;
  v24.n128_u64[0] = a5;
  v24.n128_u64[1] = a6;
  v23.n128_u64[0] = a3;
  v23.n128_u64[1] = a4;
  v17 = *a12;
  v16 = *(a12 + 8);
  v18 = *(a12 + 16);
  v19 = *(a12 + 24);
  v20 = *(a12 + 32);
  v21 = *(a12 + 40);
  sub_1BB014368();
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1] = v23;
  a9[2] = v24;
  a9[3] = v25;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = v17;
  a9[6].n128_u64[0] = v16;
  a9[6].n128_u8[8] = v18;
  a9[7].n128_u64[0] = v19;
  a9[7].n128_u8[8] = v20;
  a9[8].n128_u64[0] = v21;
  a9[8].n128_u64[1] = a13;
  return result;
}

unint64_t sub_1BB007ECC(uint64_t a1)
{
  result = sub_1BB007EF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB007EF4()
{
  result = qword_1EDD4FF50;
  if (!qword_1EDD4FF50)
  {
    type metadata accessor for VisibleUAE(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4FF50);
  }

  return result;
}

void sub_1BB007F74(uint64_t a1)
{
  type metadata accessor for APMetricPurposeType(319);
  if (v1 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v3 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v5 <= 0x3F)
          {
            sub_1BB014398();
            if (v6 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v7 <= 0x3F)
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

uint64_t PlacedUAE.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlacedUAE.impressionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PlacedUAE.trace.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PlacedUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v7[0] = *(v1 + 88);
  v7[1] = v2;
  v8 = *(v1 + 120);
  v3 = v8;
  v9 = *(v1 + 136);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1BB0081EC(v7, v6);
}

uint64_t PlacedUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlacedUAE(0) + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PlacedUAE(uint64_t a1)
{
  result = qword_1EDD4E2B0;
  if (!qword_1EDD4E2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 PlacedUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for PlacedUAE(0);
  sub_1BB014368();
  sub_1BB0143D8();
  *(a9 + 64) = a10;
  v20 = *(a12 + 16);
  *(a9 + 88) = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 80) = a11;
  *(a9 + 104) = v20;
  result = *(a12 + 32);
  *(a9 + 120) = result;
  *(a9 + 136) = *(a12 + 48);
  *(a9 + 144) = a13;
  return result;
}

uint64_t static PlacedUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PlacedUAE(0) + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB008440()
{
  result = qword_1EDD4EF88[0];
  if (!qword_1EDD4EF88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4EF88);
  }

  return result;
}

uint64_t sub_1BB00849C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v7[0] = *(v1 + 88);
  v7[1] = v2;
  v8 = *(v1 + 120);
  v3 = v8;
  v9 = *(v1 + 136);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1BB0081EC(v7, v6);
}

__n128 sub_1BB0084F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1BB014368();
  sub_1BB0143D8();
  *(a9 + 64) = a10;
  v19 = *(a12 + 16);
  *(a9 + 88) = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 80) = a11;
  *(a9 + 104) = v19;
  result = *(a12 + 32);
  *(a9 + 120) = result;
  *(a9 + 136) = *(a12 + 48);
  *(a9 + 144) = a13;
  return result;
}

unint64_t sub_1BB0085C0(uint64_t a1)
{
  result = sub_1BB0085E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB0085E8()
{
  result = qword_1EDD4E2C0;
  if (!qword_1EDD4E2C0)
  {
    type metadata accessor for PlacedUAE(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4E2C0);
  }

  return result;
}

void sub_1BB008668(uint64_t a1)
{
  type metadata accessor for APMetricPurposeType(319);
  if (v1 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v3 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v5 <= 0x3F)
          {
            sub_1BB014398();
            if (v6 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v7 <= 0x3F)
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

uint64_t InteractedUAE.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InteractedUAE.impressionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t InteractedUAE.trace.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t InteractedUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t InteractedUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractedUAE(0) + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for InteractedUAE(uint64_t a1)
{
  result = qword_1EBC3B910;
  if (!qword_1EBC3B910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 InteractedUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v24.n128_u64[1] = a6;
  v23.n128_u64[1] = a4;
  v24.n128_u64[0] = a5;
  v23.n128_u64[0] = a3;
  v16 = *a12;
  v17 = *(a12 + 8);
  v18 = *(a12 + 16);
  v19 = *(a12 + 24);
  v20 = *(a12 + 32);
  v21 = *(a12 + 40);
  type metadata accessor for InteractedUAE(0);
  sub_1BB014368();
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1] = v23;
  a9[2] = v24;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = v16;
  a9[6].n128_u64[0] = v17;
  a9[6].n128_u8[8] = v18;
  a9[7].n128_u64[0] = v19;
  a9[7].n128_u8[8] = v20;
  a9[8].n128_u64[0] = v21;
  a9[8].n128_u64[1] = a13;
  return result;
}

uint64_t static InteractedUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for InteractedUAE(0) + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB008AD4()
{
  result = qword_1EBC3B900;
  if (!qword_1EBC3B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B900);
  }

  return result;
}

unint64_t sub_1BB008B30(uint64_t a1)
{
  result = sub_1BB008B58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB008B58()
{
  result = qword_1EBC3B908;
  if (!qword_1EBC3B908)
  {
    type metadata accessor for InteractedUAE(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B908);
  }

  return result;
}

void sub_1BB008BD8(uint64_t a1)
{
  type metadata accessor for APMetricPurposeType(319);
  if (v1 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v3 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v5 <= 0x3F)
          {
            sub_1BB014398();
            if (v6 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v7 <= 0x3F)
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

uint64_t ReceivedUAE.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReceivedUAE.impressionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ReceivedUAE.trace.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ReceivedUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

uint64_t ReceivedUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReceivedUAE(0) + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ReceivedUAE(uint64_t a1)
{
  result = qword_1EBC3B930;
  if (!qword_1EBC3B930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ReceivedUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __n128 *a12, uint64_t a13)
{
  v22 = *a12;
  v19 = a12[1].n128_u64[0];
  v20 = a12[1].n128_u64[1];
  type metadata accessor for ReceivedUAE(0);
  sub_1BB014368();
  sub_1BB0143D8();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = v22;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = v22;
  *(a9 + 104) = v19;
  *(a9 + 112) = v20;
  *(a9 + 120) = a13;
  return result;
}

uint64_t static ReceivedUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ReceivedUAE(0) + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB00903C()
{
  result = qword_1EBC3B920;
  if (!qword_1EBC3B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B920);
  }

  return result;
}

uint64_t sub_1BB009098@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

__n128 sub_1BB0090E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __n128 *a12, uint64_t a13)
{
  v22 = *a12;
  v19 = a12[1].n128_u64[0];
  v20 = a12[1].n128_u64[1];
  sub_1BB014368();
  sub_1BB0143D8();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = v22;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = v22;
  *(a9 + 104) = v19;
  *(a9 + 112) = v20;
  *(a9 + 120) = a13;
  return result;
}

unint64_t sub_1BB0091B8(uint64_t a1)
{
  result = sub_1BB0091E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB0091E0()
{
  result = qword_1EBC3B928;
  if (!qword_1EBC3B928)
  {
    type metadata accessor for ReceivedUAE(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B928);
  }

  return result;
}

void sub_1BB009260(uint64_t a1)
{
  type metadata accessor for APMetricPurposeType(319);
  if (v1 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v3 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v5 <= 0x3F)
          {
            sub_1BB014398();
            if (v6 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v7 <= 0x3F)
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

uint64_t OffScreenUAE.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OffScreenUAE.impressionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t OffScreenUAE.trace.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t OffScreenUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
}

uint64_t OffScreenUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OffScreenUAE(0) + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OffScreenUAE(uint64_t a1)
{
  result = qword_1EDD4FCD8;
  if (!qword_1EDD4FCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 OffScreenUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v23.n128_u64[0] = a7;
  v23.n128_u64[1] = a8;
  v19 = *a12;
  v20 = *(a12 + 8);
  type metadata accessor for OffScreenUAE(0);
  sub_1BB014368();
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3] = v23;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u8[8] = v19;
  a9[6].n128_u64[0] = v20;
  a9[6].n128_u64[1] = a13;
  return result;
}

uint64_t static OffScreenUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OffScreenUAE(0) + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB00968C()
{
  result = qword_1EDD4EDC8[0];
  if (!qword_1EDD4EDC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4EDC8);
  }

  return result;
}

unint64_t sub_1BB0096E8(uint64_t a1)
{
  result = sub_1BB009710();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB009710()
{
  result = qword_1EDD4FCE8[0];
  if (!qword_1EDD4FCE8[0])
  {
    type metadata accessor for OffScreenUAE(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4FCE8);
  }

  return result;
}

void sub_1BB009790(uint64_t a1)
{
  type metadata accessor for APMetricPurposeType(319);
  if (v1 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v3 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v5 <= 0x3F)
          {
            sub_1BB014398();
            if (v6 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v7 <= 0x3F)
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

uint64_t sub_1BB009A40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1BB009A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LeftAdDestinationUAE.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LeftAdDestinationUAE.impressionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LeftAdDestinationUAE.trace.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t LeftAdDestinationUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
}

uint64_t LeftAdDestinationUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LeftAdDestinationUAE(0) + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LeftAdDestinationUAE(uint64_t a1)
{
  result = qword_1EBC3B950;
  if (!qword_1EBC3B950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 LeftAdDestinationUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __n128 *a12, uint64_t a13)
{
  v22 = *a12;
  v20 = a12[1].n128_u64[0];
  type metadata accessor for LeftAdDestinationUAE(0);
  sub_1BB014368();
  sub_1BB0143D8();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = v22;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = v22;
  *(a9 + 104) = v20;
  *(a9 + 112) = a13;
  return result;
}

uint64_t static LeftAdDestinationUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LeftAdDestinationUAE(0) + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB009D98()
{
  result = qword_1EBC3B940;
  if (!qword_1EBC3B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B940);
  }

  return result;
}

uint64_t sub_1BB009DF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
}

__n128 sub_1BB009E10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __n128 *a12, uint64_t a13)
{
  v21 = *a12;
  v19 = a12[1].n128_u64[0];
  sub_1BB014368();
  sub_1BB0143D8();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = v21;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = v21;
  *(a9 + 104) = v19;
  *(a9 + 112) = a13;
  return result;
}

unint64_t sub_1BB009ED4(uint64_t a1)
{
  result = sub_1BB009EFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB009EFC()
{
  result = qword_1EBC3B948;
  if (!qword_1EBC3B948)
  {
    type metadata accessor for LeftAdDestinationUAE(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B948);
  }

  return result;
}

void sub_1BB009F7C(uint64_t a1)
{
  type metadata accessor for APMetricPurposeType(319);
  if (v1 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v3 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v5 <= 0x3F)
          {
            sub_1BB014398();
            if (v6 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v7 <= 0x3F)
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

uint64_t UnloadedUAE.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UnloadedUAE.impressionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t UnloadedUAE.trace.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t UnloadedUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
}

uint64_t UnloadedUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnloadedUAE(0) + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UnloadedUAE(uint64_t a1)
{
  result = qword_1EDD4FD98;
  if (!qword_1EDD4FD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 UnloadedUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __n128 *a12, uint64_t a13)
{
  v22 = *a12;
  v20 = a12[1].n128_u64[0];
  type metadata accessor for UnloadedUAE(0);
  sub_1BB014368();
  sub_1BB0143D8();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = v22;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = v22;
  *(a9 + 104) = v20;
  *(a9 + 112) = a13;
  return result;
}

uint64_t static UnloadedUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for UnloadedUAE(0) + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB00A3A8()
{
  result = qword_1EDD4EEC8;
  if (!qword_1EDD4EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4EEC8);
  }

  return result;
}

unint64_t sub_1BB00A404(uint64_t a1)
{
  result = sub_1BB00A42C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB00A42C()
{
  result = qword_1EDD4FDA8[0];
  if (!qword_1EDD4FDA8[0])
  {
    type metadata accessor for UnloadedUAE(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4FDA8);
  }

  return result;
}

void sub_1BB00A4AC(uint64_t a1)
{
  type metadata accessor for APMetricPurposeType(319);
  if (v1 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v3 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v5 <= 0x3F)
          {
            sub_1BB014398();
            if (v6 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v7 <= 0x3F)
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

uint64_t sub_1BB00A614(uint64_t a1)
{
  v3 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v44 - v4;
  v59 = sub_1BB014648();
  v6 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v50 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB0147A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PolicyTerritoryKey(0);
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v64 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v44[1] = v1;
    v66 = MEMORY[0x1E69E7CC0];
    v51 = v14;
    sub_1BAFEBF7C(0, v14, 0);
    v65 = v66;
    v63 = a1 + 56;
    result = sub_1BB014EE8();
    v16 = result;
    v17 = 0;
    v54 = (v6 + 48);
    v55 = v9 + 16;
    v47 = (v6 + 16);
    v48 = (v6 + 32);
    v52 = v5;
    v53 = (v9 + 8);
    v45 = a1 + 64;
    v46 = (v6 + 8);
    v56 = a1;
    v49 = v8;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
    {
      v19 = v16 >> 6;
      if ((*(v63 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_25;
      }

      v60 = v17;
      v61 = *(a1 + 36);
      v62 = 1 << v16;
      (*(v9 + 16))(v11, *(a1 + 48) + *(v9 + 72) * v16, v8);
      sub_1BB014778();
      v20 = v59;
      if ((*v54)(v5, 1, v59) == 1)
      {
        sub_1BAFE2D64(v5, &qword_1EBC3B428, &qword_1BB019EC0);
        v21 = v64;
        sub_1BB014798();
        v22 = type metadata accessor for PolicyTerritoryKey.Scope(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v22 - 8) + 56))(v21 + *(v58 + 20), 1, 1, v22);
      }

      else
      {
        v23 = v50;
        (*v48)(v50, v5, v20);
        v24 = *(sub_1BAFD86D0(&qword_1EBC3B5B0, &qword_1BB01ACF0) + 48);
        v25 = v64;
        v26 = v11;
        sub_1BB014798();
        (*v47)(v25 + v24, v23, v20);
        v27 = type metadata accessor for PolicyTerritoryKey.Scope(0);
        swift_storeEnumTagMultiPayload();
        v28 = v9;
        v29 = v20;
        v30 = *(v58 + 20);
        sub_1BB014798();
        v31 = v23;
        v8 = v49;
        v32 = v29;
        v9 = v28;
        v11 = v26;
        (*v46)(v31, v32);
        swift_storeEnumTagMultiPayload();
        (*(*(v27 - 8) + 56))(v25 + v30, 0, 1, v27);
      }

      (*v53)(v11, v8);
      v33 = v65;
      v66 = v65;
      v35 = *(v65 + 16);
      v34 = *(v65 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1BAFEBF7C((v34 > 1), v35 + 1, 1);
        v33 = v66;
      }

      *(v33 + 16) = v35 + 1;
      v36 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v65 = v33;
      result = sub_1BB00FCB0(v64, v33 + v36 + *(v57 + 72) * v35);
      a1 = v56;
      v18 = 1 << *(v56 + 32);
      if (v16 >= v18)
      {
        goto LABEL_26;
      }

      v37 = *(v63 + 8 * v19);
      if ((v37 & v62) == 0)
      {
        goto LABEL_27;
      }

      if (v61 != *(v56 + 36))
      {
        goto LABEL_28;
      }

      v38 = v37 & (-2 << (v16 & 0x3F));
      if (v38)
      {
        v18 = __clz(__rbit64(v38)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = v19 << 6;
        v40 = v19 + 1;
        v41 = (v45 + 8 * v19);
        while (v40 < (v18 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            result = sub_1BB00FD14(v16, v61, 0);
            v18 = __clz(__rbit64(v42)) + v39;
            goto LABEL_4;
          }
        }

        result = sub_1BB00FD14(v16, v61, 0);
      }

LABEL_4:
      v17 = v60 + 1;
      v16 = v18;
      v5 = v52;
      if (v60 + 1 == v51)
      {
        return v65;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t SovereignSensitiveCategoryFilter.__allocating_init(currentTerritorySource:homeTerritorySource:storefrontTerritorySource:ruleStore:ruleEvaluator:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v10 = swift_allocObject();
  sub_1BAFC6D0C(a1, v10 + 16);
  sub_1BAFC6D0C(a2, v10 + 56);
  sub_1BAFC6D0C(a3, v10 + 96);
  sub_1BAFC6D0C(a4, v10 + 136);
  sub_1BAFC6D0C(a5, v10 + 176);
  return v10;
}

uint64_t SovereignSensitiveCategoryFilter.init(currentTerritorySource:homeTerritorySource:storefrontTerritorySource:ruleStore:ruleEvaluator:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  sub_1BAFC6D0C(a1, v5 + 16);
  sub_1BAFC6D0C(a2, v5 + 56);
  sub_1BAFC6D0C(a3, v5 + 96);
  sub_1BAFC6D0C(a4, v5 + 136);
  sub_1BAFC6D0C(a5, v5 + 176);
  return v5;
}

uint64_t SovereignSensitiveCategoryFilter.eligibilityFor(category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v87 = a1;
  v88 = a2;
  v84[0] = a3;
  v4 = type metadata accessor for PolicyTerritoryKey(0);
  v96 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB0147A8();
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v101 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  v94 = *(v86 - 8);
  v98 = v94;
  v8 = MEMORY[0x1EEE9AC00](v86);
  v10 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v89 = v84 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v90 = v84 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = v84 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v84 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v84 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v84 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = v84 - v26;
  sub_1BAFC6AB4(v3 + 2, v3[5]);
  sub_1BB0145E8();
  sub_1BAFC6AB4(v3 + 7, v3[10]);
  sub_1BB0145E8();
  v28 = v3[15];
  v97 = v3;
  sub_1BAFC6AB4(v3 + 12, v28);
  sub_1BB0145E8();
  sub_1BAFD86D0(&qword_1EBC3B968, &qword_1BB01D0B8);
  v29 = *(v94 + 9);
  v30 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v85 = swift_allocObject();
  v31 = v85 + v30;
  v32 = v100;
  v94 = v27;
  sub_1BB00B750(v27, v31);
  v93 = v25;
  sub_1BB00B750(v25, v31 + v29);
  v91 = v22;
  sub_1BB00B750(v22, v31 + 2 * v29);
  v33 = (v99 + 48);
  v34 = (v99 + 32);
  v35 = MEMORY[0x1E69E7CC0];
  v36 = 3;
  v84[1] = v31;
  v98 = v99 + 32;
  do
  {
    sub_1BB00B750(v31, v19);
    sub_1BB00B7C0(v19, v10);
    if ((*v33)(v10, 1, v32) == 1)
    {
      sub_1BAFE2D64(v10, &qword_1EBC3B960, &qword_1BB01D0B0);
    }

    else
    {
      v37 = v19;
      v38 = v29;
      v39 = *v34;
      (*v34)(v101, v10, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1BB00C01C(0, v35[2] + 1, 1, v35, &qword_1EBC3B990, &unk_1BB01D150, MEMORY[0x1E6986150]);
      }

      v41 = v35[2];
      v40 = v35[3];
      if (v41 >= v40 >> 1)
      {
        v35 = sub_1BB00C01C((v40 > 1), v41 + 1, 1, v35, &qword_1EBC3B990, &unk_1BB01D150, MEMORY[0x1E6986150]);
      }

      v35[2] = v41 + 1;
      v32 = v100;
      v42 = v35 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v41;
      v34 = v98;
      v39(v42, v101, v100);
      v29 = v38;
      v19 = v37;
    }

    v31 += v29;
    --v36;
  }

  while (v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v43 = sub_1BB00F1E0(v35);

  v44 = v94;
  v45 = v92;
  sub_1BB00B750(v94, v92);
  v46 = v93;
  v47 = v90;
  sub_1BB00B750(v93, v90);
  v48 = v91;
  v49 = v89;
  sub_1BB00B750(v91, v89);
  if (*(v43 + 16))
  {
    v50 = reduceTerritories(_:)(v43);

    v51 = sub_1BB00A614(v50);
    v53 = v87;
    v52 = v88;
    v54 = v51;

    v55 = *(v54 + 16);
    v56 = v97;
    if (!v55)
    {
LABEL_17:

      sub_1BAFE2D64(v89, &qword_1EBC3B960, &qword_1BB01D0B0);
      sub_1BAFE2D64(v90, &qword_1EBC3B960, &qword_1BB01D0B0);
      sub_1BAFE2D64(v92, &qword_1EBC3B960, &qword_1BB01D0B0);
      sub_1BAFE2D64(v91, &qword_1EBC3B960, &qword_1BB01D0B0);
      sub_1BAFE2D64(v93, &qword_1EBC3B960, &qword_1BB01D0B0);
      result = sub_1BAFE2D64(v94, &qword_1EBC3B960, &qword_1BB01D0B0);
      v68 = v84[0];
      *v84[0] = 0u;
      *(v68 + 16) = 0u;
      return result;
    }

    v57 = 0;
    while (1)
    {
      if (v57 >= *(v54 + 16))
      {
        __break(1u);
        sub_1BAFE2D64(v89, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v90, &qword_1EBC3B960, &qword_1BB01D0B0);
        result = sub_1BAFE2D64(v92, &qword_1EBC3B960, &qword_1BB01D0B0);
        __break(1u);
        return result;
      }

      v58 = v95;
      sub_1BB00F368(v54 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v57, v95);
      v59 = v56[20];
      v60 = v56[21];
      sub_1BAFC6AB4(v56 + 17, v59);
      (*(v60 + 8))(&v103, v53, v52, v58, v59, v60);
      sub_1BB00F3CC(v58);
      if (v105)
      {

        v72 = v92;
        v74 = v89;
        v73 = v90;
        v75 = missingLocations(current:home:storefront:)(v92, v90, v89);
        sub_1BAFE2D64(v74, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v73, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v72, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v91, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v93, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v94, &qword_1EBC3B960, &qword_1BB01D0B0);
        v76 = v84[0];
        *v84[0] = v53;
        v76[1] = v52;
        v76[2] = 2;
        v76[3] = v75;
      }

      v61 = v56;
      v62 = v104;
      v63 = v103;
      v64 = v61[25];
      v65 = v61[26];
      sub_1BAFC6AB4(v61 + 22, v64);
      v103 = v63;
      v104 = v62 & 0x1FF;
      (*(v65 + 8))(&v102, &v103, v64, v65);
      v66 = v102;
      if (v102 <= 0xFDu)
      {
        break;
      }

      ++v57;
      v56 = v97;
      if (v55 == v57)
      {
        goto LABEL_17;
      }
    }

    v77 = 128;
    if (v66)
    {
      v77 = 129;
    }

    if ((v66 & 0x80u) == 0)
    {
      v78 = 0;
    }

    else
    {
      v78 = v77;
    }

    v79 = v92;
    v81 = v89;
    v80 = v90;
    v82 = missingLocations(current:home:storefront:)(v92, v90, v89);
    sub_1BAFE2D64(v81, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v80, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v79, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v91, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v93, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v94, &qword_1EBC3B960, &qword_1BB01D0B0);
    v83 = v84[0];
    *v84[0] = v53;
    v83[1] = v52;
    v83[2] = v78;
    v83[3] = v82;
  }

  else
  {

    v69 = missingLocations(current:home:storefront:)(v45, v47, v49);
    sub_1BAFE2D64(v49, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v47, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v45, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v48, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v46, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v44, &qword_1EBC3B960, &qword_1BB01D0B0);
    v70 = v84[0];
    v71 = v88;
    *v84[0] = v87;
    v70[1] = v71;
    v70[2] = 1;
    v70[3] = v69;
  }
}

uint64_t sub_1BB00B750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB00B7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t missingLocations(current:home:storefront:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = MEMORY[0x1E69E7CD0];
  v6 = sub_1BB0147A8();
  v7 = *(*(v6 - 8) + 48);
  if (v7(a1, 1, v6) == 1)
  {
    sub_1BB00C1F8(&v11, 0);
  }

  if (v7(a2, 1, v6) == 1)
  {
    sub_1BB00C1F8(&v10, 1);
  }

  if (v7(a3, 1, v6) == 1)
  {
    sub_1BB00C1F8(&v9, 2);
  }

  return v12;
}

uint64_t reduceTerritories(_:)(uint64_t a1)
{

  v3 = sub_1BB00F774(v2, v2);
  if (*(v3 + 16) <= *(a1 + 16) >> 3)
  {

    sub_1BB00D7A8(v3);
  }

  else
  {

    a1 = sub_1BB00D9C4(v3, a1);
  }

  return a1;
}

void *SovereignSensitiveCategoryFilter.deinit()
{
  sub_1BAFC6A68(v0 + 2);
  sub_1BAFC6A68(v0 + 7);
  sub_1BAFC6A68(v0 + 12);
  sub_1BAFC6A68(v0 + 17);
  sub_1BAFC6A68(v0 + 22);
  return v0;
}

uint64_t SovereignSensitiveCategoryFilter.__deallocating_deinit()
{
  sub_1BAFC6A68(v0 + 2);
  sub_1BAFC6A68(v0 + 7);
  sub_1BAFC6A68(v0 + 12);
  sub_1BAFC6A68(v0 + 17);
  sub_1BAFC6A68(v0 + 22);

  return swift_deallocClassInstance();
}

BOOL sub_1BB00BA94()
{
  v0 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v15 - v1;
  v3 = sub_1BB0144A8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  sub_1BB014798();
  sub_1BB014798();
  v10 = MEMORY[0x1BFB065C0](v9, v7);
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_1BB014778();
  v12 = sub_1BB014648();
  v13 = (*(*(v12 - 8) + 48))(v2, 1, v12) != 1;
  sub_1BAFE2D64(v2, &qword_1EBC3B428, &qword_1BB019EC0);
  return v13;
}

uint64_t sub_1BB00BC94(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v24 = a1;
  v25 = sub_1BB0147A8();
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v22 = v6 + 16;
  v23 = v6;
  v21 = (v6 + 8);
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v16 = v25;
LABEL_11:
    (*(v23 + 16))(v8, *(v26 + 48) + *(v23 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v18 = v24(v8);
    if (v3)
    {
      (*v21)(v8, v16);

      return a2 & 1;
    }

    v19 = v18;
    v12 &= v12 - 1;
    result = (*v21)(v8, v16);
    if (v19)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v16 = v25;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1BB00BEAC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BAFD86D0(&qword_1EBC3B490, &qword_1BB01A128);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BB00C01C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1BAFD86D0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1BB00C1F8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](a2);
  v6 = sub_1BB0151F8();
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
    sub_1BB00CB40(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BB00C2F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BB0147A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BB00FC4C(&qword_1EBC3B970, MEMORY[0x1E6986158]);
  v33 = a2;
  v11 = sub_1BB014AD8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1BB00FC4C(&qword_1EBC3B978, MEMORY[0x1E6986160]);
      v21 = sub_1BB014B18();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1BB00CC8C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1BB00C5A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BAFD86D0(&qword_1EBC3B988, &qword_1BB01D148);
  result = sub_1BB014F28();
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
      sub_1BB0151B8();
      MEMORY[0x1BFB072F0](v17);
      result = sub_1BB0151F8();
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

uint64_t sub_1BB00C7F8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1BB0147A8();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1BAFD86D0(&qword_1EBC3B980, &unk_1BB01D138);
  result = sub_1BB014F28();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1BB00FC4C(&qword_1EBC3B970, MEMORY[0x1E6986158]);
      result = sub_1BB014AD8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1BB00CB40(uint64_t result, unint64_t a2, char a3)
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
    sub_1BB00C5A8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1BB00CF08();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1BB00D280(v5 + 1);
  }

  v8 = *v3;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v4);
  result = sub_1BB0151F8();
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
  result = sub_1BB015148();
  __break(1u);
  return result;
}

uint64_t sub_1BB00CC8C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1BB0147A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BB00C7F8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1BB00D048();
      goto LABEL_12;
    }

    sub_1BB00D4A0(v10 + 1);
  }

  v12 = *v3;
  sub_1BB00FC4C(&qword_1EBC3B970, MEMORY[0x1E6986158]);
  v13 = sub_1BB014AD8();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1BB00FC4C(&qword_1EBC3B978, MEMORY[0x1E6986160]);
      v21 = sub_1BB014B18();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BB015148();
  __break(1u);
  return result;
}

void *sub_1BB00CF08()
{
  v1 = v0;
  sub_1BAFD86D0(&qword_1EBC3B988, &qword_1BB01D148);
  v2 = *v0;
  v3 = sub_1BB014F18();
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

void *sub_1BB00D048()
{
  v1 = v0;
  v2 = sub_1BB0147A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAFD86D0(&qword_1EBC3B980, &unk_1BB01D138);
  v6 = *v0;
  v7 = sub_1BB014F18();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1BB00D280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BAFD86D0(&qword_1EBC3B988, &qword_1BB01D148);
  result = sub_1BB014F28();
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
      sub_1BB0151B8();
      MEMORY[0x1BFB072F0](v16);
      result = sub_1BB0151F8();
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

uint64_t sub_1BB00D4A0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1BB0147A8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1BAFD86D0(&qword_1EBC3B980, &unk_1BB01D138);
  v7 = sub_1BB014F28();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1BB00FC4C(&qword_1EBC3B970, MEMORY[0x1E6986158]);
      result = sub_1BB014AD8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1BB00D7A8(uint64_t a1)
{
  v3 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1BB0147A8();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_1BAFE2D64(v5, &qword_1EBC3B960, &qword_1BB01D0B0))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_1BB00E40C(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BB00D9C4(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v5 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v68 - v9);
  v11 = sub_1BB0147A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v88 = (&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v68 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v83 = (&v68 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v69 = v10;
  v71 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v82 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v90 = (v22 & v19);
  v74 = (63 - v21) >> 6;
  v89 = v12 + 2;
  v79 = (v12 + 6);
  v80 = (v12 + 7);
  v78 = (v12 + 4);
  v85 = (a2 + 56);
  v91 = (v12 + 1);
  v81 = a1;

  v24 = 0;
  v70 = v12;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v90;
    v26 = v24;
    if (v90)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v81;
      v31 = *(v81 + 48) + v12[9] * (__clz(__rbit64(v25)) | (v26 << 6));
      v32 = v12[2];
      v33 = v69;
      v32(v69, v31, v11);
      v34 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v74 <= (v24 + 1) ? v24 + 1 : v74;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v74)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v34 = 1;
      v33 = v69;
      v30 = v81;
    }

    v76 = *v80;
    v76(v33, v34, 1, v11);
    v92 = v30;
    v93 = v20;
    v94 = v82;
    v95 = v28;
    v96 = v2;
    v75 = *v79;
    if (v75(v33, 1, v11) == 1)
    {
      sub_1BAFE2D64(v33, &qword_1EBC3B960, &qword_1BB01D0B0);
      v62 = v30;
      goto LABEL_53;
    }

    v73 = *v78;
    v73(v83, v33, v11);
    v72 = sub_1BB00FC4C(&qword_1EBC3B970, MEMORY[0x1E6986158]);
    v35 = sub_1BB014AD8();
    v36 = -1 << *(a2 + 32);
    v24 = v35 & ~v36;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) != 0)
    {
      break;
    }

    v12 = v70;
    (*v91)(v83, v11);
LABEL_22:
    v24 = v28;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = v70[9];
  v86 = v70[2];
  v87 = v37;
  while (1)
  {
    v86(v17, *(a2 + 48) + v87 * v24, v11);
    v38 = sub_1BB00FC4C(&qword_1EBC3B978, MEMORY[0x1E6986160]);
    v39 = sub_1BB014B18();
    v90 = *v91;
    v90(v17, v11);
    if (v39)
    {
      break;
    }

    v24 = (v24 + 1) & v84;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v85[v24 >> 6]) == 0)
    {
      v12 = v70;
      v90(v83, v11);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v11);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v23 = 8 * v68;
  v12 = v81;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v69 = &v68;
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v26] & ~v20;
    v45 = *(a2 + 16);
    v83 = v43;
    *&v43[8 * v26] = v44;
    v46 = v45 - 1;
    v24 = v71;
    v47 = i;
    v48 = v74;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v28;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v24, v12[6] + (v52 | (v49 << 6)) * v87, v11);
      v53 = 0;
LABEL_39:
      v76(v24, v53, 1, v11);
      v92 = v12;
      v93 = v47;
      v94 = v82;
      v95 = v28;
      v96 = v2;
      if (v75(v24, 1, v11) == 1)
      {
        sub_1BAFE2D64(v24, &qword_1EBC3B960, &qword_1BB01D0B0);
        a2 = sub_1BB00EB38(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v73(v88, v24, v11);
      v54 = sub_1BB014AD8();
      v55 = a2;
      v56 = -1 << *(a2 + 32);
      v57 = v54 & ~v56;
      v26 = v57 >> 6;
      v20 = 1 << v57;
      if (((1 << v57) & v85[v57 >> 6]) != 0)
      {
        v86(v17, *(v55 + 48) + v57 * v87, v11);
        v58 = sub_1BB014B18();
        v90(v17, v11);
        if ((v58 & 1) == 0)
        {
          v59 = ~v56;
          do
          {
            v57 = (v57 + 1) & v59;
            v26 = v57 >> 6;
            v20 = 1 << v57;
            if (((1 << v57) & v85[v57 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v17, *(v55 + 48) + v57 * v87, v11);
            v60 = sub_1BB014B18();
            v90(v17, v11);
          }

          while ((v60 & 1) == 0);
        }

        v90(v88, v11);
        v61 = v83[v26];
        v83[v26] = v61 & ~v20;
        a2 = v55;
        v12 = v81;
        v24 = v71;
        v47 = i;
        v48 = v74;
        if ((v61 & v20) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v11);
        a2 = v55;
        v12 = v81;
        v24 = v71;
        v47 = i;
        v48 = v74;
      }
    }

    if (v48 <= (v28 + 1))
    {
      v50 = v28 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v28 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v28;
      if (v2)
      {
        v28 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v64 = v23;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_1BB00E68C(v67, v68, v83, v24, &v92);

  MEMORY[0x1BFB07C70](v67, -1, -1);
LABEL_52:
  v62 = v92;
LABEL_53:
  sub_1BAFDDB98(v62);
  return a2;
}

uint64_t sub_1BB00E40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BB0147A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1BB00FC4C(&qword_1EBC3B970, MEMORY[0x1E6986158]);
  v31 = a1;
  v10 = sub_1BB014AD8();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1BB00FC4C(&qword_1EBC3B978, MEMORY[0x1E6986160]);
      v19 = sub_1BB014B18();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BB00D048();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1BB00EE4C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1BB00E68C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1BB0147A8();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v24 = *a5;
        v23 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v23 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v24 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v24;
        a5[1] = v23;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1BAFE2D64(v11, &qword_1EBC3B960, &qword_1BB01D0B0);
          v45 = v61;

          return sub_1BB00EB38(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1BB00FC4C(&qword_1EBC3B970, MEMORY[0x1E6986158]);
        v35 = sub_1BB014AD8();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1BB00FC4C(&qword_1EBC3B978, MEMORY[0x1E6986160]);
        v43 = sub_1BB014B18();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1BB00EB38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1BB0147A8();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1BAFD86D0(&qword_1EBC3B980, &unk_1BB01D138);
  result = sub_1BB014F38();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1BB00FC4C(&qword_1EBC3B970, MEMORY[0x1E6986158]);
    result = sub_1BB014AD8();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BB00EE4C(int64_t a1)
{
  v3 = sub_1BB0147A8();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1BB014EF8();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v35 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v16 = v12;
      v17 = *(v14 + 56);
      v36 = v14;
      v33 = (v14 - 8);
      v34 = v15;
      do
      {
        v18 = v9;
        v19 = v17;
        v20 = v17 * v11;
        v34(v7, *(v8 + 48) + v17 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v21;
        sub_1BB00FC4C(&qword_1EBC3B970, MEMORY[0x1E6986158]);
        v24 = sub_1BB014AD8();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v16 = v22;
        if (a1 >= v35)
        {
          if (v25 >= v35 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v19;
            v29 = v19 * a1;
            if (v19 * a1 < v20 || v28 + v19 * a1 >= (v28 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v35 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v19;
LABEL_5:
        v11 = (v11 + 1) & v16;
        v9 = v18;
      }

      while (((*(v18 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}