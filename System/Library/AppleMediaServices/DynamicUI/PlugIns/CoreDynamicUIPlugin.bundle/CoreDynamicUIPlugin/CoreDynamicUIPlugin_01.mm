uint64_t sub_1D1D8()
{
  sub_209C8();
  sub_209E0();
  sub_20984();
  *v3 = v2;
  v4 = *v1;
  sub_20948();
  *v5 = v4;
  *(v6 + 336) = v0;

  if (v0)
  {
    v7 = sub_1D588;
  }

  else
  {
    v7 = sub_1D2F4;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1D2F4()
{
  sub_20A4C();
  v2 = v1[34];
  v3 = sub_20B64();
  v1[18] = v2;
  *(v3 + 16) = xmmword_92310;
  v1[21] = v0;
  v4 = v2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_8F5F4();
  }

  v7 = v1[36];
  v8 = v1[34];
  sub_8E284();

  sub_4F30(v1 + 18);
  sub_8E244();
  sub_8E2E4();

  v9 = *(v8 + OBJC_IVAR____TtC19CoreDynamicUIPlugin23BuyActionImplementation_downloadableSystemBundleIds);
  if (v9)
  {
    sub_20A4C();
    v10 = v1[34];
    *(sub_20B64() + 16) = xmmword_92310;
    v1[25] = v7;
    v1[22] = v10;
    v11 = v10;

    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(v1 + 22);
    sub_8F9E4(26);

    v16._countAndFlagsBits = sub_8F6D4();
    sub_8F654(v16);

    v1[29] = &type metadata for String;
    v1[26] = 0xD000000000000018;
    v1[27] = 0x800000000009E7F0;
    sub_8E264();
    sub_13E24((v1 + 26), &unk_C3EB0, &qword_92380);
    sub_8E2E4();

    sub_1D774(v9);
  }

  sub_CDAC((v1 + 6));

  sub_20978();
  sub_20AF0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D588(uint64_t a1)
{
  sub_20A4C();
  v3 = v2[34];
  v4 = swift_allocObject();
  v2[10] = v3;
  *(v4 + 16) = xmmword_92310;
  v2[13] = v1;
  v5 = v3;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v2 + 10);
  sub_8E214();
  v14._object = 0x800000000009E7A0;
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  sub_8E204(v14);
  swift_getErrorValue();
  v8 = v2[30];
  v9 = v2[31];
  v2[17] = v9;
  v10 = sub_4ED0(v2 + 14);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  sub_8E1F4();
  sub_13E24((v2 + 14), &unk_C3EB0, &qword_92380);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_8E204(v15);
  sub_8E234();
  sub_8E2E4();

  sub_20978();

  return v11();
}

void sub_1D774(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v16[0] = &_swiftEmptyArrayStorage;
    sub_8FA34();
    v6 = a1 + 40;
    do
    {
      v7 = objc_allocWithZone(ASDSystemAppMetadata);

      v8 = sub_8F5C4();
      v9 = [v7 initWithBundleID:v8];

      [v9 setUserInitiated:0];

      sub_8FA14();
      sub_8FA44();
      sub_8FA54();
      sub_8FA24();
      v6 += 16;
      --v3;
    }

    while (v3);
    v4 = v16[0];
  }

  if (v4 >> 62)
  {
    sub_332C(&qword_C3EC8, &qword_93400);
    sub_8FAB4();
  }

  else
  {
    sub_8FB64();
  }

  objc_opt_self();
  sub_332C(&qword_C3EC8, &qword_93400);
  isa = sub_8F6B4().super.isa;

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  v16[4] = sub_20040;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1E13C;
  v16[3] = &unk_B7E20;
  v12 = _Block_copy(v16);
  v13 = v2;

  v14 = sub_20AD8();
  [v14 v15];
  _Block_release(v12);
}

uint64_t sub_1D9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_332C(&unk_C3EA0, &qword_93380);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_20154(a3, v24 - v10, &unk_C3EA0, &qword_93380);
  v12 = sub_8F754();
  v13 = sub_33C0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_13E24(v11, &unk_C3EA0, &qword_93380);
  }

  else
  {
    sub_8F744();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_8F734();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_8F624() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_13E24(a3, &unk_C3EA0, &qword_93380);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_13E24(a3, &unk_C3EA0, &qword_93380);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1DD4C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v4 = sub_8E304();
    sub_4D6C(v4, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92310;
    v15 = type metadata accessor for BuyActionImplementation(0);
    v13 = a3;
    v5 = a3;
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(&v13);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_8F9E4(34);

    v13 = 0xD000000000000020;
    v14 = 0x800000000009E860;
    swift_getErrorValue();
    v16._countAndFlagsBits = sub_8FBB4();
    sub_8F654(v16);

    v15 = &type metadata for String;
    sub_8E264();
    sub_13E24(&v13, &unk_C3EB0, &qword_92380);
    sub_8E2E4();
  }

  else
  {
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v8 = sub_8E304();
    sub_4D6C(v8, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92310;
    v15 = type metadata accessor for BuyActionImplementation(0);
    v13 = a3;
    v9 = a3;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      sub_8F5F4();
    }

    sub_8E284();

    sub_4F30(&v13);
    v15 = &type metadata for String;
    v13 = 0xD000000000000020;
    v14 = 0x800000000009E830;
    sub_8E264();
    sub_13E24(&v13, &unk_C3EB0, &qword_92380);
    sub_8E2E4();
  }
}

uint64_t sub_1E13C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_8E104();
    v4 = sub_8F6C4();
  }

  v6 = a3;
  v5(v4, a3);
}

double sub_1E1D0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_4067C(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_20060(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1E234(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return sub_20938();
}

void sub_1E248()
{
  v1 = [*(v0 + 48) clientInfo];
  if (v1 && (v2 = sub_1FD3C(v1, &selRef_proxyAppBundleID), v3))
  {
    v30 = v3;
    v4 = v2;
    if (qword_C2CE0 != -1)
    {
      sub_13E98(&qword_C2CE0);
    }

    v5 = *(v0 + 56);
    v6 = sub_8E304();
    sub_4D6C(v6, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    v7 = sub_8E2A4();
    sub_13EB8(v7);
    v8 = sub_20A04();
    *(v0 + 40) = sub_20B2C(v8, xmmword_932C0);
    *(v0 + 16) = v5;
    v9 = v5;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      sub_8F5F4();
    }

    sub_20B84();

    sub_4F30((v0 + 16));
    v26 = "purchase.clientInfo.proxyAppBundleID";
  }

  else
  {
    v12 = [*(v0 + 48) clientInfo];
    if (!v12 || (v13 = sub_1FD3C(v12, &selRef_bundleIdentifier), !v14))
    {
      v22 = sub_8F5C4();
      v23 = sub_8F5C4();
      AMSError();

      swift_willThrow();
      sub_20978();
      sub_20AF0();

      __asm { BRAA            X1, X16 }
    }

    v30 = v14;
    v4 = v13;
    if (qword_C2CE0 != -1)
    {
      sub_13E98(&qword_C2CE0);
    }

    v15 = *(v0 + 56);
    v16 = sub_8E304();
    sub_4D6C(v16, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    v17 = sub_8E2A4();
    sub_13EB8(v17);
    v18 = sub_20A04();
    *(v0 + 40) = sub_20B2C(v18, xmmword_932C0);
    *(v0 + 16) = v15;
    v19 = v15;
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      sub_8F5F4();
    }

    sub_20B84();

    sub_4F30((v0 + 16));
    v26 = "purchase.clientInfo.bundleIdentifier";
  }

  v27 = v26 - 32;
  sub_8E244();
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v4;
  *(v0 + 24) = v30;

  sub_8E254();
  sub_13E24(v0 + 16, &unk_C3EB0, &qword_92380);
  sub_8E244();
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = 0xD000000000000024;
  *(v0 + 24) = v27 | 0x8000000000000000;
  sub_8E254();
  sub_13E24(v0 + 16, &unk_C3EB0, &qword_92380);
  sub_8E2E4();

  sub_20AF0();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1E6B4(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_20A5C();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_1B85C(a7, v12);
}

uint64_t sub_1E738(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1E808;

  return sub_1E234(v8);
}

uint64_t sub_1E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_20B4C();
  sub_209F8();
  v12 = v10;
  sub_209E0();
  v14 = v13;
  sub_20984();
  *v15 = v14;
  v17 = v16[4];
  v18 = v16[3];
  v19 = v16[2];
  v20 = *v11;
  sub_20948();
  *v21 = v20;

  if (v12)
  {
    v22 = sub_8E084();

    v23 = 0;
    v24 = v22;
  }

  else
  {
    v23 = sub_8F5C4();

    v22 = 0;
    v24 = v23;
  }

  v25 = *(v14 + 40);
  (v25)[2](v25, v23, v22);

  _Block_release(v25);
  sub_20978();
  sub_20BA4();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

void sub_1E9AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 window];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 windowScene];
        if (v6)
        {
          v7 = v6;
          v8 = [v6 _sceneIdentifier];
          sub_8F5F4();
        }

        else
        {
          sub_1EE78();
          sub_20990();
          swift_allocError();
          sub_209D4(v13, 1);
          swift_willThrow();
        }
      }

      else
      {
        sub_1EE78();
        sub_20990();
        swift_allocError();
        sub_209D4(v12, 4);
        swift_willThrow();
      }
    }

    else
    {
      sub_1EE78();
      sub_20990();
      swift_allocError();
      sub_209D4(v11, 2);
      swift_willThrow();
    }
  }

  else
  {
    sub_1EE78();
    sub_20990();
    v9 = swift_allocError();
    sub_20968(v9, v10);
    swift_willThrow();
  }
}

id sub_1EC44()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 window];
      if (v5)
      {
        v0 = v5;
      }

      else
      {
        sub_1EE78();
        sub_20990();
        swift_allocError();
        sub_209D4(v9, 4);
        swift_willThrow();
      }
    }

    else
    {
      sub_1EE78();
      sub_20990();
      swift_allocError();
      sub_209D4(v8, 2);
      swift_willThrow();
    }
  }

  else
  {
    sub_1EE78();
    sub_20990();
    v6 = swift_allocError();
    sub_20968(v6, v7);
    swift_willThrow();
  }

  return v0;
}

unint64_t sub_1EE20()
{
  result = qword_C3E70;
  if (!qword_C3E70)
  {
    type metadata accessor for BuyAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3E70);
  }

  return result;
}

unint64_t sub_1EE78()
{
  result = qword_C3E98;
  if (!qword_C3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3E98);
  }

  return result;
}

uint64_t sub_1EED0()
{
  sub_209EC();
  sub_20A6C();
  v0 = swift_task_alloc();
  v1 = sub_2099C(v0);
  *v1 = v2;
  v3 = sub_208D4(v1);

  return v4(v3);
}

uint64_t sub_1EF9C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a1);
  sub_8F3F4();
}

uint64_t sub_1EFF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_208C4;

  return v6();
}

uint64_t sub_1F0DC()
{
  sub_209EC();
  sub_20A6C();
  v0 = swift_task_alloc();
  v1 = sub_2099C(v0);
  *v1 = v2;
  v3 = sub_208D4(v1);

  return v4(v3);
}

uint64_t sub_1F174(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1F25C;

  return v7();
}

uint64_t sub_1F25C()
{
  sub_209C8();
  sub_209E0();
  v1 = *v0;
  sub_20948();
  *v2 = v1;

  sub_20978();

  return v3();
}

uint64_t sub_1F33C()
{
  swift_unknownObjectRelease();

  v0 = sub_20A5C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1F374()
{
  sub_209EC();
  v0 = swift_task_alloc();
  v1 = sub_20958(v0);
  *v1 = v2;
  v1[1] = sub_208C4;
  v3 = sub_20AB8();

  return v4(v3);
}

uint64_t sub_1F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_332C(&unk_C3EA0, &qword_93380);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_20154(a3, v22 - v10, &unk_C3EA0, &qword_93380);
  v12 = sub_8F754();
  if (sub_33C0(v11, 1, v12) == 1)
  {
    sub_13E24(v11, &unk_C3EA0, &qword_93380);
  }

  else
  {
    sub_8F744();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_8F734();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_8F624() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_13E24(a3, &unk_C3EA0, &qword_93380);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_13E24(a3, &unk_C3EA0, &qword_93380);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1F704(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_208C8;

  return v6(a1);
}

uint64_t sub_1F7FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F834()
{
  sub_20A90();
  sub_20ACC();
  v0 = swift_task_alloc();
  v1 = sub_20958(v0);
  *v1 = v2;
  v3 = sub_208F8(v1);

  return v4(v3);
}

uint64_t sub_1F8C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1F9BC;

  return v6(a1);
}

uint64_t sub_1F9BC()
{
  sub_209C8();
  sub_209E0();
  v1 = *v0;
  sub_20948();
  *v2 = v1;

  sub_20978();

  return v3();
}

uint64_t sub_1FAA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_41AA8(v47);
  v43 = v47[0];
  v44 = v47[1];
  v45 = v47[2];
  v46 = v48;
  *(&v36 + 1) = a1;

  *&v36 = a3;

  while (1)
  {
    sub_41420(v9, v10, v11, v12, v13, v14, v15, v16, v36, v37[0], v37[1], v38[0], v38[1], v39, v40, *(&v40 + 1), v41, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *&v47[0]);
    v17 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      sub_20688(v43);
    }

    v18 = v39;
    sub_20690(&v40, v38);
    v19 = *a5;
    v21 = sub_406C0(v18, v17);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if (a4)
      {
        if (v20)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_332C(&qword_C3F60, &unk_93490);
        sub_8FA84();
        if (v25)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_40BA0(v24, a4 & 1);
      v26 = sub_406C0(v18, v17);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_18;
      }

      v21 = v26;
      if (v25)
      {
LABEL_10:
        v28 = *a5;
        sub_20060(v38, v37);
        sub_4F30(v38);

        v29 = (v28[7] + 32 * v21);
        sub_4F30(v29);
        v9 = sub_20690(v37, v29);
        goto LABEL_14;
      }
    }

    v30 = *a5;
    *(*a5 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v31 = (v30[6] + 16 * v21);
    *v31 = v18;
    v31[1] = v17;
    v9 = sub_20690(v38, (v30[7] + 32 * v21));
    v32 = v30[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_17;
    }

    v30[2] = v34;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_8FB84();
  __break(1u);
  return result;
}

uint64_t sub_1FCD0(void *a1)
{
  v1 = [a1 responseDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_8F564();

  return v3;
}

uint64_t sub_1FD3C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_8F5F4();

  return v4;
}

uint64_t sub_1FDA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1FDE8()
{
  sub_20A90();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_20958(v2);
  *v3 = v4;
  v3[1] = sub_1F25C;
  v5 = sub_20AB8();

  return sub_1CEF8(v5, v6, v7, v1);
}

uint64_t sub_1FE84()
{
  sub_20A90();
  sub_20ACC();
  v0 = swift_task_alloc();
  v1 = sub_20958(v0);
  *v1 = v2;
  v3 = sub_208F8(v1);

  return v4(v3);
}

uint64_t sub_1FF14()
{
  sub_20A90();
  sub_20ACC();
  v0 = swift_task_alloc();
  v1 = sub_20958(v0);
  *v1 = v2;
  v3 = sub_208F8(v1);

  return v4(v3);
}

unint64_t sub_1FFA4()
{
  result = qword_C3EC0;
  if (!qword_C3EC0)
  {
    sub_3D10(&qword_C3398, &qword_92E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3EC0);
  }

  return result;
}

uint64_t sub_20008()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_20048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20060(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_200BC()
{
  sub_209EC();
  sub_20A6C();
  v0 = swift_task_alloc();
  v1 = sub_2099C(v0);
  *v1 = v2;
  v3 = sub_208D4(v1);

  return v4(v3);
}

uint64_t sub_20154(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_332C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_201E8()
{
  sub_209EC();
  sub_20A6C();
  v0 = swift_task_alloc();
  v1 = sub_2099C(v0);
  *v1 = v2;
  v3 = sub_208D4(v1);

  return v4(v3);
}

uint64_t sub_20280()
{
  _Block_release(*(v0 + 32));

  v1 = sub_20A5C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_202C8()
{
  sub_209EC();
  sub_20A6C();
  v0 = swift_task_alloc();
  v1 = sub_2099C(v0);
  *v1 = v2;
  v3 = sub_208D4(v1);

  return v4(v3);
}

uint64_t sub_20370(uint64_t a1, uint64_t a2, void *a3)
{
  v10[3] = sub_CE5C(0, &qword_C3F30, OS_dispatch_queue_ptr);
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = a3;
  v6 = a3;
  v7 = sub_8F444();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  swift_retain_n();

  sub_8F3C4();

  sub_4F30(v10);
  return v7;
}

uint64_t sub_204A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_204F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C50D0, &qword_93420);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20574(void *a1, uint64_t a2, uint64_t a3)
{
  v10[3] = sub_CE5C(0, &qword_C3F30, OS_dispatch_queue_ptr);
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  swift_retain_n();
  v8 = a1;
  sub_8F3C4();

  return sub_4F30(v10);
}

_OWORD *sub_20690(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t getEnumTagSinglePayload for BuyActionImplementation.PresentationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BuyActionImplementation.PresentationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x207F4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_20830()
{
  result = qword_C3F68;
  if (!qword_C3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3F68);
  }

  return result;
}

uint64_t sub_20918(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

void *sub_209A8(uint64_t a1)
{

  return sub_8F394();
}

uint64_t sub_20A04()
{

  return swift_allocObject();
}

uint64_t sub_20A30(uint64_t a1, uint64_t a2)
{

  return sub_8FB54();
}

uint64_t sub_20A9C()
{
  *(v2 + 24) = v0;

  return _swift_continuation_init(v1, 1);
}

uint64_t sub_20B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_20B2C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for BuyActionImplementation(0);
}

uint64_t sub_20B64()
{

  return swift_allocObject();
}

uint64_t sub_20B84()
{

  return sub_8E284();
}

uint64_t sub_20BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v71 = a2;
  v4 = sub_332C(&qword_C3F70, &unk_97F50);
  __chkstk_darwin(v4 - 8);
  v65 = &v60 - v5;
  v64 = sub_8E514();
  sub_4248();
  __chkstk_darwin(v6);
  sub_8814();
  v62 = v8 - v7;
  v9 = sub_332C(&qword_C2DD0, &unk_935C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v60 - v10;
  v12 = sub_8EFE4();
  sub_42F8();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  v67 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  v70 = sub_8F0C4();
  sub_42F8();
  v68 = v20;
  __chkstk_darwin(v21);
  sub_8814();
  v66 = v23 - v22;
  v24 = type metadata accessor for CallbackAction(0);
  sub_4248();
  __chkstk_darwin(v25);
  sub_8814();
  v69 = v27 - v26;
  v28 = 0x654D6E6F69746361;
  v29 = a1;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  v30 = v12;
  v31 = v11;
  sub_21234(v19, v71, &ActionMetrics.init(deserializing:using:), &type metadata accessor for ActionMetrics, v11);
  v32 = v11;
  v33 = v70;
  if (sub_33C0(v32, 1, v70) == 1)
  {
    sub_3410(v31, &qword_C2DD0, &unk_935C0);
    v12 = v30;
LABEL_4:
    v34 = sub_8F504();
    v35 = sub_923C();
    sub_BC40(v35);
    strcpy(v36, "actionMetrics");
    *(v36 + 7) = -4864;
    *(v36 + 2) = v24;
    (*(*(v34 - 8) + 104))(v36, enum case for JSONError.missingProperty(_:), v34);
    swift_willThrow();
    v37 = *(v14 + 8);
    v37(v29, v12);
    v37(v19, v12);
    v38 = 0;
    v39 = v71;
    goto LABEL_5;
  }

  sub_21744();
  v42 = *(v14 + 8);
  v60 = v30;
  v61 = v42;
  v42(v19, v30);
  v43 = *(v68 + 32);
  v44 = v66;
  v43(v66, v31, v33);
  v43(v69 + *(v24 + 20), v44, v33);
  v45 = v29;
  v46 = v67;
  sub_8EFF4();
  v47 = sub_8EFB4();
  v39 = v71;
  if ((v47 & 1) == 0)
  {
    v28 = v60;
    v48 = v61;
    v49 = v65;
    sub_21234(v46, v71, &JSServiceRequest.init(deserializing:using:), &type metadata accessor for JSServiceRequest, v65);
    if (sub_33C0(v49, 1, v64) != 1)
    {
      v48(v45, v28);
      v48(v46, v28);
      v55 = v49;
      v56 = v62;
      sub_21434(v55, v62);
      v57 = v56;
      v58 = v69;
      sub_21434(v57, v69);
      sub_21498(v58, v63);
      sub_8F004();
      sub_4248();
      (*(v59 + 8))(v39);
      return sub_214FC(v58);
    }

    sub_3410(v49, &qword_C3F70, &unk_97F50);
    sub_21744();
  }

  v50 = sub_8F504();
  v51 = sub_923C();
  sub_BC40(v51);
  *v52 = v28;
  v52[1] = 0xEE00747365757165;
  v52[2] = v24;
  (*(*(v50 - 8) + 104))(v52, enum case for JSONError.missingProperty(_:), v50);
  swift_willThrow();
  v54 = v60;
  v53 = v61;
  v61(v45, v60);
  v53(v46, v54);
  v38 = 1;
LABEL_5:
  sub_8F004();
  sub_4248();
  result = (*(v40 + 8))(v39);
  if (v38)
  {
    return (*(v68 + 8))(v69 + *(v24 + 20), v70);
  }

  return result;
}

uint64_t sub_21234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_8F004();
  sub_42F8();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_8814();
  v16 = v15 - v14;
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v17);
  sub_8814();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18, a1);
  (*(v12 + 16))(v16, a2, v10);
  a3(v20, v16);
  v22 = a4(0);
  return sub_33E8(a5, 0, 1, v22);
}

uint64_t type metadata accessor for CallbackAction(uint64_t a1)
{
  result = qword_C3FD0;
  if (!qword_C3FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21434(uint64_t a1, uint64_t a2)
{
  v4 = sub_8E514();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallbackAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FC(uint64_t a1)
{
  v2 = type metadata accessor for CallbackAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2156C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8E514();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_8F0C4();
    v8 = a1 + *(a3 + 20);
  }

  return sub_33C0(v8, a2, v7);
}

uint64_t sub_2161C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_8E514();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_8F0C4();
    v10 = a1 + *(a4 + 20);
  }

  return sub_33E8(v10, a2, a2, v9);
}

uint64_t sub_216C0(uint64_t a1)
{
  result = sub_8E514();
  if (v2 <= 0x3F)
  {
    result = sub_8F0C4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21758(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_332C(&qword_C40D0, &qword_93640);
  __chkstk_darwin(v6 - 8);
  v8 = &v43[-v7];
  v46 = sub_8E514();
  sub_4248();
  __chkstk_darwin(v9);
  v11 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1[2];
  if (v12)
  {
    v13 = a1[2];
  }

  else
  {
    v13 = sub_8F574();
  }

  sub_CD4C(a2, v62, &qword_C3940, &unk_92AE0);
  v47 = a2;
  v45 = a3;
  if (v62[32] == 255)
  {
    sub_236E4();
LABEL_12:
    sub_236B4();
    *&v54 = v22;
    *(&v54 + 1) = v21;
    sub_8F9B4();
    v54 = 0u;
    v55 = 0u;
    v23 = sub_228CC(0, 0, &v54);
    sub_3410(&v54, &unk_C3EB0, &qword_92380);
    *(&v55 + 1) = sub_332C(&qword_C7480, &qword_92BB0);
    *&v54 = v23;
    sub_20690(&v54, &v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v52 = v13;
    sub_41020(&v57, &v59, isUniquelyReferenced_nonNull_native);
    v13 = v52;
    sub_17A94(&v59);
    goto LABEL_19;
  }

  sub_CD4C(v62, &v54, &qword_C3940, &unk_92AE0);
  if (!v56)
  {
    sub_236B4();
    *&v57 = v18;
    *(&v57 + 1) = v17;
    sub_236E4();
    sub_8F9B4();
    swift_getErrorValue();
    v19 = sub_3BF9C(v48, v49);
    *(&v58 + 1) = sub_332C(&qword_C7480, &qword_92BB0);
    *&v57 = v19;
    sub_20690(&v57, &v52);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *&v51[0] = v13;
    sub_41020(&v52, &v59, v20);
    v13 = *&v51[0];
    sub_17A94(&v59);

    goto LABEL_19;
  }

  if (v56 != 1)
  {
    sub_236E4();
    sub_233BC(&v54);
    goto LABEL_12;
  }

  v57 = v54;
  v58 = v55;
  sub_236B4();
  *&v52 = v15 | 1;
  *(&v52 + 1) = v14;
  sub_236E4();
  sub_8F9B4();
  sub_CD4C(&v57, &v52, &unk_C3EB0, &qword_92380);
  if (v53)
  {
    sub_20690(&v52, v51);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v13;
    sub_41020(v51, &v59, v16);
    v13 = v50;
    sub_17A94(&v59);
  }

  else
  {
    sub_3410(&v52, &unk_C3EB0, &qword_92380);
    v25 = sub_4067C(&v59);
    if (v26)
    {
      v27 = v25;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v13;
      v28 = *(v13 + 24);
      sub_332C(&unk_C50F0, &qword_93648);
      sub_8FA74(v44, v28);
      v13 = v50;
      sub_17A94(*(v50 + 48) + 40 * v27);
      sub_20690((*(v13 + 56) + 32 * v27), v51);
      sub_8FA94();
    }

    else
    {
      memset(v51, 0, sizeof(v51));
    }

    sub_17A94(&v59);
    sub_3410(v51, &unk_C3EB0, &qword_92380);
  }

  sub_3410(&v57, &unk_C3EB0, &qword_92380);
LABEL_19:
  sub_3410(v62, &qword_C3940, &unk_92AE0);
  sub_8F574();

  swift_isUniquelyReferenced_nonNull_native();
  sub_23690();
  sub_23010(v13, v29, 0, v30, v31);
  if (!v12)
  {
    v12 = sub_8F574();
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_23690();
  sub_23010(v12, v32, 0, v33, v34);

  sub_CD4C(a1 + *(v46 + 24), v8, &qword_C40D0, &qword_93640);
  sub_8E504();
  sub_8F174();

  v35 = v45;
  sub_8F394();
  sub_8E664();
  sub_CD4C(v47, &v59, &qword_C3940, &unk_92AE0);
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  v37 = v60;
  *(v36 + 24) = v59;
  *(v36 + 40) = v37;
  *(v36 + 56) = v61;
  *(&v60 + 1) = sub_8F224();
  v61 = &protocol witness table for SyncTaskScheduler;
  sub_4ED0(&v59);

  sub_8F214();
  sub_332C(&qword_C3398, &qword_92E60);
  sub_1FFA4();
  v38 = sub_8F404();

  sub_4F30(&v59);
  v39 = sub_CE5C(0, &qword_C3F30, OS_dispatch_queue_ptr);

  v40 = sub_8F7D4();
  *(&v60 + 1) = v39;
  v61 = &protocol witness table for OS_dispatch_queue;
  *&v59 = v40;
  sub_8F3C4();

  sub_4F30(&v59);

  v41 = sub_8F7D4();
  *(&v60 + 1) = v39;
  v61 = &protocol witness table for OS_dispatch_queue;
  *&v59 = v41;
  sub_8F3C4();

  sub_23410(v11, &type metadata accessor for JSServiceRequest);
  sub_4F30(&v59);
  return v38;
}

uint64_t sub_21F34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_20690(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_41020(v7, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v6;
    return sub_17A94(a2);
  }

  else
  {
    sub_3410(a1, &unk_C3EB0, &qword_92380);
    sub_23254(a2, v7);
    sub_17A94(a2);
    return sub_3410(v7, &unk_C3EB0, &qword_92380);
  }
}

uint64_t sub_21FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = sub_8E5D4();
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8F264();
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_8F004();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8F174();
  sub_8F394();
  sub_8E394();
  swift_initStackObject();
  sub_8E384();
  sub_3A94(&v22, &v25);
  sub_8E5F4();
  sub_8F394();
  v14 = v22;
  v19 = v9;
  sub_8F394();
  v15 = v21;
  (*(v21 + 16))(v6, v9, v7);
  v16 = sub_332C(&unk_C5850, &unk_92840);
  sub_33E8(v6, 0, 1, v16);
  (*(*v14 + 216))(&v25, v6, a2, v20);
  sub_23410(v6, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
  *(&v23 + 1) = sub_8F224();
  v24 = &protocol witness table for SyncTaskScheduler;
  sub_4ED0(&v22);
  sub_8F214();
  v17 = sub_8F3B4();

  (*(v15 + 8))(v19, v7);
  sub_4F30(&v25);
  (*(v11 + 8))(v13, v10);
  sub_4F30(&v22);
  return v17;
}

uint64_t sub_223E0(uint64_t a1, uint64_t a2)
{
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v3 = sub_8E304();
  sub_4D6C(v3, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v7[3] = type metadata accessor for CallbackActionImplementation();
  v7[0] = a2;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v7);
  sub_8E244();
  sub_8E2E4();
}

uint64_t sub_22590(uint64_t a1, uint64_t a2)
{
  v3 = sub_8E224();
  __chkstk_darwin(v3 - 8);
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v4 = sub_8E304();
  sub_4D6C(v4, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v11 = type metadata accessor for CallbackActionImplementation();
  v10[0] = a2;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v10);
  sub_8E214();
  v12._object = 0x800000000009E9A0;
  v12._countAndFlagsBits = 0xD000000000000018;
  sub_8E204(v12);
  swift_getErrorValue();
  v11 = v9;
  v7 = sub_4ED0(v10);
  (*(*(v9 - 8) + 16))(v7);
  sub_8E1F4();
  sub_3410(v10, &unk_C3EB0, &qword_92380);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_8E204(v13);
  sub_8E234();
  sub_8E2E4();
}

unint64_t sub_22850()
{
  result = qword_C40A8;
  if (!qword_C40A8)
  {
    type metadata accessor for CallbackAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C40A8);
  }

  return result;
}

uint64_t sub_228CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23468();
  if (!sub_8FB34())
  {
    swift_allocError();
  }

  v4 = sub_8E084();

  v5 = [v4 code];
  v6 = [v4 description];
  v24 = sub_8F5F4();
  v8 = v7;

  v9 = [v4 domain];
  v10 = sub_8F5F4();
  v12 = v11;

  v13 = [v4 userInfo];
  v14 = sub_8F564();

  sub_3D230(v14);
  v16 = v15;

  sub_332C(&qword_C3F38, &unk_93480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_935F0;
  sub_8F9B4();
  *(inited + 96) = sub_332C(&qword_C40E0, &unk_93650);
  *(inited + 72) = v5;
  *(inited + 80) = 0;
  sub_8F9B4();
  v18 = sub_332C(&qword_C3AD8, &qword_92E70);
  *(inited + 168) = v18;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  sub_8F9B4();
  *(inited + 240) = v18;
  *(inited + 216) = v24;
  *(inited + 224) = v8;
  sub_8F9B4();
  *(inited + 312) = v18;
  *(inited + 288) = v10;
  *(inited + 296) = v12;
  sub_8F9B4();
  v19 = sub_332C(&unk_C3EB0, &qword_92380);
  *(inited + 384) = v19;
  v20 = swift_allocObject();
  *(inited + 360) = v20;
  sub_3C6D0(v16, (v20 + 16));
  sub_8F9B4();
  *(inited + 456) = v19;
  v21 = swift_allocObject();
  *(inited + 432) = v21;
  sub_CD4C(a3, v21 + 16, &unk_C3EB0, &qword_92380);
  v22 = sub_8F574();

  return v22;
}

uint64_t sub_22C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_CE5C(0, &qword_C40E8, NSError_ptr);
  sub_234FC();
  v5 = v3;
  if (sub_8FB34())
  {
  }

  else
  {
    swift_allocError();
    *v6 = v5;
  }

  v7 = sub_8E084();

  v8 = [v7 code];
  v9 = [v7 description];
  v44 = sub_8F5F4();
  v11 = v10;

  v12 = [v7 domain];
  v13 = sub_8F5F4();
  v15 = v14;

  v16 = [v7 userInfo];
  v17 = sub_8F564();

  sub_3D230(v17);
  v19 = v18;

  sub_332C(&qword_C3F38, &unk_93480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_935F0;
  sub_236C8(inited, v21, v22);
  v23 = sub_332C(&qword_C40E0, &unk_93650);
  *(inited + 96) = v23;
  *(inited + 72) = v8;
  *(inited + 80) = 0;
  sub_236C8(v23, v24, v25);
  v26 = sub_332C(&qword_C3AD8, &qword_92E70);
  *(inited + 168) = v26;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  v30 = sub_236C8(v27, v28, v29);
  *(inited + 240) = v26;
  *(inited + 216) = v44;
  *(inited + 224) = v11;
  v33 = sub_236C8(v30, v31, v32);
  *(inited + 312) = v26;
  *(inited + 288) = v13;
  *(inited + 296) = v15;
  sub_236C8(v33, v34, v35);
  v36 = sub_332C(&unk_C3EB0, &qword_92380);
  *(inited + 384) = v36;
  v37 = swift_allocObject();
  *(inited + 360) = v37;
  v38 = sub_3C6D0(v19, (v37 + 16));
  sub_236C8(v38, v39, v40);
  *(inited + 456) = v36;
  v41 = swift_allocObject();
  *(inited + 432) = v41;
  sub_CD4C(a3, v41 + 16, &unk_C3EB0, &qword_92380);
  v42 = sub_8F574();

  return v42;
}

uint64_t sub_23010(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_41AA8(v52);
  v48 = v52[0];
  v49 = v52[1];
  v50 = v52[2];
  v51 = v53;
  v34 = a1;

  while (1)
  {
    sub_418D8(&v42);
    if (!*(&v43 + 1))
    {
      sub_20688(v48);
    }

    v39 = v42;
    v40 = v43;
    v41 = v44;
    sub_20690(&v45, v38);
    v8 = *a5;
    v16 = sub_4067C(&v39);
    v17 = v8[2];
    v18 = (v9 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      break;
    }

    v20 = v9;
    if (v8[3] >= v19)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_332C(&unk_C50F0, &qword_93648);
        sub_8FA84();
        if (v20)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_40DEC(v19, a4 & 1, v10, v11, v12, v13, v14, v15, v33, v34, v35, v36, v37, v38[0], v38[1], v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45, *(&v45 + 1), v46, v47);
      v21 = sub_4067C(&v39);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_18;
      }

      v16 = v21;
      if (v20)
      {
LABEL_10:
        v23 = *a5;
        sub_20060(v38, &v35);
        sub_4F30(v38);
        sub_17A94(&v39);
        v24 = (v23[7] + 32 * v16);
        sub_4F30(v24);
        sub_20690(&v35, v24);
        goto LABEL_14;
      }
    }

    v25 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v26 = v25[6] + 40 * v16;
    v27 = v39;
    v28 = v40;
    *(v26 + 32) = v41;
    *v26 = v27;
    *(v26 + 16) = v28;
    sub_20690(v38, (v25[7] + 32 * v16));
    v29 = v25[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v25[2] = v31;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_8FB84();
  __break(1u);
  return result;
}

double sub_23254@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_4067C(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v8 = *(*v2 + 24);
    sub_332C(&unk_C50F0, &qword_93648);
    sub_8FA74(isUniquelyReferenced_nonNull_native, v8);
    sub_17A94(*(v10 + 48) + 40 * v6);
    sub_20690((*(v10 + 56) + 32 * v6), a2);
    sub_8FA94();
    *v2 = v10;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2333C()
{

  if (*(v0 + 56) == 1)
  {
    if (*(v0 + 48))
    {
      sub_4F30((v0 + 24));
    }
  }

  else if (!*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_23410(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_4248();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23468()
{
  result = qword_C40D8;
  if (!qword_C40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C40D8);
  }

  return result;
}

uint64_t sub_234BC()
{
  if (*(v0 + 40))
  {
    sub_4F30((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_234FC()
{
  result = qword_C40F0;
  if (!qword_C40F0)
  {
    sub_CE5C(255, &qword_C40E8, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C40F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CallbackActionImplementation.PerformError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x23600);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2363C()
{
  result = qword_C40F8;
  if (!qword_C40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C40F8);
  }

  return result;
}

uint64_t sub_236C8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_8F9B4();
}

uint64_t sub_236E4()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t type metadata accessor for Checkbox(uint64_t a1)
{
  result = qword_C4160;
  if (!qword_C4160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v86 = a3;
  v97 = sub_8EFE4();
  v4 = *(v97 - 8);
  v5 = __chkstk_darwin(v97);
  v88 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v87 = &v79 - v8;
  v9 = __chkstk_darwin(v7);
  v89 = &v79 - v10;
  __chkstk_darwin(v9);
  v12 = &v79 - v11;
  v13 = sub_332C(&qword_C3598, &unk_929F0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v79 - v17;
  v19 = type metadata accessor for Checkbox(0);
  sub_4248();
  __chkstk_darwin(v20);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E394();
  inited = swift_initStackObject();
  sub_8E544();
  v23 = swift_initStackObject();
  v24 = v19;
  v25 = v90;
  v26 = sub_473C0();
  v28 = v25;
  if (v25)
  {
    (*(v4 + 8))(a1, v97);

    v29 = v92;
LABEL_10:

    sub_8F004();
    sub_4248();
    result = (*(v46 + 8))(v29);
    if (v28)
    {
      return result;
    }

    v48 = 0;
    goto LABEL_21;
  }

  v81 = v16;
  v83 = v18;
  v82 = 0;
  v85 = v23;
  v90 = v4;
  *&v94 = v26;
  *(&v94 + 1) = v27;
  v84 = v22;
  sub_8F9B4();
  sub_8EFF4();
  v30 = a1;
  if (sub_8EFB4())
  {
    goto LABEL_6;
  }

  v31 = v81;
  sub_24328(v12, v92, v81);
  v32 = sub_8F204();
  if (sub_33C0(v31, 1, v32) == 1)
  {
    sub_3410(v31, &qword_C3598, &unk_929F0);
LABEL_6:
    sub_8F504();
    sub_2480C();
    v35 = sub_244F4(v33, v34, &protocol conformance descriptor for JSONError);
    sub_4264(v35);
    *v36 = 0xD000000000000011;
    v36[1] = 0x800000000009DDE0;
    v36[2] = v24;
    sub_BBB0();
    (*(v37 + 104))();
    swift_willThrow();
    v38 = sub_24824();
    MEMORY[0x800000000009DDE0](v38);

    v39 = sub_8F204();
    v40 = v83;
    sub_33E8(v83, 1, 1, v39);
    v41 = 0;
    goto LABEL_8;
  }

  v42 = sub_24824();
  MEMORY[0x800000000009DDE0](v42);
  sub_BBB0();
  v40 = v83;
  (*(v43 + 32))(v83, v31, v32);
  sub_33E8(v40, 0, 1, v32);
  v41 = v82;
LABEL_8:
  v22 = v84;
  sub_11068(v40, &v84[*(v24 + 36)]);
  v44 = sub_47508();
  v45 = v89;
  if (v41)
  {

    MEMORY[0x800000000009DDE0](v30, v97);
    v29 = v92;
    v28 = v82;
    goto LABEL_10;
  }

  *v22 = v44 & 1;
  sub_8EFF4();
  v49 = sub_8EFB4();
  v80 = v30;
  if (v49)
  {
    sub_8F504();
    sub_2480C();
    v52 = sub_244F4(v50, v51, &protocol conformance descriptor for JSONError);
    sub_4264(v52);
    strcpy(v53, "checkedSegue");
    v53[13] = 0;
    *(v53 + 7) = -5120;
    *(v53 + 2) = v24;
    sub_BBB0();
    (*(v54 + 104))();
    swift_willThrow();
    v75 = v97;
    MEMORY[0x800000000009DDE0](v45, v97);

    v96 = 0;
    v94 = 0u;
    v95 = 0u;
  }

  else
  {
    sub_8E384();
    v75 = v97;
    MEMORY[0x800000000009DDE0](v45, v97);
    sub_3A94(v93, &v94);
  }

  v55 = v95;
  *(v22 + 8) = v94;
  *(v22 + 24) = v55;
  *(v22 + 5) = v96;
  v56 = v87;
  sub_8EFF4();
  v57 = sub_8EFB4();
  v83 = 0x800000000009DDE0;
  if (v57)
  {
    sub_8F504();
    sub_2480C();
    v60 = sub_244F4(v58, v59, &protocol conformance descriptor for JSONError);
    sub_4264(v60);
    strcpy(v61, "uncheckedSegue");
    v61[15] = -18;
    *(v61 + 2) = v24;
    sub_BBB0();
    (*(v62 + 104))();
    swift_willThrow();
    MEMORY[0x800000000009DDE0](v56, v75);

    v96 = 0;
    v94 = 0u;
    v95 = 0u;
  }

  else
  {
    sub_8E384();
    MEMORY[0x800000000009DDE0](v56, v75);
    sub_3A94(v93, &v94);
  }

  v63 = v95;
  *(v22 + 3) = v94;
  *(v22 + 4) = v63;
  *(v22 + 10) = v96;
  v64 = &v22[*(v24 + 40)];
  *(v64 + 4) = 0;
  *v64 = 0u;
  *(v64 + 1) = 0u;
  v65 = v88;
  v66 = v80;
  sub_8EFF4();
  if ((sub_8EFB4() & 1) == 0)
  {
    v67 = v92;
    sub_8E534();
    v76 = v97;
    v77 = v83;
    v83(v66, v97);
    v77(v65, v76);
    sub_3A94(v93, &v94);
    sub_3A94(&v94, (v22 + 88));
    sub_2453C(v22, v86);
    sub_8F004();
    sub_4248();
    (*(v78 + 8))(v67);
    return sub_245A0(v22);
  }

  sub_8F504();
  sub_2480C();
  sub_244F4(v68, v69, &protocol conformance descriptor for JSONError);
  swift_allocError();
  *v70 = 1954047348;
  v70[1] = 0xE400000000000000;
  v70[2] = v24;
  sub_BBB0();
  (*(v71 + 104))();
  swift_willThrow();
  v72 = v97;
  v73 = v83;
  v83(v66, v97);
  v73(v65, v72);
  sub_8F004();
  sub_4248();
  (*(v74 + 8))(v92);
  sub_3410((v22 + 8), &qword_C2DE0, &qword_91DB0);
  sub_3410((v22 + 48), &qword_C2DE0, &qword_91DB0);
  v48 = 1;
LABEL_21:
  sub_17A94((v22 + 128));
  result = sub_3410(&v22[*(v24 + 36)], &qword_C3598, &unk_929F0);
  if (v48)
  {
    return sub_3410(&v22[*(v24 + 40)], &qword_C2DE0, &qword_91DB0);
  }

  return result;
}

uint64_t sub_24328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F1C4();
  v13 = sub_8F204();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t sub_244F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2453C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Checkbox(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245A0(uint64_t a1)
{
  v2 = type metadata accessor for Checkbox(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_332C(&qword_C3598, &unk_929F0);
    v9 = a1 + *(a3 + 36);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_246B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 112) = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C3598, &unk_929F0);
    v8 = v5 + *(a4 + 36);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24744(uint64_t a1)
{
  sub_3CAC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_16830();
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_E69C(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_24838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_label);
  swift_getKeyPath();
  sub_332C(&qword_C4200, &qword_93820);
  sub_8F044();

  (*(&stru_158.size + (swift_isaMask & *v6)))(v31, a3);
  sub_4F30(v31);
  KeyPath = swift_getKeyPath();
  sub_24D04(KeyPath);

  *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_isToggled) = v31[0];
  sub_24F20();
  *(v3 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_objectGraph) = a3;

  v8 = swift_getKeyPath();
  sub_24D04(v8);

  v10 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_checkedSegue;
  sub_24D20(v9, v11, v12, v13, v14, v15, v16, v17, v29);
  sub_66CC(v31, v4 + v10);
  swift_endAccess();
  v18 = swift_getKeyPath();
  sub_24D04(v18);

  v20 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_uncheckedSegue;
  sub_24D20(v19, v21, v22, v23, v24, v25, v26, v27, v30);
  sub_66CC(v31, v4 + v20);
  return swift_endAccess();
}

uint64_t sub_24A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for CheckboxComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_24A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for CheckboxComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_24AE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_24B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_8E3D4();
}

uint64_t sub_24BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_24C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_24CAC()
{
  result = qword_C41B0;
  if (!qword_C41B0)
  {
    type metadata accessor for Checkbox(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C41B0);
  }

  return result;
}

uint64_t sub_24D04(uint64_t a1)
{

  return sub_8F044();
}

uint64_t sub_24D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

id sub_24D40(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_label;
  sub_8E374();
  v11 = [objc_opt_self() ams_primaryText];
  v12 = sub_8E684();
  v20[3] = v12;
  v20[4] = &protocol witness table for FontSource;
  *sub_4ED0(v20) = UIFontTextStyleBody;
  (*(*(v12 - 8) + 104))();
  v13 = UIFontTextStyleBody;
  *&v4[v10] = sub_8E354();
  *&v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_objectGraph] = 0;
  v14 = &v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_checkedSegue];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v15 = &v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_uncheckedSegue];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_isToggled] = 0;
  v16 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_checkboxImageView;
  *&v5[v16] = [objc_allocWithZone(AMSUICommonImageView) init];
  v19.receiver = v5;
  v19.super_class = type metadata accessor for CheckboxComponent();
  v17 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  sub_2513C();

  return v17;
}

void sub_24F20()
{
  if (v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_isToggled] == 1)
  {
    sub_25F0C();
  }

  else
  {
    sub_260D0();
  }

  v1 = [v0 contentView];
  [v1 setAccessibilityTraits:?];
}

uint64_t sub_24FF4(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CheckboxComponent();
  v3 = objc_msgSendSuper2(&v12, "prepareForReuse");
  (*(&stru_158.offset + (swift_isaMask & **&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_label])))(v3);
  *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_objectGraph] = 0;

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v5 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_checkedSegue;
  sub_264CC(v4);
  sub_66CC(&v9, &v2[v5]);
  v6 = swift_endAccess();
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_uncheckedSegue;
  sub_264CC(v6);
  sub_66CC(&v9, &v2[v7]);
  return swift_endAccess();
}

void sub_2513C()
{
  v1 = v0;
  v2 = sub_8E324();
  sub_42F8();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_8814();
  v8 = v7 - v6;
  v9 = [objc_allocWithZone(AMSUICommonView) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_checkboxImageView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_label];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v1 contentView];
  [v12 addSubview:v9];

  [v9 addSubview:v10];
  [v9 addSubview:v11];
  LODWORD(v13) = 1148846080;
  [v9 setContentHuggingPriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v11 setContentHuggingPriority:0 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [*&v11[direct field offset for DynamicLabel.label] setContentHuggingPriority:0 forAxis:v15];
  if (_UISolariumEnabled() && ((*(v4 + 104))(v8, enum case for FlagKeys.Solarium(_:), v2), v16 = sub_8E314(), (*(v4 + 8))(v8, v2), (v16 & 1) != 0))
  {
    sub_332C(&qword_C44A0, &unk_938F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_938A0;
    v18 = [v9 leadingAnchor];
    v19 = [v1 contentView];
    v20 = [v19 leadingAnchor];

    v22 = sub_264B4(v21, "constraintEqualToAnchor:");
    *(v17 + 32) = v22;
    v23 = sub_264EC();
    v24 = [v1 contentView];
    v25 = [v24 trailingAnchor];

    v27 = sub_264B4(v26, "constraintEqualToAnchor:");
    *(v17 + 40) = v27;
    v28 = [v10 leadingAnchor];
    v29 = [v9 leadingAnchor];
    v30 = sub_264A8();
    v32 = [v30 v31];

    *(v17 + 48) = v32;
    v33 = [v10 centerYAnchor];
    v34 = [v9 centerYAnchor];
    v35 = sub_264A8();
    v37 = [v35 v36];

    *(v17 + 56) = v37;
    v38 = (v17 + 64);
    v39 = [v11 trailingAnchor];
    v40 = sub_264EC();
    v41 = sub_264A8();
    v43 = [v41 v42];
  }

  else
  {
    sub_332C(&qword_C44A0, &unk_938F0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_93890;
    v45 = [v9 centerXAnchor];
    v46 = [v1 contentView];
    v47 = [v46 centerXAnchor];

    v49 = sub_264B4(v48, "constraintEqualToAnchor:");
    *(v44 + 32) = v49;
    v50 = [v9 leadingAnchor];
    v51 = [v1 contentView];
    v52 = [v51 leadingAnchor];

    v54 = sub_264B4(v53, "constraintGreaterThanOrEqualToAnchor:");
    *(v44 + 40) = v54;
    v55 = sub_264EC();
    v56 = [v1 contentView];
    v57 = [v56 trailingAnchor];

    v59 = sub_264B4(v58, "constraintLessThanOrEqualToAnchor:");
    *(v44 + 48) = v59;
    v60 = [v10 leadingAnchor];
    v61 = [v9 leadingAnchor];
    v62 = sub_264A8();
    v64 = [v62 v63];

    *(v44 + 56) = v64;
    v65 = [v10 centerYAnchor];
    v66 = [v9 centerYAnchor];
    v67 = sub_264A8();
    v69 = [v67 v68];

    *(v44 + 64) = v69;
    v38 = (v44 + 72);
    v39 = [v11 trailingAnchor];
    v40 = sub_264EC();
    v70 = sub_264A8();
    v43 = [v70 v71];
  }

  v72 = v43;

  *v38 = v72;
  sub_332C(&qword_C44A0, &unk_938F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_938B0;
  v74 = [v9 topAnchor];
  v75 = [v1 contentView];
  v76 = [v75 topAnchor];

  v77 = [v74 constraintEqualToAnchor:v76];
  *(inited + 32) = v77;
  v78 = [v9 bottomAnchor];
  v79 = [v1 contentView];
  v80 = [v79 bottomAnchor];

  v81 = [v78 constraintEqualToAnchor:v80];
  *(inited + 40) = v81;
  v82 = [v10 widthAnchor];
  v83 = [v82 constraintEqualToConstant:24.0];

  *(inited + 48) = v83;
  v84 = [v10 heightAnchor];
  v85 = [v84 constraintEqualToConstant:24.0];

  *(inited + 56) = v85;
  v86 = [v11 leadingAnchor];
  v87 = [v10 trailingAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:8.0];

  *(inited + 64) = v88;
  v89 = [v11 centerYAnchor];
  v90 = [v10 centerYAnchor];
  v91 = [v89 constraintEqualToAnchor:v90];

  *(inited + 72) = v91;
  v92 = [v11 topAnchor];
  v93 = [v9 topAnchor];
  v94 = [v92 constraintGreaterThanOrEqualToAnchor:v93 constant:2.0];

  *(inited + 80) = v94;
  v95 = [v11 bottomAnchor];
  v96 = [v9 bottomAnchor];

  v97 = [v95 constraintGreaterThanOrEqualToAnchor:v96 constant:-2.0];
  *(inited + 88) = v97;
  v98 = objc_opt_self();
  sub_31620(inited);
  sub_CE5C(0, &qword_C4268, NSLayoutConstraint_ptr);
  isa = sub_8F6B4().super.isa;

  [v98 activateConstraints:isa];

  v102[3] = type metadata accessor for CheckboxComponent();
  v102[0] = v1;
  objc_allocWithZone(UITapGestureRecognizer);
  v100 = v1;
  v101 = sub_26364(v102, "handleTap");
  [v100 addGestureRecognizer:v101];
}

uint64_t sub_25C0C()
{
  v1 = sub_8E5D4();
  __chkstk_darwin(v1 - 8);
  sub_8814();
  v4 = v3 - v2;
  v5 = sub_8F264();
  sub_42F8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_8814();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_isToggled;
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_isToggled) = (*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_isToggled) & 1) == 0;
  sub_24F20();
  if (*(v0 + v12) == 1)
  {
    v13 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_checkedSegue;
  }

  else
  {
    v13 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_uncheckedSegue;
  }

  v14 = v0 + v13;
  swift_beginAccess();
  sub_418C(v14, &v19);
  if (!*(&v20 + 1))
  {
    return sub_13E24(&v19, &qword_C2DE0, &qword_91DB0);
  }

  sub_3A94(&v19, v22);
  v15 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_objectGraph);
  if (v15)
  {
    sub_8E5F4();
    sub_8F174();

    sub_8F394();
    v16 = v19;
    sub_8F394();
    (*(v7 + 16))(v4, v11, v5);
    v17 = sub_332C(&unk_C5850, &unk_92840);
    sub_33E8(v4, 0, 1, v17);
    v19 = 0u;
    v20 = 0u;
    v21 = -1;
    (*(*v16 + 216))(v22, v4, v15, &v19);

    sub_13E24(&v19, &qword_C3940, &unk_92AE0);
    sub_CE00(v4);
    (*(v7 + 8))(v11, v5);
  }

  return sub_4F30(v22);
}

void sub_25F0C()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:24.0];
  sub_CE5C(0, &qword_C4260, UIImage_ptr);
  v3 = v2;
  v4 = sub_26060(0xD000000000000015, 0x800000000009EA80, v2);
  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_checkboxImageView];
  if (v4)
  {
    v7 = v4;
    v8 = [v1 tintColor];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v7 imageWithTintColor:v8 renderingMode:1];
  }

  else
  {
    v10 = 0;
  }

  [v6 setImage:v10];
}

id sub_26060(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_8F5C4();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

void sub_260D0()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:24.0];
  sub_CE5C(0, &qword_C4260, UIImage_ptr);
  v3 = v2;
  v4 = sub_26060(0x656C63726963, 0xE600000000000000, v2);
  v5 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17CheckboxComponent_checkboxImageView);
  if (v4)
  {
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 ams_secondaryText];
    v9 = [v7 imageWithTintColor:v8 renderingMode:1];
  }

  else
  {
    v9 = 0;
  }

  [v5 setImage:v9];
}

id sub_26264(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CheckboxComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_26364(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = sub_CD08(a1, a1[3]);
    v7 = *(v4 - 8);
    __chkstk_darwin(v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_8FB44();
    (*(v7 + 8))(v9, v4);
    sub_4F30(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

id sub_264B4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_264CC(uint64_t a1, ...)
{

  return swift_beginAccess();
}

id sub_264EC()
{
  v3 = *(v0 + 2840);

  return [v1 v3];
}

uint64_t sub_26504@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_8F0C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2656C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v72 = a3;
  v4 = sub_332C(&qword_C2DD0, &unk_935C0);
  __chkstk_darwin(v4 - 8);
  v78 = &v68 - v5;
  v6 = sub_8EFE4();
  sub_42F8();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v71 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v73 = &v68 - v13;
  __chkstk_darwin(v12);
  v15 = &v68 - v14;
  v79 = sub_8F0C4();
  sub_42F8();
  v75 = v16;
  __chkstk_darwin(v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CheckDownloadQueueAction(0);
  sub_BBB0();
  __chkstk_darwin(v21);
  v77 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E394();
  inited = swift_initStackObject();
  sub_8EFF4();
  v23 = sub_8EFB4();
  v25 = v84;
  if (v23)
  {
    goto LABEL_4;
  }

  v70 = v20;
  v26 = v78;
  sub_6658(v15, v84, v24);
  if (sub_33C0(v26, 1, v79) != 1)
  {
    v34 = *(v8 + 8);
    v69 = v6;
    v34(v15, v6);
    v35 = v75;
    v36 = *(v75 + 32);
    v37 = v79;
    v36(v19, v26, v79);
    v38 = v77;
    v36(v77, v19, v37);
    v39 = v70;
    v40 = v76;
    v41 = sub_478DC();
    if (v40)
    {
      v34(a1, v69);
      sub_8F004();
      sub_887C();
      (*(v42 + 8))(v84);
      return (*(v35 + 8))(v38, v79);
    }

    v78 = 0;
    v79 = a1;
    *&v38[v39[5]] = v41;
    v43 = v73;
    sub_8EFF4();
    v44 = sub_8EFB4();
    v45 = v69;
    v68 = v34;
    if ((v44 & 1) == 0)
    {
      v46 = v78;
      sub_8E384();
      v47 = v43;
      v48 = v46;
      if (!v46)
      {
        v34(v47, v45);
        sub_3A94(&v80, v83);
        v39 = v70;
LABEL_12:
        v55 = v77;
        sub_271BC(v39[6]);
        v56 = v71;
        sub_8EFF4();
        if ((sub_8EFB4() & 1) == 0)
        {
          v57 = inited;
          sub_8E384();
          if (!v48)
          {

            v67 = sub_271A0();
            MEMORY[0xED00006E6F697462](v67);
            MEMORY[0xED00006E6F697462](v56, v57);
            sub_3A94(&v80, v83);
            goto LABEL_16;
          }

          v82 = 0;
          v80 = 0u;
          v81 = 0u;
          sub_6678(&v80, &qword_C2DE0, &qword_91DB0);
        }

        v58 = sub_8F504();
        sub_27188();
        v61 = sub_27140(v59, v60, &protocol conformance descriptor for JSONError);
        sub_4264(v61);
        strcpy(v62, "successAction");
        *(v62 + 7) = -4864;
        *(v62 + 2) = v39;
        sub_BBB0();
        (*(v63 + 104))(v64);
        swift_willThrow();

        v65 = sub_271A0();
        MEMORY[0xED00006E6F697462](v65);
        MEMORY[0xED00006E6F697462](v56, v58);

        sub_271D4();
LABEL_16:
        sub_271BC(v39[7]);
        sub_26E0C(v55, v72);
        sub_8F004();
        sub_887C();
        (*(v66 + 8))(v84);
        return sub_26E70(v55);
      }

      v82 = 0;
      v80 = 0u;
      v81 = 0u;
      sub_6678(&v80, &qword_C2DE0, &qword_91DB0);
      v39 = v70;
    }

    sub_8F504();
    sub_27188();
    v51 = sub_27140(v49, v50, &protocol conformance descriptor for JSONError);
    v48 = sub_4264(v51);
    strcpy(v52, "failureAction");
    *(v52 + 7) = -4864;
    *(v52 + 2) = v39;
    sub_BBB0();
    (*(v53 + 104))(v54);
    swift_willThrow();
    v34(v73, v45);

    sub_271D4();
    goto LABEL_12;
  }

  sub_6678(v26, &qword_C2DD0, &unk_935C0);
  v20 = v70;
LABEL_4:
  sub_8F504();
  sub_27188();
  sub_27140(v27, v28, &protocol conformance descriptor for JSONError);
  swift_allocError();
  strcpy(v29, "actionMetrics");
  *(v29 + 7) = -4864;
  *(v29 + 2) = v20;
  sub_BBB0();
  (*(v30 + 104))();
  swift_willThrow();
  v31 = *(v8 + 8);
  v31(a1, v6);
  v31(v15, v6);
  sub_8F004();
  sub_887C();
  return (*(v32 + 8))(v25);
}

uint64_t type metadata accessor for CheckDownloadQueueAction(uint64_t a1)
{
  result = qword_C42C8;
  if (!qword_C42C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CheckDownloadQueueAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26E70(uint64_t a1)
{
  v2 = type metadata accessor for CheckDownloadQueueAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8F0C4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_33C0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_26FB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_8F0C4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_33E8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

void sub_2705C(uint64_t a1)
{
  sub_8F0C4();
  if (v1 <= 0x3F)
  {
    sub_3CAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_270E8(uint64_t a1)
{
  result = sub_27140(&qword_C4308, type metadata accessor for CheckDownloadQueueAction, &unk_93900);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_271BC@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 144);
  v5 = *(v2 - 128);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 112);
  return result;
}

double sub_271D4()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

void sub_271E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_27260()
{
  sub_332C(&qword_C3398, &qword_92E60);
  v11 = sub_8F444();
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v0 = sub_8E304();
  sub_4D6C(v0, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v1 = AMSSetLogKeyIfNeeded();
  sub_8F5F4();

  type metadata accessor for CheckDownloadQueueActionImplementation();
  sub_8E274();

  sub_8E244();
  sub_8E2E4();

  v2 = [objc_allocWithZone(ASDCheckQueueRequestOptions) initWithReason:1];
  v3 = [objc_allocWithZone(ASDCheckQueueRequest) initWithOptions:v2];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v12;
    *(v5 + 24) = v11;
    aBlock[4] = sub_27CC4;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_271E8;
    aBlock[3] = &unk_B81D0;
    v6 = _Block_copy(aBlock);

    [v4 sendRequestCompletionBlock:v6];
    _Block_release(v6);

    return v11;
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_92310;
    v8 = AMSSetLogKeyIfNeeded();
    sub_8F5F4();

    sub_8E274();

    sub_8E244();
    sub_8E2D4();

    sub_27C38();
    swift_allocError();
    *v9 = 0;
    v10 = sub_8F3D4();

    return v10;
  }
}

uint64_t sub_27644(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v3 = sub_8E304();
    sub_4D6C(v3, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92300;
    v4 = AMSSetLogKeyIfNeeded();
    sub_8F5F4();

    type metadata accessor for CheckDownloadQueueActionImplementation();
    sub_8E274();

    sub_8E244();
    swift_getErrorValue();
    v13 = &type metadata for String;
    v12[0] = sub_8FBB4();
    v12[1] = v5;
    sub_8E264();
    sub_4DA4(v12);
    sub_8E2D4();

    sub_8F3F4();
  }

  else if (a1)
  {
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v7 = sub_8E304();
    sub_4D6C(v7, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92300;
    v8 = AMSSetLogKeyIfNeeded();
    sub_8F5F4();

    type metadata accessor for CheckDownloadQueueActionImplementation();
    sub_8E274();

    sub_8E244();
    v13 = &type metadata for Bool;
    LOBYTE(v12[0]) = 1;
    sub_8E264();
    sub_4DA4(v12);
    sub_8E2E4();

    v13 = &type metadata for Bool;
    LOBYTE(v12[0]) = 1;
    sub_8F414();
    return sub_CDAC(v12);
  }

  else
  {
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v9 = sub_8E304();
    sub_4D6C(v9, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92310;
    v10 = AMSSetLogKeyIfNeeded();
    sub_8F5F4();

    type metadata accessor for CheckDownloadQueueActionImplementation();
    sub_8E274();

    sub_8E244();
    sub_8E2D4();

    sub_27C38();
    swift_allocError();
    *v11 = 1;
    sub_8F3F4();
  }
}

unint64_t sub_27BBC()
{
  result = qword_C4308;
  if (!qword_C4308)
  {
    type metadata accessor for CheckDownloadQueueAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4308);
  }

  return result;
}

unint64_t sub_27C38()
{
  result = qword_C43D0;
  if (!qword_C43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C43D0);
  }

  return result;
}

uint64_t sub_27C8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_27CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for CheckDownloadQueueActionImplementation.ActionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27DB0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27DEC()
{
  result = qword_C43D8;
  if (!qword_C43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C43D8);
  }

  return result;
}

uint64_t sub_27E40()
{
  v0 = sub_8EE64();
  sub_29B1C(v0, qword_C43E0);
  *sub_4D6C(v0, qword_C43E0) = 2;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

BOOL sub_27ED0()
{
  v1 = [v0 navigationController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

id sub_27F18(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin20ClientViewController_child] = 0;
  *&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin20ClientViewController_destination] = a1;
  *&v2[OBJC_IVAR____TtC19CoreDynamicUIPlugin20ClientViewController_objectGraph] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ClientViewController();
  return objc_msgSendSuper2(&v4, "init");
}

void sub_27F70()
{
  *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin20ClientViewController_child) = 0;
  sub_8FAA4();
  __break(1u);
}

id sub_28034()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || sub_27ED0())
    {
      v3 = [v2 navigationItem];

      return v3;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for ClientViewController();
  v5 = objc_msgSendSuper2(&v6, "navigationItem");

  return v5;
}

void sub_28100()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ClientViewController();
  objc_msgSendSuper2(&v3, "loadView");
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_clear];
  [v1 setBackgroundColor:v2];
}

uint64_t sub_281E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientViewController();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  return sub_28388();
}

void sub_28260()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ClientViewController();
  objc_msgSendSuper2(&v13, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin20ClientViewController_child];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v3 setFrame:{v6, v8, v10, v12}];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_28388()
{
  v1 = v0;
  sub_8EE74();
  sub_42F8();
  v43 = v3;
  v44 = v2;
  __chkstk_darwin(v2);
  sub_8814();
  v42 = v5 - v4;
  sub_8EEA4();
  sub_42F8();
  v40 = v7;
  v41 = v6;
  __chkstk_darwin(v6);
  sub_8814();
  v39 = v9 - v8;
  v38 = sub_8EEC4();
  sub_42F8();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = objc_allocWithZone(type metadata accessor for LoadingViewController());
  v19 = sub_4C558(0);
  sub_28D34(v19);

  sub_8E524();
  sub_8F174();
  sub_8F394();
  v20 = aBlock[0];
  v21 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin20ClientViewController_destination];
  sub_13EC8();
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  v23 = *(*v20 + 232);
  v24 = v1;
  v23(v21, sub_29A38, v22);

  sub_CE5C(0, &qword_C3F30, OS_dispatch_queue_ptr);
  v37 = sub_8F7D4();
  sub_8EEB4();
  if (qword_C2C80 != -1)
  {
    swift_once();
  }

  v25 = sub_8EE64();
  sub_4D6C(v25, qword_C43E0);
  v26 = v17;
  sub_8EED4();
  v36 = *(v11 + 8);
  v27 = v38;
  v36(v15, v38);
  sub_13EC8();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_29A40;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3FD30;
  aBlock[3] = &unk_B82D8;
  v29 = _Block_copy(aBlock);

  v30 = v39;
  sub_8EE94();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_29A60();
  sub_332C(&unk_C50C0, &unk_94D10);
  sub_29AB8();
  v31 = v42;
  v32 = v44;
  sub_8F944();
  v33 = v37;
  sub_8F7C4();
  _Block_release(v29);

  (*(v43 + 8))(v31, v32);
  (*(v40 + 8))(v30, v41);
  return (v36)(v26, v27);
}

uint64_t sub_28814(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_8EE74();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_8EEA4();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CE5C(0, &qword_C3F30, OS_dispatch_queue_ptr);
  v12 = sub_8F7D4();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a3;
  v13[4] = a2;
  aBlock[4] = sub_29BC4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3FD30;
  aBlock[3] = &unk_B8328;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = a3;
  swift_errorRetain();

  sub_8EE94();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_29A60();
  sub_332C(&unk_C50C0, &unk_94D10);
  sub_29AB8();
  sub_8F944();
  sub_8F7E4();
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

void sub_28AC4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    sub_28D34(v4);
  }

  else
  {
    if (a3)
    {
      v3 = a3;
    }

    else
    {
      sub_29BD0();
      v3 = swift_allocError();
    }

    swift_errorRetain();
    sub_28BD4(v3);
  }
}

void sub_28B80(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_28FCC();
  }
}

void sub_28CB4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_28E1C();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_28388();
  }
}

id sub_28D34(void *a1)
{
  sub_28E1C();
  v3 = OBJC_IVAR____TtC19CoreDynamicUIPlugin20ClientViewController_child;
  if (*&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin20ClientViewController_child])
  {
    [v1 unsetChildViewController:?];
    v4 = *&v1[v3];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v3] = a1;
  v5 = a1;

  return [v1 setChildViewController:v5];
}

void sub_28E1C()
{
  if (sub_28EE0())
  {
    v1 = [v0 navigationItem];
    sub_298D4(&_swiftEmptyArrayStorage, v1, &selRef_setLeftBarButtonItems_);

    v2 = [v0 navigationItem];
    sub_298D4(&_swiftEmptyArrayStorage, v2, &selRef_setRightBarButtonItems_);
  }
}

id sub_28EE0()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 viewControllers];
  sub_CE5C(0, &qword_C44B0, UIViewController_ptr);
  sub_8F6C4();

  v4 = sub_35028();

  if (v4 >= 2)
  {
    v6 = [v0 navigationItem];
    v5 = [v6 hidesBackButton];
  }

  else
  {
    v5 = &def_4BB18 + 1;
  }

  return v5;
}

void sub_28FCC()
{
  v1 = v0;
  v2 = sub_332C(&qword_C50D0, &qword_93420);
  __chkstk_darwin(v2 - 8);
  v4 = v38 - v3;
  v5 = sub_8F364();
  sub_42F8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_8814();
  v11 = v10 - v9;
  v12 = sub_8E324();
  sub_42F8();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_8814();
  v18 = v17 - v16;
  if (sub_28EE0())
  {
    v19 = [v0 navigationItem];
    sub_298D4(&_swiftEmptyArrayStorage, v19, &selRef_setRightBarButtonItems_);

    if (_UISolariumEnabled() && ((*(v14 + 104))(v18, enum case for FlagKeys.Solarium(_:), v12), v20 = sub_8E314(), (*(v14 + 8))(v18, v12), (v20 & 1) != 0))
    {
      v39 = type metadata accessor for ClientViewController();
      v38[0] = v1;
      objc_allocWithZone(UIBarButtonItem);
      v21 = v1;
      v22 = sub_295F8(1, v38, "cancelButtonAction");
      v23 = [v21 navigationController];
      if (v23 && (v24 = v23, v25 = [v23 navigationBar], v24, v26 = objc_msgSend(v25, "backItem"), v25, v26) && (v26, v27 = objc_msgSend(v21, "traitCollection"), v28 = objc_msgSend(v27, "userInterfaceIdiom"), v27, v28 != &dword_4 + 1))
      {
        v29 = [v21 navigationItem];
        sub_332C(&qword_C44A0, &unk_938F0);
        sub_29D58();
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_93AC0;
        *(v30 + 32) = v22;
        v31 = &selRef_setLeftBarButtonItems_;
      }

      else
      {
        v29 = [v21 navigationItem];
        sub_332C(&qword_C44A0, &unk_938F0);
        sub_29D58();
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_93AC0;
        *(v30 + 32) = v22;
        v31 = &selRef_setRightBarButtonItems_;
      }

      sub_298D4(v30, v29, v31);
    }

    else
    {
      sub_8F174();
      sub_8F394();
      type metadata accessor for Localizations();
      (*(v7 + 16))(v4, v11, v5);
      sub_33E8(v4, 0, 1, v5);
      v32 = sub_4D2D0(0x415F4C45434E4143, 0xED00004E4F495443, v4);
      v34 = v33;
      sub_29960(v4);
      v35 = [v1 navigationItem];
      sub_332C(&qword_C44A0, &unk_938F0);
      sub_29D58();
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_93AC0;
      v39 = type metadata accessor for ClientViewController();
      v38[0] = v1;
      objc_allocWithZone(UIBarButtonItem);
      v37 = v1;
      *(v36 + 32) = sub_29750(v32, v34, 0, v38, "cancelButtonAction");
      sub_298D4(v36, v35, &selRef_setLeftBarButtonItems_);

      (*(v7 + 8))(v11, v5);
    }
  }
}

id sub_29544(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClientViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_295F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    v8 = sub_CD08(a2, a2[3]);
    v9 = *(v6 - 8);
    __chkstk_darwin(v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_8FB44();
    (*(v9 + 8))(v11, v6);
    sub_4F30(a2);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v3 initWithBarButtonSystemItem:a1 target:v12 action:a3];
  swift_unknownObjectRelease();
  return v13;
}

id sub_29750(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_8F5C4();
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[3];
  if (v11)
  {
    v12 = sub_CD08(a4, a4[3]);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_8FB44();
    (*(v13 + 8))(v15, v11);
    sub_4F30(a4);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v6 initWithTitle:v10 style:a3 target:v16 action:a5];

  swift_unknownObjectRelease();
  return v17;
}

void sub_298D4(uint64_t a1, void *a2, SEL *a3)
{
  sub_CE5C(0, &qword_C44A8, UIBarButtonItem_ptr);
  isa = sub_8F6B4().super.isa;

  [a2 *a3];
}

uint64_t sub_29960(uint64_t a1)
{
  v2 = sub_332C(&qword_C50D0, &qword_93420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_299C8()
{
  swift_unknownObjectWeakDestroy();
  sub_13EC8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_29A04()
{
  sub_13EC8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_29A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29A60()
{
  result = qword_C44C0;
  if (!qword_C44C0)
  {
    sub_8EE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C44C0);
  }

  return result;
}

unint64_t sub_29AB8()
{
  result = qword_C44D0;
  if (!qword_C44D0)
  {
    sub_3D10(&unk_C50C0, &unk_94D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C44D0);
  }

  return result;
}

uint64_t *sub_29B1C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_29B80()
{

  sub_29D58();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_29BD0()
{
  result = qword_C44D8;
  if (!qword_C44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C44D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientViewController.PresentationError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x29CC0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_29CFC()
{
  result = qword_C44E0;
  if (!qword_C44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C44E0);
  }

  return result;
}

uint64_t type metadata accessor for CollapsibleText(uint64_t a1)
{
  result = qword_C4558;
  if (!qword_C4558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v91 = a3;
  sub_8EFE4();
  sub_42F8();
  v95 = v5;
  v96 = v4;
  v6 = __chkstk_darwin(v4);
  v90 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v89 = &v84 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v84 - v11;
  __chkstk_darwin(v10);
  v14 = &v84 - v13;
  v15 = sub_332C(&qword_C3598, &unk_929F0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v84 - v19;
  v21 = type metadata accessor for CollapsibleText(0);
  sub_4248();
  __chkstk_darwin(v22);
  sub_8814();
  v25 = (v24 - v23);
  bzero((v24 - v23 + 136), 0x88uLL);
  v26 = v25 + *(v21 + 32);
  *(v26 + 32) = 0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v94 = v26;
  v92 = v21;
  v27 = v93;
  v28 = sub_473C0();
  v30 = v27;
  if (!v27)
  {
    v84 = v18;
    v85 = 0;
    v87 = v20;
    v88 = v12;
    v98[0] = v28;
    v98[1] = v29;
    v93 = v25;
    sub_8F9B4();
    v32 = a1;
    sub_8EFF4();
    v33 = sub_8EFB4();
    v34 = v92;
    v35 = v95;
    v36 = v14;
    if ((v33 & 1) == 0)
    {
      v37 = v84;
      sub_2A7D8(v36, v99, v84);
      v38 = sub_8F204();
      if (sub_33C0(v37, 1, v38) != 1)
      {
        v47 = v37;
        v39 = v32;
        v86 = *(v35 + 1);
        v86(v36, v96);
        sub_42A0();
        v46 = v87;
        (*(v48 + 32))(v87, v47, v38);
        sub_33E8(v46, 0, 1, v38);
LABEL_8:
        v49 = *(v34 + 28);
        v50 = v34;
        v25 = v93;
        sub_11068(v46, v93 + v49);
        v51 = v88;
        sub_8EFF4();
        if ((sub_8EFB4() & 1) == 0)
        {
          sub_2A98C(v51, v99);
          if (*&v97[128])
          {
            v52 = v51;
            v53 = v39;
            v54 = v96;
            v55 = v86;
            v86(v52, v96);
            memcpy(v98, v97, 0x88uLL);
            memcpy(v25, v98, 0x88uLL);
            v56 = v89;
            v95 = v53;
            sub_8EFF4();
            if ((sub_8EFB4() & 1) == 0)
            {
              sub_2A98C(v56, v99);
              if (*&v97[128])
              {
                v55(v56, v54);
                memcpy(v98, v97, 0x88uLL);
                goto LABEL_21;
              }

              sub_3410(v97, &qword_C44F8, &unk_93C70);
            }

            sub_8F504();
            sub_2AF84();
            v68 = sub_2AB90(v66, v67, &protocol conformance descriptor for JSONError);
            v69 = sub_4264(v68);
            sub_2AF9C(v69, v70);
            sub_42A0();
            (*(v71 + 104))();
            swift_willThrow();
            v55(v56, v54);

            bzero(v98, 0x88uLL);
LABEL_21:
            sub_2ABD8(v98, v93 + 136, &qword_C44F8, &unk_93C70);
            v72 = v90;
            v73 = v95;
            sub_8EFF4();
            if ((sub_8EFB4() & 1) == 0)
            {
              sub_2AAFC();
              if (*&v97[24])
              {
                v74 = v96;
                v55(v95, v96);
                v55(v72, v74);
                sub_3A94(v97, v98);
LABEL_26:
                sub_2ABD8(v98, v94, &qword_C2DE0, &qword_91DB0);
                v82 = v93;
                sub_2AC28(v93, v91);
                sub_8F004();
                sub_4248();
                (*(v83 + 8))(v99);
                return sub_2AC8C(v82);
              }

              sub_3410(v97, &qword_C2DE0, &qword_91DB0);
              v73 = v95;
            }

            sub_8F504();
            sub_2AF84();
            v77 = sub_2AB90(v75, v76, &protocol conformance descriptor for JSONError);
            v78 = sub_4264(v77);
            sub_2AF9C(v78, v79);
            sub_42A0();
            (*(v80 + 104))();
            swift_willThrow();
            v81 = v96;
            v55(v73, v96);
            v55(v72, v81);

            memset(v98, 0, 40);
            goto LABEL_26;
          }

          sub_3410(v97, &qword_C44F8, &unk_93C70);
          v50 = v92;
        }

        sub_8F504();
        sub_2AF84();
        v59 = sub_2AB90(v57, v58, &protocol conformance descriptor for JSONError);
        sub_4264(v59);
        *v60 = 0x6C6961746564;
        v60[1] = 0xE600000000000000;
        v60[2] = v50;
        sub_42A0();
        (*(v61 + 104))();
        swift_willThrow();
        v62 = v96;
        v63 = v86;
        v86(v39, v96);
        v63(v51, v62);
        v31 = v99;
        v30 = v85;
        goto LABEL_15;
      }

      sub_3410(v37, &qword_C3598, &unk_929F0);
    }

    v39 = v32;
    sub_8F504();
    sub_2AF84();
    v42 = sub_2AB90(v40, v41, &protocol conformance descriptor for JSONError);
    sub_4264(v42);
    *v43 = 0xD000000000000011;
    v43[1] = 0x800000000009DDE0;
    v43[2] = v34;
    sub_42A0();
    (*(v44 + 104))();
    swift_willThrow();
    v86 = *(v35 + 1);
    v86(v36, v96);

    v45 = sub_8F204();
    v46 = v87;
    sub_33E8(v87, 1, 1, v45);
    goto LABEL_8;
  }

  (*(v95 + 1))(a1, v96);
  v31 = v99;
LABEL_15:
  sub_8F004();
  sub_4248();
  (*(v64 + 8))(v31);
  sub_3410(v25 + 136, &qword_C44F8, &unk_93C70);
  if (!v30)
  {
    sub_17A94(v25 + 272);
    sub_3410(v25 + *(v92 + 28), &qword_C3598, &unk_929F0);
  }

  return sub_3410(v94, &qword_C2DE0, &qword_91DB0);
}

uint64_t sub_2A7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F1C4();
  v13 = sub_8F204();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t sub_2A98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_8F004();
  sub_42F8();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_8814();
  v10 = v9 - v8;
  sub_8EFE4();
  sub_42F8();
  __chkstk_darwin(v11);
  sub_8814();
  (*(v14 + 16))(v13 - v12, a1);
  (*(v6 + 16))(v10, a2, v4);
  return sub_8E4C4();
}

void *sub_2AAFC()
{
  sub_8E394();
  swift_initStackObject();
  return sub_8E384();
}

uint64_t sub_2AB90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2ABD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2AFB4(a1, a2, a3, a4);
  sub_4248();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_2AC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollapsibleText(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2AC8C(uint64_t a1)
{
  v2 = type metadata accessor for CollapsibleText(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2ACE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2AFB4(a1, a2, a3, a4);
  sub_4248();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2AD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 128);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_332C(&qword_C3598, &unk_929F0);
    v9 = a1 + *(a3 + 28);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_2ADF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 128) = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C3598, &unk_929F0);
    v8 = v5 + *(a4 + 28);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

void sub_2AE80(uint64_t a1)
{
  sub_2AF34();
  if (v1 <= 0x3F)
  {
    sub_E69C(319);
    if (v2 <= 0x3F)
    {
      sub_3CAC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2AF34()
{
  if (!qword_C4568)
  {
    v0 = sub_8F924();
    if (!v1)
    {
      atomic_store(v0, &qword_C4568);
    }
  }
}

void *sub_2AF9C(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v4;
  a2[2] = *(v2 + 64);
  return result;
}

uint64_t sub_2AFB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_332C(a3, a4);
}

uint64_t sub_2AFD4()
{
  swift_getKeyPath();
  sub_332C(&qword_C46D0, &unk_93D90);
  sub_8F044();

  v0 = v6;
  v1 = v7;

  sub_2C218(v5);
  sub_2B0F8(v0, v1);
  swift_getKeyPath();
  sub_8F044();

  v2 = v7;
  if (v7)
  {
    v3 = v6;

    sub_2C218(v5);
  }

  else
  {
    sub_6678(v5, &qword_C44F8, &unk_93C70);
    v3 = 0;
  }

  return sub_2B1E0(v3, v2);
}

uint64_t sub_2B0F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_8FB54() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2C39C();
    sub_2C3D4(v8, v9, v10);
  }
}

uint64_t sub_2B1E0(uint64_t a1, uint64_t a2)
{
  if (sub_2BABC(*(v2 + 32), *(v2 + 40), a1, a2))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2C39C();
    sub_2C3D4(v6, v7, v8);
  }

  else
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }
}

uint64_t sub_2B2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8E5D4();
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_8F264();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_332C(&qword_C46D0, &unk_93D90);
  sub_8F044();

  if (!*(&v22 + 1))
  {
    return sub_6678(&v21, &qword_C2DE0, &qword_91DB0);
  }

  sub_3A94(&v21, v24);
  if (sub_2B734())
  {
    v20 = v9;
    sub_8E5F4();
    sub_8F174();
    sub_8F394();
    v19 = v21;
    sub_8F394();
    v18 = a3;
    if (qword_C2CE0 != -1)
    {
      swift_once();
    }

    v12 = sub_8E304();
    v17 = sub_4D6C(v12, qword_D0378);
    sub_332C(&unk_C3920, &unk_92D50);
    sub_8E2A4();
    *(swift_allocObject() + 16) = xmmword_92300;
    *(&v22 + 1) = type metadata accessor for CollapsibleTextComponent();
    *&v21 = v3;
    v13 = v3;
    sub_8E264();
    sub_6678(&v21, &unk_C3EB0, &qword_92380);
    sub_8E244();
    *(&v22 + 1) = &type metadata for AnyHashable;
    *&v21 = swift_allocObject();
    sub_8F054();
    sub_8E264();
    sub_6678(&v21, &unk_C3EB0, &qword_92380);
    sub_8E2E4();

    v14 = v20;
    (*(v20 + 16))(v7, v11, v8);
    v15 = sub_332C(&unk_C5850, &unk_92840);
    sub_33E8(v7, 0, 1, v15);
    v21 = 0u;
    v22 = 0u;
    v23 = -1;
    (*(*v19 + 216))(v24, v7, v18, &v21);

    sub_6678(&v21, &qword_C3940, &unk_92AE0);
    sub_CE00(v7);
    (*(v14 + 8))(v11, v8);
  }

  return sub_4F30(v24);
}

uint64_t sub_2B734()
{
  swift_getKeyPath();
  sub_2C364();
  v3 = sub_2C1C0(v1, v2, &unk_93D28);
  sub_2C37C(v3, v4, v5);

  return *(v0 + 56);
}

uint64_t sub_2B7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for CollapsibleTextComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_2B824(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_2B878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_8E3D4();
}

uint64_t sub_2B8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_2B970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_2B9EC()
{
  swift_getKeyPath();
  sub_2C364();
  v3 = sub_2C1C0(v1, v2, &unk_93D28);
  sub_2C37C(v3, v4, v5);

  v6 = *(v0 + 16);

  return v6;
}

uint64_t sub_2BA7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2B0F8(v1, v2);
}

BOOL sub_2BABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_8FB54();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_2BB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t sub_2BB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2C364();
  sub_2C1C0(v3, v4, &unk_93D28);
  return sub_8E1A4();
}

uint64_t sub_2BBF4()
{
  swift_getKeyPath();
  sub_2C364();
  v3 = sub_2C1C0(v1, v2, &unk_93D28);
  sub_2C37C(v3, v4, v5);

  v6 = *(v0 + 32);

  return v6;
}

uint64_t sub_2BC84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2B1E0(v1, v2);
}

uint64_t sub_2BCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

double sub_2BD00()
{
  swift_getKeyPath();
  sub_2C364();
  v3 = sub_2C1C0(v1, v2, &unk_93D28);
  sub_2C37C(v3, v4, v5);

  return *(v0 + 48);
}

void sub_2BD80(double a1)
{
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2C3C0();
    *(v4 - 8) = a1;
    sub_2C3D4(v5, v6, v7);
  }
}

uint64_t sub_2BE1C(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2C3C0();
    *(v4 - 8) = v2;
    sub_2C3D4(v5, v6, v7);
  }

  return result;
}

uint64_t sub_2BEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0x404E000000000000;
  *(v4 + 56) = 0;
  sub_8E1C4();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_2B1E0(a3, a4);
  return v4;
}

uint64_t sub_2BF20()
{

  v1 = OBJC_IVAR____TtC19CoreDynamicUIPlugin24CollapsibleTextViewModel___observationRegistrar;
  sub_8E1D4();
  sub_887C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_2BF84()
{
  sub_2BF20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CollapsibleTextViewModel(uint64_t a1)
{
  result = qword_C45D8;
  if (!qword_C45D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2C030(uint64_t a1)
{
  result = sub_8E1D4();
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

uint64_t sub_2C134()
{
  sub_4F30((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2C16C()
{
  sub_2C3B4();
  result = sub_2B734();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2C1C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2C26C()
{
  sub_2C3B4();
  result = sub_2BBF4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2C2B8()
{
  sub_2C3B4();
  result = sub_2B9EC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

double sub_2C354()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 48) = result;
  return result;
}

uint64_t sub_2C37C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return ObservationRegistrar.access<A, B>(_:keyPath:)(va, v3, a1);
}

uint64_t sub_2C3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2BB4C(a1, v3, a3);
}

id sub_2C3EC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC19CoreDynamicUIPlugin24CollapsibleTextComponent_viewModel;
  type metadata accessor for CollapsibleTextViewModel(0);
  swift_allocObject();
  *&v4[v9] = sub_2BEB0(0, 0xE000000000000000, 0, 0);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for CollapsibleTextComponent();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_2C564();

  return v10;
}

void sub_2C564()
{
  v1 = v0;
  v2 = sub_8ED24();
  v48 = *(v2 - 8);
  __chkstk_darwin(v2);
  v3 = type metadata accessor for CollapsibleTextView(0);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v48 - v8;
  *(&v48 - v8) = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin24CollapsibleTextComponent_viewModel];
  v49 = 0;

  sub_8EE14();
  v10 = v51;
  v9[8] = v50;
  *(v9 + 2) = v10;
  v11 = *(v4 + 32);
  *&v9[v11] = swift_getKeyPath();
  sub_332C(&qword_C4710, &qword_93EF0);
  swift_storeEnumTagMultiPayload();
  v12 = *(v4 + 36);
  *&v9[v12] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_2CF74(v9, v7);
  v13 = objc_allocWithZone(sub_332C(&qword_C4718, &qword_93F28));
  v14 = sub_8ECF4();
  sub_332C(&qword_C4720, &qword_93F30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_92E10;
  sub_8ED14();
  v50 = v15;
  sub_2CFD8();
  sub_332C(&qword_C4730, &qword_93F38);
  sub_2D030();
  sub_8F944();
  sub_8ECE4();
  v16 = [v1 contentView];
  v17 = v14;
  v18 = [v17 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v18;
  [v16 addSubview:v18];

  v20 = sub_2D198();
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v20;
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = sub_2D198();
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v1 contentView];
  v26 = [v25 topAnchor];

  v27 = sub_2D17C();
  sub_2D160();

  v28 = sub_2D198();
  if (!v28)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v1 contentView];
  v32 = [v31 bottomAnchor];

  v33 = sub_2D17C();
  sub_2D160();

  v34 = sub_2D198();
  if (!v34)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v35 = v34;
  v36 = [v34 leftAnchor];

  v37 = [v1 contentView];
  v38 = [v37 leftAnchor];

  v39 = sub_2D17C();
  sub_2D160();

  v40 = sub_2D198();
  if (!v40)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v41 = v40;
  v42 = [v40 rightAnchor];

  v43 = [v1 contentView];
  v44 = [v43 rightAnchor];

  v45 = [v42 constraintEqualToAnchor:v44];
  [v45 setActive:1];

  v46 = sub_2D198();
  if (v46)
  {
    v47 = [objc_opt_self() clearColor];
    [v46 setBackgroundColor:v47];

    sub_2D094(v9);
    return;
  }

LABEL_15:
  __break(1u);
}

id sub_2CB84(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CollapsibleTextComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_2CBEC(void *a1)
{
  v2 = sub_8E324();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2), v6 = sub_8E314(), (*(v3 + 8))(v5, v2), (v6 & 1) != 0))
  {
    v7 = [a1 container];
    swift_getObjectType();
    sub_48804();
    v9 = v8;
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = [a1 traitCollection];
    v11 = sub_8883C();

    if (v11)
    {
      v9 = 142.0;
    }

    else
    {
      v9 = 28.0;
    }
  }

  [objc_msgSend(a1 "container")];
  v13 = v12;
  swift_unknownObjectRelease();
  v14 = objc_opt_self();
  v15 = [v14 absoluteDimension:v13 - (v9 + v9)];
  v16 = [v14 estimatedDimension:60.0];
  v17 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v16];

  return v17;
}

uint64_t sub_2CE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_332C(&qword_C4740, &unk_93F40);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_2D0F0(a1, &v11 - v8);
  return a5(v9);
}

uint64_t sub_2CF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollapsibleTextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2CFD8()
{
  result = qword_C4728;
  if (!qword_C4728)
  {
    sub_8ED24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4728);
  }

  return result;
}

unint64_t sub_2D030()
{
  result = qword_C4738;
  if (!qword_C4738)
  {
    sub_3D10(&qword_C4730, &qword_93F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4738);
  }

  return result;
}

uint64_t sub_2D094(uint64_t a1)
{
  v2 = type metadata accessor for CollapsibleTextView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2D0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&qword_C4740, &unk_93F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2D160()
{
  v3 = *(v1 + 3096);

  return [v0 v3];
}

id sub_2D17C()
{
  v4 = *(v2 + 2816);

  return [v0 v4];
}

id sub_2D198()
{
  v3 = *(v1 + 2024);

  return [v0 v3];
}

uint64_t sub_2D1C4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_332C(&qword_C4748, &unk_93F50);
    v9 = a1 + *(a3 + 24);

    return sub_33C0(v9, a2, v8);
  }
}

void *sub_2D26C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_332C(&qword_C4748, &unk_93F50);
    v8 = v5 + *(a4 + 24);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CollapsibleTextView(uint64_t a1)
{
  result = qword_C47A8;
  if (!qword_C47A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2D344(uint64_t a1)
{
  type metadata accessor for CollapsibleTextViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2D3E0();
    if (v2 <= 0x3F)
    {
      sub_2D430(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2D3E0()
{
  if (!qword_C47B8)
  {
    v0 = sub_8EE44();
    if (!v1)
    {
      atomic_store(v0, &qword_C47B8);
    }
  }
}

void sub_2D430(uint64_t a1)
{
  if (!qword_C47C0)
  {
    sub_3D10(&qword_C4740, &unk_93F40);
    v1 = sub_8EBD4();
    if (!v2)
    {
      atomic_store(v1, &qword_C47C0);
    }
  }
}

uint64_t sub_2D4B0()
{
  v0 = sub_8E324();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v2 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2B9EC();
  v31 = v3;
  sub_2ED9C();
  v4 = sub_8ED84();
  v6 = v5;
  v8 = v7;
  v30 = sub_2D774();
  v9 = sub_8ED54();
  v11 = v10;
  v13 = v12;
  v27[1] = v14;
  sub_2ED8C(v4, v6, v8 & 1);

  if (_UISolariumEnabled() && (v16 = v28, v15 = v29, (*(v28 + 104))(v2, enum case for FlagKeys.Solarium(_:), v29), v17 = sub_8E314(), (*(v16 + 8))(v2, v15), (v17 & 1) != 0))
  {
    sub_8ED44();
  }

  else
  {
    sub_8ED34();
  }

  v18 = sub_8ED74();
  v20 = v19;
  v22 = v21;

  sub_2ED8C(v9, v11, v13 & 1);

  if (_UISolariumEnabled())
  {
    v24 = v28;
    v23 = v29;
    (*(v28 + 104))(v2, enum case for FlagKeys.Solarium(_:), v29);
    sub_8E314();
    (*(v24 + 8))(v2, v23);
  }

  v25 = sub_8ED64();
  sub_2ED8C(v18, v20, v22 & 1);

  return v25;
}

uint64_t sub_2D774()
{
  v0 = sub_8E324();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_8E314(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_secondaryText;
  }

  else
  {
    v5 = &selRef_ams_primaryText;
  }

  v6 = [objc_opt_self() *v5];
  return sub_8EDE4();
}

uint64_t sub_2D89C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CollapsibleTextView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_8E324();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_332C(&qword_C47F8, &qword_93FD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  if (_UISolariumEnabled() && ((*(v8 + 104))(v10, enum case for FlagKeys.Solarium(_:), v7), v14 = sub_8E314(), (*(v8 + 8))(v10, v7), (v14 & 1) != 0))
  {
    v15 = sub_8ECD4();
  }

  else
  {
    v15 = sub_8ECC4();
  }

  *v13 = v15;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v16 = sub_332C(&qword_C4800, &unk_93FD8);
  sub_2DB9C(v2, &v13[*(v16 + 44)]);
  sub_2CF74(v2, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_2E444(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = sub_8EE54();
  v21 = v20;
  sub_2F1DC(v13, a1, &qword_C47F8, &qword_93FD0);
  v22 = (a1 + *(sub_332C(&qword_C4808, &qword_93FE8) + 36));
  *v22 = sub_2EC88;
  v22[1] = 0;
  v22[2] = v19;
  v22[3] = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2E4A8;
  *(v23 + 24) = v18;
  result = sub_332C(&qword_C4810, &qword_93FF0);
  v25 = (a1 + *(result + 36));
  *v25 = sub_2ECC8;
  v25[1] = v23;
  return result;
}

uint64_t sub_2DB9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = sub_332C(&qword_C4818, &qword_93FF8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v40 - v7;
  v9 = sub_8E324();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2BBF4();
  if (v14)
  {
    v42 = v6;
    v44 = v13;
    v45 = v14;
    sub_2ED9C();
    v15 = sub_8ED84();
    v17 = v16;
    v19 = v18;
    v20 = _UISolariumEnabled();
    v41 = v8;
    if (v20 && ((*(v10 + 104))(v12, enum case for FlagKeys.Solarium(_:), v9), v21 = sub_8E314(), (*(v10 + 8))(v12, v9), (v21 & 1) != 0))
    {
      sub_8ED44();
    }

    else
    {
      sub_8ED34();
    }

    v22 = sub_8ED74();
    v24 = v23;
    v26 = v25;

    sub_2ED8C(v15, v17, v19 & 1);

    v44 = sub_2D774();
    v27 = sub_8ED54();
    v29 = v28;
    v30 = a1;
    v32 = v31;
    v34 = v33;
    sub_2ED8C(v22, v24, v26 & 1);

    v35 = v32 & 1;
    a1 = v30;
    sub_2ED38(v27, v29, v35);

    v8 = v41;
    v6 = v42;
  }

  else
  {
    v27 = 0;
    v29 = 0;
    v35 = 0;
    v34 = 0;
  }

  *v8 = sub_8ECB4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v36 = sub_332C(&qword_C4820, &qword_94000);
  sub_2DF58(a1, &v8[*(v36 + 44)]);
  sub_2ACE8(v8, v6, &qword_C4818, &qword_93FF8);
  v37 = v43;
  *v43 = v27;
  v37[1] = v29;
  v37[2] = v35;
  v37[3] = v34;
  v38 = sub_332C(&qword_C4828, &qword_94008);
  sub_2ACE8(v6, v37 + *(v38 + 48), &qword_C4818, &qword_93FF8);
  sub_2ECF4(v27, v29, v35, v34);
  sub_2ED48(v27, v29, v35, v34);
  sub_3410(v8, &qword_C4818, &qword_93FF8);
  sub_3410(v6, &qword_C4818, &qword_93FF8);
  return sub_2ED48(v27, v29, v35, v34);
}

uint64_t sub_2DF58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v39 = sub_332C(&qword_C4838, &qword_94010);
  __chkstk_darwin(v39);
  v37 = (&v36 - v3);
  v4 = sub_332C(&qword_C4840, &qword_94018);
  v5 = __chkstk_darwin(v4 - 8);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v36 - v7;
  v8 = type metadata accessor for CollapsibleTextView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_2D4B0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2CF74(a1, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_2E444(&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_2E358(v11, v13, v15 & 1, v17, sub_2EFB8, v19, __src);
  if (sub_2B734())
  {
    v20 = sub_8EDF4();
    v21 = sub_8EDC4();
    KeyPath = swift_getKeyPath();
    v23 = v39;
    v24 = v37;
    v25 = (v37 + *(v39 + 36));
    v26 = *(sub_332C(&qword_C4850, &qword_94058) + 28);
    v27 = enum case for Image.Scale.small(_:);
    v28 = sub_8EE04();
    (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
    *v25 = swift_getKeyPath();
    *v24 = v20;
    v24[1] = KeyPath;
    v24[2] = v21;
    v29 = v38;
    sub_2F1DC(v24, v38, &qword_C4838, &qword_94010);
    v30 = 0;
    v31 = v23;
  }

  else
  {
    v30 = 1;
    v29 = v38;
    v31 = v39;
  }

  sub_33E8(v29, v30, 1, v31);
  v32 = v40;
  sub_2ACE8(v29, v40, &qword_C4840, &qword_94018);
  memcpy(v42, __src, sizeof(v42));
  v33 = v41;
  memcpy(v41, __src, 0x60uLL);
  v34 = sub_332C(&qword_C4848, &qword_94020);
  sub_2ACE8(v32, v33 + *(v34 + 48), &qword_C4840, &qword_94018);
  sub_2F028(v42, v43);
  sub_3410(v29, &qword_C4840, &qword_94018);
  sub_3410(v32, &qword_C4840, &qword_94018);
  memcpy(v43, __src, 0x60uLL);
  return sub_2F060(v43);
}

__n128 sub_2E358@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for CGSize(0);
  sub_8EE14();
  sub_8EE14();
  result = v15;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 17) = v15.n128_u32[0];
  *(a7 + 20) = *(v15.n128_u32 + 3);
  *(a7 + 24) = a4;
  *(a7 + 32) = v15;
  *(a7 + 48) = v16;
  *(a7 + 56) = v15;
  *(a7 + 72) = v16;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6;
  return result;
}

uint64_t sub_2E444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollapsibleTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2E514@<X0>(void *a1@<X8>)
{
  v39 = a1;
  v31 = sub_8E324();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  memcpy((v8 + 16), v1, 0x60uLL);
  sub_2ED38(v3, v4, v5);

  sub_2ED38(v3, v4, v5);

  v34 = v1;
  sub_2F028(v1, v61);
  v9 = sub_8EE54();
  v11 = v10;
  v40 = v5;
  v56[0] = v5;
  LOBYTE(v55[0]) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2F558;
  *(v12 + 24) = v8;
  v38 = v12;
  v64[0] = v3;
  v64[1] = v4;
  LOBYTE(v64[2]) = v56[0];
  v64[3] = v6;
  v64[4] = KeyPath;
  v64[5] = 1;
  LOBYTE(v64[6]) = v55[0];
  v64[7] = sub_2EC88;
  v64[8] = 0;
  v64[9] = v9;
  v64[10] = v11;
  memcpy(__dst, v64, sizeof(__dst));
  v35 = v3;
  v36 = v4;
  v65[0] = v3;
  v65[1] = v4;
  v66 = v56[0];
  v37 = v6;
  v67 = v6;
  v68 = KeyPath;
  v69 = 1;
  v70 = v55[0];
  v71 = sub_2EC88;
  v72 = 0;
  v73 = v9;
  v74 = v11;
  sub_2ACE8(v64, v61, &qword_C4890, &qword_94220);
  sub_3410(v65, &qword_C4890, &qword_94220);
  LODWORD(v33) = !_UISolariumEnabled() || (v14 = v32, v13 = v33, v15 = v31, (*(v33 + 104))(v32, enum case for FlagKeys.Solarium(_:), v31), v16 = sub_8E314(), (*(v13 + 8))(v14, v15), (v16 & 1) == 0);
  v17 = swift_getKeyPath();
  v32 = v17;
  v63 = v40;
  v18 = v40;
  v19 = swift_allocObject();
  v20 = v34;
  memcpy((v19 + 16), v34, 0x60uLL);
  sub_2F028(v20, v61);
  v21 = sub_8EE54();
  v23 = v22;
  v24 = swift_allocObject();
  v34 = v24;
  v24[2] = sub_2F648;
  v24[3] = v19;
  v43[0] = v35;
  v43[1] = v36;
  LOBYTE(v43[2]) = v18;
  *(&v43[2] + 1) = *v62;
  HIDWORD(v43[2]) = *&v62[3];
  v43[3] = v37;
  v43[4] = v17;
  LOBYTE(v43[5]) = v33;
  *(&v43[5] + 1) = 256;
  v43[6] = sub_2EC88;
  v43[7] = 0;
  v43[8] = v21;
  v43[9] = v23;
  memcpy(v42, v43, sizeof(v42));
  v44[0] = v35;
  v44[1] = v36;
  v45 = v40;
  *v46 = *v62;
  *&v46[3] = *&v62[3];
  v47 = v37;
  v48 = v32;
  v49 = v33;
  v50 = 256;
  v51 = sub_2EC88;
  v52 = 0;
  v53 = v21;
  v54 = v23;
  sub_2ACE8(v43, v61, &qword_C4898, &qword_94258);
  sub_3410(v44, &qword_C4898, &qword_94258);
  v25 = sub_8EE54();
  v27 = v26;
  memcpy(v55, v42, 0x50uLL);
  v55[10] = sub_2F998;
  v55[11] = v34;
  v55[12] = v25;
  v55[13] = v27;
  memcpy(v61, v55, 0x70uLL);
  memcpy(v56, v42, sizeof(v56));
  v57 = sub_2F998;
  v58 = v34;
  v59 = v25;
  v60 = v27;
  sub_2ACE8(v55, &v41, &qword_C48A0, &qword_94260);
  sub_3410(v56, &qword_C48A0, &qword_94260);
  v28 = v39;
  memcpy(v39, __dst, 0x58uLL);
  v29 = v38;
  v28[11] = sub_2F998;
  v28[12] = v29;
  return memcpy(v28 + 13, v61, 0x70uLL);
}

uint64_t sub_2EA24(uint64_t a1, double a2, double a3)
{
  sub_332C(&qword_C48A8, &qword_94268);
  sub_8EE34();
  sub_8EE24();
  sub_8EE24();
  return (*(a1 + 80))(0);
}

uint64_t sub_2EAFC(uint64_t a1, double a2, double a3)
{
  sub_332C(&qword_C48A8, &qword_94268);
  sub_8EE34();
  sub_8EE24();
  sub_8EE24();
  return (*(a1 + 80))(0);
}

void sub_2EC88(uint64_t *a1@<X8>)
{
  v2 = sub_8EDD4();
  sub_8EBE4();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_2ECF4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2ED38(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2ED38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2ED48(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2ED8C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2ED8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2ED9C()
{
  result = qword_C4830;
  if (!qword_C4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4830);
  }

  return result;
}

uint64_t sub_2EDF0()
{
  v1 = type metadata accessor for CollapsibleTextView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  sub_332C(&qword_C4710, &qword_93EF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_8ED04();
    if (!sub_33C0(v5 + v6, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v8 = *(v1 + 28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_8ED04();
    if (!sub_33C0(v5 + v8, 1, v9))
    {
      (*(*(v9 - 8) + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2EFB8(uint64_t a1)
{
  type metadata accessor for CollapsibleTextView(0);

  return sub_2E334(a1);
}

uint64_t sub_2F090@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8EC34();
  *a1 = result;
  return result;
}

uint64_t sub_2F110(uint64_t a1)
{
  v2 = sub_8EE04();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_8EC24();
}

uint64_t sub_2F1DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2AFB4(a1, a2, a3, a4);
  sub_4248();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2F250(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2F290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2F2FC()
{
  result = qword_C4858;
  if (!qword_C4858)
  {
    sub_3D10(&qword_C4810, &qword_93FF0);
    sub_2F3B4();
    sub_2F934(&qword_C4880, &qword_C4888, qword_94150, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4858);
  }

  return result;
}

unint64_t sub_2F3B4()
{
  result = qword_C4860;
  if (!qword_C4860)
  {
    sub_3D10(&qword_C4808, &qword_93FE8);
    sub_2F934(&qword_C4868, &qword_C47F8, &qword_93FD0, &protocol conformance descriptor for VStack<A>);
    sub_2F934(&qword_C4870, &qword_C4878, &qword_94148, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4860);
  }

  return result;
}

uint64_t sub_2F4EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_8EC94();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2F560()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2F598@<X0>(_BYTE *a1@<X8>)
{
  result = sub_8EC74();
  *a1 = result;
  return result;
}

uint64_t sub_2F5EC()
{
  sub_2ED8C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_2F654()
{
  result = qword_C48B0;
  if (!qword_C48B0)
  {
    sub_3D10(&qword_C48B8, &qword_94270);
    sub_2F70C();
    sub_2F934(&qword_C48F8, &qword_C48A0, &qword_94260, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C48B0);
  }

  return result;
}

unint64_t sub_2F70C()
{
  result = qword_C48C0;
  if (!qword_C48C0)
  {
    sub_3D10(&qword_C48C8, &qword_94278);
    sub_2F7C4();
    sub_2F934(&qword_C4880, &qword_C4888, qword_94150, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C48C0);
  }

  return result;
}

unint64_t sub_2F7C4()
{
  result = qword_C48D0;
  if (!qword_C48D0)
  {
    sub_3D10(&qword_C4890, &qword_94220);
    sub_2F87C();
    sub_2F934(&qword_C4870, &qword_C4878, &qword_94148, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C48D0);
  }

  return result;
}

unint64_t sub_2F87C()
{
  result = qword_C48D8;
  if (!qword_C48D8)
  {
    sub_3D10(&qword_C48E0, &qword_94280);
    sub_2F934(&qword_C48E8, &qword_C48F0, &qword_94288, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C48D8);
  }

  return result;
}

uint64_t sub_2F934(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_3D10(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2F99C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_13D04(a3, v5 + 16);
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  v11 = objc_opt_self();

  v12 = [v11 defaultCenter];
  sub_CD08(a2, a2[3]);

  v13 = a1;
  [v12 addObserver:v5 selector:"networkStateDidChange:" name:v13 object:sub_8FB44()];

  swift_unknownObjectRelease();
  sub_4F30(a3);
  sub_4F30(a2);
  return v5;
}

uint64_t sub_2FAC4()
{
  sub_2FAF0();
  sub_4F30((v0 + 16));

  return v0;
}

void sub_2FAF0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];
}

uint64_t sub_2FB54()
{
  sub_2FAC4();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_2FB88()
{
  v1 = *v0;
  sub_8E024();
  if (v9[3])
  {
    sub_332C(&qword_C49B0, &qword_942E8);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        sub_3A94(&v10, v13);
        sub_CD08(v0 + 2, v0[5]);
        v3 = v0[7];
        v2 = v0[8];
        sub_13D04(v13, &v10);
        v4 = swift_allocObject();
        *(v4 + 16) = v3;
        *(v4 + 24) = v2;
        sub_3A94(&v10, v4 + 32);

        sub_8F104();

        return sub_4F30(v13);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    sub_13E24(v9, &unk_C3EB0, &qword_92380);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_13E24(&v10, &qword_C49A8, &unk_942D8);
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v6 = sub_8E304();
  sub_4D6C(v6, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92310;
  v13[3] = v1;
  v13[0] = v0;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_8F5F4();
  }

  sub_8E284();

  sub_4F30(v13);
  sub_8E244();
  sub_8E2D4();
}

uint64_t sub_2FFC8()
{

  sub_4F30((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_30038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v51 = a2;
  v4 = sub_332C(&qword_C2DD0, &unk_935C0);
  __chkstk_darwin(v4 - 8);
  v47 = &v43 - v5;
  v6 = sub_8EFE4();
  sub_42F8();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_8814();
  v12 = v11 - v10;
  v50 = sub_8F0C4();
  sub_42F8();
  v48 = v13;
  __chkstk_darwin(v14);
  sub_8814();
  v17 = v16 - v15;
  v18 = type metadata accessor for CopyAction(0);
  sub_4248();
  __chkstk_darwin(v19);
  sub_8814();
  v49 = (v21 - v20);
  v22 = a1;
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_4;
  }

  v23 = v6;
  v24 = v22;
  v25 = v47;
  sub_304A4(v12, v51, v47);
  v26 = v50;
  if (sub_33C0(v25, 1, v50) == 1)
  {
    sub_306BC(v25);
    v22 = v24;
    v6 = v23;
LABEL_4:
    v27 = sub_8F504();
    sub_923C();
    swift_allocError();
    strcpy(v28, "actionMetrics");
    *(v28 + 7) = -4864;
    *(v28 + 2) = v18;
    (*(*(v27 - 8) + 104))(v28, enum case for JSONError.missingProperty(_:), v27);
    swift_willThrow();
    v29 = *(v8 + 8);
    v29(v22, v6);
    v29(v12, v6);
    v30 = 0;
    v31 = v49;
    v26 = v50;
    v32 = v18;
    goto LABEL_5;
  }

  v35 = *(v8 + 8);
  v43 = v23;
  v44 = v35;
  v35(v12, v23);
  v36 = *(v48 + 32);
  v36(v17, v25, v26);
  v32 = v18;
  v31 = v49;
  v36(v49 + *(v18 + 20), v17, v26);
  v37 = v46;
  v38 = sub_473C0();
  if (!v37)
  {
    v40 = v38;
    v41 = v39;
    v44(v24, v43);
    *v31 = v40;
    v31[1] = v41;
    sub_30724(v31, v45);
    sub_8F004();
    sub_4248();
    (*(v42 + 8))(v51);
    return sub_30788(v31);
  }

  v44(v24, v43);
  v30 = 1;
LABEL_5:
  sub_8F004();
  sub_4248();
  result = (*(v33 + 8))(v51);
  if (v30)
  {
    return (*(v48 + 8))(v31 + *(v32 + 20), v26);
  }

  return result;
}

uint64_t sub_304A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_8F004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_8EFE4();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_8F0A4();
  v13 = sub_8F0C4();
  return sub_33E8(a3, 0, 1, v13);
}

uint64_t type metadata accessor for CopyAction(uint64_t a1)
{
  result = qword_C4A10;
  if (!qword_C4A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_306BC(uint64_t a1)
{
  v2 = sub_332C(&qword_C2DD0, &unk_935C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_30724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_30788(uint64_t a1)
{
  v2 = type metadata accessor for CopyAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_307F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_8F0C4();
    v9 = a1 + *(a3 + 20);

    return sub_33C0(v9, a2, v8);
  }
}

uint64_t sub_30894(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_8F0C4();
    v8 = v5 + *(a4 + 20);

    return sub_33E8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_30914(uint64_t a1)
{
  result = sub_8F0C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_30990(void *a1)
{
  v1 = [objc_opt_self() generalPasteboard];
  v2 = sub_8F5C4();
  [v1 setString:v2];

  sub_332C(&qword_C3398, &qword_92E60);
  return sub_8F3E4();
}

unint64_t sub_30A54()
{
  result = qword_C4AE8;
  if (!qword_C4AE8)
  {
    type metadata accessor for CopyAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4AE8);
  }

  return result;
}

uint64_t sub_30AC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_8FAC4();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

id sub_30AEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDynamicUIPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_30B44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDynamicUIPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_30B9C()
{
  result = sub_30BBC();
  qword_D0338 = result;
  return result;
}

void *sub_30BBC()
{
  sub_332C(&qword_C44A0, &unk_938F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_943A0;
  type metadata accessor for AuthenticateAction(0);
  sub_34EF4(&qword_C39F0, type metadata accessor for AuthenticateAction, &unk_92D70);
  sub_34EF4(&qword_C4B38, type metadata accessor for AuthenticateAction, &unk_92D98);
  sub_8E494();
  swift_allocObject();
  *(inited + 32) = sub_8E484();
  type metadata accessor for BuyAction(0);
  sub_34EF4(&qword_C3E70, type metadata accessor for BuyAction, &unk_93210);
  sub_34EF4(&qword_C4B40, type metadata accessor for BuyAction, &unk_93238);
  swift_allocObject();
  *(inited + 40) = sub_8E484();
  type metadata accessor for CallbackAction(0);
  sub_34EF4(&qword_C40A8, type metadata accessor for CallbackAction, &unk_93560);
  sub_34EF4(&qword_C4B48, type metadata accessor for CallbackAction, &unk_93588);
  swift_allocObject();
  *(inited + 48) = sub_8E484();
  type metadata accessor for CheckDownloadQueueAction(0);
  sub_34EF4(&qword_C4308, type metadata accessor for CheckDownloadQueueAction, &unk_93900);
  sub_34EF4(&qword_C4B50, type metadata accessor for CheckDownloadQueueAction, &unk_93928);
  swift_allocObject();
  *(inited + 56) = sub_8E484();
  type metadata accessor for LinkAction(0);
  sub_34EF4(&qword_C4B58, type metadata accessor for LinkAction, &unk_95200);
  sub_34EF4(&qword_C4B60, type metadata accessor for LinkAction, &unk_95228);
  swift_allocObject();
  *(inited + 64) = sub_8E484();
  type metadata accessor for ResolutionAction(0);
  sub_34EF4(&qword_C4B68, type metadata accessor for ResolutionAction, &unk_95F30);
  sub_34EF4(&qword_C4B70, type metadata accessor for ResolutionAction, &unk_95F58);
  swift_allocObject();
  *(inited + 72) = sub_8E484();
  type metadata accessor for AlertAction(0);
  sub_34EF4(&qword_C3510, type metadata accessor for AlertAction, &unk_926C0);
  sub_34EF4(&qword_C4B78, type metadata accessor for AlertAction, &unk_926E8);
  swift_allocObject();
  *(inited + 80) = sub_8E484();
  sub_31710(inited, sub_34A40);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_93AC0;
  type metadata accessor for CopyAction(0);
  sub_34EF4(&qword_C4AE8, type metadata accessor for CopyAction, &unk_942F0);
  sub_34EF4(&qword_C4B80, type metadata accessor for CopyAction, &unk_94318);
  swift_allocObject();
  *(v1 + 32) = sub_8E484();
  sub_31710(v1, sub_34A40);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_943B0;
  type metadata accessor for AcknowledgePrivacyAction(0);
  sub_34EF4(&qword_C2F20, type metadata accessor for AcknowledgePrivacyAction, &unk_91D50);
  sub_34EF4(&qword_C4B88, type metadata accessor for AcknowledgePrivacyAction, &unk_91D78);
  swift_allocObject();
  *(v2 + 32) = sub_8E484();
  type metadata accessor for PrivacySplashAction(0);
  sub_34EF4(&qword_C4B90, type metadata accessor for PrivacySplashAction, &unk_959C0);
  sub_34EF4(&qword_C4B98, type metadata accessor for PrivacySplashAction, &unk_959E8);
  swift_allocObject();
  *(v2 + 40) = sub_8E484();
  sub_31710(v2, sub_34A40);
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_314EC()
{
  [objc_allocWithZone(type metadata accessor for BuyActionImplementation(0)) init];
  sub_332C(&qword_C4BF0, &qword_94488);
  swift_allocObject();
  return sub_8E634();
}

uint64_t sub_31638(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_3403C(result, 1, sub_341C0);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_31710(unint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  v5 = sub_30AC8(a1);
  v6 = sub_30AC8(*v2);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_3412C();
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 1)
  {
LABEL_6:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_317C4(uint64_t a1)
{
  v4 = sub_35040(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_3403C(v4, 1, sub_343F0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_350E8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_332C(&qword_C67E0, &qword_944E0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_31898(uint64_t a1)
{
  result = sub_35040(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_340B4();
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for Shelf(0);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_31988(uint64_t a1)
{
  v4 = sub_35040(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_3403C(v4, 1, sub_342D8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_350E8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_31AB8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  swift_allocObject();
  sub_332C(a2, a3);
  swift_allocObject();
  return sub_8E634();
}

void *sub_31B60()
{
  result = sub_31B80();
  qword_D0340 = result;
  return result;
}

void *sub_31B80()
{
  sub_332C(&qword_C4C00, &qword_94498);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_92300;
  type metadata accessor for Button(0);
  sub_34EF4(&qword_C3BD0, type metadata accessor for Button, &unk_92F88);
  sub_34EF4(&qword_C4C08, type metadata accessor for Button, &unk_93068);
  type metadata accessor for ButtonComponent(0);
  sub_8E554();
  *(inited + 32) = v6;
  *(inited + 48) = v7;
  *(inited + 64) = v8;
  *(inited + 80) = v9;
  type metadata accessor for Text(0);
  sub_34EF4(&qword_C4C10, type metadata accessor for Text, &unk_989A0);
  sub_34EF4(&qword_C4C18, type metadata accessor for Text, &unk_98A08);
  type metadata accessor for TextComponent();
  sub_8E554();
  *(inited + 88) = v10;
  *(inited + 104) = v11;
  *(inited + 120) = v12;
  *(inited + 136) = v13;
  type metadata accessor for SpacerModel(0);
  sub_34EF4(&qword_C4C20, type metadata accessor for SpacerModel, &unk_986C4);
  sub_34EF4(&qword_C4C28, type metadata accessor for SpacerModel, &unk_98694);
  type metadata accessor for SpacerComponent(0);
  sub_8E554();
  *(inited + 144) = v14;
  *(inited + 160) = v15;
  *(inited + 176) = v16;
  *(inited + 192) = v17;
  sub_31638(inited);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_92E10;
  type metadata accessor for SegmentedControl(0);
  sub_34EF4(&qword_C4C30, type metadata accessor for SegmentedControl, &unk_96118);
  sub_34EF4(&qword_C4C38, type metadata accessor for SegmentedControl, &unk_960E8);
  type metadata accessor for SegmentedControlComponent();
  sub_8E554();
  *(v1 + 32) = v18;
  *(v1 + 48) = v19;
  *(v1 + 64) = v20;
  *(v1 + 80) = v21;
  sub_31638(v1);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_92310;
  type metadata accessor for ASCLockupWrapper(0);
  sub_34EF4(&qword_C3808, type metadata accessor for ASCLockupWrapper, &unk_92AF0);
  sub_34EF4(&qword_C4C40, type metadata accessor for ASCLockupWrapper, &unk_92B58);
  type metadata accessor for ASCLockupWrapperComponent();
  sub_8E554();
  *(v2 + 32) = v22;
  *(v2 + 48) = v23;
  *(v2 + 64) = v24;
  *(v2 + 80) = v25;
  type metadata accessor for InstallButton(0);
  sub_34EF4(&qword_C4C48, type metadata accessor for InstallButton, &unk_94EF0);
  sub_34EF4(&qword_C4C50, type metadata accessor for InstallButton, &unk_94F30);
  type metadata accessor for InstallButtonComponent(0);
  sub_8E554();
  *(v2 + 88) = v26;
  *(v2 + 104) = v27;
  *(v2 + 120) = v28;
  *(v2 + 136) = v29;
  sub_31638(v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_943C0;
  type metadata accessor for AppAlertFooter(0);
  sub_34EF4(&qword_C3648, type metadata accessor for AppAlertFooter, &unk_92950);
  sub_34EF4(&qword_C4C58, type metadata accessor for AppAlertFooter, &unk_929B8);
  type metadata accessor for AppAlertFooterComponent(0);
  sub_8E554();
  *(v3 + 32) = v30;
  *(v3 + 48) = v31;
  *(v3 + 64) = v32;
  *(v3 + 80) = v33;
  type metadata accessor for Switch(0);
  sub_34EF4(&qword_C4C60, type metadata accessor for Switch, &unk_98810);
  sub_34EF4(&qword_C4C68, type metadata accessor for Switch, &unk_98878);
  type metadata accessor for SwitchComponent();
  sub_8E554();
  *(v3 + 88) = v34;
  *(v3 + 104) = v35;
  *(v3 + 120) = v36;
  *(v3 + 136) = v37;
  type metadata accessor for ListItem(0);
  sub_34EF4(&qword_C4C70, type metadata accessor for ListItem, &unk_953A0);
  sub_34EF4(&qword_C4C78, type metadata accessor for ListItem, &unk_95408);
  type metadata accessor for ListItemComponent();
  sub_8E554();
  *(v3 + 144) = v38;
  *(v3 + 160) = v39;
  *(v3 + 176) = v40;
  *(v3 + 192) = v41;
  type metadata accessor for Checkbox(0);
  sub_34EF4(&qword_C41B0, type metadata accessor for Checkbox, &unk_93720);
  sub_34EF4(&qword_C4C80, type metadata accessor for Checkbox, &unk_93788);
  type metadata accessor for CheckboxComponent();
  sub_8E554();
  *(v3 + 200) = v42;
  *(v3 + 216) = v43;
  *(v3 + 232) = v44;
  *(v3 + 248) = v45;
  sub_31638(v3);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_92E10;
  type metadata accessor for CollapsibleText(0);
  sub_34EF4(&qword_C4680, type metadata accessor for CollapsibleText, &unk_93BD0);
  sub_34EF4(&qword_C4C88, type metadata accessor for CollapsibleText, &unk_93C38);
  type metadata accessor for CollapsibleTextComponent();
  sub_8E554();
  *(v4 + 32) = v46;
  *(v4 + 48) = v47;
  *(v4 + 64) = v48;
  *(v4 + 80) = v49;
  sub_31638(v4);
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_325E4()
{
  sub_332C(&qword_C44A0, &unk_938F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_943D0;
  type metadata accessor for ActivityShelfPageAction(0);
  sub_34EF4(&qword_C32A8, type metadata accessor for ActivityShelfPageAction, &unk_923D0);
  sub_34EF4(&qword_C4C90, type metadata accessor for ActivityShelfPageAction, &unk_923F8);
  sub_8E594();
  swift_allocObject();
  *(v0 + 32) = sub_8E584();
  type metadata accessor for ReplaceComponentShelfPageAction(0);
  sub_34EF4(&qword_C4C98, type metadata accessor for ReplaceComponentShelfPageAction, &unk_95B80);
  sub_34EF4(&qword_C4CA0, type metadata accessor for ReplaceComponentShelfPageAction, &unk_95BA8);
  swift_allocObject();
  *(v0 + 40) = sub_8E584();
  type metadata accessor for ReplaceNavigationBarItemShelfPageAction(0);
  sub_34EF4(&qword_C4CA8, type metadata accessor for ReplaceNavigationBarItemShelfPageAction, &unk_95CD0);
  sub_34EF4(&qword_C4CB0, type metadata accessor for ReplaceNavigationBarItemShelfPageAction, &unk_95D28);
  swift_allocObject();
  result = sub_8E584();
  *(v0 + 48) = result;
  qword_D0348 = v0;
  return result;
}

uint64_t sub_328AC()
{
  result = sub_328CC();
  qword_D0350 = result;
  return result;
}

uint64_t sub_328CC()
{
  sub_332C(&qword_C44A0, &unk_938F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_938A0;
  sub_8E454();
  swift_allocObject();
  *(v0 + 32) = sub_8E444();
  swift_allocObject();
  *(v0 + 40) = sub_8E444();
  swift_allocObject();
  *(v0 + 48) = sub_8E444();
  swift_allocObject();
  *(v0 + 56) = sub_8E444();
  swift_allocObject();
  *(v0 + 64) = sub_8E444();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_93AC0;
  swift_allocObject();
  *(inited + 32) = sub_8E444();
  sub_31710(inited, sub_34BB8);
  return v0;
}

uint64_t sub_32B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_8EFE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_10AB4(0x736E6F6974706FLL, 0xE700000000000000, &type metadata for DelegatePageDestination);
  (*(v5 + 8))(v7, v4);
  sub_8E524();
  sub_8F174();
  sub_8F394();
  v9 = (*(*v11 + 240))(v8);

  return v9;
}

id sub_32D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8EFE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = sub_10AB4(0x736E6F6974706FLL, 0xE700000000000000, &type metadata for DelegatePageDestination);
  (*(v6 + 8))(v8, v5);
  v10 = objc_allocWithZone(type metadata accessor for ClientViewController());

  return sub_27F18(v9, a3);
}

uint64_t sub_3305C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = a1;
  v29 = a2;
  v3 = sub_8F004();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8EFE4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_332C(&qword_C4CD8, &unk_944C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = type metadata accessor for ShelfPageDestination(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  (*(v8 + 16))(v10, v28, v7);
  (*(v4 + 16))(v6, v29, v3);
  sub_726EC(v10, v6, v13);
  sub_33E8(v13, 0, 1, v14);
  sub_34DDC(v13, v19, type metadata accessor for ShelfPageDestination);
  sub_34E3C(v19, v17, type metadata accessor for ShelfPageDestination);
  type metadata accessor for ShelfPagePresenter(0);
  swift_allocObject();
  v20 = v27;

  sub_764A0();
  v22 = v21;
  type metadata accessor for CoreDynamicUIPlugin();
  sub_333A4(v22, v20);
  v23 = objc_allocWithZone(type metadata accessor for ShelfPageViewController());
  sub_7B584();
  v25 = v24;
  sub_34E9C(v19, type metadata accessor for ShelfPageDestination);
  return v25;
}

uint64_t sub_333A4(uint64_t a1, uint64_t a2)
{
  v20 = sub_8EF24();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E5F4();
  swift_allocObject();
  v5 = sub_8E5E4();
  v6 = type metadata accessor for ActivityShelfPageActionImplementation();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 24) = &off_BB190;
  swift_unknownObjectWeakAssign();
  v21 = v7;
  v8 = *(*v5 + 184);
  v9 = sub_34EF4(&qword_C4CE0, type metadata accessor for ActivityShelfPageActionImplementation, &unk_92568);
  v8(&v21, v6, v9);

  v10 = type metadata accessor for ReplaceComponentShelfPageActionImplementation();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 24) = &off_BB180;
  swift_unknownObjectWeakAssign();
  v21 = v11;
  v12 = sub_34EF4(&qword_C4CE8, type metadata accessor for ReplaceComponentShelfPageActionImplementation, &unk_95CB0);
  v8(&v21, v10, v12);

  v13 = type metadata accessor for ReplaceNavigationBarItemShelfPageActionImplementation();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 24) = &off_BB170;
  swift_unknownObjectWeakAssign();
  v21 = v14;
  v15 = sub_34EF4(&qword_C4CF0, type metadata accessor for ReplaceNavigationBarItemShelfPageActionImplementation, &unk_95F08);
  v8(&v21, v13, v15);

  sub_8F174();
  sub_8F394();
  v16 = *(*v5 + 120);

  v16(v17);
  v21 = v5;
  sub_8EF14();
  v18 = sub_8F154();

  (*(v2 + 8))(v4, v20);
  return v18;
}

uint64_t sub_33728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v26 = a2;
  v3 = sub_8F004();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8EFE4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_332C(&qword_C4CD0, &qword_944B8);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for WebPageDestination(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v24 - v18;
  (*(v8 + 16))(v10, v25, v7);
  (*(v4 + 16))(v6, v26, v3);
  sub_89E44(v6, v13);
  sub_33E8(v13, 0, 1, v14);
  sub_34DDC(v13, v19, type metadata accessor for WebPageDestination);
  sub_34E3C(v19, v17, type metadata accessor for WebPageDestination);
  v20 = objc_allocWithZone(type metadata accessor for WebPageViewController());

  sub_8A7A0();
  v22 = v21;
  sub_34E9C(v19, type metadata accessor for WebPageDestination);
  return v22;
}

id sub_33A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v18 = a1;
  v19 = a2;
  v3 = sub_8F004();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8EFE4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_C2CE0 != -1)
  {
    swift_once();
  }

  v11 = sub_8E304();
  sub_4D6C(v11, qword_D0378);
  sub_332C(&unk_C3920, &unk_92D50);
  sub_8E2A4();
  *(swift_allocObject() + 16) = xmmword_92E10;
  sub_8E244();
  sub_8E2E4();

  (*(v8 + 16))(v10, v18, v7);
  (*(v4 + 16))(v6, v19, v3);
  sub_4E3C8(v10, v6, v20);
  memcpy(v21, v20, 0xB0uLL);
  sub_34D2C(v21, v20);
  v12 = objc_allocWithZone(type metadata accessor for OnboardingPageViewController());
  v13 = v17;

  v14 = sub_4ED98(v20, v13);
  sub_34D88(v21);
  return v14;
}

uint64_t sub_33D48(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

char *sub_33DCC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_35030(a3, result);
  }

  return result;
}

char *sub_33DEC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_35030(a3, result);
  }

  return result;
}

char *sub_33E14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return sub_35030(a3, result);
  }

  return result;
}

void sub_33E54(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_4248(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_350B4();

    _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_350B4();

    _swift_arrayInitWithTakeBackToFront(v9);
  }
}

char *sub_33F14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_35030(a3, result);
  }

  return result;
}

char *sub_33F40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_332C(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_3403C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_340B4()
{
  sub_350D4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native || v3 > *(v0 + 24) >> 1)
  {
    sub_35078();
    sub_3461C(v5, v6, v2 & 1, v0, v7, v8, v9, v10);
    *v1 = v11;
  }
}

uint64_t sub_3412C()
{
  sub_350D4();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v0;
  if (result)
  {
    if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
    {
      if (v2 <= *(&dword_18 + (v0 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_8FAC4();
LABEL_9:
  result = sub_8FA04();
  *v1 = result;
  return result;
}

char *sub_341C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_332C(&qword_C4C00, &qword_94498);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_342D8(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v7 = a1;
  if (a3)
  {
    sub_35068();
    if (v8 != v9)
    {
      sub_350C8();
      if (v8)
      {
        __break(1u);
        return;
      }

      sub_35058();
    }
  }

  sub_35090();
  if (v5)
  {
    sub_332C(&unk_C6840, &unk_95BF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v4;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v7)
  {
    if (v10 != a4 || &v13[16 * v4] <= v12)
    {
      memmove(v12, v13, 16 * v4);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_343F0(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v7 = a1;
  if (a3)
  {
    sub_35068();
    if (v8 != v9)
    {
      sub_350C8();
      if (v8)
      {
        __break(1u);
        return;
      }

      sub_35058();
    }
  }

  sub_35090();
  if (v5)
  {
    sub_332C(&qword_C4D10, &qword_944E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    sub_350A0(v11);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v7)
  {
    if (v10 != a4 || &a4[40 * v4 + 32] <= v10 + 32)
    {
      memmove(v10 + 32, a4 + 32, 40 * v4);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    sub_332C(&qword_C67E0, &qword_944E0);
    swift_arrayInitWithCopy();
  }
}

void sub_34500(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v7 = a1;
  if (a3)
  {
    sub_35068();
    if (v8 != v9)
    {
      sub_350C8();
      if (v8)
      {
        __break(1u);
        return;
      }

      sub_35058();
    }
  }

  sub_35090();
  if (v5)
  {
    sub_332C(&qword_C4D08, &qword_944D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    sub_350A0(v11);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v7)
  {
    if (v10 != a4 || &v13[152 * v4] <= v12)
    {
      memmove(v12, v13, 152 * v4);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_3461C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    sub_35068();
    if (v13 != v14)
    {
      sub_350C8();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_35058();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_33F40(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_33E54(a4 + v18, v15, &v16[v18], a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void (*sub_34718(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_33F34(a3);
  sub_88838();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = sub_8F9F4();
  }

  *a1 = v7;
  return sub_347A4;
}

uint64_t (*sub_347AC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v4 = sub_33F34(a3);
  sub_88838();
  if (v4)
  {
  }

  else
  {
    v5 = sub_8F9F4();
  }

  *a1 = v5;
  return sub_3502C;
}

uint64_t (*sub_34838(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v4 = sub_33F34(a3);
  sub_88838();
  if (v4)
  {
  }

  else
  {
    v5 = sub_8F9F4();
  }

  *a1 = v5;
  return sub_348C4;
}

uint64_t sub_348CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_8FAC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_30AC8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_34F90();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_34FD4(&qword_C4D28, &qword_C4D20, qword_944F8);
        for (i = 0; i != v7; ++i)
        {
          sub_332C(&qword_C4D20, qword_944F8);
          v9 = sub_34718(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_34A40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_8FAC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_30AC8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_8E494();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_34FD4(&qword_C4BC0, &qword_C4BB8, &qword_94458);
        for (i = 0; i != v7; ++i)
        {
          sub_332C(&qword_C4BB8, &qword_94458);
          v9 = sub_347AC(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_34BB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_8FAC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_30AC8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_8E454();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_34FD4(&qword_C4CC0, &qword_C4CB8, &unk_944A0);
        for (i = 0; i != v7; ++i)
        {
          sub_332C(&qword_C4CB8, &unk_944A0);
          v9 = sub_34838(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_34DDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_4248();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_34E3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_4248();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_34E9C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_4248();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_34EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_34F3C()
{
  result = qword_C4CF8;
  if (!qword_C4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4CF8);
  }

  return result;
}

unint64_t sub_34F90()
{
  result = qword_C4268;
  if (!qword_C4268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C4268);
  }

  return result;
}

uint64_t sub_34FD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3D10(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_350A0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_350FC()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_35110()
{
  sub_332C(&qword_C4D50, &unk_94628);
  inited = swift_initStackObject();
  v2 = inited;
  *(inited + 16) = xmmword_932C0;
  *(inited + 32) = 1701080931;
  *(inited + 40) = 0xE400000000000000;
  v3 = *v0;
  if (*(v0 + 8))
  {
    v3 = 0;
  }

  *(inited + 48) = v3;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0x7470697263736564;
  *(inited + 88) = 0xEB000000006E6F69;
  if (v0[3])
  {
    v4 = v0[2];
    v5 = &type metadata for String;
    v6 = v0[3];
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v5 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v4;
  *(inited + 104) = v6;
  *(inited + 120) = v5;
  *(inited + 128) = 0x6E69616D6F64;
  *(inited + 136) = 0xE600000000000000;
  v8 = v0[4];
  v7 = v0[5];
  *(inited + 168) = &type metadata for String;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = qword_C4D30;
  }

  v2[18] = v8;
  v2[19] = v9;
  v2[22] = 0x6F666E4972657375;
  v2[23] = 0xE800000000000000;
  v10 = v0[6];
  if (v10)
  {
    v11 = sub_332C(&qword_C7480, &qword_92BB0);
  }

  else
  {
    v11 = 0;
    v2[25] = 0;
    v2[26] = 0;
  }

  v2[24] = v10;
  v2[27] = v11;
  v2[28] = 0x65756C6176;
  v2[29] = 0xE500000000000000;
  sub_35BB4((v0 + 7), (v2 + 30));

  sub_332C(&unk_C3EB0, &qword_92380);
  v12 = sub_8F574();
  v13 = sub_35304(v12);

  return v13;
}

uint64_t sub_35304(uint64_t a1)
{
  v2 = _swiftEmptyDictionarySingleton;
  v39 = _swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_6678(v17, &unk_C3EB0, &qword_92380))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (i << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_35BB4(*(a1 + 56) + 32 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_35BB4(&v35, &v28);
    if (v29)
    {
      sub_20690(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_20690(v33, v30);
      v16 = v2[2];
      if (v2[3] <= v16)
      {

        sub_40BA0(v16 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v18 = v31;
      sub_8FC04();
      sub_8F644();
      result = sub_8FC24();
      v19 = v2 + 8;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~v2[(v21 >> 6) + 8]) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = v19[v22];
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_28;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~v2[(v21 >> 6) + 8])) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(v2[6] + 16 * v23) = v18;
      sub_20690(v30, (v2[7] + 32 * v23));
      ++v2[2];
      v17 = v32;
    }

    else
    {

      sub_6678(&v34, &qword_C4D58, &qword_94638);
      v17 = &v28;
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_355CC()
{
  v0 = qword_C4D30;

  return v0;
}

uint64_t sub_3560C(uint64_t a1)
{
  v2 = sub_35B60();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_35648(uint64_t a1)
{
  v2 = sub_35B60();

  return Error<>._code.getter(a1, v2);
}

double sub_35684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v6 = sub_8EFE4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35C24();
  v10 = sub_478DC();
  if (v3)
  {

    v10 = 0;
  }

  *a3 = v10;
  *(a3 + 8) = v3 != 0;
  *(a3 + 16) = sub_473C0();
  *(a3 + 24) = v11;
  *(a3 + 32) = sub_473C0();
  *(a3 + 40) = v12;
  *(a3 + 48) = sub_10AB4(0x6F666E4972657375, 0xE800000000000000, &type metadata for DecodedJSError);
  sub_35C24();
  sub_8EFF4();
  if (sub_8EFB4())
  {
    goto LABEL_7;
  }

  sub_8EFD4();
  if (!v22)
  {
    sub_6678(&v21, &unk_C3EB0, &qword_92380);
LABEL_7:
    v15 = sub_8F504();
    sub_923C();
    swift_allocError();
    *v16 = 1701080931;
    v16[1] = 0xE400000000000000;
    v16[2] = &type metadata for DecodedJSError;
    (*(*(v15 - 8) + 104))(v16, enum case for JSONError.missingProperty(_:), v15);
    swift_willThrow();
    sub_8F004();
    sub_887C();
    (*(v17 + 8))(v25);
    v18 = *(v7 + 8);
    v18(a1, v6);
    v18(v9, v6);

    v23 = 0u;
    v24 = 0u;
    goto LABEL_8;
  }

  sub_8F004();
  sub_887C();
  (*(v13 + 8))(v25);
  v14 = *(v7 + 8);
  v14(a1, v6);
  v14(v9, v6);
  sub_20690(&v21, &v23);
LABEL_8:
  result = *&v23;
  v20 = v24;
  *(a3 + 56) = v23;
  *(a3 + 72) = v20;
  return result;
}

uint64_t sub_35A1C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_35A3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_35A90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_35B0C()
{
  result = qword_C4D40;
  if (!qword_C4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4D40);
  }

  return result;
}

unint64_t sub_35B60()
{
  result = qword_C4D48;
  if (!qword_C4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4D48);
  }

  return result;
}

uint64_t sub_35BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_332C(&unk_C3EB0, &qword_92380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_35C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10AB4(0x736E6F6974706FLL, 0xE700000000000000, &type metadata for DelegatePageDestination);
  sub_8F004();
  sub_887C();
  (*(v5 + 8))(a2);
  sub_8EFE4();
  sub_887C();
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t sub_35D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_35C48(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_35D2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_color);
  if (v1 && *(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_style) <= 1u)
  {
    v2 = v1;
    sub_36A88(v2);
  }
}

void sub_35D98(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_color);
  *(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_color) = a1;
  v3 = a1;

  sub_35D2C();
}

id sub_35DF0()
{
  v1 = sub_8EB34();
  __chkstk_darwin(v1 - 8);
  sub_8814();
  v2 = sub_8EB64();
  sub_42F8();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_8814();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_dynamicButtonView;
  *&v0[v9] = [objc_allocWithZone(type metadata accessor for DynamicButtonView()) init];
  sub_8EB24();
  sub_8EB74();
  sub_8EB54();
  (*(v4 + 8))(v8, v2);
  *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_color] = 0;
  v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_style] = 0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for DynamicButton(0);
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_36790();

  return v10;
}

id sub_35FB4(void *a1)
{
  v3 = sub_8EB34();
  __chkstk_darwin(v3 - 8);
  sub_8814();
  v4 = sub_8EB64();
  sub_42F8();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_8814();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_dynamicButtonView;
  *&v1[v11] = [objc_allocWithZone(type metadata accessor for DynamicButtonView()) init];
  sub_8EB24();
  sub_8EB74();
  sub_8EB54();
  (*(v6 + 8))(v10, v4);
  *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_color] = 0;
  v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_style] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for DynamicButton(0);
  v12 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    sub_36790();
  }

  return v13;
}

id sub_36218()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicButton(0);
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_362A4(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DynamicButton(0);
  objc_msgSendSuper2(&v4, "setHighlighted:", a1 & 1);
  return sub_362F0();
}

id sub_362F0()
{
  v1 = v0;
  v2 = sub_8E324();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!_UISolariumEnabled())
  {
    return sub_88C40([v1 isHighlighted], 1);
  }

  (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
  v6 = sub_8E314();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    return sub_88C40([v1 isHighlighted], 1);
  }

  return result;
}

id sub_3640C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DynamicButton(0);
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_dynamicButtonView];
  [v0 bounds];
  return [v1 setFrame:?];
}

uint64_t sub_365DC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_dynamicButtonView) accessibilityLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_8F5F4();

  return v3;
}

void sub_36790()
{
  v1 = [objc_opt_self() ams_clear];
  [v0 setBackgroundColor:v1];

  [v0 setIsAccessibilityElement:1];
  [v0 setAccessibilityTraits:UIAccessibilityTraitButton];
  v2 = v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_style];

  sub_36834(v2);
}

void sub_36834(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_36934(a1);
  v4 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_dynamicButtonView];
  if (!v3)
  {
    *(v4 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_style) = 0;
    sub_383B0();
    sub_36970();
    v5 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    *(v4 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_style) = 1;
    sub_383B0();
    sub_36970();
    v5 = 1;
LABEL_5:
    v7 = sub_36B98(v5);
    sub_36A88(v7);
    v6 = v7;
    goto LABEL_7;
  }

  *(v4 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_style) = 2;
  sub_383B0();
  [v2 addSubview:v4];
  sub_8F8A4();
  [v2 setNeedsLayout];
  v6 = sub_36B98(2);
LABEL_7:
}

id sub_36970()
{
  v1 = sub_332C(&qword_C52A0, &unk_93200);
  __chkstk_darwin(v1 - 8);
  v3 = &v9[-1] - v2;
  sub_8EA64();
  v4 = sub_8EA74();
  sub_33E8(v3, 0, 1, v4);
  sub_8F8B4();
  v5 = sub_8EB64();
  v9[3] = v5;
  v9[4] = &protocol witness table for _Glass;
  v6 = sub_4ED0(v9);
  (*(*(v5 - 8) + 16))(v6, &v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_glassView], v5);
  sub_8F8A4();
  return [v0 addSubview:*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_dynamicButtonView]];
}

uint64_t sub_36A88(uint64_t a1)
{
  v2 = sub_8EB64();
  sub_42F8();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_8814();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_glassView, v2);
  v10[3] = v2;
  v10[4] = &protocol witness table for _Glass;
  sub_4ED0(v10);
  sub_8EB44();
  (*(v4 + 8))(v8, v2);
  return sub_8F8A4();
}

id sub_36B98(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = [objc_opt_self() ams_clear];

      return v2;
    }
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_color];
    if (v4)
    {
LABEL_10:

      return v4;
    }

    result = [v1 tintColor];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v4 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin13DynamicButton_color];
  if (v4)
  {
    goto LABEL_10;
  }

  result = [v1 tintColor];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_36CA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DynamicButton(uint64_t a1)
{
  result = qword_C4D98;
  if (!qword_C4D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_36DC0(uint64_t a1)
{
  result = sub_8EB64();
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

unint64_t sub_36E74(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B69D0;
  v6._object = a2;
  v4 = sub_8FB14(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_36EC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_36E74(*a1, a1[1]);
  *a2 = result;
  return result;
}

id sub_36EF0()
{
  v1 = v0;
  v24.n128_u64[0] = OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_subtitleLabel;
  sub_8E374();
  v2 = objc_opt_self();
  v3 = [v2 ams_primaryText];
  v4 = sub_8E684();
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v5 = sub_4ED0(&v32);
  if (qword_C2CC0 != -1)
  {
    sub_392A0(&qword_C2CC0);
  }

  v6 = qword_C4DF0;
  *v5 = qword_C4DF0;
  v7 = *(*(v4 - 8) + 104);
  (v7)(v5, enum case for FontSource.textStyle(_:), v4);
  v8 = v6;
  sub_39310();
  *&v0[v24.n128_u64[0]] = sub_8E354();
  v9 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_titleLabel;
  v10 = [v2 ams_primaryText];
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  sub_4ED0(&v32);
  if (qword_C2CC8 != -1)
  {
    sub_39280(&qword_C2CC8);
  }

  v11 = qword_C4DF8;
  v12 = sub_392FC();
  v7(v12);
  v13 = v11;
  sub_39310();
  *&v0[v9] = sub_8E354();
  v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_isEnabled] = 1;
  v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_style] = 0;
  v14 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_metrics;
  if (qword_C2CA8 != -1)
  {
    sub_39260(&qword_C2CA8);
  }

  v15 = xmmword_C4DA8;
  v16 = *&qword_C4DB8;
  if (qword_C2CB0 != -1)
  {
    sub_3923C(&qword_C2CB0);
    v16 = v23;
    v15 = v24;
  }

  v17 = xmmword_C4DC8;
  v18 = *&qword_C4DD8;
  v33 = &type metadata for CGFloat;
  v34 = &protocol witness table for CGFloat;
  *&v32 = 0;
  v30 = &type metadata for CGFloat;
  v31 = &protocol witness table for CGFloat;
  v28 = &protocol witness table for CGFloat;
  *&v29 = 0x404A000000000000;
  v27 = &type metadata for CGFloat;
  *&v26 = 0x404A000000000000;
  if (qword_C2CB8 != -1)
  {
    sub_39214(&qword_C2CB8);
    v18 = v21;
    v17 = v22;
    v16 = v23;
    v15 = v24;
  }

  sub_392DC(*&qword_C4DE8, v15, v16, v17, v18);
  sub_3A94(&v32, v14 + 64);
  sub_3A94(&v29, v14 + 104);
  sub_3A94(&v26, v14 + 144);
  v25.receiver = v1;
  v25.super_class = type metadata accessor for DynamicButtonView();
  v19 = objc_msgSendSuper2(&v25, "init");
  sub_382D4();

  return v19;
}

id sub_3720C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v32.n128_u64[0] = OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_subtitleLabel;
  sub_8E374();
  v10 = objc_opt_self();
  v11 = [v10 ams_primaryText];
  v12 = sub_8E684();
  v41 = v12;
  v42 = &protocol witness table for FontSource;
  v13 = sub_4ED0(&v40);
  if (qword_C2CC0 != -1)
  {
    sub_392A0(&qword_C2CC0);
  }

  v14 = qword_C4DF0;
  *v13 = qword_C4DF0;
  v15 = *(*(v12 - 8) + 104);
  (v15)(v13, enum case for FontSource.textStyle(_:), v12);
  v16 = v14;
  *&v4[v32.n128_u64[0]] = sub_8E354();
  v17 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_titleLabel;
  v18 = [v10 ams_primaryText];
  v41 = v12;
  v42 = &protocol witness table for FontSource;
  sub_4ED0(&v40);
  if (qword_C2CC8 != -1)
  {
    sub_39280(&qword_C2CC8);
  }

  v19 = qword_C4DF8;
  v20 = sub_392FC();
  v15(v20);
  v21 = v19;
  *&v4[v17] = sub_8E354();
  v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_isEnabled] = 1;
  v4[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_style] = 0;
  v22 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_metrics;
  if (qword_C2CA8 != -1)
  {
    sub_39260(&qword_C2CA8);
  }

  v23 = xmmword_C4DA8;
  v24 = *&qword_C4DB8;
  if (qword_C2CB0 != -1)
  {
    sub_3923C(&qword_C2CB0);
    v24 = v31;
    v23 = v32;
  }

  v25 = xmmword_C4DC8;
  v26 = *&qword_C4DD8;
  v41 = &type metadata for CGFloat;
  v42 = &protocol witness table for CGFloat;
  v39 = &protocol witness table for CGFloat;
  *&v40 = 0;
  v38 = &type metadata for CGFloat;
  v36 = &protocol witness table for CGFloat;
  *&v37 = 0x404A000000000000;
  v35 = &type metadata for CGFloat;
  *&v34 = 0x404A000000000000;
  if (qword_C2CB8 != -1)
  {
    sub_39214(&qword_C2CB8);
    v26 = v29;
    v25 = v30;
    v24 = v31;
    v23 = v32;
  }

  sub_392DC(*&qword_C4DE8, v23, v24, v25, v26);
  sub_3A94(&v40, v22 + 64);
  sub_3A94(&v37, v22 + 104);
  sub_3A94(&v34, v22 + 144);
  v33.receiver = v5;
  v33.super_class = type metadata accessor for DynamicButtonView();
  v27 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  sub_382D4();

  return v27;
}

id sub_37560(void *a1)
{
  v2 = v1;
  *&v30 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_subtitleLabel;
  sub_8E374();
  v3 = objc_opt_self();
  v4 = [v3 ams_primaryText];
  v5 = sub_8E684();
  v40 = v5;
  v41 = &protocol witness table for FontSource;
  v6 = sub_4ED0(&v39);
  if (qword_C2CC0 != -1)
  {
    sub_392A0(&qword_C2CC0);
  }

  v7 = qword_C4DF0;
  *v6 = qword_C4DF0;
  v8 = enum case for FontSource.textStyle(_:);
  v9 = *(*(v5 - 8) + 104);
  v9(v6, enum case for FontSource.textStyle(_:), v5);
  v10 = v7;
  sub_39310();
  *&v1[v30] = sub_8E354();
  v11 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_titleLabel;
  v12 = [v3 ams_primaryText];
  v40 = v5;
  v41 = &protocol witness table for FontSource;
  v13 = sub_4ED0(&v39);
  if (qword_C2CC8 != -1)
  {
    sub_39280(&qword_C2CC8);
  }

  v14 = qword_C4DF8;
  *v13 = qword_C4DF8;
  v9(v13, v8, v5);
  v15 = v14;
  sub_39310();
  *&v1[v11] = sub_8E354();
  v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_isEnabled] = 1;
  v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_style] = 0;
  v16 = OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_metrics;
  if (qword_C2CA8 != -1)
  {
    sub_39260(&qword_C2CA8);
  }

  v17 = &v1[v16];
  v18 = xmmword_C4DA8;
  v19 = *&qword_C4DB8;
  if (qword_C2CB0 != -1)
  {
    sub_3923C(&qword_C2CB0);
    v19 = v29;
    v18 = v30;
  }

  v20 = xmmword_C4DC8;
  v21 = *&qword_C4DD8;
  v40 = &type metadata for CGFloat;
  v41 = &protocol witness table for CGFloat;
  *&v39 = 0;
  v37 = &type metadata for CGFloat;
  v38 = &protocol witness table for CGFloat;
  v35 = &protocol witness table for CGFloat;
  *&v36 = 0x404A000000000000;
  v34 = &type metadata for CGFloat;
  *&v33 = 0x404A000000000000;
  if (qword_C2CB8 != -1)
  {
    sub_39214(&qword_C2CB8);
    v21 = v27;
    v20 = v28;
    v19 = v29;
    v18 = v30;
  }

  v22 = qword_C4DE8;
  *(v17 + 26) = &type metadata for CGFloat;
  *(v17 + 27) = &protocol witness table for CGFloat;
  *(v17 + 23) = v22;
  *(v17 + 31) = &type metadata for CGFloat;
  *(v17 + 32) = &protocol witness table for CGFloat;
  *(v17 + 28) = 0;
  *v17 = v18;
  *(v17 + 1) = v19;
  *(v17 + 2) = v20;
  *(v17 + 3) = v21;
  sub_3A94(&v39, (v17 + 64));
  sub_3A94(&v36, (v17 + 104));
  sub_3A94(&v33, (v17 + 144));
  v32.receiver = v2;
  v32.super_class = type metadata accessor for DynamicButtonView();
  v23 = objc_msgSendSuper2(&v32, "initWithCoder:", a1);
  v24 = v23;
  if (v23)
  {
    v25 = v23;
    sub_382D4();
  }

  return v24;
}

id sub_378D0()
{
  sub_392D0();
  (*(v1 + 384))();

  return [v0 setNeedsLayout];
}

id sub_37964()
{
  sub_392D0();
  (*(v1 + 392))();

  return [v0 setNeedsLayout];
}

id sub_37A14()
{
  if ([*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_titleLabel) hasContent])
  {
    return &def_4BB18 + 1;
  }

  else
  {
    return [*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_subtitleLabel) hasContent];
  }
}

uint64_t sub_37A68()
{
  v1 = v0;
  v2 = sub_8E6A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicButtonView();
  v20.receiver = v0;
  v20.super_class = v6;
  objc_msgSendSuper2(&v20, "layoutSubviews");
  sub_38D64(&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_metrics], v19);
  v7 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_subtitleLabel];
  v8 = sub_8E374();
  v19[36] = v8;
  v9 = sub_38DC0();
  v19[33] = v7;
  v10 = *&v1[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_titleLabel];
  v19[41] = v8;
  v19[42] = v9;
  v19[37] = v9;
  v19[38] = v10;
  v11 = v7;
  v12 = v10;
  [v1 bounds];
  sub_394E4(v1, v13, v14, v15, v16);
  (*(v3 + 8))(v5, v2);
  return sub_390A0(v19);
}

double sub_37C20(double a1, double a2)
{
  sub_38D64(v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_metrics, v13);
  v5 = *(v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_subtitleLabel);
  v6 = sub_8E374();
  v13[36] = v6;
  v7 = sub_38DC0();
  v13[33] = v5;
  v8 = *(v2 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_titleLabel);
  v13[41] = v6;
  v13[42] = v7;
  v13[37] = v7;
  v13[38] = v8;
  v9 = v5;
  v10 = v8;
  v11 = sub_38E18(v2, v13, a1, a2);
  sub_390A0(v13);
  return v11;
}

uint64_t sub_37DF0()
{
  v1 = v0;
  v2 = *(&stru_B8.reserved2 + (swift_isaMask & **(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_titleLabel)));
  v2(v35);
  v3 = v36;
  if (v36)
  {
    v4 = v37;
    sub_CD08(v35, v36);
    v5 = (*(v4 + 16))(v3, v4);
    v7 = v6;
    v8 = sub_4F30(v35);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = sub_390F4(v35);
  }

  (v2)(v35, v8);
  v9 = v36;
  if (!v36)
  {
    sub_390F4(v35);

    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v10 = v37;
  sub_CD08(v35, v36);
  v5 = (*(v10 + 72))(v9, v10);
  v7 = v11;
  sub_4F30(v35);

LABEL_7:
  sub_342D8(0, 1, 1, &_swiftEmptyArrayStorage);
  v13 = v12;
  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    sub_342D8(v14 > 1, v15 + 1, 1, v12);
    v13 = v32;
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[16 * v15];
  *(v16 + 4) = v5;
  *(v16 + 5) = v7;
LABEL_11:
  v17 = *(&stru_B8.reserved2 + (swift_isaMask & **(v1 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_subtitleLabel)));
  v17(v35);
  v18 = v36;
  if (v36)
  {
    v19 = v37;
    sub_CD08(v35, v36);
    v20 = (*(v19 + 16))(v18, v19);
    v22 = v21;
    v23 = sub_4F30(v35);
    if (v22)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v23 = sub_390F4(v35);
  }

  (v17)(v35, v23);
  v24 = v36;
  if (!v36)
  {
    sub_390F4(v35);

    goto LABEL_23;
  }

  v25 = v37;
  sub_CD08(v35, v36);
  v20 = (*(v25 + 72))(v24, v25);
  v22 = v26;
  sub_4F30(v35);

LABEL_17:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_342D8(0, *(v13 + 2) + 1, 1, v13);
    v13 = v33;
  }

  v28 = *(v13 + 2);
  v27 = *(v13 + 3);
  if (v28 >= v27 >> 1)
  {
    sub_342D8(v27 > 1, v28 + 1, 1, v13);
    v13 = v34;
  }

  *(v13 + 2) = v28 + 1;
  v29 = &v13[16 * v28];
  *(v29 + 4) = v20;
  *(v29 + 5) = v22;
LABEL_23:
  v35[0] = v13;
  sub_332C(&unk_C3CF8, &unk_93290);
  sub_3915C();
  v30 = sub_8F5A4();

  return v30;
}

void sub_38254(uint64_t a1)
{
  v2.receiver = v1;
  v2.super_class = type metadata accessor for DynamicButtonView();
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_383B0();
}

id sub_382D4()
{
  v1 = [objc_opt_self() ams_clear];
  [v0 setBackgroundColor:v1];

  [v0 setUserInteractionEnabled:0];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_subtitleLabel]];
  v2 = *&v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_titleLabel];

  return [v0 addSubview:v2];
}

id sub_38380()
{
  v1 = 0.3;
  if (v0[OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_isEnabled])
  {
    v1 = 1.0;
  }

  return [v0 setAlpha:v1];
}

void sub_383B0()
{
  if (*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_style))
  {
    if (*(v0 + OBJC_IVAR____TtC19CoreDynamicUIPlugin17DynamicButtonView_style) == 1)
    {
      v1 = objc_opt_self();
      v2 = [v1 ams_primaryText];
      sub_392D0();
      (*(v3 + 208))();
      v4 = [v1 ams_primaryText];
      sub_392D0();
      (*(v5 + 208))();
      v6 = [v1 ams_clear];
LABEL_16:
      v23 = v6;
      [v0 setBackgroundColor:v23];

      return;
    }

    if ([v0 tintColor])
    {
      sub_392C0();
      (*(v21 + 208))();
      if ([v0 tintColor])
      {
        sub_392C0();
        (*(v22 + 208))();
        v6 = [objc_opt_self() ams_clear];
        goto LABEL_16;
      }

LABEL_22:
      __break(1u);
      return;
    }

    goto LABEL_20;
  }

  v7 = [v0 tintColor];
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7;
  v9 = [v7 ams_isLight];

  v10 = objc_opt_self();
  if (v9)
  {
    v11 = &selRef_blackColor;
  }

  else
  {
    v11 = &selRef_whiteColor;
  }

  v12 = [v10 *v11];
  sub_392C0();
  (*(v13 + 208))();
  v14 = [v0 tintColor];
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = v14;
  v16 = [v14 ams_isLight];

  v17 = objc_opt_self();
  if (v16)
  {
    v18 = &selRef_blackColor;
  }

  else
  {
    v18 = &selRef_whiteColor;
  }

  v19 = [v17 *v18];
  sub_392C0();
  (*(v20 + 208))();
}