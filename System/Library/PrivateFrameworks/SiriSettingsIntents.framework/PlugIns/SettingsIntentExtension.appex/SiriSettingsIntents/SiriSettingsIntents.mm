uint64_t sub_1000013C0()
{
  sub_10000142C();
  result = sub_1000019CC();
  qword_100008160 = result;
  return result;
}

unint64_t sub_10000142C()
{
  result = qword_100008120;
  if (!qword_100008120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008120);
  }

  return result;
}

uint64_t sub_100001470@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000019AC();
  if (qword_100008118 != -1)
  {
    swift_once();
  }

  v5 = qword_100008160;
  sub_10000198C(v4, &_mh_execute_header, qword_100008160, "IntentHandler selecting correct handler based on intent", 55, 2, &_swiftEmptyArrayStorage);
  sub_10000197C();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    sub_10000196C();
    v7 = v19;
    v8 = sub_10000187C(v18, v19);
    a2[3] = v7;
    v9 = sub_1000018C0(a2);
    (*(*(v7 - 8) + 16))(v9, v8, v7);

    return sub_100001920(v18);
  }

  else
  {
    v11 = sub_1000019BC();
    sub_1000017E0(&qword_100008150, qword_100001BF8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100001BC0;
    v13 = a1;
    v14 = [v13 description];
    v15 = sub_10000199C();
    v17 = v16;

    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100001828();
    *(v12 + 32) = v15;
    *(v12 + 40) = v17;
    sub_10000198C(v11, &_mh_execute_header, v5, "Received unexpected intent %@", 29, 2, v12);

    result = sub_1000019DC();
    __break(1u);
  }

  return result;
}

id sub_100001730()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100001788()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000017E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001828()
{
  result = qword_100008158;
  if (!qword_100008158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008158);
  }

  return result;
}

void *sub_10000187C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_1000018C0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100001920(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}