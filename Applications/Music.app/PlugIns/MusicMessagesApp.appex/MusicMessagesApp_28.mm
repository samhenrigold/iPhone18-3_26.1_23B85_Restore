unint64_t sub_1002B9B18()
{
  result = qword_10063D2B0;
  if (!qword_10063D2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10063D2B0);
  }

  return result;
}

uint64_t sub_1002B9B64(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)(uint64_t a1, int *a2)
{
  v2[2] = sub_1004DDA4C();
  v2[3] = sub_1004DDA3C();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1002B9CC8;

  return v7(a1);
}

uint64_t sub_1002B9CC8(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1004DD9BC();
    v7 = v6;
    v8 = sub_1002B9EB4;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_1004DD9BC();
    v7 = v9;
    v8 = sub_1002B9E4C;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1002B9E4C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1002B9EB4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1002B9F1C(uint64_t a1)
{
  v4 = *v1;
  v2[2] = sub_1004DDA4C();
  v2[3] = sub_1004DDA3C();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1002BA034;

  return v7(a1);
}

uint64_t sub_1002BA034(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1004DD9BC();
    v7 = v6;
    v8 = sub_1002BBC24;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_1004DD9BC();
    v7 = v9;
    v8 = sub_1002BBC20;
  }

  return _swift_task_switch(v8, v5, v7);
}

void *static LaunchURL.ArrayBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    sub_1002BA2D0(v2, &v10);
    v7[0] = v10;
    v7[1] = v11;
    v8 = v12;
    if (*(&v11 + 1))
    {
      sub_100035850(v7, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10003B57C(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        v3 = sub_10003B57C((v4 > 1), v5 + 1, 1, v3);
      }

      v3[2] = v5 + 1;
      sub_100035850(v9, &v3[5 * v5 + 4]);
    }

    else
    {
      sub_1002BA340(v7);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1002BA2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063D2B8, &unk_1005266A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BA340(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063D2B8, &unk_1005266A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static LaunchURL.ArrayBuilder.buildOptional(_:)(uint64_t a1)
{
  sub_1002BA2D0(a1, &v3);
  if (v4)
  {
    sub_100035850(&v3, v5);
    sub_100004CB8(&qword_100634FC0, &unk_100515730);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100511DA0;
    sub_100035850(v5, v1 + 32);
  }

  else
  {
    sub_1002BA340(&v3);
    return _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t sub_1002BA440(uint64_t a1)
{
  sub_100004CB8(&qword_100634FC0, &unk_100515730);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511DA0;
  sub_100035868(a1, v2 + 32);
  return v2;
}

uint64_t LaunchURL.Resolver.init(perform:handlerBuilder:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for LaunchURL.Resolver(0);
  v6 = sub_1004D965C();
  *a3 = a1 & 1;
  result = a2(v6);
  *(a3 + 8) = result;
  return result;
}

uint64_t LaunchURL.Resolver.perform(withURL:)(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_1004D809C();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_1002BA614, 0, 0);
}

void sub_1002BA614()
{
  v62 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  *(v0 + 392) = *(type metadata accessor for LaunchURL.Resolver(0) + 24);
  v5 = *(v3 + 16);
  *(v0 + 320) = v5;
  *(v0 + 328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_1004D964C();
  v7 = sub_1004DDF5C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 312);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v12 = 136446210;
    sub_1002BB8BC();
    v13 = sub_1004DEFFC();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_1000343A8(v13, v15, &v61);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Evaluating URL=%{public}s", v12, 0xCu);
    sub_100008D24(v59);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 336) = v16;
  v18 = *(*(v0 + 264) + 8);
  *(v0 + 344) = v18;
  v19 = *(v18 + 16);
  *(v0 + 352) = v19;
  if (v19)
  {
    *(v0 + 360) = 0;
    *(v0 + 368) = _swiftEmptyArrayStorage;
    if (*(v18 + 16))
    {
      v20 = *(v0 + 320);
      v21 = *(v0 + 304);
      v22 = *(v0 + 272);
      v23 = *(v0 + 256);
      sub_100035868(v18 + 32, v0 + 16);
      v20(v21, v23, v22);
      sub_100035868(v0 + 16, v0 + 56);
      v24 = sub_1004D964C();
      v25 = sub_1004DDF5C();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 336);
      v28 = *(v0 + 304);
      v29 = *(v0 + 272);
      if (v26)
      {
        v30 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v30 = 136446466;
        sub_1002BB8BC();
        v31 = sub_1004DEFFC();
        v33 = v32;
        v27(v28, v29);
        v34 = sub_1000343A8(v31, v33, &v61);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        sub_100035868(v0 + 56, v0 + 216);
        sub_100004CB8(&qword_100634FC8, &qword_1005266C0);
        v35 = sub_1004DD4DC();
        v37 = v36;
        sub_100008D24((v0 + 56));
        v38 = sub_1000343A8(v35, v37, &v61);

        *(v30 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving URL=%{public}s with handler=%{public}s", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100008D24((v0 + 56));
        v27(v28, v29);
      }

      v53 = *(v0 + 40);
      v54 = *(v0 + 48);
      sub_100008C70((v0 + 16), v53);
      v60 = (*(v54 + 8) + **(v54 + 8));
      v55 = swift_task_alloc();
      *(v0 + 376) = v55;
      *v55 = v0;
      v55[1] = sub_1002BAD08;
      v56 = *(v0 + 256);

      v60(v56, v53, v54);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

    v39 = sub_1004D964C();
    v40 = sub_1004DDF5C();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 336);
    v43 = *(v0 + 288);
    v44 = *(v0 + 272);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v45 = 136446466;
      sub_1002BB8BC();
      v46 = sub_1004DEFFC();
      v48 = v47;
      v42(v43, v44);
      v49 = sub_1000343A8(v46, v48, &v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      sub_100004CB8(&qword_100634FC8, &qword_1005266C0);
      v50 = sub_1004DD88C();
      v52 = sub_1000343A8(v50, v51, &v61);

      *(v45 + 14) = v52;

      _os_log_impl(&_mh_execute_header, v39, v40, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v42(v43, v44);
    }

    v57 = _swiftEmptyArrayStorage[2];

    v58 = *(v0 + 8);

    v58(v57 != 0);
  }
}

uint64_t sub_1002BAD08(char a1)
{
  v3 = *v2;
  *(v3 + 396) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {

    v4 = sub_1002BB63C;
  }

  else
  {
    v4 = sub_1002BAE28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002BAE28()
{
  v71 = v0;
  v1 = *(v0 + 368);
  if (*(v0 + 396))
  {
    sub_100035868(v0 + 16, v0 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 368);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_10003B57C(0, v1[2] + 1, 1, *(v0 + 368));
    }

    v4 = v1[2];
    v3 = v1[3];
    if (v4 >= v3 >> 1)
    {
      v1 = sub_10003B57C((v3 > 1), v4 + 1, 1, v1);
    }

    v1[2] = v4 + 1;
    sub_100035850((v0 + 176), &v1[5 * v4 + 4]);
  }

  (*(v0 + 320))(*(v0 + 296), *(v0 + 256), *(v0 + 272));
  sub_100035868(v0 + 16, v0 + 96);
  v5 = sub_1004D964C();
  v6 = sub_1004DDF5C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 336);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v11 = 136446466;
    sub_1002BB8BC();
    v12 = v1;
    v13 = sub_1004DEFFC();
    v15 = v14;
    v8(v9, v10);
    v16 = v13;
    v1 = v12;
    v17 = sub_1000343A8(v16, v15, &v70);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    sub_100035868(v0 + 96, v0 + 136);
    sub_100004CB8(&qword_100634FC8, &qword_1005266C0);
    v18 = sub_1004DD4DC();
    v20 = v19;
    sub_100008D24((v0 + 96));
    v21 = sub_1000343A8(v18, v20, &v70);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resolved URL=%{public}s with handler=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008D24((v0 + 96));
    v8(v9, v10);
  }

  if (*(v0 + 396) == 1 && (**(v0 + 264) & 1) == 0)
  {
    sub_100008D24((v0 + 16));
  }

  else
  {
    v22 = *(v0 + 352);
    v23 = *(v0 + 360) + 1;
    result = sub_100008D24((v0 + 16));
    if (v23 != v22)
    {
      v25 = *(v0 + 360) + 1;
      *(v0 + 360) = v25;
      *(v0 + 368) = v1;
      v26 = *(v0 + 344);
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v0 + 320);
        v28 = *(v0 + 304);
        v29 = *(v0 + 272);
        v30 = *(v0 + 256);
        sub_100035868(v26 + 40 * v25 + 32, v0 + 16);
        v27(v28, v30, v29);
        sub_100035868(v0 + 16, v0 + 56);
        v31 = sub_1004D964C();
        v32 = sub_1004DDF5C();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 336);
        v35 = *(v0 + 304);
        v36 = *(v0 + 272);
        if (v33)
        {
          v37 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v37 = 136446466;
          sub_1002BB8BC();
          v38 = sub_1004DEFFC();
          v40 = v39;
          v34(v35, v36);
          v41 = sub_1000343A8(v38, v40, &v70);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2082;
          sub_100035868(v0 + 56, v0 + 216);
          sub_100004CB8(&qword_100634FC8, &qword_1005266C0);
          v42 = sub_1004DD4DC();
          v44 = v43;
          sub_100008D24((v0 + 56));
          v45 = sub_1000343A8(v42, v44, &v70);

          *(v37 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v31, v32, "Resolving URL=%{public}s with handler=%{public}s", v37, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_100008D24((v0 + 56));
          v34(v35, v36);
        }

        v64 = *(v0 + 40);
        v65 = *(v0 + 48);
        sub_100008C70((v0 + 16), v64);
        v69 = (*(v65 + 8) + **(v65 + 8));
        v66 = swift_task_alloc();
        *(v0 + 376) = v66;
        *v66 = v0;
        v66[1] = sub_1002BAD08;
        v67 = *(v0 + 256);

        return v69(v67, v64, v65);
      }

      return result;
    }
  }

  (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

  v46 = sub_1004D964C();
  v47 = sub_1004DDF5C();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 336);
  v50 = *(v0 + 288);
  v51 = *(v0 + 272);
  if (v48)
  {
    v68 = v47;
    v52 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v52 = 136446466;
    sub_1002BB8BC();
    v53 = v1;
    v54 = sub_1004DEFFC();
    v56 = v55;
    v49(v50, v51);
    v57 = v54;
    v1 = v53;
    v58 = sub_1000343A8(v57, v56, &v70);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2082;
    sub_100004CB8(&qword_100634FC8, &qword_1005266C0);
    v59 = sub_1004DD88C();
    v61 = sub_1000343A8(v59, v60, &v70);

    *(v52 + 14) = v61;

    _os_log_impl(&_mh_execute_header, v46, v68, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49(v50, v51);
  }

  v62 = v1[2];

  v63 = *(v0 + 8);

  return v63(v62 != 0);
}

uint64_t sub_1002BB63C()
{
  sub_100008D24((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1002BB6D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002BB768;

  return LaunchURL.Resolver.perform(withURL:)(a1);
}

uint64_t sub_1002BB768(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t type metadata accessor for LaunchURL.Resolver(uint64_t a1)
{
  result = qword_10063D320;
  if (!qword_10063D320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002BB8BC()
{
  result = qword_100637988;
  if (!qword_100637988)
  {
    sub_1004D809C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637988);
  }

  return result;
}

unint64_t sub_1002BB918()
{
  result = qword_10063D2C0;
  if (!qword_10063D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063D2C0);
  }

  return result;
}

uint64_t sub_1002BB9B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1004D966C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002BBA70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1004D966C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002BBB14(uint64_t a1)
{
  sub_1002BBBA8(319);
  if (v1 <= 0x3F)
  {
    sub_1004D966C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002BBBA8(uint64_t a1)
{
  if (!qword_10063D330)
  {
    sub_100008DE4(&qword_100634FC8, &qword_1005266C0);
    v1 = sub_1004DD98C();
    if (!v2)
    {
      atomic_store(v1, &qword_10063D330);
    }
  }
}

uint64_t static LifecyclePatrol.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  static LifecyclePatrol.isEnabled = a1;
  return result;
}

uint64_t LifecyclePatrol.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

double LifecyclePatrol.didInit(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (static LifecyclePatrol.isEnabled == 1)
  {
    sub_1000C10F4();
    v4 = sub_1004DE14C();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;

    OS_dispatch_queue.asyncAfter(_:block:)(sub_1002BC164, v6, 1.0);
  }

  return result;
}

uint64_t sub_1002BBE70()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002BBEA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (qword_100634480 != -1)
      {
        swift_once();
      }

      v3 = sub_1004D966C();
      sub_100035430(v3, qword_10063D370);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v4 = sub_1004D964C();
      v5 = sub_1004DDF8C();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v6 = 136446722;
        swift_getObjectType();
        sub_100004CB8(&qword_10063D450, &qword_100526818);
        v7 = sub_1004DD4DC();
        v9 = sub_1000343A8(v7, v8, &v16);

        *(v6 + 4) = v9;
        *(v6 + 12) = 2082;
        v10 = sub_1004DD4DC();
        v12 = sub_1000343A8(v10, v11, &v16);

        *(v6 + 14) = v12;
        *(v6 + 22) = 2082;
        v13 = sub_1004DD4DC();
        v15 = sub_1000343A8(v13, v14, &v16);

        *(v6 + 24) = v15;
        _os_log_impl(&_mh_execute_header, v4, v5, "A new instance of %{public}s<%{public}s> while one already exists <%{public}s>", v6, 0x20u);
        swift_arrayDestroy();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectWeakAssign();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002BC124()
{

  return swift_deallocObject();
}

uint64_t LifecyclePatrol.willDeinit(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectRelease();
    if (v3 == a1)
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t LifecyclePatrol.__deallocating_deinit()
{
  sub_100010A38(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1002BC254()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_10063D370);
  sub_100035430(v0, qword_10063D370);
  return sub_1004D965C();
}

void sub_1002BC2D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_100635908, &qword_1005268E0);
    v2 = sub_1004DEDBC();
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
    sub_100010678(*(a1 + 48) + 40 * v11, v27);
    sub_10000904C(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_100010678(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_10000904C(v25 + 8, v20);
    sub_1002BF470(v24);
    v21 = v18;
    sub_100006F5C(v20, v22);
    v12 = v21;
    sub_100006F5C(v22, v23);
    sub_100006F5C(v23, &v21);
    v13 = sub_100056B84(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_100008D24(v9);
      sub_100006F5C(&v21, v9);
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
      sub_100006F5C(&v21, (v2[7] + 32 * v13));
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

  sub_1002BF470(v24);
}

void sub_1002BC590(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_10063D508, &qword_1005268C8);
    v2 = sub_1004DEDBC();
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

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_100010678(*(a1 + 48) + 40 * v11, v24);
        sub_10000904C(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_100010678(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_1002BF470(v21);

          goto LABEL_23;
        }

        sub_10000904C(v22 + 8, v20);
        sub_1002BF470(v21);
        sub_100004CB8(&qword_100635318, &qword_1005163B0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v12 = sub_100056B84(v18, v19);
        if (v13)
        {
          v8 = (v2[6] + 16 * v12);
          *v8 = v18;
          v8[1] = v19;
          v9 = v12;

          *(v2[7] + 8 * v9) = v18;

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
            goto LABEL_25;
          }

          *(v2 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
          v14 = (v2[6] + 16 * v12);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * v12) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_26;
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

LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1002BC84C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_100635948, &qword_100516C50);
    v2 = sub_1004DEDBC();
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
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_10000904C(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    sub_100006F5C(v22, v21);

    sub_100004CB8(&unk_100639F70, &unk_10051B270);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = sub_100056B84(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + 8 * v8) = v20;

      v7 = v9;
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

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + 8 * v15) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

double sub_1002BCAB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 11);
  sub_1002BD0EC(&v5[4], &v10);
  os_unfair_lock_unlock(v5 + 11);
  v7 = v10;
  if (v10)
  {
    v8 = sub_1002BD39C(v10, a1, a2);
    __chkstk_darwin();
    os_unfair_lock_lock(v5 + 11);
    sub_1002BF4D8(&v5[4], v9);
    os_unfair_lock_unlock(v5 + 11);
  }

  return result;
}

uint64_t sub_1002BCBD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void *sub_1002BCC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004D966C();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v42 - v14;
  __chkstk_darwin();
  v17 = &v42 - v16;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v18 = objc_opt_self();

  v19 = [v18 sharedBagProvider];
  LODWORD(a2) = [v19 useAMSBag];

  if (!a2)
  {
    if (qword_100633C70 != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.musicBag;
    sub_1004D967C();
    v33 = sub_1004D964C();
    v34 = sub_1004DDF9C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "UserDefaults enabled as source for cached musicTabs.", v35, 2u);
    }

    (*(v11 + 8))(v13, v10);
    goto LABEL_22;
  }

  if (qword_100633CC8 != -1)
  {
    swift_once();
  }

  v20 = static ICClientInfo.music;
  v21 = [static ICClientInfo.music bagProfile];
  if (!v21)
  {
LABEL_17:
    if (qword_100633C70 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.musicBag;
    sub_1004D967C();
    v37 = sub_1004D964C();
    v38 = sub_1004DDF8C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "    AMSBag was intended to be enabled as source for cached musicTabs, but bag profile and/or version were unexpectedly nil.\n    Defaulting to .userDefaults configuration.", v39, 2u);
    }

    (*(v11 + 8))(v15, v10);
LABEL_22:
    v29 = 0;
    v31 = 0;
    goto LABEL_23;
  }

  v22 = v21;
  v23 = [v20 bagProfileVersion];
  if (!v23)
  {

    goto LABEL_17;
  }

  v24 = v23;
  if (qword_100633C70 != -1)
  {
    swift_once();
  }

  v25 = static OS_os_log.musicBag;
  sub_1004D967C();
  v26 = sub_1004D964C();
  v27 = sub_1004DDF9C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "AMSBag enabled as source for cached musicTabs.", v28, 2u);
  }

  (*(v11 + 8))(v17, v10);
  v29 = [objc_opt_self() bagForProfile:v22 profileVersion:v24];

  v30 = v29;
  v31 = 1;
LABEL_23:
  sub_100004CB8(&qword_10063D528, &qword_1005268F8);
  v40 = swift_allocObject();
  *(v40 + 44) = 0;

  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v29;
  *(v40 + 40) = v31;
  sub_1002BF4FC(v29, 0);
  v5[2] = v40;
  return v5;
}

void sub_1002BD0EC(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(sub_1004D966C() - 8);
  __chkstk_darwin();
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) != 0 && !*(a1 + 16))
    {
      *(a1 + 16) = 1;
      *(a1 + 24) = 1;
      *a3 = v11;
      *(a3 + 8) = v12;
      *(a3 + 16) = 1;
      *(a3 + 24) = 1;

      v13 = v11;
      return;
    }

    v25 = v8;
    v14 = qword_100633C70;
    v24 = v11;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.musicBag;
    sub_1004D967C();
    v16 = sub_1004D964C();
    v17 = sub_1004DDF8C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23[1] = v4;
      v19 = v18;
      v23[0] = swift_slowAlloc();
      v26 = v23[0];
      *v19 = 136315394;
      v20 = sub_1004DF34C();
      v22 = sub_1000343A8(v20, v21, &v26);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1000343A8(0xD000000000000021, 0x80000001004F49E0, &v26);
      _os_log_impl(&_mh_execute_header, v16, v17, "    An unexpected attempt to configure an %s instance twice using %s will be ignored.", v19, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 8))(v10, v25);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
}

id sub_1002BD39C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v90 = sub_1004D966C();
  v89 = *(v90 - 8);
  __chkstk_darwin();
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v72 - v10;
  v92 = [objc_opt_self() uninitializedToken];
  v11 = *(v3 + 24);
  v12 = *(v4 + 32);
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = v11;
  *(inited + 40) = v12;

  sub_10003BFEC(inited);
  swift_setDeallocating();
  sub_1001D6868(inited + 32);
  isa = sub_1004DDC2C().super.isa;

  v15 = swift_allocObject();
  v16 = a1;
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = a2;
  v17[6] = a3;
  aBlock[4] = sub_1002BF5BC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002BF3EC;
  aBlock[3] = &unk_1005EB090;
  v18 = _Block_copy(aBlock);

  v19 = [a1 cachedValuesForKeys:isa observationToken:&v92 updateHandler:v18];
  _Block_release(v18);

  v20 = sub_1004DD21C();
  if (*(v20 + 16) && (v21 = sub_100056B84(v11, v12), (v22 & 1) != 0))
  {
    sub_10000904C(*(v20 + 56) + 32 * v21, aBlock);

    sub_100004CB8(&qword_100637300, &qword_10051B170);
    if (swift_dynamicCast())
    {
      v23 = *&v94[0];
      v24 = qword_100633C70;

      if (v24 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v25 = static OS_os_log.musicBag;
        v26 = v88;
        sub_1004D967C();

        v27 = sub_1004D964C();
        v28 = sub_1004DDF9C();

        if (!os_log_type_enabled(v27, v28))
        {

          (*(v89 + 8))(v26, v90);
          return v16;
        }

        v75 = v28;
        v76 = v27;
        v29 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v95 = v73;
        v74 = v29;
        *v29 = 136315138;
        sub_100004CB8(&qword_10063D518, &qword_1005268E8);
        v30 = sub_1004DED8C();
        v31 = v30;
        v32 = 0;
        v33 = *(v23 + 64);
        v77 = v23 + 64;
        v34 = 1 << *(v23 + 32);
        v35 = v34 < 64 ? ~(-1 << v34) : -1;
        v36 = v35 & v33;
        v37 = (v34 + 63) >> 6;
        v87 = "v16@?0@NSDictionary8";
        v82 = v30 + 64;
        v80 = v16;
        v81 = v23;
        v79 = v30;
        v78 = v37;
        if ((v35 & v33) == 0)
        {
          break;
        }

        while (1)
        {
          v38 = __clz(__rbit64(v36));
          v36 &= v36 - 1;
LABEL_16:
          v41 = v38 | (v32 << 6);
          v42 = *(v23 + 56);
          v43 = (*(v23 + 48) + 16 * v41);
          v44 = v43[1];
          v85 = *v43;
          v86 = v41;
          v45 = *(v42 + 8 * v41);
          v23 = *(v45 + 16);
          if (v23)
          {
            v84 = v36;
            v91 = _swiftEmptyArrayStorage;
            v83 = v44;

            sub_1000374EC(0, v23, 0);
            v9 = v91;
            v46 = 32;
            do
            {
              v47 = *(v45 + v46);
              *&v93[0] = 25705;
              *(&v93[0] + 1) = 0xE200000000000000;

              sub_1004DEA4C();
              if (*(v47 + 16) && (v48 = sub_100028F3C(aBlock), (v49 & 1) != 0))
              {
                sub_10000904C(*(v47 + 56) + 32 * v48, v93);
                sub_1000105EC(aBlock);
                sub_100006F5C(v93, v94);
                sub_10000904C(v94, aBlock);
                if (swift_dynamicCast())
                {
                  v51 = *(&v93[0] + 1);
                  v50 = *&v93[0];
                }

                else
                {
                  *&v93[0] = 0;
                  *(&v93[0] + 1) = 0xE000000000000000;
                  sub_1004DEAAC(23);
                  v97._object = (v87 | 0x8000000000000000);
                  v97._countAndFlagsBits = 0xD000000000000014;
                  sub_1004DD5FC(v97);
                  sub_1004DEC6C();
                  v98._countAndFlagsBits = 62;
                  v98._object = 0xE100000000000000;
                  sub_1004DD5FC(v98);

                  v51 = *(&v93[0] + 1);
                  v50 = *&v93[0];
                }

                sub_100008D24(v94);
              }

              else
              {
                sub_1000105EC(aBlock);

                v50 = 0x204449206261743CLL;
                v51 = 0xEF3E746E65736261;
              }

              v91 = v9;
              v53 = *(v9 + 2);
              v52 = *(v9 + 3);
              if (v53 >= v52 >> 1)
              {
                sub_1000374EC((v52 > 1), v53 + 1, 1);
                v9 = v91;
              }

              *(v9 + 2) = v53 + 1;
              v54 = &v9[16 * v53];
              *(v54 + 4) = v50;
              *(v54 + 5) = v51;
              v46 += 8;
              --v23;
            }

            while (v23);

            v16 = v80;
            v31 = v79;
            v37 = v78;
            v36 = v84;
            v55 = v83;
          }

          else
          {

            v9 = _swiftEmptyArrayStorage;
          }

          v56 = v86;
          *(v82 + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v86;
          v57 = (v31[6] + 16 * v56);
          *v57 = v85;
          v57[1] = v55;
          *(v31[7] + 8 * v56) = v9;
          v58 = v31[2];
          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
            break;
          }

          v31[2] = v60;
          v23 = v81;
          if (!v36)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_44:
        swift_once();
      }

LABEL_11:
      v39 = v32;
      while (1)
      {
        v32 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v32 >= v37)
        {

          sub_100004CB8(&unk_1006372E0, &unk_1005157F0);
          v66 = sub_1004DD22C();
          v68 = v67;

          v69 = sub_1000343A8(v66, v68, &v95);

          v70 = v74;
          *(v74 + 1) = v69;
          v71 = v76;
          _os_log_impl(&_mh_execute_header, v76, v75, "AMSBag provided initial state of musicTabs: %s", v70, 0xCu);
          sub_100008D24(v73);

          (*(v89 + 8))(v88, v90);
          return v16;
        }

        v40 = *(v77 + 8 * v32);
        ++v39;
        if (v40)
        {
          v38 = __clz(__rbit64(v40));
          v36 = (v40 - 1) & v40;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
  }

  if (qword_100633C70 != -1)
  {
LABEL_42:
    swift_once();
  }

  v61 = static OS_os_log.musicBag;
  sub_1004D967C();
  v62 = sub_1004D964C();
  v63 = sub_1004DDF9C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "AMSBag didn't provide initial state of musicTabs. No cached value was found.", v64, 2u);
  }

  (*(v89 + 8))(v9, v90);
  return v16;
}

id sub_1002BDDE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  sub_1002BF4FC(*a1, *(a1 + 8));
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5 & 1;

  return a2;
}

void sub_1002BDE5C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (!*a1)
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = (*(a2 + 40))(a1);

    goto LABEL_9;
  }

  v8 = a1[1];

  if (v8)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = sub_1004DD3FC();
  v10 = [a3 dictionaryForBagKey:v9];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = sub_1004DD21C();

  sub_1002BC590(v11);
  v8 = v12;

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a4 = v8;
}

uint64_t *sub_1002BDF7C()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 11);
  sub_1002BE060(&v1[4], v6);
  os_unfair_lock_unlock(v1 + 11);
  v2 = v6[0];
  v3 = v6[2];
  v4 = v7;

  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      [v2 removeObserverWithToken:v3];
    }
  }

  return v0;
}

void sub_1002BE060(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(sub_1004D966C() - 8);
  __chkstk_darwin();
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) == 0)
    {
      *a3 = v11;
      *(a3 + 8) = v12;
      *(a3 + 24) = 0;

      v27 = v11;
      return;
    }

    v29 = v8;
    v13 = v12;
    v14 = qword_100633C70;
    v15 = v11;

    if (v14 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.musicBag;
    sub_1004D967C();
    v17 = sub_1004D964C();
    v18 = sub_1004DDF8C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28[1] = v13;
      v20 = v19;
      v21 = swift_slowAlloc();
      v28[2] = v4;
      v22 = v21;
      v30 = v21;
      *v20 = 136315138;
      v23 = sub_1004DF34C();
      v25 = sub_1000343A8(v23, v24, &v30);
      v28[0] = v15;
      v26 = v25;

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "    %s wasn't configured with an AMSBag update handler prior to deallocation. This may have caused musicTabs updates to be missed after initialization.", v20, 0xCu);
      sub_100008D24(v22);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v29);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
}

uint64_t sub_1002BE2DC()
{
  sub_1002BDF7C();

  return swift_deallocClassInstance();
}

uint64_t sub_1002BE334(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1002BE34C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1002BE360(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BE3B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_1002BE41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v9 = sub_1004DBEBC();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DBEFC();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(a1 + 16);
    v30 = v14;
    v31 = v10;
    if (v20 && (v21 = sub_100056B84(a3, a4), (v22 & 1) != 0))
    {
      sub_10000904C(*(a1 + 56) + 32 * v21, aBlock);
      sub_100004CB8(&qword_100637300, &qword_10051B170);
      if (swift_dynamicCast())
      {
        v23 = v34;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v19 + 16);
    __chkstk_darwin();
    *(&v29 - 2) = v23;
    os_unfair_lock_lock(v24 + 11);
    sub_1002BF5E4(&v24[4], aBlock);
    os_unfair_lock_unlock(v24 + 11);
    if (LOBYTE(aBlock[0]) == 1)
    {
      sub_1000C10F4();
      v25 = sub_1004DE14C();
      v26 = swift_allocObject();
      v27 = v33;
      v26[2] = v32;
      v26[3] = v27;
      v26[4] = v23;
      aBlock[4] = sub_1002BF640;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100012680;
      aBlock[3] = &unk_1005EB0E0;
      v28 = _Block_copy(aBlock);

      sub_1004DBEDC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100116FD4();
      sub_100004CB8(&unk_100638950, &qword_10051B260);
      sub_1001080A0();
      sub_1004DE92C();
      sub_1004DE15C();
      _Block_release(v28);

      (*(v31 + 8))(v12, v9);
      (*(v30 + 8))(v16, v13);
    }

    else
    {
    }
  }

  return result;
}

void sub_1002BE7D4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v112 = a3;
  v5 = sub_1004D966C();
  v110 = *(v5 - 8);
  v111 = v5;
  __chkstk_darwin();
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v93 - v8;
  v10 = *a1;
  v11 = &static OS_os_log.musicBag;
  if (!*a1)
  {
    if (qword_100633C70 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.musicBag;
    sub_1004D967C();
    v51 = sub_1004D964C();
    v52 = sub_1004DDF8C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v116[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_1000343A8(0xD000000000000047, 0x80000001004F4990, v116);
      _os_log_impl(&_mh_execute_header, v51, v52, "Unexpected update handler call in %s with .userDefaults configuration. This is likely programmer error.", v53, 0xCu);
      sub_100008D24(v54);
    }

    (*(v110 + 8))(v7, v111);
    v55 = 0;
    goto LABEL_70;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 24) & 1;
  *(a1 + 8) = a2;
  *(a1 + 24) = v13;
  v14 = qword_100633C70;
  swift_bridgeObjectRetain_n();
  v106 = v10;
  if (v14 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v15 = *v11;
    sub_1004D967C();

    v16 = sub_1004D964C();
    v17 = sub_1004DDF9C();

    if (!os_log_type_enabled(v16, v17))
    {

      goto LABEL_69;
    }

    v97 = v17;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v119 = v19;
    v101 = v18;
    *v18 = 136315394;
    v108 = a2;
    v107 = v9;
    v98 = v16;
    v96 = v19;
    if (!v12)
    {
      break;
    }

    sub_100004CB8(&qword_10063D518, &qword_1005268E8);
    v20 = sub_1004DED8C();
    v21 = v20;
    v22 = 0;
    v23 = *(v12 + 64);
    v95 = v12 + 64;
    v24 = 1 << *(v12 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v11 = v25 & v23;
    v94 = (v24 + 63) >> 6;
    v113 = "v16@?0@NSDictionary8";
    v102 = v20 + 64;
    v100 = v12;
    i = v20;
    if ((v25 & v23) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_15:
        v29 = v26 | (v22 << 6);
        v30 = *(v12 + 56);
        v31 = (*(v12 + 48) + 16 * v29);
        v32 = v31[1];
        v109 = *v31;
        v33 = *(v30 + 8 * v29);
        v34 = *(v33 + 16);
        if (v34)
        {
          v104 = v29;
          v105 = v11;
          v118 = _swiftEmptyArrayStorage;
          v103 = v32;

          sub_1000374EC(0, v34, 0);
          v9 = v118;
          v35 = 32;
          v36 = v33;
          v114 = v33;
          do
          {
            v37 = *(v36 + v35);
            *&v115[0] = 25705;
            *(&v115[0] + 1) = 0xE200000000000000;

            sub_1004DEA4C();
            if (*(v37 + 16) && (v38 = sub_100028F3C(v116), v36 = v114, (v39 & 1) != 0))
            {
              sub_10000904C(*(v37 + 56) + 32 * v38, v115);
              sub_1000105EC(v116);
              sub_100006F5C(v115, &v117);
              sub_10000904C(&v117, v116);
              if (swift_dynamicCast())
              {
                v40 = *(&v115[0] + 1);
                v41 = *&v115[0];
              }

              else
              {
                *&v115[0] = 0;
                *(&v115[0] + 1) = 0xE000000000000000;
                sub_1004DEAAC(23);
                v120._object = (v113 | 0x8000000000000000);
                v120._countAndFlagsBits = 0xD000000000000014;
                sub_1004DD5FC(v120);
                sub_1004DEC6C();
                v121._countAndFlagsBits = 62;
                v121._object = 0xE100000000000000;
                sub_1004DD5FC(v121);
                v36 = v114;

                v40 = *(&v115[0] + 1);
                v41 = *&v115[0];
              }

              sub_100008D24(&v117);
            }

            else
            {
              sub_1000105EC(v116);

              v41 = 0x204449206261743CLL;
              v40 = 0xEF3E746E65736261;
            }

            v118 = v9;
            v43 = *(v9 + 16);
            v42 = *(v9 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_1000374EC((v42 > 1), v43 + 1, 1);
              v36 = v114;
              v9 = v118;
            }

            *(v9 + 16) = v43 + 1;
            v44 = v9 + 16 * v43;
            *(v44 + 32) = v41;
            *(v44 + 40) = v40;
            v35 += 8;
            --v34;
          }

          while (v34);

          a2 = v108;
          v12 = v100;
          v21 = i;
          v11 = v105;
          v29 = v104;
          v45 = v103;
        }

        else
        {

          v9 = _swiftEmptyArrayStorage;
        }

        *(v102 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v46 = (v21[6] + 16 * v29);
        *v46 = v109;
        v46[1] = v45;
        *(v21[7] + 8 * v29) = v9;
        v47 = v21[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_73;
        }

        v21[2] = v49;
        v9 = v107;
      }

      while (v11);
    }

    v27 = v22;
    while (1)
    {
      v22 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v22 >= v94)
      {
        goto LABEL_39;
      }

      v28 = *(v95 + 8 * v22);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v11 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v21 = 0;
LABEL_39:
  v116[0] = v21;
  v95 = sub_100004CB8(&qword_10063D520, &qword_1005268F0);
  v56 = sub_1004DD4DC();
  v58 = v57;

  v11 = sub_1000343A8(v56, v58, &v119);

  v59 = v101;
  *(v101 + 1) = v11;
  *(v59 + 6) = 2080;
  if (a2)
  {
    sub_100004CB8(&qword_10063D518, &qword_1005268E8);
    v60 = sub_1004DED8C();
    v61 = v60;
    v62 = *(a2 + 64);
    v94 = a2 + 64;
    v63 = 1 << *(a2 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & v62;
    v66 = (v63 + 63) >> 6;
    v113 = "v16@?0@NSDictionary8";
    v102 = v60 + 64;

    v9 = 0;
    v100 = v61;
    for (i = v66; v65; v61[2] = v87)
    {
      v67 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
LABEL_49:
      v70 = v67 | (v9 << 6);
      v71 = *(a2 + 56);
      v72 = (*(a2 + 48) + 16 * v70);
      v73 = v72[1];
      v109 = *v72;
      v12 = *(v71 + 8 * v70);
      v74 = *(v12 + 16);
      if (v74)
      {
        v104 = v70;
        v105 = v65;
        v118 = _swiftEmptyArrayStorage;
        v103 = v73;

        sub_1000374EC(0, v74, 0);
        v11 = v118;
        v75 = 32;
        v76 = v12;
        v114 = v12;
        do
        {
          v77 = *(v76 + v75);
          *&v115[0] = 25705;
          *(&v115[0] + 1) = 0xE200000000000000;

          sub_1004DEA4C();
          if (*(v77 + 16) && (v78 = sub_100028F3C(v116), v76 = v114, (v79 & 1) != 0))
          {
            sub_10000904C(*(v77 + 56) + 32 * v78, v115);
            sub_1000105EC(v116);
            sub_100006F5C(v115, &v117);
            sub_10000904C(&v117, v116);
            if (swift_dynamicCast())
            {
              v12 = *(&v115[0] + 1);
              v80 = *&v115[0];
            }

            else
            {
              *&v115[0] = 0;
              *(&v115[0] + 1) = 0xE000000000000000;
              sub_1004DEAAC(23);
              v122._object = (v113 | 0x8000000000000000);
              v122._countAndFlagsBits = 0xD000000000000014;
              sub_1004DD5FC(v122);
              sub_1004DEC6C();
              v123._countAndFlagsBits = 62;
              v123._object = 0xE100000000000000;
              sub_1004DD5FC(v123);
              v76 = v114;

              v12 = *(&v115[0] + 1);
              v80 = *&v115[0];
            }

            sub_100008D24(&v117);
          }

          else
          {
            sub_1000105EC(v116);

            v80 = 0x204449206261743CLL;
            v12 = 0xEF3E746E65736261;
          }

          v118 = v11;
          v82 = *(v11 + 16);
          v81 = *(v11 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_1000374EC((v81 > 1), v82 + 1, 1);
            v76 = v114;
            v11 = v118;
          }

          *(v11 + 16) = v82 + 1;
          v83 = v11 + 16 * v82;
          *(v83 + 32) = v80;
          *(v83 + 40) = v12;
          v75 += 8;
          --v74;
        }

        while (v74);

        a2 = v108;
        v61 = v100;
        v66 = i;
        v65 = v105;
        v70 = v104;
        v84 = v103;
      }

      else
      {

        v11 = _swiftEmptyArrayStorage;
      }

      *(v102 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      v85 = (v61[6] + 16 * v70);
      *v85 = v109;
      v85[1] = v84;
      *(v61[7] + 8 * v70) = v11;
      v86 = v61[2];
      v48 = __OFADD__(v86, 1);
      v87 = v86 + 1;
      if (v48)
      {
        goto LABEL_74;
      }
    }

    v68 = v9;
    while (1)
    {
      v9 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_72;
      }

      if (v9 >= v66)
      {

        v9 = v107;
        goto LABEL_68;
      }

      v69 = *(v94 + 8 * v9);
      ++v68;
      if (v69)
      {
        v67 = __clz(__rbit64(v69));
        v65 = (v69 - 1) & v69;
        goto LABEL_49;
      }
    }
  }

  v61 = 0;
LABEL_68:
  v116[0] = v61;
  v88 = sub_1004DD4DC();
  v90 = sub_1000343A8(v88, v89, &v119);

  v91 = v101;
  *(v101 + 14) = v90;
  v92 = v98;
  _os_log_impl(&_mh_execute_header, v98, v97, "    AMSBag provided updated musicTabs dictionary.\n    Previous: %s\n    Updated: %s", v91, 0x16u);
  swift_arrayDestroy();

LABEL_69:
  (*(v110 + 8))(v9, v111);

  v55 = 1;
LABEL_70:
  *v112 = v55;
}

double sub_1002BF3EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1004DD21C();

  v2(v3);

  return result;
}

uint64_t sub_1002BF470(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063D510, &unk_1005268D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1002BF4FC(void *a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1002BF53C(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002BF574()
{

  return swift_deallocObject();
}

double sub_1002BF5CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002BF600()
{

  return swift_deallocObject();
}

uint64_t sub_1002BF670(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1002BF6B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, int a2, int a3)
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

uint64_t sub_1002BF75C(uint64_t a1)
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

uint64_t sub_1002BF778(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t OptimisticValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *(type metadata accessor for OptimisticValue(0, a2, a4, a5) + 28);
  v11 = type metadata accessor for OptimisticValue.Transaction(0, a2, v9, v10);
  (*(*(v11 - 8) + 56))(a3 + v8, 1, 1, v11);
  v12 = *(*(a2 - 8) + 32);

  return v12(a3, a1, a2);
}

uint64_t sub_1002BF8A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = __chkstk_darwin();
  v12 = &v31 - v11;
  v13 = *(v5 + 16);
  v13(&v31 - v11, v2, v4, v10);
  v14 = v2 + *(a1 + 28);
  v17 = type metadata accessor for OptimisticValue.Transaction(0, v4, v15, v16);
  if (!(*(*(v17 - 8) + 48))(v14, 1, v17))
  {
    (*(v5 + 24))(v14 + *(v17 + 28), v12, v4);
  }

  if (qword_100634488 != -1)
  {
    swift_once();
  }

  v18 = sub_1004D966C();
  sub_100035430(v18, qword_10063D530);
  (v13)(v9, v12, v4);
  v19 = sub_1004D964C();
  v20 = sub_1004DDF9C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136446210;
    (v31)(v7, v9, v4);
    v24 = sub_1004DD4DC();
    v26 = v25;
    v31 = v12;
    v27 = *(v5 + 8);
    v27(v9, v4);
    v28 = sub_1000343A8(v24, v26, &v32);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Underlying value updated to %{public}s", v22, 0xCu);
    sub_100008D24(v23);

    return (v27)(v31, v4);
  }

  else
  {

    v30 = *(v5 + 8);
    v30(v9, v4);
    return (v30)(v12, v4);
  }
}

uint64_t OptimisticValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = type metadata accessor for OptimisticValue.Transaction(255, v7, a2, a3);
  v9 = sub_1004DE7CC();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - v11;
  v13 = *(v7 - 8);
  v14 = __chkstk_darwin();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v4 + *(a1 + 28), v9, v14);
  v17 = *(v8 - 8);
  if ((*(v17 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return (*(v13 + 16))(a4, v4, v7);
  }

  else
  {
    (*(v13 + 16))(v16, &v12[*(v8 + 32)], v7);
    (*(v17 + 8))(v12, v8);
    return (*(v13 + 32))(a4, v16, v7);
  }
}

uint64_t OptimisticValue.value.setter(uint64_t a1, uint64_t a2)
{
  sub_1002C160C(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*OptimisticValue.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v5[4] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[6] = v10;
  OptimisticValue.value.getter(a2, v11, v12, v10);
  return sub_1002BFFA0;
}

void sub_1002BFFA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v8);
    (*(v5 + 24))(v7, v3, v8);
    sub_1002BF8A0(v9, v10);
    v11 = *(v6 + 8);
    v11(v3, v8);
    v11(v4, v8);
  }

  else
  {
    (*(v5 + 24))((*a1)[1], v4, v8);
    sub_1002BF8A0(v9, v12);
    (*(v6 + 8))(v4, v8);
  }

  free(v4);
  free(v3);

  free(v2);
}

void OptimisticValue.beginTransaction(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v35 = a1;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for OptimisticValue.Transaction(0, v9, a3, a4);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v34 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v34 - v13;
  v14 = *(v9 - 8);
  __chkstk_darwin();
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v34 - v18;
  v20 = *(v14 + 16);
  v20(&v34 - v18, v6, v9, v17);
  (v20)(v16, v35, v9);
  sub_1002C04D8(v19, v16, v9, a5);
  v21 = *(a2 + 28);
  v22 = sub_1004DE7CC();
  (*(*(v22 - 8) + 8))(v6 + v21, v22);
  v23 = *(v11 + 16);
  v23(v6 + v21, a5, v10);
  (*(v11 + 56))(v6 + v21, 0, 1, v10);
  if (qword_100634488 != -1)
  {
    swift_once();
  }

  v24 = sub_1004D966C();
  sub_100035430(v24, qword_10063D530);
  v25 = v36;
  v23(v36, a5, v10);
  v26 = sub_1004D964C();
  v27 = sub_1004DDF9C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136446210;
    v23(v34, v25, v10);
    v30 = sub_1004DD4DC();
    v32 = v31;
    (*(v11 + 8))(v25, v10);
    v33 = sub_1000343A8(v30, v32, &v37);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "New transaction: %{public}s", v28, 0xCu);
    sub_100008D24(v29);
  }

  else
  {

    (*(v11 + 8))(v25, v10);
  }
}

uint64_t sub_1002C04D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = type metadata accessor for OptimisticValue.Transaction(0, a3, v8, v9);
  v13 = *(*(a3 - 8) + 32);
  v13(a4 + *(v10 + 28), a1, a3);
  v11 = a4 + *(v10 + 32);

  return (v13)(v11, a2, a3);
}

uint64_t OptimisticValue.cancelTransaction(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = *(a2 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction(0, v70, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v60 - v9;
  v10 = sub_1004DE7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v13 = &v60 - v12;
  v77 = *(v10 - 8);
  v14 = v77;
  __chkstk_darwin();
  v76 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v60 - v16;
  v18 = __chkstk_darwin();
  v20 = &v60 - v19;
  v21 = v7[2];
  v69 = a1;
  v62 = v21;
  v63 = v7 + 2;
  (v21)(&v60 - v19, a1, v6, v18);
  v65 = v7[7];
  v66 = v7 + 7;
  v65(v20, 0, 1, v6);
  v71 = a2;
  v22 = *(a2 + 28);
  v68 = v14;
  v23 = *(v14 + 16);
  v64 = v22;
  v24 = v10;
  v23(v17, v78 + v22, v10);
  v74 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v23(v13, v20, v24);
  v75 = v25;
  v23(&v13[v25], v17, v24);
  v26 = v7;
  v27 = v7[6];
  v79 = v13;
  if (v27(v13, 1, v6) == 1)
  {
    v61 = v26;
    v28 = *(v77 + 8);
    v28(v17, v24);
    v28(v20, v24);
    v29 = v79;
    v30 = v27(&v79[v75], 1, v6) == 1;
    v31 = v29;
    if (!v30)
    {
      return (*(v73 + 8))(v31, v74);
    }

    v32 = v6;
    v28(v29, v24);
LABEL_9:
    v79 = v28;
    v43 = v24;
    if (qword_100634488 != -1)
    {
      swift_once();
    }

    v44 = sub_1004D966C();
    sub_100035430(v44, qword_10063D530);
    v45 = v67;
    v46 = v69;
    v47 = v62;
    v62(v67, v69, v32);
    v48 = sub_1004D964C();
    v49 = sub_1004DDF9C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v80 = v51;
      *v50 = 136446210;
      v47(v72, v45, v32);
      v52 = v32;
      v53 = sub_1004DD4DC();
      v55 = v54;
      (v61[1])(v45, v52);
      v56 = sub_1000343A8(v53, v55, &v80);

      *(v50 + 4) = v56;
      v32 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "Cancelled transaction: %{public}s", v50, 0xCu);
      sub_100008D24(v51);
    }

    else
    {

      (v61[1])(v45, v32);
    }

    v57 = v78;
    (*(*(v70 - 8) + 24))(v78, &v46[*(v32 + 28)]);
    sub_1002BF8A0(v71, v58);
    v59 = v64;
    (v79)(v57 + v64, v43);
    return v65(v57 + v59, 1, 1, v32);
  }

  v33 = v79;
  v23(v76, v79, v24);
  v34 = &v33[v75];
  v35 = v75;
  v32 = v6;
  if (v27(v34, 1, v6) == 1)
  {
    v36 = *(v77 + 8);
    v36(v17, v24);
    v36(v20, v24);
    (v26[1])(v76, v6);
    v31 = v79;
    return (*(v73 + 8))(v31, v74);
  }

  v61 = v26;
  v38 = v79;
  v39 = v72;
  (v26[4])(v72, &v79[v35], v32);
  v40 = v76;
  LODWORD(v75) = _s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0();
  v41 = v26[1];
  v41(v39, v32);
  v42 = *(v77 + 8);
  v42(v17, v24);
  v42(v20, v24);
  v41(v40, v32);
  v28 = v42;
  result = (v42)(v38, v24);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t OptimisticValue.completeTransaction(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = *(a2 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction(0, v70, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v60 - v9;
  v10 = sub_1004DE7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v13 = &v60 - v12;
  v77 = *(v10 - 8);
  v14 = v77;
  __chkstk_darwin();
  v76 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v60 - v16;
  v18 = __chkstk_darwin();
  v20 = &v60 - v19;
  v21 = v7[2];
  v69 = a1;
  v62 = v21;
  v63 = v7 + 2;
  (v21)(&v60 - v19, a1, v6, v18);
  v65 = v7[7];
  v66 = v7 + 7;
  v65(v20, 0, 1, v6);
  v71 = a2;
  v22 = *(a2 + 28);
  v68 = v14;
  v23 = *(v14 + 16);
  v64 = v22;
  v24 = v10;
  v23(v17, v78 + v22, v10);
  v74 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v23(v13, v20, v24);
  v75 = v25;
  v23(&v13[v25], v17, v24);
  v26 = v7;
  v27 = v7[6];
  v79 = v13;
  if (v27(v13, 1, v6) == 1)
  {
    v61 = v26;
    v28 = *(v77 + 8);
    v28(v17, v24);
    v28(v20, v24);
    v29 = v79;
    v30 = v27(&v79[v75], 1, v6) == 1;
    v31 = v29;
    if (!v30)
    {
      return (*(v73 + 8))(v31, v74);
    }

    v32 = v6;
    v28(v29, v24);
LABEL_9:
    v79 = v28;
    v43 = v24;
    if (qword_100634488 != -1)
    {
      swift_once();
    }

    v44 = sub_1004D966C();
    sub_100035430(v44, qword_10063D530);
    v45 = v67;
    v46 = v69;
    v47 = v62;
    v62(v67, v69, v32);
    v48 = sub_1004D964C();
    v49 = sub_1004DDF9C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v80 = v51;
      *v50 = 136446210;
      v47(v72, v45, v32);
      v52 = v32;
      v53 = sub_1004DD4DC();
      v55 = v54;
      (v61[1])(v45, v52);
      v56 = sub_1000343A8(v53, v55, &v80);

      *(v50 + 4) = v56;
      v32 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "Completed transaction: %{public}s", v50, 0xCu);
      sub_100008D24(v51);
    }

    else
    {

      (v61[1])(v45, v32);
    }

    v57 = v78;
    (*(*(v70 - 8) + 24))(v78, &v46[*(v32 + 32)]);
    sub_1002BF8A0(v71, v58);
    v59 = v64;
    (v79)(v57 + v64, v43);
    return v65(v57 + v59, 1, 1, v32);
  }

  v33 = v79;
  v23(v76, v79, v24);
  v34 = &v33[v75];
  v35 = v75;
  v32 = v6;
  if (v27(v34, 1, v6) == 1)
  {
    v36 = *(v77 + 8);
    v36(v17, v24);
    v36(v20, v24);
    (v26[1])(v76, v6);
    v31 = v79;
    return (*(v73 + 8))(v31, v74);
  }

  v61 = v26;
  v38 = v79;
  v39 = v72;
  (v26[4])(v72, &v79[v35], v32);
  v40 = v76;
  LODWORD(v75) = _s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0();
  v41 = v26[1];
  v41(v39, v32);
  v42 = *(v77 + 8);
  v42(v17, v24);
  v42(v20, v24);
  v41(v40, v32);
  v28 = v42;
  result = (v42)(v38, v24);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t static OptimisticValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v12 = type metadata accessor for OptimisticValue(0, v10, v10, v11);
  OptimisticValue.value.getter(v12, v13, v14, v9);
  OptimisticValue.value.getter(v12, v15, v16, v7);
  v17 = sub_1004DD35C();
  v18 = *(v5 + 8);
  v18(v7, a3);
  v18(v9, a3);
  return v17 & 1;
}

uint64_t sub_1002C1588()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_10063D530);
  sub_100035430(v0, qword_10063D530);
  return sub_1004D965C();
}

uint64_t sub_1002C160C(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return sub_1002BF8A0(a2, v4);
}

uint64_t sub_1002C1674(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for OptimisticValue.Transaction(255, result, v2, v3);
    result = sub_1004DE7CC();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002C170C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1004D82AC() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v7 <= v10)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v8 + 64);
  if (v11)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 80);
  v18 = *(v6 + 80) | *(v9 + 80);
  v19 = v14 + v18;
  v20 = v15 + v17;
  v21 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v22 = v16 + ((v14 + v17 + (v20 & ~v17)) & ~v17) + (v19 & ~v18);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_16;
  }

  v25 = ((v21 + ~(-1 << v23)) >> v23) + 1;
  v21 = HIWORD(v25);
  if (v21)
  {
    v24 = *(a1 + v22);
    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 >= 2)
  {
LABEL_16:
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

LABEL_23:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v13 + (v28 | v26) + 1;
  }

LABEL_36:
  if (!v13)
  {
    return 0;
  }

LABEL_37:
  if (v7 >= v12)
  {
    v33 = *(v6 + 48);

    return v33(a1, v7, v5);
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    v29 = (a1 + v19) & ~v18;
    if (v10 >= v7)
    {
      v34 = (*(v9 + 48))(v29);
      v31 = v34 != 0;
      result = (v34 - 1);
      if (result != 0 && v31)
      {
        return result;
      }

      return 0;
    }

    v30 = (*(v6 + 48))((v20 + v29) & ~v17, v7, v5, v21);
    v31 = v30 != 0;
    result = (v30 - 1);
    if (result == 0 || !v31)
    {
      return 0;
    }
  }

  return result;
}

void sub_1002C19D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1004D82AC();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v8 + 64);
  if (v9 <= v15)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 80) | *(v13 + 80);
  v22 = *(v13 + 64) + v20;
  v23 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  if (v17)
  {
    v24 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v24 + ((v16 + v21) & ~v21);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v25 > 3)
  {
    v12 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v28 = ~v19 + a2;
    if (v25 >= 4)
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v12 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v12)
      {
        a1[v25] = v29;
      }

      return;
    }

    v29 = (v28 >> (8 * v25)) + 1;
    if (v25)
    {
      v34 = v28 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v34;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v28;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v12 == 2)
        {
          *&a1[v25] = v29;
        }

        else
        {
          *&a1[v25] = v29;
        }

        return;
      }

      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    if (v12 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v26 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
  if (!HIWORD(v26))
  {
    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v12 = v27;
    }

    else
    {
      v12 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v12 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v25] = 0;
  }

  else if (v12)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v18)
  {
    v35 = *(v11 + 56);
    v36 = a1;
    v37 = a2;
    goto LABEL_53;
  }

  v30 = (&a1[v16 + v21] & ~v21);
  if (v18 < a2)
  {
    if (v24 <= 3)
    {
      v31 = ~(-1 << (8 * v24));
    }

    else
    {
      v31 = -1;
    }

    if (v24)
    {
      v32 = v31 & (~v18 + a2);
      if (v24 <= 3)
      {
        v33 = v24;
      }

      else
      {
        v33 = 4;
      }

      bzero(v30, v24);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_46:
          *v30 = v32;
          return;
        }

LABEL_80:
        *v30 = v32;
        return;
      }

LABEL_81:
      if (v33 == 3)
      {
        *v30 = v32;
        v30[2] = BYTE2(v32);
      }

      else
      {
        *v30 = v32;
      }

      return;
    }

    return;
  }

  if (a2 < v17)
  {
    if (v15 >= v9)
    {
      v39 = *(v14 + 56);

      v39(v30, (a2 + 1));
      return;
    }

    v35 = *(v11 + 56);
    v36 = (&v30[v22] & ~v20);
    v37 = (a2 + 1);
LABEL_53:

    v35(v36, v37, v9, v7);
    return;
  }

  if (v23 <= 3)
  {
    v38 = ~(-1 << (8 * v23));
  }

  else
  {
    v38 = -1;
  }

  if (v23)
  {
    v32 = v38 & (a2 - v17);
    if (v23 <= 3)
    {
      v33 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
    }

    else
    {
      v33 = 4;
    }

    bzero(v30, v23);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_80;
    }

    goto LABEL_81;
  }
}

uint64_t sub_1002C1DF8(uint64_t a1)
{
  result = sub_1004D82AC();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002C1E80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1004D82AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1002C20CC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1004D82AC() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((*(v10 + 64) + v13 + ((v12 + v13) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

unint64_t PlayActivityFeatureIdentifier.rawValue.getter(char a1)
{
  result = 0x65645F6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x5F7972617262696CLL;
      break;
    case 3:
      result = 0x74616C69706D6F63;
      break;
    case 4:
      result = 0x7265736F706D6F63;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x726F665F6564616DLL;
      break;
    case 7:
      result = 0x736569766F6DLL;
      break;
    case 8:
      result = 0x69765F636973756DLL;
      break;
    case 9:
      result = 1936615792;
      break;
    case 10:
      result = 0x7473696C79616C70;
      break;
    case 11:
    case 12:
      result = 0x7473696C79616C70;
      break;
    case 13:
      result = 0x796C746E65636572;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x73676E6F73;
      break;
    case 16:
      result = 0x73776F6873;
      break;
    case 17:
      result = 0x7365646F73697065;
      break;
    case 18:
      result = 0x79616C705F776F6ELL;
      break;
    case 19:
      result = 0x616C705F696E696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002C2638(char *a1, char *a2)
{
  v2 = *a2;
  v3 = PlayActivityFeatureIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlayActivityFeatureIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_1002C26C0()
{
  v1 = *v0;
  sub_1004DF26C();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

double sub_1002C2724(uint64_t a1)
{
  PlayActivityFeatureIdentifier.rawValue.getter(*v1);
  sub_1004DD55C();

  return result;
}

Swift::Int sub_1002C2778()
{
  v1 = *v0;
  sub_1004DF26C();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_1002C27D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1002C2808@<X0>(unint64_t *a1@<X8>)
{
  result = PlayActivityFeatureIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004DF0DC();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1002C288C()
{
  result = qword_10063D648;
  if (!qword_10063D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063D648);
  }

  return result;
}

uint64_t PlaylistSortingController.trackListSortDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_10000DE64(*v1, v1[1]);
  return v2;
}

uint64_t PlaylistSortingController.trackListSortDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10000DE74(v6, v7);
}

uint64_t sub_1002C2A10(__int16 a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v5 = v4[1];
  result = sub_10009F3D0();
  if ((result & 1) == 0 || ((((a1 & 0x100) == 0) ^ v5) & 1) == 0)
  {
    v7 = v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange;
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 8);
      v10 = *v4;
      if (v4[1])
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }

      v8(v11 | v10);
      sub_10000DE74(v8, v9);
    }

    v12 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate;
    *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 1;
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = *v4;
    v15 = v4[1];
    v20[3] = &type metadata for Actions.SortPlaylist.TrackListSort;
    v20[4] = sub_1001CC1C8();
    v20[5] = sub_1001CC21C();
    LOBYTE(v20[0]) = v14;
    BYTE1(v20[0]) = v15;
    sub_1004DCF1C();
    if (!v16)
    {
      sub_1004DCF4C();
    }

    sub_100030C58();
    v17 = sub_1004DE87C();
    v19 = v18;

    v21._countAndFlagsBits = v17;
    v21._object = v19;
    sub_1004DD5FC(v21);

    NSUserDefaults.encodeValue(_:forKey:)(v20, 0x2D74726F53, 0xE500000000000000);

    result = sub_100008D24(v20);
    *(v2 + v12) = 0;
  }

  return result;
}

uint64_t PlaylistSortingController.currentTrackListSort.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | *v1;
}

uint64_t PlaylistSortingController.currentTrackListSort.setter(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_1002C2A10(v6 | v4);
}

void (*PlaylistSortingController.currentTrackListSort.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 40) = *v6;
  *(v4 + 41) = v7;
  return sub_1002C2DA4;
}

void sub_1002C2DA4(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 41);
  v4 = *v2;
  v5 = v2[1];
  *v2 = *(*a1 + 40);
  v2[1] = v3;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_1002C2A10(v6 | v4);

  free(v1);
}

void *PlaylistSortingController.init(_:)(uint64_t a1)
{
  v2 = v1;
  sub_100004CB8(&qword_100637A00, &qword_100518D00);
  __chkstk_darwin();
  v5 = &v39 - v4;
  v6 = sub_1004DD05C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort) = 256;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = 0;
  sub_1000108DC(a1, v5, &qword_100637A00, &qword_100518D00);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001074C(a1, &qword_100637A00, &qword_100518D00);
    sub_10001074C(v5, &qword_100637A00, &qword_100518D00);
LABEL_15:
    sub_10000DE74(*(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_1004DC7AC();
  sub_1004DC79C();
  sub_1004DC63C();

  v11 = sub_1004DC73C();

  if ((v11 & 1) == 0)
  {
    sub_10001074C(a1, &qword_100637A00, &qword_100518D00);
    (*(v7 + 8))(v9, v6);
    goto LABEL_15;
  }

  (*(v7 + 16))(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist, v9, v6);
  v39 = objc_opt_self();
  v12 = [v39 standardUserDefaults];
  v43 = 0x2D74726F53;
  v44 = 0xE500000000000000;
  v13 = sub_1004DCF1C();
  v40 = a1;
  if (!v14)
  {
    v13 = sub_1004DCF4C();
  }

  v49 = v13;
  v50 = v14;
  v47 = 46;
  v48 = 0xE100000000000000;
  v45 = 45;
  v46 = 0xE100000000000000;
  v15 = sub_100030C58();
  v16 = sub_1004DE87C();
  v18 = v17;

  v51._countAndFlagsBits = v16;
  v51._object = v18;
  sub_1004DD5FC(v51);

  sub_1001CC1C8();
  sub_1001CC21C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, &v45);

  if ((v45 & 0xFF00) == 0x200)
  {
    v19 = [v39 standardUserDefaults];
    v20 = sub_1004DCF1C();
    if (!v21)
    {
      v20 = sub_1004DCF4C();
    }

    v43 = v20;
    v44 = v21;
    v49 = 46;
    v50 = 0xE100000000000000;
    v47 = 45;
    v48 = 0xE100000000000000;
    LOBYTE(v22) = 1;
    v23 = sub_1004DE87C();
    v25 = v24;

    v26 = NSUserDefaults.sortType(for:keyDomain:)(194, v23, v25);

    v27 = 0;
    if (v26 <= 6u)
    {
      switch(v26)
      {
        case 1u:
          v27 = 0;
          LOBYTE(v22) = 0;
          break;
        case 2u:
          v27 = 1;
          break;
        case 6u:
          v27 = 2;
          break;
      }

      goto LABEL_25;
    }

    switch(v26)
    {
      case 7u:
        v27 = 3;
        break;
      case 0xBu:
        goto LABEL_21;
      case 0xCu:
        LOBYTE(v22) = 0;
LABEL_21:
        v27 = 4;
        break;
    }
  }

  else
  {
    v27 = v45;
    v22 = BYTE1(v45) & 1;
  }

LABEL_25:
  v28 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  *v28 = v27;
  v28[1] = v22;
  v49 = 0x2D74726F53;
  v50 = 0xE500000000000000;
  v29 = sub_1004DCF1C();
  if (!v30)
  {
    v29 = sub_1004DCF4C();
  }

  v31 = v29;
  v32 = v30;
  v39 = sub_1002C35B0();
  v47 = v31;
  v48 = v32;
  v45 = 46;
  v46 = 0xE100000000000000;
  v41 = 45;
  v42 = 0xE100000000000000;
  v33 = sub_1004DE87C();
  v35 = v34;

  v52._countAndFlagsBits = v33;
  v52._object = v35;
  sub_1004DD5FC(v52);

  v36 = swift_allocObject();
  swift_weakInit();

  v37 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v49, 0, 0, sub_1002C3A20, v36, &type metadata for String, v15);

  sub_10001074C(v40, &qword_100637A00, &qword_100518D00);

  (*(v7 + 8))(v9, v6);

  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = v37;

  return v2;
}

unint64_t sub_1002C35B0()
{
  result = qword_10063D678;
  if (!qword_10063D678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10063D678);
  }

  return result;
}

uint64_t sub_1002C35FC(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_1002C3634(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v4 = v15 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) & 1) == 0)
    {
      v7 = Strong;
      sub_1000108DC(a1, v16, &qword_100638E60, &unk_10051A920);
      if (!v17)
      {

        sub_10001074C(v16, &qword_100638E60, &unk_10051A920);
        return result;
      }

      if (swift_dynamicCast())
      {
        v9 = v15[1];
        v8 = v15[2];
        sub_1004D7AAC();
        swift_allocObject();
        sub_1004D7A9C();
        sub_1001CC1C8();
        sub_1004D7A8C();

        v10 = v16[0];
        v11 = v16[1];
        v12 = sub_1004DDA8C();
        (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
        sub_1004DDA4C();

        v13 = sub_1004DDA3C();
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = &protocol witness table for MainActor;
        *(v14 + 32) = v7;
        *(v14 + 40) = v10;
        *(v14 + 41) = v11;
        sub_10011F560(0, 0, v4, &unk_100526CF0, v14);

        sub_100010598(v9, v8);
      }
    }
  }

  return result;
}

uint64_t sub_1002C3A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  sub_1004DDA4C();
  *(v5 + 48) = sub_1004DDA3C();
  v7 = sub_1004DD9BC();

  return _swift_task_switch(sub_1002C3AC4, v7, v6);
}

uint64_t sub_1002C3AC4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = HIBYTE(v1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_1002C2A10(v6 | v4);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t PlaylistSortingController.actionBuilder.getter()
{
  sub_100004CB8(&qword_100636058, &unk_10051DBE0);
  __chkstk_darwin();
  v66 = v52 - v1;
  v65 = type metadata accessor for Actions.SortPlaylist.Context(0);
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v62 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = v52 - v3;
  v63 = v4;
  __chkstk_darwin();
  v57 = v52 - v5;
  v60 = sub_100004CB8(&qword_100635B30, &unk_10051DEB0);
  v59 = *(v60 - 8);
  __chkstk_darwin();
  v56 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v52 - v7;
  __chkstk_darwin();
  v54 = v52 - v8;
  v58 = v9;
  __chkstk_darwin();
  v11 = v52 - v10;
  v67 = v0;
  v52[1] = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v53 = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  swift_beginAccess();
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v71 = xmmword_100511DA0;
  do
  {
    v70 = v13;
    v69 = v12;
    v14 = *(&off_1005D3E48 + v12 + 32);
    v15 = *v53;
    v16 = v53[1];
    v17 = v66;
    sub_1004DCF0C();
    v18 = v65;
    v19 = *(v65 + 24);
    v20 = sub_1004DCEEC();
    v21 = v57;
    (*(*(v20 - 8) + 56))(&v57[v19], 1, 1, v20);
    *v21 = v14;
    v21[1] = v15;
    v21[2] = v16;
    v22 = v67;

    sub_1000A068C(v17, &v21[v19]);
    v23 = &v21[*(v18 + 28)];
    *v23 = sub_1002C48CC;
    v23[1] = v22;
    v24 = v61;
    sub_1000A0A80(v21, v61);
    v25 = v14 + 14;
    v68 = v14 + 14;
    v26 = v62;
    sub_1000A0A80(v21, v62);
    v27 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v28 = swift_allocObject();
    sub_1000A0DDC(v26, v28 + v27);
    sub_1000A0DDC(v24, v11);
    v29 = v60;
    v11[*(v60 + 36)] = v25;
    *&v11[v29[11]] = 0x4014000000000000;
    v30 = &v11[v29[10]];
    *v30 = variable initialization expression of _NSRange.NSRangeIterator.current;
    v30[1] = 0;
    v31 = &v11[v29[12]];
    *v31 = &unk_100517F60;
    *(v31 + 1) = v28;
    v32 = &v11[v29[13]];
    *v32 = &unk_100517F68;
    *(v32 + 1) = 0;
    sub_1002C4AF8(v21);
    sub_100004CB8(&qword_1006350A8, &qword_100516EF0);
    inited = swift_initStackObject();
    *(inited + 16) = v71;
    v34 = v54;
    sub_1000108DC(v11, v54, &qword_100635B30, &unk_10051DEB0);
    v35 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v36 = swift_allocObject();
    sub_1002C4B54(v34, v36 + v35);
    v37 = v55;
    sub_1000108DC(v11, v55, &qword_100635B30, &unk_10051DEB0);
    v38 = swift_allocObject();
    sub_1002C4B54(v37, v38 + v35);
    v39 = v56;
    sub_1000108DC(v11, v56, &qword_100635B30, &unk_10051DEB0);
    v40 = swift_allocObject();
    sub_1002C4B54(v39, v40 + v35);
    *(inited + 32) = v68;
    *(inited + 40) = sub_1002C4BC4;
    *(inited + 48) = v36;
    *(inited + 56) = sub_1002C4C40;
    *(inited + 64) = v38;
    *(inited + 72) = &unk_100526B48;
    *(inited + 80) = v40;
    v13 = v70;
    sub_10001074C(v11, &qword_100635B30, &unk_10051DEB0);
    sub_100004CB8(&qword_100634FB0, &unk_100515720);
    v41 = swift_initStackObject();
    *(v41 + 16) = v71;
    *(v41 + 32) = inited;
    v42 = v41 + 32;
    v43 = sub_100046EC0();
    swift_setDeallocating();
    sub_10001074C(v42, &qword_100634FB8, &unk_100516F30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10003B6E8(0, v13[2] + 1, 1, v13);
    }

    v45 = v13[2];
    v44 = v13[3];
    v46 = v69;
    if (v45 >= v44 >> 1)
    {
      v13 = sub_10003B6E8((v44 > 1), v45 + 1, 1, v13);
    }

    v12 = v46 + 1;
    v13[2] = v45 + 1;
    v13[v45 + 4] = v43;
  }

  while (v12 != 5);
  v47 = sub_100046EC0();

  v48 = swift_initStackObject();
  *(v48 + 16) = v71;
  *(v48 + 32) = v47;
  v49 = v48 + 32;
  v50 = sub_100046EC0();
  swift_setDeallocating();
  sub_10001074C(v49, &qword_100634FB8, &unk_100516F30);
  return v50;
}

uint64_t sub_1002C42EC(__int16 a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_1002C2A10(v6 | v4);
}

double static PlaylistSortingController.apply(for:to:)(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100637A00, &qword_100518D00);
  __chkstk_darwin();
  v4 = &v8 - v3;
  v5 = sub_1004DD05C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_allocObject();
  if (PlaylistSortingController.init(_:)(v4))
  {
    PlaylistSortingController.apply(to:)();
  }

  return result;
}

double PlaylistSortingController.apply(to:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v2 = *v1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      swift_getKeyPath();
      sub_100004CB8(&qword_10063D680, &qword_100526B78);
      sub_1004DC1EC();

      swift_getKeyPath();
      sub_1004DC1EC();
    }

    else
    {
      if (v2 != 3)
      {
        swift_getKeyPath();
        sub_100004CB8(&qword_10063D680, &qword_100526B78);
        sub_1004DC1EC();
        goto LABEL_10;
      }

      swift_getKeyPath();
      sub_100004CB8(&qword_10063D680, &qword_100526B78);
      sub_1004DC1EC();
    }

    swift_getKeyPath();
    sub_1004DC1EC();
LABEL_10:

LABEL_12:
    swift_getKeyPath();
    goto LABEL_13;
  }

  if (*v1)
  {
    swift_getKeyPath();
    sub_100004CB8(&qword_10063D680, &qword_100526B78);
    sub_1004DC1EC();

    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_100004CB8(&qword_10063D680, &qword_100526B78);
LABEL_13:
  sub_1004DC1EC();

  return result;
}

uint64_t PlaylistSortingController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = sub_1004DD05C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000DE74(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

  return v0;
}

uint64_t PlaylistSortingController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = sub_1004DD05C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000DE74(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_1002C4848()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_10063D650);
  sub_100035430(v0, qword_10063D650);
  return sub_1004D965C();
}

uint64_t sub_1002C48D8()
{
  v1 = type metadata accessor for Actions.SortPlaylist.Context(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 24);
  v4 = sub_1004DCEEC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1002C4A14(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Actions.SortPlaylist.Context(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035C88;

  return sub_1000A0AE4(a1, a2, v2 + v7);
}

uint64_t sub_1002C4AF8(uint64_t a1)
{
  v2 = type metadata accessor for Actions.SortPlaylist.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C4B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100635B30, &unk_10051DEB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C4BC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_100004CB8(&qword_100635B30, &unk_10051DEB0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000604E8(v4, a1);
}

uint64_t sub_1002C4C40()
{
  v1 = *(sub_100004CB8(&qword_100635B30, &unk_10051DEB0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10006051C(v2);
}

uint64_t sub_1002C4CB0()
{
  v2 = *(sub_100004CB8(&qword_100635B30, &unk_10051DEB0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100035B28;

  return sub_100060A30(v0 + v3);
}

uint64_t sub_1002C4E00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100008C70(a1, a1[3]);
  result = sub_1004D8BBC();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1002C4E68@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_100008C70(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1002C4EC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100008C70(a1, a1[3]);
  result = sub_1004D8BCC();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for PlaylistSortingController(uint64_t a1)
{
  result = qword_10063D6B0;
  if (!qword_10063D6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002C4F5C(uint64_t a1)
{
  result = sub_1004DD05C();
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

uint64_t sub_1002C5014()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002C5054(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100035B28;

  return sub_1002C3A28(a1, v4, v5, v6, v8 | v7);
}

double QRCode.init(data:errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1002C5B7C(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t QRCode.data.getter()
{
  v1 = *(v0 + 8);
  sub_100010530(v1, *(v0 + 16));
  return v1;
}

void sub_1002C51D4(void *a1, void *a2, CGImage *a3, uint64_t a4, CGContext *a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11)
{
  [a1 beginPage];
  v69 = a1;
  v19 = [a1 CGContext];
  if (qword_100634498 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v20 = *&qword_10063D758;
    CGContextSetLineWidth(v19, *&qword_10063D758);

    v21 = objc_opt_self();
    v22 = [v21 whiteColor];
    [v22 setStroke];

    v23 = [v21 whiteColor];
    [v23 setFill];

    v24 = v20 * a6;
    v72.origin.x = a7;
    v72.origin.y = a8;
    v72.size.width = a9;
    v72.size.height = a10;
    v25 = CGRectGetWidth(v72) - v20 * a6;
    v73.origin.x = a7;
    v73.origin.y = a8;
    v73.size.width = a9;
    a9 = v20;
    v73.size.height = a10;
    v26 = CGRectGetHeight(v73) - v20 * a6;
    sub_100004CB8(&qword_100638368, &qword_10051D000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511A40;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v24;
    *(inited + 56) = v24;
    v65 = v25;
    *(inited + 64) = v25;
    *(inited + 72) = 0;
    *(inited + 80) = v24;
    *(inited + 88) = v24;
    *(inited + 96) = 0;
    v67 = v26;
    *(inited + 104) = v26;
    *(inited + 112) = v24;
    *(inited + 120) = v24;
    v28 = objc_opt_self();
    v29 = *(inited + 32);
    v30 = *(inited + 40);
    a10 = *(inited + 48);
    v31 = *(inited + 56);
    v74.origin.x = v29;
    v74.origin.y = v30;
    v74.size.width = a10;
    v74.size.height = v31;
    v66 = a9 * 0.5;
    v75 = CGRectInset(v74, a9 * 0.5, a9 * 0.5);
    v32 = [v28 _bezierPathWithPillRect:v75.origin.x cornerRadius:{v75.origin.y, v75.size.width, v75.size.height, 10.0}];
    if (v32)
    {
      v33 = v32;
      [v32 setLineWidth:a9];
      [v33 stroke];
      v64 = a9;
      v34 = a9 * a11;
      v76.origin.x = v29;
      v76.origin.y = v30;
      v76.size.width = a10;
      v76.size.height = v31;
      v35 = v34 * 0.5;
      v63 = CGRectGetMidX(v76) - v34 * 0.5;
      v77.origin.x = v29;
      v77.origin.y = v30;
      v77.size.width = a10;
      v77.size.height = v31;
      MidY = CGRectGetMidY(v77);
      v37 = v34;
      v38 = v34;
      a9 = v64;
      v39 = [v28 _bezierPathWithPillRect:v63 cornerRadius:{MidY - v35, v37, v38, 2.0}];
      [v39 fill];
    }

    v78.origin.y = 0.0;
    a8 = v66;
    v78.origin.x = v65;
    v78.size.width = v24;
    v78.size.height = v24;
    v79 = CGRectInset(v78, v66, v66);
    v40 = [v28 _bezierPathWithPillRect:v79.origin.x cornerRadius:{v79.origin.y, v79.size.width, v79.size.height, 10.0}];
    if (v40)
    {
      v41 = v40;
      [v40 setLineWidth:a9];
      [v41 stroke];
      v80.origin.y = 0.0;
      v80.origin.x = v65;
      v80.size.width = v24;
      v80.size.height = v24;
      a10 = CGRectGetMidX(v80) - a9 * a11 * 0.5;
      v81.origin.y = 0.0;
      v81.origin.x = v65;
      v81.size.width = v24;
      v81.size.height = v24;
      v42 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v81) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v42 fill];
    }

    else
    {
    }

    v82.origin.x = 0.0;
    v82.origin.y = v67;
    v82.size.width = v24;
    v82.size.height = v24;
    v83 = CGRectInset(v82, v66, v66);
    v43 = [v28 _bezierPathWithPillRect:v83.origin.x cornerRadius:{v83.origin.y, v83.size.width, v83.size.height, 10.0}];
    if (v43)
    {
      v44 = v43;
      [v43 setLineWidth:a9];
      [v44 stroke];
      v84.origin.x = 0.0;
      v84.origin.y = v67;
      v84.size.width = v24;
      v84.size.height = v24;
      a10 = CGRectGetMidX(v84) - a9 * a11 * 0.5;
      v85.origin.x = 0.0;
      v85.origin.y = v67;
      v85.size.width = v24;
      v85.size.height = v24;
      v45 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v85) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v45 fill];
    }

    [a2 extent];
    Height = CGRectGetHeight(v86);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (Height <= -9.22337204e18)
    {
      goto LABEL_69;
    }

    if (Height >= 9.22337204e18)
    {
      goto LABEL_70;
    }

    v47 = Height;
    if (Height < 1)
    {
      goto LABEL_71;
    }

    v19 = a5;
    if (Height == 1)
    {
      return;
    }

    v48 = a6;
    a7 = a9 + -1.0;
    v49 = 1;
    *&a11 = Height;
    while (1)
    {
      if (v49 == v47)
      {
        goto LABEL_62;
      }

      [a2 extent];
      Width = CGRectGetWidth(v87);
      if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (Width <= -9.22337204e18)
      {
        goto LABEL_64;
      }

      if (Width >= 9.22337204e18)
      {
        goto LABEL_65;
      }

      v51 = Width;
      if (Width < 1)
      {
        goto LABEL_66;
      }

      if (Width != 1)
      {
        for (i = 1; v51 != i; ++i)
        {
          BytesPerRow = CGImageGetBytesPerRow(a3);
          v55 = BytesPerRow * v49;
          if ((BytesPerRow * v49) >> 64 != (BytesPerRow * v49) >> 63)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v56 = i * a4;
          if ((i * a4) >> 64 != (i * a4) >> 63)
          {
            goto LABEL_49;
          }

          v57 = __OFADD__(v55, v56);
          v58 = v55 + v56;
          if (v57)
          {
            goto LABEL_50;
          }

          if (!*(v19 + v58))
          {
            if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_51;
            }

            if (a6 <= -9.22337204e18)
            {
              goto LABEL_52;
            }

            if (a6 >= 9.22337204e18)
            {
              goto LABEL_53;
            }

            [a2 extent];
            v59 = CGRectGetWidth(v89);
            if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_54;
            }

            if (v59 <= -9.22337204e18)
            {
              goto LABEL_55;
            }

            if (v59 >= 9.22337204e18)
            {
              goto LABEL_56;
            }

            v60 = v59;
            if (v49 <= v48)
            {
              if (i <= v48)
              {
                continue;
              }

              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_60;
              }

              if (__OFSUB__(v61, 1))
              {
                goto LABEL_61;
              }

              if (i >= v61 - 1)
              {
                continue;
              }
            }

            else
            {
              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_57;
              }
            }

            v57 = __OFSUB__(v61, 1);
            v62 = v61 - 1;
            if (v57)
            {
              goto LABEL_58;
            }

            if (v49 < v62 || i > v48)
            {
              if (__OFSUB__(i, 1))
              {
                goto LABEL_59;
              }

              a10 = a9 * (i - 1);
              v53 = [v69 CGContext];
              v88.origin.x = a10;
              v88.origin.y = a9 * (v49 - 1);
              v88.size.width = a9 + -1.0;
              v88.size.height = a9 + -1.0;
              CGContextFillEllipseInRect(v53, v88);

              v19 = a5;
            }
          }
        }
      }

      ++v49;
      v47 = *&a11;
      if (v49 == *&a11)
      {
        return;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

double QRCode.with(errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_100010530(v6, v5);
  sub_1002C5B7C(v6, v5, a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

double QRCode.dotAdjustedWidth(with:scale:)(uint64_t a1, double a2, double a3)
{
  v4 = *v3;
  UIRoundToScale();
  return v5 * v4;
}

CGMutablePathRef QRCode.dotAlignedPath(with:in:imageBounds:)(char *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v20.origin.x = a6;
  v20.origin.y = a7;
  v20.size.width = a8;
  v20.size.height = a9;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);

  result = CGPathCreateMutable();
  v15 = *(a1 + 2);
  if (v15)
  {
    v16 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > *(a1 + 3) >> 1)
    {
      a1 = sub_10003B840(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    }

    sub_100154F34(0, 1, 0);
    sub_1004DE03C();
    v18 = *(a1 + 2);
    if (v18)
    {
      v19 = a1 + 40;
      do
      {
        sub_1004DE04C();
        v19 += 16;
        --v18;
      }

      while (v18);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002C5B7C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = objc_opt_self();
  sub_100010530(a1, a2);
  v9 = [v8 QRCodeGenerator];
  isa = sub_1004D80FC().super.isa;
  sub_100010598(a1, a2);
  v11 = sub_1004DD3FC();
  [v9 setValue:isa forKey:v11];

  v12 = v9;
  v13 = sub_1004DD3FC();

  v14 = sub_1004DD3FC();
  [v12 setValue:v13 forKey:v14];

  v15 = [v12 outputImage];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v55 = a3;
  v17 = [objc_allocWithZone(CIContext) init];
  [v16 extent];
  v18 = [v17 createCGImage:v16 fromRect:?];

  if (!v18)
  {

LABEL_18:
LABEL_19:
    v21 = 0;
LABEL_20:
    v31 = 0;
    goto LABEL_21;
  }

  v19 = CGImageGetDataProvider(v18);
  if (!v19)
  {

    goto LABEL_19;
  }

  v20 = v19;
  v21 = CGDataProviderCopyData(v19);

  if (!v21)
  {

    goto LABEL_20;
  }

  v53 = v21;
  BytePtr = CFDataGetBytePtr(v21);
  if (BytePtr)
  {
    v23 = BytePtr;
    v24 = CGImageGetBitsPerPixel(v18) / 8;
    v25 = Int.seconds.getter(7);
    v26 = Int.seconds.getter(3);
    [v16 extent];
    v27 = CGRectGetWidth(v57) + -2.0;
    if (qword_100634498 != -1)
    {
      swift_once();
    }

    v28 = *&qword_10063D758;
    v29 = v27 * *&qword_10063D758;
    [v16 extent];
    v30 = v28 * (CGRectGetHeight(v58) + -2.0);
    v54 = [objc_allocWithZone(UIGraphicsPDFRenderer) initWithBounds:{0.0, 0.0, v29, v30}];
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = v29;
    *(v31 + 48) = v30;
    *(v31 + 56) = v26;
    *(v31 + 64) = v16;
    *(v31 + 72) = v18;
    *(v31 + 80) = v24;
    *(v31 + 88) = v23;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1002C62D0;
    *(v32 + 24) = v31;
    aBlock[4] = sub_10001E39C;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001E3C4;
    aBlock[3] = &unk_1005EB528;
    v33 = _Block_copy(aBlock);

    v52 = v16;
    v51 = v18;

    v34 = [v54 PDFDataWithActions:v33];
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
      goto LABEL_31;
    }

    v35 = sub_1004D810C();
    v37 = v36;

    v38 = sub_1004D80FC().super.isa;
    v39 = CGDataProviderCreateWithCFData(v38);

    if (v39)
    {
      v40 = CGPDFDocumentCreateWithProvider(v39);
      if (v40)
      {
        v41 = v40;
        v42 = CGPDFDocumentGetPage(v40, 1uLL);
        if (v42)
        {
          v50 = v42;
          v43 = [objc_opt_self() _imageWithCGPDFPage:v42];
          if (v43)
          {
            v44 = v43;
            [v52 extent];
            Width = CGRectGetWidth(v59);

            sub_100010598(v35, v37);
            v46 = Width + -2.0;
            if (COERCE__INT64(fabs(Width + -2.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v47 = v55;
              if (v46 > -9.22337204e18)
              {
                if (v46 < 9.22337204e18)
                {
                  v48 = v46;
                  sub_100010530(a1, a2);
                  v49 = v44;
                  sub_100010598(a1, a2);

LABEL_22:
                  *a4 = v48;
                  a4[1] = a1;
                  a4[2] = a2;
                  a4[3] = v44;
                  a4[4] = v47;
                  return;
                }

                goto LABEL_33;
              }

LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_100010598(v35, v37);
        }

        else
        {

          sub_100010598(v35, v37);
        }
      }

      else
      {

        sub_100010598(v35, v37);
      }
    }

    else
    {

      sub_100010598(v35, v37);
    }

    v21 = sub_1002C62D0;
LABEL_21:
    sub_100010598(a1, a2);
    sub_10000DE74(v21, v31);
    v48 = 0;
    a1 = 0;
    a2 = 0;
    v44 = 0;
    v47 = 0;
    goto LABEL_22;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1002C6290()
{

  return swift_deallocObject();
}

double sub_1002C62F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t *OS_os_log.sharePlay.unsafeMutableAddressor()
{
  if (qword_1006344B0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sharePlay;
}

uint64_t static OSSignposter.music(_:)(uint64_t a1, uint64_t a2)
{

  return sub_1004D95DC();
}

uint64_t static OSSignposter.music(_:)(void *a1)
{
  sub_1004D966C();
  __chkstk_darwin();
  v2 = a1;
  sub_1004D967C();
  return sub_1004D95BC();
}

uint64_t sub_1002C647C()
{
  v0 = sub_1004D95EC();
  sub_100035718(v0, static OSSignposter.launch);
  sub_100035430(v0, static OSSignposter.launch);
  return sub_1004D95DC();
}

uint64_t sub_1002C6514(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1004D95EC();

  return sub_100035430(v4, a2);
}

void sub_1002C658C()
{
  sub_1004D966C();
  __chkstk_darwin();
  v0 = sub_1004D95EC();
  sub_100035718(v0, static OSSignposter.sharePlay);
  sub_100035430(v0, static OSSignposter.sharePlay);
  if (qword_1006344B0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;
  sub_1004D967C();
  sub_1004D95BC();
}

uint64_t sub_1002C66A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1004D95EC();
  v7 = sub_100035430(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1002C673C()
{
  sub_10014D868();
  result = sub_1004DE7BC();
  static OS_os_log.sharePlay = result;
  return result;
}

id static OS_os_log.sharePlay.getter()
{
  if (qword_1006344B0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;

  return v1;
}

uint64_t sub_1002C6800()
{
  sub_1002CB8C8(v0, v8);
  if (v9 == 1)
  {
    v1 = *&v8[0];
    v2 = MPModelObject.mediaKitPlayableKind.getter();

    return *&aSongs_4[8 * v2];
  }

  else
  {
    sub_1000ABC20(v8, v6);
    v4 = v7;
    sub_100008C70(v6, v7);
    v5 = sub_1002C68B4(v4);
    sub_100008D24(v6);
    return v5;
  }
}

uint64_t sub_1002C68B4(uint64_t a1)
{
  v97 = sub_1004DD01C();
  v96 = *(v97 - 8);
  __chkstk_darwin();
  v91 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v87 - v4;
  v101 = sub_1004DCAAC();
  v95 = *(v101 - 8);
  __chkstk_darwin();
  v94 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v87 - v6;
  v103 = sub_1004D8BFC();
  v100 = *(v103 - 8);
  __chkstk_darwin();
  v99 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v87 - v8;
  v106 = sub_1004D916C();
  v102 = *(v106 - 8);
  __chkstk_darwin();
  v105 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1004D911C();
  v104 = *(v109 - 8);
  __chkstk_darwin();
  v108 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1004D91EC();
  v107 = *(v112 - 8);
  __chkstk_darwin();
  v111 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1004D92AC();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v114 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1004DCD1C();
  v113 = *(v118 - 8);
  __chkstk_darwin();
  v117 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1004DC95C();
  v116 = *(v120 - 8);
  __chkstk_darwin();
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1004DD05C();
  v119 = *(v123 - 8);
  __chkstk_darwin();
  v122 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1004DC2DC();
  v121 = *(v125 - 8);
  __chkstk_darwin();
  v133 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1004D8FEC();
  v124 = *(v128 - 8);
  __chkstk_darwin();
  v127 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1004DCA0C();
  v126 = *(v132 - 8);
  __chkstk_darwin();
  v131 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 - 8);
  __chkstk_darwin();
  v92 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v87 - v22;
  __chkstk_darwin();
  v130 = &v87 - v24;
  __chkstk_darwin();
  v26 = &v87 - v25;
  if (qword_1006344B8 != -1)
  {
    swift_once();
  }

  v27 = sub_1004D966C();
  v28 = sub_100035430(v27, static Logger.capabilityUpsell);
  v30 = v20 + 16;
  v29 = *(v20 + 16);
  v135 = v1;
  v29(v26, v1, a1);
  v90 = v28;
  v31 = sub_1004D964C();
  v32 = sub_1004DDF6C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v89 = v23;
    v34 = v33;
    v35 = swift_slowAlloc();
    v129 = v20;
    v87 = v35;
    v137 = v35;
    *v34 = 136315138;
    v29(v130, v26, a1);
    v36 = sub_1004DD4DC();
    v88 = v15;
    v37 = a1;
    v39 = v38;
    v136 = *(v129 + 8);
    v136(v26, v37);
    v40 = sub_1000343A8(v36, v39, &v137);
    a1 = v37;
    v15 = v88;

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "MusicItem - mediaKind =%s", v34, 0xCu);
    sub_100008D24(v87);

    v23 = v89;
  }

  else
  {

    v136 = *(v20 + 8);
    v136(v26, a1);
  }

  v41 = v132;
  v42 = v135;
  v132 = v30;
  v29(v23, v135, a1);
  v43 = v131;
  v44 = swift_dynamicCast();
  v46 = v133;
  v45 = v134;
  if (!v44)
  {
    v48 = v29;
    v49 = v127;
    v50 = v128;
    if (swift_dynamicCast())
    {
      (*(v124 + 8))(v49, v50);
      v47 = 0x6F6D2D636973756DLL;
      goto LABEL_36;
    }

    v51 = v125;
    if (swift_dynamicCast())
    {
      (*(v121 + 8))(v46, v51);
      v47 = 0x69762D636973756DLL;
      goto LABEL_36;
    }

    v53 = v122;
    v52 = v123;
    if (swift_dynamicCast())
    {
      (*(v119 + 8))(v53, v52);
      v47 = 0x7473696C79616C70;
      goto LABEL_36;
    }

    v54 = v15;
    v55 = v120;
    if (swift_dynamicCast())
    {
      (*(v116 + 8))(v54, v55);
      v47 = 0x73676E6F73;
      goto LABEL_36;
    }

    v56 = v117;
    v57 = v118;
    if (swift_dynamicCast())
    {
      (*(v113 + 8))(v56, v57);
      v47 = 0x736E6F6974617473;
      goto LABEL_36;
    }

    v58 = v114;
    v59 = v115;
    if (swift_dynamicCast())
    {
      (*(v110 + 8))(v58, v59);
      v47 = 0x6F736970652D7674;
      goto LABEL_36;
    }

    v60 = v111;
    v61 = v112;
    if (swift_dynamicCast())
    {
      (*(v107 + 8))(v60, v61);
      v47 = 0x73776F68732D7674;
      goto LABEL_36;
    }

    v62 = v108;
    v63 = v109;
    if (swift_dynamicCast())
    {
      v47 = 0x646564616F6C7075;
      (*(v104 + 8))(v62, v63);
      goto LABEL_36;
    }

    v64 = v105;
    v65 = v106;
    if (swift_dynamicCast())
    {
      v47 = 0x646564616F6C7075;
      (*(v102 + 8))(v64, v65);
      goto LABEL_36;
    }

    v66 = v45;
    v67 = v103;
    if (swift_dynamicCast())
    {
      v68 = v100;
      v69 = v99;
      (*(v100 + 32))(v99, v66, v67);
      sub_1002C9890(&v137);
    }

    else
    {
      v70 = v98;
      v67 = v101;
      if (!swift_dynamicCast())
      {
        v73 = v93;
        if (!swift_dynamicCast())
        {
          v76 = v48;
          v77 = v92;
          v76(v92, v42, a1);
          v78 = sub_1004D964C();
          v79 = sub_1004DDF8C();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            v137 = v135;
            *v80 = 136315138;
            v76(v130, v77, a1);
            v81 = sub_1004DD4DC();
            v82 = v77;
            v83 = v81;
            v85 = v84;
            v136(v82, a1);
            v86 = sub_1000343A8(v83, v85, &v137);

            *(v80 + 4) = v86;
            _os_log_impl(&_mh_execute_header, v78, v79, "Unsupported MusicItem kind=%s", v80, 0xCu);
            sub_100008D24(v135);
          }

          else
          {

            v136(v77, a1);
          }

          goto LABEL_35;
        }

        v74 = v91;
        (*(v96 + 32))(v91, v73, v97);
        sub_1002C8EC0(&v137);
        v75 = v138;
        if (v138)
        {
          sub_100008C70(&v137, v138);
          v47 = sub_1002C68B4(v75);
          (*(v96 + 8))(v74, v97);
          goto LABEL_32;
        }

        (*(v96 + 8))(v74, v97);
LABEL_34:
        sub_10001074C(&v137, &qword_100639FE0, &qword_100520920);
LABEL_35:
        v47 = 0;
        goto LABEL_36;
      }

      v68 = v95;
      v69 = v94;
      (*(v95 + 32))(v94, v70, v67);
      Track.musicItem.getter(&v137);
    }

    v71 = v138;
    if (v138)
    {
      sub_100008C70(&v137, v138);
      v47 = sub_1002C68B4(v71);
      (*(v68 + 8))(v69, v67);
LABEL_32:
      sub_100008D24(&v137);
      goto LABEL_36;
    }

    (*(v68 + 8))(v69, v67);
    goto LABEL_34;
  }

  (*(v126 + 8))(v43, v41);
  v47 = 0x736D75626C61;
LABEL_36:
  v136(v23, a1);
  return v47;
}

uint64_t sub_1002C7AC0(uint64_t a1)
{
  v107 = sub_1004DD01C();
  v103 = *(v107 - 8);
  __chkstk_darwin();
  v102 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v98 - v3;
  v111 = sub_1004DCAAC();
  v106 = *(v111 - 8);
  __chkstk_darwin();
  v105 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v98 - v5;
  v115 = sub_1004D8BFC();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v109 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v98 - v7;
  v119 = sub_1004D916C();
  v113 = *(v119 - 8);
  __chkstk_darwin();
  v112 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v98 - v9;
  v123 = sub_1004D911C();
  v117 = *(v123 - 8);
  __chkstk_darwin();
  v116 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v98 - v11;
  v127 = sub_1004D91EC();
  v121 = *(v127 - 8);
  __chkstk_darwin();
  v120 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v126 = &v98 - v13;
  v131 = sub_1004D92AC();
  v125 = *(v131 - 8);
  __chkstk_darwin();
  v124 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v130 = &v98 - v15;
  v135 = sub_1004DCD1C();
  v129 = *(v135 - 8);
  __chkstk_darwin();
  v128 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v98 - v17;
  v139 = sub_1004DC95C();
  v133 = *(v139 - 8);
  __chkstk_darwin();
  v132 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = &v98 - v19;
  v143 = sub_1004DD05C();
  v137 = *(v143 - 8);
  __chkstk_darwin();
  v136 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v98 - v21;
  v145 = sub_1004DC2DC();
  v141 = *(v145 - 8);
  __chkstk_darwin();
  v140 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v98 - v23;
  v25 = sub_1004D8FEC();
  v144 = *(v25 - 8);
  __chkstk_darwin();
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v98 - v28;
  v30 = sub_1004DCA0C();
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v98 - v34;
  v36 = *(a1 - 8);
  __chkstk_darwin();
  v98 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v98 - v38;
  v39 = __chkstk_darwin();
  v41 = &v98 - v40;
  v146 = v36;
  v42 = v36 + 16;
  v43 = *(v36 + 16);
  v45 = v44;
  v100 = v42;
  v99 = v43;
  (v43)(&v98 - v40, v147, v44, v39);
  if (swift_dynamicCast())
  {
    (*(v31 + 32))(v33, v35, v30);
    v46 = sub_1004DC9AC();
    v48 = v47;
    (*(v31 + 8))(v33, v30);
    if (v48)
    {
      v49 = v46;
    }

    else
    {
      v49 = 0;
    }

    v50 = v45;
    v51 = v146;
    goto LABEL_20;
  }

  v50 = v45;
  if (swift_dynamicCast())
  {
    v52 = v144;
    (*(v144 + 32))(v27, v29, v25);
    v49 = sub_1004D8FDC();
    v54 = v53;
    (*(v52 + 8))(v27, v25);
LABEL_10:
    if (!v54)
    {
      v49 = 0;
    }

    v51 = v146;
    goto LABEL_20;
  }

  v55 = v145;
  if (swift_dynamicCast())
  {
    v57 = v140;
    v56 = v141;
    (*(v141 + 32))(v140, v24, v55);
    v49 = sub_1004DC28C();
    v54 = v58;
    (*(v56 + 8))(v57, v55);
    goto LABEL_10;
  }

  v60 = v142;
  v59 = v143;
  v61 = swift_dynamicCast();
  v51 = v146;
  if (v61)
  {
    v63 = v136;
    v62 = v137;
    (*(v137 + 32))(v136, v60, v59);
    v64 = sub_1004DCF1C();
LABEL_17:
    v49 = v64;
    v67 = v65;
    (*(v62 + 8))(v63, v59);
    goto LABEL_18;
  }

  v66 = v138;
  v59 = v139;
  if (swift_dynamicCast())
  {
    v63 = v132;
    v62 = v133;
    (*(v133 + 32))(v132, v66, v59);
    v64 = sub_1004DC88C();
    goto LABEL_17;
  }

  v70 = v134;
  v69 = v135;
  if (swift_dynamicCast())
  {
    v71 = v129;
    v72 = v128;
    (*(v129 + 32))(v128, v70, v69);
    v49 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    (*(v71 + 8))(v72, v69);
    goto LABEL_20;
  }

  v73 = v130;
  v59 = v131;
  if (swift_dynamicCast())
  {
    v62 = v125;
    v63 = v124;
    (*(v125 + 32))(v124, v73, v59);
    v64 = sub_1004D929C();
    goto LABEL_17;
  }

  v74 = v126;
  v59 = v127;
  if (swift_dynamicCast())
  {
    v62 = v121;
    v63 = v120;
    (*(v121 + 32))(v120, v74, v59);
    v64 = sub_1004D91DC();
    goto LABEL_17;
  }

  v75 = v122;
  v59 = v123;
  if (swift_dynamicCast())
  {
    v62 = v117;
    v63 = v116;
    (*(v117 + 32))(v116, v75, v59);
    v64 = sub_1004D910C();
    goto LABEL_17;
  }

  v76 = v118;
  v77 = v119;
  if (!swift_dynamicCast())
  {
    v81 = v114;
    v82 = v115;
    if (swift_dynamicCast())
    {
      v83 = v110;
      v84 = v109;
      (*(v110 + 32))(v109, v81, v82);
      sub_1002C9890(&v148);
    }

    else
    {
      v85 = v108;
      v82 = v111;
      if (swift_dynamicCast())
      {
        v83 = v106;
        v84 = v105;
        (*(v106 + 32))(v105, v85, v82);
        Track.musicItem.getter(&v148);
      }

      else
      {
        v86 = v104;
        v82 = v107;
        if (!swift_dynamicCast())
        {
          if (qword_1006344B8 != -1)
          {
            swift_once();
          }

          v88 = sub_1004D966C();
          sub_100035430(v88, static Logger.capabilityUpsell);
          v89 = v101;
          v90 = v99;
          v99(v101, v147, v50);
          v91 = sub_1004D964C();
          v92 = sub_1004DDF8C();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            v148 = v147;
            *v93 = 136315138;
            v90(v98, v89, v50);
            v94 = sub_1004DD4DC();
            v96 = v95;
            (*(v51 + 8))(v89, v50);
            v97 = sub_1000343A8(v94, v96, &v148);

            *(v93 + 4) = v97;
            _os_log_impl(&_mh_execute_header, v91, v92, "Unsupported MusicItem catalogID=%s", v93, 0xCu);
            sub_100008D24(v147);
          }

          else
          {

            (*(v51 + 8))(v89, v50);
          }

          goto LABEL_40;
        }

        v83 = v103;
        v84 = v102;
        (*(v103 + 32))(v102, v86, v82);
        sub_1002C8EC0(&v148);
      }
    }

    v87 = v149;
    if (v149)
    {
      sub_100008C70(&v148, v149);
      v49 = sub_1002C7AC0(v87);
      (*(v83 + 8))(v84, v82);
      sub_100008D24(&v148);
      goto LABEL_20;
    }

    (*(v83 + 8))(v84, v82);
    sub_10001074C(&v148, &qword_100639FE0, &qword_100520920);
LABEL_40:
    v49 = 0;
    goto LABEL_20;
  }

  v78 = v113;
  v79 = v112;
  (*(v113 + 32))(v112, v76, v77);
  v49 = sub_1004D915C();
  v67 = v80;
  (*(v78 + 8))(v79, v77);
LABEL_18:
  if (!v67)
  {
    v49 = 0;
  }

LABEL_20:
  (*(v51 + 8))(v41, v50);
  return v49;
}

uint64_t Logger.capabilityUpsell.unsafeMutableAddressor()
{
  if (qword_1006344B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.capabilityUpsell);
}

uint64_t sub_1002C8CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004DDA4C();
  *(v4 + 24) = sub_1004DDA3C();
  v6 = sub_1004DD9BC();

  return _swift_task_switch(sub_1002C8D8C, v6, v5);
}

uint64_t sub_1002C8D8C()
{

  v1 = [objc_opt_self() sharedApplication];
  sub_1004D7FDC(v2);
  v4 = v3;
  sub_10005F120(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1002CB930(&qword_100634D20, type metadata accessor for OpenExternalURLOptionsKey, &unk_100514CF4);
  isa = sub_1004DD1FC().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002C8EC0@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v2 = sub_1004DD01C();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin();
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D916C();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin();
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D911C();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin();
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004D92AC();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin();
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DC95C();
  isa = v10[-1].isa;
  v73 = v10;
  __chkstk_darwin();
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DC2DC();
  v74 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004D8FEC();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004DCF8C();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v59 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v59 - v23;
  sub_1004DCF9C();
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v21 + 96))(v24, v20);
    v26 = *(v17 + 32);
    v26(v19, v24, v16);
    v27 = v75;
    v75[3] = v16;
    v27[4] = sub_1002CB930(&qword_1006366A0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v28 = sub_1000357EC(v27);
    return (v26)(v28, v19, v16);
  }

  v30 = v75;
  if (v25 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v21 + 96))(v24, v20);
    v31 = v74[4];
    v31(v15, v24, v13);
    v30[3] = v13;
    v30[4] = &protocol witness table for MusicVideo;
    v32 = sub_1000357EC(v30);
    return (v31)(v32, v15, v13);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v21 + 96))(v24, v20);
    v33 = v73;
    v34 = *(isa + 4);
    v34(v12, v24, v73);
    v30[3] = v33;
    v30[4] = &protocol witness table for Song;
    v35 = sub_1000357EC(v30);
    return (v34)(v35, v12, v33);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v69;
    v37 = *(v70 + 32);
    v38 = v71;
    v37(v69, v24, v71);
    v30[3] = v38;
    v39 = &unk_1006366B0;
    v40 = &type metadata accessor for TVEpisode;
    v41 = &protocol conformance descriptor for TVEpisode;
LABEL_13:
    v30[4] = sub_1002CB930(v39, v40, v41);
    v42 = sub_1000357EC(v30);
    return (v37)(v42, v36, v38);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v66;
    v37 = *(v67 + 32);
    v38 = v68;
    v37(v66, v24, v68);
    v30[3] = v38;
    v39 = &unk_1006366C8;
    v40 = &type metadata accessor for UploadedAudio;
    v41 = &protocol conformance descriptor for UploadedAudio;
    goto LABEL_13;
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v60;
    v37 = *(v61 + 32);
    v38 = v62;
    v37(v60, v24, v62);
    v30[3] = v38;
    v39 = &unk_1006366D0;
    v40 = &type metadata accessor for UploadedVideo;
    v41 = &protocol conformance descriptor for UploadedVideo;
    goto LABEL_13;
  }

  v43 = v20;
  if (qword_1006344B8 != -1)
  {
    swift_once();
  }

  v44 = sub_1004D966C();
  sub_100035430(v44, static Logger.capabilityUpsell);
  v46 = v63;
  v45 = v64;
  v47 = v65;
  (*(v63 + 16))(v65, v1, v64);
  v48 = sub_1004D964C();
  v49 = sub_1004DDF8C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v71 = v50;
    v74 = swift_slowAlloc();
    v76 = v74;
    *v50 = 136315138;
    v73 = v48;
    v51 = v59;
    LODWORD(isa) = v49;
    sub_1004DCF9C();
    sub_1002CB930(&qword_100635BE8, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
    v52 = sub_1004DEFFC();
    v54 = v53;
    v70 = *(v21 + 8);
    (v70)(v51, v43);
    (*(v46 + 8))(v65, v45);
    v55 = sub_1000343A8(v52, v54, &v76);

    v56 = v71;
    *(v71 + 1) = v55;
    v57 = v73;
    _os_log_impl(&_mh_execute_header, v73, isa, "Unknown Entry internalItem=%s", v56, 0xCu);
    sub_100008D24(v74);

    v58 = v70;
  }

  else
  {

    (*(v46 + 8))(v47, v45);
    v58 = *(v21 + 8);
  }

  v30[4] = 0;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  return v58(v24, v43);
}

uint64_t sub_1002C9890@<X0>(uint64_t *a1@<X8>)
{
  v98 = a1;
  v1 = sub_1004DCEDC();
  v87 = *(v1 - 8);
  v88 = v1;
  __chkstk_darwin();
  v86 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004DD05C();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin();
  v89 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DC2DC();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin();
  v92 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004D8FEC();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin();
  v95 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004DCD1C();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin();
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1004D916C();
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v70 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1004D911C();
  v74 = *(v75 - 8);
  __chkstk_darwin();
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1004D91EC();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004D92AC();
  v80 = *(v14 - 8);
  v81 = v14;
  __chkstk_darwin();
  v79 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DC95C();
  v85 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004DCA0C();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004D8BFC();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v69 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin();
  v28 = &v68 - v27;
  v29 = *(v24 + 16);
  v29(&v68 - v27, v99, v23, v26);
  v30 = (*(v24 + 88))(v28, v23);
  if (v30 == enum case for GenericMusicItem.album(_:))
  {
    (*(v24 + 96))(v28, v23);
    v31 = *(v20 + 32);
    v31(v22, v28, v19);
    v32 = v98;
    v98[3] = v19;
    v32[4] = &protocol witness table for Album;
    v33 = sub_1000357EC(v32);
    return (v31)(v33, v22, v19);
  }

  v35 = v98;
  if (v30 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v95;
    v37 = *(v96 + 32);
    v38 = v28;
    v39 = v97;
    v37(v95, v38, v97);
    v35[3] = v39;
    v40 = &qword_1006366A0;
    v41 = &type metadata accessor for MusicMovie;
    v42 = &protocol conformance descriptor for MusicMovie;
LABEL_5:
    v35[4] = sub_1002CB930(v40, v41, v42);
    v43 = sub_1000357EC(v35);
    v44 = v36;
    v45 = v39;
    return v37(v43, v44, v45);
  }

  if (v30 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v24 + 96))(v28, v23);
    v46 = v92;
    v37 = *(v93 + 32);
    v47 = v94;
    v37(v92, v28, v94);
    v48 = &protocol witness table for MusicVideo;
LABEL_10:
    v35[3] = v47;
    v35[4] = v48;
    v43 = sub_1000357EC(v35);
    v44 = v46;
    v45 = v47;
    return v37(v43, v44, v45);
  }

  if (v30 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v28, v23);
    v46 = v89;
    v37 = *(v90 + 32);
    v47 = v91;
    v37(v89, v28, v91);
    v48 = &protocol witness table for Playlist;
    goto LABEL_10;
  }

  if (v30 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v86;
    v37 = *(v87 + 32);
    v49 = v28;
    v39 = v88;
    v37(v86, v49, v88);
    v35[3] = v39;
    v40 = &unk_1006380A0;
    v41 = &type metadata accessor for Playlist.Folder;
    v42 = &protocol conformance descriptor for Playlist.Folder;
    goto LABEL_5;
  }

  if (v30 == enum case for GenericMusicItem.song(_:))
  {
    (*(v24 + 96))(v28, v23);
    v50 = *(v85 + 32);
    v50(v18, v28, v16);
    v35[3] = v16;
    v35[4] = &protocol witness table for Song;
    v51 = sub_1000357EC(v35);
    return (v50)(v51, v18, v16);
  }

  else
  {
    if (v30 == enum case for GenericMusicItem.station(_:))
    {
      (*(v24 + 96))(v28, v23);
      v46 = v82;
      v37 = *(v83 + 32);
      v47 = v84;
      v37(v82, v28, v84);
      v48 = &protocol witness table for Station;
      goto LABEL_10;
    }

    if (v30 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v80 + 32);
      v36 = v79;
      v52 = v28;
      v39 = v81;
      v37(v79, v52, v81);
      v35[3] = v39;
      v40 = &unk_1006366B0;
      v41 = &type metadata accessor for TVEpisode;
      v42 = &protocol conformance descriptor for TVEpisode;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v77 + 32);
      v36 = v76;
      v53 = v28;
      v39 = v78;
      v37(v76, v53, v78);
      v35[3] = v39;
      v40 = &unk_1006366C0;
      v41 = &type metadata accessor for TVShow;
      v42 = &protocol conformance descriptor for TVShow;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v74 + 32);
      v36 = v73;
      v54 = v28;
      v39 = v75;
      v37(v73, v54, v75);
      v35[3] = v39;
      v40 = &unk_1006366C8;
      v41 = &type metadata accessor for UploadedAudio;
      v42 = &protocol conformance descriptor for UploadedAudio;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v71 + 32);
      v36 = v70;
      v55 = v28;
      v39 = v72;
      v37(v70, v55, v72);
      v35[3] = v39;
      v40 = &unk_1006366D0;
      v41 = &type metadata accessor for UploadedVideo;
      v42 = &protocol conformance descriptor for UploadedVideo;
      goto LABEL_5;
    }

    if (qword_1006344B8 != -1)
    {
      swift_once();
    }

    v56 = sub_1004D966C();
    sub_100035430(v56, static Logger.capabilityUpsell);
    v57 = v69;
    (v29)(v69, v99, v23);
    v58 = sub_1004D964C();
    v59 = sub_1004DDF8C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v97 = v60;
      v99 = swift_slowAlloc();
      v100 = v99;
      *v60 = 136315138;
      sub_1002CB930(&unk_10063D760, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      v61 = sub_1004DEFFC();
      v62 = v57;
      v64 = v63;
      v65 = *(v24 + 8);
      v65(v62, v23);
      v66 = sub_1000343A8(v61, v64, &v100);

      v67 = v97;
      *(v97 + 1) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unsupported GenericMusicItem kind=%s", v67, 0xCu);
      sub_100008D24(v99);
    }

    else
    {

      v65 = *(v24 + 8);
      v65(v57, v23);
    }

    v35[4] = 0;
    *v35 = 0u;
    *(v35 + 1) = 0u;
    return (v65)(v28, v23);
  }
}

uint64_t sub_1002CA680()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.capabilityUpsell);
  sub_100035430(v0, static Logger.capabilityUpsell);
  return sub_1004D965C();
}

uint64_t static Logger.capabilityUpsell.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006344B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.capabilityUpsell);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(uint64_t a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v3 = &v81 - v2;
  v4 = sub_1004D7BBC();
  v89 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v81 - v7;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v10 = &v81 - v9;
  v11 = sub_1004D809C();
  v91 = *(v11 - 8);
  v12 = *(v91 + 64);
  __chkstk_darwin();
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v81 - v13;
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  sub_100004CB8(&qword_1006372B0, &qword_1005128E0);
  UnfairLock.locked<A>(_:)(sub_100030C3C);
  v14 = v97;
  if (!v97)
  {
    goto LABEL_8;
  }

  v15 = [v97 stringForBagKey:ICURLBagKeyMarketingItemDynamicUIUrl];
  if (!v15)
  {

    goto LABEL_8;
  }

  v86 = v3;
  v16 = v15;
  v17 = sub_1004DD43C();
  v87 = v11;
  v18 = v17;
  v20 = v19;

  *&v97 = 0x2F2F3A636973756DLL;
  *(&v97 + 1) = 0xE800000000000000;
  v99._countAndFlagsBits = v18;
  v21 = v87;
  v99._object = v20;
  sub_1004DD5FC(v99);

  sub_1004D805C();

  v22 = v91;
  if ((*(v91 + 48))(v10, 1, v21) == 1)
  {

    sub_10001074C(v10, &qword_100634B30, &unk_100513D70);
LABEL_8:
    if (qword_1006344B8 != -1)
    {
      swift_once();
    }

    v23 = sub_1004D966C();
    sub_100035430(v23, static Logger.capabilityUpsell);
    v24 = sub_1004D964C();
    v25 = sub_1004DDF7C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Could not build marketingURL", v26, 2u);
    }

    return;
  }

  v27 = *(v22 + 32);
  v84 = v22 + 32;
  v83 = v27;
  v27(v90, v10, v21);
  sub_100004CB8(&qword_100635078, &qword_100526F50);
  v28 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v85 = *(v89 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1005126C0;
  v30 = v29;
  v82 = v28;
  sub_1004D7B8C();
  sub_1002CB6DC(a1, &v97);
  if (v98[24] != 253 && v98[24] != 255 && v98[24] != 254)
  {
    sub_1000741FC(&v97);
  }

  sub_1004D7B8C();

  sub_1002CB6DC(a1, &v95);
  if (v96[24] < 0xFDu)
  {
    v97 = v95;
    *v98 = *v96;
    *&v98[9] = *&v96[9];
    sub_1002C6800();
    v33 = v30;
    if (v34)
    {
      sub_1004D7B8C();

      v36 = *(v30 + 2);
      v35 = *(v30 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = sub_10003A6A4((v35 > 1), v36 + 1, 1, v30);
      }

      v37 = v82;
      *(v33 + 2) = v36 + 1;
      (*(v89 + 32))(&v33[v37 + v36 * v85], v8, v4);
    }

    else
    {
      if (qword_1006344B8 != -1)
      {
        swift_once();
      }

      v38 = sub_1004D966C();
      sub_100035430(v38, static Logger.capabilityUpsell);
      sub_1002CB8C8(&v97, &v95);
      v39 = sub_1004D964C();
      v40 = sub_1004DDF8C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v94 = v81;
        *v41 = 136315138;
        sub_1002CB8C8(&v95, v92);
        v42 = sub_1004DD4DC();
        v44 = v43;
        sub_1002CB900(&v95);
        v45 = sub_1000343A8(v42, v44, &v94);
        v33 = v30;

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "Missing kind for item=%s", v41, 0xCu);
        sub_100008D24(v81);
      }

      else
      {

        sub_1002CB900(&v95);
      }

      v37 = v82;
    }

    sub_1002CB8C8(&v97, &v95);
    if (v96[24] == 1)
    {
      v46 = v95;
      MPModelObject.bestIdentifier(for:)(2, 1u);
      v48 = v47;

      if (v48)
      {
LABEL_34:
        sub_1004D7B8C();

        v50 = *(v33 + 2);
        v49 = *(v33 + 3);
        if (v50 >= v49 >> 1)
        {
          v33 = sub_10003A6A4((v49 > 1), v50 + 1, 1, v33);
        }

        v32 = v90;
        sub_1002CB900(&v97);
        *(v33 + 2) = v50 + 1;
        (*(v89 + 32))(&v33[v37 + v50 * v85], v6, v4);
        v31 = v86;
        goto LABEL_44;
      }
    }

    else
    {
      sub_1000ABC20(&v95, v92);
      v51 = v93;
      sub_100008C70(v92, v93);
      sub_1002C7AC0(v51);
      v53 = v52;
      sub_100008D24(v92);
      if (v53)
      {
        goto LABEL_34;
      }
    }

    if (qword_1006344B8 != -1)
    {
      swift_once();
    }

    v54 = sub_1004D966C();
    sub_100035430(v54, static Logger.capabilityUpsell);
    sub_1002CB8C8(&v97, &v95);
    v55 = sub_1004D964C();
    v56 = sub_1004DDF8C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v94 = v58;
      *v57 = 136315138;
      sub_1002CB8C8(&v95, v92);
      v59 = sub_1004DD4DC();
      v61 = v60;
      sub_1002CB900(&v95);
      v62 = sub_1000343A8(v59, v61, &v94);

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v55, v56, "Missing id for item=%s", v57, 0xCu);
      sub_100008D24(v58);
    }

    else
    {

      sub_1002CB900(&v95);
    }

    sub_1002CB900(&v97);
    v32 = v90;
    v31 = v86;
    goto LABEL_44;
  }

  sub_1000741FC(&v95);
  v31 = v86;
  v32 = v90;
  v33 = v30;
LABEL_44:
  v63._rawValue = v33;
  sub_1004D804C(v63);

  if (qword_1006344B8 != -1)
  {
    swift_once();
  }

  v64 = sub_1004D966C();
  sub_100035430(v64, static Logger.capabilityUpsell);
  v65 = sub_1004D964C();
  v66 = sub_1004DDF9C();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v97 = v68;
    *v67 = 136446210;
    swift_beginAccess();
    sub_1002CB930(&qword_100637988, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v69 = v87;
    v70 = sub_1004DEFFC();
    v72 = v32;
    v73 = sub_1000343A8(v70, v71, &v97);

    *(v67 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v65, v66, "Will present upsell with URL=%{public}s", v67, 0xCu);
    sub_100008D24(v68);
    v31 = v86;
  }

  else
  {

    v69 = v87;
    v72 = v32;
  }

  v74 = v91;
  v75 = sub_1004DDA8C();
  (*(*(v75 - 8) + 56))(v31, 1, 1, v75);
  swift_beginAccess();
  v76 = v88;
  (*(v74 + 16))(v88, v72, v69);
  sub_1004DDA4C();
  v77 = sub_1004DDA3C();
  v78 = v74;
  v79 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v77;
  *(v80 + 24) = &protocol witness table for MainActor;
  v83(v80 + v79, v76, v69);
  sub_10011F560(0, 0, v31, &unk_100526F60, v80);

  (*(v78 + 8))(v72, v69);
}

uint64_t sub_1002CB558(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002CB56C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002CB5B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -3 - a2;
    }
  }

  return result;
}

double sub_1002CB604(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

uint64_t sub_1002CB644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002CB680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1002CB714()
{
  v1 = sub_1004D809C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002CB7D8(uint64_t a1)
{
  v4 = *(sub_1004D809C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035B28;

  return sub_1002C8CF4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002CB930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002CB978()
{
  result = sub_1002CB998();
  qword_1006734A0 = result;
  return result;
}

id sub_1002CB998()
{
  v0 = sub_1004D809C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v54 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_100004CB8(&qword_10063DF60, &qword_100528BE0) - 8);
  __chkstk_darwin();
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v50 - v5;
  __chkstk_darwin();
  v8 = &v50 - v7;
  __chkstk_darwin();
  v10 = &v50 - v9;
  __chkstk_darwin();
  v12 = &v50 - v11;
  v56 = sub_1003130EC(_swiftEmptyArrayStorage);
  sub_100004CB8(&qword_10063DF68, &qword_100528BE8);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v58 = *(v3 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100511A40;
  v60 = v13;
  v53 = v14;
  v15 = v14 + v13;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v18 = [v17 resourceURL];

  if (v18)
  {
    sub_1004D802C();

    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 0;
  }

  else
  {
    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 1;
  }

  v59 = v19;
  v19(v20, v21, 1, v0);
  v22 = v1;
  sub_1002CEFA0(v12, v15);
  type metadata accessor for BundleFinder();
  v23 = [v16 bundleForClass:swift_getObjCClassFromMetadata()];
  v24 = [v23 resourceURL];

  if (v24)
  {
    sub_1004D802C();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v55;
  v51 = v22;
  v27 = v10;
  v28 = v10;
  v29 = v59;
  v59(v27, v25, 1, v0);
  v30 = v58;
  sub_1002CEFA0(v28, v15 + v58);
  v31 = [v16 mainBundle];
  v32 = [v31 bundleURL];

  sub_1004D802C();
  v57 = (v22 + 7);
  v29(v15 + 2 * v30, 0, 1, v0);
  v61 = v56;
  sub_1002ED5B4(v53);
  v33 = v61;
  v34 = v61[2];
  if (v34)
  {
    v35 = 0;
    v36 = v60 + v61;
    v60 = (v51 + 6);
    v56 = (v51 + 1);
    v51 += 4;
    v52 = "1F9AD12BundleFinder";
    v53 = v34;
    while (v35 < v33[2])
    {
      sub_1000108DC(v36, v6, &qword_10063DF60, &qword_100528BE0);
      v37 = *v60;
      if ((*v60)(v6, 1, v0) == 1)
      {
        sub_1002CF010(v6);
        v38 = 1;
      }

      else
      {
        sub_1004D7FFC();
        (*v56)(v6, v0);
        v38 = 0;
      }

      v59(v8, v38, 1, v0);
      sub_1000108DC(v8, v26, &qword_10063DF60, &qword_100528BE0);
      if (v37(v26, 1, v0) == 1)
      {
        sub_1002CF010(v8);
      }

      else
      {
        v39 = v33;
        v40 = v8;
        v41 = v6;
        v42 = v54;
        (*v51)(v54, v26, v0);
        v43 = objc_allocWithZone(NSBundle);
        sub_1004D7FDC(v44);
        v46 = v45;
        v47 = [v43 initWithURL:v45];

        v26 = v55;
        v48 = v42;
        v6 = v41;
        v8 = v40;
        v33 = v39;
        v34 = v53;
        (*v56)(v48, v0);
        sub_1002CF010(v8);
        if (v47)
        {

          return v47;
        }
      }

      ++v35;
      v36 += v58;
      if (v34 == v35)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

void variable initialization expression of Artwork.caching(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

id variable initialization expression of Artwork.decoration@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Artwork.Decoration(0);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v3 = v2[5];
  v4 = sub_1004DE53C();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  result = [objc_opt_self() blackColor];
  *&a1[v5] = result;
  *&a1[v2[7]] = 1;
  return result;
}

id variable initialization expression of Artwork.Decoration.fillColor()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.background()
{
  v0 = [objc_opt_self() secondarySystemFillColor];

  return v0;
}

uint64_t variable initialization expression of Artwork.Placeholder.tint()
{
  if (qword_10063D790 != -1)
  {
    swift_once();
  }

  v0 = qword_10063E4E0;
  v1 = qword_10063E4E0;
  return v0;
}

id variable initialization expression of Artwork.Placeholder.symbolConfiguration()
{
  v0 = [objc_opt_self() configurationWithWeight:4];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.View.contentView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of LyricsLoader.operationQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

uint64_t variable initialization expression of Lyrics.StateManager.state@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  v3 = a1 + *(v2 + 20);
  v4 = enum case for ScenePhase.inactive(_:);
  v5 = sub_1004D9CEC();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v3 + *(v6 + 20)) = 0;
  *(v3 + *(v6 + 24)) = 0;
  v7 = *(v2 + 24);
  v8 = sub_1004D826C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

id variable initialization expression of Lyrics.StateManager.loader()
{
  v0 = objc_allocWithZone(type metadata accessor for LyricsLoader());

  return [v0 init];
}

id variable initialization expression of Lyrics.StateManager.lyricsReportingController()
{
  v0 = objc_allocWithZone(MPCLyricsReportingController);

  return [v0 init];
}

uint64_t variable initialization expression of Lyrics.StateManager.State.loading()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of Lyrics.StateManager.State.display@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = sub_1004D9CEC();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t variable initialization expression of Lyrics.StateManager.State.Display.scenePhase@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = sub_1004D9CEC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 variable initialization expression of NoticePresenter.configuration()
{
  v1 = swift_unknownObjectWeakInit();
  *(v1 + 8) = 2;
  *(v1 + 16) = 0x4024000000000000;
  result = *&NSDirectionalEdgeInsetsZero.top;
  *(v1 + 40) = *&NSDirectionalEdgeInsetsZero.bottom;
  *(v1 + 24) = result;
  return result;
}

double variable initialization expression of CarouselView.pageIndicatorHeight()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  result = 8.0;
  if (v1 == 6)
  {
    return 10.0;
  }

  return result;
}

id variable initialization expression of CircularProgressView.trackLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

uint64_t variable initialization expression of Collaboration.Management.Model._hasNetworkConnectivity()
{
  static ApplicationCapabilities.shared.getter(v1);
  sub_100073E60(v1);
  return BYTE1(v1[0]);
}

uint64_t variable initialization expression of Collaboration.Management.Model.$__lazy_storage_$_artworkViewModel@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004CB8(&qword_100642C70, &qword_100527540);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1002CC854(uint64_t a1)
{
  sub_100004CB8(&qword_10063DF58, &qword_10052E0E0);
  __chkstk_darwin();
  sub_1000108DC(a1, &v4 - v2, &qword_10063DF58, &qword_10052E0E0);
  return sub_1004DA5EC();
}

double variable initialization expression of HitMyRectButton.hitRectAdjustment@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

double variable initialization expression of ImagePicker.DummyImagePickerViewController.$__lazy_storage_$_presentationSource@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

id variable initialization expression of LoadingView.label()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id variable initialization expression of LoadingView.activityIndicator()
{
  v0 = objc_allocWithZone(UIActivityIndicatorView);

  return [v0 initWithActivityIndicatorStyle:100];
}

uint64_t variable initialization expression of NowPlaying.TrackTitleStackView.metadata@<X0>(uint64_t a1@<X8>)
{
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();

  return sub_1002CD93C(v2, a1);
}

double sub_1002CCAE8@<D0>(void *a1@<X0>, SEL *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:*a1];
  v6 = [objc_opt_self() *a2];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v15 = v5;
  *(&v15 + 1) = v6;
  LOBYTE(v16) = 0;
  BYTE8(v16) = 0;
  *&v17 = 0x4040000000000000;
  *(&v17 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v18 = leading;
  *(&v18 + 1) = bottom;
  *&v19 = trailing;
  v20 = 0uLL;
  *(&v19 + 1) = 1;
  v21[0] = v5;
  v21[1] = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v26 = leading;
  v27 = bottom;
  v28 = trailing;
  v30 = 0;
  v31 = 0;
  v29 = 1;
  sub_1002CD9A0(&v15, &v14);
  sub_1002CD9FC(v21);
  v10 = v18;
  a3[2] = v17;
  a3[3] = v10;
  v11 = v20;
  a3[4] = v19;
  a3[5] = v11;
  result = *&v15;
  v13 = v16;
  *a3 = v15;
  a3[1] = v13;
  return result;
}

__n128 variable initialization expression of Gliss.Transition<>.Output.transform3D@<Q0>(uint64_t a1@<X8>)
{
  v1 = *&CATransform3DIdentity.m33;
  *(a1 + 64) = *&CATransform3DIdentity.m31;
  *(a1 + 80) = v1;
  v2 = *&CATransform3DIdentity.m43;
  *(a1 + 96) = *&CATransform3DIdentity.m41;
  *(a1 + 112) = v2;
  v3 = *&CATransform3DIdentity.m13;
  *a1 = *&CATransform3DIdentity.m11;
  *(a1 + 16) = v3;
  result = *&CATransform3DIdentity.m21;
  v5 = *&CATransform3DIdentity.m23;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.symbol@<D0>(uint64_t a1@<X8>)
{
  sub_1003DBA90(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

UIFontTextStyle SymbolButton.Title.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = UIFontTextStyleSubheadline;
  *(a1 + 24) = UIFontWeightSemibold;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return UIFontTextStyleSubheadline;
}

double variable initialization expression of SymbolButton.Configuration.material@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.customView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id variable initialization expression of QRCodeOverlayViewController.backgroundView()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.qrCodeView()
{
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.logoView()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

id variable initialization expression of QRCodeOverlayViewController.titleLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.subtitleLabelEffectView()
{
  if (qword_10063DA98 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() effectForBlurEffect:qword_100673AA8];
  v1 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v0];

  return v1;
}

id variable initialization expression of QRCodeOverlayViewController.scrollView()
{
  v0 = objc_allocWithZone(UIScrollView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.ContainerView.overlayLayer()
{
  v0 = objc_allocWithZone(CALayer);

  return [v0 init];
}

uint64_t sub_1002CD084@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA65C();
  *a1 = result;
  return result;
}

uint64_t sub_1002CD104@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_100004CB8(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

id sub_1002CD17C(Class *a1)
{
  v1 = [objc_allocWithZone(*a1) init];
  v2 = UIView.forAutolayout.getter();

  return v2;
}

id variable initialization expression of SliderView.feedbackGenerator()
{
  v0 = objc_allocWithZone(UIImpactFeedbackGenerator);

  return [v0 initWithStyle:0];
}

id variable initialization expression of SliderView.trackLayoutGuide()
{
  v0 = objc_allocWithZone(UILayoutGuide);

  return [v0 init];
}

id variable initialization expression of SyncedLyricsViewController.Specs.glowColor()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id variable initialization expression of SliderView.remainingTrackColor()
{
  v0 = [objc_opt_self() systemFillColor];

  return v0;
}

id variable initialization expression of SliderView.trackingColor()
{
  if (qword_10063D810 != -1)
  {
    swift_once();
  }

  v1 = static UIColor.MusicTint.normal;

  return v1;
}

id variable initialization expression of SyncedLyricsViewController.contentView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of SymbolButton.materialView()
{
  v4 = 1;
  v0 = type metadata accessor for SymbolButton.MaterialView();
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, "initWithEffect:", 0);
  sub_1003D691C(&v4);

  return v1;
}

id variable initialization expression of SymbolButton.backgroundView()
{
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *&static SymbolButton.Background.clear;
  v1 = qword_100673C58;
  v2 = qword_100673C60;
  v3 = qword_100673C68;
  v4 = type metadata accessor for SymbolButton.BackgroundView();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v6 = 0;
  *(v6 + 1) = 0x3FF0000000000000;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v1;

  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003D6D98(v1, v2, v3, v0);
  sub_1003D6F58();

  return v8;
}

uint64_t sub_1002CD518@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of VerticalToggleSlider.packageDefinition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of VerticalToggleSlider.blurEffect()
{
  v0 = [objc_opt_self() effectWithBlurRadius:10.0];

  return v0;
}

void variable initialization expression of VerticalToggleSlider.growTransform(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

id variable initialization expression of WaveformPlayIndicator.colorPalette()
{
  v0 = objc_opt_self();
  v1 = [v0 tintColor];
  v2 = [v0 labelColor];
  v3 = [v2 colorWithAlphaComponent:0.35];

  v4 = [v0 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6 = [v0 labelColor];
  v7 = [v6 colorWithAlphaComponent:0.6];

  return v1;
}

id variable initialization expression of WaveformPlayIndicator.waveform()
{
  v0 = [objc_opt_self() zero];

  return v0;
}

uint64_t variable initialization expression of WaveformPlayIndicator.cannedAnimationAsset()
{
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  return sub_1003F2CC4();
}

uint64_t sub_1002CD840(uint64_t a1, uint64_t a2)
{
  result = sub_1004D875C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1002CD894(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004D876C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1002CD93C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1002CDA64@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

Swift::Int sub_1002CDB14(uint64_t a1, uint64_t a2)
{
  sub_1004DF26C();
  swift_getWitnessTable();
  sub_1004D87AC();
  return sub_1004DF2BC();
}

uint64_t sub_1002CDB7C(uint64_t a1)
{
  sub_1002CE5BC(&qword_10063DF48, type metadata accessor for UIContentSizeCategory, &unk_100527C24);
  sub_1002CE5BC(&qword_10063DF50, type metadata accessor for UIContentSizeCategory, &unk_100527BC4);

  return sub_1004DEE0C();
}

uint64_t sub_1002CDC38(uint64_t a1)
{
  sub_1002CE5BC(&qword_10063DF38, type metadata accessor for TextStyle, &unk_100527D7C);
  sub_1002CE5BC(&qword_10063DF40, type metadata accessor for TextStyle, &unk_100527D1C);

  return sub_1004DEE0C();
}

uint64_t sub_1002CDCF4(uint64_t a1)
{
  sub_1002CE5BC(&qword_10063DF20, type metadata accessor for Weight, &unk_100527ED4);
  sub_1002CE5BC(&qword_10063DF28, type metadata accessor for Weight, &unk_100527E74);
  sub_1002CEF4C();
  return sub_1004DEE0C();
}

uint64_t sub_1002CDDBC(uint64_t a1)
{
  sub_1002CE5BC(&qword_10063DF10, type metadata accessor for FeatureKey, &unk_1005282A0);
  sub_1002CE5BC(&qword_10063DF18, type metadata accessor for FeatureKey, &unk_100528240);

  return sub_1004DEE0C();
}

uint64_t sub_1002CDE78(uint64_t a1)
{
  sub_1002CE5BC(&qword_10063DF00, _s3__C13AttributeNameVMa_0, &unk_100528B94);
  sub_1002CE5BC(&qword_10063DF08, _s3__C13AttributeNameVMa_0, &unk_100528398);

  return sub_1004DEE0C();
}

uint64_t sub_1002CDF34(uint64_t a1)
{
  sub_1002CE5BC(&qword_10063DF98, _s3__C4NameVMa_1, &unk_100528D10);
  sub_1002CE5BC(&unk_10063DFA0, _s3__C4NameVMa_1, &unk_100528CB0);

  return sub_1004DEE0C();
}

uint64_t sub_1002CDFF0(uint64_t a1)
{
  sub_1002CE5BC(&qword_10063DEE0, type metadata accessor for CAGradientLayerType, &unk_1005287F8);
  sub_1002CE5BC(&qword_10063DEE8, type metadata accessor for CAGradientLayerType, &unk_100528798);

  return sub_1004DEE0C();
}

uint64_t sub_1002CE0AC(uint64_t a1)
{
  sub_1002CE5BC(&qword_10063DEF0, type metadata accessor for InfoKey, &unk_100528B50);
  sub_1002CE5BC(&qword_10063DEF8, type metadata accessor for InfoKey, &unk_1005284AC);

  return sub_1004DEE0C();
}

uint64_t sub_1002CE168(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1004D879C();
}

void sub_1002CE1DC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004DF2AC(*&v1);
}

__n128 sub_1002CE2CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1002CE2F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002CE310(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

__n128 sub_1002CE370(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1002CE3A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GlowModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1002CE5BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002CEF4C()
{
  result = qword_10063DF30;
  if (!qword_10063DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063DF30);
  }

  return result;
}

uint64_t sub_1002CEFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063DF60, &qword_100528BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CF010(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063DF60, &qword_100528BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Artwork.content.getter()
{
  v1 = *v0;
  sub_1002CF1F0(*v0, v0[1]);
  return v1;
}

id sub_1002CF1F0(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

void Artwork.content.setter(void *a1, void *a2)
{
  sub_1002CF268(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
}

void sub_1002CF268(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t Artwork.size.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = result;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t Artwork.decoration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Artwork(0) + 28);

  return sub_1002CF3F4(a1, v3);
}

uint64_t sub_1002CF3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Artwork.placeholderViewProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Artwork(0) + 36));
  result = swift_unknownObjectRelease();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double Artwork.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_100512780;
  *(a1 + 64) = 0;
  v2 = type metadata accessor for Artwork(0);
  v3 = (a1 + v2[7]);
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v5 = v4[5];
  v6 = sub_1004DE53C();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v7 = v4[6];
  *&v3[v7] = [objc_opt_self() blackColor];
  *&v3[v4[7]] = 1;
  v8 = (a1 + v2[8]);
  result = 0.0;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  v10 = (a1 + v2[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t static Artwork.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = xmmword_100512780;
  *(a2 + 64) = 0;
  v4 = type metadata accessor for Artwork(0);
  v5 = (a2 + v4[7]);
  v6 = type metadata accessor for Artwork.Decoration(0);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v7 = v6[5];
  v8 = sub_1004DE53C();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = v6[6];
  *&v5[v9] = [objc_opt_self() blackColor];
  *&v5[v6[7]] = 1;
  v10 = (a2 + v4[8]);
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  v11 = (a2 + v4[9]);
  *v11 = 0;
  v11[1] = 0;
  return a1(a2);
}

char *sub_1002CF874(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002D5098(v2, v4, type metadata accessor for Artwork);
  v5 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v6 = Artwork.View.init(configuration:)(v4);
  sub_1002D5250(&qword_10063E1D8, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
  return v6;
}

char *Artwork.View.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  *v7 = 0;
  v7[8] = -1;
  sub_1002D5098(a1, &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration], type metadata accessor for Artwork);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v8 setContentMode:4];
  v9 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  v10 = [*&v8[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] layer];
  [v10 setMinificationFilter:kCAFilterTrilinear];

  v11 = [*&v8[v9] layer];
  [v11 setMagnificationFilter:kCAFilterTrilinear];

  [*&v8[v9] setContentMode:2];
  [*&v8[v9] setClipsToBounds:1];
  [*&v8[v9] setAccessibilityIgnoresInvertColors:1];
  [v8 addSubview:*&v8[v9]];
  sub_1002D04B4();
  sub_1002D133C();
  sub_1002D0EBC();

  sub_1002D5D90(a1, type metadata accessor for Artwork);
  return v8;
}

void Artwork.View.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind;
  *v4 = 0;
  *(v4 + 8) = -1;
  sub_1004DECCC();
  __break(1u);
}

void sub_1002CFD34(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  sub_1002D5098(v6, v5, type metadata accessor for Artwork);
  v7 = _s11MusicCoreUI7ArtworkV2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_1002D5D90(v5, type metadata accessor for Artwork);
  if (!v7)
  {
    sub_1002D04B4();
    sub_1002D133C();
    sub_1002D0EBC();
    v8 = *(v3 + 36);
    v9 = *(a1 + v8);
    v10 = *&v6[v8];
    if (v9)
    {
      if (v9 == v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    v11 = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
    if (v11)
    {
    }

    else
    {
      v12 = [v1 artworkCatalog];
      if (v12)
      {

LABEL_12:
        sub_1002D04B4();
        return;
      }
    }

    if (*v6)
    {
      return;
    }

    goto LABEL_12;
  }
}

Swift::Void __swiftcall Artwork.View.invalidatePlaceholderView()()
{
  v1 = [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v1)
  {

    goto LABEL_3;
  }

  v3 = [v0 artworkCatalog];
  if (!v3)
  {
LABEL_3:
    v2 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v2])
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_7:
  sub_1002D04B4();
}

double Artwork.View.typedConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002D5098(v1 + v3, a1, type metadata accessor for Artwork);
  return result;
}

uint64_t Artwork.View.typedConfiguration.setter(uint64_t a1)
{
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002D5098(v1 + v5, v4, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_1002D5100(a1, v1 + v5);
  swift_endAccess();
  sub_1002CFD34(v4);
  sub_1002D5D90(a1, type metadata accessor for Artwork);
  return sub_1002D5D90(v4, type metadata accessor for Artwork);
}

void (*Artwork.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Artwork(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1002D5098(v1 + v8, v7, type metadata accessor for Artwork);
  return sub_1002D01E4;
}

void sub_1002D01E4(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1002D5098(*(*a1 + 12), v6, type metadata accessor for Artwork);
    sub_1002D5098(v7 + v4, v5, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_1002D5100(v6, v7 + v4);
    swift_endAccess();
    sub_1002CFD34(v5);
    sub_1002D5D90(v5, type metadata accessor for Artwork);
  }

  else
  {
    sub_1002D5098(v7 + v4, v6, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_1002D5100(v3, v7 + v4);
    swift_endAccess();
    sub_1002CFD34(v6);
  }

  sub_1002D5D90(v6, type metadata accessor for Artwork);
  sub_1002D5D90(v3, type metadata accessor for Artwork);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

id Artwork.View.currentImage.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView) image];

  return v1;
}

uint64_t Artwork.View.imageDidChangeHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_10000DE64(*v1, v1[1]);
  return v2;
}

uint64_t Artwork.View.imageDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10000DE74(v6, v7);
}

void sub_1002D04B4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v3 = type metadata accessor for Artwork(0);
  v4 = &v2[*(v3 + 36)];
  if (*v4)
  {
    v5 = *(v4 + 1);
    v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v7 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
    if (v7 != 255 && (v7 & 1) != 0)
    {
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v5 + 8);
      swift_unknownObjectRetain();
      sub_1002D5DF0(v8, v7);
      v11 = v10(v8, ObjectType, v5);
      v12 = *v6;
      *v6 = v11;
      v13 = v6[8];
      v6[8] = 1;
      v14 = v11;
      sub_1002D2C60(v12, v13);
      sub_1002D5B38(v12, v13);
      swift_unknownObjectRelease();

      v15 = v8;
      v16 = v7;
LABEL_20:
      sub_1002D5B38(v15, v16);
      goto LABEL_27;
    }

    v17 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    swift_unknownObjectRetain();
    v18 = [v17 image];
    if (v18)
    {
    }

    else
    {
      v34 = [v1 artworkCatalog];
      if (v34)
      {

        goto LABEL_18;
      }
    }

    if (*v2)
    {
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_18:
    v35 = swift_getObjectType();
    v36 = (*(v5 + 8))(0, v35, v5);
    v37 = *v6;
    *v6 = v36;
    v38 = v6[8];
    v6[8] = 1;
    v39 = v36;
    sub_1002D2C60(v37, v38);
    sub_1002D5B38(v37, v38);
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v19 = &v2[*(v3 + 32)];
  v20 = *(v19 + 3);
  if (!v20)
  {
    v40 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v41 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    *v40 = 0;
    v42 = v40[8];
    v40[8] = -1;
    sub_1002D2C60(v41, v42);
    v15 = v41;
    v16 = v42;
    goto LABEL_20;
  }

  v22 = *v19;
  v21 = *(v19 + 1);
  v23 = *(v19 + 2);
  v24 = *(v19 + 4);
  v25 = *(v19 + 5);
  *&v82 = *v19;
  *(&v82 + 1) = v21;
  *&v83 = v23;
  *(&v83 + 1) = v20;
  *&v84 = v24;
  *(&v84 + 1) = v25;
  v26 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v27 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v27 == 255 || (v27 & 1) != 0)
  {
    v28 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v29 = v23;
    v30 = v20;
    v31 = v22;
    v32 = v21;
    v33 = [v28 image];
    if (v33)
    {
    }

    else
    {
      v52 = [v1 artworkCatalog];
      if (v52)
      {

        goto LABEL_26;
      }
    }

    if (*v2)
    {

      goto LABEL_27;
    }

LABEL_26:
    v53 = type metadata accessor for Artwork.Placeholder.View();
    v54 = objc_allocWithZone(v53);
    v55 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
    v56 = objc_allocWithZone(UIImageView);
    v57 = v31;
    v79 = v32;
    v58 = v29;
    v59 = v30;
    *&v54[v55] = [v56 init];
    v60 = &v54[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
    v61 = v84;
    *(v60 + 1) = v83;
    *(v60 + 2) = v61;
    *v60 = v82;
    v80.receiver = v54;
    v80.super_class = v53;
    v62 = v57;
    v63 = v79;
    v64 = v58;
    v65 = v59;
    v66 = objc_msgSendSuper2(&v80, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v66 addSubview:*&v66[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView]];
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    sub_1002D67E0(&v85);

    v67 = v63;
    v68 = v62;
    v69 = *v26;
    *v26 = v66;
    v70 = v26[8];
    v26[8] = 0;
    v71 = v66;
    sub_1002D2C60(v69, v70);
    sub_1002D5B38(v69, v70);

    goto LABEL_27;
  }

  v43 = *v26;
  v44 = *v26 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v45 = *(v44 + 16);
  v85 = *v44;
  v86 = v45;
  v76 = *(v44 + 8);
  v77 = *v44;
  v74 = *(v44 + 24);
  v75 = *(v44 + 16);
  v72 = *(v44 + 40);
  v73 = *(v44 + 32);
  v89 = *(&v85 + 1);
  v90 = v85;
  v78 = *(&v45 + 1);
  v88 = v45;
  v87 = *(v44 + 32);
  v46 = v82;
  v47 = v84;
  *(v44 + 16) = v83;
  *(v44 + 32) = v47;
  *v44 = v46;
  sub_10001B558(v22, v21, v23, v20);
  sub_1002D5DF0(v43, v27);
  v48 = v23;
  v49 = v20;
  v50 = v22;
  v51 = v21;
  if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(&v82, &v85))
  {
    v81[0] = v77;
    v81[1] = v76;
    v81[2] = v75;
    v81[3] = v74;
    v81[4] = v73;
    v81[5] = v72;
    sub_1002D67E0(v81);
  }

  sub_1002D5B38(v43, v27);
  sub_10001074C(&v90, &qword_10063E4B8, &qword_100529160);
  sub_10001074C(&v89, &qword_10063E4B8, &qword_100529160);
  sub_10001074C(&v88, &qword_10063E4C0, &qword_100529168);

LABEL_27:
  sub_1002D2B28();
}

Swift::Void __swiftcall Artwork.View.layoutSubviews()()
{
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [v0 bounds];
  Artwork.View.fittingImageSize(in:)(v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v12 = [v0 contentMode];
  if (v12 > 5)
  {
    if (v12 == 6)
    {
      [v0 bounds];
      MaxY = CGRectGetMaxY(v32);
      v33.origin.x = v2;
      v33.origin.y = v4;
      v33.size.width = v9;
      v33.size.height = v11;
      v4 = MaxY - CGRectGetHeight(v33);
    }

    else if (v12 == 8)
    {
      [v0 bounds];
      MaxX = CGRectGetMaxX(v30);
      v31.origin.x = v2;
      v31.origin.y = v4;
      v31.size.width = v9;
      v31.size.height = v11;
      v2 = MaxX - CGRectGetWidth(v31);
    }
  }

  v15 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  sub_1004DE3BC(v2, v4, v9, v11);
  [v15 setFrame:?];
  if (v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8] != 255)
  {
    [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind] setFrame:{v2, v4, v9, v11}];
  }

  v16 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v17 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v18 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 8];
  v19 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 16];
  v20 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 24];
  [v0 bounds];
  v35.origin.x = v21;
  v35.origin.y = v22;
  v35.size.width = v23;
  v35.size.height = v24;
  v34.origin.x = v17;
  v34.origin.y = v18;
  v34.size.width = v19;
  v34.size.height = v20;
  if (!CGRectEqualToRect(v34, v35))
  {
    [v0 bounds];
    *v16 = v25;
    *(v16 + 1) = v26;
    *(v16 + 2) = v27;
    *(v16 + 3) = v28;
    sub_1002D0EBC();
  }

  sub_1002D133C();
}

void Artwork.View.fittingImageSize(in:)(uint64_t a1, double a2, double a3)
{
  if (a2 == 0.0 && a3 == 0.0)
  {
    v4 = [v3 artworkCatalog];
    if (v4)
    {
      v5 = v4;
      MPArtworkCatalog.originalSize.getter();
    }

    return;
  }

  sub_1004DE43C();
  v7 = v6;
  v8 = [*&v3[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v8)
  {
    v9 = v8;
    [v8 size];
  }

  else
  {
    v11 = [v3 artworkCatalog];
    if (!v11)
    {
      return;
    }

    v12 = v11;
    MPArtworkCatalog.originalSize.getter();
    v14 = v13;

    if (v14)
    {
      return;
    }
  }

  sub_1004DE43C();
  if (sub_1004D868C())
  {
    sub_1004DE43C();
    if (vabdd_f64(v7, v10) > 0.1)
    {
      sub_1004DE43C();
    }
  }
}

id sub_1002D0EBC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 artworkCatalog];
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = v5;
  }

  v7 = Optional<A>.isArtworkVisuallyIdentical(to:)(v5, v3);

  if ((v7 & 1) == 0)
  {
    [v1 clearArtworkCatalogs];
    sub_1002D22BC(0);
  }

  [v1 bounds];
  if (v9 != 0.0 || v8 != 0.0)
  {
    v10 = *v4;
    if (*v4)
    {
      sub_1000108DC((v4 + 16), v48, &qword_10063E130, &qword_100528DB0);
      sub_1000108DC(v48, &v46, &qword_10063E130, &qword_100528DB0);
      if (v47)
      {
        v11 = v10;

        sub_1002D5C34(&v46);
      }

      else
      {
        v13 = v10;
        sub_10001074C(&v46, &qword_10063E130, &qword_100528DB0);
      }

      v14 = sub_1004DD3FC();

      sub_1000108DC(v48, &v46, &qword_10063E130, &qword_100528DB0);
      if (v47)
      {
        Strong = swift_weakLoadStrong();
        sub_1002D5C34(&v46);
      }

      else
      {
        sub_10001074C(&v46, &qword_10063E130, &qword_100528DB0);
        Strong = 0;
      }

      [v10 setCacheIdentifier:v14 forCacheReference:Strong];

      swift_unknownObjectRelease();
      v16 = [v1 traitCollection];
      [v16 displayScale];
      v18 = v17;

      [v10 setDestinationScale:v18];
      v19 = v4[48];
      if (v19 == 255)
      {
        [v1 bounds];
        v21 = v20;
        v23 = v22;
      }

      else
      {
        v24 = *(v4 + 7);
        v25 = *(v4 + 5);
        v26 = v4[64];
        [v1 bounds];
        v28 = v27;
        v30 = v29;
        sub_1002D3B44(v27, v29, v25, v19);
        v32 = v31;
        sub_1002D3B44(v28, v30, v24, v26);
        v23 = v33;
        v21 = v32;
      }

      [v10 setFittingSize:{v21, v23}];
      [v10 setRenderHint:{objc_msgSend(v10, "renderHint") | 1}];
      v34 = [v1 artworkCatalog];
      if (v34)
      {
        v35 = v34;
        [v34 scaledFittingSize];
        v37 = v36;
        v39 = v38;

        [v10 scaledFittingSize];
        if (v37 == v41 && v39 == v40)
        {
          v42 = [v1 artworkCatalog];
          if (v42)
          {

            return sub_10001074C(v48, &qword_10063E130, &qword_100528DB0);
          }
        }
      }

      else
      {
        [v10 scaledFittingSize];
      }

      MPArtworkCatalog.expectedRatio.getter();
      if ((v43 & 1) == 0)
      {
        [v1 setNeedsLayout];
      }

      v46 = v1;
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = ObjectType;
      MPArtworkCatalog.setDestination<A>(_:for:completion:)(&v46, 1, sub_1002D5C2C, v45, ObjectType);

      return sub_10001074C(v48, &qword_10063E130, &qword_100528DB0);
    }
  }

  result = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (result)
  {

    sub_1002D22BC(0);
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1002D133C()
{
  v1 = v0;
  sub_100004CB8(&qword_10063E4B0, &qword_100529158);
  __chkstk_darwin();
  v91 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = (&v88 - v3);
  __chkstk_darwin();
  v101 = &v88 - v4;
  __chkstk_darwin();
  v97 = &v88 - v5;
  __chkstk_darwin();
  v94 = (&v88 - v6);
  __chkstk_darwin();
  v98 = &v88 - v7;
  __chkstk_darwin();
  v93 = &v88 - v8;
  __chkstk_darwin();
  v10 = (&v88 - v9);
  __chkstk_darwin();
  v12 = &v88 - v11;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v90 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v88 - v14;
  __chkstk_darwin();
  v92 = &v88 - v16;
  __chkstk_darwin();
  v18 = &v88 - v17;
  v19 = type metadata accessor for Artwork.Decoration(0);
  v104 = *(v19 - 1);
  *&v20 = __chkstk_darwin().n128_u64[0];
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v95 frame];
  v24 = v23;
  v26 = v25;
  v27 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v99 = type metadata accessor for Artwork(0);
  v100 = v27;
  v28 = &v27[v99[7]];
  v105 = v22;
  sub_1002D5098(v28, v22, type metadata accessor for Artwork.Decoration);
  v29 = *(v28 + v19[7]);
  [v1 bounds];
  if ((v29 & 1) != 0 && (v34 = v30, v35 = v31, v36 = v32, v37 = v33, Width = CGRectGetWidth(*&v30), v33 = v37, v32 = v36, v31 = v35, v39 = Width, v30 = v34, v24 < v39) || (v29 & 2) != 0 && v26 < CGRectGetHeight(*&v30))
  {
    v40 = v105;
    sub_1000108DC(&v105[v19[5]], v18, &qword_100644A50, &qword_100528DC0);
    v41 = sub_1004DE53C();
    v42 = (*(*(v41 - 8) + 48))(v18, 1, v41) != 1;
    sub_10001074C(v18, &qword_100644A50, &qword_100528DC0);
    v43 = v42;
    v44 = 1;
    [v1 setClipsToBounds:v43];
    v45 = *(v40 + v19[6]);
  }

  else
  {
    [v1 setClipsToBounds:0];
    v45 = [objc_opt_self() clearColor];
    v44 = 0;
  }

  [v1 setBackgroundColor:v45];

  v46 = v104;
  v96 = v15;
  v103 = v44;
  if (v44)
  {
    sub_1002D5098(v105, v12, type metadata accessor for Artwork.Decoration);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v102 = v46[7];
  v102(v12, v47, 1, v19);
  sub_1000108DC(v12, v10, &qword_10063E4B0, &qword_100529158);
  v104 = v46[6];
  if ((v104)(v10, 1, v19) == 1)
  {
    v48 = v1;
    sub_10001074C(v10, &qword_10063E4B0, &qword_100529158);
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v49 = *v10;
    v50 = v10[1];
    v51 = v10[2];
    v52 = v51;
    v53 = v1;
    sub_1002D5D90(v10, type metadata accessor for Artwork.Decoration);
  }

  v54 = v98;
  UIView.border.setter(v49, v50, v51);
  v55 = v93;
  sub_1000108DC(v12, v93, &qword_10063E4B0, &qword_100529158);
  v56 = v104;
  if ((v104)(v55, 1, v19) == 1)
  {
    sub_10001074C(v55, &qword_10063E4B0, &qword_100529158);
    v57 = sub_1004DE53C();
    (*(*(v57 - 8) + 56))(v92, 1, 1, v57);
  }

  else
  {
    sub_1000108DC(v55 + v19[5], v92, &qword_100644A50, &qword_100528DC0);
    sub_1002D5D90(v55, type metadata accessor for Artwork.Decoration);
  }

  v58 = v95;
  sub_1004DE54C();

  sub_10001074C(v12, &qword_10063E4B0, &qword_100529158);
  if (v103)
  {
    v59 = 1;
  }

  else
  {
    sub_1002D5098(v105, v54, type metadata accessor for Artwork.Decoration);
    v59 = 0;
  }

  v60 = v94;
  v102(v54, v59, 1, v19);
  sub_1000108DC(v54, v60, &qword_10063E4B0, &qword_100529158);
  if (v56(v60, 1, v19) == 1)
  {
    v61 = v58;
    sub_10001074C(v60, &qword_10063E4B0, &qword_100529158);
    v62 = 0;
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v62 = *v60;
    v63 = v60[1];
    v64 = v60[2];
    v65 = v64;
    v66 = v58;
    sub_1002D5D90(v60, type metadata accessor for Artwork.Decoration);
  }

  UIView.border.setter(v62, v63, v64);
  v67 = v97;
  sub_1000108DC(v54, v97, &qword_10063E4B0, &qword_100529158);
  v68 = v104;
  if ((v104)(v67, 1, v19) == 1)
  {
    sub_10001074C(v67, &qword_10063E4B0, &qword_100529158);
    v69 = sub_1004DE53C();
    (*(*(v69 - 8) + 56))(v96, 1, 1, v69);
  }

  else
  {
    sub_1000108DC(v67 + v19[5], v96, &qword_100644A50, &qword_100528DC0);
    sub_1002D5D90(v67, type metadata accessor for Artwork.Decoration);
  }

  sub_1004DE54C();

  sub_10001074C(v54, &qword_10063E4B0, &qword_100529158);
  v70 = &v100[v99[9]];
  v74 = *v70 && (v71 = *(v70 + 1), ObjectType = swift_getObjectType(), v73 = *(v71 + 16), swift_unknownObjectRetain(), LOBYTE(v71) = v73(ObjectType, v71), swift_unknownObjectRelease(), (v71 & 1) != 0) && *&v100[v99[8] + 24] == 0;
  v75 = v101;
  if ((v103 | v74))
  {
    v76 = 1;
  }

  else
  {
    sub_1002D5098(v105, v101, type metadata accessor for Artwork.Decoration);
    v76 = 0;
  }

  v102(v75, v76, 1, v19);
  v77 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v77 != 255)
  {
    v78 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v79 = v89;
    sub_1000108DC(v75, v89, &qword_10063E4B0, &qword_100529158);
    if (v68(v79, 1, v19) == 1)
    {
      v80 = v78;
      sub_10001074C(v79, &qword_10063E4B0, &qword_100529158);
      v81 = 0;
      v82 = 0;
      v83 = 0;
    }

    else
    {
      v81 = *v79;
      v82 = v79[1];
      v83 = v79[2];
      sub_1002D5DF0(v78, v77);
      sub_1002D5DF0(v78, v77);
      v84 = v83;
      sub_1002D5D90(v79, type metadata accessor for Artwork.Decoration);
    }

    UIView.border.setter(v81, v82, v83);
    v75 = v101;
    v85 = v91;
    sub_1000108DC(v101, v91, &qword_10063E4B0, &qword_100529158);
    if (v68(v85, 1, v19) == 1)
    {
      sub_10001074C(v85, &qword_10063E4B0, &qword_100529158);
      v86 = sub_1004DE53C();
      (*(*(v86 - 8) + 56))(v90, 1, 1, v86);
    }

    else
    {
      sub_1000108DC(v85 + v19[5], v90, &qword_100644A50, &qword_100528DC0);
      sub_1002D5D90(v85, type metadata accessor for Artwork.Decoration);
    }

    sub_1004DE54C();
    sub_1002D5B38(v78, v77);
    sub_1002D5B38(v78, v77);
  }

  sub_10001074C(v75, &qword_10063E4B0, &qword_100529158);
  return sub_1002D5D90(v105, type metadata accessor for Artwork.Decoration);
}