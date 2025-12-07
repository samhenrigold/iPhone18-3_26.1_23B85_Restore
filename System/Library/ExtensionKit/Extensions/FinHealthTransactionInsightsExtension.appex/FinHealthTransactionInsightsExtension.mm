uint64_t sub_1000014A0()
{
  v1 = v0;
  v2 = sub_1000024D8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024B8();
  v6 = sub_1000024C8();
  v7 = sub_100002518();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FinHealthTransactionInsightsExtension - initialized", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return v1;
}

uint64_t sub_1000015F4(uint64_t a1)
{
  v2 = sub_100001A3C(&qword_100008140, &unk_100002788);

  return BackgroundDeliveryExtension.configuration.getter(a1, v2);
}

uint64_t sub_10000165C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_1000014A0();
  *a1 = v2;
  return result;
}

uint64_t sub_100001698()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002494;

  return sub_100001A7C();
}

uint64_t sub_100001738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000017D8;

  return sub_100002228();
}

uint64_t sub_1000017D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for FinHealthTransactionInsightsExtension();
  sub_100001A3C(&qword_100008098, &unk_1000027B8);
  sub_1000024A8();
  return 0;
}

uint64_t sub_100001A3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FinHealthTransactionInsightsExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001A7C()
{
  v1 = sub_1000024E8();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1000024D8();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_100001BAC, 0, 0);
}

uint64_t sub_100001BAC(uint64_t a1)
{
  sub_1000024B8();
  v2 = sub_1000024C8();
  v3 = sub_100002538();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FinHealthTransactionInsightsExtension - didReceiveDataForTypes", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[5];
  v7 = v1[6];
  v9 = v1[3];
  v8 = v1[4];
  v10 = v1[2];

  v11 = *(v7 + 8);
  v1[10] = v11;
  v11(v5, v6);
  v1[11] = [objc_allocWithZone(sub_100002508()) init];
  (*(v9 + 104))(v8, enum case for UpdateRequestType.backgroundDelivery(_:), v10);
  v12 = swift_task_alloc();
  v1[12] = v12;
  *v12 = v1;
  v12[1] = sub_100001D44;
  v13 = v1[4];

  return FHInsightsController.didReceiveUpdates(from:)(v13);
}

uint64_t sub_100001D44()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100001FE8;
  }

  else
  {
    v5 = sub_100001EB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100001EB4(uint64_t a1)
{
  sub_1000024B8();
  v2 = sub_1000024C8();
  v3 = sub_100002518();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FinHealthTransactionInsightsExtension - update complete", v4, 2u);
  }

  v5 = *(v1 + 80);
  v6 = *(v1 + 64);
  v7 = *(v1 + 40);

  v5(v6, v7);

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_100001FE8(uint64_t a1)
{
  sub_1000024B8();
  swift_errorRetain();
  v2 = sub_1000024C8();
  v3 = sub_100002528();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Background Delivery failed with error: %@", v4, 0xCu);
    sub_1000023E4(v5);
  }

  else
  {
  }

  (*(v1 + 80))(*(v1 + 56), *(v1 + 40));
  sub_1000024B8();
  v7 = sub_1000024C8();
  v8 = sub_100002518();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FinHealthTransactionInsightsExtension - update complete", v9, 2u);
  }

  v10 = *(v1 + 80);
  v11 = *(v1 + 64);
  v12 = *(v1 + 40);

  v10(v11, v12);

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_100002228()
{
  v1 = sub_1000024D8();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000022E4, 0, 0);
}

uint64_t sub_1000022E4(uint64_t a1)
{
  sub_1000024B8();
  v2 = sub_1000024C8();
  v3 = sub_100002518();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FinHealthTransactionInsightsExtension - willTerminate", v4, 2u);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1000023E4(uint64_t a1)
{
  v2 = sub_10000244C(&qword_100008148, &qword_100002808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000244C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}