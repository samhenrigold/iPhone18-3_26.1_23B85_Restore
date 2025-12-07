int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_self();
  sub_100001658(&qword_100020C90, &unk_100017AD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100017AC0;
  *(v4 + 32) = type metadata accessor for ManagedAppsApplicator(0, v5, v6);
  sub_100001658(&qword_100020AB0, &qword_100017F00);
  isa = sub_100016F20().super.isa;

  type metadata accessor for ManagedAppsStatus(0, v8, v9);
  [v3 runConfigurationSubscriberClientWithApplicators:isa publisherClass:swift_getObjCClassFromMetadata()];

  return 0;
}

uint64_t sub_100001658(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_1000016A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000016CC(uint64_t a1, id *a2)
{
  result = sub_100016E00();
  *a2 = 0;
  return result;
}

uint64_t sub_100001744(uint64_t a1, id *a2)
{
  v3 = sub_100016E10();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000017C4@<X0>(uint64_t *a1@<X8>)
{
  sub_100016E20();
  v2 = sub_100016DF0();

  *a1 = v2;
  return result;
}

uint64_t sub_100001808()
{
  sub_100016E20();
  v0 = sub_100016EE0();

  return v0;
}

uint64_t sub_100001844(uint64_t a1)
{
  sub_100016E20();
  sub_100016E70();
}

Swift::Int sub_100001898(uint64_t a1)
{
  sub_100016E20();
  sub_100017220();
  sub_100016E70();
  v1 = sub_100017230();

  return v1;
}

uint64_t sub_10000190C(void *a1, uint64_t *a2)
{
  v2 = sub_100016E20();
  v4 = v3;
  if (v2 == sub_100016E20() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000171B0();
  }

  return v7 & 1;
}

uint64_t sub_100001994@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100016DF0();

  *a2 = v3;
  return result;
}

uint64_t sub_1000019DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100016E20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_100001A30(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100001A7C(uint64_t a1)
{
  v2 = sub_100001B7C(&qword_100020AE0, &unk_100017CB8);
  v3 = sub_100001B7C(&qword_100020AE8, &unk_100017C0C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001B7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RMUIConfigurationUIHiddenDetail(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001BF4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    sub_100016850();
    swift_allocObject();
    v1 = sub_100016840();
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_100001C6C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    sub_100016850();
    swift_allocObject();
    v1 = sub_100016840();
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t MACAPIImpl.setAppConfig(recordID:appConfigRecord:scope:persona:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_100001D10, 0, 0);
}

uint64_t sub_100001D10()
{
  if (v0[5] == 1)
  {
    v1 = sub_100001BF4();
  }

  else
  {
    v1 = sub_100001C6C();
  }

  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100001DD4;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return ManagedAppsDaemonClient.setAppConfig(recordID:appConfigRecord:persona:)(v7, v5, v6, v3, v4);
}

uint64_t sub_100001DD4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100001F4C;
  }

  else
  {
    v2 = sub_100001EE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100001EE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MACAPIImpl.removeAppConfig(recordID:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100001FD4, 0, 0);
}

uint64_t sub_100001FD4()
{
  if (v0[4] == 1)
  {
    v1 = sub_100001BF4();
  }

  else
  {
    v1 = sub_100001C6C();
  }

  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_10000208C;
  v4 = v0[2];
  v3 = v0[3];

  return ManagedAppsDaemonClient.removeAppConfig(recordID:)(v4, v3);
}

uint64_t sub_10000208C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100002204;
  }

  else
  {
    v2 = sub_1000021A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000021A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002204()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MACAPIImpl.deinit()
{

  return v0;
}

uint64_t MACAPIImpl.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000022D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *v6;
  return _swift_task_switch(sub_100002300, 0, 0);
}

uint64_t sub_100002300()
{
  if (v0[5] == 1)
  {
    v1 = sub_100001BF4();
  }

  else
  {
    v1 = sub_100001C6C();
  }

  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1000023C4;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return ManagedAppsDaemonClient.setAppConfig(recordID:appConfigRecord:persona:)(v7, v5, v6, v3, v4);
}

uint64_t sub_1000023C4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1000026F0;
  }

  else
  {
    v2 = sub_1000026F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000024D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return _swift_task_switch(sub_100002500, 0, 0);
}

uint64_t sub_100002500()
{
  if (v0[4] == 1)
  {
    v1 = sub_100001BF4();
  }

  else
  {
    v1 = sub_100001C6C();
  }

  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000025B8;
  v4 = v0[2];
  v3 = v0[3];

  return ManagedAppsDaemonClient.removeAppConfig(recordID:)(v4, v3);
}

uint64_t sub_1000025B8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1000026F4;
  }

  else
  {
    v2 = sub_1000026FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002700()
{
  v0 = sub_100016D40();
  sub_1000068E0(v0, qword_100021550);
  v1 = sub_100006810(v0, qword_100021550);
  type metadata accessor for ManagedAppsAdapter(v1, v2, v3);
  sub_100001658(&qword_100020C80, &unk_100017E18);
  sub_100016E40();
  return sub_100016D30();
}

void sub_1000027A0(uint64_t result@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, unint64_t *a4@<X8>)
{
  if (a3 <= 4u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        v9 = 0x800000010001A180;
        sub_1000170D0(25);

        v20._countAndFlagsBits = result;
        v20._object = a2;
        sub_100016E80(v20);
        v10 = 0xD000000000000017;
        v11 = 0x800000010001A1B0;
        v12 = 0xD000000000000022;
        goto LABEL_20;
      }

      sub_1000170D0(18);

      v7 = 0x800000010001A1D0;
      v8 = 0xD000000000000010;
    }

    else
    {
      if (a3 == 2)
      {
        sub_1000170D0(17);

        v13 = 0x2064696C61766E49;
        v14 = 0xEF203A65706F6373;
        goto LABEL_16;
      }

      if (a3 != 3)
      {
        v12 = 0xD00000000000001DLL;
        v9 = 0x800000010001A0D0;
        sub_1000170D0(35);

        v13 = 0xD000000000000021;
        v14 = 0x800000010001A0F0;
        v19._countAndFlagsBits = result;
        v19._object = a2;
        sub_100016E80(v19);
        goto LABEL_19;
      }

      sub_1000170D0(31);

      v7 = 0x8000000100019950;
      v8 = 0xD00000000000001DLL;
    }

    v13 = v8;
    v14 = v7;
LABEL_16:
    v17._countAndFlagsBits = result;
    v17._object = a2;
    sub_100016E80(v17);
    v12 = 0;
    v9 = 0;
LABEL_19:
    v10 = v13;
    v11 = v14;
    goto LABEL_20;
  }

  if (a3 <= 6u)
  {
    if (a3 == 5)
    {
      v9 = 0x800000010001A0B0;
      sub_1000170D0(17);

      v16._countAndFlagsBits = result;
      v16._object = a2;
      sub_100016E80(v16);
      v10 = 0x20676E697373694DLL;
      v11 = 0xEF203A7465737361;
      v12 = 0xD000000000000018;
    }

    else
    {
      v9 = 0x800000010001A090;
      sub_1000170D0(17);

      v21._countAndFlagsBits = result;
      v21._object = a2;
      sub_100016E80(v21);
      v10 = 0x2064696C61766E49;
      v11 = 0xEF203A7465737361;
      v12 = 0xD00000000000001CLL;
    }
  }

  else if (a3 == 7)
  {
    v9 = 0x800000010001A040;
    sub_1000170D0(27);

    sub_10000F018();
    v18._countAndFlagsBits = sub_100016920();
    sub_100016E80(v18);

    v10 = 0xD000000000000019;
    v11 = 0x800000010001A070;
    v12 = 0xD000000000000021;
  }

  else if (a3 == 8)
  {
    v9 = 0x8000000100019FF0;
    sub_1000170D0(37);

    sub_10000F018();
    v15._countAndFlagsBits = sub_100016920();
    sub_100016E80(v15);

    v10 = 0xD000000000000023;
    v11 = 0x800000010001A010;
    v12 = 0xD00000000000001BLL;
  }

  else
  {
    v12 = 0xD00000000000001DLL;
    v9 = 0x800000010001A120;
    v11 = 0x800000010001A140;
    v10 = 0xD000000000000032;
  }

LABEL_20:
  *a4 = v12;
  a4[1] = v9;
  a4[2] = v10;
  a4[3] = v11;
  a4[4] = 0;
}

__n128 sub_100002C10@<Q0>(uint64_t a1@<X8>)
{
  sub_1000027A0(*v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100002C60(uint64_t a1)
{
  v2 = sub_10000F018();

  return RMAdapterError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002C9C(uint64_t a1)
{
  v2 = sub_10000F018();

  return RMAdapterError.errorDescription.getter(a1, v2);
}

uint64_t sub_100002CE4(uint64_t a1)
{
  v2 = sub_10000EF6C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002D20(uint64_t a1)
{
  v2 = sub_10000EF6C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003008(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000030BC;

  return sub_100007728(a1);
}

uint64_t sub_1000030BC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_1000167C0();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
    sub_10000EDCC();
    isa = sub_100016FB0().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v4 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_1000033EC(void *a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1000034E0;

  return sub_10000ACB0(v10, a3);
}

uint64_t sub_1000034E0(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    v9 = sub_1000167C0();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_10000EE34(0, &qword_100020CF0, RMModelStatusReason_ptr);
    isa = sub_100016F20().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v4 + 40);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

void sub_1000036B4(void *a1)
{
  v1 = [a1 payloadInstallBehavior];
  if (!v1)
  {
    sub_100016A80();
    return;
  }

  v2 = v1;
  v3 = [v1 payloadInstall];
  v4 = sub_100016E20();
  v6 = v5;

  if (sub_100016E20() == v4 && v7 == v6)
  {
  }

  else
  {
    v9 = sub_1000171B0();

    if ((v9 & 1) == 0)
    {
      if (sub_100016E20() == v4 && v10 == v6)
      {
      }

      else
      {
        v12 = sub_1000171B0();

        if ((v12 & 1) == 0)
        {
          sub_1000170D0(34);

          v13 = [v2 payloadInstall];
          v14 = sub_100016E20();
          v16 = v15;

          v18._countAndFlagsBits = v14;
          v18._object = v16;
          sub_100016E80(v18);

          sub_10000688C();
          swift_allocError();
          *v17 = 0xD000000000000020;
          *(v17 + 8) = 0x8000000100019F60;
          *(v17 + 16) = 1;
          swift_willThrow();
          goto LABEL_11;
        }
      }

      sub_100016A70();
      goto LABEL_11;
    }
  }

  sub_100016A80();
LABEL_11:
}

void sub_1000038D0(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = sub_100001658(&qword_100020D08, &qword_100017ED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - v6;
  v8 = sub_1000167E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100016B50();
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  v18 = [a1 payloadAppStoreID];
  if (v18)
  {
    v19 = v18;
    v20 = sub_100016E20();
    v22 = v21;

    v23 = HIBYTE(v22) & 0xF;
    v24 = v20 & 0xFFFFFFFFFFFFLL;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v25 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      if ((v22 & 0x1000000000000000) == 0)
      {
        if ((v22 & 0x2000000000000000) != 0)
        {
          v61[0] = v20;
          v61[1] = v22 & 0xFFFFFFFFFFFFFFLL;
          if (v20 == 43)
          {
            if (v23)
            {
              if (--v23)
              {
                v44 = 0;
                v45 = v61 + 1;
                while (1)
                {
                  v46 = *v45 - 48;
                  if (v46 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v44, 0xAuLL))
                  {
                    break;
                  }

                  v31 = __CFADD__(10 * v44, v46);
                  v44 = 10 * v44 + v46;
                  if (v31)
                  {
                    break;
                  }

                  ++v45;
                  if (!--v23)
                  {
                    goto LABEL_73;
                  }
                }
              }

              goto LABEL_72;
            }

LABEL_89:
            __break(1u);
            return;
          }

          if (v20 != 45)
          {
            if (v23)
            {
              v49 = 0;
              v50 = v61;
              while (1)
              {
                v51 = *v50 - 48;
                if (v51 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v49, 0xAuLL))
                {
                  break;
                }

                v31 = __CFADD__(10 * v49, v51);
                v49 = 10 * v49 + v51;
                if (v31)
                {
                  break;
                }

                ++v50;
                if (!--v23)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_72;
          }

          if (v23)
          {
            if (--v23)
            {
              v35 = 0;
              v36 = v61 + 1;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v35, 0xAuLL))
                {
                  break;
                }

                v31 = 10 * v35 >= v37;
                v35 = 10 * v35 - v37;
                if (!v31)
                {
                  break;
                }

                ++v36;
                if (!--v23)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_72;
          }
        }

        else
        {
          if ((v20 & 0x1000000000000000) != 0)
          {
            v26 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v26 = sub_1000170F0();
          }

          v27 = *v26;
          if (v27 == 43)
          {
            if (v24 >= 1)
            {
              v23 = v24 - 1;
              if (v24 != 1)
              {
                v41 = 0;
                if (v26)
                {
                  v42 = v26 + 1;
                  while (1)
                  {
                    v43 = *v42 - 48;
                    if (v43 > 9)
                    {
                      goto LABEL_72;
                    }

                    if (!is_mul_ok(v41, 0xAuLL))
                    {
                      goto LABEL_72;
                    }

                    v31 = __CFADD__(10 * v41, v43);
                    v41 = 10 * v41 + v43;
                    if (v31)
                    {
                      goto LABEL_72;
                    }

                    ++v42;
                    if (!--v23)
                    {
                      goto LABEL_73;
                    }
                  }
                }

                goto LABEL_64;
              }

              goto LABEL_72;
            }

            goto LABEL_88;
          }

          if (v27 != 45)
          {
            if (v24)
            {
              v47 = 0;
              if (v26)
              {
                while (1)
                {
                  v48 = *v26 - 48;
                  if (v48 > 9)
                  {
                    goto LABEL_72;
                  }

                  if (!is_mul_ok(v47, 0xAuLL))
                  {
                    goto LABEL_72;
                  }

                  v31 = __CFADD__(10 * v47, v48);
                  v47 = 10 * v47 + v48;
                  if (v31)
                  {
                    goto LABEL_72;
                  }

                  ++v26;
                  if (!--v24)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_64;
            }

LABEL_72:
            LOBYTE(v23) = 1;
            goto LABEL_73;
          }

          if (v24 >= 1)
          {
            v23 = v24 - 1;
            if (v24 != 1)
            {
              v28 = 0;
              if (v26)
              {
                v29 = v26 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    goto LABEL_72;
                  }

                  if (!is_mul_ok(v28, 0xAuLL))
                  {
                    goto LABEL_72;
                  }

                  v31 = 10 * v28 >= v30;
                  v28 = 10 * v28 - v30;
                  if (!v31)
                  {
                    goto LABEL_72;
                  }

                  ++v29;
                  if (!--v23)
                  {
                    goto LABEL_73;
                  }
                }
              }

LABEL_64:
              LOBYTE(v23) = 0;
LABEL_73:
              v62 = v23;

              goto LABEL_74;
            }

            goto LABEL_72;
          }

          __break(1u);
        }

        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v62 = 0;
      sub_100006944(v20, v22, 10);
    }

    else
    {
    }

LABEL_74:
    v52 = v60;
    sub_100004538(a1);
    if (!v52)
    {
      sub_100016AB0();
      (*(v57 + 8))(v17, v58);
    }

    return;
  }

  v32 = [a1 payloadBundleID];
  if (!v32)
  {
    v38 = [a1 payloadManifestURL];
    if (v38)
    {
      v39 = v38;
      sub_100016E20();

      sub_1000167D0();

      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v11, v7, v8);
        sub_100016AD0();
        (*(v9 + 8))(v11, v8);
        return;
      }

      sub_10000EC38(v7, &qword_100020D08, &qword_100017ED0);
    }

    else
    {
      v53 = [a1 payloadAppComposedIdentifier];
      if (v53)
      {

        v54 = 0x8000000100019FB0;
        sub_10000688C();
        swift_allocError();
        v56 = 0xD000000000000032;
LABEL_79:
        *v55 = v56;
        *(v55 + 8) = v54;
        *(v55 + 16) = 1;
        swift_willThrow();
        return;
      }
    }

    v54 = 0x8000000100019F90;
    sub_10000688C();
    swift_allocError();
    v56 = 0xD00000000000001BLL;
    goto LABEL_79;
  }

  v33 = v32;
  sub_100016E20();
  if (a2)
  {

    v34 = [objc_opt_self() newComposedIdentifierWithBundleID:v33];

    sub_100016AC0();
  }

  else
  {

    v40 = v60;
    sub_100004538(a1);
    if (v40)
    {
    }

    else
    {
      sub_100016AB0();

      (*(v57 + 8))(v15, v58);
    }
  }
}

void sub_100004020(void *a1)
{
  v1 = [a1 payloadInstallBehavior];
  if (!v1)
  {
    sub_100016AF0();
    return;
  }

  v2 = v1;
  v3 = [v1 payloadAllowDownloadsOverCellular];
  v4 = sub_100016E20();
  v6 = v5;

  if (sub_100016E20() == v4 && v7 == v6)
  {

LABEL_10:

    sub_100016B00();
    goto LABEL_11;
  }

  v9 = sub_1000171B0();

  if (v9)
  {
    goto LABEL_10;
  }

  if (sub_100016E20() == v4 && v10 == v6)
  {

LABEL_19:

    sub_100016B10();
    goto LABEL_11;
  }

  v12 = sub_1000171B0();

  if (v12)
  {
    goto LABEL_19;
  }

  if (sub_100016E20() == v4 && v13 == v6)
  {
  }

  else
  {
    v14 = sub_1000171B0();

    if ((v14 & 1) == 0)
    {
      sub_1000170D0(34);

      v15 = [v2 payloadAllowDownloadsOverCellular];
      v16 = sub_100016E20();
      v18 = v17;

      v20._countAndFlagsBits = v16;
      v20._object = v18;
      sub_100016E80(v20);

      sub_10000688C();
      swift_allocError();
      *v19 = 0xD000000000000020;
      *(v19 + 8) = 0x8000000100019F60;
      *(v19 + 16) = 1;
      swift_willThrow();
      goto LABEL_11;
    }
  }

  sub_100016AF0();
LABEL_11:
}

void sub_1000042AC(void *a1)
{
  v1 = [a1 payloadUpdateBehavior];
  if (!v1)
  {
    sub_100016A00();
    return;
  }

  v2 = v1;
  v3 = [v1 payloadAutomaticAppUpdates];
  v4 = sub_100016E20();
  v6 = v5;

  if (sub_100016E20() == v4 && v7 == v6)
  {

LABEL_10:

    sub_100016A10();
    goto LABEL_11;
  }

  v9 = sub_1000171B0();

  if (v9)
  {
    goto LABEL_10;
  }

  if (sub_100016E20() == v4 && v10 == v6)
  {

LABEL_19:

    sub_100016A20();
    goto LABEL_11;
  }

  v12 = sub_1000171B0();

  if (v12)
  {
    goto LABEL_19;
  }

  if (sub_100016E20() == v4 && v13 == v6)
  {
  }

  else
  {
    v14 = sub_1000171B0();

    if ((v14 & 1) == 0)
    {
      sub_1000170D0(34);

      v15 = [v2 payloadAutomaticAppUpdates];
      v16 = sub_100016E20();
      v18 = v17;

      v20._countAndFlagsBits = v16;
      v20._object = v18;
      sub_100016E80(v20);

      sub_10000688C();
      swift_allocError();
      *v19 = 0xD000000000000020;
      *(v19 + 8) = 0x8000000100019F60;
      *(v19 + 16) = 1;
      swift_willThrow();
      goto LABEL_11;
    }
  }

  sub_100016A00();
LABEL_11:
}

uint64_t sub_100004538(void *a1)
{
  v1 = [a1 payloadInstallBehavior];
  if (!v1 || (v2 = v1, v3 = [v1 payloadLicense], v2, !v3) || (v4 = objc_msgSend(v3, "payloadAssignment"), v3, !v4))
  {
    if (qword_100020AA0 != -1)
    {
      swift_once();
    }

    v11 = sub_100016D40();
    sub_100006810(v11, qword_100021550);
    v12 = sub_100016D20();
    v13 = sub_100016FE0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Configuration for App Store app is missing the license assignment type", v14, 2u);
    }

    sub_10000688C();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
    v16 = 9;
    goto LABEL_15;
  }

  v5 = sub_100016E20();
  v7 = v6;

  if (sub_100016E20() == v5 && v8 == v7)
  {

LABEL_17:

    return sub_100016B40();
  }

  v10 = sub_1000171B0();

  if (v10)
  {
    goto LABEL_17;
  }

  if (sub_100016E20() != v5 || v18 != v7)
  {
    v19 = sub_1000171B0();

    if (v19)
    {
      goto LABEL_22;
    }

    if (qword_100020AA0 != -1)
    {
      swift_once();
    }

    v20 = sub_100016D40();
    sub_100006810(v20, qword_100021550);
    v21 = sub_100016D20();
    v22 = sub_100016FE0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Configuration for App Store app has invalid license assignment type", v23, 2u);
    }

    sub_10000688C();
    swift_allocError();
    *v15 = v5;
    *(v15 + 8) = v7;
    v16 = 4;
LABEL_15:
    *(v15 + 16) = v16;
    return swift_willThrow();
  }

LABEL_22:

  return sub_100016B30();
}

uint64_t sub_100004880(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000169A0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100004944, 0, 0);
}

uint64_t sub_100004944()
{
  v20 = v0;
  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_100016D40();
  sub_100006810(v2, qword_100021550);
  v3 = v1;
  v4 = sub_100016D20();
  v5 = sub_100016FF0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v9 = [v6 key];
    v10 = sub_100016E20();
    v12 = v11;

    v13 = sub_10001070C(v10, v12, &v19);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing configuration with key: %{public}s", v7, 0xCu);
    sub_100009990(v8);
  }

  v14 = *(v0 + 24);
  v15 = [*(v0 + 16) declarationIdentifier];
  sub_100016E20();

  sub_100016980();
  v16 = sub_1000074B0(v14);
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  *v17 = v0;
  v17[1] = sub_100004BF8;

  return DDMRemoveManagedAppRequest.send(to:)(v16 & 1);
}

uint64_t sub_100004BF8()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100004F00, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_100004D6C;
    v4 = v2[3];
    v5 = v2[2];

    return sub_1000061E4(v5, v4);
  }
}

uint64_t sub_100004D6C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100004F80;
  }

  else
  {
    v2 = sub_100004E80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004E80()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100004F00()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100004F80()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10000518C(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_100005258;

  return sub_100004880(v8, a2);
}

uint64_t sub_100005258()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_1000167C0();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100005618(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_1000056F8;

  return sub_10000DDC4(v8, a2);
}

uint64_t sub_1000056F8(char a1, void *a2)
{
  v4 = v2;
  v7 = *(*v3 + 32);
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  v11 = (v7 + 16);
  v12 = *(v10 + 32);
  if (v4)
  {
    v13 = sub_1000167C0();

    (*v11)(v12, 0, 0, v13);

    _Block_release(v12);
  }

  else
  {
    (*v11)(v12, a1 & 1, a2, 0);
    _Block_release(v12);
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_1000058C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_1000058E4, 0, 0);
}

uint64_t sub_1000058E4()
{
  v53 = v0;
  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_100016D40();
  *(v0 + 88) = sub_100006810(v2, qword_100021550);
  v3 = v1;
  v4 = sub_100016D20();
  v5 = sub_100016FD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v52[0] = v8;
    *v7 = 136446210;
    v9 = [v6 key];
    v10 = sub_100016E20();
    v12 = v11;

    v13 = sub_10001070C(v10, v12, v52);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Applying app config: %{public}s", v7, 0xCu);
    sub_100009990(v8);
  }

  v14 = *(v0 + 56);
  v15 = [*(v0 + 64) payloadAppConfig];
  sub_100009038(v14, v15, v52);
  v16 = v52[3];
  v17 = v52[4];
  v18 = *(v0 + 64);

  v19 = [v18 payloadExtensionConfigs];
  if (v19 && (v20 = v19, v21 = [v19 payloadDictionary], v20, v21))
  {
    sub_10000EE34(0, &qword_100020C88, RMModelAppManagedDeclaration_AppConfigDictionary_ptr);
    v22 = sub_100016D60();
  }

  else
  {
    v22 = 0;
  }

  sub_100009420(*(v0 + 56), v22);
  v23 = *(v0 + 64);

  v24 = [v23 payloadLegacyAppConfigAssetReference];
  if (v24)
  {
    v25 = v24;
    v26 = sub_100016E20();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  sub_100008A94(*(v0 + 56), v26, v28);
  v29 = *(v0 + 72);
  v49 = *(v0 + 80);
  v50 = *(v0 + 56);

  v30 = [v29 key];
  sub_100016E20();

  v31 = objc_allocWithZone(sub_1000168D0());
  v48 = v17;
  v32 = sub_1000168C0();
  *(v0 + 96) = v32;
  sub_10000992C(v49 + OBJC_IVAR____TtC21ManagedAppsSubscriber18ManagedAppsAdapter_macapi, v0 + 16);
  v33 = *(v0 + 40);
  v34 = *(v0 + 48);
  sub_100006848((v0 + 16), v33);
  v35 = [v29 keyWithoutServerToken];
  v36 = sub_100016E20();
  v38 = v37;

  *(v0 + 104) = v38;
  v39 = [v50 store];
  v40 = [v39 scope];

  v41 = [v50 store];
  v42 = [v41 personaIdentifier];

  if (v42)
  {
    v43 = sub_100016E20();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  *(v0 + 112) = v45;
  v51 = (*(v34 + 8) + **(v34 + 8));
  v46 = swift_task_alloc();
  *(v0 + 120) = v46;
  *v46 = v0;
  v46[1] = sub_100005EB4;

  return v51(v36, v38, v32, v40, v43, v45, v33, v34);
}

uint64_t sub_100005EB4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100006044;
  }

  else
  {

    v2 = sub_100005FD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005FD8()
{
  sub_100009990((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006044()
{

  sub_100009990(v0 + 2);
  swift_errorRetain();
  v1 = sub_100016D20();
  v2 = sub_100016FE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to apply app config with error: %{public}@", v3, 0xCu);
    sub_10000EC38(v4, &qword_100020F40, &qword_100017E10);
  }

  v6 = v0[16];
  v7 = v0[12];

  sub_10000688C();
  swift_allocError();
  *v8 = v6;
  *(v8 + 8) = 0;
  *(v8 + 16) = 8;
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000061E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100006208, 0, 0);
}

uint64_t sub_100006208()
{
  v27 = v0;
  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_100016D40();
  v0[5] = sub_100006810(v2, qword_100021550);
  v3 = v1;
  v4 = sub_100016D20();
  v5 = sub_100016FD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136446210;
    v9 = [v6 key];
    v10 = sub_100016E20();
    v12 = v11;

    v13 = sub_10001070C(v10, v12, &v26);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing app config: %{public}s", v7, 0xCu);
    sub_100009990(v8);
  }

  v14 = v0[2];
  v15 = (v0[4] + OBJC_IVAR____TtC21ManagedAppsSubscriber18ManagedAppsAdapter_macapi);
  v16 = v15[3];
  v17 = v15[4];
  sub_100006848(v15, v16);
  v18 = [v14 keyWithoutServerToken];
  v19 = sub_100016E20();
  v21 = v20;

  v0[6] = v21;
  v25 = (*(v17 + 16) + **(v17 + 16));
  v22 = swift_task_alloc();
  v0[7] = v22;
  *v22 = v0;
  v22[1] = sub_1000064D4;
  v23 = v0[3];

  return v25(v19, v21, v23, v16, v17);
}

uint64_t sub_1000064D4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100006610, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100006610()
{

  swift_errorRetain();
  v1 = sub_100016D20();
  v2 = sub_100016FE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to remove app config with error: %{public}@", v3, 0xCu);
    sub_10000EC38(v4, &qword_100020F40, &qword_100017E10);
  }

  v6 = *(v0 + 64);

  sub_10000688C();
  swift_allocError();
  *v7 = v6;
  *(v7 + 8) = 0;
  *(v7 + 16) = 8;
  swift_willThrow();
  v8 = *(v0 + 8);

  return v8();
}

id sub_100006794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for ManagedAppsAdapter(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_100006810(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_100006848(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000688C()
{
  result = qword_100020C70;
  if (!qword_100020C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C70);
  }

  return result;
}

uint64_t *sub_1000068E0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unsigned __int8 *sub_100006944(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_100016EF0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100006EC8(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000170F0();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100006EC8(uint64_t a1, unint64_t a2)
{
  v2 = sub_100016F00();
  v6 = sub_100006F48(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100006F48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100017020();
    if (!v9 || (v10 = v9, v11 = sub_100010B4C(v9, 0), v12 = sub_1000070A0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100016E60();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100016E60();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000170F0();
LABEL_4:

  return sub_100016E60();
}

unint64_t sub_1000070A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000072C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100016EC0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000170F0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000072C0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_100016EA0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000072C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100016ED0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100016EB0();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id sub_10000733C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_100012274(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_100012380(v15, a4 & 1);
      v10 = sub_100012274(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for RMUIConfigurationUIHiddenDetail(0);
        result = sub_1000171D0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_100012AC8();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return a3;
}

uint64_t sub_1000074B0(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v2 = sub_100016D40();
  sub_100006810(v2, qword_100021550);
  v3 = sub_100016D20();
  v4 = sub_100016FE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown scope", v5, 2u);
  }

  sub_10000688C();
  swift_allocError();
  *v6 = xmmword_100017D90;
  *(v6 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1000075E8(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
    sub_10000EDCC();
    result = sub_100016FC0();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1000170E0();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100010CB4(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_100017150();
  }

  v5 = result;
  v4 = sub_100017150();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100007728(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100016CC0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000077E8, 0, 0);
}

uint64_t sub_1000077E8()
{
  v1 = *(v0 + 16);
  sub_100016CB0();
  v2 = sub_1000074B0(v1);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100007908;

  return DDMDeclarationKeysRequest.send(to:)(v2 & 1);
}

uint64_t sub_100007908(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_100007BA8;
  }

  else
  {
    v4 = sub_100007A1C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100007A1C()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100017120();
    v3 = objc_opt_self();
    v4 = v1 + 40;
    do
    {

      v5 = sub_100016DF0();
      [v3 newDeclarationKey:v5];

      sub_100017100();
      sub_100017130();
      sub_100017140();
      sub_100017110();
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  v9 = sub_1000075E8(_swiftEmptyArrayStorage);

  (*(v7 + 8))(v6, v8);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_100007BA8()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100007C28(void *a1)
{
  v2 = [a1 payloadAppStoreID];
  if (!v2)
  {
    v2 = [a1 payloadBundleID];
    if (!v2)
    {
      v2 = [a1 payloadManifestURL];
      if (!v2)
      {
        v2 = [a1 payloadAppComposedIdentifier];
        if (!v2)
        {
          return 0xD000000000000013;
        }
      }
    }
  }

  v3 = v2;
  v4 = sub_100016E20();

  return v4;
}

uint64_t sub_100007CF4(void *a1)
{
  v100 = 0;
  v101 = 0xE000000000000000;
  v2 = [a1 payloadAppStoreID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100016E20();
    v6 = v5;

    sub_1000170D0(18);

    v99._countAndFlagsBits = 0x6F74537070412020;
    v99._object = 0xEF203A4449646572;
    v102._countAndFlagsBits = v4;
    v102._object = v6;
    sub_100016E80(v102);

    v103._countAndFlagsBits = 10;
    v103._object = 0xE100000000000000;
    sub_100016E80(v103);
    v104._countAndFlagsBits = 0x6F74537070412020;
    v104._object = 0xEF203A4449646572;
    sub_100016E80(v104);
  }

  v7 = [a1 payloadBundleID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100016E20();
    v11 = v10;

    strcpy(&v99, "  BundleID: ");
    BYTE5(v99._object) = 0;
    HIWORD(v99._object) = -5120;
    v105._countAndFlagsBits = v9;
    v105._object = v11;
    sub_100016E80(v105);

    v106._countAndFlagsBits = 10;
    v106._object = 0xE100000000000000;
    sub_100016E80(v106);
    sub_100016E80(v99);
  }

  v12 = [a1 payloadManifestURL];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100016E20();
    v16 = v15;

    sub_1000170D0(18);

    v99._countAndFlagsBits = 0x6566696E614D2020;
    v99._object = 0xEF203A4C52557473;
    v107._countAndFlagsBits = v14;
    v107._object = v16;
    sub_100016E80(v107);

    v108._countAndFlagsBits = 10;
    v108._object = 0xE100000000000000;
    sub_100016E80(v108);
    v109._countAndFlagsBits = 0x6566696E614D2020;
    v109._object = 0xEF203A4C52557473;
    sub_100016E80(v109);
  }

  v17 = [a1 payloadAppComposedIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100016E20();
    v21 = v20;

    sub_1000170D0(25);

    v110._countAndFlagsBits = v19;
    v110._object = v21;
    sub_100016E80(v110);

    v111._countAndFlagsBits = 10;
    v111._object = 0xE100000000000000;
    sub_100016E80(v111);
    v112._countAndFlagsBits = 0xD000000000000016;
    v112._object = 0x8000000100019F40;
    sub_100016E80(v112);
  }

  sub_1000170D0(22);

  v22 = [a1 payloadIncludeInBackup];
  v23 = [v22 description];
  v24 = sub_100016E20();
  v26 = v25;

  v113._countAndFlagsBits = v24;
  v113._object = v26;
  sub_100016E80(v113);

  v114._countAndFlagsBits = 10;
  v114._object = 0xE100000000000000;
  sub_100016E80(v114);
  v115._countAndFlagsBits = 0xD000000000000013;
  v115._object = 0x8000000100019DC0;
  sub_100016E80(v115);

  v27 = [a1 payloadInstallBehavior];
  if (v27)
  {
    v28 = v27;
    v116._countAndFlagsBits = 0xD000000000000014;
    v116._object = 0x8000000100019EF0;
    sub_100016E80(v116);
    sub_1000170D0(16);

    strcpy(&v99, "    Install: ");
    HIWORD(v99._object) = -4864;
    v29 = [v28 payloadInstall];
    v30 = sub_100016E20();
    v32 = v31;

    v117._countAndFlagsBits = v30;
    v117._object = v32;
    sub_100016E80(v117);

    v33 = 0xE100000000000000;
    v118._countAndFlagsBits = 10;
    v118._object = 0xE100000000000000;
    sub_100016E80(v118);
    sub_100016E80(v99);

    sub_1000170D0(16);

    strcpy(&v99, "    License: ");
    HIWORD(v99._object) = -4864;
    v34 = [v28 payloadLicense];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 payloadAssignment];

      if (v36)
      {
        v37 = sub_100016E20();
        v33 = v38;

        v39._countAndFlagsBits = v37;
LABEL_15:
        v39._object = v33;
        sub_100016E80(v39);

        v40 = 0xE100000000000000;
        v119._countAndFlagsBits = 10;
        v119._object = 0xE100000000000000;
        sub_100016E80(v119);
        sub_100016E80(v99);

        sub_1000170D0(16);

        strcpy(&v99, "    Version: ");
        HIWORD(v99._object) = -4864;
        v41 = [v28 payloadVersion];
        if (v41)
        {
          v42 = v41;
          v43 = [v41 description];

          v44 = sub_100016E20();
          v40 = v45;
        }

        else
        {
          v44 = 45;
        }

        v120._countAndFlagsBits = v44;
        v120._object = v40;
        sub_100016E80(v120);

        v121._countAndFlagsBits = 10;
        v121._object = 0xE100000000000000;
        sub_100016E80(v121);
        sub_100016E80(v99);

        sub_1000170D0(38);

        v46 = [v28 payloadAllowDownloadsOverCellular];
        v47 = sub_100016E20();
        v49 = v48;

        v122._countAndFlagsBits = v47;
        v122._object = v49;
        sub_100016E80(v122);

        v123._countAndFlagsBits = 10;
        v123._object = 0xE100000000000000;
        sub_100016E80(v123);
        v124._countAndFlagsBits = 0xD000000000000023;
        v124._object = 0x8000000100019F10;
        sub_100016E80(v124);

        v125._countAndFlagsBits = 175972384;
        v125._object = 0xE400000000000000;
        sub_100016E80(v125);

        goto LABEL_19;
      }

      v33 = 0xE100000000000000;
    }

    v39._countAndFlagsBits = 45;
    goto LABEL_15;
  }

LABEL_19:
  v50 = [a1 payloadUpdateBehavior];
  if (v50)
  {
    v51 = v50;
    v126._object = 0x8000000100019EB0;
    v126._countAndFlagsBits = 0xD000000000000013;
    sub_100016E80(v126);
    sub_1000170D0(30);

    v52 = [v51 payloadAutomaticAppUpdates];
    v53 = sub_100016E20();
    v55 = v54;

    v127._countAndFlagsBits = v53;
    v127._object = v55;
    sub_100016E80(v127);

    v128._countAndFlagsBits = 10;
    v128._object = 0xE100000000000000;
    sub_100016E80(v128);
    v129._countAndFlagsBits = 0xD00000000000001BLL;
    v129._object = 0x8000000100019ED0;
    sub_100016E80(v129);

    v130._countAndFlagsBits = 175972384;
    v130._object = 0xE400000000000000;
    sub_100016E80(v130);
  }

  v56 = [a1 payloadAttributes];
  if (v56)
  {
    v57 = v56;
    v131._countAndFlagsBits = 0x6269727474412020;
    v131._object = 0xEF0A7B2073657475;
    sub_100016E80(v131);
    v58 = [v57 payloadAssociatedDomains];
    if (v58)
    {
      v59 = v58;
      sub_100016F30();

      sub_1000170D0(26);

      v60 = sub_100016F40();
      v62 = v61;

      v132._countAndFlagsBits = v60;
      v132._object = v62;
      sub_100016E80(v132);

      v133._countAndFlagsBits = 10;
      v133._object = 0xE100000000000000;
      sub_100016E80(v133);
      v134._countAndFlagsBits = 0xD000000000000017;
      v134._object = 0x8000000100019E90;
      sub_100016E80(v134);
    }

    sub_1000170D0(47);

    v99._countAndFlagsBits = 0xD00000000000002CLL;
    v99._object = 0x8000000100019DE0;
    v63 = [v57 payloadAssociatedDomainsEnableDirectDownloads];
    v64 = [v63 description];
    v65 = sub_100016E20();
    v67 = v66;

    v135._countAndFlagsBits = v65;
    v135._object = v67;
    sub_100016E80(v135);

    v136._countAndFlagsBits = 10;
    v136._object = 0xE100000000000000;
    sub_100016E80(v136);
    v137._countAndFlagsBits = 0xD00000000000002CLL;
    v137._object = 0x8000000100019DE0;
    sub_100016E80(v137);

    v68 = [v57 payloadCellularSliceUUID];
    if (v68)
    {
      v69 = v68;
      v70 = sub_100016E20();
      v72 = v71;

      sub_1000170D0(26);

      v99._countAndFlagsBits = 0xD000000000000017;
      v99._object = 0x8000000100019E70;
      v138._countAndFlagsBits = v70;
      v138._object = v72;
      sub_100016E80(v138);

      v139._countAndFlagsBits = 10;
      v139._object = 0xE100000000000000;
      sub_100016E80(v139);
      v140._countAndFlagsBits = 0xD000000000000017;
      v140._object = 0x8000000100019E70;
      sub_100016E80(v140);
    }

    v73 = [v57 payloadContentFilterUUID];
    if (v73)
    {
      v74 = v73;
      v75 = sub_100016E20();
      v77 = v76;

      sub_1000170D0(26);

      v99._countAndFlagsBits = 0xD000000000000017;
      v99._object = 0x8000000100019E50;
      v141._countAndFlagsBits = v75;
      v141._object = v77;
      sub_100016E80(v141);

      v142._countAndFlagsBits = 10;
      v142._object = 0xE100000000000000;
      sub_100016E80(v142);
      v143._countAndFlagsBits = 0xD000000000000017;
      v143._object = 0x8000000100019E50;
      sub_100016E80(v143);
    }

    v78 = [v57 payloadDNSProxyUUID];
    if (v78)
    {
      v79 = v78;
      v80 = sub_100016E20();
      v82 = v81;

      sub_1000170D0(21);

      v99._countAndFlagsBits = 0xD000000000000012;
      v99._object = 0x8000000100019E30;
      v144._countAndFlagsBits = v80;
      v144._object = v82;
      sub_100016E80(v144);

      v145._countAndFlagsBits = 10;
      v145._object = 0xE100000000000000;
      sub_100016E80(v145);
      v146._countAndFlagsBits = 0xD000000000000012;
      v146._object = 0x8000000100019E30;
      sub_100016E80(v146);
    }

    v83 = [v57 payloadRelayUUID];
    if (v83)
    {
      v84 = v83;
      v85 = sub_100016E20();
      v87 = v86;

      sub_1000170D0(18);

      v147._countAndFlagsBits = v85;
      v147._object = v87;
      sub_100016E80(v147);

      v148._countAndFlagsBits = 10;
      v148._object = 0xE100000000000000;
      sub_100016E80(v148);
      v149._countAndFlagsBits = 0x616C655220202020;
      v149._object = 0xEF203A4449555579;
      sub_100016E80(v149);
    }

    sub_1000170D0(27);

    v88 = [v57 payloadTapToPayScreenLock];
    v89 = [v88 description];
    v90 = sub_100016E20();
    v92 = v91;

    v150._countAndFlagsBits = v90;
    v150._object = v92;
    sub_100016E80(v150);

    v151._countAndFlagsBits = 10;
    v151._object = 0xE100000000000000;
    sub_100016E80(v151);
    v152._countAndFlagsBits = 0xD000000000000018;
    v152._object = 0x8000000100019E10;
    sub_100016E80(v152);

    v93 = [v57 payloadVPNUUID];
    if (v93)
    {
      v94 = v93;
      v95 = sub_100016E20();
      v97 = v96;

      sub_1000170D0(16);

      strcpy(&v99, "    VPNUUID: ");
      HIWORD(v99._object) = -4864;
      v153._countAndFlagsBits = v95;
      v153._object = v97;
      sub_100016E80(v153);

      v154._countAndFlagsBits = 10;
      v154._object = 0xE100000000000000;
      sub_100016E80(v154);
      sub_100016E80(v99);
    }

    v155._countAndFlagsBits = 175972384;
    v155._object = 0xE400000000000000;
    sub_100016E80(v155);
  }

  return v100;
}

uint64_t sub_100008A94(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    v6 = sub_100016DF0();
    v7 = [a1 assetWithIdentifier:v6];

    if (v7 && (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = v7;

        v11 = [objc_opt_self() newAssetKeyWithAsset:v9];
        v12 = [v11 key];
        a2 = sub_100016E20();

        return a2;
      }

      sub_10000688C();
      swift_allocError();
      *v13 = a2;
      *(v13 + 8) = a3;
      v14 = 6;
    }

    else
    {
      sub_10000688C();
      swift_allocError();
      *v13 = a2;
      *(v13 + 8) = a3;
      v14 = 5;
    }

    *(v13 + 16) = v14;
    swift_willThrow();
  }

  return a2;
}

void sub_100008C3C(void *a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = (a2 & 0xFFFFFFFFFFFFFF8);
    if (a2 >> 62)
    {
LABEL_27:
      v7 = sub_100017150();
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        return;
      }
    }

    v8 = 0;
    v9 = a2 & 0xC000000000000001;
    v35 = v6;
    v39 = a3 + 32;
    v10 = &MACAPIImpl;
    v6 = &MACAPIImpl;
    v37 = a1;
    v38 = a3;
    v36 = v7;
    while (1)
    {
      if (v9)
      {
        v11 = sub_1000170E0();
        v12 = __OFADD__(v8, 1);
        v8 = v8 + 1;
        if (v12)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v8 >= v35->ivar_lyt)
        {
          __break(1u);
          return;
        }

        v11 = *(a2 + 32 + 8 * v8);
        v12 = __OFADD__(v8, 1);
        v8 = v8 + 1;
        if (v12)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      v40 = v11;
      v13 = [v11 *&v10[17].ivar_base_size];
      if (!v13)
      {
        sub_100016E20();
        v13 = sub_100016DF0();
      }

      v14 = [a1 assetWithIdentifier:v13];

      if (!v14)
      {
        break;
      }

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {
        break;
      }

      v16 = v15;
      v17 = *(a3 + 16);
      v14 = v14;
      v18 = v39;
      do
      {
        if (!v17)
        {

          v24 = [v40 payloadAssetReference];
          v25 = sub_100016E20();
          v27 = v26;

          sub_10000688C();
          swift_allocError();
          *v28 = v25;
          *(v28 + 8) = v27;
          *(v28 + 16) = 6;
          swift_willThrow();

          v29 = v14;
          goto LABEL_24;
        }

        v18 += 8;
        --v17;
      }

      while (![v16 isKindOfClass:swift_getObjCClassFromMetadata()]);

      v19 = [objc_opt_self() newAssetKeyWithAsset:v16];
      v20 = [v40 payloadIdentifier];
      sub_100016E20();

      v21 = [v19 key];
      sub_100016E20();

      v22 = objc_allocWithZone(sub_100016870());
      v23 = sub_100016860();
      sub_100016F10();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100016F50();
      }

      sub_100016F60();

      a1 = v37;
      a3 = v38;
      v10 = &MACAPIImpl;
      v9 = a2 & 0xC000000000000001;
      if (v8 == v36)
      {
        return;
      }
    }

    v29 = v40;
    v30 = [v40 payloadAssetReference];
    v31 = sub_100016E20();
    v33 = v32;

    sub_10000688C();
    swift_allocError();
    *v34 = v31;
    *(v34 + 8) = v33;
    *(v34 + 16) = 5;
    swift_willThrow();
LABEL_24:
  }
}

void *sub_100009038@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a2)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_5:
    *a3 = v11;
    a3[1] = v12;
    a3[2] = v13;
    a3[3] = v14;
    a3[4] = v15;
    return result;
  }

  v4 = result;
  v34 = a3;
  v5 = a2;
  v6 = [v5 payloadDataAssetReference];
  if (v6)
  {
    v7 = v6;
    v8 = sub_100016E20();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v16 = sub_100008A94(v4, v8, v10);
  if (!v3)
  {
    v12 = v17;
    v33 = v16;

    v18 = [v5 payloadPasswords];
    if (v18)
    {
      v19 = v18;
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v20 = sub_100016F30();
    }

    else
    {
      v20 = 0;
    }

    sub_100001658(&qword_100020C90, &unk_100017AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100017AC0;
    *(inited + 32) = sub_10000EE34(0, &qword_100020C98, RMModelAssetCredentialUserNameAndPasswordDeclaration_ptr);
    sub_100008C3C(v4, v20, inited);
    v13 = v22;

    swift_setDeallocating();
    v23 = [v5 payloadIdentities];
    if (v23)
    {
      v24 = v23;
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v25 = sub_100016F30();
    }

    else
    {
      v25 = 0;
    }

    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_100017DA0;
    *(v26 + 32) = sub_10000EE34(0, &qword_100020CA0, RMModelAssetCredentialACMEDeclaration_ptr);
    *(v26 + 40) = sub_10000EE34(0, &qword_100020CA8, RMModelAssetCredentialIdentityDeclaration_ptr);
    *(v26 + 48) = sub_10000EE34(0, &qword_100020CB0, RMModelAssetCredentialSCEPDeclaration_ptr);
    sub_100008C3C(v4, v25, v26);
    v14 = v27;

    swift_setDeallocating();
    v28 = [v5 payloadCertificates];
    if (v28)
    {
      v29 = v28;
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v30 = sub_100016F30();
    }

    else
    {
      v30 = 0;
    }

    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_100017AC0;
    *(v31 + 32) = sub_10000EE34(0, &qword_100020CB8, RMModelAssetCredentialCertificateDeclaration_ptr);
    sub_100008C3C(v4, v30, v31);
    v15 = v32;

    result = swift_setDeallocating();
    a3 = v34;
    v11 = v33;
    goto LABEL_5;
  }
}

unint64_t sub_100009420(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = qword_100020AA0;

  if (v3 != -1)
  {
LABEL_31:
    swift_once();
  }

  v4 = sub_100016D40();
  sub_100006810(v4, qword_100021550);

  v5 = sub_100016D20();
  v6 = sub_100016FD0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45 = v8;
    *v7 = 136315138;
    sub_10000EE34(0, &qword_100020C88, RMModelAppManagedDeclaration_AppConfigDictionary_ptr);
    v9 = sub_100016D70();
    v11 = sub_10001070C(v9, v10, &v45);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "loading extension config: %s", v7, 0xCu);
    sub_100009990(v8);
  }

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v14 = v2 + 64;
  v15 = 1 << *(v2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v2 + 64);
  v18 = (v15 + 63) >> 6;
  v39 = v18;
  v40 = v2 + 64;
  v41 = v2;
  if (!v17)
  {
    while (1)
    {
LABEL_8:
      v19 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v19 >= v18)
      {
        break;
      }

      v17 = *(v14 + 8 * v19);
      ++v12;
      if (v17)
      {
        v12 = v19;
        goto LABEL_12;
      }
    }

    if (v13 >> 62)
    {
      v35 = sub_100017150();
    }

    else
    {
      v35 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35 <= 0)
    {

      return 0;
    }

    return v13;
  }

  while (1)
  {
LABEL_12:
    v20 = __clz(__rbit64(v17)) | (v12 << 6);
    v21 = (*(v2 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*(v2 + 56) + 8 * v20);
    v25 = objc_opt_self();

    v26 = v24;
    v27 = sub_100016DF0();
    v28 = [v25 newComposedIdentifier:v27];

    if (!v28)
    {

LABEL_26:
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1000170D0(31);

      v45 = 0xD00000000000001DLL;
      v46 = 0x8000000100019950;
      v48._countAndFlagsBits = v23;
      v48._object = v22;
      sub_100016E80(v48);

      v36 = v45;
      v13 = v46;
      sub_10000688C();
      swift_allocError();
      *v37 = v36;
      *(v37 + 8) = v13;
      *(v37 + 16) = 1;
      swift_willThrow();
      goto LABEL_28;
    }

    v29 = [v28 teamID];
    if (!v29)
    {

      goto LABEL_26;
    }

    v30 = v29;

    sub_100016E20();

    v31 = v26;
    sub_100009038(a1, v26, &v45);
    if (v44)
    {
      break;
    }

    v43 = v28;
    v32 = [v28 bundleID];
    sub_100016E20();

    v33 = objc_allocWithZone(sub_100016910());
    v34 = sub_100016900();
    sub_100016F10();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100016F50();
    }

    v17 &= v17 - 1;
    sub_100016F60();

    v13 = v47;
    v14 = v40;
    v2 = v41;
    v18 = v39;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  v26 = v28;
LABEL_28:

  return v13;
}

uint64_t sub_10000992C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009990(void *a1)
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

uint64_t sub_1000099E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009AA0;

  return sub_100005618(v2, v3, v5, v4);
}

uint64_t sub_100009AA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100009B98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000F090;

  return sub_10000FB98(v2, v3, v4);
}

uint64_t sub_100009C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000F090;

  return sub_10000FC84(a1, v4, v5, v6);
}

uint64_t sub_100009D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 304) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_100016970();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  sub_100001658(&qword_100020CF8, &qword_100017EC0);
  *(v6 + 80) = swift_task_alloc();
  sub_100016D10();
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_100016B70();
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  sub_100016A30();
  *(v6 + 128) = swift_task_alloc();
  v9 = sub_100016A50();
  *(v6 + 136) = v9;
  *(v6 + 144) = *(v9 - 8);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  v10 = sub_1000169F0();
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  sub_100001658(&qword_100020D00, &qword_100017EC8);
  *(v6 + 200) = swift_task_alloc();
  v11 = sub_100016AE0();
  *(v6 + 208) = v11;
  *(v6 + 216) = *(v11 - 8);
  *(v6 + 224) = swift_task_alloc();
  v12 = sub_100016A90();
  *(v6 + 232) = v12;
  *(v6 + 240) = *(v12 - 8);
  *(v6 + 248) = swift_task_alloc();
  v13 = sub_100016B60();
  *(v6 + 256) = v13;
  *(v6 + 264) = *(v13 - 8);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10000A110, 0, 0);
}

uint64_t sub_10000A110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  type metadata accessor for ManagedAppsAdapter(a1, a2, a3);
  sub_1000036B4(v4);
  sub_1000038D0(*(v3 + 16), *(v3 + 304), *(v3 + 224));
  v5 = [*(v3 + 16) payloadInstallBehavior];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 payloadVersion];

    if (v7)
    {
      [v7 unsignedLongLongValue];
    }
  }

  sub_100004020(*(v3 + 16));
  v8 = *(v3 + 200);
  v9 = *(v3 + 16);
  v10 = sub_100016B20();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_100016AA0();
  v11 = [v9 payloadIncludeInBackup];
  [v11 BOOLValue];

  sub_1000169E0();
  sub_1000042AC(v9);
  v12 = *(v3 + 48);
  v13 = *(v3 + 24);
  sub_100016A40();
  v14 = [v13 key];
  sub_100016E20();

  v15 = [v13 declarationIdentifier];
  sub_100016E20();

  sub_1000074B0(v12);
  v16 = *(v3 + 184);
  v17 = *(v3 + 192);
  v18 = *(v3 + 168);
  v19 = *(v3 + 176);
  v20 = *(v3 + 152);
  v33 = *(v3 + 160);
  v21 = *(v3 + 144);
  v22 = *(v3 + 88);
  v32 = *(v3 + 136);
  v34 = *(v3 + 16);
  (*(*(v3 + 264) + 16))();
  (*(v19 + 16))(v16, v17, v18);
  (*(v21 + 16))(v20, v33, v32);

  sub_100016D00();
  sub_100016A60();
  v23 = [v34 payloadAttributes];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 serializeWithType:0];
    sub_100016D60();

    sub_1000169C0();
    v26 = *(v3 + 80);
    v27 = sub_1000169B0();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    sub_1000169D0();
  }

  v28 = *(v3 + 48);
  (*(*(v3 + 104) + 16))(*(v3 + 112), *(v3 + 120), *(v3 + 96));
  sub_100016950();
  v29 = sub_1000074B0(v28);
  v30 = swift_task_alloc();
  *(v3 + 288) = v30;
  *v30 = v3;
  v30[1] = sub_10000A81C;

  return DDMAddOrUpdateManagedAppRequest.send(to:)(v29 & 1);
}

uint64_t sub_10000A81C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_10000AAF4;
  }

  else
  {
    v2 = sub_10000A930;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000A930()
{
  v1 = v0[35];
  v2 = v0[33];
  v14 = v0[32];
  v13 = v0[24];
  v3 = v0[22];
  v4 = v0[20];
  v12 = v0[21];
  v5 = v0[18];
  v6 = v0[17];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  (*(v0[8] + 8))();
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v13, v12);
  (*(v2 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000AAF4()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  (*(v0[33] + 8))(v0[35], v0[32]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000ACB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10000ACD4, 0, 0);
}

uint64_t sub_10000ACD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = v3;
  v4 = *(v3 + 16);
  v5 = objc_opt_self();
  v6 = sub_100016DF0();
  v7 = [v5 newDeclarationKeyWithSubscriberIdentifier:v6 reference:v4];
  *(v3 + 40) = v7;

  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v8 = sub_100016D40();
  sub_100006810(v8, qword_100021550);
  v9 = v7;
  v10 = sub_100016D20();
  v11 = sub_100016FF0();

  v51 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v52[0] = v13;
    *v12 = 136446210;
    v14 = [v9 key];
    v15 = sub_100016E20();
    v17 = v16;

    v18 = sub_10001070C(v15, v17, v52);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Applying configuration with key: %{public}s", v12, 0xCu);
    sub_100009990(v13);
  }

  v19 = [*(v3 + 16) declaration];
  *(v3 + 48) = v19;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  *(v3 + 56) = v20;
  if (v20)
  {
    v21 = v20;
    v22 = v19;
    v23 = sub_100016D20();
    v24 = sub_100016FF0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v52[0] = v26;
      *v25 = 136446210;
      v27 = sub_100007C28(v21);
      v29 = sub_10001070C(v27, v28, v52);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "App: %{public}s", v25, 0xCu);
      sub_100009990(v26);
    }

    v30 = v22;
    v31 = sub_100016D20();
    v32 = sub_100016FF0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v52[0] = v34;
      *v33 = 136446210;
      v35 = sub_100007CF4(v21);
      v37 = sub_10001070C(v35, v36, v52);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Declaration:\n%{public}s", v33, 0xCu);
      sub_100009990(v34);
    }

    v38 = swift_task_alloc();
    *(v3 + 64) = v38;
    *v38 = v3;
    v38[1] = sub_10000B220;
    v39 = *(v3 + 16);

    return sub_1000058C0(v39, v21, v51);
  }

  else
  {
    v41 = *(v3 + 16);

    strcpy(v52, "Wrong type: ");
    BYTE5(v52[1]) = 0;
    HIWORD(v52[1]) = -5120;
    v42 = [v41 declaration];
    v43 = [v42 declarationType];

    v44 = sub_100016E20();
    v46 = v45;

    v55._countAndFlagsBits = v44;
    v55._object = v46;
    sub_100016E80(v55);

    v47 = v52[0];
    v48 = v52[1];
    sub_10000688C();
    swift_allocError();
    *v49 = v47;
    *(v49 + 8) = v48;
    *(v49 + 16) = 1;
    swift_willThrow();

    v50 = *(v3 + 8);

    return v50();
  }
}

uint64_t sub_10000B220()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10000B8D4;
  }

  else
  {
    v2 = sub_10000B334;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000B334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = objc_opt_self();
  v6 = [v4 store];
  LODWORD(v5) = [v5 isPreEnrollmentErSSOStore:v6];

  if (v5)
  {
    v7 = [objc_opt_self() ESSOTestModeEnabled];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(v3 + 16) store];
  v9 = [v8 personaIdentifier];

  if (v9)
  {
    v10 = sub_100016E20();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v3 + 80) = v12;
  v13 = swift_task_alloc();
  *(v3 + 88) = v13;
  *v13 = v3;
  v13[1] = sub_10000B4CC;
  v14 = *(v3 + 56);
  v15 = *(v3 + 40);
  v16 = *(v3 + 24);

  return sub_100009D24(v14, v15, v10, v12, v16, v7);
}

uint64_t sub_10000B4CC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10000B670;
  }

  else
  {
    v2 = sub_10000B600;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000B600()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(_swiftEmptyArrayStorage);
}

uint64_t sub_10000B670()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = [*(v0 + 16) store];
  v2 = [v1 scope];

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_10000B740;
  v4 = *(v0 + 40);

  return sub_1000061E4(v4, v2);
}

uint64_t sub_10000B740()
{

  if (v0)
  {

    v1 = sub_10000F06C;
  }

  else
  {
    v1 = sub_10000B858;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10000B858()
{
  v1 = *(v0 + 40);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000B8D4()
{
  *(v0 + 104) = *(v0 + 72);
  v1 = [*(v0 + 16) store];
  v2 = [v1 scope];

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_10000B740;
  v4 = *(v0 + 40);

  return sub_1000061E4(v4, v2);
}

id sub_10000B9A4(void *a1, char *a2)
{
  v262 = a1;
  v3 = sub_100016DC0();
  __chkstk_darwin(v3 - 8);
  v261 = &v244 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100016800();
  __chkstk_darwin(v5 - 8);
  v7 = &v244 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100016DE0();
  __chkstk_darwin(v8 - 8);
  v10 = &v244 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001658(&qword_100020CD0, &qword_100017E58);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = (&v244 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v12);
  v17 = &v244 - v16;
  __chkstk_darwin(v15);
  v19 = &v244 - v18;
  sub_10000E950(a2, &v244 - v18);
  v20 = sub_100016C90();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v254 = v21 + 48;
  v253 = v22;
  v23 = v22(v19, 1, v20);
  v255 = v20;
  v250 = v21;
  if (v23 == 1)
  {
    sub_10000EC38(v19, &qword_100020CD0, &qword_100017E58);
    sub_100016D80();
    sub_1000167F0();
    v24 = sub_100016E30();
    v26 = v25;
  }

  else
  {
    v24 = sub_100016C20();
    v26 = v27;
    (*(v21 + 8))(v19, v20);
  }

  v28 = v7;
  v265 = sub_100001658(&qword_100020CD8, &unk_100017E60);
  v29 = swift_allocObject();
  v264 = xmmword_100017DB0;
  *(v29 + 16) = xmmword_100017DB0;
  sub_100016D80();
  sub_1000167F0();
  v263 = v10;
  *(v29 + 32) = sub_100016E30();
  *(v29 + 40) = v30;
  v248 = v24;
  *(v29 + 48) = v24;
  *(v29 + 56) = v26;

  v31 = sub_100010400(0, 1, 1, _swiftEmptyArrayStorage);
  v33 = v31[2];
  v32 = v31[3];
  v34 = (v33 + 1);
  if (v33 >= v32 >> 1)
  {
    goto LABEL_163;
  }

  while (1)
  {
    v35 = v262;
    v249 = v26;
    v31[2] = v34;
    v31[v33 + 4] = v29;
    v36 = swift_allocObject();
    *(v36 + 16) = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v36 + 32) = sub_100016E30();
    *(v36 + 40) = v37;
    sub_10000E950(a2, v17);
    v38 = v255;
    if (v253(v17, 1, v255) == 1)
    {
      sub_10000EC38(v17, &qword_100020CD0, &qword_100017E58);
      sub_100016D80();
      sub_1000167F0();
      v39 = sub_100016E30();
      v41 = v40;
    }

    else
    {
      v39 = sub_100016C80();
      v41 = v42;
      (*(v250 + 8))(v17, v38);
    }

    *(v36 + 48) = v39;
    *(v36 + 56) = v41;
    v44 = v31[2];
    v43 = v31[3];
    if (v44 >= v43 >> 1)
    {
      v31 = sub_100010400((v43 > 1), v44 + 1, 1, v31);
    }

    v31[2] = v44 + 1;
    v31[v44 + 4] = v36;
    sub_100016D80();
    sub_1000167F0();
    v252 = sub_100016E30();
    v46 = v45;
    v47 = [v35 payloadAppStoreID];
    v266 = v28;
    if (v47)
    {
      v48 = v47;
      v49 = sub_100016E20();
      v51 = v50;

      v52 = swift_allocObject();
      *(v52 + 16) = v264;
      goto LABEL_14;
    }

    v53 = [v35 payloadManifestURL];
    if (v53)
    {
      v54 = v53;

      v49 = sub_100016E20();
      v51 = v55;

      sub_100016D80();
      sub_1000167F0();
      v252 = sub_100016E30();
      v46 = v56;
      v52 = swift_allocObject();
      *(v52 + 16) = v264;
LABEL_14:
      sub_100016D80();
      sub_1000167F0();
      *(v52 + 32) = sub_100016E30();
      *(v52 + 40) = v57;
      *(v52 + 48) = v49;
      *(v52 + 56) = v51;
      v59 = v31[2];
      v58 = v31[3];
      v60 = v59 + 1;
      if (v59 < v58 >> 1)
      {
LABEL_15:
        v31[2] = v60;
        v31[v59 + 4] = v52;
        goto LABEL_16;
      }

      goto LABEL_168;
    }

    v231 = [v35 payloadAppComposedIdentifier];
    if (v231)
    {
      v232 = v231;
      v245 = a2;

      v233 = sub_100016E20();
      v235 = v234;

      sub_100016D80();
      sub_1000167F0();
      v252 = sub_100016E30();
      v46 = v236;
      v52 = swift_allocObject();
      *(v52 + 16) = v264;
      sub_100016D80();
      sub_1000167F0();
      *(v52 + 32) = sub_100016E30();
      *(v52 + 40) = v237;
      *(v52 + 48) = v233;
      *(v52 + 56) = v235;
      v59 = v31[2];
      v58 = v31[3];
      v60 = v59 + 1;
      if (v59 < v58 >> 1)
      {
        a2 = v245;
        goto LABEL_15;
      }

      a2 = v245;
LABEL_168:
      v31 = sub_100010400((v58 > 1), v60, 1, v31);
      goto LABEL_15;
    }

LABEL_16:
    v61 = [v35 payloadInstallBehavior];
    v247 = v46;
    if (!v61)
    {
      sub_100016E20();
LABEL_22:

      goto LABEL_24;
    }

    v62 = v61;
    v63 = [v61 payloadInstall];

    v64 = sub_100016E20();
    v66 = v65;

    v67 = sub_100016E20();
    if (!v66)
    {
      goto LABEL_22;
    }

    if (v64 == v67 && v66 == v68)
    {
    }

    else
    {
      sub_1000171B0();
    }

LABEL_24:
    v26 = v263;
    sub_100016D80();
    sub_1000167F0();
    v69 = sub_100016E30();
    v71 = v70;
    v72 = swift_allocObject();
    *(v72 + 16) = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v72 + 32) = sub_100016E30();
    *(v72 + 40) = v73;
    *(v72 + 48) = v69;
    *(v72 + 56) = v71;
    v75 = v31[2];
    v74 = v31[3];
    if (v75 >= v74 >> 1)
    {
      v31 = sub_100010400((v74 > 1), v75 + 1, 1, v31);
    }

    v31[2] = v75 + 1;
    v31[v75 + 4] = v72;
    v76 = [v35 payloadInstallBehavior];
    if (v76)
    {
      v77 = v76;
      v78 = [v76 payloadVersion];

      if (v78)
      {
        v79 = swift_allocObject();
        *(v79 + 16) = v264;
        sub_100016D80();
        sub_1000167F0();
        *(v79 + 32) = sub_100016E30();
        *(v79 + 40) = v80;
        v267[0] = [v78 unsignedLongLongValue];
        *(v79 + 48) = sub_1000171A0();
        *(v79 + 56) = v81;
        v83 = v31[2];
        v82 = v31[3];
        if (v83 >= v82 >> 1)
        {
          v31 = sub_100010400((v82 > 1), v83 + 1, 1, v31);
        }

        v31[2] = v83 + 1;
        v31[v83 + 4] = v79;
      }
    }

    v84 = [v35 payloadInstallBehavior];
    if (!v84)
    {
      v28 = v266;
      goto LABEL_43;
    }

    v85 = v84;
    v86 = [v84 payloadAllowDownloadsOverCellular];

    v87 = sub_100016E20();
    v89 = v88;

    if (v87 == sub_100016E20() && v89 == v90)
    {

LABEL_37:
      v28 = v266;

      goto LABEL_38;
    }

    v91 = sub_1000171B0();

    if (v91)
    {
      goto LABEL_37;
    }

    if (v87 == sub_100016E20() && v89 == v228)
    {

LABEL_146:

      sub_100016D80();
      v28 = v266;
      goto LABEL_39;
    }

    v238 = sub_1000171B0();

    if (v238)
    {
      goto LABEL_146;
    }

    if (v87 == sub_100016E20() && v89 == v240)
    {

      v28 = v266;
LABEL_157:
      sub_100016D80();
      sub_1000167F0();
      goto LABEL_40;
    }

    v242 = sub_1000171B0();

    v28 = v266;
    if (v242)
    {
      goto LABEL_157;
    }

LABEL_38:
    sub_100016D80();
LABEL_39:
    sub_1000167F0();
LABEL_40:
    v92 = sub_100016E30();
    v94 = v93;
    v26 = swift_allocObject();
    v26[1] = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v26 + 4) = sub_100016E30();
    *(v26 + 5) = v95;
    *(v26 + 6) = v92;
    *(v26 + 7) = v94;
    v97 = v31[2];
    v96 = v31[3];
    if (v97 >= v96 >> 1)
    {
      v31 = sub_100010400((v96 > 1), v97 + 1, 1, v31);
    }

    v31[2] = v97 + 1;
    v31[v97 + 4] = v26;
LABEL_43:
    v98 = [v35 payloadUpdateBehavior];
    if (!v98)
    {
      goto LABEL_55;
    }

    v99 = v98;
    v100 = [v98 payloadAutomaticAppUpdates];

    v101 = sub_100016E20();
    v103 = v102;

    v104 = sub_100016E20();
    v26 = v105;
    if (v101 == v104 && v103 == v105)
    {
    }

    else
    {
      v106 = sub_1000171B0();

      if ((v106 & 1) == 0)
      {
        v229 = sub_100016E20();
        v26 = v230;
        if (v101 == v229 && v103 == v230)
        {
        }

        else
        {
          v239 = sub_1000171B0();

          if ((v239 & 1) == 0)
          {
            if (v101 == sub_100016E20() && v103 == v241)
            {

              v28 = v266;
LABEL_159:
              sub_100016D80();
              sub_1000167F0();
              goto LABEL_52;
            }

            v243 = sub_1000171B0();

            v28 = v266;
            if (v243)
            {
              goto LABEL_159;
            }

            goto LABEL_50;
          }

          v26 = v103;
        }

        sub_100016D80();
        v28 = v266;
        goto LABEL_51;
      }

      v26 = v103;
      v28 = v266;
    }

LABEL_50:
    sub_100016D80();
LABEL_51:
    sub_1000167F0();
LABEL_52:
    v107 = sub_100016E30();
    v109 = v108;
    v110 = swift_allocObject();
    *(v110 + 16) = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v110 + 32) = sub_100016E30();
    *(v110 + 40) = v111;
    *(v110 + 48) = v107;
    *(v110 + 56) = v109;
    v113 = v31[2];
    v112 = v31[3];
    if (v113 >= v112 >> 1)
    {
      v31 = sub_100010400((v112 > 1), v113 + 1, 1, v31);
    }

    v31[2] = v113 + 1;
    v31[v113 + 4] = v110;
LABEL_55:
    sub_100016D80();
    sub_1000167F0();
    v246 = sub_100016E30();
    v251 = v114;
    sub_100016D80();
    sub_1000167F0();
    v115 = sub_100016E30();
    v17 = v116;
    if ([objc_opt_self() isSharediPad])
    {
    }

    else
    {
      v117 = swift_allocObject();
      *(v117 + 16) = v264;
      sub_100016D80();
      sub_1000167F0();
      *(v117 + 32) = sub_100016E30();
      *(v117 + 40) = v118;
      v26 = [v35 payloadIncludeInBackup];
      LOBYTE(v267[0]) = 2;
      result = sub_100016F70();
      v120 = v267[0];
      if (LOBYTE(v267[0]) == 2)
      {
        __break(1u);
        return result;
      }

      if (v120)
      {

        v17 = v251;

        v115 = v246;
      }

      *(v117 + 48) = v115;
      *(v117 + 56) = v17;
      v122 = v31[2];
      v121 = v31[3];
      v17 = v122 + 1;
      if (v122 >= v121 >> 1)
      {
        v31 = sub_100010400((v121 > 1), v122 + 1, 1, v31);
      }

      v31[2] = v17;
      v31[v122 + 4] = v117;
    }

    v123 = [v35 payloadAttributes];
    if (!v123)
    {
      goto LABEL_105;
    }

    v124 = v123;
    sub_100016D80();
    sub_1000167F0();
    v257 = sub_100016E30();
    v258 = v125;
    v126 = [v124 payloadAssociatedDomains];
    v256 = v124;
    if (!v126)
    {
      goto LABEL_75;
    }

    v127 = v126;
    v128 = sub_100016F30();

    v33 = *(v128 + 16);
    v245 = a2;
    v244 = v14;
    if (!v33)
    {
      break;
    }

    v34 = 0;
    v32 = "SOCIATED-DOMAIN ";
    v259 = "SOCIATED-DOMAIN ";
    v260 = "SOCIATED-DOMAINS-DOWNLOAD";
    v14 = (v128 + 40);
    while (1)
    {
      v29 = *(v128 + 16);
      if (v34 >= v29)
      {
        break;
      }

      v130 = *(v14 - 1);
      v129 = *v14;
      ++v34;
      v26 = swift_allocObject();
      v26[1] = v264;

      if (v29 == 1)
      {
        a2 = v263;
        sub_100016D80();
      }

      else
      {
        sub_100016DB0();
        v268._countAndFlagsBits = 0xD000000000000020;
        v268._object = (v260 | 0x8000000000000000);
        sub_100016DA0(v268);
        v267[0] = v34;
        sub_100016D90();
        v269._countAndFlagsBits = 0;
        v269._object = 0xE000000000000000;
        sub_100016DA0(v269);
        a2 = v263;
        sub_100016DD0();
      }

      sub_1000167F0();
      *(v26 + 4) = sub_100016E30();
      *(v26 + 5) = v131;
      *(v26 + 6) = v130;
      *(v26 + 7) = v129;
      v17 = v31[2];
      v132 = v31[3];
      v28 = v266;
      if (v17 >= v132 >> 1)
      {
        v31 = sub_100010400((v132 > 1), v17 + 1, 1, v31);
      }

      v31[2] = v17 + 1;
      v32 = &v31[v17];
      *(v32 + 32) = v26;
      v14 += 2;
      if (v33 == v34)
      {
        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_163:
    v31 = sub_100010400((v32 > 1), v34, 1, v31);
  }

LABEL_74:

  a2 = v245;
  v14 = v244;
  v124 = v256;
LABEL_75:
  v133 = [v124 payloadAssociatedDomainsEnableDirectDownloads];
  v134 = [v133 BOOLValue];

  if (v134)
  {
    v135 = swift_allocObject();
    *(v135 + 16) = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v135 + 32) = sub_100016E30();
    *(v135 + 40) = v136;
    v137 = v258;
    *(v135 + 48) = v257;
    *(v135 + 56) = v137;
    v138 = v31[2];
    v139 = v31[3];

    if (v138 >= v139 >> 1)
    {
      v31 = sub_100010400((v139 > 1), v138 + 1, 1, v31);
    }

    v31[2] = v138 + 1;
    v31[v138 + 4] = v135;
    v124 = v256;
  }

  v140 = [v124 payloadCellularSliceUUID];
  if (v140)
  {

    v141 = swift_allocObject();
    *(v141 + 16) = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v141 + 32) = sub_100016E30();
    *(v141 + 40) = v142;
    v143 = v258;
    *(v141 + 48) = v257;
    *(v141 + 56) = v143;
    v144 = v31[2];
    v145 = v31[3];

    if (v144 >= v145 >> 1)
    {
      v31 = sub_100010400((v145 > 1), v144 + 1, 1, v31);
    }

    v31[2] = v144 + 1;
    v31[v144 + 4] = v141;
    v124 = v256;
  }

  v146 = [v124 payloadContentFilterUUID];
  if (v146)
  {

    v147 = swift_allocObject();
    *(v147 + 16) = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v147 + 32) = sub_100016E30();
    *(v147 + 40) = v148;
    v149 = v258;
    *(v147 + 48) = v257;
    *(v147 + 56) = v149;
    v150 = v31[2];
    v151 = v31[3];

    if (v150 >= v151 >> 1)
    {
      v31 = sub_100010400((v151 > 1), v150 + 1, 1, v31);
    }

    v31[2] = v150 + 1;
    v31[v150 + 4] = v147;
    v124 = v256;
  }

  v152 = [v124 payloadDNSProxyUUID];
  if (v152)
  {

    v153 = swift_allocObject();
    *(v153 + 16) = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v153 + 32) = sub_100016E30();
    *(v153 + 40) = v154;
    v155 = v258;
    *(v153 + 48) = v257;
    *(v153 + 56) = v155;
    v156 = v31[2];
    v157 = v31[3];

    if (v156 >= v157 >> 1)
    {
      v31 = sub_100010400((v157 > 1), v156 + 1, 1, v31);
    }

    v31[2] = v156 + 1;
    v31[v156 + 4] = v153;
    v124 = v256;
  }

  v158 = [v124 payloadRelayUUID];
  if (v158)
  {

    v159 = swift_allocObject();
    *(v159 + 16) = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v159 + 32) = sub_100016E30();
    *(v159 + 40) = v160;
    v161 = v258;
    *(v159 + 48) = v257;
    *(v159 + 56) = v161;
    v162 = v31[2];
    v163 = v31[3];

    if (v162 >= v163 >> 1)
    {
      v31 = sub_100010400((v163 > 1), v162 + 1, 1, v31);
    }

    v31[2] = v162 + 1;
    v31[v162 + 4] = v159;
    v124 = v256;
  }

  v164 = [v124 payloadTapToPayScreenLock];
  v165 = [v164 BOOLValue];

  if (v165)
  {
    v166 = swift_allocObject();
    *(v166 + 16) = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v166 + 32) = sub_100016E30();
    *(v166 + 40) = v167;
    v168 = v258;
    *(v166 + 48) = v257;
    *(v166 + 56) = v168;
    v169 = v31[2];
    v170 = v31[3];

    if (v169 >= v170 >> 1)
    {
      v31 = sub_100010400((v170 > 1), v169 + 1, 1, v31);
    }

    v31[2] = v169 + 1;
    v31[v169 + 4] = v166;
    v124 = v256;
  }

  v171 = [v124 payloadVPNUUID];
  if (v171)
  {

    v172 = swift_allocObject();
    *(v172 + 16) = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v172 + 32) = sub_100016E30();
    *(v172 + 40) = v173;
    v174 = v258;
    *(v172 + 48) = v257;
    *(v172 + 56) = v174;
    v176 = v31[2];
    v175 = v31[3];
    if (v176 >= v175 >> 1)
    {
      v31 = sub_100010400((v175 > 1), v176 + 1, 1, v31);
    }

    v31[2] = v176 + 1;
    v31[v176 + 4] = v172;
  }

  else
  {
  }

LABEL_105:
  v177 = [v262 payloadAppConfig];
  if (v177 && (v178 = v177, v179 = [v177 payloadDataAssetReference], v178, v179))
  {

    v180 = swift_allocObject();
    *(v180 + 16) = v264;
    sub_100016D80();
    sub_1000167F0();
    *(v180 + 32) = sub_100016E30();
    *(v180 + 40) = v181;
    v182 = v251;
    *(v180 + 48) = v246;
    *(v180 + 56) = v182;
    v184 = v31[2];
    v183 = v31[3];
    if (v184 >= v183 >> 1)
    {
      v31 = sub_100010400((v183 > 1), v184 + 1, 1, v31);
    }

    v31[2] = v184 + 1;
    v31[v184 + 4] = v180;
  }

  else
  {
  }

  v185 = [v262 payloadAppConfig];
  if (v185)
  {
    v186 = v185;
    v187 = [v185 payloadPasswords];

    if (v187)
    {
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v188 = sub_100016F30();

      v189 = swift_allocObject();
      *(v189 + 16) = v264;
      sub_100016D80();
      sub_1000167F0();
      *(v189 + 32) = sub_100016E30();
      *(v189 + 40) = v190;
      if (v188 >> 62)
      {
        v191 = sub_100017150();
      }

      else
      {
        v191 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v267[0] = v191;
      *(v189 + 48) = sub_1000171A0();
      *(v189 + 56) = v192;
      v194 = v31[2];
      v193 = v31[3];
      if (v194 >= v193 >> 1)
      {
        v31 = sub_100010400((v193 > 1), v194 + 1, 1, v31);
      }

      v31[2] = v194 + 1;
      v31[v194 + 4] = v189;
    }
  }

  v195 = [v262 payloadAppConfig];
  if (v195)
  {
    v196 = v195;
    v197 = [v195 payloadIdentities];

    if (v197)
    {
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v198 = sub_100016F30();

      v199 = swift_allocObject();
      *(v199 + 16) = v264;
      sub_100016D80();
      sub_1000167F0();
      *(v199 + 32) = sub_100016E30();
      *(v199 + 40) = v200;
      if (v198 >> 62)
      {
        v201 = sub_100017150();
      }

      else
      {
        v201 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v267[0] = v201;
      *(v199 + 48) = sub_1000171A0();
      *(v199 + 56) = v202;
      v204 = v31[2];
      v203 = v31[3];
      if (v204 >= v203 >> 1)
      {
        v31 = sub_100010400((v203 > 1), v204 + 1, 1, v31);
      }

      v31[2] = v204 + 1;
      v31[v204 + 4] = v199;
    }
  }

  v205 = [v262 payloadAppConfig];
  if (v205)
  {
    v206 = v205;
    v207 = [v205 payloadCertificates];

    if (v207)
    {
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v208 = sub_100016F30();

      v209 = swift_allocObject();
      *(v209 + 16) = v264;
      sub_100016D80();
      sub_1000167F0();
      *(v209 + 32) = sub_100016E30();
      *(v209 + 40) = v210;
      if (v208 >> 62)
      {
        v211 = sub_100017150();
      }

      else
      {
        v211 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v267[0] = v211;
      *(v209 + 48) = sub_1000171A0();
      *(v209 + 56) = v212;
      v214 = v31[2];
      v213 = v31[3];
      if (v214 >= v213 >> 1)
      {
        v31 = sub_100010400((v213 > 1), v214 + 1, 1, v31);
      }

      v31[2] = v214 + 1;
      v31[v214 + 4] = v209;
    }
  }

  v215 = sub_100012DDC(_swiftEmptyArrayStorage);
  sub_10000E950(a2, v14);
  v216 = v255;
  if (v253(v14, 1, v255) == 1)
  {
    sub_10000EC38(v14, &qword_100020CD0, &qword_100017E58);
  }

  else
  {
    v217 = sub_100016C80();
    v219 = v218;
    (*(v250 + 8))(v14, v216);
    v220 = RMUIConfigurationUIHiddenDetailAppBundleID;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v267[0] = v215;
    sub_10000733C(v217, v219, v220, isUniquelyReferenced_nonNull_native);
  }

  v222 = objc_opt_self();
  v223 = sub_100016DF0();

  v224 = sub_100016DF0();

  sub_100001658(&unk_100020CE0, &qword_100018260);
  isa = sub_100016F20().super.isa;

  type metadata accessor for RMUIConfigurationUIHiddenDetail(0);
  sub_10000E9C0();
  v226 = sub_100016D50().super.isa;

  v227 = [v222 configurationUIWithTitle:v223 description:v224 details:isa hiddenDetails:v226];

  return v227;
}

uint64_t sub_10000DDC4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100001658(&qword_100020CD0, &qword_100017E58);
  v2[4] = swift_task_alloc();
  v3 = sub_100016CF0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10000DEBC, 0, 0);
}

uint64_t sub_10000DEBC()
{
  v32 = v0;
  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_100016D40();
  *(v0 + 64) = sub_100006810(v2, qword_100021550);
  v3 = v1;
  v4 = sub_100016D20();
  v5 = sub_100016FD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446210;
    v9 = [v6 declaration];
    v10 = [v9 declarationIdentifier];

    v11 = sub_100016E20();
    v13 = v12;

    v14 = sub_10001070C(v11, v13, &v31);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Get configuration UI for: %{public}s", v7, 0xCu);
    sub_100009990(v8);
  }

  v15 = [*(v0 + 16) declaration];
  *(v0 + 72) = v15;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  *(v0 + 80) = v16;
  if (v16)
  {
    v18 = *(v0 + 16);
    v17 = *(v0 + 24);
    v19 = objc_opt_self();
    v20 = sub_100016DF0();
    v21 = [v19 newDeclarationKeyWithSubscriberIdentifier:v20 reference:v18];
    *(v0 + 88) = v21;

    v22 = [v21 key];
    sub_100016E20();

    sub_100016CD0();
    v29 = sub_1000074B0(v17);
    v30 = swift_task_alloc();
    *(v0 + 96) = v30;
    *v30 = v0;
    v30[1] = sub_10000E3D0;

    return DDMDeclarationStatusRequest.send(to:)(v29 & 1);
  }

  else
  {

    v23 = sub_100016D20();
    v24 = sub_100016FE0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Invalid configuration type in configurationUI", v25, 2u);
    }

    sub_10000688C();
    swift_allocError();
    *v26 = 0xD00000000000002DLL;
    *(v26 + 8) = 0x8000000100019970;
    *(v26 + 16) = 1;
    swift_willThrow();

    v27 = *(v0 + 8);

    return v27(0);
  }
}

uint64_t sub_10000E3D0(uint64_t a1)
{
  *(*v2 + 104) = a1;

  if (v1)
  {

    v3 = sub_10000E7DC;
  }

  else
  {
    v3 = sub_10000E4EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000E4EC()
{
  v1 = *(v0 + 104);
  if (*(v1 + 16) == 1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 88);

  v3 = sub_100016D20();
  v4 = sub_100016FE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543618;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v1 + 16);
    v8 = v5;

    _os_log_impl(&_mh_execute_header, v3, v4, "Invalid status returned for: %{public}@ - count: %ld", v6, 0x16u);
    sub_10000EC38(v7, &qword_100020F40, &qword_100017E10);
  }

  else
  {
  }

  v9 = *(v1 + 16);
  v1 = *(v0 + 104);
  if (v9)
  {
LABEL_6:
    v10 = *(v0 + 32);
    v11 = sub_100016C90();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v10, v1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

    v13 = 0;
  }

  else
  {

    v11 = sub_100016C90();
    v12 = *(v11 - 8);
    v13 = 1;
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  v16 = *(v0 + 72);
  v18 = *(v0 + 48);
  v17 = *(v0 + 56);
  v20 = *(v0 + 32);
  v19 = *(v0 + 40);
  (*(v12 + 56))(v20, v13, 1, v11);
  v21 = sub_10000B9A4(v14, v20);

  sub_10000EC38(v20, &qword_100020CD0, &qword_100017E58);
  (*(v18 + 8))(v17, v19);

  v22 = *(v0 + 8);

  return v22(1, v21);
}

uint64_t sub_10000E7DC(uint64_t a1)
{
  v2 = sub_100016D20();
  v3 = sub_100016FE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get app status for configurationUI", v4, 2u);
  }

  v5 = v1[11];
  v6 = v1[9];
  v8 = v1[6];
  v7 = v1[7];
  v9 = v1[5];

  sub_10000688C();
  swift_allocError();
  *v10 = 0xD00000000000002CLL;
  *(v10 + 8) = 0x80000001000199D0;
  *(v10 + 16) = 1;
  swift_willThrow();

  (*(v8 + 8))(v7, v9);

  v11 = v1[1];

  return v11(0);
}

uint64_t sub_10000E950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001658(&qword_100020CD0, &qword_100017E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000E9C0()
{
  result = qword_100020AE0;
  if (!qword_100020AE0)
  {
    type metadata accessor for RMUIConfigurationUIHiddenDetail(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020AE0);
  }

  return result;
}

uint64_t sub_10000EA18()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000EA60()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000F090;

  return sub_10000518C(v2, v3, v5, v4);
}

uint64_t sub_10000EB20()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000EB70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000F090;

  return sub_1000033EC(v2, v3, v4, v5, v6);
}

uint64_t sub_10000EC38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001658(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EC98()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000ECD8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000F090;

  return sub_100003008(v2, v3);
}

uint64_t sub_10000ED8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10000EDCC()
{
  result = qword_100020D18;
  if (!qword_100020D18)
  {
    sub_10000EE34(255, &qword_100020D10, RMStoreDeclarationKey_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020D18);
  }

  return result;
}

uint64_t sub_10000EE34(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000EE7C(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 sub_10000EE98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000EEAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000EEF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_10000EF3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10000EF6C()
{
  result = qword_100020D30;
  if (!qword_100020D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020D30);
  }

  return result;
}

unint64_t sub_10000EFC4()
{
  result = qword_100020D38;
  if (!qword_100020D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020D38);
  }

  return result;
}

unint64_t sub_10000F018()
{
  result = qword_100020D40;
  if (!qword_100020D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020D40);
  }

  return result;
}

id sub_10000F238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for ManagedAppsApplicator(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

Swift::Int sub_10000F290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001658(&unk_100020EA0, &unk_100018160);
    v3 = sub_1000170B0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_100017220();

      sub_100016E70();
      result = sub_100017230();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1000171B0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10000F44C()
{
  v0 = sub_100016D40();
  sub_1000068E0(v0, qword_100021568);
  v1 = sub_100006810(v0, qword_100021568);
  type metadata accessor for ManagedAppsStatus(v1, v2, v3);
  sub_100001658(&unk_100020FA8, &unk_100018240);
  sub_100016E40();
  return sub_100016D30();
}

uint64_t sub_10000F71C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_100016F30();
  v4[5] = v7;
  v8 = a2;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10000F814;

  return sub_1000157A4(v7, v8);
}

uint64_t sub_10000F814(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1000167C0();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    isa = sub_100016D50().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id sub_10000FA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for ManagedAppsStatus(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10000FA88()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FAD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009AA0;

  return sub_10000F71C(v2, v3, v5, v4);
}

uint64_t sub_10000FB98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000F090;

  return v6();
}

uint64_t sub_10000FC84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100009AA0;

  return v7();
}

uint64_t sub_10000FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001658(&qword_100020CC8, &qword_100017E28);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100016700(a3, v23 - v10, &qword_100020CC8, &qword_100017E28);
  v12 = sub_100016FA0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000EC38(v11, &qword_100020CC8, &qword_100017E28);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100016F90();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100016F80();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_100016E50() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000EC38(a3, &qword_100020CC8, &qword_100017E28);

    return v21;
  }

LABEL_8:
  sub_10000EC38(a3, &qword_100020CC8, &qword_100017E28);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100010068(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100010160;

  return v6(a1);
}

uint64_t sub_100010160()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100010258()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010290(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F090;

  return sub_100010068(a1, v4);
}

uint64_t sub_100010348(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009AA0;

  return sub_100010068(a1, v4);
}

void *sub_100010400(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001658(&qword_100020FC0, &qword_100018258);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001658(&unk_100020CE0, &qword_100018260);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100010534(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001658(&qword_100020F58, &qword_100018200);
  v10 = *(sub_100016C90() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100016C90() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_10001070C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000107D8(v11, 0, 0, 1, a1, a2);
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
    sub_1000166A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009990(v11);
  return v7;
}

unint64_t sub_1000107D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000108E4(a5, a6);
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
    result = sub_1000170F0();
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

void *sub_1000108E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100010930(a1, a2);
  sub_100010A60(&off_10001CD58);
  return v3;
}

void *sub_100010930(uint64_t a1, unint64_t a2)
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

  v6 = sub_100010B4C(v5, 0);
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

  result = sub_1000170F0();
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
        v10 = sub_100016E90();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100010B4C(v10, 0);
        result = sub_1000170C0();
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

uint64_t sub_100010A60(uint64_t result)
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

  result = sub_100010BC0(result, v11, 1, v3);
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

void *sub_100010B4C(uint64_t a1, uint64_t a2)
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

  sub_100001658(&qword_100020F98, &qword_100018230);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100010BC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001658(&qword_100020F98, &qword_100018230);
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

uint64_t sub_100010CB4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_100017060();

    if (v9)
    {

      sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_100017050();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10001103C(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10001122C(v20 + 1);
    }

    v18 = v8;
    sub_1000116B4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
  v11 = sub_100017000(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100011738(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100017010();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100010EEC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100017220();
  sub_100016E70();
  v8 = sub_100017230();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000171B0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000118A8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_10001103C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001658(&qword_100020FC8, &qword_100018268);
    v2 = sub_1000170A0();
    v15 = v2;
    sub_100017040();
    if (sub_100017070())
    {
      sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10001122C(v9 + 1);
        }

        v2 = v15;
        result = sub_100017000(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_100017070());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10001122C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001658(&qword_100020FC8, &qword_100018268);
  result = sub_100017090();
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
      result = sub_100017000(*(v5 + 40));
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100011454(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001658(&unk_100020EA0, &unk_100018160);
  result = sub_100017090();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_100017220();
      sub_100016E70();
      result = sub_100017230();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1000116B4(uint64_t a1, void *a2)
{
  sub_100017000(a2[5]);
  result = sub_100017030();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100011738(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001122C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100011A28();
      goto LABEL_12;
    }

    sub_100011CD4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_100017000(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100017010();

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
  sub_1000171C0();
  __break(1u);
}

uint64_t sub_1000118A8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100011454(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100011B78();
      goto LABEL_16;
    }

    sub_100011EE8(v8 + 1);
  }

  v10 = *v4;
  sub_100017220();
  sub_100016E70();
  result = sub_100017230();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000171B0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000171C0();
  __break(1u);
  return result;
}

id sub_100011A28()
{
  v1 = v0;
  sub_100001658(&qword_100020FC8, &qword_100018268);
  v2 = *v0;
  v3 = sub_100017080();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

  return result;
}

void *sub_100011B78()
{
  v1 = v0;
  sub_100001658(&unk_100020EA0, &unk_100018160);
  v2 = *v0;
  v3 = sub_100017080();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

  return result;
}

uint64_t sub_100011CD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001658(&qword_100020FC8, &qword_100018268);
  result = sub_100017090();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_100017000(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

uint64_t sub_100011EE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001658(&unk_100020EA0, &unk_100018160);
  result = sub_100017090();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100017220();

      sub_100016E70();
      result = sub_100017230();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

void *sub_100012120(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100012140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100012140(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001658(&qword_100020F88, &qword_100018220);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001658(&qword_100020F90, &qword_100018228);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100012274(uint64_t a1)
{
  sub_100016E20();
  sub_100017220();
  sub_100016E70();
  v2 = sub_100017230();

  return sub_10001290C(a1, v2);
}

unint64_t sub_100012308(uint64_t a1, uint64_t a2)
{
  sub_100017220();
  sub_100016E70();
  v4 = sub_100017230();

  return sub_100012A10(a1, a2, v4);
}

uint64_t sub_100012380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001658(&qword_100020FB8, &qword_100018250);
  v37 = v4;
  result = sub_100017170();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 16 * v20);
      v24 = v23[1];
      v39 = *v23;
      if ((v37 & 1) == 0)
      {
        v25 = v22;
      }

      sub_100016E20();
      sub_100017220();
      sub_100016E70();
      v26 = sub_100017230();

      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = (*(v7 + 56) + 16 * v15);
      v12 = v38;
      *v16 = v39;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100012654(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001658(&qword_100020F50, &qword_1000181F8);
  v33 = v4;
  result = sub_100017170();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100016690(v24, v34);
      }

      else
      {
        sub_1000166A0(v24, v34);
      }

      sub_100017220();
      sub_100016E70();
      result = sub_100017230();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100016690(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

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
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_10001290C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100016E20();
      v8 = v7;
      if (v6 == sub_100016E20() && v8 == v9)
      {
        break;
      }

      v11 = sub_1000171B0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100012A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000171B0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100012AC8()
{
  v1 = v0;
  sub_100001658(&qword_100020FB8, &qword_100018250);
  v2 = *v0;
  v3 = sub_100017160();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

void *sub_100012C38()
{
  v1 = v0;
  sub_100001658(&qword_100020F50, &qword_1000181F8);
  v2 = *v0;
  v3 = sub_100017160();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000166A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100016690(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_100012DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001658(&qword_100020FB8, &qword_100018250);
    v3 = sub_100017180();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_100012274(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100012EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001658(&qword_100020F50, &qword_1000181F8);
    v3 = sub_100017180();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016700(v4, &v13, &qword_100020FA0, &qword_100018238);
      v5 = v13;
      v6 = v14;
      result = sub_100012308(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100016690(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10001300C()
{
  v0 = sub_1000168F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000168A0();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = v5;
    sub_1000168B0();
    sub_1000168E0();
    (*(v1 + 8))(v3, v0);
    v8 = sub_100016DF0();

    v9 = [v6 buildWithState:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_100016890();
  if (*(v10 + 16))
  {
    v43 = v3;
    v44 = v0;
    v38 = v9;
    v37 = [objc_opt_self() build];
    sub_100001658(&qword_100020F78, &qword_100018218);
    v11 = sub_100017160();
    v12 = 0;
    v13 = v10 + 64;
    v14 = 1 << *(v10 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = v11;
    v42 = (v1 + 8);
    v39 = v10;
    v40 = v11 + 64;
    if (v16)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v16));
        v45 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = (*(v10 + 48) + 16 * v21);
        v24 = *v22;
        v23 = v22[1];
        v25 = *(*(v10 + 56) + 8 * v21);
        v46 = objc_opt_self();
        v26 = v25;

        v27 = v43;
        sub_1000168B0();
        sub_1000168E0();
        (*v42)(v27, v44);
        v28 = sub_100016DF0();

        v29 = [v46 buildWithState:v28];

        if (!v29)
        {
          break;
        }

        v30 = v41;
        *(v40 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v31 = (v30[6] + 16 * v21);
        *v31 = v24;
        v31[1] = v23;
        *(v30[7] + 8 * v21) = v29;
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_22;
        }

        v30[2] = v34;
        v10 = v39;
        v16 = v45;
        if (!v45)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v19 = v12;
      while (1)
      {
        v12 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v12 >= v17)
        {
          sub_10000EE34(0, &qword_100020F80, RMModelStatusAppManagedList_ManagedConfigurationState_ptr);
          isa = sub_100016D50().super.isa;

          v36 = v37;
          [v37 setStatusDictionary:isa];

          v9 = v38;
          goto LABEL_20;
        }

        v20 = *(v13 + 8 * v12);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v45 = (v20 - 1) & v20;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v36 = 0;
LABEL_20:

    [objc_opt_self() buildWithAppConfigState:v9 extensionConfigState:v36];
  }
}

uint64_t sub_100013434(uint64_t a1)
{
  v2 = sub_100016C40();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v24[-v7];
  v9 = *(v3 + 16);
  v9(&v24[-v7], a1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == enum case for ManagedAppStatus.State.optional(_:) || v10 == enum case for ManagedAppStatus.State.queued(_:) || v10 == enum case for ManagedAppStatus.State.promptingForConsent(_:) || v10 == enum case for ManagedAppStatus.State.promptingForLogin(_:) || v10 == enum case for ManagedAppStatus.State.promptingForManagement(_:) || v10 == enum case for ManagedAppStatus.State.downloading(_:) || v10 == enum case for ManagedAppStatus.State.installing(_:) || v10 == enum case for ManagedAppStatus.State.managed(_:) || v10 == enum case for ManagedAppStatus.State.managedButUninstalled(_:) || v10 == enum case for ManagedAppStatus.State.failed(_:) || v10 == enum case for ManagedAppStatus.State.notPresent(_:) || v10 == enum case for ManagedAppStatus.State.configurationApplied(_:))
  {
    return sub_100016E20();
  }

  if (qword_100020AA8 != -1)
  {
    swift_once();
  }

  v12 = sub_100016D40();
  sub_100006810(v12, qword_100021568);
  v9(v6, a1, v2);
  v13 = sub_100016D20();
  v14 = sub_100016FE0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = v3;
    v17 = swift_slowAlloc();
    *v15 = 136315138;
    v26 = v13;
    v27 = v17;
    v25 = v14;
    v18 = sub_100016C30();
    v20 = v19;
    v21 = *(v16 + 8);
    v21(v6, v2);
    v22 = sub_10001070C(v18, v20, &v27);

    *(v15 + 4) = v22;
    v23 = v26;
    _os_log_impl(&_mh_execute_header, v26, v25, "Unknown managed app state:%s", v15, 0xCu);
    sub_100009990(v17);
  }

  else
  {

    v21 = *(v3 + 8);
    v21(v6, v2);
  }

  v21(v8, v2);
  return 0;
}

uint64_t sub_10001386C(uint64_t a1)
{
  v2 = sub_100001658(&qword_100020F60, &qword_100018208);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_100016B90();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - v11;
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  sub_100016700(a1, v4, &qword_100020F60, &qword_100018208);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000EC38(v4, &qword_100020F60, &qword_100018208);
    return 0;
  }

  (*(v6 + 32))(v14, v4, v5);
  v16 = *(v6 + 16);
  v16(v12, v14, v5);
  v17 = (*(v6 + 88))(v12, v5);
  if (v17 != enum case for ManagedAppStatus.UpdateState.available(_:) && v17 != enum case for ManagedAppStatus.UpdateState.promptingForUpdate(_:) && v17 != enum case for ManagedAppStatus.UpdateState.promptingForUpdateLogin(_:) && v17 != enum case for ManagedAppStatus.UpdateState.updating(_:) && v17 != enum case for ManagedAppStatus.UpdateState.failed(_:))
  {
    if (qword_100020AA8 != -1)
    {
      swift_once();
    }

    v19 = sub_100016D40();
    sub_100006810(v19, qword_100021568);
    v16(v9, v14, v5);
    v20 = sub_100016D20();
    v21 = sub_100016FE0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v29 = v22;
      v31 = swift_slowAlloc();
      v32 = v31;
      *v22 = 136315138;
      v30 = v21;
      v23 = sub_100016B80();
      v25 = v24;
      v26 = *(v6 + 8);
      v26(v9, v5);
      v27 = sub_10001070C(v23, v25, &v32);

      v28 = v29;
      *(v29 + 1) = v27;
      _os_log_impl(&_mh_execute_header, v20, v30, "Unknown managed app update state: %s", v28, 0xCu);
      sub_100009990(v31);
    }

    else
    {

      v26 = *(v6 + 8);
      v26(v9, v5);
    }

    v26(v14, v5);
    v26(v12, v5);
    return 0;
  }

  v18 = sub_100016E20();
  (*(v6 + 8))(v14, v5);
  return v18;
}

uint64_t sub_100013CF4(uint64_t a1)
{
  v2 = sub_100016C60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:))
  {
    return 0xD000000000000022;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.duplicateConfiguredApp(_:))
  {
    return 0xD00000000000001CLL;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.appStoreDisabled(_:))
  {
    return 0xD000000000000016;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.couldNotVerifyAppID(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.notAnApp(_:))
  {
    return 0x6F4E2E726F727245;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.notSupported(_:))
  {
    return 0;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.licenseNotFound(_:))
  {
    return 0xD000000000000015;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.downloadFailed(_:))
  {
    return 0xD000000000000014;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.installFailed(_:))
  {
    return 0xD000000000000013;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.userRejected(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.updateAvailable(_:))
  {
    return 0xD000000000000014;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.updateFailed(_:))
  {
    return 0xD000000000000012;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.isSystemApp(_:))
  {
    return 0xD000000000000011;
  }

  if (v6 == enum case for ManagedAppStatus.Reason.invalidCodeSignature(_:))
  {
    return 0xD00000000000001ALL;
  }

  (*(v3 + 8))(v5, v2);
  return 0x6E552E726F727245;
}

void *sub_1000140A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  sub_100017120();
  v3 = *(sub_100016C60() - 8);
  v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = objc_opt_self();
  v6 = *(v3 + 72);
  do
  {
    sub_100013CF4(v4);
    v7 = sub_100016DF0();

    v8 = [v5 buildRequiredOnlyWithCode:v7];

    sub_100017100();
    sub_100017130();
    sub_100017140();
    sub_100017110();
    v4 += v6;
    --v1;
  }

  while (v1);
  return _swiftEmptyArrayStorage;
}

id sub_1000141F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100001658(&qword_100020F60, &qword_100018208);
  __chkstk_darwin(v3 - 8);
  v66 = (&v57 - v4);
  v5 = sub_100016C40();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001658(&unk_100020F68, &qword_100018210);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v57 - v12;
  __chkstk_darwin(v11);
  v15 = &v57 - v14;
  if (a2)
  {
    v16 = sub_100016880();
    v17 = sub_100016C80();
    if (*(v16 + 16))
    {
      v19 = sub_100012308(v17, v18);
      v21 = v20;

      if (v21)
      {
        v22 = *(*(v16 + 56) + 8 * v19);

        sub_10001300C();
        v65 = v23;

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v65 = 0;
LABEL_8:
  sub_100016C80();
  v64 = sub_100016DF0();

  sub_100016C10();
  v61 = sub_100016DF0();

  sub_100016C20();
  v59 = sub_100016DF0();

  sub_100016C00();
  v24 = sub_100016BF0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v15, 1, v24) == 1)
  {
    sub_10000EC38(v15, &unk_100020F68, &qword_100018210);
    isa = 0;
  }

  else
  {
    sub_100016BD0();
    v28 = v27;
    (*(v25 + 8))(v15, v24);
    if (v28)
    {
      isa = 0;
    }

    else
    {
      isa = sub_100017240().super.super.isa;
    }
  }

  sub_100016C00();
  if (v26(v13, 1, v24) == 1)
  {
    sub_10000EC38(v13, &unk_100020F68, &qword_100018210);
    v57 = 0;
  }

  else
  {
    sub_100016BE0();
    (*(v25 + 8))(v13, v24);
    v57 = sub_100016DF0();
  }

  sub_100016C00();
  if (v26(v10, 1, v24) == 1)
  {
    sub_10000EC38(v10, &unk_100020F68, &qword_100018210);
    v29 = 0;
  }

  else
  {
    sub_100016BC0();
    (*(v25 + 8))(v10, v24);
    v29 = sub_100016DF0();
  }

  v30 = v60;
  sub_100016C50();
  sub_100013434(v30);
  v32 = v31;
  (*(v62 + 8))(v30, v63);
  if (v32)
  {
    v33 = sub_100016DF0();
  }

  else
  {
    v33 = 0;
  }

  v34 = v66;
  sub_100016BA0();
  sub_10001386C(v34);
  v36 = v35;
  sub_10000EC38(v34, &qword_100020F60, &qword_100018208);
  if (v36)
  {
    v37 = sub_100016DF0();
  }

  else
  {
    v37 = 0;
  }

  v38 = sub_100016C70();
  v39 = sub_1000140A4(v38);

  if (v39)
  {
    sub_10000EE34(0, &qword_100020CF0, RMModelStatusReason_ptr);
    v40.super.isa = sub_100016F20().super.isa;
  }

  else
  {
    v40.super.isa = 0;
  }

  v66 = v40.super.isa;
  v41 = objc_opt_self();
  v56 = v40.super.isa;
  v42 = v65;
  v55 = v37;
  v53 = v29;
  v54 = v33;
  v43 = v64;
  v44 = v61;
  v45 = v29;
  v46 = v59;
  v47 = v37;
  v48 = v33;
  v50 = v57;
  v49 = isa;
  v51 = [v41 buildWithIdentifier:v64 removed:0 declarationIdentifier:v61 name:v59 externalVersionId:isa version:v57 shortVersion:v53 state:v54 updateState:v55 configState:v65 reasons:v56];

  return v51;
}

uint64_t sub_100014808(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100016C90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_100016CF0();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001493C, 0, 0);
}

uint64_t sub_10001493C()
{
  v1 = *(v0 + 16);
  sub_100016CD0();
  v2 = [v1 scope] != 1;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_100014A00;

  return DDMDeclarationStatusRequest.send(to:)(v2);
}

uint64_t sub_100014A00(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_10001521C;
  }

  else
  {
    v4 = sub_100014B14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100014B14()
{
  [*(v0 + 16) scope];
  sub_100016850();
  swift_allocObject();
  *(v0 + 112) = sub_100016840();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100014BE8;

  return ManagedAppsDaemonClient.getAllAppConfigState()();
}

uint64_t sub_100014BE8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1000152C0;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_100014D14;
  }

  return _swift_task_switch(v5, 0, 0);
}

void *sub_100014D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = v3[16];
  v4 = v3[12];
  v5 = *(v4 + 16);
  if (!v5)
  {

    v8 = _swiftEmptyArrayStorage;
    v28 = _swiftEmptyArrayStorage[2];
    if (v28)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v6 = v3[4];
  v50 = objc_opt_self();
  v52 = *(v6 + 16);
  v47 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v7 = v4 + v47;
  v48 = (v6 + 8);
  v46 = (v6 + 32);
  v8 = _swiftEmptyArrayStorage;
  v49 = *(v6 + 72);
  do
  {
    v10 = v3[2];
    v52(v3[7], v7, v3[3]);
    sub_100016BB0();
    v11 = sub_100016DF0();

    v12 = [v50 newDeclarationKey:v11];

    v13 = [v12 storeIdentifier];
    v14 = sub_100016E20();
    v16 = v15;

    v17 = [v10 identifier];
    v18 = sub_100016E20();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
    }

    else
    {
      v22 = sub_1000171B0();

      if ((v22 & 1) == 0)
      {
        (*v48)(v3[7], v3[3]);

        v9 = v49;
        goto LABEL_4;
      }
    }

    v52(v3[6], v3[7], v3[3]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100010534(0, *(v8 + 2) + 1, 1, v8);
    }

    v24 = *(v8 + 2);
    v23 = *(v8 + 3);
    if (v24 >= v23 >> 1)
    {
      v8 = sub_100010534((v23 > 1), v24 + 1, 1, v8);
    }

    v26 = v3[6];
    v25 = v3[7];
    v27 = v3[3];

    (*v48)(v25, v27);
    *(v8 + 2) = v24 + 1;
    v9 = v49;
    (*v46)(&v8[v47 + v24 * v49], v26, v27);
LABEL_4:
    v7 += v9;
    --v5;
  }

  while (v5);

  v28 = *(v8 + 2);
  if (v28)
  {
LABEL_18:
    v29 = v3[4];
    result = sub_100012120(0, v28, 0);
    v31 = 0;
    v53 = &v8[(*(v29 + 80) + 32) & ~*(v29 + 80)];
    while (v31 < *(v8 + 2))
    {
      v32 = v3[5];
      v33 = v3[3];
      (*(v29 + 16))(v32, &v53[*(v29 + 72) * v31], v33);
      v34 = sub_1000141F8(v32, v51);
      v35 = [v34 serializeWithType:1];

      v36 = sub_100016D60();
      result = (*(v29 + 8))(v32, v33);
      v38 = _swiftEmptyArrayStorage[2];
      v37 = _swiftEmptyArrayStorage[3];
      if (v38 >= v37 >> 1)
      {
        result = sub_100012120((v37 > 1), v38 + 1, 1);
      }

      ++v31;
      _swiftEmptyArrayStorage[2] = v38 + 1;
      _swiftEmptyArrayStorage[v38 + 4] = v36;
      if (v28 == v31)
      {
        v40 = v3[9];
        v39 = v3[10];
        v41 = v3[8];

        (*(v40 + 8))(v39, v41);

        goto LABEL_26;
      }
    }

    __break(1u);
    return result;
  }

LABEL_25:
  v43 = v3[9];
  v42 = v3[10];
  v44 = v3[8];

  (*(v43 + 8))(v42, v44);

LABEL_26:

  v45 = v3[1];

  return v45(_swiftEmptyArrayStorage);
}

uint64_t sub_10001521C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

void *sub_1000152C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[12];
  v5 = *(v4 + 16);
  if (!v5)
  {

    v11 = _swiftEmptyArrayStorage;
    v31 = _swiftEmptyArrayStorage[2];
    if (v31)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v6 = v3[4];
  v7 = objc_opt_self();
  v8 = *(v6 + 16);
  v6 += 16;
  v53 = v7;
  v54 = v8;
  v50 = (*(v6 + 64) + 32) & ~*(v6 + 64);
  v9 = v4 + v50;
  v10 = *(v6 + 56);
  v51 = (v6 - 8);
  v49 = (v6 + 16);
  v11 = _swiftEmptyArrayStorage;
  v52 = v10;
  do
  {
    v13 = v3[2];
    v54(v3[7], v9, v3[3]);
    sub_100016BB0();
    v14 = sub_100016DF0();

    v15 = [v53 newDeclarationKey:v14];

    v16 = [v15 storeIdentifier];
    v17 = sub_100016E20();
    v19 = v18;

    v20 = [v13 identifier];
    v21 = sub_100016E20();
    v23 = v22;

    if (v17 == v21 && v19 == v23)
    {
    }

    else
    {
      v25 = sub_1000171B0();

      if ((v25 & 1) == 0)
      {
        (*v51)(v3[7], v3[3]);

        v12 = v52;
        goto LABEL_4;
      }
    }

    v54(v3[6], v3[7], v3[3]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100010534(0, *(v11 + 2) + 1, 1, v11);
    }

    v27 = *(v11 + 2);
    v26 = *(v11 + 3);
    if (v27 >= v26 >> 1)
    {
      v11 = sub_100010534((v26 > 1), v27 + 1, 1, v11);
    }

    v29 = v3[6];
    v28 = v3[7];
    v30 = v3[3];

    (*v51)(v28, v30);
    *(v11 + 2) = v27 + 1;
    v12 = v52;
    (*v49)(&v11[v50 + v27 * v52], v29, v30);
LABEL_4:
    v9 += v12;
    --v5;
  }

  while (v5);

  v31 = *(v11 + 2);
  if (v31)
  {
LABEL_18:
    v32 = v3[4];
    result = sub_100012120(0, v31, 0);
    v34 = 0;
    v55 = &v11[(*(v32 + 80) + 32) & ~*(v32 + 80)];
    while (v34 < *(v11 + 2))
    {
      v35 = v3[5];
      v36 = v3[3];
      (*(v32 + 16))(v35, &v55[*(v32 + 72) * v34], v36);
      v37 = sub_1000141F8(v35, 0);
      v38 = [v37 serializeWithType:1];

      v39 = sub_100016D60();
      result = (*(v32 + 8))(v35, v36);
      v41 = _swiftEmptyArrayStorage[2];
      v40 = _swiftEmptyArrayStorage[3];
      if (v41 >= v40 >> 1)
      {
        result = sub_100012120((v40 > 1), v41 + 1, 1);
      }

      ++v34;
      _swiftEmptyArrayStorage[2] = v41 + 1;
      _swiftEmptyArrayStorage[v41 + 4] = v39;
      if (v31 == v34)
      {
        v43 = v3[9];
        v42 = v3[10];
        v44 = v3[8];

        (*(v43 + 8))(v42, v44);

        goto LABEL_26;
      }
    }

    __break(1u);
    return result;
  }

LABEL_25:
  v46 = v3[9];
  v45 = v3[10];
  v47 = v3[8];

  (*(v46 + 8))(v45, v47);

LABEL_26:

  v48 = v3[1];

  return v48(_swiftEmptyArrayStorage);
}

uint64_t sub_1000157A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return _swift_task_switch(sub_1000157C4, 0, 0);
}

uint64_t sub_1000157C4()
{
  v29 = v0;
  if (qword_100020AA8 != -1)
  {
    swift_once();
  }

  v1 = sub_100016D40();
  v0[26] = sub_100006810(v1, qword_100021568);

  v2 = sub_100016D20();
  v3 = sub_100016FD0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136446210;
    v6 = sub_100016F40();
    v8 = sub_10001070C(v6, v7, &v28);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Querying status for key paths:%{public}s", v4, 0xCu);
    sub_100009990(v5);
  }

  v9 = v0[24];
  v10 = sub_100012EDC(_swiftEmptyArrayStorage);
  v11 = *(v9 + 16);
  v0[27] = v11;
  if (v11)
  {
    v12 = 0;
    v0[28] = RMModelStatusItemAppManagedList;
    while (1)
    {
      v0[29] = v10;
      v0[30] = v12;
      v16 = v0[24] + 16 * v12;
      v17 = *(v16 + 32);
      v0[31] = v17;
      v18 = *(v16 + 40);
      v0[32] = v18;
      if (sub_100016E20() == v17 && v19 == v18)
      {
        break;
      }

      v21 = sub_1000171B0();

      if (v21)
      {
        goto LABEL_20;
      }

      v22 = sub_100016D20();
      v23 = sub_100016FE0();

      if (os_log_type_enabled(v22, v23))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v28 = v14;
        *v13 = 136315138;
        v15 = sub_10001070C(v17, v18, &v28);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v22, v23, "Ignoring unknown status key path: %s", v13, 0xCu);
        sub_100009990(v14);
      }

      else
      {
      }

      v12 = v0[30] + 1;
      if (v12 == v0[27])
      {
        goto LABEL_16;
      }
    }

LABEL_20:
    v26 = swift_task_alloc();
    v0[33] = v26;
    *v26 = v0;
    v26[1] = sub_100015BA0;
    v27 = v0[25];

    return sub_100014808(v27);
  }

  else
  {
LABEL_16:
    v24 = v0[1];

    return v24(v10);
  }
}

uint64_t sub_100015BA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = sub_1000160F0;
  }

  else
  {
    *(v4 + 280) = a1;
    v5 = sub_100015CC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

_OWORD *sub_100015CC8()
{
  v42 = v0;
  v1 = *(v0 + 280);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = sub_100001658(&qword_100020F48, &qword_1000181F0);
  *(v0 + 16) = v1;
  *(v0 + 40) = v5;
  sub_100016690((v0 + 16), (v0 + 112));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 184) = v4;
  v7 = sub_100012308(v3, v2);
  v9 = *(v4 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v3) = v8;
  if (*(*(v0 + 232) + 24) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21 = v7;
    sub_100012C38();
    v7 = v21;
    v17 = *(v0 + 256);
    if (v3)
    {
      goto LABEL_9;
    }

LABEL_12:
    v22 = *(v0 + 248);
    v19 = *(v0 + 184);
    v19[(v7 >> 6) + 8] |= 1 << v7;
    v23 = (v19[6] + 16 * v7);
    *v23 = v22;
    v23[1] = v17;
    result = sub_100016690((v0 + 112), (v19[7] + 32 * v7));
    v24 = v19[2];
    v11 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v11)
    {
      __break(1u);
      return result;
    }

    v19[2] = v25;
    goto LABEL_14;
  }

  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  sub_100012654(v12, isUniquelyReferenced_nonNull_native);
  v7 = sub_100012308(v14, v13);
  if ((v3 & 1) != (v15 & 1))
  {

    return sub_1000171D0();
  }

LABEL_8:
  v17 = *(v0 + 256);
  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v18 = v7;

  v19 = *(v0 + 184);
  v20 = (v19[7] + 32 * v18);
  sub_100009990(v20);
  sub_100016690((v0 + 112), v20);
LABEL_14:
  v26 = *(v0 + 240) + 1;
  if (v26 == *(v0 + 216))
  {
LABEL_15:
    v27 = *(v0 + 8);

    return v27(v19);
  }

  else
  {
    while (1)
    {
      *(v0 + 232) = v19;
      *(v0 + 240) = v26;
      v31 = *(v0 + 192) + 16 * v26;
      v32 = *(v31 + 32);
      *(v0 + 248) = v32;
      v33 = *(v31 + 40);
      *(v0 + 256) = v33;
      if (sub_100016E20() == v32 && v34 == v33)
      {
        break;
      }

      v36 = sub_1000171B0();

      if (v36)
      {
        goto LABEL_29;
      }

      v37 = sub_100016D20();
      v38 = sub_100016FE0();

      if (os_log_type_enabled(v37, v38))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v41 = v29;
        *v28 = 136315138;
        v30 = sub_10001070C(v32, v33, &v41);

        *(v28 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v37, v38, "Ignoring unknown status key path: %s", v28, 0xCu);
        sub_100009990(v29);
      }

      else
      {
      }

      v26 = *(v0 + 240) + 1;
      if (v26 == *(v0 + 216))
      {
        goto LABEL_15;
      }
    }

LABEL_29:
    v39 = swift_task_alloc();
    *(v0 + 264) = v39;
    *v39 = v0;
    v39[1] = sub_100015BA0;
    v40 = *(v0 + 200);

    return sub_100014808(v40);
  }
}

_OWORD *sub_1000160F0()
{
  v47 = v0;
  swift_errorRetain();
  v1 = sub_100016D20();
  v2 = sub_100016FE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not query managed app list status key: %{public}@", v3, 0xCu);
    sub_10000EC38(v4, &qword_100020F40, &qword_100017E10);
  }

  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);

  swift_getErrorValue();
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  *(v0 + 72) = v9;
  v11 = sub_10001662C((v0 + 48));
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  sub_100016690((v0 + 48), (v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 176) = v8;
  v13 = sub_100012308(v7, v6);
  v15 = *(v8 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v6) = v14;
  if (*(*(v0 + 232) + 24) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_13:
    v25 = v13;
    sub_100012C38();
    v13 = v25;
    v23 = *(v0 + 176);
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_14:
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v28 = (v23[6] + 16 * v13);
    *v28 = v27;
    v28[1] = v26;
    result = sub_100016690((v0 + 80), (v23[7] + 32 * v13));
    v29 = v23[2];
    v17 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v17)
    {
      __break(1u);
      return result;
    }

    v23[2] = v30;

    goto LABEL_16;
  }

  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  sub_100012654(v18, isUniquelyReferenced_nonNull_native);
  v13 = sub_100012308(v20, v19);
  if ((v6 & 1) != (v21 & 1))
  {

    return sub_1000171D0();
  }

LABEL_10:
  v23 = *(v0 + 176);
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v24 = (v23[7] + 32 * v13);
  sub_100009990(v24);
  sub_100016690((v0 + 80), v24);
LABEL_16:

  v31 = *(v0 + 240) + 1;
  if (v31 == *(v0 + 216))
  {
LABEL_17:
    v32 = *(v0 + 8);

    return v32(v23);
  }

  else
  {
    while (1)
    {
      *(v0 + 232) = v23;
      *(v0 + 240) = v31;
      v36 = *(v0 + 192) + 16 * v31;
      v37 = *(v36 + 32);
      *(v0 + 248) = v37;
      v38 = *(v36 + 40);
      *(v0 + 256) = v38;
      if (sub_100016E20() == v37 && v39 == v38)
      {
        break;
      }

      v41 = sub_1000171B0();

      if (v41)
      {
        goto LABEL_31;
      }

      v42 = sub_100016D20();
      v43 = sub_100016FE0();

      if (os_log_type_enabled(v42, v43))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v46 = v34;
        *v33 = 136315138;
        v35 = sub_10001070C(v37, v38, &v46);

        *(v33 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v42, v43, "Ignoring unknown status key path: %s", v33, 0xCu);
        sub_100009990(v34);
      }

      else
      {
      }

      v31 = *(v0 + 240) + 1;
      if (v31 == *(v0 + 216))
      {
        goto LABEL_17;
      }
    }

LABEL_31:
    v44 = swift_task_alloc();
    *(v0 + 264) = v44;
    *v44 = v0;
    v44[1] = sub_100015BA0;
    v45 = *(v0 + 200);

    return sub_100014808(v45);
  }
}

uint64_t *sub_10001662C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_100016690(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000166A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100016700(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001658(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}