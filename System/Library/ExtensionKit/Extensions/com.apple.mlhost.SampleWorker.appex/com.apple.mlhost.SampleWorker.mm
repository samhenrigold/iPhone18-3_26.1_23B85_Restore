uint64_t sub_1000011E0()
{
  v0 = sub_10000B220();
  sub_100009F2C(v0, qword_100015050);
  sub_100009B98(v0, qword_100015050);
  return sub_10000B210();
}

uint64_t sub_1000012A8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0xD000000000000011;
    if (v1 != 1)
    {
      v4 = 0xD000000000000014;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x726150776F6C6C61;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 == 5)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000013A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100009628(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000013E0(uint64_t a1)
{
  v2 = sub_100009B44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000141C(uint64_t a1)
{
  v2 = sub_100009B44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001458(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[1] = a3;
  v6 = sub_100008A34(&qword_1000140F8, &qword_10000BB18);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v11 - v8;
  sub_100009B00(a1, a1[3]);
  sub_100009B44();
  sub_10000B560();
  v18 = 0;
  sub_10000B410();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v17 = 1;
  sub_10000B420();
  v16 = 2;
  sub_10000B410();
  v15 = 3;
  sub_10000B410();
  v14 = 4;
  sub_10000B410();
  v13 = 5;
  sub_10000B410();
  v12 = 6;
  sub_10000B410();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10000168C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100009878(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
    *(a1 + 17) = BYTE1(v6);
    *(a1 + 18) = BYTE2(v6);
    *(a1 + 19) = BYTE3(v6);
    *(a1 + 20) = BYTE4(v6);
    *(a1 + 21) = BYTE5(v6);
  }

  return result;
}

uint64_t sub_100001740(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7075727265746E69;
  }

  else
  {
    v3 = 0x656C6C65636E6163;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEB00000000646574;
  }

  if (*a2)
  {
    v5 = 0x7075727265746E69;
  }

  else
  {
    v5 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v6 = 0xEB00000000646574;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000B470();
  }

  return v8 & 1;
}

uint64_t sub_1000017F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107116;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x737365636F7270;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x64616F6C7075;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107116;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x64616F6C7075;
    if (a2 != 3)
    {
      v6 = 0x64656873696E6966;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x737365636F7270;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_10000B470();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

Swift::Int sub_100001964()
{
  sub_10000B4F0();
  sub_10000B290();

  return sub_10000B510();
}

uint64_t sub_1000019F4(uint64_t a1)
{
  sub_10000B290();
}

Swift::Int sub_100001A70(uint64_t a1)
{
  sub_10000B4F0();
  sub_10000B290();

  return sub_10000B510();
}

uint64_t sub_100001AFC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100010810;
  v8._object = v3;
  v5 = sub_10000B3C0(v4, v8);

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

void sub_100001B5C(uint64_t *a1@<X8>)
{
  v2 = 0x656C6C65636E6163;
  if (*v1)
  {
    v2 = 0x7075727265746E69;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEB00000000646574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100001BB8(void *a1)
{
  v3 = sub_100008A34(&unk_1000141C0, &qword_10000BF40);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  sub_100009B00(a1, a1[3]);
  sub_10000AC18();
  sub_10000B560();
  v8[15] = 0;
  sub_10000B430();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_10000B430();
  v8[13] = 2;
  sub_10000B440();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_100001D64()
{
  sub_10000B4F0();
  sub_10000B290();

  return sub_10000B510();
}

uint64_t sub_100001E38(uint64_t a1)
{
  sub_10000B290();
}

Swift::Int sub_100001EF8(uint64_t a1)
{
  sub_10000B4F0();
  sub_10000B290();

  return sub_10000B510();
}

unint64_t sub_100001FC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000A85C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100001FF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xE700000000000000;
  v6 = 0x737365636F7270;
  v7 = 0xE600000000000000;
  v8 = 0x64616F6C7075;
  if (v2 != 3)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684107116;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_100002098()
{
  v1 = *v0;
  sub_10000B4F0();
  sub_10000B500(v1);
  return sub_10000B510();
}

Swift::Int sub_1000020E0(uint64_t a1)
{
  v2 = *v1;
  sub_10000B4F0();
  sub_10000B500(v2);
  return sub_10000B510();
}

uint64_t sub_100002124()
{
  v1 = 0x64496B736174;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616C6572726F63;
  }
}

uint64_t sub_100002188@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000A8A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000021BC(uint64_t a1)
{
  v2 = sub_10000AC18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000021F8(uint64_t a1)
{
  v2 = sub_10000AC18();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100002234@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10000A9C4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100002294()
{
  sub_10000B350(47);
  v2._countAndFlagsBits = 0xD000000000000013;
  v2._object = 0x800000010000BAC0;
  sub_10000B2A0(v2);
  v3._object = 0x800000010000C080;
  v3._countAndFlagsBits = 0xD000000000000010;
  sub_10000B2A0(v3);
  sub_10000B2A0(*v0);
  v4._countAndFlagsBits = 0x64496B736174202CLL;
  v4._object = 0xEA0000000000203ALL;
  sub_10000B2A0(v4);
  sub_10000B2A0(v0[1]);
  v5._countAndFlagsBits = 0x697461727564202CLL;
  v5._object = 0xEC000000203A6E6FLL;
  sub_10000B2A0(v5);
  sub_10000B300();
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_10000B2A0(v6);
  return 0;
}

uint64_t sub_1000023AC(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v3 = sub_10000B370();
  v2[47] = v3;
  v2[48] = *(v3 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v4 = sub_10000B380();
  v2[51] = v4;
  v2[52] = *(v4 - 8);
  v2[53] = swift_task_alloc();
  v5 = sub_10000AFD0();
  v2[54] = v5;
  v2[55] = *(v5 - 8);
  v2[56] = swift_task_alloc();
  v6 = sub_10000AFF0();
  v2[57] = v6;
  v2[58] = *(v6 - 8);
  v2[59] = swift_task_alloc();
  v7 = sub_10000B280();
  v2[60] = v7;
  v2[61] = *(v7 - 8);
  v2[62] = swift_task_alloc();
  v8 = sub_10000B170();
  v2[63] = v8;
  v2[64] = *(v8 - 8);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v9 = sub_10000AF60();
  v2[70] = v9;
  v2[71] = *(v9 - 8);
  v2[72] = swift_task_alloc();
  sub_100008A34(&qword_100014100, &qword_10000BB28);
  v2[73] = swift_task_alloc();
  v10 = sub_10000B1F0();
  v2[74] = v10;
  v2[75] = *(v10 - 8);
  v2[76] = swift_task_alloc();
  v11 = sub_10000B1A0();
  v2[77] = v11;
  v2[78] = *(v11 - 8);
  v2[79] = swift_task_alloc();
  sub_100008A34(&qword_100014108, &qword_10000BB30);
  v2[80] = swift_task_alloc();
  v12 = sub_100008A34(&qword_100014028, &unk_10000B930);
  v2[81] = v12;
  v2[82] = *(v12 - 8);
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v13 = sub_10000B020();
  v2[85] = v13;
  v2[86] = *(v13 - 8);
  v2[87] = swift_task_alloc();

  return _swift_task_switch(sub_1000028F4, 0, 0);
}

uint64_t sub_1000028F4()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  sub_10000B010();
  *(v0 + 704) = sub_10000B000();
  *(v0 + 712) = v4;
  (*(v2 + 8))(v1, v3);
  if (qword_1000141D0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 360);
  v6 = sub_10000B220();
  *(v0 + 720) = sub_100009B98(v6, qword_100015050);
  v7 = v5;
  v8 = sub_10000B200();
  v9 = sub_10000B310();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 360);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v10;
    *v12 = v10;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v8, v9, "Context: %@", v11, 0xCu);
    sub_100009E70(v12, &qword_100014158, &qword_10000BB38);
  }

  v14 = *(v0 + 368);

  v15 = type metadata accessor for SampleWorker(0);
  *(v0 + 728) = v15;
  *(v0 + 736) = *(v14 + *(v15 + 20));
  *(v0 + 158) = 0;
  sub_10000B0B0();
  sub_100009E28(&qword_100014110, &type metadata accessor for LedgerClient, &protocol conformance descriptor for LedgerClient);
  v16 = sub_10000B2E0();
  *(v0 + 744) = v16;
  *(v0 + 752) = v17;

  return _swift_task_switch(sub_100002B58, v16, v17);
}

uint64_t sub_100002B58()
{
  v0[95] = sub_100009BD0();
  sub_10000B090();
  v1 = swift_task_alloc();
  v0[96] = v1;
  v2 = sub_100009E28(&qword_1000140C8, type metadata accessor for SampleWorker, &unk_10000B9C0);
  v3 = sub_100008C40();
  v4 = sub_100008C94();
  *v1 = v0;
  v1[1] = sub_100002CB4;
  v5 = v0[91];
  v6 = v0[80];
  v7 = v0[45];

  return MLHostExtension.loadConfig<A>(context:)(v6, v7, v5, &type metadata for SampleWorkerConfig, v2, v3, v4);
}

uint64_t sub_100002CB4()
{

  return _swift_task_switch(sub_100002DDC, 0, 0);
}

uint64_t sub_100002DDC()
{
  v31 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v1 + 48);
  v5 = v4(v3, 1, v2);
  v6 = *(v0 + 672);
  if (v5 == 1)
  {
    v7 = *(v1 + 16);
    v7(v6, *(v0 + 368), v2);
    if (v4(v3, 1, v2) != 1)
    {
      sub_100009E70(*(v0 + 640), &qword_100014108, &qword_10000BB30);
    }
  }

  else
  {
    (*(v1 + 32))(v6, v3, v2);
    v7 = *(v1 + 16);
  }

  v7(*(v0 + 664), *(v0 + 672), *(v0 + 648));
  v8 = sub_10000B200();
  v9 = sub_10000B310();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  v13 = *(v0 + 648);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v14 = 136315138;
    sub_10000A4FC(&qword_100014150, &qword_100014028, &unk_10000B930, &protocol conformance descriptor for MLHostParameters<A>);
    v15 = sub_10000B450();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_100008FDC(v15, v17, &v30);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Configuration: %s", v14, 0xCu);
    sub_100009D20(v29);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  *(v0 + 776) = v18;
  v20 = sub_10000B200();
  v21 = sub_10000B310();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    v23 = [objc_opt_self() sharedConnection];
    if (!v23)
    {
      __break(1u);
      return _swift_task_switch(v23, v24, v25);
    }

    v26 = v23;
    v27 = [v23 effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];

    *(v22 + 4) = v27 == 1;
    _os_log_impl(&_mh_execute_header, v20, v21, "D&U enabled: %{BOOL}d", v22, 8u);
  }

  *(v0 + 159) = 1;
  v25 = *(v0 + 752);
  v24 = *(v0 + 744);
  v23 = sub_100003180;

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_100003180()
{
  sub_10000B090();

  return _swift_task_switch(sub_100003228, 0, 0);
}

uint64_t sub_100003228()
{
  v66 = v0;
  v1 = sub_10000B1B0();
  if (!v2)
  {
LABEL_9:
    if ((sub_10000B2F0() & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_10000B200();
  v6 = sub_10000B310();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v65[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100008FDC(v3, v4, v65);
    _os_log_impl(&_mh_execute_header, v5, v6, "taskFolder available: %s", v7, 0xCu);
    sub_100009D20(v8);
  }

  v9 = [objc_opt_self() defaultManager];
  v10 = sub_10000B240();

  *(v0 + 352) = 0;
  v11 = [v9 contentsOfDirectoryAtPath:v10 error:v0 + 352];

  v12 = *(v0 + 352);
  if (!v11)
  {
    v22 = v12;
    sub_10000AF50();

    swift_willThrow();

    goto LABEL_9;
  }

  sub_10000B2C0();
  v13 = v12;

  v14 = sub_10000B200();
  v15 = sub_10000B320();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v65[0] = v17;
    *v16 = 136315138;
    v18 = sub_10000B2D0();
    v20 = v19;

    v21 = sub_100008FDC(v18, v20, v65);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "taskFolder contents: %s", v16, 0xCu);
    sub_100009D20(v17);

    if ((sub_10000B2F0() & 1) == 0)
    {
LABEL_16:
      v40 = *(v0 + 624);
      v41 = *(v0 + 616);
      v42 = *(v0 + 608);
      v43 = *(v0 + 600);
      v44 = *(v0 + 592);
      v45 = *(v0 + 584);
      sub_10000B150();
      sub_10000B1E0();
      (*(v43 + 8))(v42, v44);
      if ((*(v40 + 48))(v45, 1, v41) == 1)
      {
        sub_100009E70(*(v0 + 584), &qword_100014100, &qword_10000BB28);
        *(v0 + 816) = 0;
        sub_10000B140();
        *(v0 + 207) = *(v0 + 154);
        sub_10000B140();
        *(v0 + 230) = *(v0 + 179);
        sub_10000B140();
        v46 = *(v0 + 201);
        if (v46 == 2 || (v46 & 1) == 0)
        {
          sub_10000B140();
          *(v0 + 231) = *(v0 + 228);
          sub_10000B140();
          *(v0 + 928) = *(v0 + 240);
          *(v0 + 254) = *(v0 + 248);
          sub_100009584(0.5, 2.0);
          *(v0 + 936) = v61;
          *(v0 + 182) = 2;
          v62 = *(v0 + 752);
          v63 = *(v0 + 744);

          return _swift_task_switch(sub_100004960, v63, v62);
        }

        else
        {
          *(v0 + 824) = sub_10000B0D0();
          *(v0 + 832) = sub_10000B0C0();
          v47 = sub_10000B1D0();
          v49 = v48;
          *(v0 + 840) = v48;
          v50 = _s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu;
          v51 = swift_task_alloc();
          *(v0 + 848) = v51;
          *v51 = v0;
          v51[1] = sub_1000040BC;
          v52 = *(v0 + 552);

          return ((&_s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu + v50))(0x6F57656C706D6153, 0xEC00000072656B72, v47, v49, 0, 0, 0, v52);
        }
      }

      else
      {
        (*(*(v0 + 624) + 32))(*(v0 + 632), *(v0 + 584), *(v0 + 616));
        sub_10000B080();
        v53 = sub_10000B190();
        v55 = v54;
        *(v0 + 784) = v54;
        v56 = sub_10000B180();
        v58 = v57;
        *(v0 + 792) = v57;
        v59 = swift_task_alloc();
        *(v0 + 800) = v59;
        *v59 = v0;
        v59[1] = sub_100003B64;
        v60 = *(v0 + 360);

        return static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(v60, v53, v55, v56, v58);
      }
    }
  }

  else
  {

    if ((sub_10000B2F0() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_10:
  v23 = *(v0 + 360);

  v24 = v23;
  v25 = sub_10000B200();
  v26 = sub_10000B310();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v27 = 136315394;
    v28 = sub_10000B1C0();
    v30 = sub_100008FDC(v28, v29, v65);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    v31 = sub_10000B1D0();
    v33 = sub_100008FDC(v31, v32, v65);

    *(v27 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "TaskId: %s, TaskName: %s: asked to stop!", v27, 0x16u);
    swift_arrayDestroy();
  }

  v34 = *(v0 + 776);
  v35 = *(v0 + 672);
  v36 = *(v0 + 648);
  v65[3] = &type metadata for SampleWorkerError;
  v65[4] = sub_100009C24();
  LOBYTE(v65[0]) = 0;
  v37 = objc_allocWithZone(sub_10000B100());
  v64 = sub_10000B0E0();
  v34(v35, v36);

  v38 = *(v0 + 8);

  return v38(v64);
}

uint64_t sub_100003B64(uint64_t a1)
{
  *(*v1 + 808) = a1;

  return _swift_task_switch(sub_100003CD4, 0, 0);
}

uint64_t sub_100003CD4()
{
  v26 = v0;
  v1 = *(v0 + 808);
  (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
  if (v1)
  {

    v2 = sub_10000B200();
    v3 = sub_10000B310();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 576);
      v5 = *(v0 + 568);
      v6 = *(v0 + 560);
      v7 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v7 = 136315138;
      sub_10000B070();
      sub_100009E28(&qword_100014148, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v8 = sub_10000B450();
      v10 = v9;
      (*(v5 + 8))(v4, v6);
      v11 = sub_100008FDC(v8, v10, &v25);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v2, v3, "autoAsset available: %s", v7, 0xCu);
      sub_100009D20(v24);
    }

    else
    {
    }

    v12 = *(v0 + 808);
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 816) = v12;
  sub_10000B140();
  *(v0 + 207) = *(v0 + 154);
  sub_10000B140();
  *(v0 + 230) = *(v0 + 179);
  sub_10000B140();
  v13 = *(v0 + 201);
  if (v13 == 2 || (v13 & 1) == 0)
  {
    sub_10000B140();
    *(v0 + 231) = *(v0 + 228);
    sub_10000B140();
    *(v0 + 928) = *(v0 + 240);
    *(v0 + 254) = *(v0 + 248);
    sub_100009584(0.5, 2.0);
    *(v0 + 936) = v21;
    *(v0 + 182) = 2;
    v22 = *(v0 + 752);
    v23 = *(v0 + 744);

    return _swift_task_switch(sub_100004960, v23, v22);
  }

  else
  {
    *(v0 + 824) = sub_10000B0D0();
    *(v0 + 832) = sub_10000B0C0();
    v14 = sub_10000B1D0();
    v16 = v15;
    *(v0 + 840) = v15;
    v17 = _s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu;
    v18 = swift_task_alloc();
    *(v0 + 848) = v18;
    *v18 = v0;
    v18[1] = sub_1000040BC;
    v19 = *(v0 + 552);

    return ((&_s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu + v17))(0x6F57656C706D6153, 0xEC00000072656B72, v14, v16, 0, 0, 0, v19);
  }
}

uint64_t sub_1000040BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[107] = a1;
  v4[108] = a2;

  if (v2)
  {
    (*(v4[64] + 8))(v4[69], v4[63]);

    v5 = sub_100006F64;
  }

  else
  {

    v5 = sub_100004278;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100004278(uint64_t a1)
{
  v39 = v1;
  v2 = *(v1 + 864);
  if (v2 >> 60 != 15)
  {
    sub_100009DD4(*(v1 + 856), *(v1 + 864));
    sub_10000B270();
    v3 = sub_10000B260();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      v7 = sub_10000B200();
      v8 = sub_10000B310();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v1 + 864);
      v11 = *(v1 + 856);
      if (v9)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v38 = v13;
        *v12 = 136315138;
        v14 = sub_100008FDC(v6, v5, &v38);

        *(v12 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v7, v8, "dictionaryService existing value: %s", v12, 0xCu);
        sub_100009D20(v13);

        sub_100009D6C(v11, v10);
      }

      else
      {
        sub_100009D6C(*(v1 + 856), *(v1 + 864));
      }
    }

    else
    {
      sub_100009D6C(*(v1 + 856), *(v1 + 864));
    }

    v2 = *(v1 + 864);
  }

  v15 = *(v1 + 856);
  *(v1 + 880) = v2;
  v34 = v2;
  v35 = v15;
  *(v1 + 872) = v15;
  v16 = *(v1 + 488);
  v17 = *(v1 + 496);
  v18 = *(v1 + 472);
  v19 = *(v1 + 464);
  v36 = *(v1 + 456);
  v37 = *(v1 + 480);
  v20 = *(v1 + 440);
  v21 = *(v1 + 448);
  v22 = *(v1 + 432);
  sub_10000AFE0();
  sub_100007C1C(v21);
  sub_10000AF70();
  (*(v20 + 8))(v21, v22);
  (*(v19 + 8))(v18, v36);
  sub_10000B270();
  v23 = sub_10000B250();
  v25 = v24;

  *(v1 + 888) = v23;
  *(v1 + 896) = v25;
  (*(v16 + 8))(v17, v37);
  if (v25 >> 60 != 15)
  {
    *(v1 + 904) = sub_10000B0C0();
    sub_10000B1D0();
    *(v1 + 912) = v29;
    v30 = _s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTjTu;
    v31 = swift_task_alloc();
    *(v1 + 920) = v31;
    *v31 = v1;
    v31[1] = sub_1000046B0;
    v32 = *(v1 + 544);
    v42 = 0;
    v43 = 0;
    v44 = v32;
    v41 = 1;

    __asm { BR              X9 }
  }

  sub_100009D6C(v35, v34);
  sub_10000B140();
  *(v1 + 231) = *(v1 + 228);
  sub_10000B140();
  *(v1 + 928) = *(v1 + 240);
  *(v1 + 254) = *(v1 + 248);
  sub_100009584(0.5, 2.0);
  *(v1 + 936) = v26;
  *(v1 + 182) = 2;
  v27 = *(v1 + 752);
  v28 = *(v1 + 744);

  return _swift_task_switch(sub_100004960, v28, v27);
}

uint64_t sub_1000046B0()
{
  v2 = *v1;

  if (v0)
  {
    (*(v2[64] + 8))(v2[68], v2[63]);

    v3 = sub_10000AEDC;
  }

  else
  {

    v3 = sub_10000485C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000485C()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  sub_100009D6C(*(v0 + 872), *(v0 + 880));
  sub_100009D6C(v2, v1);
  sub_10000B140();
  *(v0 + 231) = *(v0 + 228);
  sub_10000B140();
  *(v0 + 928) = *(v0 + 240);
  *(v0 + 254) = *(v0 + 248);
  sub_100009584(0.5, 2.0);
  *(v0 + 936) = v3;
  *(v0 + 182) = 2;
  v4 = *(v0 + 752);
  v5 = *(v0 + 744);

  return _swift_task_switch(sub_100004960, v5, v4);
}

uint64_t sub_100004960()
{
  sub_10000B090();

  return _swift_task_switch(sub_100004A08, 0, 0);
}

uint64_t sub_100004A08(uint64_t a1)
{
  *(v1 + 944) = 0;
  if (sub_10000B2F0())
  {

    *(v1 + 278) = 0;
    *(v1 + 1048) = 0;
    *(v1 + 183) = 3;
    v2 = *(v1 + 752);
    v3 = *(v1 + 744);

    return _swift_task_switch(sub_10000698C, v3, v2);
  }

  else
  {
    v4 = *(v1 + 207);

    v5 = sub_10000B1C0();
    v7 = v6;
    *(v1 + 952) = v5;
    *(v1 + 960) = v6;
    if (v4)
    {
      v8 = *(v1 + 712);
      v9 = *(v1 + 704);
      sub_10000B0D0();
      *(v1 + 968) = sub_10000B0C0();
      *(v1 + 96) = v9;
      *(v1 + 104) = v8;
      *(v1 + 112) = v5;
      *(v1 + 120) = v7;
      *(v1 + 128) = 0;
      v10 = _s20LighthouseBackground12MLHostClientC10dsListPush5group3key5value10timeToLiveSbSS_SSxs8DurationVSgtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v11 = swift_task_alloc();
      *(v1 + 976) = v11;
      sub_100009C78();
      sub_100009CCC();
      *v11 = v1;
      v11[1] = sub_100004FF8;

      __asm { BR              X9 }
    }

    if (*(v1 + 230))
    {
      sub_10000B0D0();
      *(v1 + 984) = sub_10000B0C0();
      v12 = _s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v13 = swift_task_alloc();
      *(v1 + 992) = v13;
      sub_100009C78();
      sub_100009CCC();
      *v13 = v1;
      v13[1] = sub_100005650;

      __asm { BR              X9 }
    }

    v14 = *(v1 + 712);
    if (*(v1 + 231))
    {
      v15 = *(v1 + 944);
      v16 = *(v1 + 704);
      sub_10000B0D0();
      *(v1 + 1000) = sub_10000B0C0();
      *(v1 + 16) = v16;
      *(v1 + 24) = v14;
      *(v1 + 32) = v5;
      *(v1 + 40) = v7;
      *(v1 + 48) = v15;
      v17 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v18 = swift_task_alloc();
      *(v1 + 1008) = v18;
      v19 = sub_100009C78();
      v20 = sub_100009CCC();
      *v18 = v1;
      v18[1] = sub_100005D14;
      v21 = *(v1 + 520);

      return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v17))(0xD000000000000023, 0x800000010000C0C0, v1 + 16, &type metadata for SampleWorkerMessage, v19, v20, v21);
    }

    else
    {

      v23 = *(v1 + 384);
      v22 = *(v1 + 392);
      v24 = *(v1 + 376);
      sub_10000B4A0();
      *(v1 + 304) = xmmword_10000B920;
      *(v1 + 280) = 0;
      *(v1 + 288) = 0;
      *(v1 + 296) = 1;
      v25 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
      sub_10000B480();
      sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
      sub_10000B390();
      v26 = *(v23 + 8);
      *(v1 + 1016) = v26;
      *(v1 + 1024) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v26(v22, v24);
      v27 = swift_task_alloc();
      *(v1 + 1032) = v27;
      *v27 = v1;
      v27[1] = sub_100006070;
      v29 = *(v1 + 400);
      v28 = *(v1 + 408);

      return dispatch thunk of Clock.sleep(until:tolerance:)(v29, v1 + 280, v28, v25);
    }
  }
}

uint64_t sub_100004FF8(char a1)
{
  v4 = *v2;

  if (v1)
  {
    (*(*(v4 + 512) + 8))(*(v4 + 536), *(v4 + 504));

    v5 = sub_10000724C;
  }

  else
  {

    *(v4 + 255) = a1 & 1;
    v5 = sub_100005174;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100005174()
{
  v1 = *(v0 + 255);

  v2 = sub_10000B200();
  v3 = sub_10000B310();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 944);
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = v4;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "Donating message %f to queue: %{BOOL}d", v5, 0x12u);
  }

  if (*(v0 + 230))
  {
    sub_10000B0D0();
    *(v0 + 984) = sub_10000B0C0();
    v6 = _s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v7 = swift_task_alloc();
    *(v0 + 992) = v7;
    sub_100009C78();
    sub_100009CCC();
    *v7 = v0;
    v7[1] = sub_100005650;

    __asm { BR              X9 }
  }

  if (*(v0 + 231))
  {
    v8 = *(v0 + 960);
    v9 = *(v0 + 952);
    v10 = *(v0 + 944);
    v25 = *(v0 + 704);
    sub_10000B0D0();
    *(v0 + 1000) = sub_10000B0C0();
    *(v0 + 16) = v25;
    *(v0 + 32) = v9;
    *(v0 + 40) = v8;
    *(v0 + 48) = v10;
    v11 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v12 = swift_task_alloc();
    *(v0 + 1008) = v12;
    v13 = sub_100009C78();
    v14 = sub_100009CCC();
    *v12 = v0;
    v12[1] = sub_100005D14;
    v15 = *(v0 + 520);

    return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v11))(0xD000000000000023, 0x800000010000C0C0, v0 + 16, &type metadata for SampleWorkerMessage, v13, v14, v15);
  }

  else
  {

    v18 = *(v0 + 384);
    v17 = *(v0 + 392);
    v19 = *(v0 + 376);
    sub_10000B4A0();
    *(v0 + 304) = xmmword_10000B920;
    *(v0 + 280) = 0;
    *(v0 + 288) = 0;
    *(v0 + 296) = 1;
    v20 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    sub_10000B480();
    sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    sub_10000B390();
    v21 = *(v18 + 8);
    *(v0 + 1016) = v21;
    *(v0 + 1024) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v17, v19);
    v22 = swift_task_alloc();
    *(v0 + 1032) = v22;
    *v22 = v0;
    v22[1] = sub_100006070;
    v24 = *(v0 + 400);
    v23 = *(v0 + 408);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v24, v0 + 280, v23, v20);
  }
}

uint64_t sub_100005650()
{
  v2 = *v1;

  if (v0)
  {
    (*(v2[64] + 8))(v2[66], v2[63]);

    v3 = sub_100007724;
  }

  else
  {

    v3 = sub_1000057D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000057D8()
{
  v31 = v0;
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 56);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);

    v5 = sub_10000B200();
    v6 = sub_10000B310();

    if (!os_log_type_enabled(v5, v6))
    {

      if (*(v0 + 231))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    v27 = v4;
    v7 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v7 = 136315138;
    *(v0 + 336) = 0;
    *(v0 + 344) = 0xE000000000000000;
    sub_10000B350(47);
    v8 = *(v0 + 344);
    *(v0 + 320) = *(v0 + 336);
    *(v0 + 328) = v8;
    v33._countAndFlagsBits = 0xD000000000000013;
    v33._object = 0x800000010000BAC0;
    sub_10000B2A0(v33);
    v34._object = 0x800000010000C080;
    v34._countAndFlagsBits = 0xD000000000000010;
    sub_10000B2A0(v34);
    v35._countAndFlagsBits = v2;
    v35._object = v1;
    sub_10000B2A0(v35);
    v36._countAndFlagsBits = 0x64496B736174202CLL;
    v36._object = 0xEA0000000000203ALL;
    sub_10000B2A0(v36);
    v37._countAndFlagsBits = v27;
    v37._object = v3;
    sub_10000B2A0(v37);
    v38._countAndFlagsBits = 0x697461727564202CLL;
    v38._object = 0xEC000000203A6E6FLL;
    sub_10000B2A0(v38);
    sub_10000B300();
    v39._countAndFlagsBits = 41;
    v39._object = 0xE100000000000000;
    sub_10000B2A0(v39);

    v9 = sub_100008FDC(*(v0 + 320), *(v0 + 328), &v30);

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetched message from queue: %s", v7, 0xCu);
    sub_100009D20(v28);
  }

  if (*(v0 + 231))
  {
LABEL_5:
    v10 = *(v0 + 960);
    v11 = *(v0 + 952);
    v12 = *(v0 + 944);
    v29 = *(v0 + 704);
    sub_10000B0D0();
    *(v0 + 1000) = sub_10000B0C0();
    *(v0 + 16) = v29;
    *(v0 + 32) = v11;
    *(v0 + 40) = v10;
    *(v0 + 48) = v12;
    v13 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v14 = swift_task_alloc();
    *(v0 + 1008) = v14;
    v15 = sub_100009C78();
    v16 = sub_100009CCC();
    *v14 = v0;
    v14[1] = sub_100005D14;
    v17 = *(v0 + 520);

    return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v13))(0xD000000000000023, 0x800000010000C0C0, v0 + 16, &type metadata for SampleWorkerMessage, v15, v16, v17);
  }

LABEL_9:

  v20 = *(v0 + 384);
  v19 = *(v0 + 392);
  v21 = *(v0 + 376);
  sub_10000B4A0();
  *(v0 + 304) = xmmword_10000B920;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 1;
  v22 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_10000B480();
  sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_10000B390();
  v23 = *(v20 + 8);
  *(v0 + 1016) = v23;
  *(v0 + 1024) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v19, v21);
  v24 = swift_task_alloc();
  *(v0 + 1032) = v24;
  *v24 = v0;
  v24[1] = sub_100006070;
  v26 = *(v0 + 400);
  v25 = *(v0 + 408);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v26, v0 + 280, v25, v22);
}

uint64_t sub_100005D14()
{
  v2 = *v1;

  if (v0)
  {
    (*(v2[64] + 8))(v2[65], v2[63]);

    v3 = sub_100007A34;
  }

  else
  {

    v3 = sub_100005E9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100005E9C(uint64_t a1)
{
  v3 = *(v1 + 384);
  v2 = *(v1 + 392);
  v4 = *(v1 + 376);
  sub_10000B4A0();
  *(v1 + 304) = xmmword_10000B920;
  *(v1 + 280) = 0;
  *(v1 + 288) = 0;
  *(v1 + 296) = 1;
  v5 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_10000B480();
  sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_10000B390();
  v6 = *(v3 + 8);
  *(v1 + 1016) = v6;
  *(v1 + 1024) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = swift_task_alloc();
  *(v1 + 1032) = v7;
  *v7 = v1;
  v7[1] = sub_100006070;
  v9 = *(v1 + 400);
  v8 = *(v1 + 408);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v9, v1 + 280, v8, v5);
}

uint64_t sub_100006070()
{
  v2 = *v1;
  *(*v1 + 1040) = v0;

  if (v0)
  {
    (*(v2 + 1016))(*(v2 + 400), *(v2 + 376));

    v3 = sub_100006848;
  }

  else
  {
    v5 = *(v2 + 416);
    v4 = *(v2 + 424);
    v6 = *(v2 + 408);
    (*(v2 + 1016))(*(v2 + 400), *(v2 + 376));
    (*(v5 + 8))(v4, v6);
    v3 = sub_100006210;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100006210(uint64_t a1)
{
  v2 = *(v1 + 944);
  v3 = *(v1 + 928);
  if (*(v1 + 254))
  {
    v3 = 10.0;
  }

  if (v3 - *(v1 + 936) < 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3 - *(v1 + 936);
  }

  v5 = v2 + 0.25;
  if (v4 <= v2 + 0.25 || (*(v1 + 944) = v5, (sub_10000B2F0() & 1) != 0))
  {

    *(v1 + 278) = v4 <= v5;
    *(v1 + 1048) = v5;
    *(v1 + 183) = 3;
    v6 = *(v1 + 752);
    v7 = *(v1 + 744);

    return _swift_task_switch(sub_10000698C, v7, v6);
  }

  else
  {
    v8 = *(v1 + 207);

    v9 = sub_10000B1C0();
    v11 = v10;
    *(v1 + 952) = v9;
    *(v1 + 960) = v10;
    if (v8)
    {
      v12 = *(v1 + 712);
      v13 = *(v1 + 704);
      sub_10000B0D0();
      *(v1 + 968) = sub_10000B0C0();
      *(v1 + 96) = v13;
      *(v1 + 104) = v12;
      *(v1 + 112) = v9;
      *(v1 + 120) = v11;
      *(v1 + 128) = v5;
      v14 = _s20LighthouseBackground12MLHostClientC10dsListPush5group3key5value10timeToLiveSbSS_SSxs8DurationVSgtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v15 = swift_task_alloc();
      *(v1 + 976) = v15;
      sub_100009C78();
      sub_100009CCC();
      *v15 = v1;
      v15[1] = sub_100004FF8;

      __asm { BR              X9 }
    }

    if (*(v1 + 230))
    {
      sub_10000B0D0();
      *(v1 + 984) = sub_10000B0C0();
      v16 = _s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v17 = swift_task_alloc();
      *(v1 + 992) = v17;
      sub_100009C78();
      sub_100009CCC();
      *v17 = v1;
      v17[1] = sub_100005650;

      __asm { BR              X9 }
    }

    v18 = *(v1 + 712);
    if (*(v1 + 231))
    {
      v19 = *(v1 + 944);
      v20 = *(v1 + 704);
      sub_10000B0D0();
      *(v1 + 1000) = sub_10000B0C0();
      *(v1 + 16) = v20;
      *(v1 + 24) = v18;
      *(v1 + 32) = v9;
      *(v1 + 40) = v11;
      *(v1 + 48) = v19;
      v21 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v22 = swift_task_alloc();
      *(v1 + 1008) = v22;
      v23 = sub_100009C78();
      v24 = sub_100009CCC();
      *v22 = v1;
      v22[1] = sub_100005D14;
      v25 = *(v1 + 520);

      return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v21))(0xD000000000000023, 0x800000010000C0C0, v1 + 16, &type metadata for SampleWorkerMessage, v23, v24, v25);
    }

    else
    {

      v27 = *(v1 + 384);
      v26 = *(v1 + 392);
      v28 = *(v1 + 376);
      sub_10000B4A0();
      *(v1 + 304) = xmmword_10000B920;
      *(v1 + 280) = 0;
      *(v1 + 288) = 0;
      *(v1 + 296) = 1;
      v29 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
      sub_10000B480();
      sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
      sub_10000B390();
      v30 = *(v27 + 8);
      *(v1 + 1016) = v30;
      *(v1 + 1024) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v30(v26, v28);
      v31 = swift_task_alloc();
      *(v1 + 1032) = v31;
      *v31 = v1;
      v31[1] = sub_100006070;
      v33 = *(v1 + 400);
      v32 = *(v1 + 408);

      return dispatch thunk of Clock.sleep(until:tolerance:)(v33, v1 + 280, v32, v29);
    }
  }
}

uint64_t sub_100006848()
{
  (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
  v1 = sub_10000B200();
  v2 = sub_10000B330();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Task interrupted while sleeping.", v3, 2u);
  }

  v4 = *(v0 + 944);
  *(v0 + 278) = 0;
  *(v0 + 1048) = v4;
  *(v0 + 183) = 3;
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);

  return _swift_task_switch(sub_10000698C, v6, v5);
}

uint64_t sub_10000698C()
{
  sub_10000B090();

  return _swift_task_switch(sub_100006A34, 0, 0);
}

uint64_t sub_100006A34()
{
  v16 = v0;
  v1 = *(v0 + 360);
  v2 = sub_10000B200();
  v3 = sub_10000B310();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1048);
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = sub_10000B1C0();
    v8 = sub_100008FDC(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_10000B1D0();
    v11 = sub_100008FDC(v9, v10, &v15);

    *(v5 + 14) = v11;
    *(v5 + 22) = 2048;
    *(v5 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "TaskId: %s, TaskName: %s: currentDuration: %f", v5, 0x20u);
    swift_arrayDestroy();
  }

  *(v0 + 206) = 4;
  v12 = *(v0 + 752);
  v13 = *(v0 + 744);

  return _swift_task_switch(sub_100006C08, v13, v12);
}

uint64_t sub_100006C08()
{
  sub_10000B090();

  return _swift_task_switch(sub_100006CB0, 0, 0);
}

uint64_t sub_100006CB0()
{
  sub_10000B140();
  v1 = *(v0 + 256);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v2 = *(v0 + 776);
    v8 = *(v0 + 672);
    v9 = *(v0 + 648);
    if (*(v0 + 278) == 1)
    {
      v10 = objc_allocWithZone(sub_10000B100());
      v11 = sub_10000B0F0();
    }

    else
    {
      sub_100009C24();
      v12 = objc_allocWithZone(sub_10000B100());
      v11 = sub_10000B0E0();
    }

    v15 = v11;

    v6 = v8;
    v7 = v9;
  }

  else
  {
    v2 = *(v0 + 776);
    v3 = *(v0 + 672);
    v4 = *(v0 + 648);
    v5 = objc_allocWithZone(sub_10000B100());
    v15 = sub_10000B0F0();

    v6 = v3;
    v7 = v4;
  }

  v2(v6, v7);

  v13 = *(v0 + 8);

  return v13(v15);
}

uint64_t sub_100006F64(uint64_t a1)
{
  *(v1 + 880) = 0xF000000000000000;
  *(v1 + 872) = 0;
  v3 = *(v1 + 488);
  v2 = *(v1 + 496);
  v4 = *(v1 + 472);
  v5 = *(v1 + 464);
  v19 = *(v1 + 456);
  v20 = *(v1 + 480);
  v6 = *(v1 + 440);
  v7 = *(v1 + 448);
  v8 = *(v1 + 432);
  sub_10000AFE0();
  sub_100007C1C(v7);
  sub_10000AF70();
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v4, v19);
  sub_10000B270();
  v9 = sub_10000B250();
  v11 = v10;

  *(v1 + 888) = v9;
  *(v1 + 896) = v11;
  (*(v3 + 8))(v2, v20);
  if (v11 >> 60 != 15)
  {
    *(v1 + 904) = sub_10000B0C0();
    sub_10000B1D0();
    *(v1 + 912) = v15;
    v16 = _s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTjTu;
    v17 = swift_task_alloc();
    *(v1 + 920) = v17;
    *v17 = v1;
    v17[1] = sub_1000046B0;

    __asm { BR              X9 }
  }

  sub_100009D6C(0, 0xF000000000000000);
  sub_10000B140();
  *(v1 + 231) = *(v1 + 228);
  sub_10000B140();
  *(v1 + 928) = *(v1 + 240);
  *(v1 + 254) = *(v1 + 248);
  sub_100009584(0.5, 2.0);
  *(v1 + 936) = v12;
  *(v1 + 182) = 2;
  v13 = *(v1 + 752);
  v14 = *(v1 + 744);

  return _swift_task_switch(sub_100004960, v14, v13);
}

uint64_t sub_10000724C()
{

  v1 = sub_10000B200();
  v2 = sub_10000B310();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 944);
    v4 = swift_slowAlloc();
    *v4 = 134218240;
    *(v4 + 4) = v3;
    *(v4 + 12) = 1024;
    *(v4 + 14) = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Donating message %f to queue: %{BOOL}d", v4, 0x12u);
  }

  if (*(v0 + 230))
  {
    sub_10000B0D0();
    *(v0 + 984) = sub_10000B0C0();
    v5 = _s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v6 = swift_task_alloc();
    *(v0 + 992) = v6;
    sub_100009C78();
    sub_100009CCC();
    *v6 = v0;
    v6[1] = sub_100005650;

    __asm { BR              X9 }
  }

  if (*(v0 + 231))
  {
    v7 = *(v0 + 960);
    v8 = *(v0 + 952);
    v9 = *(v0 + 944);
    v24 = *(v0 + 704);
    sub_10000B0D0();
    *(v0 + 1000) = sub_10000B0C0();
    *(v0 + 16) = v24;
    *(v0 + 32) = v8;
    *(v0 + 40) = v7;
    *(v0 + 48) = v9;
    v10 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v11 = swift_task_alloc();
    *(v0 + 1008) = v11;
    v12 = sub_100009C78();
    v13 = sub_100009CCC();
    *v11 = v0;
    v11[1] = sub_100005D14;
    v14 = *(v0 + 520);

    return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v10))(0xD000000000000023, 0x800000010000C0C0, v0 + 16, &type metadata for SampleWorkerMessage, v12, v13, v14);
  }

  else
  {

    v17 = *(v0 + 384);
    v16 = *(v0 + 392);
    v18 = *(v0 + 376);
    sub_10000B4A0();
    *(v0 + 304) = xmmword_10000B920;
    *(v0 + 280) = 0;
    *(v0 + 288) = 0;
    *(v0 + 296) = 1;
    v19 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    sub_10000B480();
    sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    sub_10000B390();
    v20 = *(v17 + 8);
    *(v0 + 1016) = v20;
    *(v0 + 1024) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v16, v18);
    v21 = swift_task_alloc();
    *(v0 + 1032) = v21;
    *v21 = v0;
    v21[1] = sub_100006070;
    v23 = *(v0 + 400);
    v22 = *(v0 + 408);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v23, v0 + 280, v22, v19);
  }
}

uint64_t sub_100007724()
{
  if (*(v0 + 231))
  {
    v1 = *(v0 + 960);
    v2 = *(v0 + 952);
    v3 = *(v0 + 944);
    v18 = *(v0 + 704);
    sub_10000B0D0();
    *(v0 + 1000) = sub_10000B0C0();
    *(v0 + 16) = v18;
    *(v0 + 32) = v2;
    *(v0 + 40) = v1;
    *(v0 + 48) = v3;
    v4 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v5 = swift_task_alloc();
    *(v0 + 1008) = v5;
    v6 = sub_100009C78();
    v7 = sub_100009CCC();
    *v5 = v0;
    v5[1] = sub_100005D14;
    v8 = *(v0 + 520);

    return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v4))(0xD000000000000023, 0x800000010000C0C0, v0 + 16, &type metadata for SampleWorkerMessage, v6, v7, v8);
  }

  else
  {

    v11 = *(v0 + 384);
    v10 = *(v0 + 392);
    v12 = *(v0 + 376);
    sub_10000B4A0();
    *(v0 + 304) = xmmword_10000B920;
    *(v0 + 280) = 0;
    *(v0 + 288) = 0;
    *(v0 + 296) = 1;
    v13 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    sub_10000B480();
    sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    sub_10000B390();
    v14 = *(v11 + 8);
    *(v0 + 1016) = v14;
    *(v0 + 1024) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v10, v12);
    v15 = swift_task_alloc();
    *(v0 + 1032) = v15;
    *v15 = v0;
    v15[1] = sub_100006070;
    v17 = *(v0 + 400);
    v16 = *(v0 + 408);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v17, v0 + 280, v16, v13);
  }
}

uint64_t sub_100007A34()
{

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  sub_10000B4A0();
  *(v0 + 304) = xmmword_10000B920;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 1;
  v4 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_10000B480();
  sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_10000B390();
  v5 = *(v2 + 8);
  *(v0 + 1016) = v5;
  *(v0 + 1024) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  *(v0 + 1032) = v6;
  *v6 = v0;
  v6[1] = sub_100006070;
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 280, v7, v4);
}

uint64_t sub_100007C1C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  sub_100008A34(&qword_100014160, &qword_10000BB40);
  __chkstk_darwin();
  v27 = &v22 - v1;
  v26 = sub_10000B040();
  v2 = *(v26 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000AFC0();
  v4 = *(v25 - 8);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000AFA0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000AF80();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AF90();
  __chkstk_darwin();
  (*(v16 + 104))(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:));
  v17 = v11;
  v18 = v26;
  (*(v12 + 104))(v14, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v17);
  v19 = v6;
  v20 = v27;
  (*(v8 + 104))(v10, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v7);
  (*(v4 + 104))(v19, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v25);
  sub_10000B030();
  result = (*(v2 + 48))(v20, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v23, v20, v18);
    return sub_10000AFB0();
  }

  return result;
}

uint64_t sub_100008020@<X0>(uint64_t a4@<X8>)
{
  sub_100008C40();
  sub_100008C94();
  sub_10000B130();
  v5 = *(type metadata accessor for SampleWorker(0) + 20);
  sub_10000B0B0();
  result = sub_10000B0A0();
  *(a4 + v5) = result;
  return result;
}

uint64_t sub_1000080CC()
{
  objc_allocWithZone(sub_10000B100());
  v1 = sub_10000B0F0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100008140(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000081D4;

  return sub_1000023AC(a1);
}

uint64_t sub_1000081D4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000082D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000083B4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000083B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000084A8(uint64_t a1)
{
  v2 = sub_100009E28(&qword_1000140C8, type metadata accessor for SampleWorker, &unk_10000B9C0);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100008528(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000B540();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v29 + 1) = &type metadata for SampleWorkerConfig;
  LOBYTE(v28) = a1;
  *(&v28 + 1) = a2;
  WORD2(v29) = WORD2(a3);
  LODWORD(v29) = a3;
  sub_10000B520();
  v10 = sub_10000B530();
  (*(v7 + 8))(v9, v6);
  v22[1] = v10;
  sub_10000B3A0();
  sub_10000B3B0();
  if (*(&v30 + 1))
  {
    v11 = &_swiftEmptyArrayStorage;
    do
    {
      v25 = v28;
      v26 = v29;
      v27 = v30;
      v12._object = *(&v28 + 1);
      if (*(&v28 + 1))
      {
        v12._countAndFlagsBits = v25;
        v23 = 0;
        v24 = 0xE000000000000000;
        sub_10000B2A0(v12);
        v31._countAndFlagsBits = 8250;
        v31._object = 0xE200000000000000;
        sub_10000B2A0(v31);
        sub_100009B00(&v26, *(&v27 + 1));
        sub_10000B460();
        v13 = v23;
        v14 = v24;
        sub_100009E70(&v25, &qword_1000140E0, &qword_10000BB00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100008ECC(0, *(v11 + 2) + 1, 1, v11);
        }

        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        if (v16 >= v15 >> 1)
        {
          v11 = sub_100008ECC((v15 > 1), v16 + 1, 1, v11);
        }

        *(v11 + 2) = v16 + 1;
        v17 = &v11[16 * v16];
        *(v17 + 4) = v13;
        *(v17 + 5) = v14;
      }

      else
      {
        sub_100009E70(&v25, &qword_1000140E0, &qword_10000BB00);
      }

      sub_10000B3B0();
    }

    while (*(&v30 + 1));
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  *&v28 = 0xD000000000000013;
  *(&v28 + 1) = 0x800000010000C0A0;
  *&v25 = v11;
  sub_100008A34(&qword_1000140D0, "d\a");
  sub_10000A4FC(&qword_1000140D8, &qword_1000140D0, "d\a", &protocol conformance descriptor for [A]);
  v18 = sub_10000B230();
  v20 = v19;

  v32._countAndFlagsBits = v18;
  v32._object = v20;
  sub_10000B2A0(v32);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  sub_10000B2A0(v33);
  return v28;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for SampleWorker(0);
  sub_100009E28(&qword_100014020, type metadata accessor for SampleWorker, &unk_10000BAA0);
  sub_10000B050();
  return 0;
}

uint64_t type metadata accessor for SampleWorker(uint64_t a1)
{
  result = qword_1000141D8;
  if (!qword_1000141D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000896C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100008A34(&qword_100014028, &unk_10000B930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100008A34(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100008A34(&qword_100014028, &unk_10000B930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100008B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100008BD8(319, a2, a3);
  if (v3 <= 0x3F)
  {
    sub_10000B0B0();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100008BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_100014088)
  {
    sub_100008C40();
    sub_100008C94();
    v3 = sub_10000B160();
    if (!v4)
    {
      atomic_store(v3, &qword_100014088);
    }
  }
}

unint64_t sub_100008C40()
{
  result = qword_100014090;
  if (!qword_100014090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014090);
  }

  return result;
}

unint64_t sub_100008C94()
{
  result = qword_100014098;
  if (!qword_100014098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014098);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SampleWorkerConfig(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SampleWorkerConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[22])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleWorkerConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 22) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 22) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100008E84(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_100008ECC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008A34(&qword_1000140E8, &qword_10000BB08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100008FDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000090A8(v11, 0, 0, 1, a1, a2);
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
    sub_100009ED0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009D20(v11);
  return v7;
}

unint64_t sub_1000090A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000091B4(a5, a6);
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
    result = sub_10000B360();
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

char *sub_1000091B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100009200(a1, a2);
  sub_100009330(&off_100010920);
  return v3;
}

char *sub_100009200(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000941C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000B360();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000B2B0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000941C(v10, 0);
        result = sub_10000B340();
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

uint64_t sub_100009330(uint64_t result)
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

  result = sub_100009490(result, v11, 1, v3);
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

void *sub_10000941C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100008A34(&qword_100014168, &qword_10000BB48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009490(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008A34(&qword_100014168, &qword_10000BB48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void sub_100009584(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_stdlib_random();
  if (v4 * vcvtd_n_f64_u64(0, 0x35uLL) + a1 == a2)
  {
    sub_100009584(a1, a2);
  }
}

uint64_t sub_100009628(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726150776F6C6C61 && a2 == 0xEC0000006C616974;
  if (v4 || (sub_10000B470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010000C110 == a2 || (sub_10000B470() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010000C130 == a2 || (sub_10000B470() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010000C150 == a2 || (sub_10000B470() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010000C170 == a2 || (sub_10000B470() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010000C190 == a2 || (sub_10000B470() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010000C1B0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_10000B470();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100009878(void *a1)
{
  v2 = v1;
  v4 = sub_100008A34(&qword_1000140F0, &qword_10000BB10);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v11 - v6;
  sub_100009B00(a1, a1[3]);
  sub_100009B44();
  sub_10000B550();
  if (v1)
  {
    sub_100009D20(a1);
  }

  else
  {
    v21 = 0;
    v2 = sub_10000B3D0();
    v20 = 1;
    sub_10000B3E0();
    v14 = v8 & 1;
    v19 = 2;
    sub_10000B3D0();
    v18 = 3;
    sub_10000B3D0();
    v17 = 4;
    v12 = sub_10000B3D0();
    v16 = 5;
    v11[3] = sub_10000B3D0();
    v15 = 6;
    v11[2] = sub_10000B3D0();
    (*(v5 + 8))(v7, v4);
    v10 = v14;
    sub_100009D20(a1);
    v13 = v10 & 1;
  }

  return v2;
}

void *sub_100009B00(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100009B44()
{
  result = qword_1000144F0;
  if (!qword_1000144F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144F0);
  }

  return result;
}

uint64_t sub_100009B98(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100009BD0()
{
  result = qword_100014118;
  if (!qword_100014118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014118);
  }

  return result;
}

unint64_t sub_100009C24()
{
  result = qword_100014130;
  if (!qword_100014130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014130);
  }

  return result;
}

unint64_t sub_100009C78()
{
  result = qword_100014138;
  if (!qword_100014138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014138);
  }

  return result;
}

unint64_t sub_100009CCC()
{
  result = qword_100014140;
  if (!qword_100014140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014140);
  }

  return result;
}

uint64_t sub_100009D20(void *a1)
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

uint64_t sub_100009D6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009D80(a1, a2);
  }

  return a1;
}

uint64_t sub_100009D80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100009DD4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100009E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009E70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008A34(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009ED0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100009F2C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for SampleWorkerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleWorkerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleWorkerStates(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleWorkerStates(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SampleWorkerConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleWorkerConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_10000A3AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000A3C0(uint64_t a1, int a2)
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

uint64_t sub_10000A408(uint64_t result, int a2, int a3)
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

unint64_t sub_10000A464()
{
  result = qword_100014600[0];
  if (!qword_100014600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014600);
  }

  return result;
}

uint64_t sub_10000A4FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100008E84(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000A548()
{
  result = qword_100014180;
  if (!qword_100014180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014180);
  }

  return result;
}

unint64_t sub_10000A5A0()
{
  result = qword_100014188;
  if (!qword_100014188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014188);
  }

  return result;
}

unint64_t sub_10000A5F8()
{
  result = qword_100014190;
  if (!qword_100014190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014190);
  }

  return result;
}

unint64_t sub_10000A650()
{
  result = qword_100014198;
  if (!qword_100014198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014198);
  }

  return result;
}

unint64_t sub_10000A6A8()
{
  result = qword_1000141A0;
  if (!qword_1000141A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141A0);
  }

  return result;
}

unint64_t sub_10000A700()
{
  result = qword_1000141A8;
  if (!qword_1000141A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141A8);
  }

  return result;
}

unint64_t sub_10000A758()
{
  result = qword_1000141B0;
  if (!qword_1000141B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141B0);
  }

  return result;
}

unint64_t sub_10000A7B0()
{
  result = qword_100014D10;
  if (!qword_100014D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014D10);
  }

  return result;
}

unint64_t sub_10000A808()
{
  result = qword_100014D18[0];
  if (!qword_100014D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014D18);
  }

  return result;
}

unint64_t sub_10000A85C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100010860;
  v6._object = a2;
  v4 = sub_10000B3C0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000A8A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616C6572726F63 && a2 == 0xED000064496E6F69;
  if (v4 || (sub_10000B470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496B736174 && a2 == 0xE600000000000000 || (sub_10000B470() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_10000B470();

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

uint64_t sub_10000A9C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100008A34(&qword_1000141B8, &qword_10000BF38);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_100009B00(a1, a1[3]);
  sub_10000AC18();
  sub_10000B550();
  if (v2)
  {
    return sub_100009D20(a1);
  }

  v24 = 0;
  v9 = sub_10000B3F0();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  v23 = 1;
  v12 = sub_10000B3F0();
  v19 = v13;
  v22 = 2;
  sub_10000B400();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  result = sub_100009D20(a1);
  v17 = v20;
  *v20 = v21;
  v17[1] = v11;
  v18 = v19;
  v17[2] = v12;
  v17[3] = v18;
  v17[4] = v15;
  return result;
}

unint64_t sub_10000AC18()
{
  result = qword_100014DA0[0];
  if (!qword_100014DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014DA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleWorkerMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleWorkerMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000ADC0()
{
  result = qword_100014EB0[0];
  if (!qword_100014EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014EB0);
  }

  return result;
}

unint64_t sub_10000AE18()
{
  result = qword_100014FC0;
  if (!qword_100014FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014FC0);
  }

  return result;
}

unint64_t sub_10000AE70()
{
  result = qword_100014FC8[0];
  if (!qword_100014FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014FC8);
  }

  return result;
}

uint64_t sub_10000AEDC()
{

  return sub_10000485C();
}